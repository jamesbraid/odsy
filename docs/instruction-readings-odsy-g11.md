# Instruction readings from hostfacts

Each entry reports selected accesses through non-stack pointers, calls and their argument slots, conditional branches, and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `__glx_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e560 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e560-0xd81e5fc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81e570 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e580 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e58c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e598 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e59c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e5b8 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e5cc stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e5ac calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81e5dc calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81e5c8 targets 0xd81e5e8, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81e5f4 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd81e5fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd81e5fc-0xd81e698 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd81e60c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd81e61c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd81e628 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd81e634 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd81e638 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd81e654 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd81e668 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd81e648 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd81e678 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd81e664 targets 0xd81e684, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd81e690 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824394 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd824394-0xd824d30 (2460 bytes).
  It occupies 2460 bytes.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8243cc, `lw` at 0xd8244c8, `lw` at 0xd8245f4.
  The `lw` at 0xd8243dc loads 4 bytes from [a0+1232] +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8243f8, `lw` at 0xd8243fc, `lw` at 0xd824428.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x70, including `lw` at 0xd824400, `lw` at 0xd82453c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd824430, `sw` at 0xd82456c.
  2 such `sh` accesses store 2 bytes to [a0+108] +0x2, including `sh` at 0xd82443c, `sh` at 0xd824578.
  4 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd824440, `sb` at 0xd824474, `sb` at 0xd82457c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x60, including `lw` at 0xd824444, `lw` at 0xd824580.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x6c, including `sw` at 0xd824458, `sw` at 0xd824594.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x60, including `sw` at 0xd82445c, `sw` at 0xd824598.
  2 such `sb` accesses store 1 byte to [a0+108] +0x1, including `sb` at 0xd82446c, `sb` at 0xd8245a0.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x4, including `sw` at 0xd824470, `sw` at 0xd8245b4.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x8, including `sw` at 0xd824484, `sw` at 0xd8245bc.
  2 such `sw` accesses store 4 bytes to [a0+108] +0xc, including `sw` at 0xd824490, `sw` at 0xd8245c8.
  2 such `sw` accesses store 4 bytes to [a0+108] +0x10, including `sw` at 0xd82449c, `sw` at 0xd8245d4.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0xd8244a4, `lw` at 0xd82451c, `lw` at 0xd8245d0.
  The `sw` at 0xd8244a8 stores 4 bytes to [a0+108] +0x14.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8244d0, `lw` at 0xd8244e8, `lw` at 0xd8245fc.
  3 such `lw` accesses load 4 bytes from [a0+1232] +0x4, including `lw` at 0xd8244d4, `lw` at 0xd824600, `lw` at 0xd824708.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xd824534, `lw` at 0xd82465c.
  The `lw` at 0xd8246a4 loads 4 bytes from ?.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8246b8, `sw` at 0xd8246cc, `sw` at 0xd8246e0.
  The `lw` at 0xd8246bc loads 4 bytes from table(0x4) +0x0.
  The `lw` at 0xd8246d0 loads 4 bytes from table(0x8) +0x0.
  The `lw` at 0xd8246e4 loads 4 bytes from table(0xc) +0x0.
  The `jalr` at 0xd8243c0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8243e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82441c calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8244b8 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd8244dc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8244f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824518 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x11, a3=[a1+20].
  The `jalr` at 0xd824558 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8245e4 calls _XReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0.
  The `jalr` at 0xd824608 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824624 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd824644 calls __glXPostHiddenError with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x1a, a3=[a1+20].
  The `jalr` at 0xd824670 calls malloc with a0=0x10, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824690 calls _XRead with a0=a0 at entry (arg0), a1=ret(malloc), a2=0x10, a3=?.
  The `jalr` at 0xd8246f0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xd824710 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd82472c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8243d4 targets 0xd8243f4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw t6,88(sp)` at 0xd8243d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8243f4 targets 0xd82453c, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8243f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd82440c targets 0xd824430, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd824410 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd824498 targets 0xd8244a8, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8244a0 targets 0xd8244a8 and is always taken.
  The `bne` branch at 0xd8244c0 targets 0xd82452c, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8244cc targets 0xd8244ec, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8244d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8244f0 targets 0xd824504, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd824524 targets 0xd82473c and is always taken.
  The `beq` branch at 0xd824530 targets 0xd824660 and is always taken.
  The `beql` branch at 0xd824548 targets 0xd82456c, is taken when t8(=[a0+112]) >= t2(=[a0+108]+20) (unsigned), and falls through when t8(=[a0+112]) < t2(=[a0+108]+20) (unsigned); its branch-likely delay slot `lw t1,60(sp)` at 0xd82454c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8245c4 targets 0xd8245d4, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0.
  The `beq` branch at 0xd8245cc targets 0xd8245d4 and is always taken.
  The `bne` branch at 0xd8245ec targets 0xd824658, is taken when v0(=ret(_XReply)) != 0, and falls through when v0(=ret(_XReply)) == 0.
  The `beql` branch at 0xd8245f8 targets 0xd824618, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8245fc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd82461c targets 0xd824630, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The `beq` branch at 0xd824650 targets 0xd82473c and is always taken.
  The `beql` branch at 0xd824660 targets 0xd824700, is taken when v0(=[a3+4]) == 0, and falls through when v0(=[a3+4]) != 0; its branch-likely delay slot `lw v1,1232(s0)` at 0xd824664 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824700 targets 0xd824720, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd824704 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd824724 targets 0xd82473c, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xd824728 runs only when taken and is annulled on fall-through.
  The return at 0xd824748 has v0 = one of 0x0, 0x1.
  The instructions from 0xd824538 to 0xd824538 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd824750 to 0xd824d2c are not reached by any path from the entry, and their branches are not listed.
- `glXCreateWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837a78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837a78-0xd837c10 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837ac8, `lw` at 0xd837ad4, `lw` at 0xd837af0.
  The `lw` at 0xd837acc loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd837ae0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lw` at 0xd837aec loads 4 bytes from ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837af8, `lw` at 0xd837b10, `lw` at 0xd837b3c.
  The `lw` at 0xd837afc loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837b14 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd837b44 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd837b50 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837b54, `sb` at 0xd837b7c.
  The `lw` at 0xd837b58 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837b6c stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837b70 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837b78 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd837b80 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd837b84 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd837b88 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd837b8c stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd837b94 stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd837b9c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd837bb4, `sw` at 0xd837bb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837bc4, `lw` at 0xd837bdc.
  The `lw` at 0xd837bc8 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837aa4 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837b04 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd837b30 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837ba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd837bd0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd837bec calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd837ab4 targets 0xd837ac4, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd837abc targets 0xd837bfc and is always taken.
  The `beql` branch at 0xd837ac4 targets 0xd837af4, is taken when a3 == 0, and falls through when a3 != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ac8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837ad0 targets 0xd837af4, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd837ad4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd837ad8 targets 0xd837af0, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0.
  The `bnel` branch at 0xd837ae8 targets 0xd837ae4, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t6,8(v0)` at 0xd837aec runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837af4 targets 0xd837b14, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd837af8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837b20 targets 0xd837b44, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd837b24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837bc0 targets 0xd837be0, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837bc4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837be4 targets 0xd837bfc, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xd837be8 runs only when taken and is annulled on fall-through.
  The return at 0xd837c08 has v0 = one of 0x0, ?.
- `glXDestroyWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd837c10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd837c10-0xd837d28 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837c48, `lw` at 0xd837cd8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837c50, `lw` at 0xd837c68, `lw` at 0xd837c94.
  The `lw` at 0xd837c54 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd837c6c loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd837c7c, `sw` at 0xd837c98.
  The `sh` at 0xd837ca4 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd837ca8, `sb` at 0xd837ccc.
  The `lw` at 0xd837cac loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd837cbc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd837cc0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd837cc8 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd837cd4 stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837ce0, `lw` at 0xd837cf8.
  The `lw` at 0xd837ce4 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd837c34 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd837c5c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837c88 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd837cec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=?.
  The `jalr` at 0xd837d08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd837c40 targets 0xd837d14, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd837c4c targets 0xd837c6c, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd837c50 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837c78 targets 0xd837c9c, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd837c7c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837cdc targets 0xd837cfc, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd837ce0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd837d00 targets 0xd837d18, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd837d04 runs only when taken and is annulled on fall-through.
  The return at 0xd837d20 has v0 = one of [a0+124], ?.
- `glXBindChannelToWindowSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839e08 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd839e08-0xd839f4c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xd839e18 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd839e38 loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd839eec, `sb` at 0xd839f30.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd839ef8, `lw` at 0xd839efc, `lw` at 0xd839f08.
  The `jalr` at 0xd839e40 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd839e68 calls __glXInitChannelRectState [0xd839c70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd839ea0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd839eb8 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd839f10 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd839e4c targets 0xd839f38, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd839e70 targets 0xd839f38, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd839ee8 targets 0xd839f20, is taken when (t5(?) & 0xff) == 0, and falls through when (t5(?) & 0xff) != 0.
  The `beql` branch at 0xd839f00 targets 0xd839f3c, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd839f04 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd839f28 targets 0xd839f38, is taken when t9(=a3) != 0, and falls through when t9(=a3) == 0; its branch-likely delay slot `sw t0,48(sp)` at 0xd839f2c runs only when taken and is annulled on fall-through.
  The return at 0xd839f44 has v0 = ?.
- `__glXBindHWContextToWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd80e93c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd80e93c-0xd80ebf0 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0xd80e968 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd80e96c, `lw` at 0xd80eb58.
  3 such `lw` accesses load 4 bytes from [a0+76] +0xcc, including `lw` at 0xd80e970, `lw` at 0xd80eb5c, `lw` at 0xd80eb6c.
  The `lw` at 0xd80e974 loads 4 bytes from [0x1014] +0x0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe0, including `lw` at 0xd80e980, `lw` at 0xd80ea64, `lw` at 0xd80ead8.
  The `lw` at 0xd80e984 loads 4 bytes from [a0+76] +0xf0.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd80e988, `lw` at 0xd80ea68, `lw` at 0xd80eadc.
  4 such `sb` accesses store 1 byte to [a0+76] +0xf4, including `sb` at 0xd80e990, `sb` at 0xd80ea4c, `sb` at 0xd80eac8.
  The `lw` at 0xd80e994 loads 4 bytes from [a0+76] +0xec.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe8, including `lw` at 0xd80e9ac, `lw` at 0xd80e9e0, `lw` at 0xd80e9f8.
  The `lw` at 0xd80e9b0 loads 4 bytes from [[a0+76]+232] +0x2c.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x11c, including `lw` at 0xd80e9c4, `lw` at 0xd80eb10.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x120, including `lw` at 0xd80e9c8, `lw` at 0xd80eb14.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe4, including `lw` at 0xd80e9d4, `lw` at 0xd80e9ec, `lw` at 0xd80ea2c.
  2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x24, including `lw` at 0xd80e9d8, `lw` at 0xd80ea84.
  The `lw` at 0xd80e9e4 loads 4 bytes from [[a0+76]+232] +0x24.
  4 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4, including `lw` at 0xd80e9f0, `lw` at 0xd80ea30, `lw` at 0xd80ea90.
  2 such `lw` accesses load 4 bytes from [[a0+76]+232] +0x4, including `lw` at 0xd80e9fc, `lw` at 0xd80ea40.
  3 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd80ea10, `lw` at 0xd80eaa4, `lw` at 0xd80eb4c.
  2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4, including `sw` at 0xd80ea54, `sw` at 0xd80ead0.
  The `sw` at 0xd80ea60 stores 4 bytes to [[a0+76]+232] +0x4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xec, including `sw` at 0xd80ea6c, `sw` at 0xd80eae4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xf0, including `sw` at 0xd80ea70, `sw` at 0xd80eae8.
  The `sw` at 0xd80eb60 stores 4 bytes to [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd80eb98, `lw` at 0xd80ebb8, `lw` at 0xd80ebd8.
  The `jalr` at 0xd80e964 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd80ea0c calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x400, a2=sp-56, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eaa0 calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x3eb, a2=sp-72, a3=[[a0+76]+224], a4=[[a0+76]+204].
  The `bgezall` at 0xd80eb48 calls (unnamed) [0xd80e4c4] with a0=[[a0+76]+36], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+76]+204].
  The `jalr` at 0xd80eba0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428c0, a2=?, a3=?.
  The `jalr` at 0xd80ebc0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428f8, a2=0x1, a3=?.
  The `jalr` at 0xd80ebe0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8428d8, a2=-0x1, a3=?.
  The `bne` branch at 0xd80e978 targets 0xd80eb38, is taken when v1(=[[0x1014]]) != a4(=[[a0+76]+204]), and falls through when v1(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `bne` branch at 0xd80e98c targets 0xd80e9a0, is taken when a0(=[[a0+76]+240]) != a3(=[[a0+76]+224]), and falls through when a0(=[[a0+76]+240]) == a3(=[[a0+76]+224]).
  The `beq` branch at 0xd80e998 targets 0xd80eafc, is taken when a1(=[[a0+76]+236]) == a2(=[[a0+76]+220]), and falls through when a1(=[[a0+76]+236]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80e9a4 targets 0xd80eb0c, is taken when a3(=[[a0+76]+224]) == a2(=[[a0+76]+220]), and falls through when a3(=[[a0+76]+224]) != a2(=[[a0+76]+220]).
  The `beq` branch at 0xd80e9b8 targets 0xd80eb0c, is taken when ra(=[[[a0+76]+232]+44]) == at(=0x3), and falls through when ra(=[[[a0+76]+232]+44]) != at(=0x3).
  The `beq` branch at 0xd80e9cc targets 0xd80eb78, is taken when at(=[[a0+76]+284]) == a2(=0x1), and falls through when at(=[[a0+76]+284]) != a2(=0x1).
  The `beq` branch at 0xd80ea24 targets 0xd80ebd0, is taken when v0(=ret(0xd80e4c4)) == a2(=-0x1), and falls through when v0(=ret(0xd80e4c4)) != a2(=-0x1).
  The `bne` branch at 0xd80ea38 targets 0xd80ea4c, is taken when a3(=[[[a0+76]+228]+4]) != a4(?), and falls through when a3(=[[[a0+76]+228]+4]) == a4(?).
  The `beq` branch at 0xd80ea44 targets 0xd80ea64, is taken when a5(=[[[a0+76]+232]+4]) == a6(?), and falls through when a5(=[[[a0+76]+232]+4]) != a6(?).
  The `beq` branch at 0xd80eaac targets 0xd80ebb0, is taken when v0(=ret(0xd80e4c4)) == at(=-0x1), and falls through when v0(=ret(0xd80e4c4)) != at(=-0x1).
  The `beq` branch at 0xd80eac0 targets 0xd80ead8, is taken when v0(=[[[a0+76]+228]+4]) == v1(?), and falls through when v0(=[[[a0+76]+228]+4]) != v1(?).
  The `beq` branch at 0xd80eb1c targets 0xd80ea80, is taken when a5(=[[a0+76]+284]) >= 0x2 (signed), and falls through when a5(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` branch at 0xd80eb24 targets 0xd80ea80, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xd80eb30 targets 0xd80ea8c and is always taken.
  The `bltz` branch at 0xd80eb50 targets 0xd80eb94, is taken when v0(=ret(0xd80e4c4)) < 0 (signed), and falls through when v0(=ret(0xd80e4c4)) >= 0 (signed).
  The `beq` branch at 0xd80eb70 targets 0xd80e9a0 and is always taken.
  The `beq` branch at 0xd80eb78 targets 0xd80e9d4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xd80eb8c targets 0xd80e9ec and is always taken.
  The `beq` branch at 0xd80eba8 targets 0xd80eb68 and is always taken.
  The `beq` branch at 0xd80ebc8 targets 0xd80eafc and is always taken.
  The `beq` branch at 0xd80ebe8 targets 0xd80eafc and is always taken.
  The return at 0xd80ea78 has v0 = ret(0xd80e4c4).
  The return at 0xd80eaf0 has v0 = [[[a0+76]+228]+4].
  The return at 0xd80eb04 has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0xd80eaf8 to 0xd80eaf8 are not reached by any path from the entry, and their branches are not listed.
- `__glx_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd819b38 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd819b38-0xd819bc8 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819b48 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819b58 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819b60 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819b78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819b84 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819b88 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819b98 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819b80 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0xd819bb8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=?.
  The `bne` branch at 0xd819b94 targets 0xd819bb4, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `beq` branch at 0xd819bc0 targets 0xd819ba0 and is always taken.
  The return at 0xd819bac has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd819bc8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd819bc8-0xd819c58 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xd819bd8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd819be8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd819bf0 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd819c08 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd819c14 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd819c18 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd819c28 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd819c10 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0xd819c48 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=?.
  The `bne` branch at 0xd819c24 targets 0xd819c44, is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `beq` branch at 0xd819c50 targets 0xd819c30 and is always taken.
  The return at 0xd819c3c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `glXCreateWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b8b4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b8b4-0xd83b9fc (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83b8f4, `lw` at 0xd83b994.
  The `lw` at 0xd83b900 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83b90c, `lw` at 0xd83b948, `lw` at 0xd83b9e4.
  The `lw` at 0xd83b910 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83b930 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83b938 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83b940, `sb` at 0xd83b960.
  The `lw` at 0xd83b944 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b950 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83b958 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd83b95c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83b964 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd83b968 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd83b96c loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd83b970 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd83b974 stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd83b978 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd83b98c, `sw` at 0xd83b990.
  The `lw` at 0xd83b9a0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83b9ac loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83b8e0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83b904 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b980 calls (unknown callee) with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x1f, a6=[a0+96]+1, a7=[a0+108]+24.
  The `jalr` at 0xd83b9a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd83b9b8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83b9d8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83b8ec targets 0xd83b9e8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83b8f8 targets 0xd83b90c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd83b91c targets 0xd83b9d8, is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned), and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd83b998 targets 0xd83b9ac, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd83b9b0 targets 0xd83b9c4, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83b9e0 targets 0xd83b924 and is always taken.
  The return at 0xd83b9d0 has v0 = ?.
  The return at 0xd83b9f4 has v0 = 0x0.
- `glXDestroyWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83b9fc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83b9fc-0xd83baf8 (252 bytes).
  It occupies 252 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83ba38, `lw` at 0xd83baa8.
  The `lw` at 0xd83ba44 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83ba50, `lw` at 0xd83ba88, `lw` at 0xd83baf4.
  The `lw` at 0xd83ba54 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd83ba70 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd83ba78 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd83ba80, `sb` at 0xd83baa4.
  The `lw` at 0xd83ba84 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ba90 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd83ba98 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd83ba9c stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd83baa0 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd83bab4 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd83bac0 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd83ba24 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd83ba48 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd83bab8 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2.
  The `jalr` at 0xd83bacc calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd83bae8 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd83ba30 targets 0xd83bad8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd83ba3c targets 0xd83ba50, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd83ba60 targets 0xd83bae8, is taken when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd83baac targets 0xd83bac0, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd83bac4 targets 0xd83bad8, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd83baf0 targets 0xd83ba68 and is always taken.
  The return at 0xd83bae0 has v0 = one of ret(__glXSetupForCommand), ?, ret(?).
- `glXBindChannelToWindowSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd83c52c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd83c52c-0xd83c68c (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0xd83c548 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd83c568 loads 4 bytes from [0x1014] +0x114.
  The `sb` at 0xd83c604 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd83c608, `lw` at 0xd83c60c.
  The `lw` at 0xd83c620 loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44.
  The `sb` at 0xd83c688 stores 1 byte to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49.
  The `jalr` at 0xd83c570 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd83c594 calls (unnamed) [0xd83c38c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd83c5c0 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0xd83c5d4 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd83c61c calls (unknown callee) with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd83c578 targets 0xd83c638, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd83c59c targets 0xd83c65c, is taken when v0(=ret(0xd83c38c)) == 0, and falls through when v0(=ret(0xd83c38c)) != 0.
  The `beq` branch at 0xd83c600 targets 0xd83c67c, is taken when a0(=a3) == 0, and falls through when a0(=a3) != 0.
  The `beq` branch at 0xd83c614 targets 0xd83c674, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xd83c66c targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c674 targets 0xd83c628 and is always taken.
  The `beq` branch at 0xd83c684 targets 0xd83c624 and is always taken.
  The return at 0xd83c630 has v0 = one of 0x0, 0x1.
  The return at 0xd83c654 has v0 = 0x0.
- `__glFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda35150 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda35150-0xda35224 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0xda35164 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xda35190 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda35194 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `lbu` at 0xda351b0 loads 1 byte from a0 (arg0 at entry) +0xdd0.
  The `lw` at 0xda351c8 loads 4 bytes from a0 (arg0 at entry) +0xe7c.
  The `lw` at 0xda351d0 loads 4 bytes from a0 (arg0 at entry) +0xe80.
  The `lw` at 0xda35204 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jalr` at 0xda35184 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0xda351a8 calls __glChangeWindowSize [0xda35030] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xda351f4 calls __glChangeReadWindowSize [0xda35140] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+3708], a4=[a0+3712].
  The `jalr` at 0xda35210 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0xda35198 targets 0xda351a4, is taken when v0(=[a0+3700]) != a1(?), and falls through when v0(=[a0+3700]) == a1(?).
  The `beq` branch at 0xda351a0 targets 0xda351b0, is taken when v1(=[a0+3704]) == a2(?), and falls through when v1(=[a0+3704]) != a2(?).
  The `beq` branch at 0xda351b4 targets 0xda35204, is taken when a0(=[a0+3536]:1) == 0, and falls through when a0(=[a0+3536]:1) != 0.
  The `bne` branch at 0xda351cc targets 0xda351f0, is taken when a3(=[a0+3708]) != a1(?), and falls through when a3(=[a0+3708]) == a1(?).
  The `bne` branch at 0xda351d4 targets 0xda351f4, is taken when a4(=[a0+3712]) != a2(?), and falls through when a4(=[a0+3712]) == a2(?).
  The `beq` branch at 0xda351fc targets 0xda351e0 and is always taken.
  The `beq` branch at 0xda3521c targets 0xda351c8 and is always taken.
  The return at 0xda351e8 has v0 = one of ?, ret(__glChangeReadWindowSize).
- `SubdivRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda721f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda721f0-0xda722d8 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda72208, `lwc1` at 0xda7220c, `lwc1` at 0xda72250.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda72234, `swc1` at 0xda72268, `swc1` at 0xda72284.
  The `blez` branch at 0xda721f0 targets 0xda722d0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda72200 targets 0xda72238, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda72230 targets 0xda72208, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda7223c targets 0xda722d0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda722c8 targets 0xda72250, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda722d0 has v0 = ?.
- `SubdivIRRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda722e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda722e0-0xda723f8 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda72300, `lwc1` at 0xda72304, `lwc1` at 0xda72350.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda72334, `swc1` at 0xda72370, `swc1` at 0xda72394.
  The `blez` branch at 0xda722e0 targets 0xda723f0, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xda722f8 targets 0xda72338, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xda72330 targets 0xda72300, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda7233c targets 0xda723f0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0xda723e8 targets 0xda72350, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0xda723f0 has v0 = ?.
- `__glXBindHWContextToWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2143464 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2143464-0x214371c (696 bytes).
  It occupies 696 bytes.
  The `ld` at 0x2143490 loads 8 bytes from a0 (arg0 at entry) +0x98.
  2 such `ld` accesses load 8 bytes from abs 0x1028, including `ld` at 0x2143494, `ld` at 0x2143684.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x128, including `lw` at 0x2143498, `lw` at 0x2143688, `lw` at 0x2143698.
  The `lw` at 0x214349c loads 4 bytes from [0x1028]:8 +0x0.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x148, including `ld` at 0x21434a8, `ld` at 0x214358c, `ld` at 0x2143600.
  The `ld` at 0x21434ac loads 8 bytes from [a0+152]:8 +0x168.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x140, including `ld` at 0x21434b0, `ld` at 0x2143590, `ld` at 0x2143604.
  4 such `sb` accesses store 1 byte to [a0+152]:8 +0x170, including `sb` at 0x21434b8, `sb` at 0x2143574, `sb` at 0x21435f0.
  The `ld` at 0x21434bc loads 8 bytes from [a0+152]:8 +0x160.
  5 such `ld` accesses load 8 bytes from [a0+152]:8 +0x158, including `ld` at 0x21434d4, `ld` at 0x2143508, `ld` at 0x2143520.
  The `lw` at 0x21434d8 loads 4 bytes from [[a0+152]:8+344]:8 +0x40.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b0, including `lw` at 0x21434ec, `lw` at 0x2143638.
  2 such `lw` accesses load 4 bytes from [a0+152]:8 +0x1b4, including `lw` at 0x21434f0, `lw` at 0x214363c.
  6 such `ld` accesses load 8 bytes from [a0+152]:8 +0x150, including `ld` at 0x21434fc, `ld` at 0x2143514, `ld` at 0x2143554.
  2 such `ld` accesses load 8 bytes from [[a0+152]:8+336]:8 +0x30, including `ld` at 0x2143500, `ld` at 0x21435ac.
  The `ld` at 0x214350c loads 8 bytes from [[a0+152]:8+344]:8 +0x30.
  4 such `lw` accesses load 4 bytes from [[a0+152]:8+336]:8 +0x8, including `lw` at 0x2143518, `lw` at 0x2143558, `lw` at 0x21435b8.
  2 such `lw` accesses load 4 bytes from [[a0+152]:8+344]:8 +0x8, including `lw` at 0x2143524, `lw` at 0x2143568.
  3 such `lw` accesses load 4 bytes from [a0+152]:8 +0x40, including `lw` at 0x2143538, `lw` at 0x21435cc, `lw` at 0x2143670.
  2 such `sw` accesses store 4 bytes to [[a0+152]:8+336]:8 +0x8, including `sw` at 0x214357c, `sw` at 0x21435f8.
  The `sw` at 0x2143588 stores 4 bytes to [[a0+152]:8+344]:8 +0x8.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x160, including `sd` at 0x2143594, `sd` at 0x214360c.
  2 such `sd` accesses store 8 bytes to [a0+152]:8 +0x168, including `sd` at 0x2143598, `sd` at 0x2143610.
  The `sw` at 0x214368c stores 4 bytes to [0x1028]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x21436c4, `ld` at 0x21436e4, `ld` at 0x2143704.
  The `jalr` at 0x214348c calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2143534 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x21435c8 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296].
  The `bgezall` at 0x2143674 calls (unnamed) [0x2142fec] with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+152]:8+296].
  The `jalr` at 0x21436cc calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177478, a2=?, a3=?.
  The `jalr` at 0x21436ec calls (unknown callee) with a0=a0 at entry (arg0), a1=0x21774b0, a2=0x1, a3=?.
  The `jalr` at 0x214370c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2177490, a2=-0x1, a3=?.
  The `bne` branch at 0x21434a0 targets 0x2143660, is taken when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]), and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` branch at 0x21434b4 targets 0x21434c8, is taken when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8), and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` branch at 0x21434c0 targets 0x2143624, is taken when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434cc targets 0x2143634, is taken when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8), and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` branch at 0x21434e0 targets 0x2143634, is taken when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3), and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` branch at 0x21434f4 targets 0x21436a4, is taken when at(=[[a0+152]:8+432]) == a2(=0x1), and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` branch at 0x214354c targets 0x21436fc, is taken when v0(=ret(0x2142fec)) == a2(=-0x1), and falls through when v0(=ret(0x2142fec)) != a2(=-0x1).
  The `bne` branch at 0x2143560 targets 0x2143574, is taken when a3(=[[[a0+152]:8+336]:8+8]) != a4(?), and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(?).
  The `beq` branch at 0x214356c targets 0x214358c, is taken when a5(=[[[a0+152]:8+344]:8+8]) == a6(?), and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(?).
  The `beq` branch at 0x21435d4 targets 0x21436dc, is taken when v0(=ret(0x2142fec)) == at(=-0x1), and falls through when v0(=ret(0x2142fec)) != at(=-0x1).
  The `beq` branch at 0x21435e8 targets 0x2143600, is taken when v0(=[[[a0+152]:8+336]:8+8]) == v1(?), and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(?).
  The `beq` branch at 0x2143644 targets 0x21435a8, is taken when a5(=[[a0+152]:8+432]) >= 0x2 (signed), and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` branch at 0x214364c targets 0x21435a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x2143658 targets 0x21435b4 and is always taken.
  The `bltz` branch at 0x214367c targets 0x21436c0, is taken when v0(=ret(0x2142fec)) < 0 (signed), and falls through when v0(=ret(0x2142fec)) >= 0 (signed).
  The `beq` branch at 0x214369c targets 0x21434c8 and is always taken.
  The `beq` branch at 0x21436a4 targets 0x21434fc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x21436b8 targets 0x2143514 and is always taken.
  The `beq` branch at 0x21436d4 targets 0x2143694 and is always taken.
  The `beq` branch at 0x21436f4 targets 0x2143624 and is always taken.
  The `beq` branch at 0x2143714 targets 0x2143624 and is always taken.
  The return at 0x21435a0 has v0 = ret(0x2142fec).
  The return at 0x2143618 has v0 = [[[a0+152]:8+336]:8+8].
  The return at 0x214362c has v0 = one of ret(__glXHWAttach), ret(?).
  The instructions from 0x2143620 to 0x2143620 are not reached by any path from the entry, and their branches are not listed.
- `__glx_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214e764 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x214e764-0x214e7f4 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x214e774 loads 8 bytes from abs 0x1028.
  The `ld` at 0x214e784 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x214e78c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x214e7a4 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x214e7b0 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x214e7b4 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x214e7c4 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x214e7ac calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0x214e7e4 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+132, a2=?, a3=?.
  The `bne` branch at 0x214e7c0 targets 0x214e7e0, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned).
  The `beq` branch at 0x214e7ec targets 0x214e7cc and is always taken.
  The return at 0x214e7d8 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x214e7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x214e7f4-0x214e884 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x214e804 loads 8 bytes from abs 0x1028.
  The `ld` at 0x214e814 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0x214e81c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sh` at 0x214e834 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `sh` at 0x214e840 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `ld` at 0x214e844 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0x214e854 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0x214e83c calls memcpy with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0x214e874 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+68, a2=?, a3=?.
  The `bne` branch at 0x214e850 targets 0x214e870, is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned), and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned).
  The `beq` branch at 0x214e87c targets 0x214e85c and is always taken.
  The return at 0x214e868 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `glXCreateWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2170560 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2170560-0x21706a8 (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21705a0, `ld` at 0x217063c.
  The `ld` at 0x21705ac loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21705b8, `ld` at 0x21705f0, `ld` at 0x2170690.
  The `ld` at 0x21705bc loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x21705d8 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x21705e0 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x21705e8, `sb` at 0x2170608.
  The `ld` at 0x21705ec loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x21705f8 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170600 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0x2170604 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0x217060c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0x2170610 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0x2170614 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0x2170618 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0x217061c stores 4 bytes to [a0+176]:8 +0x8.
  The `ld` at 0x2170620 loads 8 bytes from a0 (arg0 at entry) +0x48.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2170634, `sw` at 0x2170638.
  The `ld` at 0x2170648 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x2170654 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x217058c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21705b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170628 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f.
  The `jalr` at 0x217064c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8.
  The `jalr` at 0x2170660 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170684 calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=?, a5=[a0+176]:8.
  The `beq` branch at 0x2170598 targets 0x2170694, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21705a4 targets 0x21705b8, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` branch at 0x21705c8 targets 0x2170680, is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned), and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` branch at 0x2170640 targets 0x2170654, is taken when a5(=[a0+2408]:8) == 0, and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170658 targets 0x217066c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217068c targets 0x21705cc and is always taken.
  The return at 0x2170678 has v0 = ?.
  The return at 0x21706a0 has v0 = 0x0.
- `glXDestroyWindow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21706a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21706a8-0x21707a4 (252 bytes).
  It occupies 252 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0x21706e4, `ld` at 0x2170754.
  The `ld` at 0x21706f0 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0x21706fc, `ld` at 0x2170734, `ld` at 0x21707a0.
  The `ld` at 0x2170700 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0x217071c stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0x2170724 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0x217072c, `sb` at 0x217074c.
  The `ld` at 0x2170730 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0x217073c stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0x2170744 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x2170748 stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0x2170750 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0x2170760 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0x217076c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x21706d0 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21706f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8.
  The `jalr` at 0x2170764 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1), a4=[a0+2408]:8, a6=[a0+152]:8+1, a7=[a0+176]:8+8.
  The `jalr` at 0x2170778 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x2170794 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+8, a3=?.
  The `beq` branch at 0x21706dc targets 0x2170784, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0x21706e8 targets 0x21706fc, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` branch at 0x217070c targets 0x2170794, is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned), and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0x2170758 targets 0x217076c, is taken when a4(=[a0+2408]:8) == 0, and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` branch at 0x2170770 targets 0x2170784, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0x217079c targets 0x2170714 and is always taken.
  The return at 0x217078c has v0 = one of ret(__glXSetupForCommand), ?, ret(?).
- `glXBindChannelToWindowSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x21711c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x21711c0-0x21712e4 (292 bytes).
  It occupies 292 bytes.
  The `ld` at 0x21711d8 loads 8 bytes from abs 0x1028.
  The `ld` at 0x21711f0 loads 8 bytes from [0x1028]:8 +0x118.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2171284, `sb` at 0x21712e0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2171288, `ld` at 0x217128c.
  The `lw` at 0x21712a0 loads 4 bytes from ?.
  The `jalr` at 0x21711f4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2171218 calls (unnamed) [0x2171024] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0x2171244 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4.
  The `jalr` at 0x2171254 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x217129c calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?, a7=(((a2 << 0x2) + a2) << 0x3).
  The `beq` branch at 0x21711fc targets 0x21712b8, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0x2171220 targets 0x21712cc, is taken when v0(=ret(0x2171024)) == 0, and falls through when v0(=ret(0x2171024)) != 0.
  The `beq` branch at 0x2171280 targets 0x21712dc, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x2171290 targets 0x21712d4, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x21712cc targets 0x21712bc and is always taken.
  The `beq` branch at 0x21712d4 targets 0x21712c0 and is always taken.
  The `beq` branch at 0x21712dc targets 0x21712a4 and is always taken.
  The return at 0x21712b0 has v0 = 0x1.
  The return at 0x21712c4 has v0 = 0x0.
- `__glOdysplc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b95b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21b95b0-0x21b95f4 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x21b95b4 loads 8 bytes from abs 0x1020.
  The `sb` at 0x21b95e0 stores 1 byte to [0x1020]:8 +0x18ed0.
  The `jalr` at 0x21b95dc calls __glsplc_LoadMatrixf [0x2303f10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x21b95ec has v0 = ret(__glsplc_LoadMatrixf).
- `__glOdysplc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9600 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21b9600-0x21b9644 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x21b9604 loads 8 bytes from abs 0x1020.
  The `sb` at 0x21b9630 stores 1 byte to [0x1020]:8 +0x18ed0.
  The `jalr` at 0x21b962c calls __glsplc_LoadMatrixd [0x2303f70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x21b963c has v0 = ret(__glsplc_LoadMatrixd).
- `__glOdySpanEyeZ24ToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ea6b0-0x21ea80c (348 bytes).
  It occupies 348 bytes.
  The `ldc1` at 0x21ea6b0 loads 8 bytes from a1 (arg1 at entry) +0x288.
  The `ld` at 0x21ea6b4 loads 8 bytes from a1 (arg1 at entry) +0x278.
  The `lw` at 0x21ea6bc loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0x21ea6c4 loads 8 bytes from [a1+632]:8 +0x40.
  The `ldc1` at 0x21ea6cc loads 8 bytes from abs 0x2347a28.
  The `ldc1` at 0x21ea6d0 loads 8 bytes from [a1+632]:8 +0x30.
  The `ldc1` at 0x21ea6d4 loads 8 bytes from abs 0x2347a18.
  The `ldc1` at 0x21ea6d8 loads 8 bytes from [a1+632]:8 +0x0.
  The `ldc1` at 0x21ea6e8 loads 8 bytes from [a1+632]:8 +0x48.
  The `ldc1` at 0x21ea6f4 loads 8 bytes from [a1+632]:8 +0x38.
  The `lwc1` at 0x21ea730 loads 4 bytes from abs 0x23477a0.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21ea744, `swc1` at 0x21ea7f4.
  The `lw` at 0x21ea754 loads 4 bytes from ?.
  The `blez` branch at 0x21ea6f8 targets 0x21ea7f8, is taken when t8(=[a1+184]) <= 0 (signed), and falls through when t8(=[a1+184]) > 0 (signed).
  The `beq` branch at 0x21ea734 targets 0x21ea800 and is always taken.
  The `beq` branch at 0x21ea748 targets 0x21ea7f8, is taken when t8(=[a1+184]) == a2(?), and falls through when t8(=[a1+184]) != a2(?).
  The `bc1t` branch at 0x21ea7b0 targets 0x21ea740, is taken when f5 == f6 (c.eq.d at 0x21ea7a4), and falls through when not (f5 == f6 (c.eq.d at 0x21ea7a4)).
  The `bc1f` branch at 0x21ea7d0 targets 0x21ea7e0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x21ea7d8 targets 0x21ea7ec and is always taken.
  The `beq` branch at 0x21ea7f0 targets 0x21ea748 and is always taken.
  The `beq` branch at 0x21ea804 targets 0x21ea754 and is always taken.
  The return at 0x21ea7f8 has v0 = one of [a1+632]:8, ?.
  The instructions from 0x21ea73c to 0x21ea73c are not reached by any path from the entry, and their branches are not listed.
- `__glOdySpanEyeZ16ToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea810 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ea810-0x21ea970 (352 bytes).
  It occupies 352 bytes.
  The `ldc1` at 0x21ea810 loads 8 bytes from a1 (arg1 at entry) +0x288.
  The `ld` at 0x21ea814 loads 8 bytes from a1 (arg1 at entry) +0x278.
  The `lw` at 0x21ea81c loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0x21ea824 loads 8 bytes from [a1+632]:8 +0x40.
  The `ldc1` at 0x21ea82c loads 8 bytes from abs 0x2347a28.
  The `ldc1` at 0x21ea830 loads 8 bytes from [a1+632]:8 +0x30.
  The `ldc1` at 0x21ea834 loads 8 bytes from abs 0x2347a18.
  The `ldc1` at 0x21ea838 loads 8 bytes from [a1+632]:8 +0x0.
  The `ldc1` at 0x21ea848 loads 8 bytes from [a1+632]:8 +0x48.
  The `ldc1` at 0x21ea854 loads 8 bytes from [a1+632]:8 +0x38.
  The `lwc1` at 0x21ea888 loads 4 bytes from abs 0x23477a0.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21ea8a4, `swc1` at 0x21ea958.
  The `lhu` at 0x21ea8b4 loads 2 bytes from ?.
  The `blez` branch at 0x21ea858 targets 0x21ea95c, is taken when t3(=[a1+184]) <= 0 (signed), and falls through when t3(=[a1+184]) > 0 (signed).
  The `beq` branch at 0x21ea88c targets 0x21ea964 and is always taken.
  The `beq` branch at 0x21ea8a8 targets 0x21ea95c, is taken when t3(=[a1+184]) == a2(?), and falls through when t3(=[a1+184]) != a2(?).
  The `bc1t` branch at 0x21ea914 targets 0x21ea8a0, is taken when f5 == f6 (c.eq.d at 0x21ea908), and falls through when not (f5 == f6 (c.eq.d at 0x21ea908)).
  The `bc1f` branch at 0x21ea934 targets 0x21ea944, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x21ea93c targets 0x21ea950 and is always taken.
  The `beq` branch at 0x21ea954 targets 0x21ea8a8 and is always taken.
  The `beq` branch at 0x21ea968 targets 0x21ea8b4 and is always taken.
  The return at 0x21ea95c has v0 = one of [a1+632]:8, ?.
  The instructions from 0x21ea894 to 0x21ea89c are not reached by any path from the entry, and their branches are not listed.
- `__glOdySpanWindowZToEyeZ24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21eb2a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21eb2a0-0x21eb3f8 (344 bytes).
  It occupies 344 bytes.
  The `ldc1` at 0x21eb2a0 loads 8 bytes from a1 (arg1 at entry) +0x288.
  The `ld` at 0x21eb2a4 loads 8 bytes from a1 (arg1 at entry) +0x278.
  The `lw` at 0x21eb2a8 loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0x21eb2ac loads 8 bytes from [a1+632]:8 +0x48.
  The `ldc1` at 0x21eb2b4 loads 8 bytes from [a1+632]:8 +0x38.
  The `ldc1` at 0x21eb2bc loads 8 bytes from [a1+632]:8 +0x30.
  The `ldc1` at 0x21eb2c4 loads 8 bytes from abs 0x2347a08.
  The `ldc1` at 0x21eb2c8 loads 8 bytes from [a1+632]:8 +0x40.
  The `ldc1` at 0x21eb2d0 loads 8 bytes from a1 (arg1 at entry) +0x280.
  The `ldc1` at 0x21eb2e4 loads 8 bytes from [a1+632]:8 +0x0.
  The `ldc1` at 0x21eb308 loads 8 bytes from abs 0x2347a80.
  The `lwc1` at 0x21eb320 loads 4 bytes from a1 (arg1 at entry) +0x290.
  The `sw` at 0x21eb35c stores 4 bytes to ?.
  The `lwc1` at 0x21eb360 loads 4 bytes from ?.
  The `lbu` at 0x21eb388 loads 1 byte from a1 (arg1 at entry) +0x29a.
  The `lbu` at 0x21eb38c loads 1 byte from a1 (arg1 at entry) +0x29b.
  The `lwc1` at 0x21eb3b8 loads 4 bytes from a1 (arg1 at entry) +0x294.
  The `blez` branch at 0x21eb2ec targets 0x21eb3f0, is taken when t8(=[a1+184]) <= 0 (signed), and falls through when t8(=[a1+184]) > 0 (signed).
  The `beq` branch at 0x21eb30c targets 0x21eb360 and is always taken.
  The `bltz` branch at 0x21eb340 targets 0x21eb358, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0x21eb358 targets 0x21eb3f0, is taken when t8(=[a1+184]) == a3(?), and falls through when t8(=[a1+184]) != a3(?).
  The `bc1t` branch at 0x21eb37c targets 0x21eb320, is taken when f5 == f7 (c.eq.d at 0x21eb36c), and falls through when not (f5 == f7 (c.eq.d at 0x21eb36c)).
  The `beq` branch at 0x21eb390 targets 0x21eb3a4, is taken when a7(=[a1+666]:1) == 0, and falls through when a7(=[a1+666]:1) != 0.
  The `bc1t` branch at 0x21eb39c targets 0x21eb3b8, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `beq` branch at 0x21eb3a4 targets 0x21eb3c4, is taken when t0(=[a1+667]:1) == 0, and falls through when t0(=[a1+667]:1) != 0.
  The `bc1f` branch at 0x21eb3b0 targets 0x21eb3c4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0x21eb3bc targets 0x21eb328 and is always taken.
  The `bc1t` branch at 0x21eb3d0 targets 0x21eb3e4, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x21eb3e8 targets 0x21eb328 and is always taken.
  The return at 0x21eb3f0 has v0 = one of [a1+632]:8, ?.
  The instructions from 0x21eb314 to 0x21eb31c are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyImageMovePixelsDMAtoHost` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ffc10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ffc10-0x2200374 (1892 bytes).
  It occupies 1892 bytes.
  The `ld` at 0x21ffc30 loads 8 bytes from abs 0x1020.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x21ffc60, `lw` at 0x21ffe0c.
  The `lwc1` at 0x21ffc6c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x21ffc70 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x21ffc74 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0x21ffc78 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0x21ffc7c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x21ffc80 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x21ffc88 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x21ffc90 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x21ffc9c, `lbu` at 0x21ffeac.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x21ffcac, `lw` at 0x21ffdd4, `lw` at 0x21ffdf8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x21ffcb8, `lw` at 0x21ffd88, `lw` at 0x21ffdec.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0x21ffd38, `lbu` at 0x21fff94.
  The `lw` at 0x21ffd44 loads 4 bytes from [0x1020]:8 +0x5c4.
  The `lw` at 0x21ffdb0 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0x21ffdbc loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0x21ffdc8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x21ffdcc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x21ffe18 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x21ffe38 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x21ffe3c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x21fff28 loads 8 bytes from a0 (arg0 at entry) +0x30.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x21fff3c, `lw` at 0x21fff88, `lw` at 0x2200270.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x21fff68, `lw` at 0x220027c, `lw` at 0x22002a4.
  The `lw` at 0x21fffa8 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0x21fffb4 loads 4 bytes from (sp-240 + ([a1+20] << 0x2)) +0x0.
  The `lw` at 0x2200034 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x2200120 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x2200214 loads 4 bytes from [0x1020]:8 +0x9ec0.
  The `lw` at 0x2200230 loads 4 bytes from [0x1020]:8 +0x285c8.
  The `lw` at 0x220023c loads 4 bytes from [0x1020]:8 +0x820.
  The `lw` at 0x22002fc loads 4 bytes from [0x1020]:8 +0x578.
  The `bgezall` at 0x21ffd14 calls __glOdysseyImageCalcXferReadParams [0x22035e0] with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-264, a6=0x1472a8.
  The `bgezall` at 0x21ffdb8 calls ImageCalcDmaFieldOffsets [0x2202f20] with a0=[a1+44], a1=[a1+48], a2=one of 0x0, 0x1, a3=?, a4=sp-304, a5=sp-300.
  The `jalr` at 0x21ffde8 calls __glSpecElementsPerGroup [0x2256d30] with a0=[a0+8], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x21ffdfc calls __glSpecBytesPerElement [0x2256f00] with a0=[a0+12], a1=?, a2=?, a3=?.
  The `jalr` at 0x21ffe74 calls ceilf with a0=?, a1=?, a2=?, a3=?, a5=[a0+16].
  The `jalr` at 0x21fff64 calls __glOdysseyOpenPMObjReference [0x220b780] with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=[a1+20], a4=sp-240, a5=0x0.
  The `bgezall` at 0x22001a0 calls ImageToDmaHostPixelSize [0x22035c0] with a0=?, a1=?, a2=?, a3=?, a7=-0x8.
  The `jalr` at 0x2200284 calls __glOdysseyReadFromPMObj [0x220b3f0] with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=?, a5=one of 0x0, 0x2, a6=0x0, a7=sp-296.
  The `jalr` at 0x22002a8 calls __glOdysseyClosePMObjReference [0x220bd70] with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=[a1+20].
  The `jalr` at 0x2200324 calls __glSetError [0x227a070] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0x2200334 calls __glSetError [0x227a070] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0x2200348 calls __glSetError [0x227a070] with a0=0x501, a1=0x403, a2=?, a3=?.
  The `jalr` at 0x2200364 calls __glSetError [0x227a070] with a0=0x505, a1=?, a2=?, a3=?, a6=0x1fff0000.
  The `beq` branch at 0x21ffd30 targets 0x2200344, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x21ffd3c targets 0x22002f0, is taken when t3(=[a1+9]:1) == 0, and falls through when t3(=[a1+9]:1) != 0.
  The `beq` branch at 0x21ffd4c targets 0x22002d8, is taken when v0(=[[0x1020]:8+1476]) == t8(=0x405), and falls through when v0(=[[0x1020]:8+1476]) != t8(=0x405).
  The `beq` branch at 0x21ffd54 targets 0x22002d8, is taken when v0(=[[0x1020]:8+1476]) == t9(=0x402), and falls through when v0(=[[0x1020]:8+1476]) != t9(=0x402).
  The `beq` branch at 0x21ffd5c targets 0x22002d8, is taken when v0(=[[0x1020]:8+1476]) == ra(=0x403), and falls through when v0(=[[0x1020]:8+1476]) != ra(=0x403).
  The `beq` branch at 0x21ffd6c targets 0x22002e0, is taken when v0(=[[0x1020]:8+1476]) == v1(=0x407), and falls through when v0(=[[0x1020]:8+1476]) != v1(=0x407).
  The `beq` branch at 0x21ffd74 targets 0x22002e0, is taken when v0(=[[0x1020]:8+1476]) == a0(=0x401), and falls through when v0(=[[0x1020]:8+1476]) != a0(=0x401).
  The `beq` branch at 0x21ffd7c targets 0x22002e0, is taken when v0(=[[0x1020]:8+1476]) == a1(=0x403), and falls through when v0(=[[0x1020]:8+1476]) != a1(=0x403).
  The `beq` branch at 0x21ffd90 targets 0x22002e8, is taken when v0(=[a0+8]) == a3(=0x1902), and falls through when v0(=[a0+8]) != a3(=0x1902).
  The `beq` branch at 0x21ffd98 targets 0x22002e8, is taken when v0(=[a0+8]) == a4(=0x1901), and falls through when v0(=[a0+8]) != a4(=0x1901).
  The `beq` branch at 0x21ffdc0 targets 0x22002bc, is taken when v0(=ret(ImageCalcDmaFieldOffsets)) == 0, and falls through when v0(=ret(ImageCalcDmaFieldOffsets)) != 0.
  The `beq` branch at 0x21ffe2c targets 0x21ffe3c, is taken when a2(=[a0+24]) >= s3(?) (unsigned), and falls through when a2(=[a0+24]) < s3(?) (unsigned).
  The `beq` branch at 0x21ffecc targets 0x22002fc, is taken when t3(=[a0]:1) == 0, and falls through when t3(=[a0]:1) != 0.
  The `beq` branch at 0x21fff70 targets 0x2200358, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` branch at 0x220021c targets 0x2200254, is taken when (a5(=[[0x1020]:8+40640]) & 0x400) == 0, and falls through when (a5(=[[0x1020]:8+40640]) & 0x400) != 0.
  The `beq` branch at 0x2200234 targets 0x2200258, is taken when t1(=[[0x1020]:8+165320]) == 0, and falls through when t1(=[[0x1020]:8+165320]) != 0.
  The `beq` branch at 0x2200244 targets 0x2200258, is taken when (t2(=[[0x1020]:8+2080]) & 0x4) == 0, and falls through when (t2(=[[0x1020]:8+2080]) & 0x4) != 0.
  The `beq` branch at 0x220024c targets 0x2200258 and is always taken.
  The `beq` branch at 0x2200290 targets 0x2200320, is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0.
  The `beq` branch at 0x22002b4 targets 0x2200334, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `beq` branch at 0x22002d8 targets 0x21ffd68 and is always taken.
  The `beq` branch at 0x22002e0 targets 0x21ffd8c and is always taken.
  The `beq` branch at 0x22002e8 targets 0x21ffda0 and is always taken.
  The `beq` branch at 0x22002f4 targets 0x21ffd88 and is always taken.
  The `beq` branch at 0x2200318 targets 0x21ffed4 and is always taken.
  The `beq` branch at 0x220032c targets 0x22002c0 and is always taken.
  The `beq` branch at 0x220033c targets 0x22002c0 and is always taken.
  The `beq` branch at 0x2200350 targets 0x22002c0 and is always taken.
  The `beq` branch at 0x220036c targets 0x22002c0 and is always taken.
  The return at 0x22002d0 has v0 = one of ?, ret(__glSetError).
- `__glOdyim_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228690 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2228690-0x22286fc (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x2228690 loads 8 bytes from abs 0x1020.
  The `lw` at 0x2228698 loads 4 bytes from abs 0x1030.
  The `jalr` at 0x22286c0 calls __glim_LoadMatrixf [0x22e6620] with a0=a0 at entry (arg0), a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x22286d0 calls dirtyMatrix [0x2228360] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x22286ec calls __glSetError [0x227a070] with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x22286b4 targets 0x22286e8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x22286f4 targets 0x22286dc and is always taken.
  The return at 0x22286e0 has v0 = one of ret(dirtyMatrix), ret(__glSetError).
- `__glOdyim_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228700 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2228700-0x22287b4 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x2228708 loads 8 bytes from abs 0x1020.
  The `lw` at 0x222870c loads 4 bytes from abs 0x1030.
  The `lw` at 0x2228740 loads 4 bytes from [0x1020]:8 +0x7d0.
  The `ldc1` at 0x2228774 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sdc1` at 0x2228780 stores 8 bytes to [0x1020]:8 +0x18a68.
  The `ldc1` at 0x2228784 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sdc1` at 0x2228788 stores 8 bytes to [0x1020]:8 +0x18a70.
  The `ldc1` at 0x222878c loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sdc1` at 0x2228790 stores 8 bytes to [0x1020]:8 +0x18a78.
  The `ldc1` at 0x2228794 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sdc1` at 0x222879c stores 8 bytes to [0x1020]:8 +0x18a80.
  The `jalr` at 0x2228738 calls __glim_LoadMatrixd [0x22e6710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2228754 calls dirtyMatrix [0x2228360] with a0=[0x1020]:8, a1=0x1701, a2=?, a3=?.
  The `jalr` at 0x22287a4 calls __glSetError [0x227a070] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x222872c targets 0x22287a0, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2228748 targets 0x2228774, is taken when a0(=[[0x1020]:8+2000]) == a1(=0x1701), and falls through when a0(=[[0x1020]:8+2000]) != a1(=0x1701).
  The `beq` branch at 0x2228798 targets 0x222874c and is always taken.
  The `beq` branch at 0x22287ac targets 0x2228760 and is always taken.
  The return at 0x222876c has v0 = one of ret(dirtyMatrix), ret(__glSetError).
- `__glOdysseyEyeToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229130 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2229130-0x22291ac (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0x2229130 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0x222913c loads 8 bytes from [0x1020]:8 +0x18a70.
  The `ldc1` at 0x2229144 loads 8 bytes from [0x1020]:8 +0x18a80.
  The `ldc1` at 0x2229164 loads 8 bytes from abs 0x2347a18.
  2 such `ldc1` accesses load 8 bytes from [0x1020]:8 +0x18a68, including `ldc1` at 0x222916c, `ldc1` at 0x222918c.
  2 such `ldc1` accesses load 8 bytes from [0x1020]:8 +0x18a78, including `ldc1` at 0x2229170, `ldc1` at 0x2229190.
  2 such `ldc1` accesses load 8 bytes from abs 0x2347a28, including `ldc1` at 0x222917c, `ldc1` at 0x222919c.
  The `bc1t` branch at 0x2229160 targets 0x222918c, is taken when f6 == f0 (c.eq.d at 0x2229154), and falls through when not (f6 == f0 (c.eq.d at 0x2229154)).
  The return at 0x2229184 has v0 = 0x11dd88.
  The return at 0x22291a4 has v0 = 0x11dd88.
- `__glOdysseyNormalizedEyeToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22291b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22291b0-0x222925c (172 bytes).
  It occupies 172 bytes.
  The `ld` at 0x22291b0 loads 8 bytes from abs 0x1020.
  The `lbu` at 0x22291bc loads 1 byte from [0x1020]:8 +0x18bb0.
  2 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0x22291f8, `ldc1` at 0x22291fc.
  The `bgezall` at 0x22291e8 calls __glOdysseyUpdateTransform [0x22271c0] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1020]:8+131072, a3=a3 at entry (arg3).
  The `bgezall` at 0x2229210 calls __glOdysseyEyeToWindowZ [0x2229130] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x22291d8 targets 0x22291f8, is taken when at(=[[0x1020]:8+101296]:1) == 0, and falls through when at(=[[0x1020]:8+101296]:1) != 0.
  The `bc1f` branch at 0x222922c targets 0x2229244, is taken when not (f6 < f15 (c.lt.d at 0x2229220)), and falls through when f6 < f15 (c.lt.d at 0x2229220).
  The return at 0x222923c has v0 = ret(__glOdysseyEyeToWindowZ).
  The return at 0x2229254 has v0 = ret(__glOdysseyEyeToWindowZ).
- `__glDoBlendMax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22710e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22710e0-0x227114c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x22710e0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22710e4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `swc1` at 0x22710f4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x22710f8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22710fc loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0x227110c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2271110 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2271114 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2271124 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2271128 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x227112c loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2271140 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1f` branch at 0x22710ec targets 0x22710f8, is taken when not (f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22710e8)), and falls through when f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22710e8).
  The `bc1f` branch at 0x2271104 targets 0x2271110, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x227111c targets 0x2271128, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2271134 targets 0x2271144, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x227113c has v0 = ?.
  The return at 0x2271144 has v0 = ?.
- `__glFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x227a410 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x227a410-0x227a4e4 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x227a424 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x227a450 loads 4 bytes from a0 (arg0 at entry) +0xfd8.
  The `lw` at 0x227a454 loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `lbu` at 0x227a470 loads 1 byte from a0 (arg0 at entry) +0xf20.
  The `lw` at 0x227a488 loads 4 bytes from a0 (arg0 at entry) +0xfe0.
  The `lw` at 0x227a490 loads 4 bytes from a0 (arg0 at entry) +0xfe4.
  The `ld` at 0x227a4c4 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `jalr` at 0x227a444 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0x227a468 calls __glChangeWindowSize [0x227a2e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x227a4b4 calls __glChangeReadWindowSize [0x227a400] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+4064], a4=[a0+4068].
  The `jalr` at 0x227a4d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0x227a458 targets 0x227a464, is taken when v0(=[a0+4056]) != a1(?), and falls through when v0(=[a0+4056]) == a1(?).
  The `beq` branch at 0x227a460 targets 0x227a470, is taken when v1(=[a0+4060]) == a2(?), and falls through when v1(=[a0+4060]) != a2(?).
  The `beq` branch at 0x227a474 targets 0x227a4c4, is taken when a0(=[a0+3872]:1) == 0, and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` branch at 0x227a48c targets 0x227a4b0, is taken when a3(=[a0+4064]) != a1(?), and falls through when a3(=[a0+4064]) == a1(?).
  The `bne` branch at 0x227a494 targets 0x227a4b4, is taken when a4(=[a0+4068]) != a2(?), and falls through when a4(=[a0+4068]) == a2(?).
  The `beq` branch at 0x227a4bc targets 0x227a4a0 and is always taken.
  The `beq` branch at 0x227a4dc targets 0x227a488 and is always taken.
  The return at 0x227a4a8 has v0 = one of ?, ret(__glChangeReadWindowSize).
- `SubdivRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22bb050 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22bb050-0x22bb138 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x22bb068, `lwc1` at 0x22bb06c, `lwc1` at 0x22bb0b0.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x22bb094, `swc1` at 0x22bb0c8, `swc1` at 0x22bb0e4.
  The `blez` branch at 0x22bb050 targets 0x22bb130, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x22bb060 targets 0x22bb098, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x22bb090 targets 0x22bb068, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x22bb09c targets 0x22bb130, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x22bb128 targets 0x22bb0b0, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x22bb130 has v0 = ?.
- `SubdivIRRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22bb140 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22bb140-0x22bb258 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x22bb160, `lwc1` at 0x22bb164, `lwc1` at 0x22bb1b0.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x22bb194, `swc1` at 0x22bb1d0, `swc1` at 0x22bb1f4.
  The `blez` branch at 0x22bb140 targets 0x22bb250, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x22bb158 targets 0x22bb198, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0x22bb190 targets 0x22bb160, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x22bb19c targets 0x22bb250, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x22bb248 targets 0x22bb1b0, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x22bb250 has v0 = ?.
- `__glReCompute2DMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e90d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e90d0-0x22e9184 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0x22e90d0, `lw` at 0x22e9170.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7b8, including `lwc1` at 0x22e90f0, `lwc1` at 0x22e9110, `lwc1` at 0x22e9138.
  The `lwc1` at 0x22e90f4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x22e90fc stores 4 bytes to a0 (arg0 at entry) +0x9528.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7c0, including `lwc1` at 0x22e9100, `lwc1` at 0x22e9120, `lwc1` at 0x22e914c.
  The `lwc1` at 0x22e9104 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x22e910c stores 4 bytes to a0 (arg0 at entry) +0x952c.
  The `lwc1` at 0x22e9114 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0x22e911c stores 4 bytes to a0 (arg0 at entry) +0x9538.
  The `lwc1` at 0x22e9124 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `swc1` at 0x22e912c stores 4 bytes to a0 (arg0 at entry) +0x953c.
  The `lwc1` at 0x22e9130 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0x22e9134 stores 4 bytes to a0 (arg0 at entry) +0x9550.
  The `lwc1` at 0x22e913c loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0x22e9140 loads 4 bytes from a0 (arg0 at entry) +0x7bc.
  The `swc1` at 0x22e9148 stores 4 bytes to a0 (arg0 at entry) +0x9558.
  The `lwc1` at 0x22e9150 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0x22e9154 loads 4 bytes from a0 (arg0 at entry) +0x7c4.
  The `lwc1` at 0x22e915c loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e9160 stores 4 bytes to a0 (arg0 at entry) +0x955c.
  The `lwc1` at 0x22e9164 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `swc1` at 0x22e9168 stores 4 bytes to a0 (arg0 at entry) +0x9564.
  The `swc1` at 0x22e916c stores 4 bytes to a0 (arg0 at entry) +0x9560.
  The `sw` at 0x22e9178 stores 4 bytes to a0 (arg0 at entry) +0x9568.
  The `bne` branch at 0x22e90e8 targets 0x22e917c, is taken when v1(=[a1+64]) < 0x2 (unsigned), and falls through when v1(=[a1+64]) >= 0x2 (unsigned).
  The return at 0x22e9174 has v0 = 0x5dde8.
  The return at 0x22e917c has v0 = 0x5dde8.
- `__gllc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f5400 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f5400-0x22f5484 (132 bytes).
  It occupies 132 bytes.
  The `ld` at 0x22f5404 loads 8 bytes from abs 0x1020.
  The `sh` at 0x22f5464 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0x22f542c calls __glDlistAllocOp2 [0x223b310] with a0=[0x1020]:8, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22f5460 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x40, a3=0xaf.
  The `jalr` at 0x22f5474 calls __glDlistAppendOp [0x223b3a0] with a0=?, a1=?, a2=0x22fba20, a3=?.
  The `bne` branch at 0x22f5434 targets 0x22f544c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x22f547c targets 0x22f5440 and is always taken.
  The return at 0x22f5444 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f5490 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f5490-0x22f551c (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x22f5494 loads 8 bytes from abs 0x1020.
  The `sb` at 0x22f54f0 stores 1 byte to ret(__glDlistAllocOp2) +0x16.
  The `sh` at 0x22f54fc stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0x22f54bc calls __glDlistAllocOp2 [0x223b310] with a0=[0x1020]:8, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22f54f8 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x80, a3=0xb0, a5=0x1.
  The `jalr` at 0x22f550c calls __glDlistAppendOp [0x223b3a0] with a0=?, a1=?, a2=0x22fba70, a3=?.
  The `bne` branch at 0x22f54c4 targets 0x22f54dc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x22f5514 targets 0x22f54d0 and is always taken.
  The return at 0x22f54d4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__glle_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fba20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fba20-0x22fba64 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x22fba34 loads 8 bytes from abs 0x1558.
  The `jalr` at 0x22fba44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22fba5c has v0 = a0+64.
- `__glle_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fba70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fba70-0x22fbab4 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x22fba84 loads 8 bytes from abs 0x1560.
  The `jalr` at 0x22fba94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22fbaac has v0 = a0+128.
- `__glsplc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2303f10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2303f10-0x2303f6c (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x2303f34 calls __glSPDlalloc [0x21b87b0] with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2303f5c calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `bne` branch at 0x2303f3c targets 0x2303f54, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The `beq` branch at 0x2303f64 targets 0x2303f48 and is always taken.
  The return at 0x2303f4c has v0 = one of ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2303f70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2303f70-0x2303fcc (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x2303f94 calls __glSPDlalloc2 [0x21b89a0] with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2303fbc calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `bne` branch at 0x2303f9c targets 0x2303fb4, is taken when v0(=ret(__glSPDlalloc2)) != 0, and falls through when v0(=ret(__glSPDlalloc2)) == 0.
  The `beq` branch at 0x2303fc4 targets 0x2303fa8 and is always taken.
  The return at 0x2303fac has v0 = one of ret(__glSPDlalloc2), ret(memcpy).
- `__glce_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x230f7d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x230f7d0-0x230f844 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x230f7d0 loads 8 bytes from abs 0x1558.
  The `ld` at 0x230f7e8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x230f800 loads 8 bytes from [0x1020]:8 +0x1fa8.
  3 such `sd` accesses store 8 bytes to abs 0x1558, including `sd` at 0x230f80c, `sd` at 0x230f824, `sd` at 0x230f840.
  The `ld` at 0x230f818 loads 8 bytes from ?.
  The `jalr` at 0x230f808 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x230f820 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x230f83c has v0 = ret(glLoadMatrixf).
- `__glce_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x230f850 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x230f850-0x230f8c4 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x230f850 loads 8 bytes from abs 0x1560.
  The `ld` at 0x230f868 loads 8 bytes from abs 0x1020.
  The `ld` at 0x230f880 loads 8 bytes from [0x1020]:8 +0x1fb0.
  3 such `sd` accesses store 8 bytes to abs 0x1560, including `sd` at 0x230f88c, `sd` at 0x230f8a4, `sd` at 0x230f8c0.
  The `ld` at 0x230f898 loads 8 bytes from ?.
  The `jalr` at 0x230f888 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x230f8a0 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x230f8bc has v0 = ret(glLoadMatrixd).
- `glLoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318b0c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318b0c-0x2318b18 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318b0c loads 8 bytes from abs 0x1558.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318b10).
- `glLoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318b18 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318b18-0x2318b24 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318b18 loads 8 bytes from abs 0x1560.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318b1c).
- `__glXBindHWContextToWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8af05c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8af05c-0xd8af348 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0xd8af078 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd8af090, `lw` at 0xd8af100.
  51 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8af098, `lw` at 0xd8af0b8, `lw` at 0xd8af0fc.
  The `lw` at 0xd8af09c loads 4 bytes from [0x1014] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd8af0e0, `lw` at 0xd8af1d8, `lw` at 0xd8af2cc.
  The `sw` at 0xd8af104 stores 4 bytes to [0x1014] +0x0.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8af110, `sb` at 0xd8af208, `sb` at 0xd8af2f8.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8af210, `sw` at 0xd8af21c, `sw` at 0xd8af224.
  The `jalr` at 0xd8af084 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8af0c0 calls Ioctl [0xd8afdfc] with a0=?, a1=0x3ea, a2=sp-12, a3=?.
  The `jalr` at 0xd8af0e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8ddd64, a2=?, a3=?.
  The `jalr` at 0xd8af1b8 calls Ioctl [0xd8afdfc] with a0=?, a1=0x3eb, a2=sp-24, a3=?.
  The `jalr` at 0xd8af1e0 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8ddd7c, a2=?, a3=?.
  The `jalr` at 0xd8af2a8 calls Ioctl [0xd8afdfc] with a0=?, a1=0x400, a2=sp-44, a3=?.
  The `jalr` at 0xd8af2d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8ddd94, a2=?, a3=?.
  The `beq` branch at 0xd8af0a8 targets 0xd8af10c, is taken when t7(=[[0x1014]]) == a3(?), and falls through when t7(=[[0x1014]]) != a3(?).
  The `bgez` branch at 0xd8af0cc targets 0xd8af0fc, is taken when v0(=ret(Ioctl)) >= 0 (signed), and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `beq` branch at 0xd8af0f4 targets 0xd8af108 and is always taken.
  The `bne` branch at 0xd8af10c targets 0xd8af134, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bnel` branch at 0xd8af11c targets 0xd8af138, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?); its branch-likely delay slot `lw t5,220(v1)` at 0xd8af120 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af12c targets 0xd8af33c, is taken when t3(?) == t4(?), and falls through when t3(?) != t4(?); its branch-likely delay slot `lw ra,28(sp)` at 0xd8af130 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af13c targets 0xd8af15c, is taken when t5(?) == t6(?), and falls through when t5(?) != t6(?); its branch-likely delay slot `lw t8,204(v1)` at 0xd8af140 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8af150 targets 0xd8af22c, is taken when t9(?) != at(=0x3), and falls through when t9(?) == at(=0x3); its branch-likely delay slot `lw t4,204(v1)` at 0xd8af154 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af168 targets 0xd8af190, is taken when t0(?) >= 0x2 (signed), and falls through when t0(?) < 0x2 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd8af16c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af178 targets 0xd8af190, is taken when t1(?) >= 0x3 (signed), and falls through when t1(?) < 0x3 (signed); its branch-likely delay slot `lw t3,228(v1)` at 0xd8af17c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8af184 targets 0xd8af198 and is always taken.
  The `bne` branch at 0xd8af1c8 targets 0xd8af1f0, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8af1e8 targets 0xd8af338 and is always taken.
  The `beql` branch at 0xd8af200 targets 0xd8af218, is taken when t7(?) == t8(?), and falls through when t7(?) != t8(?); its branch-likely delay slot `lw t2,224(v1)` at 0xd8af204 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8af220 targets 0xd8af338 and is always taken.
  The `bnel` branch at 0xd8af238 targets 0xd8af268, is taken when t5(?) != at(=0x1), and falls through when t5(?) == at(=0x1); its branch-likely delay slot `lw t8,228(v1)` at 0xd8af23c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af248 targets 0xd8af268, is taken when t6(?) >= 0x3 (signed), and falls through when t6(?) < 0x3 (signed); its branch-likely delay slot `lw t8,228(v1)` at 0xd8af24c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8af25c targets 0xd8af27c and is always taken.
  The `bne` branch at 0xd8af2b8 targets 0xd8af2e4, is taken when v0(=ret(Ioctl)) != at(=-0x1), and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beq` branch at 0xd8af2dc targets 0xd8af338 and is always taken.
  The `bnel` branch at 0xd8af2f4 targets 0xd8af314, is taken when t7(?) != t8(?), and falls through when t7(?) == t8(?); its branch-likely delay slot `sb t3,244(v1)` at 0xd8af2f8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8af308 targets 0xd8af32c, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?); its branch-likely delay slot `lw t9,224(v1)` at 0xd8af30c runs only when taken and is annulled on fall-through.
  The return at 0xd8af340 has v0 = ?.
  The instructions from 0xd8af18c to 0xd8af18c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8af228 to 0xd8af228 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xd8af264 to 0xd8af264 are not reached by any path from the entry, and their branches are not listed.
- `__glx_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bcf3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bcf3c-0xd8bcfd8 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd8bcf4c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8bcf5c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8bcf68 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8bcf74 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8bcf78 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8bcf94 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8bcfa8 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8bcf88 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8bcfb8 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8bcfa4 targets 0xd8bcfc4, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8bcfd0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8bcfd8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8bcfd8-0xd8bd074 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd8bcfe8 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8bcff8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8bd004 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8bd010 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8bd014 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8bd030 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8bd044 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8bd024 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4].
  The `jalr` at 0xd8bd054 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8bd040 targets 0xd8bd060, is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The return at 0xd8bd06c has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `glXCreateWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d69b0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d69b0-0xd8d6b48 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d6a00, `lw` at 0xd8d6a0c, `lw` at 0xd8d6a28.
  The `lw` at 0xd8d6a04 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xd8d6a18 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `lw` at 0xd8d6a24 loads 4 bytes from ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d6a30, `lw` at 0xd8d6a48, `lw` at 0xd8d6a74.
  The `lw` at 0xd8d6a34 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d6a4c loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8d6a7c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8d6a88 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d6a8c, `sb` at 0xd8d6ab4.
  The `lw` at 0xd8d6a90 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d6aa4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d6aa8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d6ab0 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8d6ab8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8d6abc stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8d6ac0 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8d6ac4 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8d6acc stores 4 bytes to [a0+108] +0xc.
  The `lw` at 0xd8d6ad4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8d6aec, `sw` at 0xd8d6af0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d6afc, `lw` at 0xd8d6b14.
  The `lw` at 0xd8d6b00 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d69dc calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d6a3c calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0xd8d6a68 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6ad8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xd8d6b08 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=?.
  The `jalr` at 0xd8d6b24 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d69ec targets 0xd8d69fc, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8d69f4 targets 0xd8d6b34 and is always taken.
  The `beql` branch at 0xd8d69fc targets 0xd8d6a2c, is taken when a3 == 0, and falls through when a3 != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd8d6a00 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6a08 targets 0xd8d6a2c, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0; its branch-likely delay slot `lw a1,1232(s0)` at 0xd8d6a0c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d6a10 targets 0xd8d6a28, is taken when v1(=[a3]) == 0, and falls through when v1(=[a3]) != 0.
  The `bnel` branch at 0xd8d6a20 targets 0xd8d6a1c, is taken when t6(?) != 0, and falls through when t6(?) == 0; its branch-likely delay slot `lw t6,8(v0)` at 0xd8d6a24 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6a2c targets 0xd8d6a4c, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd8d6a30 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6a58 targets 0xd8d6a7c, is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned); its branch-likely delay slot `lw a2,60(sp)` at 0xd8d6a5c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6af8 targets 0xd8d6b18, is taken when a1(=[a0+1232]) == 0, and falls through when a1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d6afc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6b1c targets 0xd8d6b34, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw v0,48(sp)` at 0xd8d6b20 runs only when taken and is annulled on fall-through.
  The return at 0xd8d6b40 has v0 = one of 0x0, ?.
- `glXDestroyWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d6b48 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d6b48-0xd8d6c60 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d6b80, `lw` at 0xd8d6c10.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d6b88, `lw` at 0xd8d6ba0, `lw` at 0xd8d6bcc.
  The `lw` at 0xd8d6b8c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d6ba4 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d6bb4, `sw` at 0xd8d6bd0.
  The `sh` at 0xd8d6bdc stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d6be0, `sb` at 0xd8d6c04.
  The `lw` at 0xd8d6be4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d6bf4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8d6bf8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8d6c00 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8d6c0c stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d6c18, `lw` at 0xd8d6c30.
  The `lw` at 0xd8d6c1c loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d6b6c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d6b94 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6bc0 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d6c24 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=?.
  The `jalr` at 0xd8d6c40 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d6b78 targets 0xd8d6c4c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` branch at 0xd8d6b84 targets 0xd8d6ba4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d6b88 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6bb0 targets 0xd8d6bd4, is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned), and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d6bb4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6c14 targets 0xd8d6c34, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d6c18 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d6c38 targets 0xd8d6c50, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8d6c3c runs only when taken and is annulled on fall-through.
  The return at 0xd8d6c58 has v0 = one of [a0+124], ?.
- `glXBindChannelToWindowSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d8b50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d8b50-0xd8d8c8c (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xd8d8b60 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d8b80 loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8d8c34, `sb` at 0xd8d8c70.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d8c3c, `lw` at 0xd8d8c44, `lw` at 0xd8d8c4c.
  The `jalr` at 0xd8d8b88 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d8bb0 calls __glXInitChannelRectState [0xd8d89b8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd8d8be8 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64.
  The `jalr` at 0xd8d8c00 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd8d8c50 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd8d8b94 targets 0xd8d8c78, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd8d8bb8 targets 0xd8d8c78, is taken when v0(=ret(__glXInitChannelRectState)) == 0, and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` branch at 0xd8d8c30 targets 0xd8d8c60, is taken when (t5(?) & 0xff) == 0, and falls through when (t5(?) & 0xff) != 0.
  The `bnel` branch at 0xd8d8c68 targets 0xd8d8c78, is taken when t0(=a3) != 0, and falls through when t0(=a3) == 0; its branch-likely delay slot `sw t2,48(sp)` at 0xd8d8c6c runs only when taken and is annulled on fall-through.
  The return at 0xd8d8c84 has v0 = one of ?, 0x1.
- `__glOdysplc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda53618 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda53618-0xda53660 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda53624 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda5363c stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda53644 calls __glsplc_LoadMatrixf [0xdb9f13c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda53658 has v0 = ret(__glsplc_LoadMatrixf).
- `__glOdysplc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda53660 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda53660-0xda536a8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xda5366c loads 4 bytes from abs 0x1010.
  The `sb` at 0xda53684 stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda5368c calls __glsplc_LoadMatrixd [0xdb9f19c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda536a0 has v0 = ret(__glsplc_LoadMatrixd).
- `__glOdySpanEyeZ24ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda85c6c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda85c6c-0xda85e28 (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0xda85ca0 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda85ca4 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda85ca8 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `ldc1` at 0xda85cac loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda85cb0 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda85cc8 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda85ccc loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda85cd4 loads 8 bytes from [a1+500] +0x0.
  The `lbu` at 0xda85d0c loads 1 byte from ?.
  The `lw` at 0xda85d34 loads 4 bytes from ?.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda85dc0, `swc1` at 0xda85de8, `swc1` at 0xda85dfc.
  The `blez` branch at 0xda85ce4 targets 0xda85e08, is taken when v0(=[a1+168]) <= 0 (signed), and falls through when v0(=[a1+168]) > 0 (signed).
  The `bc1tl` branch at 0xda85d84 targets 0xda85df8, is taken when f16 == f2 (c.eq.d at 0xda85d7c), and falls through when not (f16 == f2 (c.eq.d at 0xda85d7c)); its branch-likely delay slot `mtc1 at,$f8` at 0xda85d88 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda85dac targets 0xda85dc8, is taken when not (f12 < f10 (c.lt.s at 0xda85da4)), and falls through when f12 < f10 (c.lt.s at 0xda85da4); its branch-likely delay slot `cvt.d.s $f2,$f12` at 0xda85db0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85dbc targets 0xda85e00 and is always taken.
  The `bc1fl` branch at 0xda85dd0 targets 0xda85de4, is taken when not (f14 < f2 (c.lt.d at 0xda85dc8)), and falls through when f14 < f2 (c.lt.d at 0xda85dc8); its branch-likely delay slot `mov.d $f0,$f2` at 0xda85dd4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85dd8 targets 0xda85de4 and is always taken.
  The `beq` branch at 0xda85dec targets 0xda85e00 and is always taken.
  The `bne` branch at 0xda85e00 targets 0xda85cf8, is taken when t1(?) != v0(=[a1+168]), and falls through when t1(?) == v0(=[a1+168]).
  The return at 0xda85e20 has v0 = [a1+168].
  The instructions from 0xda85dc4 to 0xda85dc4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85de0 to 0xda85de0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85df4 to 0xda85df4 are not reached by any path from the entry, and their branches are not listed.
- `__glOdySpanEyeZ16ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda85e28 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda85e28-0xda85fe4 (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0xda85e5c loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda85e60 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda85e64 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `ldc1` at 0xda85e68 loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda85e6c loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda85e84 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda85e88 loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda85e90 loads 8 bytes from [a1+500] +0x0.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xda85ec8, `lhu` at 0xda85eec.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda85f7c, `swc1` at 0xda85fa4, `swc1` at 0xda85fb8.
  The `blez` branch at 0xda85ea0 targets 0xda85fc4, is taken when v0(=[a1+168]) <= 0 (signed), and falls through when v0(=[a1+168]) > 0 (signed).
  The `bc1tl` branch at 0xda85f40 targets 0xda85fb4, is taken when f16 == f2 (c.eq.d at 0xda85f38), and falls through when not (f16 == f2 (c.eq.d at 0xda85f38)); its branch-likely delay slot `mtc1 at,$f8` at 0xda85f44 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xda85f68 targets 0xda85f84, is taken when not (f12 < f10 (c.lt.s at 0xda85f60)), and falls through when f12 < f10 (c.lt.s at 0xda85f60); its branch-likely delay slot `cvt.d.s $f2,$f12` at 0xda85f6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85f78 targets 0xda85fbc and is always taken.
  The `bc1fl` branch at 0xda85f8c targets 0xda85fa0, is taken when not (f14 < f2 (c.lt.d at 0xda85f84)), and falls through when f14 < f2 (c.lt.d at 0xda85f84); its branch-likely delay slot `mov.d $f0,$f2` at 0xda85f90 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda85f94 targets 0xda85fa0 and is always taken.
  The `beq` branch at 0xda85fa8 targets 0xda85fbc and is always taken.
  The `bne` branch at 0xda85fbc targets 0xda85eb4, is taken when t1(?) != v0(=[a1+168]), and falls through when t1(?) == v0(=[a1+168]).
  The return at 0xda85fdc has v0 = [a1+168].
  The instructions from 0xda85f80 to 0xda85f80 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85f9c to 0xda85f9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda85fb0 to 0xda85fb0 are not reached by any path from the entry, and their branches are not listed.
- `__glOdysseyImageMovePixelsDMAtoHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda9fa78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda9fa78-0xdaa043c (2500 bytes).
  It occupies 2500 bytes.
  The `lw` at 0xda9fa8c loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda9fae8 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9faec loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9fb0c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0xda9fb14 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9fb2c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda9fb44 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda9fb58 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9fb6c loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xda9fb80, `lw` at 0xda9fd18.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xda9fb90, `lbu` at 0xda9feb4, `lbu` at 0xda9fef4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9fb9c, `lw` at 0xda9fcd8, `lw` at 0xda9fcf8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xda9fba0, `lw` at 0xda9fc44, `lw` at 0xda9fc54.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9fbe4, `lbu` at 0xdaa0038.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda9fc04, `lw` at 0xda9ff04, `lw` at 0xdaa0360.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x28, including `lw` at 0xda9fc6c, `lw` at 0xda9fc78.
  The `lw` at 0xda9fc7c loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xda9fcb8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda9fcbc loads 4 bytes from a1 (arg1 at entry) +0x4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0xda9fd34, `lw` at 0xda9fd3c, `lw` at 0xda9fdbc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda9fd48, `lw` at 0xda9fd54.
  The `sw` at 0xda9fd4c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9ff58 loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xda9ffc8, `lw` at 0xdaa0024, `lw` at 0xdaa03a4.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9ffcc, `lw` at 0xdaa03a0, `lw` at 0xdaa0400.
  The `lw` at 0xdaa003c loads 4 bytes from (([a1+16] << 0x2) + sp-132) +0x0.
  The `lw` at 0xdaa0040 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xdaa00dc loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xdaa01e0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xdaa037c loads 4 bytes from table(0x21dd8) +0x0.
  The `jalr` at 0xda9fab8 calls memset with a0=sp-40, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9fad4 calls memset with a0=sp-152, a1=0x0, a2=0x14, a3=?.
  The `jalr` at 0xda9fba8 calls __glOdysseyImageCalcXferReadParams [0xdaa3354] with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-152.
  The `jalr` at 0xda9fbd4 calls __glSetError [0xdb1ac34] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fc98 calls ImageCalcDmaFieldOffsets [0xdaa2b64] with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=?.
  The `jalr` at 0xda9fce4 calls __glSpecElementsPerGroup [0xdaf8340] with a0=[a0+8], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0xda9fd00 calls __glSpecBytesPerElement [0xdaf8444] with a0=[a0+12], a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fda8 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9ffe8 calls __glOdysseyOpenPMObjReference [0xdaacf68] with a0=?, a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xdaa0014 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa02f0 calls ImageToDmaHostPixelSize [0xdaa3330] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa03c4 calls __glOdysseyReadFromPMObj [0xdaacb84] with a0=?, a1=[a1+12], a2=[a1+16], a3=?.
  The `jalr` at 0xdaa03e4 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa0404 calls __glOdysseyClosePMObjReference [0xdaad5a0] with a0=?, a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xdaa0420 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda9fbc4 targets 0xda9fbe4, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xda9fbdc targets 0xdaa042c and is always taken.
  The `beql` branch at 0xda9fbf0 targets 0xda9fc54, is taken when t9(=[a1+9]:1) == 0, and falls through when t9(=[a1+9]:1) != 0; its branch-likely delay slot `sb t8,227(sp)` at 0xda9fbf4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fc10 targets 0xda9fc28, is taken when v0(?) == at(=0x405), and falls through when v0(?) != at(=0x405).
  The `beq` branch at 0xda9fc18 targets 0xda9fc28, is taken when v0(?) == at(=0x402), and falls through when v0(?) != at(=0x402).
  The `bnel` branch at 0xda9fc20 targets 0xda9fc30, is taken when v0(?) != at(=0x403), and falls through when v0(?) == at(=0x403); its branch-likely delay slot `addiu at,zero,1031` at 0xda9fc24 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fc30 targets 0xda9fc48, is taken when v0(?) == at(=0x407), and falls through when v0(?) != at(=0x407).
  The `beq` branch at 0xda9fc38 targets 0xda9fc48, is taken when v0(?) == at(=0x401), and falls through when v0(?) != at(=0x401).
  The `bnel` branch at 0xda9fc40 targets 0xda9fc58, is taken when v0(?) != at(=0x403), and falls through when v0(?) == at(=0x403); its branch-likely delay slot `lw v0,8(t0)` at 0xda9fc44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fc48 targets 0xda9fc54 and is always taken.
  The `bnel` branch at 0xda9fc68 targets 0xda9fc7c, is taken when v1(?) < 0x1 (unsigned), and falls through when v1(?) >= 0x1 (unsigned); its branch-likely delay slot `lw a0,40(t5)` at 0xda9fc6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9fcb0 targets 0xdaa042c, is taken when v0(=ret(ImageCalcDmaFieldOffsets)) == 0, and falls through when v0(=ret(ImageCalcDmaFieldOffsets)) != 0.
  The `beq` branch at 0xda9fcc4 targets 0xda9fcd0, is taken when t7(=[a0+4]) == t8(=[a1+4]), and falls through when t7(=[a0+4]) != t8(=[a1+4]).
  The `bnel` branch at 0xda9fd30 targets 0xda9fd40, is taken when t9(=[a0+36]) != at(=0x1), and falls through when t9(=[a0+36]) == at(=0x1); its branch-likely delay slot `lw v0,24(t0)` at 0xda9fd34 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda9fd44 targets 0xda9fd58, is taken when v0(=[a0+24]) >= a1(?) (unsigned), and falls through when v0(=[a0+24]) < a1(?) (unsigned); its branch-likely delay slot `lw t6,16(t0)` at 0xda9fd48 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda9fd68 targets 0xda9fd80, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xda9fd80 targets 0xda9fd98, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bgez` branch at 0xda9fdd0 targets 0xda9fde8, is taken when t8(=[a0+24]) >= 0 (signed), and falls through when t8(=[a0+24]) < 0 (signed).
  The `beq` branch at 0xda9fe14 targets 0xda9fe60, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0.
  The `bne` branch at 0xda9fe40 targets 0xda9fe58, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xda9fe50 targets 0xda9fe70 and is always taken.
  The `beq` branch at 0xda9fe58 targets 0xda9fe70 and is always taken.
  The `bltz` branch at 0xda9fe68 targets 0xda9fe58, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beq` branch at 0xda9fe78 targets 0xda9fe88, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xda9fe80 targets 0xda9fe88 and is always taken.
  The `beq` branch at 0xda9fe8c targets 0xda9fe9c, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xda9fe94 targets 0xda9fe9c and is always taken.
  The `beql` branch at 0xda9feb0 targets 0xda9fef8, is taken when t4(?) >= t7(?) (unsigned), and falls through when t4(?) < t7(?) (unsigned); its branch-likely delay slot `lbu t9,0(t0)` at 0xda9feb4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9febc targets 0xda9fecc, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xda9fec4 targets 0xda9fecc and is always taken.
  The `beq` branch at 0xda9fed0 targets 0xda9fee0, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xda9fed8 targets 0xda9fee0 and is always taken.
  The `bne` branch at 0xda9fefc targets 0xda9ff30, is taken when t9(=[a0]:1) != 0, and falls through when t9(=[a0]:1) == 0.
  The `bne` branch at 0xda9ff14 targets 0xda9ff20, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9ff24 targets 0xda9ff30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda9ff30 targets 0xda9ff40, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9ff38 targets 0xda9ff40 and is always taken.
  The `beq` branch at 0xda9ff44 targets 0xda9ff54, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xda9ff4c targets 0xda9ff54 and is always taken.
  The `beq` branch at 0xda9ff80 targets 0xda9ff90, is taken when a2(?) >= a1(?) (signed), and falls through when a2(?) < a1(?) (signed).
  The `beq` branch at 0xda9ff88 targets 0xda9ff90 and is always taken.
  The `beq` branch at 0xda9ff94 targets 0xda9ffa4, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xda9ff9c targets 0xda9ffa4 and is always taken.
  The `bne` branch at 0xdaa0004 targets 0xdaa0024, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0.
  The `beq` branch at 0xdaa001c targets 0xdaa042c and is always taken.
  The `beq` branch at 0xdaa0048 targets 0xdaa0064, is taken when t8(=[a1+9]:1) == 0, and falls through when t8(=[a1+9]:1) != 0.
  The `beq` branch at 0xdaa005c targets 0xdaa006c and is always taken.
  The `beq` branch at 0xdaa00a8 targets 0xdaa00b8, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0xdaa00b0 targets 0xdaa00bc and is always taken.
  The `beql` branch at 0xdaa00c8 targets 0xdaa00dc, is taken when a3(?) >= t0(?) (signed), and falls through when a3(?) < t0(?) (signed); its branch-likely delay slot `sh t0,254(sp)` at 0xdaa00cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdaa00d0 targets 0xdaa00dc and is always taken.
  The `bnel` branch at 0xdaa00e4 targets 0xdaa0104, is taken when v0(=[a1+24]) != at(=0x1000), and falls through when v0(=[a1+24]) == at(=0x1000); its branch-likely delay slot `lhu t6,258(sp)` at 0xdaa00e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdaa00f8 targets 0xdaa0114 and is always taken.
  The `beql` branch at 0xdaa0118 targets 0xdaa012c, is taken when a2(?) >= a1(?) (signed), and falls through when a2(?) < a1(?) (signed); its branch-likely delay slot `or v0,a2,zero` at 0xdaa011c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdaa0120 targets 0xdaa012c and is always taken.
  The `beq` branch at 0xdaa0130 targets 0xdaa0140, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0xdaa0138 targets 0xdaa0140 and is always taken.
  The `beq` branch at 0xdaa0148 targets 0xdaa0158, is taken when t0(?) >= a3(?) (signed), and falls through when t0(?) < a3(?) (signed).
  The `beq` branch at 0xdaa0150 targets 0xdaa015c and is always taken.
  The `beq` branch at 0xdaa0160 targets 0xdaa0170, is taken when a3(?) >= t0(?) (signed), and falls through when a3(?) < t0(?) (signed).
  The `beq` branch at 0xdaa0168 targets 0xdaa0170 and is always taken.
  The `beq` branch at 0xdaa0250 targets 0xdaa0260, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xdaa0258 targets 0xdaa0260 and is always taken.
  The `beq` branch at 0xdaa0264 targets 0xdaa0274, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xdaa026c targets 0xdaa0274 and is always taken.
  The `beq` branch at 0xdaa0290 targets 0xdaa02a0, is taken when t3(?) >= t2(?) (signed), and falls through when t3(?) < t2(?) (signed).
  The `beq` branch at 0xdaa0298 targets 0xdaa02a0 and is always taken.
  The `beq` branch at 0xdaa02a4 targets 0xdaa02b4, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0xdaa02ac targets 0xdaa02b4 and is always taken.
  The `beq` branch at 0xdaa0370 targets 0xdaa0398, is taken when (t6(?) & 0x400) == 0, and falls through when (t6(?) & 0x400) != 0.
  The `beql` branch at 0xdaa0380 targets 0xdaa039c, is taken when t8(=entry(0x21dd8)) == 0, and falls through when t8(=entry(0x21dd8)) != 0; its branch-likely delay slot `addiu v1,zero,2` at 0xdaa0384 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdaa0390 targets 0xdaa03a0, is taken when (t7(?) & 0x4) != 0, and falls through when (t7(?) & 0x4) == 0; its branch-likely delay slot `lw t9,80(sp)` at 0xdaa0394 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdaa03d4 targets 0xdaa03f4, is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0.
  The `beq` branch at 0xdaa03ec targets 0xdaa042c and is always taken.
  The `bne` branch at 0xdaa0410 targets 0xdaa042c, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0.
  The return at 0xdaa0434 has v0 = one of ret(__glSetError), ret(ImageCalcDmaFieldOffsets), ret(__glOdysseyClosePMObjReference).
  The instructions from 0xda9fc50 to 0xda9fc50 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdaa00d8 to 0xdaa00d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdaa0100 to 0xdaa0100 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdaa0128 to 0xdaa0128 are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb19c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb19c-0xdacb220 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xdacb1b8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdacb1c0 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xdacb1d4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb1ec calls __glim_LoadMatrixf [0xdb83b8c] with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb204 calls dirtyMatrix [0xdacad90] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdacb1c4 targets 0xdacb1e4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdacb1dc targets 0xdacb210 and is always taken.
  The return at 0xdacb218 has v0 = one of ret(__glSetError), ret(dirtyMatrix).
- `__glOdyim_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacb220 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacb220-0xdacb300 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xdacb23c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdacb244 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdacb288 loads 4 bytes from ?.
  The `ldc1` at 0xdacb298 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sdc1` at 0xdacb2a4 stores 8 bytes to table(0x16690) +0x0.
  The `ldc1` at 0xdacb2a8 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sdc1` at 0xdacb2b4 stores 8 bytes to table(0x16698) +0x0.
  The `ldc1` at 0xdacb2b8 loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sdc1` at 0xdacb2c4 stores 8 bytes to table(0x166a0) +0x0.
  The `ldc1` at 0xdacb2c8 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sdc1` at 0xdacb2d4 stores 8 bytes to table(0x166a8) +0x0.
  The `jalr` at 0xdacb258 calls __glSetError [0xdb1ac34] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb274 calls __glim_LoadMatrixd [0xdb83c7c] with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacb2e4 calls dirtyMatrix [0xdacad90] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdacb248 targets 0xdacb268, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdacb260 targets 0xdacb2f0 and is always taken.
  The `bne` branch at 0xdacb290 targets 0xdacb2d8, is taken when t7(?) != at(=0x1701), and falls through when t7(?) == at(=0x1701).
  The return at 0xdacb2f8 has v0 = one of ret(__glSetError), ret(dirtyMatrix).
- `__glOdysseyEyeToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbd30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbd30-0xdacbde0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xdacbd3c loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xdacbd54 loads 8 bytes from [0x1010] +0x16698.
  The `ldc1` at 0xdacbd5c loads 8 bytes from [0x1010] +0x166a8.
  The `ldc1` at 0xdacbd64 loads 8 bytes from [0x1010] +0x16690.
  The `ldc1` at 0xdacbd74 loads 8 bytes from [0x1010] +0x166a0.
  The `bc1tl` branch at 0xdacbd90 targets 0xdacbdac, is taken when f6 == f22 (c.eq.d at 0xdacbd88), and falls through when not (f6 == f22 (c.eq.d at 0xdacbd88)); its branch-likely delay slot `mul.d $f6,$f4,$f18` at 0xdacbd94 runs only when taken and is annulled on fall-through.
  The return at 0xdacbdd8 has v0 = [0x1010].
- `__glOdysseyNormalizedEyeToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdacbde0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdacbde0-0xdacbebc (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdacbdec loads 4 bytes from abs 0x1010.
  The `lbu` at 0xdacbe08 loads 1 byte from [0x1010] +0x166b8.
  The `ldc1` at 0xdacbe10 loads 8 bytes from [0x1010] +0x16660.
  2 such `ldc1` accesses load 8 bytes from ?, including `ldc1` at 0xdacbe30, `ldc1` at 0xdacbe34.
  The `jalr` at 0xdacbe20 calls __glOdysseyUpdateTransform [0xdac9830] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdacbe50 calls __glOdysseyEyeToWindowZ [0xdacbd30] with a0=?, a1=?, a2=?, a3=?.
  The `beql` branch at 0xdacbe0c targets 0xdacbe34, is taken when t6(=[[0x1010]+91832]:1) == 0, and falls through when t6(=[[0x1010]+91832]:1) != 0; its branch-likely delay slot `ldc1 $f0,26208(v0)` at 0xdacbe10 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdacbe78 targets 0xdacbe90, is taken when not (f2 < f4 (c.lt.d at 0xdacbe68)), and falls through when f2 < f4 (c.lt.d at 0xdacbe68); its branch-likely delay slot `mtc1 at,$f9` at 0xdacbe7c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdacbe84 targets 0xdacbeb4 and is always taken.
  The `bc1fl` branch at 0xdacbea0 targets 0xdacbeb4, is taken when not (f8 < f2 (c.lt.d at 0xdacbe98)), and falls through when f8 < f2 (c.lt.d at 0xdacbe98); its branch-likely delay slot `mov.s $f0,$f12` at 0xdacbea4 runs only when taken and is annulled on fall-through.
  The return at 0xdacbeb4 has v0 = ret(__glOdysseyEyeToWindowZ).
  The instructions from 0xdacbe8c to 0xdacbe8c are not reached by any path from the entry, and their branches are not listed.
- `__glDoBlendMax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb122ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb122ac-0xdb1232c (128 bytes).
  It occupies 128 bytes.
  The `lwc1` at 0xdb122b4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwc1` at 0xdb122b8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdb122c8, `lwc1` at 0xdb122d0.
  The `swc1` at 0xdb122cc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0xdb122d4 loads 4 bytes from a3 (arg3 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdb122e4, `lwc1` at 0xdb122ec.
  The `swc1` at 0xdb122e8 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0xdb122f0 loads 4 bytes from a3 (arg3 at entry) +0x8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xdb12300, `lwc1` at 0xdb12308.
  The `swc1` at 0xdb12304 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb1230c loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0xdb12320 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1fl` branch at 0xdb122c4 targets 0xdb122d4, is taken when not (f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xdb122bc)), and falls through when f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xdb122bc); its branch-likely delay slot `lwc1 $f0,4(a2)` at 0xdb122c8 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdb122e0 targets 0xdb122f0, is taken when not (f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xdb122d8)), and falls through when f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xdb122d8); its branch-likely delay slot `lwc1 $f0,8(a2)` at 0xdb122e4 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdb122fc targets 0xdb1230c, is taken when not (f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xdb122f4)), and falls through when f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xdb122f4); its branch-likely delay slot `lwc1 $f0,12(a2)` at 0xdb12300 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xdb12318 targets 0xdb12324, is taken when not (f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xdb12310)), and falls through when f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xdb12310).
  The return at 0xdb12324 has v0 = ?.
- `__glFindWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1afdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1afdc-0xdb1b0b8 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdb1b004 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1b01c loads 4 bytes from a0 (arg0 at entry) +0xe6c.
  The `lw` at 0xdb1b030 loads 4 bytes from a0 (arg0 at entry) +0xe70.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0xdb1b038, `lw` at 0xdb1b054.
  The `lw` at 0xdb1b06c loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xdb1b080 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `jalr` at 0xdb1b010 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-4, a2=sp-8, a3=sp-12.
  The `jalr` at 0xdb1b048 calls __glChangeWindowSize [0xdb1aeb8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb1b060 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-20, a2=sp-24, a3=?.
  The `jalr` at 0xdb1b098 calls __glChangeReadWindowSize [0xdb1afd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xdb1b028 targets 0xdb1b03c, is taken when t7(?) != t8(=[a0+3692]), and falls through when t7(?) == t8(=[a0+3692]).
  The `beql` branch at 0xdb1b034 targets 0xdb1b058, is taken when t0(?) == t1(=[a0+3696]), and falls through when t0(?) != t1(=[a0+3696]); its branch-likely delay slot `lw t9,72(s0)` at 0xdb1b038 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb1b078 targets 0xdb1b08c, is taken when t2(?) != t3(=[a0+3700]), and falls through when t2(?) == t3(=[a0+3700]).
  The `beql` branch at 0xdb1b084 targets 0xdb1b0a8, is taken when t4(?) == t5(=[a0+3704]), and falls through when t4(?) != t5(=[a0+3704]); its branch-likely delay slot `lw ra,36(sp)` at 0xdb1b088 runs only when taken and is annulled on fall-through.
  The return at 0xdb1b0b0 has v0 = one of ret(?), ret(__glChangeReadWindowSize).
- `SubdivRegCreaseEdge` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb56610 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb56610-0xdb5673c (300 bytes).
  It occupies 300 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb56654, `lwc1` at 0xdb56658, `lwc1` at 0xdb566b4.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdb56680, `swc1` at 0xdb566d8, `swc1` at 0xdb566f4.
  The `blez` branch at 0xdb56620 targets 0xdb56734, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xdb5662c targets 0xdb5668c, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xdb5667c targets 0xdb56654, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xdb56684 targets 0xdb56734, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xdb5672c targets 0xdb566b4, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xdb56734 has v0 = one of 0x0, ?.
- `SubdivIRRegCreaseEdge` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb5673c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb5673c-0xdb568d0 (404 bytes).
  It occupies 404 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb56798, `lwc1` at 0xdb5679c, `lwc1` at 0xdb56818.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdb567d0, `swc1` at 0xdb56848, `swc1` at 0xdb56870.
  The `blez` branch at 0xdb5674c targets 0xdb568c8, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xdb56758 targets 0xdb567d8, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0xdb567cc targets 0xdb56798, is taken when t2(?) != v0(?), and falls through when t2(?) == v0(?).
  The `beq` branch at 0xdb567d4 targets 0xdb568c8, is taken when v0(?) == a0, and falls through when v0(?) != a0.
  The `bne` branch at 0xdb568c0 targets 0xdb56818, is taken when t1(?) != t2(=((a0 << 0x2) + a1)), and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The return at 0xdb568c8 has v0 = one of 0x0, ?.
- `__glReCompute2DMatrix` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb85f74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb85f74-0xdb8601c (168 bytes).
  It occupies 168 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0xdb85f80, `lw` at 0xdb8600c.
  The `lwc1` at 0xdb85f90 loads 4 bytes from a0 (arg0 at entry) +0x6b8.
  The `lwc1` at 0xdb85f94 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdb85f98 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0xdb85fa4 stores 4 bytes to a0 (arg0 at entry) +0x738c.
  The `lwc1` at 0xdb85fa8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xdb85fb0 stores 4 bytes to a0 (arg0 at entry) +0x7390.
  The `lwc1` at 0xdb85fb4 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0xdb85fbc stores 4 bytes to a0 (arg0 at entry) +0x739c.
  The `lwc1` at 0xdb85fc0 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0xdb85fc4 loads 4 bytes from a0 (arg0 at entry) +0x6bc.
  The `swc1` at 0xdb85fcc stores 4 bytes to a0 (arg0 at entry) +0x73a0.
  The `lwc1` at 0xdb85fd0 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0xdb85fd4 stores 4 bytes to a0 (arg0 at entry) +0x73b4.
  The `lwc1` at 0xdb85fd8 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xdb85fe0 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `swc1` at 0xdb85fe8 stores 4 bytes to a0 (arg0 at entry) +0x73bc.
  The `lwc1` at 0xdb85fec loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `swc1` at 0xdb85ffc stores 4 bytes to a0 (arg0 at entry) +0x73c0.
  The `lwc1` at 0xdb86000 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `swc1` at 0xdb86004 stores 4 bytes to a0 (arg0 at entry) +0x73c8.
  The `swc1` at 0xdb86008 stores 4 bytes to a0 (arg0 at entry) +0x73c4.
  The `sw` at 0xdb86010 stores 4 bytes to a0 (arg0 at entry) +0x73cc.
  The `bne` branch at 0xdb85f88 targets 0xdb86014, is taken when t6(=[a1+64]) < 0x2 (unsigned), and falls through when t6(=[a1+64]) >= 0x2 (unsigned).
  The return at 0xdb86014 has v0 = ?.
- `__gllc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb91eb4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb91eb4-0xdb91f3c (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdb91ecc loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb91ef0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdb91edc calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb91f04 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `jalr` at 0xdb91f20 calls __glDlistAppendOp [0xdadad88] with a0=?, a1=?, a2=0xdb979f0, a3=?.
  The `beq` branch at 0xdb91ee4 targets 0xdb91f2c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb91f34 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb91f3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb91f3c-0xdb91fcc (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdb91f54 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb91f7c stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdb91f80 stores 1 byte to ret(__glDlistAllocOp2) +0xe.
  The `jalr` at 0xdb91f64 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb91f94 calls memcpy with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `jalr` at 0xdb91fb0 calls __glDlistAppendOp [0xdadad88] with a0=?, a1=?, a2=0xdb97a2c, a3=?.
  The `beq` branch at 0xdb91f6c targets 0xdb91fbc, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb91fc4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__glle_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb979f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb979f0-0xdb97a2c (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdb979fc loads 4 bytes from abs 0x12b4.
  The `jalr` at 0xdb97a0c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb97a24 has v0 = a0+64.
- `__glle_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb97a2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb97a2c-0xdb97a68 (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0xdb97a38 loads 4 bytes from abs 0x12b8.
  The `jalr` at 0xdb97a48 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb97a60 has v0 = a0+128.
- `__glsplc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9f13c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9f13c-0xdb9f19c (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xdb9f160 calls __glSPDlalloc [0xda5278c] with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb9f180 calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `beq` branch at 0xdb9f16c targets 0xdb9f18c, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9f194 has v0 = one of ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9f19c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9f19c-0xdb9f1fc (96 bytes).
  It occupies 96 bytes.
  The `jalr` at 0xdb9f1c0 calls __glSPDlalloc2 [0xda52988] with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb9f1e0 calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `beq` branch at 0xdb9f1cc targets 0xdb9f1ec, is taken when v0(=ret(__glSPDlalloc2)) == 0, and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The return at 0xdb9f1f4 has v0 = one of ret(__glSPDlalloc2), ret(memcpy).
- `glLoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba693c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba693c-0xdba6948 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba693c loads 4 bytes from abs 0x12b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6940).
- `glLoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6948 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6948-0xdba6954 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6948 loads 4 bytes from abs 0x12b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba694c).
- `__glXBindHWContextToWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd89d134 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd89d134-0xd89d408 (724 bytes).
  It occupies 724 bytes.
  The `lw` at 0xd89d160 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014, including `lw` at 0xd89d16c, `lw` at 0xd89d348.
  4 such `lw` accesses load 4 bytes from [a0+76] +0xcc, including `lw` at 0xd89d170, `lw` at 0xd89d1b4, `lw` at 0xd89d270.
  The `lw` at 0xd89d174 loads 4 bytes from [0x1014] +0x0.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe0, including `lw` at 0xd89d188, `lw` at 0xd89d25c, `lw` at 0xd89d298.
  3 such `sb` accesses store 1 byte to [a0+76] +0xf4, including `sb` at 0xd89d194, `sb` at 0xd89d244, `sb` at 0xd89d2f0.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xdc, including `lw` at 0xd89d198, `lw` at 0xd89d260, `lw` at 0xd89d300.
  5 such `lw` accesses load 4 bytes from [a0+76] +0xe8, including `lw` at 0xd89d1a4, `lw` at 0xd89d1d8, `lw` at 0xd89d1f0.
  The `lw` at 0xd89d1a8 loads 4 bytes from [[a0+76]+232] +0x2c.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x11c, including `lw` at 0xd89d1bc, `lw` at 0xd89d278.
  6 such `lw` accesses load 4 bytes from [a0+76] +0xe4, including `lw` at 0xd89d1cc, `lw` at 0xd89d1e4, `lw` at 0xd89d21c.
  2 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x24, including `lw` at 0xd89d1d0, `lw` at 0xd89d2a8.
  The `lw` at 0xd89d1dc loads 4 bytes from [[a0+76]+232] +0x24.
  4 such `lw` accesses load 4 bytes from [[a0+76]+228] +0x4, including `lw` at 0xd89d1e8, `lw` at 0xd89d224, `lw` at 0xd89d2b4.
  2 such `lw` accesses load 4 bytes from [[a0+76]+232] +0x4, including `lw` at 0xd89d1f4, `lw` at 0xd89d238.
  3 such `lw` accesses load 4 bytes from [a0+76] +0x24, including `lw` at 0xd89d20c, `lw` at 0xd89d2cc, `lw` at 0xd89d338.
  2 such `sw` accesses store 4 bytes to [[a0+76]+228] +0x4, including `sw` at 0xd89d24c, `sw` at 0xd89d2f8.
  The `sw` at 0xd89d258 stores 4 bytes to [[a0+76]+232] +0x4.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xec, including `sw` at 0xd89d264, `sw` at 0xd89d304.
  2 such `sw` accesses store 4 bytes to [a0+76] +0xf0, including `sw` at 0xd89d26c, `sw` at 0xd89d308.
  2 such `lw` accesses load 4 bytes from [a0+76] +0x120, including `lw` at 0xd89d288, `lw` at 0xd89d388.
  The `sw` at 0xd89d350 stores 4 bytes to [0x1014] +0x0.
  The `lw` at 0xd89d35c loads 4 bytes from [a0+76] +0xf0.
  The `lw` at 0xd89d368 loads 4 bytes from [a0+76] +0xec.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xd89d3b4, `lw` at 0xd89d3d4, `lw` at 0xd89d3f0.
  The `jalr` at 0xd89d164 calls __glXHWAttach with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd89d208 calls (unnamed) [0xd89ccc8] with a0=[[a0+76]+36], a1=0x400, a2=sp-88, a3=[[a0+76]+220], a4=0xd89ccc8.
  The `bgezall` at 0xd89d2c8 calls (unnamed) [0xd89ccc8] with a0=[[a0+76]+36], a1=0x3eb, a2=sp-104, a3=[[a0+76]+220], a4=0xd89ccc8.
  The `bgezall` at 0xd89d334 calls (unnamed) [0xd89ccc8] with a0=[[a0+76]+36], a1=0x3ea, a2=sp-112, a3=?, a4=[[a0+76]+204].
  The `jalr` at 0xd89d3bc calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8cf818, a2=?, a3=?, a4=0xd89ccc8.
  The `jalr` at 0xd89d3dc calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8cf830, a2=?, a3=?.
  The `jalr` at 0xd89d3f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xd8cf848, a2=?, a3=?.
  The `bne` branch at 0xd89d178 targets 0xd89d324, is taken when at(=[[0x1014]]) != a4(=[[a0+76]+204]), and falls through when at(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `beq` branch at 0xd89d190 targets 0xd89d35c, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xd89d19c targets 0xd89d270, is taken when a2(=[[a0+76]+224]) == a3(=[[a0+76]+220]), and falls through when a2(=[[a0+76]+224]) != a3(=[[a0+76]+220]).
  The `beq` branch at 0xd89d1ac targets 0xd89d270, is taken when at(=[[[a0+76]+232]+44]) == v0(=0x3), and falls through when at(=[[[a0+76]+232]+44]) != v0(=0x3).
  The `beq` branch at 0xd89d1c4 targets 0xd89d388, is taken when v0(=[[a0+76]+284]) == s3(=0x1), and falls through when v0(=[[a0+76]+284]) != s3(=0x1).
  The `beq` branch at 0xd89d214 targets 0xd89d3ec, is taken when v0(=ret(0xd89ccc8)) == a1(=-0x1), and falls through when v0(=ret(0xd89ccc8)) != a1(=-0x1).
  The `bne` branch at 0xd89d228 targets 0xd89d244, is taken when at(=[[[a0+76]+228]+4]) != v0(?), and falls through when at(=[[[a0+76]+228]+4]) == v0(?).
  The `beq` branch at 0xd89d23c targets 0xd89d25c, is taken when v1(=[[[a0+76]+232]+4]) == a1(?), and falls through when v1(=[[[a0+76]+232]+4]) != a1(?).
  The `beq` branch at 0xd89d268 targets 0xd89d30c and is always taken.
  The `beq` branch at 0xd89d280 targets 0xd89d2a4, is taken when at(=[[a0+76]+284]) >= 0x2 (signed), and falls through when at(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` branch at 0xd89d290 targets 0xd89d2a4, is taken when v1(=[[a0+76]+288]) >= 0x3 (signed), and falls through when v1(=[[a0+76]+288]) < 0x3 (signed).
  The `beq` branch at 0xd89d29c targets 0xd89d2b0 and is always taken.
  The `beq` branch at 0xd89d2d4 targets 0xd89d3d0, is taken when v0(=ret(0xd89ccc8)) == v1(=-0x1), and falls through when v0(=ret(0xd89ccc8)) != v1(=-0x1).
  The `beq` branch at 0xd89d2e8 targets 0xd89d2fc, is taken when a1(=[[[a0+76]+228]+4]) == at(?), and falls through when a1(=[[[a0+76]+228]+4]) != at(?).
  The `bltz` branch at 0xd89d340 targets 0xd89d3ac, is taken when v0(=ret(0xd89ccc8)) < 0 (signed), and falls through when v0(=ret(0xd89ccc8)) >= 0 (signed).
  The `beq` branch at 0xd89d354 targets 0xd89d188 and is always taken.
  The `bne` branch at 0xd89d360 targets 0xd89d19c, is taken when v1(=[[a0+76]+240]) != a2(=[[a0+76]+224]), and falls through when v1(=[[a0+76]+240]) == a2(=[[a0+76]+224]).
  The `bne` branch at 0xd89d36c targets 0xd89d19c, is taken when a1(=[[a0+76]+236]) != a3(=[[a0+76]+220]), and falls through when a1(=[[a0+76]+236]) == a3(=[[a0+76]+220]).
  The `beq` branch at 0xd89d390 targets 0xd89d1cc, is taken when at(=[[a0+76]+288]) >= 0x3 (signed), and falls through when at(=[[a0+76]+288]) < 0x3 (signed).
  The `beq` branch at 0xd89d3a4 targets 0xd89d1e4 and is always taken.
  The `beq` branch at 0xd89d3c8 targets 0xd89d354 and is always taken.
  The `beq` branch at 0xd89d3e4 targets 0xd89d310 and is always taken.
  The `beq` branch at 0xd89d400 targets 0xd89d310 and is always taken.
  The return at 0xd89d31c has v0 = one of ?, ret(?).
  The return at 0xd89d380 has v0 = 0x3.
- `__glx_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8a855c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8a855c-0xd8a85f0 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd8a856c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8a857c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8a8584 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8a859c stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8a85a8 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd8a85ac loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8a85b4 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8a85a4 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3).
  The `jalr` at 0xd8a85e0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=?.
  The `bne` branch at 0xd8a85c0 targets 0xd8a85d8, is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `beq` branch at 0xd8a85e8 targets 0xd8a85c8 and is always taken.
  The return at 0xd8a85d0 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `__glx_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8a85f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8a85f0-0xd8a8684 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xd8a8600 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8a8610 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8a8618 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8a8630 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sh` at 0xd8a863c stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `lw` at 0xd8a8640 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8a8648 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8a8638 calls memcpy with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3).
  The `jalr` at 0xd8a8674 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=?.
  The `bne` branch at 0xd8a8654 targets 0xd8a866c, is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `beq` branch at 0xd8a867c targets 0xd8a865c and is always taken.
  The return at 0xd8a8664 has v0 = one of ret(memcpy), ret(__glXFlushRenderBuffer).
- `glXCreateWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca6dc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca6dc-0xd8ca828 (332 bytes).
  It occupies 332 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ca724, `lw` at 0xd8ca7c0.
  The `lw` at 0xd8ca730 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ca73c, `lw` at 0xd8ca770, `lw` at 0xd8ca814.
  The `lw` at 0xd8ca740 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8ca754 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8ca75c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8ca764, `sb` at 0xd8ca788.
  The `lw` at 0xd8ca76c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca778 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca780 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8ca784 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8ca78c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8ca790 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8ca798 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8ca79c stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8ca7a0 stores 4 bytes to [a0+108] +0x8.
  The `lw` at 0xd8ca7a4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8ca7b8, `sw` at 0xd8ca7bc.
  The `lw` at 0xd8ca7cc loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8ca7d8 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8ca704 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ca734 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd8ca7ac calls (unknown callee) with a0=a0 at entry (arg0), a1=[a1+36], a2=0x1f, a3=?, a4=[a0+96]+1, a5=[a0+108]+24, a6=0x6.
  The `jalr` at 0xd8ca7d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232].
  The `jalr` at 0xd8ca7e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ca808 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8ca71c targets 0xd8ca818, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8ca728 targets 0xd8ca73c, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `bne` branch at 0xd8ca74c targets 0xd8ca804, is taken when a4(=[a0+112]) < at(=[a0+108]+24) (unsigned), and falls through when a4(=[a0+112]) >= at(=[a0+108]+24) (unsigned).
  The `beq` branch at 0xd8ca7c4 targets 0xd8ca7d8, is taken when a5(=[a0+1232]) == 0, and falls through when a5(=[a0+1232]) != 0.
  The `beq` branch at 0xd8ca7dc targets 0xd8ca7f0, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8ca810 targets 0xd8ca750 and is always taken.
  The return at 0xd8ca7fc has v0 = ?.
  The return at 0xd8ca820 has v0 = 0x0.
- `glXDestroyWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ca828 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ca828-0xd8ca938 (272 bytes).
  It occupies 272 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ca868, `lw` at 0xd8ca8d4.
  The `lw` at 0xd8ca874 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ca880, `lw` at 0xd8ca8b4, `lw` at 0xd8ca924.
  The `lw` at 0xd8ca884 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8ca898 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8ca8a0, `sb` at 0xd8ca8d0.
  The `sh` at 0xd8ca8a8 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8ca8b0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca8bc stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8ca8c4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8ca8c8 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8ca8cc stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8ca8e0 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8ca8ec loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8ca84c calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ca878 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232].
  The `jalr` at 0xd8ca8e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=0x20, a3=[a0+1232].
  The `jalr` at 0xd8ca8f8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ca918 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8ca860 targets 0xd8ca928, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8ca86c targets 0xd8ca880, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `bne` branch at 0xd8ca890 targets 0xd8ca914, is taken when at(=[a0+112]) < v0(=[a0+108]+8) (unsigned), and falls through when at(=[a0+112]) >= v0(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd8ca8d8 targets 0xd8ca8ec, is taken when a3(=[a0+1232]) == 0, and falls through when a3(=[a0+1232]) != 0.
  The `beq` branch at 0xd8ca8f0 targets 0xd8ca904, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8ca920 targets 0xd8ca894 and is always taken.
  The return at 0xd8ca90c has v0 = one of ?, ret(?).
  The return at 0xd8ca930 has v0 = ret(__glXSetupForCommand).
- `glXBindChannelToWindowSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb27c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cb27c-0xd8cb3b8 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0xd8cb2a0 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8cb2bc loads 4 bytes from [0x1014] +0x114.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xd8cb354, `sb` at 0xd8cb38c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8cb364, `lw` at 0xd8cb368, `lw` at 0xd8cb36c.
  The `jalr` at 0xd8cb2c4 calls __glXInitialize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xd8cb2f0 calls (unnamed) [0xd8cb0ec] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize).
  The `jalr` at 0xd8cb320 calls XSGIvcSetPlatformParameter with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-112, a5=0x4.
  The `jalr` at 0xd8cb338 calls XSync with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0xd8cb374 calls (unknown callee) with a0=?, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0xd8cb2d4 targets 0xd8cb398, is taken when v0(=ret(__glXInitialize)) == 0, and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` branch at 0xd8cb2f8 targets 0xd8cb398, is taken when v0(=ret(0xd8cb0ec)) == 0, and falls through when v0(=ret(0xd8cb0ec)) != 0.
  The `beq` branch at 0xd8cb358 targets 0xd8cb38c, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `bne` branch at 0xd8cb384 targets 0xd8cb394, is taken when at(=a3) != 0, and falls through when at(=a3) == 0.
  The return at 0xd8cb3b0 has v0 = one of 0x0, 0x1.
- `__glOdysplc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61c80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda61c80-0xda61cc4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda61c90 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda61cb0 stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda61cac calls __glsplc_LoadMatrixf [0xdb98790] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda61cbc has v0 = ret(__glsplc_LoadMatrixf).
- `__glOdysplc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda61cd0-0xda61d14 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda61ce0 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda61d00 stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda61cfc calls __glsplc_LoadMatrixd [0xdb98800] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda61d0c has v0 = ret(__glsplc_LoadMatrixd).
- `__glOdySpanEyeZ24ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8c030 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8c030-0xda8c178 (328 bytes).
  It occupies 328 bytes.
  The `ldc1` at 0xda8c030 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0xda8c034 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda8c03c loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda8c048 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda8c058 loads 8 bytes from abs 0xdbde678.
  The `ldc1` at 0xda8c064 loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda8c070 loads 8 bytes from abs 0xdbde668.
  The `ldc1` at 0xda8c07c loads 8 bytes from [a1+500] +0x0.
  The `ldc1` at 0xda8c08c loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda8c098 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda8c0a8 loads 8 bytes from abs 0xdbde670.
  The `lwc1` at 0xda8c0ac loads 4 bytes from abs 0xdbde448.
  The `lwc1` at 0xda8c0b8 loads 4 bytes from abs 0xdbde444.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda8c0c0, `swc1` at 0xda8c16c.
  The `lw` at 0xda8c0d0 loads 4 bytes from ?.
  The `blez` branch at 0xda8c09c targets 0xda8c170, is taken when t8(=[a1+168]) <= 0 (signed), and falls through when t8(=[a1+168]) > 0 (signed).
  The `beq` branch at 0xda8c0b4 targets 0xda8c0d0 and is always taken.
  The `beq` branch at 0xda8c0c8 targets 0xda8c170, is taken when t8(=[a1+168]) == a5(?), and falls through when t8(=[a1+168]) != a5(?).
  The `bc1t` branch at 0xda8c130 targets 0xda8c0c0, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xda8c150 targets 0xda8c164, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `beq` branch at 0xda8c168 targets 0xda8c0c8 and is always taken.
  The return at 0xda8c170 has v0 = one of [a1+500], ?.
  The instructions from 0xda8c0bc to 0xda8c0bc are not reached by any path from the entry, and their branches are not listed.
- `__glOdySpanEyeZ16ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8c180 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8c180-0xda8c2bc (316 bytes).
  It occupies 316 bytes.
  The `ldc1` at 0xda8c180 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0xda8c184 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda8c18c loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda8c194 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda8c19c loads 8 bytes from abs 0xdbde678.
  The `ldc1` at 0xda8c1a8 loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda8c1b4 loads 8 bytes from abs 0xdbde668.
  The `ldc1` at 0xda8c1c0 loads 8 bytes from [a1+500] +0x0.
  The `ldc1` at 0xda8c1d0 loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda8c1dc loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda8c1ec loads 8 bytes from abs 0xdbde670.
  The `lwc1` at 0xda8c1f0 loads 4 bytes from abs 0xdbde448.
  The `lwc1` at 0xda8c1f8 loads 4 bytes from abs 0xdbde444.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda8c200, `swc1` at 0xda8c2b0.
  The `lhu` at 0xda8c210 loads 2 bytes from ?.
  The `blez` branch at 0xda8c1e0 targets 0xda8c2b4, is taken when t2(=[a1+168]) <= 0 (signed), and falls through when t2(=[a1+168]) > 0 (signed).
  The `beq` branch at 0xda8c1f4 targets 0xda8c210 and is always taken.
  The `beq` branch at 0xda8c208 targets 0xda8c2b4, is taken when t2(=[a1+168]) == a5(?), and falls through when t2(=[a1+168]) != a5(?).
  The `bc1t` branch at 0xda8c274 targets 0xda8c200, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xda8c294 targets 0xda8c2a8, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `beq` branch at 0xda8c2ac targets 0xda8c208 and is always taken.
  The return at 0xda8c2b4 has v0 = one of [a1+500], ?.
  The instructions from 0xda8c1fc to 0xda8c1fc are not reached by any path from the entry, and their branches are not listed.
- `__glOdySpanWindowZToEyeZ24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8cbd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8cbd0-0xda8cd24 (340 bytes).
  It occupies 340 bytes.
  The `ldc1` at 0xda8cbd0 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0xda8cbd4 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda8cbd8 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda8cbdc loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda8cbe4 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda8cbec loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda8cbf4 loads 8 bytes from abs 0xdbde6b8.
  The `ldc1` at 0xda8cbf8 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda8cc00 loads 8 bytes from a1 (arg1 at entry) +0x1f8.
  The `ldc1` at 0xda8cc0c loads 8 bytes from [a1+500] +0x0.
  The `ldc1` at 0xda8cc18 loads 8 bytes from abs 0xdbde670.
  The `ldc1` at 0xda8cc38 loads 8 bytes from abs 0xdbde6e8.
  The `sw` at 0xda8cc88 stores 4 bytes to ?.
  The `lwc1` at 0xda8cc8c loads 4 bytes from ?.
  The `lwc1` at 0xda8ccac loads 4 bytes from a1 (arg1 at entry) +0x208.
  The `lbu` at 0xda8ccbc loads 1 byte from a1 (arg1 at entry) +0x212.
  The `lbu` at 0xda8ccd4 loads 1 byte from a1 (arg1 at entry) +0x213.
  The `lwc1` at 0xda8ccec loads 4 bytes from a1 (arg1 at entry) +0x20c.
  The `blez` branch at 0xda8cc20 targets 0xda8cd1c, is taken when t8(=[a1+168]) <= 0 (signed), and falls through when t8(=[a1+168]) > 0 (signed).
  The `beq` branch at 0xda8cc3c targets 0xda8cc8c and is always taken.
  The `bltz` branch at 0xda8cc70 targets 0xda8cd14, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `beq` branch at 0xda8cc84 targets 0xda8cd1c, is taken when t8(=[a1+168]) == a5(?), and falls through when t8(=[a1+168]) != a5(?).
  The `bc1f` branch at 0xda8cca4 targets 0xda8ccb8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xda8ccb0 targets 0xda8cc54 and is always taken.
  The `beq` branch at 0xda8ccc0 targets 0xda8ccd4, is taken when v0(=[a1+530]:1) == 0, and falls through when v0(=[a1+530]:1) != 0.
  The `bc1t` branch at 0xda8cccc targets 0xda8ccec, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `beq` branch at 0xda8ccd8 targets 0xda8ccf8, is taken when v1(=[a1+531]:1) == 0, and falls through when v1(=[a1+531]:1) != 0.
  The `bc1f` branch at 0xda8cce4 targets 0xda8ccf8, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xda8ccf0 targets 0xda8cc54 and is always taken.
  The `bc1f` branch at 0xda8cd04 targets 0xda8cc44, is taken when not (f4 < f7(=0x0) (c.lt.d at 0xda8cd00)), and falls through when f4 < f7(=0x0) (c.lt.d at 0xda8cd00).
  The `beq` branch at 0xda8cd0c targets 0xda8cc4c and is always taken.
  The `beq` branch at 0xda8cd14 targets 0xda8cc84 and is always taken.
  The return at 0xda8cd1c has v0 = one of [a1+500], ?.
- `__glOdysseyImageMovePixelsDMAtoHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9f970 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9f970-0xdaa0180 (2064 bytes).
  It occupies 2064 bytes.
  The `lw` at 0xda9f9c0 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda9f9d8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda9f9e8 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9f9f0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xda9f9f8, `lw` at 0xda9fb60.
  The `lwc1` at 0xda9f9fc loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9fa10 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9fa20 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9fa30 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0xda9fa48 loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xda9fa68, `lbu` at 0xda9fc20.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9fa7c, `lw` at 0xda9fb2c, `lw` at 0xda9fb54.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xda9fa88, `lw` at 0xda9fae8, `lw` at 0xda9fb34.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9fa98, `lbu` at 0xda9fd0c.
  The `lw` at 0xda9faa8 loads 4 bytes from [0x1010] +0x4d4.
  The `lw` at 0xda9fb0c loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xda9fb18 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0xda9fb24 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda9fb28 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda9fb6c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xda9fb8c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9fb90 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda9fc88 loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xda9fc94, `lw` at 0xda9fcd4, `lw` at 0xda9fff8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9fcb0, `lw` at 0xdaa0004, `lw` at 0xdaa0028.
  The `lw` at 0xda9fcf8 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xda9fd04 loads 4 bytes from (([a1+16] << 0x2) + sp-288) +0x0.
  The `lw` at 0xda9fdd0 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xda9feb0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xda9ff94 loads 4 bytes from [0x1010] +0x7a90.
  The `lw` at 0xda9ffb8 loads 4 bytes from [0x1010] +0x21dd8.
  The `lw` at 0xda9ffc4 loads 4 bytes from [0x1010] +0x718.
  The `lw` at 0xdaa007c loads 4 bytes from [0x1010] +0x488.
  The `jalr` at 0xda9f9bc calls memset with a0=sp-344, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9f9d0 calls memset with a0=sp-312, a1=0x0, a2=0x14, a3=?.
  The `bgezall` at 0xda9fa84 calls __glOdysseyImageCalcXferReadParams [0xdaa3170] with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-312.
  The `bgezall` at 0xda9fb14 calls (unnamed) [0xdaa2ab0] with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=one of 0x0, 0x1, a4=sp-352, a5=sp-348, a6=0x1902.
  The `jalr` at 0xda9fb3c calls __glSpecElementsPerGroup [0xdaf13d0] with a0=[a0+8], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0xda9fb50 calls __glSpecBytesPerElement [0xdaf15a0] with a0=[a0+12], a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fbd0 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fcc0 calls __glOdysseyOpenPMObjReference [0xdaaa8c0] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16], a4=sp-288, a5=0x0.
  The `bgezall` at 0xda9ff28 calls (unnamed) [0xdaa3150] with a0=?, a1=?, a2=?, a3=?, a4=[a1+9]:1, a5=0xfffffffff0ffffff.
  The `jalr` at 0xdaa0008 calls __glOdysseyReadFromPMObj [0xdaaa4f0] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=?, a5=one of 0x0, 0x2, a6=0x0, a7=sp-344.
  The `jalr` at 0xdaa002c calls __glOdysseyClosePMObjReference [0xdaaaf20] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xdaa00c8 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa00f0 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa011c calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=0x405, a3=?.
  The `jalr` at 0xdaa0158 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda9fa90 targets 0xdaa0118, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9faa0 targets 0xdaa0070, is taken when v1(=[a1+9]:1) == 0, and falls through when v1(=[a1+9]:1) != 0.
  The `beq` branch at 0xda9fab0 targets 0xda9facc, is taken when v0(=[[0x1010]+1236]) == a2(=0x405), and falls through when v0(=[[0x1010]+1236]) != a2(=0x405).
  The `beq` branch at 0xda9fabc targets 0xda9facc, is taken when v0(=[[0x1010]+1236]) == a4(=0x402), and falls through when v0(=[[0x1010]+1236]) != a4(=0x402).
  The `bne` branch at 0xda9fac4 targets 0xda9fad0, is taken when v0(=[[0x1010]+1236]) != a6(=0x403), and falls through when v0(=[[0x1010]+1236]) == a6(=0x403).
  The `beq` branch at 0xda9fad0 targets 0xdaa0060, is taken when v0(=[[0x1010]+1236]) == at(=0x407), and falls through when v0(=[[0x1010]+1236]) != at(=0x407).
  The `beq` branch at 0xda9fad8 targets 0xdaa0060, is taken when v0(=[[0x1010]+1236]) == v1(=0x401), and falls through when v0(=[[0x1010]+1236]) != v1(=0x401).
  The `beq` branch at 0xda9fae0 targets 0xdaa0060, is taken when v0(=[[0x1010]+1236]) == a4(=0x403), and falls through when v0(=[[0x1010]+1236]) != a4(=0x403).
  The `beq` branch at 0xda9faf0 targets 0xdaa0068, is taken when v0(=[a0+8]) == a6(=0x1902), and falls through when v0(=[a0+8]) != a6(=0x1902).
  The `beq` branch at 0xda9faf8 targets 0xdaa0068, is taken when v0(=[a0+8]) == at(=0x1901), and falls through when v0(=[a0+8]) != at(=0x1901).
  The `beq` branch at 0xda9fb1c targets 0xdaa00a0, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9fb80 targets 0xda9fb90, is taken when a0(=[a0+24]) >= s4(?) (unsigned), and falls through when a0(=[a0+24]) < s4(?) (unsigned).
  The `beq` branch at 0xda9fc38 targets 0xdaa007c, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0xda9fccc targets 0xdaa0144, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xda9ffa4 targets 0xda9ffdc, is taken when (a4(=[[0x1010]+31376]) & 0x400) == 0, and falls through when (a4(=[[0x1010]+31376]) & 0x400) != 0.
  The `beq` branch at 0xda9ffbc targets 0xda9ffe0, is taken when a4(=[[0x1010]+138712]) == 0, and falls through when a4(=[[0x1010]+138712]) != 0.
  The `beq` branch at 0xda9ffcc targets 0xda9ffe0, is taken when (a6(=[[0x1010]+1816]) & 0x4) == 0, and falls through when (a6(=[[0x1010]+1816]) & 0x4) != 0.
  The `beq` branch at 0xda9ffd4 targets 0xda9ffe0 and is always taken.
  The `beq` branch at 0xdaa0014 targets 0xdaa00c4, is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0.
  The `beq` branch at 0xdaa0038 targets 0xdaa00f0, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xdaa0060 targets 0xda9fae8 and is always taken.
  The `beq` branch at 0xdaa0068 targets 0xda9fb00 and is always taken.
  The `beq` branch at 0xdaa0074 targets 0xda9fae8 and is always taken.
  The `beq` branch at 0xdaa0098 targets 0xda9fc40 and is always taken.
  The return at 0xdaa0058 has v0 = ?.
  The return at 0xdaa00bc has v0 = ret(0xdaa2ab0).
  The return at 0xdaa00e8 has v0 = ret(__glSetError).
  The return at 0xdaa0110 has v0 = ret(__glSetError).
  The return at 0xdaa013c has v0 = ret(__glSetError).
  The return at 0xdaa0178 has v0 = ret(__glSetError).
- `__glOdyim_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac7150 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac7150-0xdac71c4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac7150 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac7158 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xdac7180 calls __glim_LoadMatrixf [0xdb7b340] with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdac7190 calls (unnamed) [0xdac6dd0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdac71ac calls __glSetError [0xdb11f10] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac7174 targets 0xdac71a8, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xdac71a0 has v0 = ret(0xdac6dd0).
  The return at 0xdac71bc has v0 = ret(__glSetError).
- `__glOdyim_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac71d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac71d0-0xdac7294 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xdac71dc loads 4 bytes from abs 0x1018.
  The `lw` at 0xdac71f8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac7210 loads 4 bytes from [0x1010] +0x6d0.
  The `ldc1` at 0xdac7244 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sdc1` at 0xdac7250 stores 8 bytes to [0x1010] +0x16690.
  The `ldc1` at 0xdac7254 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sdc1` at 0xdac7258 stores 8 bytes to [0x1010] +0x16698.
  The `ldc1` at 0xdac725c loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sdc1` at 0xdac7260 stores 8 bytes to [0x1010] +0x166a0.
  The `ldc1` at 0xdac7264 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sdc1` at 0xdac726c stores 8 bytes to [0x1010] +0x166a8.
  The `jalr` at 0xdac7208 calls __glim_LoadMatrixd [0xdb7b430] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdac7224 calls (unnamed) [0xdac6dd0] with a0=[0x1010], a1=[[0x1010]+1744], a2=?, a3=?.
  The `jalr` at 0xdac7274 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac71fc targets 0xdac7270, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdac7218 targets 0xdac7244, is taken when a1(=[[0x1010]+1744]) == at(=0x1701), and falls through when a1(=[[0x1010]+1744]) != at(=0x1701).
  The `beq` branch at 0xdac7268 targets 0xdac721c and is always taken.
  The return at 0xdac723c has v0 = ret(0xdac6dd0).
  The return at 0xdac728c has v0 = ret(__glSetError).
## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `odsy_usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already
documented for this binary/member); `usb_comp_update_tiles` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member);
`odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented
for this binary/member); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`
(already documented for this binary/member); `__glOdysseyFindWindowSize` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdysplc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glOdysplc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `__glOdysseyImageDescribeWindow` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdySpanEyeZ24ToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented
for this binary/member); `__glOdySpanEyeZ16ToWindowZ` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdySpanWindowZToEyeZ24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented
for this binary/member); `__glOdysseyImageMovePixelsDMAtoGfx` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdysseyImageMovePixelsDMAtoHost` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `ImageCalcDmaFieldOffsets` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`ImageToDmaHostPixelSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glOdyim_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `__glOdyim_LoadMatrixd` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdysseyWindowToEyeZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glOdysseyWindowToNormalizedEyeZ` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdysseyEyeToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glOdysseyNormalizedEyeToWindowZ` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `block_grow_region` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `grow_region` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `__glDoBlendMax` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glChangeWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glChangeReadWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `__glFindWindowSize` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`StoreGREATER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `StoreGREATER_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `StoreGEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `StoreGEQUAL_s` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`StoreGREATER_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `StoreGREATER_W_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `StoreGEQUAL_W` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL_W_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `SubdivRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `SubdivIRRegCreaseEdge` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glim_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `__glim_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `__glDoLoadMatrix` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glReCompute2DMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__gllc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `__gllc_LoadMatrixd` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glle_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `__glle_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `__glsplc_LoadMatrixf` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glsplc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glce_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `__glce_LoadMatrixd` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`glLoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `glLoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `__glXSendMakeCurrent` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` (hostfacts could not resolve the inventory routine);
`__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` (hostfacts could not
resolve the inventory routine); `__glOdysplc_LoadMatrixf` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glOdysplc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented
for this binary/member); `ImageCalcDmaFieldOffsets` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glOdyim_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for
this binary/member); `__glOdyim_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
(already documented for this binary/member); `__glOdysseyWindowToNormalizedEyeZ` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glOdysseyEyeToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented
for this binary/member); `__glOdysseyNormalizedEyeToWindowZ` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `block_grow_region` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `grow_region` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glDoBlendMax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `__glChangeWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `__glChangeReadWindowSize` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`StoreGREATER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `StoreGREATER_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `StoreGEQUAL` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `StoreGREATER_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `StoreGREATER_W_s` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `StoreGEQUAL_W_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `__glReCompute2DMatrix` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__gllc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for
this binary/member); `__gllc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
(already documented for this binary/member); `__glle_LoadMatrixf` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glle_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for
this binary/member); `__glsplc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
(already documented for this binary/member); `__glsplc_LoadMatrixd` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glce_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for
this binary/member); `__glce_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`
(already documented for this binary/member); `glLoadMatrixf` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`glLoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `__glXSendMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` (already
documented for this binary/member); `__glXSendMakeCurrentRead` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` (already documented for this binary/member);
`__glOdysseyFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented
for this binary/member); `__glOdysseyImageDescribeWindow` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`__glOdysseyImageMovePixelsDMAtoGfx` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already
documented for this binary/member); `ImageCalcDmaFieldOffsets` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`ImageToDmaHostPixelSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented
for this binary/member); `__glOdysseyWindowToEyeZ` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`__glOdysseyWindowToNormalizedEyeZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already
documented for this binary/member); `SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`
(already documented for this binary/member); `block_grow_region` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`grow_region` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this
binary/member); `__glChangeWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already
documented for this binary/member); `__glChangeReadWindowSize` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`StoreGREATER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this
binary/member); `StoreGREATER_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already
documented for this binary/member); `StoreGEQUAL` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this
binary/member); `StoreGREATER_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already
documented for this binary/member); `StoreGREATER_W_s` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this
binary/member); `StoreGEQUAL_W_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already
documented for this binary/member); `__glDoLoadMatrix` in
`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` (already documented for this binary/member);
`__glXSendMakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` (already documented for this
binary/member); `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` (already
documented for this binary/member); `__glOdysseyImageDescribeWindow` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdySpanWindowZToEyeZ24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (hostfacts raised
a control-flow analysis error); `ImageCalcDmaFieldOffsets` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`ImageToDmaHostPixelSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented
for this binary/member); `__glOdysseyWindowToEyeZ` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `block_grow_region` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member); `grow_region` in
`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glChangeWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glChangeReadWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `StoreGREATER` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member); `StoreGREATER_s`
in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `StoreGEQUAL_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `StoreGREATER_W` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member); `StoreGREATER_W_s`
in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this
binary/member); `StoreGEQUAL_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already
documented for this binary/member); `__glim_LoadMatrixf` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for this binary/member);
`__glim_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (already documented for
this binary/member); `__glDoLoadMatrix` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`
(already documented for this binary/member); `__glce_LoadMatrixf` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (hostfacts produced no selected non-stack facts);
`__glce_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` (hostfacts produced no
selected non-stack facts); `__glXSendMakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`
(already documented for this binary/member); `__glXSendMakeCurrentRead` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` (already documented for this binary/member);
`ImageCalcDmaFieldOffsets` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `ImageToDmaHostPixelSize` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member); `SphereGen` in
`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `StoreGEQUAL_W_s` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member); `StoreGEQUAL_s`
in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`StoreGREATER` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this
binary/member); `StoreGREATER_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `StoreGREATER_W_s` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member); `StoreGREATER_s`
in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`SubdivIRRegCreaseEdge` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (hostfacts could not
resolve the inventory routine); `SubdivRegCreaseEdge` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (hostfacts could not resolve the inventory routine);
`block_grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for
this binary/member); `grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `__glOdysseyFindWindowSize` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glOdysseyImageDescribeWindow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already
documented for this binary/member); `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member);
`__glOdysseyWindowToEyeZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented
for this binary/member); `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-
patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` (already documented for this binary/member).
