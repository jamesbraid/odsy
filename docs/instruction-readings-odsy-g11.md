# Instruction readings from hostfacts

Each entry reports selected accesses through non-stack pointers, calls and their argument slots, conditional branches, and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `__glx_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e560, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e570).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81e580).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81e58c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e598).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e59c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e5b8).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81e5cc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81e5ac).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81e5dc).
  The `beq` at 0xd81e5c8 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `jr` at 0xd81e5f4 returns with v0 = ?.

- `__glx_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e5fc, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e60c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81e61c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81e628).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e634).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e638).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e654).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81e668).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81e648).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81e678).
  The `beq` at 0xd81e664 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `jr` at 0xd81e690 returns with v0 = ?.

- `__glXSendMakeCurrentRead` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824394, 2460 bytes) Inferred.
  Performs 5 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8243cc, `lw` at 0xd8244c8, `lw` at 0xd8245f4.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd8243dc).
  Performs 6 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8243f8, `lw` at 0xd8243fc, `lw` at 0xd824428.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x70, including `lw` at 0xd824400, `lw` at 0xd82453c.
  Performs 2 4-byte stores to a0 (arg0 at entry) +0x64, including `sw` at 0xd824430, `sw` at 0xd82456c.
  Performs 2 2-byte stores to [a0+108] +0x2, including `sh` at 0xd82443c, `sh` at 0xd824578.
  Performs 4 1-byte stores to [a0+108] +0x0, including `sb` at 0xd824440, `sb` at 0xd824474, `sb` at 0xd82457c.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x60, including `lw` at 0xd824444, `lw` at 0xd824580.
  Performs 2 4-byte stores to a0 (arg0 at entry) +0x6c, including `sw` at 0xd824458, `sw` at 0xd824594.
  Performs 2 4-byte stores to a0 (arg0 at entry) +0x60, including `sw` at 0xd82445c, `sw` at 0xd824598.
  Performs 2 1-byte stores to [a0+108] +0x1, including `sb` at 0xd82446c, `sb` at 0xd8245a0.
  Performs 2 4-byte stores to [a0+108] +0x4, including `sw` at 0xd824470, `sw` at 0xd8245b4.
  Performs 2 4-byte stores to [a0+108] +0x8, including `sw` at 0xd824484, `sw` at 0xd8245bc.
  Performs 2 4-byte stores to [a0+108] +0xc, including `sw` at 0xd824490, `sw` at 0xd8245c8.
  Performs 2 4-byte stores to [a0+108] +0x10, including `sw` at 0xd82449c, `sw` at 0xd8245d4.
  Performs 4 4-byte loads from a1 (arg1 at entry) +0x14, including `lw` at 0xd8244a4, `lw` at 0xd82451c, `lw` at 0xd8245d0.
  Stores 4 bytes from `v0` to [a0+108] +0x14 (`sw` at 0xd8244a8).
  Performs 6 4-byte loads from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8244d0, `lw` at 0xd8244e8, `lw` at 0xd8245fc.
  Performs 3 4-byte loads from [a0+1232] +0x4, including `lw` at 0xd8244d4, `lw` at 0xd824600, `lw` at 0xd824708.
  Performs 2 4-byte loads from a3 (arg3 at entry) +0x4, including `lw` at 0xd824534, `lw` at 0xd82465c.
  Loads 4 bytes from ? (base unknown) into `t6` (`lw` at 0xd8246a4).
  Performs 4 4-byte stores to ? (base unknown), including `sw` at 0xd8246b8, `sw` at 0xd8246cc, `sw` at 0xd8246e0.
  Loads 4 bytes from table(0x4) +0x0 into `t2` (`lw` at 0xd8246bc).
  Loads 4 bytes from table(0x8) +0x0 into `t4` (`lw` at 0xd8246d0).
  Loads 4 bytes from table(0xc) +0x0 into `t7` (`lw` at 0xd8246e4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8243c0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8243e4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd82441c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0 (`jalr` at 0xd8244b8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8244dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8244f8).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x11, a3=[a1+20] (`jalr` at 0xd824518).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd824558).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x0 (`jalr` at 0xd8245e4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd824608).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd824624).
  Calls `__glXPostHiddenError` via got with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x1a, a3=[a1+20] (`jalr` at 0xd824644).
  Calls `malloc` via got with a0=0x10, a1=?, a2=?, a3=? (`jalr` at 0xd824670).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=0x10, a3=? (`jalr` at 0xd824690).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8246f0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd824710).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd82472c).
  The `beql` at 0xd8243d4 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd8243f4 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beql` at 0xd82440c is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned) and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned).
  The `beq` at 0xd824498 is taken when t1(=a1) == 0 and falls through when t1(=a1) != 0.
  The `bne` at 0xd8244c0 is taken when v0(=ret(_XReply)) != 0 and falls through when v0(=ret(_XReply)) == 0.
  The `beql` at 0xd8244cc is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beq` at 0xd8244f0 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `beql` at 0xd824548 is taken when t8(=[a0+112]) >= t2(=[a0+108]+20) (unsigned) and falls through when t8(=[a0+112]) < t2(=[a0+108]+20) (unsigned).
  The `beq` at 0xd8245c4 is taken when t1(=a1) == 0 and falls through when t1(=a1) != 0.
  The `bne` at 0xd8245ec is taken when v0(=ret(_XReply)) != 0 and falls through when v0(=ret(_XReply)) == 0.
  The `beql` at 0xd8245f8 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beq` at 0xd82461c is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `beql` at 0xd824660 is taken when v0(=[a3+4]) == 0 and falls through when v0(=[a3+4]) != 0.
  The `beql` at 0xd824700 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd824724 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `jr` at 0xd824748 returns with v0 = one of 0x0, 0x1.

- `glXCreateWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd837a78, 408 bytes) Inferred.
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837ac8, `lw` at 0xd837ad4, `lw` at 0xd837af0.
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v1` (`lw` at 0xd837acc).
  Loads 4 bytes from a3 (arg3 at entry) +0x8 into `t6` (`lw` at 0xd837ae0).
  Loads 4 bytes from ? (base unknown) into `t6` (`lw` at 0xd837aec).
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837af8, `lw` at 0xd837b10, `lw` at 0xd837b3c.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd837afc).
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `t7` (`lw` at 0xd837b14).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x64 (`sw` at 0xd837b44).
  Stores 2 bytes from `t0` to [a0+108] +0x2 (`sh` at 0xd837b50).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd837b54, `sb` at 0xd837b7c.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `t3` (`lw` at 0xd837b58).
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x6c (`sw` at 0xd837b6c).
  Stores 4 bytes from `t4` to a0 (arg0 at entry) +0x60 (`sw` at 0xd837b70).
  Stores 1 byte from `a1` to [a0+108] +0x1 (`sb` at 0xd837b78).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `t6` (`lw` at 0xd837b80).
  Stores 4 bytes from `t6` to [a0+108] +0x4 (`sw` at 0xd837b84).
  Loads 4 bytes from a1 (arg1 at entry) +0x48 into `t9` (`lw` at 0xd837b88).
  Stores 4 bytes from `t9` to [a0+108] +0x8 (`sw` at 0xd837b8c).
  Stores 4 bytes from `t7` to [a0+108] +0xc (`sw` at 0xd837b94).
  Loads 4 bytes from a0 (arg0 at entry) +0x2c into `t9` (`lw` at 0xd837b9c).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0xd837bb4, `sw` at 0xd837bb8.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837bc4, `lw` at 0xd837bdc.
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd837bc8).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd837aa4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd837b04).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd837b30).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd837ba0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd837bd0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd837bec).
  The `bne` at 0xd837ab4 is taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beql` at 0xd837ac4 is taken when a3 == 0 and falls through when a3 != 0.
  The `beql` at 0xd837ad0 is taken when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `beq` at 0xd837ad8 is taken when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `bnel` at 0xd837ae8 is taken when t6(?) != 0 and falls through when t6(?) == 0.
  The `beql` at 0xd837af4 is taken when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd837b20 is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned) and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned).
  The `beql` at 0xd837bc0 is taken when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd837be4 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `jr` at 0xd837c08 returns with v0 = ?.

- `glXDestroyWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd837c10, 280 bytes) Inferred.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd837c48, `lw` at 0xd837cd8.
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd837c50, `lw` at 0xd837c68, `lw` at 0xd837c94.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd837c54).
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `t6` (`lw` at 0xd837c6c).
  Performs 2 4-byte stores to a0 (arg0 at entry) +0x64, including `sw` at 0xd837c7c, `sw` at 0xd837c98.
  Stores 2 bytes from `t8` to [a0+108] +0x2 (`sh` at 0xd837ca4).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd837ca8, `sb` at 0xd837ccc.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `t2` (`lw` at 0xd837cac).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x6c (`sw` at 0xd837cbc).
  Stores 4 bytes from `t3` to a0 (arg0 at entry) +0x60 (`sw` at 0xd837cc0).
  Stores 1 byte from `a1` to [a0+108] +0x1 (`sb` at 0xd837cc8).
  Stores 4 bytes from `t5` to [a0+108] +0x4 (`sw` at 0xd837cd4).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x7c, including `lw` at 0xd837ce0, `lw` at 0xd837cf8.
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd837ce4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd837c34).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd837c5c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd837c88).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=? (`jalr` at 0xd837cec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd837d08).
  The `beq` at 0xd837c40 is taken when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` at 0xd837c4c is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd837c78 is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned).
  The `beql` at 0xd837cdc is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd837d00 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `jr` at 0xd837d20 returns with v0 = ?.

- `glXBindChannelToWindowSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd839e08, 324 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd839e18).
  Loads 4 bytes from [0x1014] +0x114 into `t7` (`lw` at 0xd839e38).
  Performs 2 1-byte stores to ? (base unknown), including `sb` at 0xd839eec, `sb` at 0xd839f30.
  Performs 3 4-byte loads from ? (base unknown), including `lw` at 0xd839ef8, `lw` at 0xd839efc, `lw` at 0xd839f08.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd839e40).
  Calls `__glXInitChannelRectState [0xd839c70]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize) (`jalr` at 0xd839e68).
  Calls `XSGIvcSetPlatformParameter` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64 (`jalr` at 0xd839ea0).
  Calls `XSync` via got with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jalr` at 0xd839eb8).
  Calls `(unknown callee)` via register with a0=?, a1=0x1, a2=?, a3=? (`jalr` at 0xd839f10).
  The `beq` at 0xd839e4c is taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd839e70 is taken when v0(=ret(__glXInitChannelRectState)) == 0 and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` at 0xd839ee8 is taken when (t5(?) & 0xff) == 0 and falls through when (t5(?) & 0xff) != 0.
  The `beql` at 0xd839f00 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bnel` at 0xd839f28 is taken when t9(=a3) != 0 and falls through when t9(=a3) == 0.
  The `jr` at 0xd839f44 returns with v0 = ?.

- `__glXBindHWContextToWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd80e93c, 692 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `s0` (`lw` at 0xd80e968).
  Performs 2 4-byte loads from abs 0x1014, including `lw` at 0xd80e96c, `lw` at 0xd80eb58.
  Performs 3 4-byte loads from [a0+76] +0xcc, including `lw` at 0xd80e970, `lw` at 0xd80eb5c, `lw` at 0xd80eb6c.
  Loads 4 bytes from [0x1014] +0x0 into `v1` (`lw` at 0xd80e974).
  Performs 6 4-byte loads from [a0+76] +0xe0, including `lw` at 0xd80e980, `lw` at 0xd80ea64, `lw` at 0xd80ead8.
  Loads 4 bytes from [a0+76] +0xf0 into `a0` (`lw` at 0xd80e984).
  Performs 6 4-byte loads from [a0+76] +0xdc, including `lw` at 0xd80e988, `lw` at 0xd80ea68, `lw` at 0xd80eadc.
  Performs 4 1-byte stores to [a0+76] +0xf4, including `sb` at 0xd80e990, `sb` at 0xd80ea4c, `sb` at 0xd80eac8.
  Loads 4 bytes from [a0+76] +0xec into `a1` (`lw` at 0xd80e994).
  Performs 5 4-byte loads from [a0+76] +0xe8, including `lw` at 0xd80e9ac, `lw` at 0xd80e9e0, `lw` at 0xd80e9f8.
  Loads 4 bytes from [[a0+76]+232] +0x2c into `ra` (`lw` at 0xd80e9b0).
  Performs 2 4-byte loads from [a0+76] +0x11c, including `lw` at 0xd80e9c4, `lw` at 0xd80eb10.
  Performs 2 4-byte loads from [a0+76] +0x120, including `lw` at 0xd80e9c8, `lw` at 0xd80eb14.
  Performs 6 4-byte loads from [a0+76] +0xe4, including `lw` at 0xd80e9d4, `lw` at 0xd80e9ec, `lw` at 0xd80ea2c.
  Performs 2 4-byte loads from [[a0+76]+228] +0x24, including `lw` at 0xd80e9d8, `lw` at 0xd80ea84.
  Loads 4 bytes from [[a0+76]+232] +0x24 into `v0` (`lw` at 0xd80e9e4).
  Performs 4 4-byte loads from [[a0+76]+228] +0x4, including `lw` at 0xd80e9f0, `lw` at 0xd80ea30, `lw` at 0xd80ea90.
  Performs 2 4-byte loads from [[a0+76]+232] +0x4, including `lw` at 0xd80e9fc, `lw` at 0xd80ea40.
  Performs 3 4-byte loads from [a0+76] +0x24, including `lw` at 0xd80ea10, `lw` at 0xd80eaa4, `lw` at 0xd80eb4c.
  Performs 2 4-byte stores to [[a0+76]+228] +0x4, including `sw` at 0xd80ea54, `sw` at 0xd80ead0.
  Stores 4 bytes from `a6` to [[a0+76]+232] +0x4 (`sw` at 0xd80ea60).
  Performs 2 4-byte stores to [a0+76] +0xec, including `sw` at 0xd80ea6c, `sw` at 0xd80eae4.
  Performs 2 4-byte stores to [a0+76] +0xf0, including `sw` at 0xd80ea70, `sw` at 0xd80eae8.
  Stores 4 bytes from `ra` to [0x1014] +0x0 (`sw` at 0xd80eb60).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x14, including `lw` at 0xd80eb98, `lw` at 0xd80ebb8, `lw` at 0xd80ebd8.
  Calls `__glXHWAttach` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd80e964).
  Calls `(unknown callee)` via direct with a0=[[a0+76]+36], a1=0x400, a2=sp-56, a3=[[a0+76]+224], a4=[[a0+76]+204] (`bgezall` at 0xd80ea0c).
  Calls `(unknown callee)` via direct with a0=[[a0+76]+36], a1=0x3eb, a2=sp-72, a3=[[a0+76]+224], a4=[[a0+76]+204] (`bgezall` at 0xd80eaa0).
  Calls `(unknown callee)` via direct with a0=[[a0+76]+36], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+76]+204] (`bgezall` at 0xd80eb48).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8428c0, a2=?, a3=? (`jalr` at 0xd80eba0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8428f8, a2=0x1, a3=? (`jalr` at 0xd80ebc0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8428d8, a2=-0x1, a3=? (`jalr` at 0xd80ebe0).
  The `bne` at 0xd80e978 is taken when v1(=[[0x1014]]) != a4(=[[a0+76]+204]) and falls through when v1(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `bne` at 0xd80e98c is taken when a0(=[[a0+76]+240]) != a3(=[[a0+76]+224]) and falls through when a0(=[[a0+76]+240]) == a3(=[[a0+76]+224]).
  The `beq` at 0xd80e998 is taken when a1(=[[a0+76]+236]) == a2(=[[a0+76]+220]) and falls through when a1(=[[a0+76]+236]) != a2(=[[a0+76]+220]).
  The `beq` at 0xd80e9a4 is taken when a3(=[[a0+76]+224]) == a2(=[[a0+76]+220]) and falls through when a3(=[[a0+76]+224]) != a2(=[[a0+76]+220]).
  The `beq` at 0xd80e9b8 is taken when ra(=[[[a0+76]+232]+44]) == at(=0x3) and falls through when ra(=[[[a0+76]+232]+44]) != at(=0x3).
  The `beq` at 0xd80e9cc is taken when at(=[[a0+76]+284]) == a2(=0x1) and falls through when at(=[[a0+76]+284]) != a2(=0x1).
  The `beq` at 0xd80ea24 is taken when v0(=ret(0xd80e4c4)) == a2(=-0x1) and falls through when v0(=ret(0xd80e4c4)) != a2(=-0x1).
  The `bne` at 0xd80ea38 is taken when a3(=[[[a0+76]+228]+4]) != a4(?) and falls through when a3(=[[[a0+76]+228]+4]) == a4(?).
  The `beq` at 0xd80ea44 is taken when a5(=[[[a0+76]+232]+4]) == a6(?) and falls through when a5(=[[[a0+76]+232]+4]) != a6(?).
  The `beq` at 0xd80eaac is taken when v0(=ret(0xd80e4c4)) == at(=-0x1) and falls through when v0(=ret(0xd80e4c4)) != at(=-0x1).
  The `beq` at 0xd80eac0 is taken when v0(=[[[a0+76]+228]+4]) == v1(?) and falls through when v0(=[[[a0+76]+228]+4]) != v1(?).
  The `beq` at 0xd80eb1c is taken when a5(=[[a0+76]+284]) >= 0x2 (signed) and falls through when a5(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` at 0xd80eb24 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bltz` at 0xd80eb50 is taken when v0(=ret(0xd80e4c4)) < 0 (signed) and falls through when v0(=ret(0xd80e4c4)) >= 0 (signed).
  The `beq` at 0xd80eb78 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `jr` at 0xd80ea78 returns with v0 = ret(0xd80e4c4); f0 = ret(0xd80e4c4).
  The `jr` at 0xd80eaf0 returns with v0 = [[[a0+76]+228]+4]; f0 = ret(0xd80e4c4).
  The `jr` at 0xd80eb04 returns with v0 = ?.

- `__glx_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd819b38, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `s0` (`lw` at 0xd819b48).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd819b58).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s8` (`lw` at 0xd819b60).
  Stores 2 bytes from `v0` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd819b78).
  Stores 2 bytes from `at` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd819b84).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd819b88).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd819b98).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3) (`jalr` at 0xd819b80).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=? (`jalr` at 0xd819bb8).
  The `bne` at 0xd819b94 is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `jr` at 0xd819bac returns with v0 = ?.

- `__glx_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd819bc8, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `s0` (`lw` at 0xd819bd8).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd819be8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s8` (`lw` at 0xd819bf0).
  Stores 2 bytes from `v0` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd819c08).
  Stores 2 bytes from `at` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd819c14).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd819c18).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd819c28).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3) (`jalr` at 0xd819c10).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=? (`jalr` at 0xd819c48).
  The `bne` at 0xd819c24 is taken when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `jr` at 0xd819c3c returns with v0 = ?.

- `glXCreateWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83b8b4, 328 bytes) Inferred.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83b8f4, `lw` at 0xd83b994.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd83b900).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83b90c, `lw` at 0xd83b948, `lw` at 0xd83b9e4.
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `v1` (`lw` at 0xd83b910).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x64 (`sw` at 0xd83b930).
  Stores 2 bytes from `t0` to [a0+108] +0x2 (`sh` at 0xd83b938).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd83b940, `sb` at 0xd83b960.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `a6` (`lw` at 0xd83b944).
  Stores 4 bytes from `a6` to a0 (arg0 at entry) +0x60 (`sw` at 0xd83b950).
  Stores 4 bytes from `a7` to a0 (arg0 at entry) +0x6c (`sw` at 0xd83b958).
  Stores 1 byte from `a4` to [a0+108] +0x1 (`sb` at 0xd83b95c).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `a3` (`lw` at 0xd83b964).
  Stores 4 bytes from `a3` to [a0+108] +0x4 (`sw` at 0xd83b968).
  Loads 4 bytes from a1 (arg1 at entry) +0x48 into `a2` (`lw` at 0xd83b96c).
  Stores 4 bytes from `a1` to [a0+108] +0xc (`sw` at 0xd83b970).
  Stores 4 bytes from `a2` to [a0+108] +0x8 (`sw` at 0xd83b974).
  Loads 4 bytes from a0 (arg0 at entry) +0x2c into `t9` (`lw` at 0xd83b978).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0xd83b98c, `sw` at 0xd83b990.
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd83b9a0).
  Loads 4 bytes from a0 (arg0 at entry) +0x7c into `t9` (`lw` at 0xd83b9ac).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83b8e0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd83b904).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x1f, a6=[a0+96]+1, a7=[a0+108]+24 (`jalr` at 0xd83b980).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd83b9a4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83b9b8).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83b9d8).
  The `beq` at 0xd83b8ec is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd83b8f8 is taken when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `bne` at 0xd83b91c is taken when v1(=[a0+112]) < a0(=[a0+108]+24) (unsigned) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+24) (unsigned).
  The `beq` at 0xd83b998 is taken when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `beq` at 0xd83b9b0 is taken when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The `jr` at 0xd83b9d0 returns with v0 = ?; f0 = ret(?).
  The `jr` at 0xd83b9f4 returns with v0 = 0x0; f0 = ret(__glXSetupForCommand).

- `glXDestroyWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83b9fc, 252 bytes) Inferred.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd83ba38, `lw` at 0xd83baa8.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd83ba44).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd83ba50, `lw` at 0xd83ba88, `lw` at 0xd83baf4.
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `v0` (`lw` at 0xd83ba54).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x64 (`sw` at 0xd83ba70).
  Stores 2 bytes from `a6` to [a0+108] +0x2 (`sh` at 0xd83ba78).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd83ba80, `sb` at 0xd83baa4.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `a4` (`lw` at 0xd83ba84).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x60 (`sw` at 0xd83ba90).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x6c (`sw` at 0xd83ba98).
  Stores 4 bytes from `a1` to [a0+108] +0x4 (`sw` at 0xd83ba9c).
  Stores 1 byte from `a2` to [a0+108] +0x1 (`sb` at 0xd83baa0).
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd83bab4).
  Loads 4 bytes from a0 (arg0 at entry) +0x7c into `t9` (`lw` at 0xd83bac0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83ba24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232] (`jalr` at 0xd83ba48).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=[a0+1232], a4=[a0+96]+1, a5=[a0+108]+8, a6=0x2 (`jalr` at 0xd83bab8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83bacc).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83bae8).
  The `beq` at 0xd83ba30 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd83ba3c is taken when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `bne` at 0xd83ba60 is taken when v0(=[a0+112]) < v1(=[a0+108]+8) (unsigned) and falls through when v0(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` at 0xd83baac is taken when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `beq` at 0xd83bac4 is taken when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The `jr` at 0xd83bae0 returns with v0 = ?.

- `glXBindChannelToWindowSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83c52c, 352 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `at` (`lw` at 0xd83c548).
  Loads 4 bytes from [0x1014] +0x114 into `at` (`lw` at 0xd83c568).
  Stores 1 byte from `v1` to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x48 (`sb` at 0xd83c604).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0xd83c608, `lw` at 0xd83c60c.
  Loads 4 bytes from (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x44 into `a0` (`lw` at 0xd83c620).
  Stores 1 byte from `zero` to (ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3)) +0x49 (`sb` at 0xd83c688).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83c570).
  Calls `(unknown callee)` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize) (`bgezall` at 0xd83c594).
  Calls `XSGIvcSetPlatformParameter` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4 (`jalr` at 0xd83c5c0).
  Calls `XSync` via got with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jalr` at 0xd83c5d4).
  Calls `(unknown callee)` via register with a0=[(ret(__glXInitialize) + (((a2 << 0x2) + a2) << 0x3))+68], a1=0x1, a2=?, a3=? (`jalr` at 0xd83c61c).
  The `beq` at 0xd83c578 is taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd83c59c is taken when v0(=ret(0xd83c38c)) == 0 and falls through when v0(=ret(0xd83c38c)) != 0.
  The `beq` at 0xd83c600 is taken when a0(=a3) == 0 and falls through when a0(=a3) != 0.
  The `beq` at 0xd83c614 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  The `jr` at 0xd83c630 returns with v0 = one of 0x0, 0x1.
  The `jr` at 0xd83c654 returns with v0 = 0x0; f0 = ret(__glXInitialize).

- `__glFindWindowSize` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda35150, 212 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `t9` (`lw` at 0xda35164).
  Loads 4 bytes from a0 (arg0 at entry) +0xe74 into `v0` (`lw` at 0xda35190).
  Loads 4 bytes from a0 (arg0 at entry) +0xe78 into `v1` (`lw` at 0xda35194).
  Loads 1 byte from a0 (arg0 at entry) +0xdd0 into `a0` (`lbu` at 0xda351b0).
  Loads 4 bytes from a0 (arg0 at entry) +0xe7c into `a3` (`lw` at 0xda351c8).
  Loads 4 bytes from a0 (arg0 at entry) +0xe80 into `a4` (`lw` at 0xda351d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x48 into `t9` (`lw` at 0xda35204).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36 (`jalr` at 0xda35184).
  Calls `__glChangeWindowSize [0xda35030]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`bgezall` at 0xda351a8).
  Calls `__glChangeReadWindowSize [0xda35140]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+3708], a4=[a0+3712] (`bgezall` at 0xda351f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=? (`jalr` at 0xda35210).
  The `bne` at 0xda35198 is taken when v0(=[a0+3700]) != a1(?) and falls through when v0(=[a0+3700]) == a1(?).
  The `beq` at 0xda351a0 is taken when v1(=[a0+3704]) == a2(?) and falls through when v1(=[a0+3704]) != a2(?).
  The `beq` at 0xda351b4 is taken when a0(=[a0+3536]:1) == 0 and falls through when a0(=[a0+3536]:1) != 0.
  The `bne` at 0xda351cc is taken when a3(=[a0+3708]) != a1(?) and falls through when a3(=[a0+3708]) == a1(?).
  The `bne` at 0xda351d4 is taken when a4(=[a0+3712]) != a2(?) and falls through when a4(=[a0+3712]) == a2(?).
  The `jr` at 0xda351e8 returns with v0 = ?.

- `SubdivRegCreaseEdge` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda721f0, 232 bytes) Inferred.
  Performs 10 4-byte loads from ? (base unknown), including `lwc1` at 0xda72208, `lwc1` at 0xda7220c, `lwc1` at 0xda72250.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0xda72234, `swc1` at 0xda72268, `swc1` at 0xda72284.
  The `blez` at 0xda721f0 is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `beq` at 0xda72200 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0xda72230 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` at 0xda7223c is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0xda722c8 is taken when a1(?) != a5(=((a0 << 0x2) + a1)) and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The `jr` at 0xda722d0 returns with v0 = ?.

- `SubdivIRRegCreaseEdge` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda722e0, 280 bytes) Inferred.
  Performs 10 4-byte loads from ? (base unknown), including `lwc1` at 0xda72300, `lwc1` at 0xda72304, `lwc1` at 0xda72350.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0xda72334, `swc1` at 0xda72370, `swc1` at 0xda72394.
  The `blez` at 0xda722e0 is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `beq` at 0xda722f8 is taken when (a0 & 0x3) == 0 and falls through when (a0 & 0x3) != 0.
  The `bne` at 0xda72330 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` at 0xda7233c is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0xda723e8 is taken when a1(?) != a5(=((a0 << 0x2) + a1)) and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The `jr` at 0xda723f0 returns with v0 = ?.

- `__glXBindHWContextToWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2143464, 696 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x98 into `s0` (`ld` at 0x2143490).
  Performs 2 8-byte loads from abs 0x1028, including `ld` at 0x2143494, `ld` at 0x2143684.
  Performs 3 4-byte loads from [a0+152]:8 +0x128, including `lw` at 0x2143498, `lw` at 0x2143688, `lw` at 0x2143698.
  Loads 4 bytes from [0x1028]:8 +0x0 into `v1` (`lw` at 0x214349c).
  Performs 6 8-byte loads from [a0+152]:8 +0x148, including `ld` at 0x21434a8, `ld` at 0x214358c, `ld` at 0x2143600.
  Loads 8 bytes from [a0+152]:8 +0x168 into `a0` (`ld` at 0x21434ac).
  Performs 6 8-byte loads from [a0+152]:8 +0x140, including `ld` at 0x21434b0, `ld` at 0x2143590, `ld` at 0x2143604.
  Performs 4 1-byte stores to [a0+152]:8 +0x170, including `sb` at 0x21434b8, `sb` at 0x2143574, `sb` at 0x21435f0.
  Loads 8 bytes from [a0+152]:8 +0x160 into `a1` (`ld` at 0x21434bc).
  Performs 5 8-byte loads from [a0+152]:8 +0x158, including `ld` at 0x21434d4, `ld` at 0x2143508, `ld` at 0x2143520.
  Loads 4 bytes from [[a0+152]:8+344]:8 +0x40 into `ra` (`lw` at 0x21434d8).
  Performs 2 4-byte loads from [a0+152]:8 +0x1b0, including `lw` at 0x21434ec, `lw` at 0x2143638.
  Performs 2 4-byte loads from [a0+152]:8 +0x1b4, including `lw` at 0x21434f0, `lw` at 0x214363c.
  Performs 6 8-byte loads from [a0+152]:8 +0x150, including `ld` at 0x21434fc, `ld` at 0x2143514, `ld` at 0x2143554.
  Performs 2 8-byte loads from [[a0+152]:8+336]:8 +0x30, including `ld` at 0x2143500, `ld` at 0x21435ac.
  Loads 8 bytes from [[a0+152]:8+344]:8 +0x30 into `v0` (`ld` at 0x214350c).
  Performs 4 4-byte loads from [[a0+152]:8+336]:8 +0x8, including `lw` at 0x2143518, `lw` at 0x2143558, `lw` at 0x21435b8.
  Performs 2 4-byte loads from [[a0+152]:8+344]:8 +0x8, including `lw` at 0x2143524, `lw` at 0x2143568.
  Performs 3 4-byte loads from [a0+152]:8 +0x40, including `lw` at 0x2143538, `lw` at 0x21435cc, `lw` at 0x2143670.
  Performs 2 4-byte stores to [[a0+152]:8+336]:8 +0x8, including `sw` at 0x214357c, `sw` at 0x21435f8.
  Stores 4 bytes from `a6` to [[a0+152]:8+344]:8 +0x8 (`sw` at 0x2143588).
  Performs 2 8-byte stores to [a0+152]:8 +0x160, including `sd` at 0x2143594, `sd` at 0x214360c.
  Performs 2 8-byte stores to [a0+152]:8 +0x168, including `sd` at 0x2143598, `sd` at 0x2143610.
  Stores 4 bytes from `t1` to [0x1028]:8 +0x0 (`sw` at 0x214368c).
  Performs 3 8-byte loads from a0 (arg0 at entry) +0x28, including `ld` at 0x21436c4, `ld` at 0x21436e4, `ld` at 0x2143704.
  Calls `__glXHWAttach` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x214348c).
  Calls `(unknown callee)` via direct with a0=[[a0+152]:8+64], a1=0x400, a2=sp-56, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296] (`bgezall` at 0x2143534).
  Calls `(unknown callee)` via direct with a0=[[a0+152]:8+64], a1=0x3eb, a2=sp-72, a3=[[a0+152]:8+328]:8, a4=[[a0+152]:8+296] (`bgezall` at 0x21435c8).
  Calls `(unknown callee)` via direct with a0=[[a0+152]:8+64], a1=0x3ea, a2=sp-80, a3=?, a4=[[a0+152]:8+296] (`bgezall` at 0x2143674).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x2177478, a2=?, a3=? (`jalr` at 0x21436cc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x21774b0, a2=0x1, a3=? (`jalr` at 0x21436ec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x2177490, a2=-0x1, a3=? (`jalr` at 0x214370c).
  The `bne` at 0x21434a0 is taken when v1(=[[0x1028]:8]) != a4(=[[a0+152]:8+296]) and falls through when v1(=[[0x1028]:8]) == a4(=[[a0+152]:8+296]).
  The `bne` at 0x21434b4 is taken when a0(=[[a0+152]:8+360]:8) != a3(=[[a0+152]:8+328]:8) and falls through when a0(=[[a0+152]:8+360]:8) == a3(=[[a0+152]:8+328]:8).
  The `beq` at 0x21434c0 is taken when a1(=[[a0+152]:8+352]:8) == a2(=[[a0+152]:8+320]:8) and falls through when a1(=[[a0+152]:8+352]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` at 0x21434cc is taken when a3(=[[a0+152]:8+328]:8) == a2(=[[a0+152]:8+320]:8) and falls through when a3(=[[a0+152]:8+328]:8) != a2(=[[a0+152]:8+320]:8).
  The `beq` at 0x21434e0 is taken when ra(=[[[a0+152]:8+344]:8+64]) == at(=0x3) and falls through when ra(=[[[a0+152]:8+344]:8+64]) != at(=0x3).
  The `beq` at 0x21434f4 is taken when at(=[[a0+152]:8+432]) == a2(=0x1) and falls through when at(=[[a0+152]:8+432]) != a2(=0x1).
  The `beq` at 0x214354c is taken when v0(=ret(0x2142fec)) == a2(=-0x1) and falls through when v0(=ret(0x2142fec)) != a2(=-0x1).
  The `bne` at 0x2143560 is taken when a3(=[[[a0+152]:8+336]:8+8]) != a4(?) and falls through when a3(=[[[a0+152]:8+336]:8+8]) == a4(?).
  The `beq` at 0x214356c is taken when a5(=[[[a0+152]:8+344]:8+8]) == a6(?) and falls through when a5(=[[[a0+152]:8+344]:8+8]) != a6(?).
  The `beq` at 0x21435d4 is taken when v0(=ret(0x2142fec)) == at(=-0x1) and falls through when v0(=ret(0x2142fec)) != at(=-0x1).
  The `beq` at 0x21435e8 is taken when v0(=[[[a0+152]:8+336]:8+8]) == v1(?) and falls through when v0(=[[[a0+152]:8+336]:8+8]) != v1(?).
  The `beq` at 0x2143644 is taken when a5(=[[a0+152]:8+432]) >= 0x2 (signed) and falls through when a5(=[[a0+152]:8+432]) < 0x2 (signed).
  The `beq` at 0x214364c is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bltz` at 0x214367c is taken when v0(=ret(0x2142fec)) < 0 (signed) and falls through when v0(=ret(0x2142fec)) >= 0 (signed).
  The `beq` at 0x21436a4 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `jr` at 0x21435a0 returns with v0 = ret(0x2142fec); f0 = ret(0x2142fec).
  The `jr` at 0x2143618 returns with v0 = [[[a0+152]:8+336]:8+8]; f0 = ret(0x2142fec).
  The `jr` at 0x214362c returns with v0 = ?.

- `__glx_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x214e764, 144 bytes) Inferred.
  Loads 8 bytes from abs 0x1028 into `s0` (`ld` at 0x214e774).
  Loads 8 bytes from [0x1028]:8 +0x118 into `s0` (`ld` at 0x214e784).
  Loads 8 bytes from [[0x1028]:8+280]:8 +0x8 into `s8` (`ld` at 0x214e78c).
  Stores 2 bytes from `v0` to [[[0x1028]:8+280]:8+8]:8 +0x2 (`sh` at 0x214e7a4).
  Stores 2 bytes from `at` to [[[0x1028]:8+280]:8+8]:8 +0x0 (`sh` at 0x214e7b0).
  Loads 8 bytes from [[0x1028]:8+280]:8 +0x10 into `t9` (`ld` at 0x214e7b4).
  Stores 8 bytes from `a1` to [[0x1028]:8+280]:8 +0x8 (`sd` at 0x214e7c4).
  Calls `memcpy` via got with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3) (`jalr` at 0x214e7ac).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+132, a2=?, a3=? (`jalr` at 0x214e7e4).
  The `bne` at 0x214e7c0 is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned) and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+132) (unsigned).
  The `jr` at 0x214e7d8 returns with v0 = ?.

- `__glx_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x214e7f4, 144 bytes) Inferred.
  Loads 8 bytes from abs 0x1028 into `s0` (`ld` at 0x214e804).
  Loads 8 bytes from [0x1028]:8 +0x118 into `s0` (`ld` at 0x214e814).
  Loads 8 bytes from [[0x1028]:8+280]:8 +0x8 into `s8` (`ld` at 0x214e81c).
  Stores 2 bytes from `v0` to [[[0x1028]:8+280]:8+8]:8 +0x2 (`sh` at 0x214e834).
  Stores 2 bytes from `at` to [[[0x1028]:8+280]:8+8]:8 +0x0 (`sh` at 0x214e840).
  Loads 8 bytes from [[0x1028]:8+280]:8 +0x10 into `t9` (`ld` at 0x214e844).
  Stores 8 bytes from `a1` to [[0x1028]:8+280]:8 +0x8 (`sd` at 0x214e854).
  Calls `memcpy` via got with a0=[[[0x1028]:8+280]:8+8]:8+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3) (`jalr` at 0x214e83c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+68, a2=?, a3=? (`jalr` at 0x214e874).
  The `bne` at 0x214e850 is taken when t9(=[[[0x1028]:8+280]:8+16]:8) < a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned) and falls through when t9(=[[[0x1028]:8+280]:8+16]:8) >= a1(=[[[0x1028]:8+280]:8+8]:8+68) (unsigned).
  The `jr` at 0x214e868 returns with v0 = ?.

- `glXCreateWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x2170560, 328 bytes) Inferred.
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x968, including `ld` at 0x21705a0, `ld` at 0x217063c.
  Loads 8 bytes from [a0+2408]:8 +0x0 into `t9` (`ld` at 0x21705ac).
  Performs 3 8-byte loads from a0 (arg0 at entry) +0xb0, including `ld` at 0x21705b8, `ld` at 0x21705f0, `ld` at 0x2170690.
  Loads 8 bytes from a0 (arg0 at entry) +0xb8 into `a0` (`ld` at 0x21705bc).
  Stores 8 bytes from `a5` to a0 (arg0 at entry) +0xa0 (`sd` at 0x21705d8).
  Stores 2 bytes from `t2` to [a0+176]:8 +0x2 (`sh` at 0x21705e0).
  Performs 2 1-byte stores to [a0+176]:8 +0x0, including `sb` at 0x21705e8, `sb` at 0x2170608.
  Loads 8 bytes from a0 (arg0 at entry) +0x98 into `t0` (`ld` at 0x21705ec).
  Stores 8 bytes from `t0` to a0 (arg0 at entry) +0x98 (`sd` at 0x21705f8).
  Stores 8 bytes from `t1` to a0 (arg0 at entry) +0xb0 (`sd` at 0x2170600).
  Stores 1 byte from `a6` to [a0+176]:8 +0x1 (`sb` at 0x2170604).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `a4` (`lw` at 0x217060c).
  Stores 4 bytes from `a4` to [a0+176]:8 +0x4 (`sw` at 0x2170610).
  Loads 4 bytes from a1 (arg1 at entry) +0x48 into `a3` (`lw` at 0x2170614).
  Stores 4 bytes from `a2` to [a0+176]:8 +0xc (`sw` at 0x2170618).
  Stores 4 bytes from `a3` to [a0+176]:8 +0x8 (`sw` at 0x217061c).
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `t9` (`ld` at 0x2170620).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0x2170634, `sw` at 0x2170638.
  Loads 8 bytes from [a0+2408]:8 +0x8 into `t9` (`ld` at 0x2170648).
  Loads 8 bytes from a0 (arg0 at entry) +0xd0 into `t9` (`ld` at 0x2170654).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x217058c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x21705b0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=[a1+72], a4=[a1+36], a5=[a0+176]:8, a6=0x1f (`jalr` at 0x2170628).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+2408]:8 (`jalr` at 0x217064c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2170660).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=[a0+176]:8+24, a2=a2 at entry (arg2), a3=?, a5=[a0+176]:8 (`jalr` at 0x2170684).
  The `beq` at 0x2170598 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0x21705a4 is taken when a5(=[a0+2408]:8) == 0 and falls through when a5(=[a0+2408]:8) != 0.
  The `bne` at 0x21705c8 is taken when a0(=[a0+184]:8) < a1(=[a0+176]:8+24) (unsigned) and falls through when a0(=[a0+184]:8) >= a1(=[a0+176]:8+24) (unsigned).
  The `beq` at 0x2170640 is taken when a5(=[a0+2408]:8) == 0 and falls through when a5(=[a0+2408]:8) != 0.
  The `beq` at 0x2170658 is taken when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  The `jr` at 0x2170678 returns with v0 = ?; f0 = ret(?).
  The `jr` at 0x21706a0 returns with v0 = 0x0; f0 = ret(__glXSetupForCommand).

- `glXDestroyWindow` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x21706a8, 252 bytes) Inferred.
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x968, including `ld` at 0x21706e4, `ld` at 0x2170754.
  Loads 8 bytes from [a0+2408]:8 +0x0 into `t9` (`ld` at 0x21706f0).
  Performs 3 8-byte loads from a0 (arg0 at entry) +0xb0, including `ld` at 0x21706fc, `ld` at 0x2170734, `ld` at 0x21707a0.
  Loads 8 bytes from a0 (arg0 at entry) +0xb8 into `a1` (`ld` at 0x2170700).
  Stores 8 bytes from `a0` to a0 (arg0 at entry) +0xa0 (`sd` at 0x217071c).
  Stores 2 bytes from `t0` to [a0+176]:8 +0x2 (`sh` at 0x2170724).
  Performs 2 1-byte stores to [a0+176]:8 +0x0, including `sb` at 0x217072c, `sb` at 0x217074c.
  Loads 8 bytes from a0 (arg0 at entry) +0x98 into `a6` (`ld` at 0x2170730).
  Stores 8 bytes from `a6` to a0 (arg0 at entry) +0x98 (`sd` at 0x217073c).
  Stores 8 bytes from `a7` to a0 (arg0 at entry) +0xb0 (`sd` at 0x2170744).
  Stores 4 bytes from `a3` to [a0+176]:8 +0x4 (`sw` at 0x2170748).
  Stores 1 byte from `a4` to [a0+176]:8 +0x1 (`sb` at 0x2170750).
  Loads 8 bytes from [a0+2408]:8 +0x8 into `t9` (`ld` at 0x2170760).
  Loads 8 bytes from a0 (arg0 at entry) +0xd0 into `t9` (`ld` at 0x217076c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x21706d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+2408]:8 (`jalr` at 0x21706f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1), a4=[a0+2408]:8, a6=[a0+152]:8+1, a7=[a0+176]:8+8 (`jalr` at 0x2170764).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2170778).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=[a0+176]:8+8, a3=? (`jalr` at 0x2170794).
  The `beq` at 0x21706dc is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0x21706e8 is taken when a4(=[a0+2408]:8) == 0 and falls through when a4(=[a0+2408]:8) != 0.
  The `bne` at 0x217070c is taken when a1(=[a0+184]:8) < a2(=[a0+176]:8+8) (unsigned) and falls through when a1(=[a0+184]:8) >= a2(=[a0+176]:8+8) (unsigned).
  The `beq` at 0x2170758 is taken when a4(=[a0+2408]:8) == 0 and falls through when a4(=[a0+2408]:8) != 0.
  The `beq` at 0x2170770 is taken when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  The `jr` at 0x217078c returns with v0 = ?.

- `glXBindChannelToWindowSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`, 0x21711c0, 292 bytes) Inferred.
  Loads 8 bytes from abs 0x1028 into `at` (`ld` at 0x21711d8).
  Loads 8 bytes from [0x1028]:8 +0x118 into `at` (`ld` at 0x21711f0).
  Performs 2 1-byte stores to ? (base unknown), including `sb` at 0x2171284, `sb` at 0x21712e0.
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0x2171288, `ld` at 0x217128c.
  Loads 4 bytes from ? (base unknown) into `a0` (`lw` at 0x21712a0).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x21711f4).
  Calls `(unknown callee)` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize) (`bgezall` at 0x2171218).
  Calls `XSGIvcSetPlatformParameter` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-80, a5=0x4 (`jalr` at 0x2171244).
  Calls `XSync` via got with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jalr` at 0x2171254).
  Calls `(unknown callee)` via register with a0=?, a1=0x1, a2=?, a3=?, a7=(((a2 << 0x2) + a2) << 0x3) (`jalr` at 0x217129c).
  The `beq` at 0x21711fc is taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0x2171220 is taken when v0(=ret(0x2171024)) == 0 and falls through when v0(=ret(0x2171024)) != 0.
  The `beq` at 0x2171280 is taken when v1(=a3) == 0 and falls through when v1(=a3) != 0.
  The `beq` at 0x2171290 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  The `jr` at 0x21712b0 returns with v0 = 0x1.
  The `jr` at 0x21712c4 returns with v0 = 0x0.

- `__glOdysplc_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x21b95b0, 68 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `v0` (`ld` at 0x21b95b4).
  Stores 1 byte from `zero` to [0x1020]:8 +0x18ed0 (`sb` at 0x21b95e0).
  Calls `__glsplc_LoadMatrixf [0x2303f10]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x21b95dc).
  The `jr` at 0x21b95ec returns with v0 = ret(__glsplc_LoadMatrixf); f0 = ret(__glsplc_LoadMatrixf).

- `__glOdysplc_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x21b9600, 68 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `v0` (`ld` at 0x21b9604).
  Stores 1 byte from `zero` to [0x1020]:8 +0x18ed0 (`sb` at 0x21b9630).
  Calls `__glsplc_LoadMatrixd [0x2303f70]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x21b962c).
  The `jr` at 0x21b963c returns with v0 = ret(__glsplc_LoadMatrixd); f0 = ret(__glsplc_LoadMatrixd).

- `__glOdySpanEyeZ24ToWindowZ` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x21ea6b0, 348 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x288 into `$f9` (`ldc1` at 0x21ea6b0).
  Loads 8 bytes from a1 (arg1 at entry) +0x278 into `v0` (`ld` at 0x21ea6b4).
  Loads 4 bytes from a1 (arg1 at entry) +0xb8 into `t8` (`lw` at 0x21ea6bc).
  Loads 8 bytes from [a1+632]:8 +0x40 into `$f13` (`ldc1` at 0x21ea6c4).
  Loads 8 bytes from abs 0x2347a28 into `$f14` (`ldc1` at 0x21ea6cc).
  Loads 8 bytes from [a1+632]:8 +0x30 into `$f12` (`ldc1` at 0x21ea6d0).
  Loads 8 bytes from abs 0x2347a18 into `$f17` (`ldc1` at 0x21ea6d4).
  Loads 8 bytes from [a1+632]:8 +0x0 into `$f10` (`ldc1` at 0x21ea6d8).
  Loads 8 bytes from [a1+632]:8 +0x48 into `$f8` (`ldc1` at 0x21ea6e8).
  Loads 8 bytes from [a1+632]:8 +0x38 into `$f7` (`ldc1` at 0x21ea6f4).
  Loads 4 bytes from abs 0x23477a0 into `$f16` (`lwc1` at 0x21ea730).
  Performs 2 4-byte stores to ? (base unknown), including `swc1` at 0x21ea744, `swc1` at 0x21ea7f4.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0x21ea754).
  The `blez` at 0x21ea6f8 is taken when t8(=[a1+184]) <= 0 (signed) and falls through when t8(=[a1+184]) > 0 (signed).
  The `beq` at 0x21ea748 is taken when t8(=[a1+184]) == a2(?) and falls through when t8(=[a1+184]) != a2(?).
  The `bc1t` at 0x21ea7b0 is taken when f5 == f6 (c.eq.d at 0x21ea7a4) and falls through when not (f5 == f6 (c.eq.d at 0x21ea7a4)).
  The `bc1f` at 0x21ea7d0 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  The `jr` at 0x21ea7f8 returns with v0 = ?.

- `__glOdySpanEyeZ16ToWindowZ` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x21ea810, 352 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x288 into `$f9` (`ldc1` at 0x21ea810).
  Loads 8 bytes from a1 (arg1 at entry) +0x278 into `v0` (`ld` at 0x21ea814).
  Loads 4 bytes from a1 (arg1 at entry) +0xb8 into `t3` (`lw` at 0x21ea81c).
  Loads 8 bytes from [a1+632]:8 +0x40 into `$f13` (`ldc1` at 0x21ea824).
  Loads 8 bytes from abs 0x2347a28 into `$f14` (`ldc1` at 0x21ea82c).
  Loads 8 bytes from [a1+632]:8 +0x30 into `$f12` (`ldc1` at 0x21ea830).
  Loads 8 bytes from abs 0x2347a18 into `$f17` (`ldc1` at 0x21ea834).
  Loads 8 bytes from [a1+632]:8 +0x0 into `$f10` (`ldc1` at 0x21ea838).
  Loads 8 bytes from [a1+632]:8 +0x48 into `$f8` (`ldc1` at 0x21ea848).
  Loads 8 bytes from [a1+632]:8 +0x38 into `$f7` (`ldc1` at 0x21ea854).
  Loads 4 bytes from abs 0x23477a0 into `$f16` (`lwc1` at 0x21ea888).
  Performs 2 4-byte stores to ? (base unknown), including `swc1` at 0x21ea8a4, `swc1` at 0x21ea958.
  Loads 2 bytes from ? (base unknown) into `v0` (`lhu` at 0x21ea8b4).
  The `blez` at 0x21ea858 is taken when t3(=[a1+184]) <= 0 (signed) and falls through when t3(=[a1+184]) > 0 (signed).
  The `beq` at 0x21ea8a8 is taken when t3(=[a1+184]) == a2(?) and falls through when t3(=[a1+184]) != a2(?).
  The `bc1t` at 0x21ea914 is taken when f5 == f6 (c.eq.d at 0x21ea908) and falls through when not (f5 == f6 (c.eq.d at 0x21ea908)).
  The `bc1f` at 0x21ea934 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  The `jr` at 0x21ea95c returns with v0 = ?.

- `__glOdySpanWindowZToEyeZ24` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x21eb2a0, 344 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x288 into `$f14` (`ldc1` at 0x21eb2a0).
  Loads 8 bytes from a1 (arg1 at entry) +0x278 into `v0` (`ld` at 0x21eb2a4).
  Loads 4 bytes from a1 (arg1 at entry) +0xb8 into `t8` (`lw` at 0x21eb2a8).
  Loads 8 bytes from [a1+632]:8 +0x48 into `$f11` (`ldc1` at 0x21eb2ac).
  Loads 8 bytes from [a1+632]:8 +0x38 into `$f16` (`ldc1` at 0x21eb2b4).
  Loads 8 bytes from [a1+632]:8 +0x30 into `$f8` (`ldc1` at 0x21eb2bc).
  Loads 8 bytes from abs 0x2347a08 into `$f15` (`ldc1` at 0x21eb2c4).
  Loads 8 bytes from [a1+632]:8 +0x40 into `$f12` (`ldc1` at 0x21eb2c8).
  Loads 8 bytes from a1 (arg1 at entry) +0x280 into `$f10` (`ldc1` at 0x21eb2d0).
  Loads 8 bytes from [a1+632]:8 +0x0 into `$f13` (`ldc1` at 0x21eb2e4).
  Loads 8 bytes from abs 0x2347a80 into `$f15` (`ldc1` at 0x21eb308).
  Loads 4 bytes from a1 (arg1 at entry) +0x290 into `$f16` (`lwc1` at 0x21eb320).
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x21eb35c).
  Loads 4 bytes from ? (base unknown) into `$f6` (`lwc1` at 0x21eb360).
  Loads 1 byte from a1 (arg1 at entry) +0x29a into `a7` (`lbu` at 0x21eb388).
  Loads 1 byte from a1 (arg1 at entry) +0x29b into `t0` (`lbu` at 0x21eb38c).
  Loads 4 bytes from a1 (arg1 at entry) +0x294 into `$f5` (`lwc1` at 0x21eb3b8).
  The `blez` at 0x21eb2ec is taken when t8(=[a1+184]) <= 0 (signed) and falls through when t8(=[a1+184]) > 0 (signed).
  The `bltz` at 0x21eb340 is taken when t0(?) < 0 (signed) and falls through when t0(?) >= 0 (signed).
  The `beq` at 0x21eb358 is taken when t8(=[a1+184]) == a3(?) and falls through when t8(=[a1+184]) != a3(?).
  The `bc1t` at 0x21eb37c is taken when f5 == f7 (c.eq.d at 0x21eb36c) and falls through when not (f5 == f7 (c.eq.d at 0x21eb36c)).
  The `beq` at 0x21eb390 is taken when a7(=[a1+666]:1) == 0 and falls through when a7(=[a1+666]:1) != 0.
  The `bc1t` at 0x21eb39c is taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  The `beq` at 0x21eb3a4 is taken when t0(=[a1+667]:1) == 0 and falls through when t0(=[a1+667]:1) != 0.
  The `bc1f` at 0x21eb3b0 is taken when FP condition code 2 is false and falls through when FP condition code 2 is true.
  The `bc1t` at 0x21eb3d0 is taken when FP condition code 3 is true and falls through when FP condition code 3 is false.
  The `jr` at 0x21eb3f0 returns with v0 = ?.

- `__glOdysseyImageMovePixelsDMAtoHost` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x21ffc10, 1892 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `s2` (`ld` at 0x21ffc30).
  Stores 4 bytes from `zero` to sp (at entry) -0xf8 (`sw` at 0x21ffc40).
  Stores 8 bytes from `zero` to sp (at entry) -0x100 (`sd` at 0x21ffc48).
  Stores 8 bytes from `zero` to sp (at entry) -0x110 (`sd` at 0x21ffc4c).
  Stores 8 bytes from `zero` to sp (at entry) -0x118 (`sd` at 0x21ffc54).
  Stores 8 bytes from `zero` to sp (at entry) -0x120 (`sd` at 0x21ffc5c).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x28, including `lw` at 0x21ffc60, `lw` at 0x21ffe0c.
  Loads 4 bytes from a2 (arg2 at entry) +0x10 into `$f0` (`lwc1` at 0x21ffc6c).
  Loads 4 bytes from a2 (arg2 at entry) +0x14 into `$f1` (`lwc1` at 0x21ffc70).
  Loads 4 bytes from a2 (arg2 at entry) +0x18 into `$f2` (`lwc1` at 0x21ffc74).
  Loads 4 bytes from a2 (arg2 at entry) +0x1c into `$f3` (`lwc1` at 0x21ffc78).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `$f4` (`lwc1` at 0x21ffc7c).
  Loads 4 bytes from a2 (arg2 at entry) +0x4 into `$f5` (`lwc1` at 0x21ffc80).
  Loads 4 bytes from a2 (arg2 at entry) +0x8 into `$f6` (`lwc1` at 0x21ffc88).
  Loads 4 bytes from a2 (arg2 at entry) +0xc into `$f7` (`lwc1` at 0x21ffc90).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0x0, including `lbu` at 0x21ffc9c, `lbu` at 0x21ffeac.
  Performs 3 4-byte loads from a0 (arg0 at entry) +0xc, including `lw` at 0x21ffcac, `lw` at 0x21ffdd4, `lw` at 0x21ffdf8.
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x8, including `lw` at 0x21ffcb8, `lw` at 0x21ffd88, `lw` at 0x21ffdec.
  Performs 2 1-byte loads from a1 (arg1 at entry) +0x9, including `lbu` at 0x21ffd38, `lbu` at 0x21fff94.
  Loads 4 bytes from [0x1020]:8 +0x5c4 into `v0` (`lw` at 0x21ffd44).
  Loads 4 bytes from a1 (arg1 at entry) +0x30 into `a1` (`lw` at 0x21ffdb0).
  Loads 4 bytes from a1 (arg1 at entry) +0x2c into `a0` (`lw` at 0x21ffdbc).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `v0` (`lw` at 0x21ffdc8).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `at` (`lw` at 0x21ffdcc).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `a2` (`lw` at 0x21ffe18).
  Stores 4 bytes from `s3` to a0 (arg0 at entry) +0x18 (`sw` at 0x21ffe38).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `a5` (`lw` at 0x21ffe3c).
  Loads 8 bytes from a0 (arg0 at entry) +0x30 into `at` (`ld` at 0x21fff28).
  Performs 4 4-byte loads from a1 (arg1 at entry) +0x14, including `lw` at 0x21fff3c, `lw` at 0x21fff88, `lw` at 0x2200270.
  Performs 3 4-byte loads from a1 (arg1 at entry) +0x10, including `lw` at 0x21fff68, `lw` at 0x220027c, `lw` at 0x22002a4.
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `t2` (`lw` at 0x21fffa8).
  Loads 4 bytes from (sp-240 + ([a1+20] << 0x2)) +0x0 into `t0` (`lw` at 0x21fffb4).
  Loads 4 bytes from a1 (arg1 at entry) +0x1c into `a2` (`lw` at 0x2200034).
  Loads 4 bytes from a1 (arg1 at entry) +0x28 into `a7` (`lw` at 0x2200120).
  Loads 4 bytes from [0x1020]:8 +0x9ec0 into `a5` (`lw` at 0x2200214).
  Loads 4 bytes from [0x1020]:8 +0x285c8 into `t1` (`lw` at 0x2200230).
  Loads 4 bytes from [0x1020]:8 +0x820 into `t2` (`lw` at 0x220023c).
  Loads 4 bytes from [0x1020]:8 +0x578 into `t9` (`lw` at 0x22002fc).
  Calls `__glOdysseyImageCalcXferReadParams [0x22035e0]` via direct with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-264, a6=0x1472a8 (`bgezall` at 0x21ffd14).
  Calls `ImageCalcDmaFieldOffsets [0x2202f20]` via direct with a0=[a1+44], a1=[a1+48], a2=one of 0x0, 0x1, a3=?, a4=sp-304, a5=sp-300 (`bgezall` at 0x21ffdb8).
  Calls `__glSpecElementsPerGroup [0x2256d30]` via register-constant with a0=[a0+8], a1=[a0+12], a2=?, a3=? (`jalr` at 0x21ffde8).
  Calls `__glSpecBytesPerElement [0x2256f00]` via register-constant with a0=[a0+12], a1=?, a2=?, a3=? (`jalr` at 0x21ffdfc).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=?, a5=[a0+16] (`jalr` at 0x21ffe74).
  Calls `__glOdysseyOpenPMObjReference [0x220b780]` via register-constant with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=[a1+20], a4=sp-240, a5=0x0 (`jalr` at 0x21fff64).
  Calls `ImageToDmaHostPixelSize [0x22035c0]` via direct with a0=?, a1=?, a2=?, a3=?, a7=-0x8 (`bgezall` at 0x22001a0).
  Calls `__glOdysseyReadFromPMObj [0x220b3f0]` via register-constant with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=?, a5=one of 0x0, 0x2, a6=0x0, a7=sp-296 (`jalr` at 0x2200284).
  Calls `__glOdysseyClosePMObjReference [0x220bd70]` via register-constant with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=[a1+20] (`jalr` at 0x22002a8).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0x2200324).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0x2200334).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x501, a1=0x403, a2=?, a3=? (`jalr` at 0x2200348).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x505, a1=?, a2=?, a3=?, a6=0x1fff0000 (`jalr` at 0x2200364).
  The `beq` at 0x21ffd30 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `beq` at 0x21ffd3c is taken when t3(=[a1+9]:1) == 0 and falls through when t3(=[a1+9]:1) != 0.
  The `beq` at 0x21ffd4c is taken when v0(=[[0x1020]:8+1476]) == t8(=0x405) and falls through when v0(=[[0x1020]:8+1476]) != t8(=0x405).
  The `beq` at 0x21ffd54 is taken when v0(=[[0x1020]:8+1476]) == t9(=0x402) and falls through when v0(=[[0x1020]:8+1476]) != t9(=0x402).
  The `beq` at 0x21ffd5c is taken when v0(=[[0x1020]:8+1476]) == ra(=0x403) and falls through when v0(=[[0x1020]:8+1476]) != ra(=0x403).
  The `beq` at 0x21ffd6c is taken when v0(=[[0x1020]:8+1476]) == v1(=0x407) and falls through when v0(=[[0x1020]:8+1476]) != v1(=0x407).
  The `beq` at 0x21ffd74 is taken when v0(=[[0x1020]:8+1476]) == a0(=0x401) and falls through when v0(=[[0x1020]:8+1476]) != a0(=0x401).
  The `beq` at 0x21ffd7c is taken when v0(=[[0x1020]:8+1476]) == a1(=0x403) and falls through when v0(=[[0x1020]:8+1476]) != a1(=0x403).
  The `beq` at 0x21ffd90 is taken when v0(=[a0+8]) == a3(=0x1902) and falls through when v0(=[a0+8]) != a3(=0x1902).
  The `beq` at 0x21ffd98 is taken when v0(=[a0+8]) == a4(=0x1901) and falls through when v0(=[a0+8]) != a4(=0x1901).
  The `beq` at 0x21ffdc0 is taken when v0(=ret(ImageCalcDmaFieldOffsets)) == 0 and falls through when v0(=ret(ImageCalcDmaFieldOffsets)) != 0.
  The `beq` at 0x21ffe2c is taken when a2(=[a0+24]) >= s3(?) (unsigned) and falls through when a2(=[a0+24]) < s3(?) (unsigned).
  The `beq` at 0x21ffecc is taken when t3(=[a0]:1) == 0 and falls through when t3(=[a0]:1) != 0.
  The `beq` at 0x21fff70 is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0 and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` at 0x220021c is taken when (a5(=[[0x1020]:8+40640]) & 0x400) == 0 and falls through when (a5(=[[0x1020]:8+40640]) & 0x400) != 0.
  The `beq` at 0x2200234 is taken when t1(=[[0x1020]:8+165320]) == 0 and falls through when t1(=[[0x1020]:8+165320]) != 0.
  The `beq` at 0x2200244 is taken when (t2(=[[0x1020]:8+2080]) & 0x4) == 0 and falls through when (t2(=[[0x1020]:8+2080]) & 0x4) != 0.
  The `beq` at 0x2200290 is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0 and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0.
  The `beq` at 0x22002b4 is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0 and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `jr` at 0x22002d0 returns with v0 = ?.

- `__glOdyim_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x2228690, 108 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `a1` (`ld` at 0x2228690).
  Loads 4 bytes from abs 0x1030 into `at` (`lw` at 0x2228698).
  Calls `__glim_LoadMatrixf [0x22e6620]` via register-constant with a0=a0 at entry (arg0), a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22286c0).
  Calls `dirtyMatrix [0x2228360]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0x22286d0).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22286ec).
  The `beq` at 0x22286b4 is taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `jr` at 0x22286e0 returns with v0 = ?.

- `__glOdyim_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x2228700, 180 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `s0` (`ld` at 0x2228708).
  Loads 4 bytes from abs 0x1030 into `at` (`lw` at 0x222870c).
  Loads 4 bytes from [0x1020]:8 +0x7d0 into `a0` (`lw` at 0x2228740).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `$f3` (`ldc1` at 0x2228774).
  Stores 8 bytes from `$f3` to [0x1020]:8 +0x18a68 (`sdc1` at 0x2228780).
  Loads 8 bytes from a0 (arg0 at entry) +0x58 into `$f2` (`ldc1` at 0x2228784).
  Stores 8 bytes from `$f2` to [0x1020]:8 +0x18a70 (`sdc1` at 0x2228788).
  Loads 8 bytes from a0 (arg0 at entry) +0x70 into `$f1` (`ldc1` at 0x222878c).
  Stores 8 bytes from `$f1` to [0x1020]:8 +0x18a78 (`sdc1` at 0x2228790).
  Loads 8 bytes from a0 (arg0 at entry) +0x78 into `$f0` (`ldc1` at 0x2228794).
  Stores 8 bytes from `$f0` to [0x1020]:8 +0x18a80 (`sdc1` at 0x222879c).
  Calls `__glim_LoadMatrixd [0x22e6710]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2228738).
  Calls `dirtyMatrix [0x2228360]` via direct with a0=[0x1020]:8, a1=0x1701, a2=?, a3=? (`bgezall` at 0x2228754).
  Calls `__glSetError [0x227a070]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22287a4).
  The `beq` at 0x222872c is taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` at 0x2228748 is taken when a0(=[[0x1020]:8+2000]) == a1(=0x1701) and falls through when a0(=[[0x1020]:8+2000]) != a1(=0x1701).
  The `jr` at 0x222876c returns with v0 = ?.

- `__glOdysseyEyeToWindowZ` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x2229130, 124 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `a2` (`ld` at 0x2229130).
  Loads 8 bytes from [0x1020]:8 +0x18a70 into `$f7` (`ldc1` at 0x222913c).
  Loads 8 bytes from [0x1020]:8 +0x18a80 into `$f6` (`ldc1` at 0x2229144).
  Loads 8 bytes from abs 0x2347a18 into `$f7` (`ldc1` at 0x2229164).
  Performs 2 8-byte loads from [0x1020]:8 +0x18a68, including `ldc1` at 0x222916c, `ldc1` at 0x222918c.
  Performs 2 8-byte loads from [0x1020]:8 +0x18a78, including `ldc1` at 0x2229170, `ldc1` at 0x2229190.
  Performs 2 8-byte loads from abs 0x2347a28, including `ldc1` at 0x222917c, `ldc1` at 0x222919c.
  The `bc1t` at 0x2229160 is taken when f6 == f0 (c.eq.d at 0x2229154) and falls through when not (f6 == f0 (c.eq.d at 0x2229154)).
  The `jr` at 0x2229184 returns with v0 = 0x11dd88.
  The `jr` at 0x22291a4 returns with v0 = 0x11dd88.

- `__glOdysseyNormalizedEyeToWindowZ` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22291b0, 172 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `a0` (`ld` at 0x22291b0).
  Loads 1 byte from [0x1020]:8 +0x18bb0 into `at` (`lbu` at 0x22291bc).
  Performs 2 8-byte loads from ? (base unknown), including `ldc1` at 0x22291f8, `ldc1` at 0x22291fc.
  Calls `__glOdysseyUpdateTransform [0x22271c0]` via direct with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1020]:8+131072, a3=a3 at entry (arg3) (`bgezall` at 0x22291e8).
  Calls `__glOdysseyEyeToWindowZ [0x2229130]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0x2229210).
  The `beq` at 0x22291d8 is taken when at(=[[0x1020]:8+101296]:1) == 0 and falls through when at(=[[0x1020]:8+101296]:1) != 0.
  The `bc1f` at 0x222922c is taken when not (f6 < f15 (c.lt.d at 0x2229220)) and falls through when f6 < f15 (c.lt.d at 0x2229220).
  The `jr` at 0x222923c returns with v0 = ret(__glOdysseyEyeToWindowZ); f0 = ret(__glOdysseyEyeToWindowZ).
  The `jr` at 0x2229254 returns with v0 = ret(__glOdysseyEyeToWindowZ).

- `__glDoBlendMax` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22710e0, 108 bytes) Inferred.
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `$f4` (`lwc1` at 0x22710e0).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `$f0` (`lwc1` at 0x22710e4).
  Stores 4 bytes from `$f4` to a3 (arg3 at entry) +0x0 (`swc1` at 0x22710f4).
  Loads 4 bytes from a2 (arg2 at entry) +0x4 into `$f4` (`lwc1` at 0x22710f8).
  Loads 4 bytes from a3 (arg3 at entry) +0x4 into `$f1` (`lwc1` at 0x22710fc).
  Stores 4 bytes from `$f4` to a3 (arg3 at entry) +0x4 (`swc1` at 0x227110c).
  Loads 4 bytes from a2 (arg2 at entry) +0x8 into `$f4` (`lwc1` at 0x2271110).
  Loads 4 bytes from a3 (arg3 at entry) +0x8 into `$f2` (`lwc1` at 0x2271114).
  Stores 4 bytes from `$f4` to a3 (arg3 at entry) +0x8 (`swc1` at 0x2271124).
  Loads 4 bytes from a2 (arg2 at entry) +0xc into `$f4` (`lwc1` at 0x2271128).
  Loads 4 bytes from a3 (arg3 at entry) +0xc into `$f3` (`lwc1` at 0x227112c).
  Stores 4 bytes from `$f4` to a3 (arg3 at entry) +0xc (`swc1` at 0x2271140).
  The `bc1f` at 0x22710ec is taken when not (f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22710e8)) and falls through when f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22710e8).
  The `bc1f` at 0x2271104 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  The `bc1f` at 0x227111c is taken when FP condition code 2 is false and falls through when FP condition code 2 is true.
  The `bc1f` at 0x2271134 is taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  The `jr` at 0x227113c returns with v0 = ?.
  The `jr` at 0x2271144 returns with v0 = ?.

- `__glFindWindowSize` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x227a410, 212 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x38 into `t9` (`ld` at 0x227a424).
  Loads 4 bytes from a0 (arg0 at entry) +0xfd8 into `v0` (`lw` at 0x227a450).
  Loads 4 bytes from a0 (arg0 at entry) +0xfdc into `v1` (`lw` at 0x227a454).
  Loads 1 byte from a0 (arg0 at entry) +0xf20 into `a0` (`lbu` at 0x227a470).
  Loads 4 bytes from a0 (arg0 at entry) +0xfe0 into `a3` (`lw` at 0x227a488).
  Loads 4 bytes from a0 (arg0 at entry) +0xfe4 into `a4` (`lw` at 0x227a490).
  Loads 8 bytes from a0 (arg0 at entry) +0x90 into `t9` (`ld` at 0x227a4c4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36 (`jalr` at 0x227a444).
  Calls `__glChangeWindowSize [0x227a2e0]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`bgezall` at 0x227a468).
  Calls `__glChangeReadWindowSize [0x227a400]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+4064], a4=[a0+4068] (`bgezall` at 0x227a4b4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=? (`jalr` at 0x227a4d0).
  The `bne` at 0x227a458 is taken when v0(=[a0+4056]) != a1(?) and falls through when v0(=[a0+4056]) == a1(?).
  The `beq` at 0x227a460 is taken when v1(=[a0+4060]) == a2(?) and falls through when v1(=[a0+4060]) != a2(?).
  The `beq` at 0x227a474 is taken when a0(=[a0+3872]:1) == 0 and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` at 0x227a48c is taken when a3(=[a0+4064]) != a1(?) and falls through when a3(=[a0+4064]) == a1(?).
  The `bne` at 0x227a494 is taken when a4(=[a0+4068]) != a2(?) and falls through when a4(=[a0+4068]) == a2(?).
  The `jr` at 0x227a4a8 returns with v0 = ?.

- `SubdivRegCreaseEdge` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22bb050, 232 bytes) Inferred.
  Performs 10 4-byte loads from ? (base unknown), including `lwc1` at 0x22bb068, `lwc1` at 0x22bb06c, `lwc1` at 0x22bb0b0.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0x22bb094, `swc1` at 0x22bb0c8, `swc1` at 0x22bb0e4.
  The `blez` at 0x22bb050 is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `beq` at 0x22bb060 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0x22bb090 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` at 0x22bb09c is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0x22bb128 is taken when a1(?) != a5(=((a0 << 0x2) + a1)) and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The `jr` at 0x22bb130 returns with v0 = ?.

- `SubdivIRRegCreaseEdge` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22bb140, 280 bytes) Inferred.
  Performs 10 4-byte loads from ? (base unknown), including `lwc1` at 0x22bb160, `lwc1` at 0x22bb164, `lwc1` at 0x22bb1b0.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0x22bb194, `swc1` at 0x22bb1d0, `swc1` at 0x22bb1f4.
  The `blez` at 0x22bb140 is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `beq` at 0x22bb158 is taken when (a0 & 0x3) == 0 and falls through when (a0 & 0x3) != 0.
  The `bne` at 0x22bb190 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` at 0x22bb19c is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `bne` at 0x22bb248 is taken when a1(?) != a5(=((a0 << 0x2) + a1)) and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The `jr` at 0x22bb250 returns with v0 = ?.

- `__glReCompute2DMatrix` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22e90d0, 180 bytes) Inferred.
  Performs 2 4-byte loads from a1 (arg1 at entry) +0x40, including `lw` at 0x22e90d0, `lw` at 0x22e9170.
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x7b8, including `lwc1` at 0x22e90f0, `lwc1` at 0x22e9110, `lwc1` at 0x22e9138.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `$f15` (`lwc1` at 0x22e90f4).
  Stores 4 bytes from `$f15` to a0 (arg0 at entry) +0x9528 (`swc1` at 0x22e90fc).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x7c0, including `lwc1` at 0x22e9100, `lwc1` at 0x22e9120, `lwc1` at 0x22e914c.
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `$f13` (`lwc1` at 0x22e9104).
  Stores 4 bytes from `$f13` to a0 (arg0 at entry) +0x952c (`swc1` at 0x22e910c).
  Loads 4 bytes from a1 (arg1 at entry) +0x10 into `$f11` (`lwc1` at 0x22e9114).
  Stores 4 bytes from `$f11` to a0 (arg0 at entry) +0x9538 (`swc1` at 0x22e911c).
  Loads 4 bytes from a1 (arg1 at entry) +0x14 into `$f9` (`lwc1` at 0x22e9124).
  Stores 4 bytes from `$f9` to a0 (arg0 at entry) +0x953c (`swc1` at 0x22e912c).
  Loads 4 bytes from a1 (arg1 at entry) +0x28 into `$f8` (`lwc1` at 0x22e9130).
  Stores 4 bytes from `$f8` to a0 (arg0 at entry) +0x9550 (`swc1` at 0x22e9134).
  Loads 4 bytes from a1 (arg1 at entry) +0x30 into `$f6` (`lwc1` at 0x22e913c).
  Loads 4 bytes from a0 (arg0 at entry) +0x7bc into `$f5` (`lwc1` at 0x22e9140).
  Stores 4 bytes from `$f5` to a0 (arg0 at entry) +0x9558 (`swc1` at 0x22e9148).
  Loads 4 bytes from a1 (arg1 at entry) +0x34 into `$f3` (`lwc1` at 0x22e9150).
  Loads 4 bytes from a0 (arg0 at entry) +0x7c4 into `$f2` (`lwc1` at 0x22e9154).
  Loads 4 bytes from abs 0x23477a0 into `$f0` (`lwc1` at 0x22e915c).
  Stores 4 bytes from `$f2` to a0 (arg0 at entry) +0x955c (`swc1` at 0x22e9160).
  Loads 4 bytes from a1 (arg1 at entry) +0x38 into `$f1` (`lwc1` at 0x22e9164).
  Stores 4 bytes from `$f0` to a0 (arg0 at entry) +0x9564 (`swc1` at 0x22e9168).
  Stores 4 bytes from `$f1` to a0 (arg0 at entry) +0x9560 (`swc1` at 0x22e916c).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x9568 (`sw` at 0x22e9178).
  The `bne` at 0x22e90e8 is taken when v1(=[a1+64]) < 0x2 (unsigned) and falls through when v1(=[a1+64]) >= 0x2 (unsigned).
  The `jr` at 0x22e9174 returns with v0 = 0x5dde8; f0 = 0x3f800000.
  The `jr` at 0x22e917c returns with v0 = 0x5dde8.

- `__gllc_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22f5400, 132 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `at` (`ld` at 0x22f5404).
  Stores 2 bytes from `a3` to ret(__glDlistAllocOp2) +0x14 (`sh` at 0x22f5464).
  Calls `__glDlistAllocOp2 [0x223b310]` via register-constant with a0=[0x1020]:8, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22f542c).
  Calls `memcpy` via got with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x40, a3=0xaf (`jalr` at 0x22f5460).
  Calls `__glDlistAppendOp [0x223b3a0]` via register-constant with a0=?, a1=?, a2=0x22fba20, a3=? (`jalr` at 0x22f5474).
  The `bne` at 0x22f5434 is taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `jr` at 0x22f5444 returns with v0 = ?.

- `__gllc_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22f5490, 140 bytes) Inferred.
  Loads 8 bytes from abs 0x1020 into `at` (`ld` at 0x22f5494).
  Stores 1 byte from `a5` to ret(__glDlistAllocOp2) +0x16 (`sb` at 0x22f54f0).
  Stores 2 bytes from `a3` to ret(__glDlistAllocOp2) +0x14 (`sh` at 0x22f54fc).
  Calls `__glDlistAllocOp2 [0x223b310]` via register-constant with a0=[0x1020]:8, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22f54bc).
  Calls `memcpy` via got with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x80, a3=0xb0, a5=0x1 (`jalr` at 0x22f54f8).
  Calls `__glDlistAppendOp [0x223b3a0]` via register-constant with a0=?, a1=?, a2=0x22fba70, a3=? (`jalr` at 0x22f550c).
  The `bne` at 0x22f54c4 is taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `jr` at 0x22f54d4 returns with v0 = ?.

- `__glle_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22fba20, 68 bytes) Inferred.
  Loads 8 bytes from abs 0x1558 into `t9` (`ld` at 0x22fba34).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22fba44).
  The `jr` at 0x22fba5c returns with v0 = a0+64; f0 = ret(?).

- `__glle_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x22fba70, 68 bytes) Inferred.
  Loads 8 bytes from abs 0x1560 into `t9` (`ld` at 0x22fba84).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x22fba94).
  The `jr` at 0x22fbaac returns with v0 = a0+128; f0 = ret(?).

- `__glsplc_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x2303f10, 92 bytes) Inferred.
  Calls `__glSPDlalloc [0x21b87b0]` via register-constant with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2303f34).
  Calls `memcpy` via got with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=? (`jalr` at 0x2303f5c).
  The `bne` at 0x2303f3c is taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The `jr` at 0x2303f4c returns with v0 = ?.

- `__glsplc_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x2303f70, 92 bytes) Inferred.
  Calls `__glSPDlalloc2 [0x21b89a0]` via register-constant with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x2303f94).
  Calls `memcpy` via got with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=? (`jalr` at 0x2303fbc).
  The `bne` at 0x2303f9c is taken when v0(=ret(__glSPDlalloc2)) != 0 and falls through when v0(=ret(__glSPDlalloc2)) == 0.
  The `jr` at 0x2303fac returns with v0 = ?.

- `__glce_LoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x230f7d0, 116 bytes) Inferred.
  Loads 8 bytes from abs 0x1558 into `v0` (`ld` at 0x230f7d0).
  Loads 8 bytes from abs 0x1020 into `at` (`ld` at 0x230f7e8).
  Loads 8 bytes from [0x1020]:8 +0x1fa8 into `at` (`ld` at 0x230f800).
  Performs 3 8-byte stores to abs 0x1558, including `sd` at 0x230f80c, `sd` at 0x230f824, `sd` at 0x230f840.
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x230f818).
  Calls `glLoadMatrixf` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x230f808).
  Calls `glLoadMatrixf` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x230f820).
  The `jr` at 0x230f83c returns with v0 = ret(glLoadMatrixf); f0 = ret(glLoadMatrixf).

- `__glce_LoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x230f850, 116 bytes) Inferred.
  Loads 8 bytes from abs 0x1560 into `v0` (`ld` at 0x230f850).
  Loads 8 bytes from abs 0x1020 into `at` (`ld` at 0x230f868).
  Loads 8 bytes from [0x1020]:8 +0x1fb0 into `at` (`ld` at 0x230f880).
  Performs 3 8-byte stores to abs 0x1560, including `sd` at 0x230f88c, `sd` at 0x230f8a4, `sd` at 0x230f8c0.
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x230f898).
  Calls `glLoadMatrixd` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x230f888).
  Calls `glLoadMatrixd` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x230f8a0).
  The `jr` at 0x230f8bc returns with v0 = ret(glLoadMatrixd); f0 = ret(glLoadMatrixd).

- `glLoadMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x2318b0c, 12 bytes) Inferred.
  Loads 8 bytes from abs 0x1558 into `t9` (`ld` at 0x2318b0c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318b10).

- `glLoadMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`, 0x2318b18, 12 bytes) Inferred.
  Loads 8 bytes from abs 0x1560 into `t9` (`ld` at 0x2318b18).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318b1c).

- `__glXBindHWContextToWindow` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8af05c, 748 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `v1` (`lw` at 0xd8af078).
  Performs 2 4-byte loads from abs 0x1014, including `lw` at 0xd8af090, `lw` at 0xd8af100.
  Performs 51 4-byte loads from ? (base unknown), including `lw` at 0xd8af098, `lw` at 0xd8af0b8, `lw` at 0xd8af0fc.
  Loads 4 bytes from [0x1014] +0x0 into `t7` (`lw` at 0xd8af09c).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x14, including `lw` at 0xd8af0e0, `lw` at 0xd8af1d8, `lw` at 0xd8af2cc.
  Stores 4 bytes from `t8` to [0x1014] +0x0 (`sw` at 0xd8af104).
  Performs 4 1-byte stores to ? (base unknown), including `sb` at 0xd8af110, `sb` at 0xd8af208, `sb` at 0xd8af2f8.
  Performs 7 4-byte stores to ? (base unknown), including `sw` at 0xd8af210, `sw` at 0xd8af21c, `sw` at 0xd8af224.
  Calls `__glXHWAttach` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8af084).
  Calls `Ioctl [0xd8afdfc]` via register-constant with a0=?, a1=0x3ea, a2=sp-12, a3=? (`jalr` at 0xd8af0c0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8ddd64, a2=?, a3=? (`jalr` at 0xd8af0e8).
  Calls `Ioctl [0xd8afdfc]` via register-constant with a0=?, a1=0x3eb, a2=sp-24, a3=? (`jalr` at 0xd8af1b8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8ddd7c, a2=?, a3=? (`jalr` at 0xd8af1e0).
  Calls `Ioctl [0xd8afdfc]` via register-constant with a0=?, a1=0x400, a2=sp-44, a3=? (`jalr` at 0xd8af2a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8ddd94, a2=?, a3=? (`jalr` at 0xd8af2d4).
  The `beq` at 0xd8af0a8 is taken when t7(=[[0x1014]]) == a3(?) and falls through when t7(=[[0x1014]]) != a3(?).
  The `bgez` at 0xd8af0cc is taken when v0(=ret(Ioctl)) >= 0 (signed) and falls through when v0(=ret(Ioctl)) < 0 (signed).
  The `bne` at 0xd8af10c is taken when v0(?) != 0 and falls through when v0(?) == 0.
  The `bnel` at 0xd8af11c is taken when t1(?) != t2(?) and falls through when t1(?) == t2(?).
  The `beql` at 0xd8af12c is taken when t3(?) == t4(?) and falls through when t3(?) != t4(?).
  The `beql` at 0xd8af13c is taken when t5(?) == t6(?) and falls through when t5(?) != t6(?).
  The `bnel` at 0xd8af150 is taken when t9(?) != at(=0x3) and falls through when t9(?) == at(=0x3).
  The `beql` at 0xd8af168 is taken when t0(?) >= 0x2 (signed) and falls through when t0(?) < 0x2 (signed).
  The `beql` at 0xd8af178 is taken when t1(?) >= 0x3 (signed) and falls through when t1(?) < 0x3 (signed).
  The `bne` at 0xd8af1c8 is taken when v0(=ret(Ioctl)) != at(=-0x1) and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `beql` at 0xd8af200 is taken when t7(?) == t8(?) and falls through when t7(?) != t8(?).
  The `bnel` at 0xd8af238 is taken when t5(?) != at(=0x1) and falls through when t5(?) == at(=0x1).
  The `beql` at 0xd8af248 is taken when t6(?) >= 0x3 (signed) and falls through when t6(?) < 0x3 (signed).
  The `bne` at 0xd8af2b8 is taken when v0(=ret(Ioctl)) != at(=-0x1) and falls through when v0(=ret(Ioctl)) == at(=-0x1).
  The `bnel` at 0xd8af2f4 is taken when t7(?) != t8(?) and falls through when t7(?) == t8(?).
  The `beql` at 0xd8af308 is taken when t0(?) == t2(?) and falls through when t0(?) != t2(?).
  The `jr` at 0xd8af340 returns with v0 = ?.

- `__glx_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8bcf3c, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8bcf4c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8bcf5c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8bcf68).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8bcf74).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8bcf78).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8bcf94).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd8bcfa8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4] (`jalr` at 0xd8bcf88).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd8bcfb8).
  The `beq` at 0xd8bcfa4 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `jr` at 0xd8bcfd0 returns with v0 = ?.

- `__glx_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8bcfd8, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8bcfe8).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8bcff8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8bd004).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8bd010).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8bd014).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8bd030).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd8bd044).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4] (`jalr` at 0xd8bd024).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd8bd054).
  The `beq` at 0xd8bd040 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  The `jr` at 0xd8bd06c returns with v0 = ?.

- `glXCreateWindow` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d69b0, 408 bytes) Inferred.
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d6a00, `lw` at 0xd8d6a0c, `lw` at 0xd8d6a28.
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v1` (`lw` at 0xd8d6a04).
  Loads 4 bytes from a3 (arg3 at entry) +0x8 into `t6` (`lw` at 0xd8d6a18).
  Loads 4 bytes from ? (base unknown) into `t6` (`lw` at 0xd8d6a24).
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d6a30, `lw` at 0xd8d6a48, `lw` at 0xd8d6a74.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd8d6a34).
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `t7` (`lw` at 0xd8d6a4c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x64 (`sw` at 0xd8d6a7c).
  Stores 2 bytes from `t0` to [a0+108] +0x2 (`sh` at 0xd8d6a88).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd8d6a8c, `sb` at 0xd8d6ab4.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `t3` (`lw` at 0xd8d6a90).
  Stores 4 bytes from `t2` to a0 (arg0 at entry) +0x6c (`sw` at 0xd8d6aa4).
  Stores 4 bytes from `t4` to a0 (arg0 at entry) +0x60 (`sw` at 0xd8d6aa8).
  Stores 1 byte from `a1` to [a0+108] +0x1 (`sb` at 0xd8d6ab0).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `t6` (`lw` at 0xd8d6ab8).
  Stores 4 bytes from `t6` to [a0+108] +0x4 (`sw` at 0xd8d6abc).
  Loads 4 bytes from a1 (arg1 at entry) +0x48 into `t9` (`lw` at 0xd8d6ac0).
  Stores 4 bytes from `t9` to [a0+108] +0x8 (`sw` at 0xd8d6ac4).
  Stores 4 bytes from `t7` to [a0+108] +0xc (`sw` at 0xd8d6acc).
  Loads 4 bytes from a0 (arg0 at entry) +0x2c into `t9` (`lw` at 0xd8d6ad4).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0xd8d6aec, `sw` at 0xd8d6af0.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d6afc, `lw` at 0xd8d6b14.
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd8d6b00).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d69dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd8d6a3c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d6a68).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x1f, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd8d6ad8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8d6b08).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d6b24).
  The `bne` at 0xd8d69ec is taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beql` at 0xd8d69fc is taken when a3 == 0 and falls through when a3 != 0.
  The `beql` at 0xd8d6a08 is taken when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `beq` at 0xd8d6a10 is taken when v1(=[a3]) == 0 and falls through when v1(=[a3]) != 0.
  The `bnel` at 0xd8d6a20 is taken when t6(?) != 0 and falls through when t6(?) == 0.
  The `beql` at 0xd8d6a2c is taken when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd8d6a58 is taken when t7(=[a0+112]) >= t8(=[a0+108]+24) (unsigned) and falls through when t7(=[a0+112]) < t8(=[a0+108]+24) (unsigned).
  The `beql` at 0xd8d6af8 is taken when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  The `beql` at 0xd8d6b1c is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `jr` at 0xd8d6b40 returns with v0 = ?.

- `glXDestroyWindow` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d6b48, 280 bytes) Inferred.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d6b80, `lw` at 0xd8d6c10.
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d6b88, `lw` at 0xd8d6ba0, `lw` at 0xd8d6bcc.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd8d6b8c).
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `t6` (`lw` at 0xd8d6ba4).
  Performs 2 4-byte stores to a0 (arg0 at entry) +0x64, including `sw` at 0xd8d6bb4, `sw` at 0xd8d6bd0.
  Stores 2 bytes from `t8` to [a0+108] +0x2 (`sh` at 0xd8d6bdc).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd8d6be0, `sb` at 0xd8d6c04.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `t2` (`lw` at 0xd8d6be4).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x6c (`sw` at 0xd8d6bf4).
  Stores 4 bytes from `t3` to a0 (arg0 at entry) +0x60 (`sw` at 0xd8d6bf8).
  Stores 1 byte from `a1` to [a0+108] +0x1 (`sb` at 0xd8d6c00).
  Stores 4 bytes from `t5` to [a0+108] +0x4 (`sw` at 0xd8d6c0c).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8d6c18, `lw` at 0xd8d6c30.
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd8d6c1c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d6b6c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d6b94).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d6bc0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x20, a2=?, a3=? (`jalr` at 0xd8d6c24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8d6c40).
  The `beq` at 0xd8d6b78 is taken when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` at 0xd8d6b84 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd8d6bb0 is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned).
  The `beql` at 0xd8d6c14 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  The `beql` at 0xd8d6c38 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `jr` at 0xd8d6c58 returns with v0 = ?.

- `glXBindChannelToWindowSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8d8b50, 316 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8d8b60).
  Loads 4 bytes from [0x1014] +0x114 into `t7` (`lw` at 0xd8d8b80).
  Performs 2 1-byte stores to ? (base unknown), including `sb` at 0xd8d8c34, `sb` at 0xd8d8c70.
  Performs 3 4-byte loads from ? (base unknown), including `lw` at 0xd8d8c3c, `lw` at 0xd8d8c44, `lw` at 0xd8d8c4c.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d8b88).
  Calls `__glXInitChannelRectState [0xd8d89b8]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize) (`jalr` at 0xd8d8bb0).
  Calls `XSGIvcSetPlatformParameter` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64 (`jalr` at 0xd8d8be8).
  Calls `XSync` via got with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jalr` at 0xd8d8c00).
  Calls `(unknown callee)` via register with a0=?, a1=0x1, a2=?, a3=? (`jalr` at 0xd8d8c50).
  The `beq` at 0xd8d8b94 is taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd8d8bb8 is taken when v0(=ret(__glXInitChannelRectState)) == 0 and falls through when v0(=ret(__glXInitChannelRectState)) != 0.
  The `beq` at 0xd8d8c30 is taken when (t5(?) & 0xff) == 0 and falls through when (t5(?) & 0xff) != 0.
  The `bnel` at 0xd8d8c68 is taken when t0(=a3) != 0 and falls through when t0(=a3) == 0.
  The `jr` at 0xd8d8c84 returns with v0 = ?.

- `__glOdysplc_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda53618, 72 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `v0` (`lw` at 0xda53624).
  Stores 1 byte from `zero` to [0x1010] +0x16948 (`sb` at 0xda5363c).
  Calls `__glsplc_LoadMatrixf [0xdb9f13c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda53644).
  The `jr` at 0xda53658 returns with v0 = ret(__glsplc_LoadMatrixf); f0 = ret(__glsplc_LoadMatrixf).

- `__glOdysplc_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda53660, 72 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `v0` (`lw` at 0xda5366c).
  Stores 1 byte from `zero` to [0x1010] +0x16948 (`sb` at 0xda53684).
  Calls `__glsplc_LoadMatrixd [0xdb9f19c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda5368c).
  The `jr` at 0xda536a0 returns with v0 = ret(__glsplc_LoadMatrixd); f0 = ret(__glsplc_LoadMatrixd).

- `__glOdySpanEyeZ24ToWindowZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda85c6c, 444 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x1f4 into `t0` (`lw` at 0xda85ca0).
  Loads 4 bytes from a1 (arg1 at entry) +0xa8 into `v0` (`lw` at 0xda85ca4).
  Loads 8 bytes from a1 (arg1 at entry) +0x200 into `$f16` (`ldc1` at 0xda85ca8).
  Loads 8 bytes from [a1+500] +0x30 into `$f12` (`ldc1` at 0xda85cac).
  Loads 8 bytes from [a1+500] +0x40 into `$f10` (`ldc1` at 0xda85cb0).
  Loads 8 bytes from [a1+500] +0x38 into `$f20` (`ldc1` at 0xda85cc8).
  Loads 8 bytes from [a1+500] +0x48 into `$f22` (`ldc1` at 0xda85ccc).
  Loads 8 bytes from [a1+500] +0x0 into `$f28` (`ldc1` at 0xda85cd4).
  Loads 1 byte from ? (base unknown) into `t8` (`lbu` at 0xda85d0c).
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0xda85d34).
  Performs 3 4-byte stores to ? (base unknown), including `swc1` at 0xda85dc0, `swc1` at 0xda85de8, `swc1` at 0xda85dfc.
  The `blez` at 0xda85ce4 is taken when v0(=[a1+168]) <= 0 (signed) and falls through when v0(=[a1+168]) > 0 (signed).
  The `bc1tl` at 0xda85d84 is taken when f16 == f2 (c.eq.d at 0xda85d7c) and falls through when not (f16 == f2 (c.eq.d at 0xda85d7c)).
  The `bc1fl` at 0xda85dac is taken when not (f12 < f10 (c.lt.s at 0xda85da4)) and falls through when f12 < f10 (c.lt.s at 0xda85da4).
  The `bc1fl` at 0xda85dd0 is taken when not (f14 < f2 (c.lt.d at 0xda85dc8)) and falls through when f14 < f2 (c.lt.d at 0xda85dc8).
  The `bne` at 0xda85e00 is taken when t1(?) != v0(=[a1+168]) and falls through when t1(?) == v0(=[a1+168]).
  The `jr` at 0xda85e20 returns with v0 = [a1+168].

- `__glOdySpanEyeZ16ToWindowZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda85e28, 444 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x1f4 into `t0` (`lw` at 0xda85e5c).
  Loads 4 bytes from a1 (arg1 at entry) +0xa8 into `v0` (`lw` at 0xda85e60).
  Loads 8 bytes from a1 (arg1 at entry) +0x200 into `$f16` (`ldc1` at 0xda85e64).
  Loads 8 bytes from [a1+500] +0x30 into `$f12` (`ldc1` at 0xda85e68).
  Loads 8 bytes from [a1+500] +0x40 into `$f10` (`ldc1` at 0xda85e6c).
  Loads 8 bytes from [a1+500] +0x38 into `$f20` (`ldc1` at 0xda85e84).
  Loads 8 bytes from [a1+500] +0x48 into `$f22` (`ldc1` at 0xda85e88).
  Loads 8 bytes from [a1+500] +0x0 into `$f28` (`ldc1` at 0xda85e90).
  Performs 2 2-byte loads from ? (base unknown), including `lhu` at 0xda85ec8, `lhu` at 0xda85eec.
  Performs 3 4-byte stores to ? (base unknown), including `swc1` at 0xda85f7c, `swc1` at 0xda85fa4, `swc1` at 0xda85fb8.
  The `blez` at 0xda85ea0 is taken when v0(=[a1+168]) <= 0 (signed) and falls through when v0(=[a1+168]) > 0 (signed).
  The `bc1tl` at 0xda85f40 is taken when f16 == f2 (c.eq.d at 0xda85f38) and falls through when not (f16 == f2 (c.eq.d at 0xda85f38)).
  The `bc1fl` at 0xda85f68 is taken when not (f12 < f10 (c.lt.s at 0xda85f60)) and falls through when f12 < f10 (c.lt.s at 0xda85f60).
  The `bc1fl` at 0xda85f8c is taken when not (f14 < f2 (c.lt.d at 0xda85f84)) and falls through when f14 < f2 (c.lt.d at 0xda85f84).
  The `bne` at 0xda85fbc is taken when t1(?) != v0(=[a1+168]) and falls through when t1(?) == v0(=[a1+168]).
  The `jr` at 0xda85fdc returns with v0 = [a1+168].

- `__glOdysseyImageMovePixelsDMAtoHost` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda9fa78, 2500 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `t6` (`lw` at 0xda9fa8c).
  Loads 4 bytes from a2 (arg2 at entry) +0x14 into `$f8` (`lwc1` at 0xda9fae8).
  Loads 4 bytes from a2 (arg2 at entry) +0x10 into `$f4` (`lwc1` at 0xda9faec).
  Loads 4 bytes from a2 (arg2 at entry) +0x1c into `$f4` (`lwc1` at 0xda9fb0c).
  Loads 4 bytes from a2 (arg2 at entry) +0x18 into `$f16` (`lwc1` at 0xda9fb14).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `$f8` (`lwc1` at 0xda9fb2c).
  Loads 4 bytes from a2 (arg2 at entry) +0x4 into `$f16` (`lwc1` at 0xda9fb44).
  Loads 4 bytes from a2 (arg2 at entry) +0x8 into `$f4` (`lwc1` at 0xda9fb58).
  Loads 4 bytes from a2 (arg2 at entry) +0xc into `$f8` (`lwc1` at 0xda9fb6c).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x24, including `lw` at 0xda9fb80, `lw` at 0xda9fd18.
  Performs 3 1-byte loads from a0 (arg0 at entry) +0x0, including `lbu` at 0xda9fb90, `lbu` at 0xda9feb4, `lbu` at 0xda9fef4.
  Performs 3 4-byte loads from a0 (arg0 at entry) +0xc, including `lw` at 0xda9fb9c, `lw` at 0xda9fcd8, `lw` at 0xda9fcf8.
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x8, including `lw` at 0xda9fba0, `lw` at 0xda9fc44, `lw` at 0xda9fc54.
  Performs 2 1-byte loads from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9fbe4, `lbu` at 0xdaa0038.
  Performs 4 4-byte loads from ? (base unknown), including `lw` at 0xda9fc04, `lw` at 0xda9ff04, `lw` at 0xdaa0360.
  Performs 2 4-byte loads from a1 (arg1 at entry) +0x28, including `lw` at 0xda9fc6c, `lw` at 0xda9fc78.
  Loads 4 bytes from a1 (arg1 at entry) +0x2c into `a1` (`lw` at 0xda9fc7c).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t7` (`lw` at 0xda9fcb8).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `t8` (`lw` at 0xda9fcbc).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x18, including `lw` at 0xda9fd34, `lw` at 0xda9fd3c, `lw` at 0xda9fdbc.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x10, including `lw` at 0xda9fd48, `lw` at 0xda9fd54.
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x18 (`sw` at 0xda9fd4c).
  Loads 4 bytes from a0 (arg0 at entry) +0x28 into `t1` (`lw` at 0xda9ff58).
  Performs 4 4-byte loads from a1 (arg1 at entry) +0x10, including `lw` at 0xda9ffc8, `lw` at 0xdaa0024, `lw` at 0xdaa03a4.
  Performs 3 4-byte loads from a1 (arg1 at entry) +0xc, including `lw` at 0xda9ffcc, `lw` at 0xdaa03a0, `lw` at 0xdaa0400.
  Loads 4 bytes from (([a1+16] << 0x2) + sp-132) +0x0 into `v0` (`lw` at 0xdaa003c).
  Loads 4 bytes from a1 (arg1 at entry) +0x14 into `t7` (`lw` at 0xdaa0040).
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `v0` (`lw` at 0xdaa00dc).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `t9` (`lw` at 0xdaa01e0).
  Loads 4 bytes from table(0x21dd8) +0x0 into `t8` (`lw` at 0xdaa037c).
  Calls `memset` via got with a0=sp-40, a1=0x0, a2=0x20, a3=a3 at entry (arg3) (`jalr` at 0xda9fab8).
  Calls `memset` via got with a0=sp-152, a1=0x0, a2=0x14, a3=? (`jalr` at 0xda9fad4).
  Calls `__glOdysseyImageCalcXferReadParams [0xdaa3354]` via register-constant with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-152 (`jalr` at 0xda9fba8).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xda9fbd4).
  Calls `ImageCalcDmaFieldOffsets [0xdaa2b64]` via register-constant with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=? (`jalr` at 0xda9fc98).
  Calls `__glSpecElementsPerGroup [0xdaf8340]` via register-constant with a0=[a0+8], a1=[a0+12], a2=?, a3=? (`jalr` at 0xda9fce4).
  Calls `__glSpecBytesPerElement [0xdaf8444]` via register-constant with a0=[a0+12], a1=?, a2=?, a3=? (`jalr` at 0xda9fd00).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9fda8).
  Calls `__glOdysseyOpenPMObjReference [0xdaacf68]` via register-constant with a0=?, a1=[a1+12], a2=[a1+16], a3=[a1+16] (`jalr` at 0xda9ffe8).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdaa0014).
  Calls `ImageToDmaHostPixelSize [0xdaa3330]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdaa02f0).
  Calls `__glOdysseyReadFromPMObj [0xdaacb84]` via register-constant with a0=?, a1=[a1+12], a2=[a1+16], a3=? (`jalr` at 0xdaa03c4).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdaa03e4).
  Calls `__glOdysseyClosePMObjReference [0xdaad5a0]` via register-constant with a0=?, a1=[a1+12], a2=[a1+16], a3=[a1+16] (`jalr` at 0xdaa0404).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdaa0420).
  The `bne` at 0xda9fbc4 is taken when t8(?) != 0 and falls through when t8(?) == 0.
  The `beql` at 0xda9fbf0 is taken when t9(=[a1+9]:1) == 0 and falls through when t9(=[a1+9]:1) != 0.
  The `beq` at 0xda9fc10 is taken when v0(?) == at(=0x405) and falls through when v0(?) != at(=0x405).
  The `beq` at 0xda9fc18 is taken when v0(?) == at(=0x402) and falls through when v0(?) != at(=0x402).
  The `bnel` at 0xda9fc20 is taken when v0(?) != at(=0x403) and falls through when v0(?) == at(=0x403).
  The `beq` at 0xda9fc30 is taken when v0(?) == at(=0x407) and falls through when v0(?) != at(=0x407).
  The `beq` at 0xda9fc38 is taken when v0(?) == at(=0x401) and falls through when v0(?) != at(=0x401).
  The `bnel` at 0xda9fc40 is taken when v0(?) != at(=0x403) and falls through when v0(?) == at(=0x403).
  The `bnel` at 0xda9fc68 is taken when v1(?) < 0x1 (unsigned) and falls through when v1(?) >= 0x1 (unsigned).
  The `beq` at 0xda9fcb0 is taken when v0(=ret(ImageCalcDmaFieldOffsets)) == 0 and falls through when v0(=ret(ImageCalcDmaFieldOffsets)) != 0.
  The `beq` at 0xda9fcc4 is taken when t7(=[a0+4]) == t8(=[a1+4]) and falls through when t7(=[a0+4]) != t8(=[a1+4]).
  The `bnel` at 0xda9fd30 is taken when t9(=[a0+36]) != at(=0x1) and falls through when t9(=[a0+36]) == at(=0x1).
  The `beql` at 0xda9fd44 is taken when v0(=[a0+24]) >= a1(?) (unsigned) and falls through when v0(=[a0+24]) < a1(?) (unsigned).
  The `bgez` at 0xda9fd68 is taken when t7(?) >= 0 (signed) and falls through when t7(?) < 0 (signed).
  The `bgez` at 0xda9fd80 is taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bgez` at 0xda9fdd0 is taken when t8(=[a0+24]) >= 0 (signed) and falls through when t8(=[a0+24]) < 0 (signed).
  The `beq` at 0xda9fe14 is taken when (t4(?) & 0x78) == 0 and falls through when (t4(?) & 0x78) != 0.
  The `bne` at 0xda9fe40 is taken when (t4(?) & 0x78) != 0 and falls through when (t4(?) & 0x78) == 0.
  The `bltz` at 0xda9fe68 is taken when t4(?) < 0 (signed) and falls through when t4(?) >= 0 (signed).
  The `beq` at 0xda9fe78 is taken when t3(?) >= t2(?) (signed) and falls through when t3(?) < t2(?) (signed).
  The `beq` at 0xda9fe8c is taken when t2(?) >= t3(?) (signed) and falls through when t2(?) < t3(?) (signed).
  The `beql` at 0xda9feb0 is taken when t4(?) >= t7(?) (unsigned) and falls through when t4(?) < t7(?) (unsigned).
  The `beq` at 0xda9febc is taken when t3(?) >= t2(?) (signed) and falls through when t3(?) < t2(?) (signed).
  The `beq` at 0xda9fed0 is taken when t2(?) >= t3(?) (signed) and falls through when t2(?) < t3(?) (signed).
  The `bne` at 0xda9fefc is taken when t9(=[a0]:1) != 0 and falls through when t9(=[a0]:1) == 0.
  The `bne` at 0xda9ff14 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0xda9ff24 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xda9ff30 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0xda9ff44 is taken when t2(?) >= t3(?) (signed) and falls through when t2(?) < t3(?) (signed).
  The `beq` at 0xda9ff80 is taken when a2(?) >= a1(?) (signed) and falls through when a2(?) < a1(?) (signed).
  The `beq` at 0xda9ff94 is taken when t3(?) >= t2(?) (signed) and falls through when t3(?) < t2(?) (signed).
  The `bne` at 0xdaa0004 is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0 and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0.
  The `beq` at 0xdaa0048 is taken when t8(=[a1+9]:1) == 0 and falls through when t8(=[a1+9]:1) != 0.
  The `beq` at 0xdaa00a8 is taken when a1(?) >= a2(?) (signed) and falls through when a1(?) < a2(?) (signed).
  The `beql` at 0xdaa00c8 is taken when a3(?) >= t0(?) (signed) and falls through when a3(?) < t0(?) (signed).
  The `bnel` at 0xdaa00e4 is taken when v0(=[a1+24]) != at(=0x1000) and falls through when v0(=[a1+24]) == at(=0x1000).
  The `beql` at 0xdaa0118 is taken when a2(?) >= a1(?) (signed) and falls through when a2(?) < a1(?) (signed).
  The `beq` at 0xdaa0130 is taken when a1(?) >= a2(?) (signed) and falls through when a1(?) < a2(?) (signed).
  The `beq` at 0xdaa0148 is taken when t0(?) >= a3(?) (signed) and falls through when t0(?) < a3(?) (signed).
  The `beq` at 0xdaa0160 is taken when a3(?) >= t0(?) (signed) and falls through when a3(?) < t0(?) (signed).
  The `beq` at 0xdaa0250 is taken when t3(?) >= t2(?) (signed) and falls through when t3(?) < t2(?) (signed).
  The `beq` at 0xdaa0264 is taken when t2(?) >= t3(?) (signed) and falls through when t2(?) < t3(?) (signed).
  The `beq` at 0xdaa0290 is taken when t3(?) >= t2(?) (signed) and falls through when t3(?) < t2(?) (signed).
  The `beq` at 0xdaa02a4 is taken when t2(?) >= t3(?) (signed) and falls through when t2(?) < t3(?) (signed).
  The `beq` at 0xdaa0370 is taken when (t6(?) & 0x400) == 0 and falls through when (t6(?) & 0x400) != 0.
  The `beql` at 0xdaa0380 is taken when t8(=entry(0x21dd8)) == 0 and falls through when t8(=entry(0x21dd8)) != 0.
  The `bnel` at 0xdaa0390 is taken when (t7(?) & 0x4) != 0 and falls through when (t7(?) & 0x4) == 0.
  The `bne` at 0xdaa03d4 is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0 and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0.
  The `bne` at 0xdaa0410 is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0 and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0.
  The `jr` at 0xdaa0434 returns with v0 = ?.

- `__glOdyim_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacb19c, 132 bytes) Inferred.
  Loads 4 bytes from abs 0x1018 into `t6` (`lw` at 0xdacb1b8).
  Loads 4 bytes from abs 0x1010 into `a1` (`lw` at 0xdacb1c0).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdacb1d4).
  Calls `__glim_LoadMatrixf [0xdb83b8c]` via register-constant with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdacb1ec).
  Calls `dirtyMatrix [0xdacad90]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdacb204).
  The `bne` at 0xdacb1c4 is taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `jr` at 0xdacb218 returns with v0 = ?.

- `__glOdyim_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacb220, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1018 into `t6` (`lw` at 0xdacb23c).
  Loads 4 bytes from abs 0x1010 into `a1` (`lw` at 0xdacb244).
  Loads 4 bytes from ? (base unknown) into `t7` (`lw` at 0xdacb288).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `$f4` (`ldc1` at 0xdacb298).
  Stores 8 bytes from `$f4` to table(0x16690) +0x0 (`sdc1` at 0xdacb2a4).
  Loads 8 bytes from a0 (arg0 at entry) +0x58 into `$f6` (`ldc1` at 0xdacb2a8).
  Stores 8 bytes from `$f6` to table(0x16698) +0x0 (`sdc1` at 0xdacb2b4).
  Loads 8 bytes from a0 (arg0 at entry) +0x70 into `$f8` (`ldc1` at 0xdacb2b8).
  Stores 8 bytes from `$f8` to table(0x166a0) +0x0 (`sdc1` at 0xdacb2c4).
  Loads 8 bytes from a0 (arg0 at entry) +0x78 into `$f10` (`ldc1` at 0xdacb2c8).
  Stores 8 bytes from `$f10` to table(0x166a8) +0x0 (`sdc1` at 0xdacb2d4).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdacb258).
  Calls `__glim_LoadMatrixd [0xdb83c7c]` via register-constant with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdacb274).
  Calls `dirtyMatrix [0xdacad90]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdacb2e4).
  The `bne` at 0xdacb248 is taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  The `bne` at 0xdacb290 is taken when t7(?) != at(=0x1701) and falls through when t7(?) == at(=0x1701).
  The `jr` at 0xdacb2f8 returns with v0 = ?.

- `__glOdysseyEyeToWindowZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacbd30, 176 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `v0` (`lw` at 0xdacbd3c).
  Loads 8 bytes from [0x1010] +0x16698 into `$f0` (`ldc1` at 0xdacbd54).
  Loads 8 bytes from [0x1010] +0x166a8 into `$f16` (`ldc1` at 0xdacbd5c).
  Loads 8 bytes from [0x1010] +0x16690 into `$f2` (`ldc1` at 0xdacbd64).
  Loads 8 bytes from [0x1010] +0x166a0 into `$f14` (`ldc1` at 0xdacbd74).
  The `bc1tl` at 0xdacbd90 is taken when f6 == f22 (c.eq.d at 0xdacbd88) and falls through when not (f6 == f22 (c.eq.d at 0xdacbd88)).
  The `jr` at 0xdacbdd8 returns with v0 = [0x1010].

- `__glOdysseyNormalizedEyeToWindowZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdacbde0, 220 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `a0` (`lw` at 0xdacbdec).
  Loads 1 byte from [0x1010] +0x166b8 into `t6` (`lbu` at 0xdacbe08).
  Loads 8 bytes from [0x1010] +0x16660 into `$f0` (`ldc1` at 0xdacbe10).
  Performs 2 8-byte loads from ? (base unknown), including `ldc1` at 0xdacbe30, `ldc1` at 0xdacbe34.
  Calls `__glOdysseyUpdateTransform [0xdac9830]` via register-constant with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdacbe20).
  Calls `__glOdysseyEyeToWindowZ [0xdacbd30]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdacbe50).
  The `beql` at 0xdacbe0c is taken when t6(=[[0x1010]+91832]:1) == 0 and falls through when t6(=[[0x1010]+91832]:1) != 0.
  The `bc1fl` at 0xdacbe78 is taken when not (f2 < f4 (c.lt.d at 0xdacbe68)) and falls through when f2 < f4 (c.lt.d at 0xdacbe68).
  The `bc1fl` at 0xdacbea0 is taken when not (f8 < f2 (c.lt.d at 0xdacbe98)) and falls through when f8 < f2 (c.lt.d at 0xdacbe98).
  The `jr` at 0xdacbeb4 returns with v0 = ret(__glOdysseyEyeToWindowZ); f0 = ret(__glOdysseyEyeToWindowZ).

- `__glDoBlendMax` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb122ac, 128 bytes) Inferred.
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `$f4` (`lwc1` at 0xdb122b4).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `$f0` (`lwc1` at 0xdb122b8).
  Performs 2 4-byte loads from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdb122c8, `lwc1` at 0xdb122d0.
  Stores 4 bytes from `$f0` to a3 (arg3 at entry) +0x0 (`swc1` at 0xdb122cc).
  Loads 4 bytes from a3 (arg3 at entry) +0x4 into `$f6` (`lwc1` at 0xdb122d4).
  Performs 2 4-byte loads from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdb122e4, `lwc1` at 0xdb122ec.
  Stores 4 bytes from `$f0` to a3 (arg3 at entry) +0x4 (`swc1` at 0xdb122e8).
  Loads 4 bytes from a3 (arg3 at entry) +0x8 into `$f8` (`lwc1` at 0xdb122f0).
  Performs 2 4-byte loads from a2 (arg2 at entry) +0xc, including `lwc1` at 0xdb12300, `lwc1` at 0xdb12308.
  Stores 4 bytes from `$f0` to a3 (arg3 at entry) +0x8 (`swc1` at 0xdb12304).
  Loads 4 bytes from a3 (arg3 at entry) +0xc into `$f10` (`lwc1` at 0xdb1230c).
  Stores 4 bytes from `$f0` to a3 (arg3 at entry) +0xc (`swc1` at 0xdb12320).
  The `bc1fl` at 0xdb122c4 is taken when not (f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xdb122bc)) and falls through when f4(=[a3]) < f0(=[a2]) (c.lt.s at 0xdb122bc).
  The `bc1fl` at 0xdb122e0 is taken when not (f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xdb122d8)) and falls through when f6(=[a3+4]) < f0(=[a2+4]) (c.lt.s at 0xdb122d8).
  The `bc1fl` at 0xdb122fc is taken when not (f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xdb122f4)) and falls through when f8(=[a3+8]) < f0(=[a2+8]) (c.lt.s at 0xdb122f4).
  The `bc1f` at 0xdb12318 is taken when not (f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xdb12310)) and falls through when f10(=[a3+12]) < f0(=[a2+12]) (c.lt.s at 0xdb12310).
  The `jr` at 0xdb12324 returns with v0 = ?; f0 = [a2+12].

- `__glFindWindowSize` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb1afdc, 220 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `t9` (`lw` at 0xdb1b004).
  Loads 4 bytes from a0 (arg0 at entry) +0xe6c into `t8` (`lw` at 0xdb1b01c).
  Loads 4 bytes from a0 (arg0 at entry) +0xe70 into `t1` (`lw` at 0xdb1b030).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x48, including `lw` at 0xdb1b038, `lw` at 0xdb1b054.
  Loads 4 bytes from a0 (arg0 at entry) +0xe74 into `t3` (`lw` at 0xdb1b06c).
  Loads 4 bytes from a0 (arg0 at entry) +0xe78 into `t5` (`lw` at 0xdb1b080).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-4, a2=sp-8, a3=sp-12 (`jalr` at 0xdb1b010).
  Calls `__glChangeWindowSize [0xdb1aeb8]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdb1b048).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-20, a2=sp-24, a3=? (`jalr` at 0xdb1b060).
  Calls `__glChangeReadWindowSize [0xdb1afd0]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdb1b098).
  The `bne` at 0xdb1b028 is taken when t7(?) != t8(=[a0+3692]) and falls through when t7(?) == t8(=[a0+3692]).
  The `beql` at 0xdb1b034 is taken when t0(?) == t1(=[a0+3696]) and falls through when t0(?) != t1(=[a0+3696]).
  The `bne` at 0xdb1b078 is taken when t2(?) != t3(=[a0+3700]) and falls through when t2(?) == t3(=[a0+3700]).
  The `beql` at 0xdb1b084 is taken when t4(?) == t5(=[a0+3704]) and falls through when t4(?) != t5(=[a0+3704]).
  The `jr` at 0xdb1b0b0 returns with v0 = ?.

- `SubdivRegCreaseEdge` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb56610, 300 bytes) Inferred.
  Performs 10 4-byte loads from ? (base unknown), including `lwc1` at 0xdb56654, `lwc1` at 0xdb56658, `lwc1` at 0xdb566b4.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0xdb56680, `swc1` at 0xdb566d8, `swc1` at 0xdb566f4.
  The `blez` at 0xdb56620 is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `beq` at 0xdb5662c is taken when (a0 & 0x3) == 0 and falls through when (a0 & 0x3) != 0.
  The `bne` at 0xdb5667c is taken when t2(?) != v0(?) and falls through when t2(?) == v0(?).
  The `beq` at 0xdb56684 is taken when v0(?) == a0 and falls through when v0(?) != a0.
  The `bne` at 0xdb5672c is taken when t1(?) != t2(=((a0 << 0x2) + a1)) and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The `jr` at 0xdb56734 returns with v0 = ?.

- `SubdivIRRegCreaseEdge` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb5673c, 404 bytes) Inferred.
  Performs 10 4-byte loads from ? (base unknown), including `lwc1` at 0xdb56798, `lwc1` at 0xdb5679c, `lwc1` at 0xdb56818.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0xdb567d0, `swc1` at 0xdb56848, `swc1` at 0xdb56870.
  The `blez` at 0xdb5674c is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `beq` at 0xdb56758 is taken when (a0 & 0x3) == 0 and falls through when (a0 & 0x3) != 0.
  The `bne` at 0xdb567cc is taken when t2(?) != v0(?) and falls through when t2(?) == v0(?).
  The `beq` at 0xdb567d4 is taken when v0(?) == a0 and falls through when v0(?) != a0.
  The `bne` at 0xdb568c0 is taken when t1(?) != t2(=((a0 << 0x2) + a1)) and falls through when t1(?) == t2(=((a0 << 0x2) + a1)).
  The `jr` at 0xdb568c8 returns with v0 = ?.

- `__glReCompute2DMatrix` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb85f74, 168 bytes) Inferred.
  Performs 2 4-byte loads from a1 (arg1 at entry) +0x40, including `lw` at 0xdb85f80, `lw` at 0xdb8600c.
  Loads 4 bytes from a0 (arg0 at entry) +0x6b8 into `$f0` (`lwc1` at 0xdb85f90).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `$f4` (`lwc1` at 0xdb85f94).
  Loads 4 bytes from a0 (arg0 at entry) +0x6c0 into `$f2` (`lwc1` at 0xdb85f98).
  Stores 4 bytes from `$f6` to a0 (arg0 at entry) +0x738c (`swc1` at 0xdb85fa4).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `$f8` (`lwc1` at 0xdb85fa8).
  Stores 4 bytes from `$f10` to a0 (arg0 at entry) +0x7390 (`swc1` at 0xdb85fb0).
  Loads 4 bytes from a1 (arg1 at entry) +0x10 into `$f16` (`lwc1` at 0xdb85fb4).
  Stores 4 bytes from `$f18` to a0 (arg0 at entry) +0x739c (`swc1` at 0xdb85fbc).
  Loads 4 bytes from a1 (arg1 at entry) +0x14 into `$f4` (`lwc1` at 0xdb85fc0).
  Loads 4 bytes from a0 (arg0 at entry) +0x6bc into `$f18` (`lwc1` at 0xdb85fc4).
  Stores 4 bytes from `$f6` to a0 (arg0 at entry) +0x73a0 (`swc1` at 0xdb85fcc).
  Loads 4 bytes from a1 (arg1 at entry) +0x28 into `$f8` (`lwc1` at 0xdb85fd0).
  Stores 4 bytes from `$f8` to a0 (arg0 at entry) +0x73b4 (`swc1` at 0xdb85fd4).
  Loads 4 bytes from a1 (arg1 at entry) +0x30 into `$f10` (`lwc1` at 0xdb85fd8).
  Loads 4 bytes from a0 (arg0 at entry) +0x6c4 into `$f10` (`lwc1` at 0xdb85fe0).
  Stores 4 bytes from `$f4` to a0 (arg0 at entry) +0x73bc (`swc1` at 0xdb85fe8).
  Loads 4 bytes from a1 (arg1 at entry) +0x34 into `$f6` (`lwc1` at 0xdb85fec).
  Stores 4 bytes from `$f16` to a0 (arg0 at entry) +0x73c0 (`swc1` at 0xdb85ffc).
  Loads 4 bytes from a1 (arg1 at entry) +0x38 into `$f18` (`lwc1` at 0xdb86000).
  Stores 4 bytes from `$f4` to a0 (arg0 at entry) +0x73c8 (`swc1` at 0xdb86004).
  Stores 4 bytes from `$f18` to a0 (arg0 at entry) +0x73c4 (`swc1` at 0xdb86008).
  Stores 4 bytes from `t7` to a0 (arg0 at entry) +0x73cc (`sw` at 0xdb86010).
  The `bne` at 0xdb85f88 is taken when t6(=[a1+64]) < 0x2 (unsigned) and falls through when t6(=[a1+64]) >= 0x2 (unsigned).
  The `jr` at 0xdb86014 returns with v0 = ?.

- `__gllc_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb91eb4, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `a0` (`lw` at 0xdb91ecc).
  Stores 2 bytes from `t6` to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb91ef0).
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb91edc).
  Calls `memcpy` via got with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x40, a3=? (`jalr` at 0xdb91f04).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=?, a1=?, a2=0xdb979f0, a3=? (`jalr` at 0xdb91f20).
  The `beq` at 0xdb91ee4 is taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `jr` at 0xdb91f34 returns with v0 = ?.

- `__gllc_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb91f3c, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `a0` (`lw` at 0xdb91f54).
  Stores 2 bytes from `t6` to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb91f7c).
  Stores 1 byte from `t7` to ret(__glDlistAllocOp2) +0xe (`sb` at 0xdb91f80).
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb91f64).
  Calls `memcpy` via got with a0=ret(__glDlistAllocOp2)+16, a1=a0 at entry (arg0), a2=0x80, a3=? (`jalr` at 0xdb91f94).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=?, a1=?, a2=0xdb97a2c, a3=? (`jalr` at 0xdb91fb0).
  The `beq` at 0xdb91f6c is taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The `jr` at 0xdb91fc4 returns with v0 = ?.

- `__glle_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb979f0, 60 bytes) Inferred.
  Loads 4 bytes from abs 0x12b4 into `t9` (`lw` at 0xdb979fc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb97a0c).
  The `jr` at 0xdb97a24 returns with v0 = a0+64; f0 = ret(?).

- `__glle_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb97a2c, 60 bytes) Inferred.
  Loads 4 bytes from abs 0x12b8 into `t9` (`lw` at 0xdb97a38).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb97a48).
  The `jr` at 0xdb97a60 returns with v0 = a0+128; f0 = ret(?).

- `__glsplc_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb9f13c, 96 bytes) Inferred.
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9f160).
  Calls `memcpy` via got with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=? (`jalr` at 0xdb9f180).
  The `beq` at 0xdb9f16c is taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The `jr` at 0xdb9f194 returns with v0 = ?.

- `__glsplc_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdb9f19c, 96 bytes) Inferred.
  Calls `__glSPDlalloc2 [0xda52988]` via register-constant with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9f1c0).
  Calls `memcpy` via got with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=? (`jalr` at 0xdb9f1e0).
  The `beq` at 0xdb9f1cc is taken when v0(=ret(__glSPDlalloc2)) == 0 and falls through when v0(=ret(__glSPDlalloc2)) != 0.
  The `jr` at 0xdb9f1f4 returns with v0 = ?.

- `glLoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdba693c, 12 bytes) Inferred.
  Loads 4 bytes from abs 0x12b4 into `t9` (`lw` at 0xdba693c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6940).

- `glLoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdba6948, 12 bytes) Inferred.
  Loads 4 bytes from abs 0x12b8 into `t9` (`lw` at 0xdba6948).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba694c).

- `__glXBindHWContextToWindow` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd89d134, 724 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `s1` (`lw` at 0xd89d160).
  Performs 2 4-byte loads from abs 0x1014, including `lw` at 0xd89d16c, `lw` at 0xd89d348.
  Performs 4 4-byte loads from [a0+76] +0xcc, including `lw` at 0xd89d170, `lw` at 0xd89d1b4, `lw` at 0xd89d270.
  Loads 4 bytes from [0x1014] +0x0 into `at` (`lw` at 0xd89d174).
  Performs 5 4-byte loads from [a0+76] +0xe0, including `lw` at 0xd89d188, `lw` at 0xd89d25c, `lw` at 0xd89d298.
  Performs 3 1-byte stores to [a0+76] +0xf4, including `sb` at 0xd89d194, `sb` at 0xd89d244, `sb` at 0xd89d2f0.
  Performs 5 4-byte loads from [a0+76] +0xdc, including `lw` at 0xd89d198, `lw` at 0xd89d260, `lw` at 0xd89d300.
  Performs 5 4-byte loads from [a0+76] +0xe8, including `lw` at 0xd89d1a4, `lw` at 0xd89d1d8, `lw` at 0xd89d1f0.
  Loads 4 bytes from [[a0+76]+232] +0x2c into `at` (`lw` at 0xd89d1a8).
  Performs 2 4-byte loads from [a0+76] +0x11c, including `lw` at 0xd89d1bc, `lw` at 0xd89d278.
  Performs 6 4-byte loads from [a0+76] +0xe4, including `lw` at 0xd89d1cc, `lw` at 0xd89d1e4, `lw` at 0xd89d21c.
  Performs 2 4-byte loads from [[a0+76]+228] +0x24, including `lw` at 0xd89d1d0, `lw` at 0xd89d2a8.
  Loads 4 bytes from [[a0+76]+232] +0x24 into `a1` (`lw` at 0xd89d1dc).
  Performs 4 4-byte loads from [[a0+76]+228] +0x4, including `lw` at 0xd89d1e8, `lw` at 0xd89d224, `lw` at 0xd89d2b4.
  Performs 2 4-byte loads from [[a0+76]+232] +0x4, including `lw` at 0xd89d1f4, `lw` at 0xd89d238.
  Performs 3 4-byte loads from [a0+76] +0x24, including `lw` at 0xd89d20c, `lw` at 0xd89d2cc, `lw` at 0xd89d338.
  Performs 2 4-byte stores to [[a0+76]+228] +0x4, including `sw` at 0xd89d24c, `sw` at 0xd89d2f8.
  Stores 4 bytes from `a1` to [[a0+76]+232] +0x4 (`sw` at 0xd89d258).
  Performs 2 4-byte stores to [a0+76] +0xec, including `sw` at 0xd89d264, `sw` at 0xd89d304.
  Performs 2 4-byte stores to [a0+76] +0xf0, including `sw` at 0xd89d26c, `sw` at 0xd89d308.
  Performs 2 4-byte loads from [a0+76] +0x120, including `lw` at 0xd89d288, `lw` at 0xd89d388.
  Stores 4 bytes from `at` to [0x1014] +0x0 (`sw` at 0xd89d350).
  Loads 4 bytes from [a0+76] +0xf0 into `v1` (`lw` at 0xd89d35c).
  Loads 4 bytes from [a0+76] +0xec into `a1` (`lw` at 0xd89d368).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x14, including `lw` at 0xd89d3b4, `lw` at 0xd89d3d4, `lw` at 0xd89d3f0.
  Calls `__glXHWAttach` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd89d164).
  Calls `(unknown callee)` via direct with a0=[[a0+76]+36], a1=0x400, a2=sp-88, a3=[[a0+76]+220], a4=0xd89ccc8 (`bgezall` at 0xd89d208).
  Calls `(unknown callee)` via direct with a0=[[a0+76]+36], a1=0x3eb, a2=sp-104, a3=[[a0+76]+220], a4=0xd89ccc8 (`bgezall` at 0xd89d2c8).
  Calls `(unknown callee)` via direct with a0=[[a0+76]+36], a1=0x3ea, a2=sp-112, a3=?, a4=[[a0+76]+204] (`bgezall` at 0xd89d334).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8cf818, a2=?, a3=?, a4=0xd89ccc8 (`jalr` at 0xd89d3bc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8cf830, a2=?, a3=? (`jalr` at 0xd89d3dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd8cf848, a2=?, a3=? (`jalr` at 0xd89d3f8).
  The `bne` at 0xd89d178 is taken when at(=[[0x1014]]) != a4(=[[a0+76]+204]) and falls through when at(=[[0x1014]]) == a4(=[[a0+76]+204]).
  The `beq` at 0xd89d190 is taken when s3(=one of 0x0, 0x1) == 0 and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` at 0xd89d19c is taken when a2(=[[a0+76]+224]) == a3(=[[a0+76]+220]) and falls through when a2(=[[a0+76]+224]) != a3(=[[a0+76]+220]).
  The `beq` at 0xd89d1ac is taken when at(=[[[a0+76]+232]+44]) == v0(=0x3) and falls through when at(=[[[a0+76]+232]+44]) != v0(=0x3).
  The `beq` at 0xd89d1c4 is taken when v0(=[[a0+76]+284]) == s3(=0x1) and falls through when v0(=[[a0+76]+284]) != s3(=0x1).
  The `beq` at 0xd89d214 is taken when v0(=ret(0xd89ccc8)) == a1(=-0x1) and falls through when v0(=ret(0xd89ccc8)) != a1(=-0x1).
  The `bne` at 0xd89d228 is taken when at(=[[[a0+76]+228]+4]) != v0(?) and falls through when at(=[[[a0+76]+228]+4]) == v0(?).
  The `beq` at 0xd89d23c is taken when v1(=[[[a0+76]+232]+4]) == a1(?) and falls through when v1(=[[[a0+76]+232]+4]) != a1(?).
  The `beq` at 0xd89d280 is taken when at(=[[a0+76]+284]) >= 0x2 (signed) and falls through when at(=[[a0+76]+284]) < 0x2 (signed).
  The `beq` at 0xd89d290 is taken when v1(=[[a0+76]+288]) >= 0x3 (signed) and falls through when v1(=[[a0+76]+288]) < 0x3 (signed).
  The `beq` at 0xd89d2d4 is taken when v0(=ret(0xd89ccc8)) == v1(=-0x1) and falls through when v0(=ret(0xd89ccc8)) != v1(=-0x1).
  The `beq` at 0xd89d2e8 is taken when a1(=[[[a0+76]+228]+4]) == at(?) and falls through when a1(=[[[a0+76]+228]+4]) != at(?).
  The `bltz` at 0xd89d340 is taken when v0(=ret(0xd89ccc8)) < 0 (signed) and falls through when v0(=ret(0xd89ccc8)) >= 0 (signed).
  The `bne` at 0xd89d360 is taken when v1(=[[a0+76]+240]) != a2(=[[a0+76]+224]) and falls through when v1(=[[a0+76]+240]) == a2(=[[a0+76]+224]).
  The `bne` at 0xd89d36c is taken when a1(=[[a0+76]+236]) != a3(=[[a0+76]+220]) and falls through when a1(=[[a0+76]+236]) == a3(=[[a0+76]+220]).
  The `beq` at 0xd89d390 is taken when at(=[[a0+76]+288]) >= 0x3 (signed) and falls through when at(=[[a0+76]+288]) < 0x3 (signed).
  The `jr` at 0xd89d31c returns with v0 = ?.
  The `jr` at 0xd89d380 returns with v0 = 0x3.

- `__glx_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8a855c, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `s0` (`lw` at 0xd8a856c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8a857c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s8` (`lw` at 0xd8a8584).
  Stores 2 bytes from `v0` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8a859c).
  Stores 2 bytes from `at` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8a85a8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `at` (`lw` at 0xd8a85ac).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8a85b4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=a3 at entry (arg3) (`jalr` at 0xd8a85a4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+132, a2=?, a3=? (`jalr` at 0xd8a85e0).
  The `bne` at 0xd8a85c0 is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+132) (unsigned) and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+132) (unsigned).
  The `jr` at 0xd8a85d0 returns with v0 = ?.

- `__glx_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8a85f0, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `s0` (`lw` at 0xd8a8600).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8a8610).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s8` (`lw` at 0xd8a8618).
  Stores 2 bytes from `v0` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8a8630).
  Stores 2 bytes from `at` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8a863c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `at` (`lw` at 0xd8a8640).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8a8648).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=a3 at entry (arg3) (`jalr` at 0xd8a8638).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+68, a2=?, a3=? (`jalr` at 0xd8a8674).
  The `bne` at 0xd8a8654 is taken when at(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+68) (unsigned) and falls through when at(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+68) (unsigned).
  The `jr` at 0xd8a8664 returns with v0 = ?.

- `glXCreateWindow` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8ca6dc, 332 bytes) Inferred.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ca724, `lw` at 0xd8ca7c0.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd8ca730).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ca73c, `lw` at 0xd8ca770, `lw` at 0xd8ca814.
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `a4` (`lw` at 0xd8ca740).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x64 (`sw` at 0xd8ca754).
  Stores 2 bytes from `a6` to [a0+108] +0x2 (`sh` at 0xd8ca75c).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd8ca764, `sb` at 0xd8ca788.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `a4` (`lw` at 0xd8ca76c).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x60 (`sw` at 0xd8ca778).
  Stores 4 bytes from `a5` to a0 (arg0 at entry) +0x6c (`sw` at 0xd8ca780).
  Stores 1 byte from `a2` to [a0+108] +0x1 (`sb` at 0xd8ca784).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `a1` (`lw` at 0xd8ca78c).
  Stores 4 bytes from `a1` to [a0+108] +0x4 (`sw` at 0xd8ca790).
  Loads 4 bytes from a1 (arg1 at entry) +0x48 into `a0` (`lw` at 0xd8ca798).
  Stores 4 bytes from `v1` to [a0+108] +0xc (`sw` at 0xd8ca79c).
  Stores 4 bytes from `a0` to [a0+108] +0x8 (`sw` at 0xd8ca7a0).
  Loads 4 bytes from a0 (arg0 at entry) +0x2c into `t9` (`lw` at 0xd8ca7a4).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0xd8ca7b8, `sw` at 0xd8ca7bc.
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd8ca7cc).
  Loads 4 bytes from a0 (arg0 at entry) +0x7c into `t9` (`lw` at 0xd8ca7d8).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8ca704).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd8ca734).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a1+36], a2=0x1f, a3=?, a4=[a0+96]+1, a5=[a0+108]+24, a6=0x6 (`jalr` at 0xd8ca7ac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd8ca7d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ca7e4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ca808).
  The `beq` at 0xd8ca71c is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd8ca728 is taken when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `bne` at 0xd8ca74c is taken when a4(=[a0+112]) < at(=[a0+108]+24) (unsigned) and falls through when a4(=[a0+112]) >= at(=[a0+108]+24) (unsigned).
  The `beq` at 0xd8ca7c4 is taken when a5(=[a0+1232]) == 0 and falls through when a5(=[a0+1232]) != 0.
  The `beq` at 0xd8ca7dc is taken when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The `jr` at 0xd8ca7fc returns with v0 = ?; f0 = ret(?).
  The `jr` at 0xd8ca820 returns with v0 = 0x0; f0 = ret(__glXSetupForCommand).

- `glXDestroyWindow` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8ca828, 272 bytes) Inferred.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8ca868, `lw` at 0xd8ca8d4.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd8ca874).
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8ca880, `lw` at 0xd8ca8b4, `lw` at 0xd8ca924.
  Loads 4 bytes from a0 (arg0 at entry) +0x70 into `at` (`lw` at 0xd8ca884).
  Stores 4 bytes from `a0` to a0 (arg0 at entry) +0x64 (`sw` at 0xd8ca898).
  Performs 2 1-byte stores to [a0+108] +0x0, including `sb` at 0xd8ca8a0, `sb` at 0xd8ca8d0.
  Stores 2 bytes from `v1` to [a0+108] +0x2 (`sh` at 0xd8ca8a8).
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `at` (`lw` at 0xd8ca8b0).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x60 (`sw` at 0xd8ca8bc).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x6c (`sw` at 0xd8ca8c4).
  Stores 4 bytes from `v1` to [a0+108] +0x4 (`sw` at 0xd8ca8c8).
  Stores 1 byte from `a2` to [a0+108] +0x1 (`sb` at 0xd8ca8cc).
  Loads 4 bytes from [a0+1232] +0x4 into `t9` (`lw` at 0xd8ca8e0).
  Loads 4 bytes from a0 (arg0 at entry) +0x7c into `t9` (`lw` at 0xd8ca8ec).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8ca84c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+1232] (`jalr` at 0xd8ca878).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=0x20, a3=[a0+1232] (`jalr` at 0xd8ca8e4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ca8f8).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8ca918).
  The `beq` at 0xd8ca860 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` at 0xd8ca86c is taken when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `bne` at 0xd8ca890 is taken when at(=[a0+112]) < v0(=[a0+108]+8) (unsigned) and falls through when at(=[a0+112]) >= v0(=[a0+108]+8) (unsigned).
  The `beq` at 0xd8ca8d8 is taken when a3(=[a0+1232]) == 0 and falls through when a3(=[a0+1232]) != 0.
  The `beq` at 0xd8ca8f0 is taken when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  The `jr` at 0xd8ca90c returns with v0 = ?.
  The `jr` at 0xd8ca930 returns with v0 = ret(__glXSetupForCommand); f0 = ret(__glXSetupForCommand).

- `glXBindChannelToWindowSGIX` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8cb27c, 316 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `at` (`lw` at 0xd8cb2a0).
  Loads 4 bytes from [0x1014] +0x114 into `at` (`lw` at 0xd8cb2bc).
  Performs 2 1-byte stores to ? (base unknown), including `sb` at 0xd8cb354, `sb` at 0xd8cb38c.
  Performs 3 4-byte loads from ? (base unknown), including `lw` at 0xd8cb364, `lw` at 0xd8cb368, `lw` at 0xd8cb36c.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cb2c4).
  Calls `(unknown callee)` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(__glXInitialize) (`bgezall` at 0xd8cb2f0).
  Calls `XSGIvcSetPlatformParameter` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=-0x64, a4=sp-112, a5=0x4 (`jalr` at 0xd8cb320).
  Calls `XSync` via got with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jalr` at 0xd8cb338).
  Calls `(unknown callee)` via register with a0=?, a1=0x1, a2=?, a3=? (`jalr` at 0xd8cb374).
  The `beq` at 0xd8cb2d4 is taken when v0(=ret(__glXInitialize)) == 0 and falls through when v0(=ret(__glXInitialize)) != 0.
  The `beq` at 0xd8cb2f8 is taken when v0(=ret(0xd8cb0ec)) == 0 and falls through when v0(=ret(0xd8cb0ec)) != 0.
  The `beq` at 0xd8cb358 is taken when s3(=a3) == 0 and falls through when s3(=a3) != 0.
  The `bne` at 0xd8cb384 is taken when at(=a3) != 0 and falls through when at(=a3) == 0.
  The `jr` at 0xd8cb3b0 returns with v0 = one of 0x0, 0x1.

- `__glOdysplc_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda61c80, 68 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `v0` (`lw` at 0xda61c90).
  Stores 1 byte from `zero` to [0x1010] +0x16948 (`sb` at 0xda61cb0).
  Calls `__glsplc_LoadMatrixf [0xdb98790]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda61cac).
  The `jr` at 0xda61cbc returns with v0 = ret(__glsplc_LoadMatrixf); f0 = ret(__glsplc_LoadMatrixf).

- `__glOdysplc_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda61cd0, 68 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `v0` (`lw` at 0xda61ce0).
  Stores 1 byte from `zero` to [0x1010] +0x16948 (`sb` at 0xda61d00).
  Calls `__glsplc_LoadMatrixd [0xdb98800]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda61cfc).
  The `jr` at 0xda61d0c returns with v0 = ret(__glsplc_LoadMatrixd); f0 = ret(__glsplc_LoadMatrixd).

- `__glOdySpanEyeZ24ToWindowZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda8c030, 328 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x200 into `$f7` (`ldc1` at 0xda8c030).
  Loads 4 bytes from a1 (arg1 at entry) +0x1f4 into `v0` (`lw` at 0xda8c034).
  Loads 4 bytes from a1 (arg1 at entry) +0xa8 into `t8` (`lw` at 0xda8c03c).
  Loads 8 bytes from [a1+500] +0x40 into `$f13` (`ldc1` at 0xda8c048).
  Loads 8 bytes from abs 0xdbde678 into `$f15` (`ldc1` at 0xda8c058).
  Loads 8 bytes from [a1+500] +0x30 into `$f12` (`ldc1` at 0xda8c064).
  Loads 8 bytes from abs 0xdbde668 into `$f17` (`ldc1` at 0xda8c070).
  Loads 8 bytes from [a1+500] +0x0 into `$f8` (`ldc1` at 0xda8c07c).
  Loads 8 bytes from [a1+500] +0x48 into `$f9` (`ldc1` at 0xda8c08c).
  Loads 8 bytes from [a1+500] +0x38 into `$f10` (`ldc1` at 0xda8c098).
  Loads 8 bytes from abs 0xdbde670 into `$f6` (`ldc1` at 0xda8c0a8).
  Loads 4 bytes from abs 0xdbde448 into `$f14` (`lwc1` at 0xda8c0ac).
  Loads 4 bytes from abs 0xdbde444 into `$f16` (`lwc1` at 0xda8c0b8).
  Performs 2 4-byte stores to ? (base unknown), including `swc1` at 0xda8c0c0, `swc1` at 0xda8c16c.
  Loads 4 bytes from ? (base unknown) into `a0` (`lw` at 0xda8c0d0).
  The `blez` at 0xda8c09c is taken when t8(=[a1+168]) <= 0 (signed) and falls through when t8(=[a1+168]) > 0 (signed).
  The `beq` at 0xda8c0c8 is taken when t8(=[a1+168]) == a5(?) and falls through when t8(=[a1+168]) != a5(?).
  The `bc1t` at 0xda8c130 is taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  The `bc1t` at 0xda8c150 is taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  The `jr` at 0xda8c170 returns with v0 = ?.

- `__glOdySpanEyeZ16ToWindowZ` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda8c180, 316 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x200 into `$f7` (`ldc1` at 0xda8c180).
  Loads 4 bytes from a1 (arg1 at entry) +0x1f4 into `v0` (`lw` at 0xda8c184).
  Loads 4 bytes from a1 (arg1 at entry) +0xa8 into `t2` (`lw` at 0xda8c18c).
  Loads 8 bytes from [a1+500] +0x40 into `$f13` (`ldc1` at 0xda8c194).
  Loads 8 bytes from abs 0xdbde678 into `$f15` (`ldc1` at 0xda8c19c).
  Loads 8 bytes from [a1+500] +0x30 into `$f12` (`ldc1` at 0xda8c1a8).
  Loads 8 bytes from abs 0xdbde668 into `$f17` (`ldc1` at 0xda8c1b4).
  Loads 8 bytes from [a1+500] +0x0 into `$f8` (`ldc1` at 0xda8c1c0).
  Loads 8 bytes from [a1+500] +0x48 into `$f9` (`ldc1` at 0xda8c1d0).
  Loads 8 bytes from [a1+500] +0x38 into `$f10` (`ldc1` at 0xda8c1dc).
  Loads 8 bytes from abs 0xdbde670 into `$f6` (`ldc1` at 0xda8c1ec).
  Loads 4 bytes from abs 0xdbde448 into `$f14` (`lwc1` at 0xda8c1f0).
  Loads 4 bytes from abs 0xdbde444 into `$f16` (`lwc1` at 0xda8c1f8).
  Performs 2 4-byte stores to ? (base unknown), including `swc1` at 0xda8c200, `swc1` at 0xda8c2b0.
  Loads 2 bytes from ? (base unknown) into `a0` (`lhu` at 0xda8c210).
  The `blez` at 0xda8c1e0 is taken when t2(=[a1+168]) <= 0 (signed) and falls through when t2(=[a1+168]) > 0 (signed).
  The `beq` at 0xda8c208 is taken when t2(=[a1+168]) == a5(?) and falls through when t2(=[a1+168]) != a5(?).
  The `bc1t` at 0xda8c274 is taken when FP condition code 1 is true and falls through when FP condition code 1 is false.
  The `bc1t` at 0xda8c294 is taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  The `jr` at 0xda8c2b4 returns with v0 = ?.

- `__glOdySpanWindowZToEyeZ24` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda8cbd0, 340 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x200 into `$f14` (`ldc1` at 0xda8cbd0).
  Loads 4 bytes from a1 (arg1 at entry) +0x1f4 into `v0` (`lw` at 0xda8cbd4).
  Loads 4 bytes from a1 (arg1 at entry) +0xa8 into `t8` (`lw` at 0xda8cbd8).
  Loads 8 bytes from [a1+500] +0x48 into `$f11` (`ldc1` at 0xda8cbdc).
  Loads 8 bytes from [a1+500] +0x38 into `$f0` (`ldc1` at 0xda8cbe4).
  Loads 8 bytes from [a1+500] +0x30 into `$f9` (`ldc1` at 0xda8cbec).
  Loads 8 bytes from abs 0xdbde6b8 into `$f1` (`ldc1` at 0xda8cbf4).
  Loads 8 bytes from [a1+500] +0x40 into `$f12` (`ldc1` at 0xda8cbf8).
  Loads 8 bytes from a1 (arg1 at entry) +0x1f8 into `$f10` (`ldc1` at 0xda8cc00).
  Loads 8 bytes from [a1+500] +0x0 into `$f13` (`ldc1` at 0xda8cc0c).
  Loads 8 bytes from abs 0xdbde670 into `$f7` (`ldc1` at 0xda8cc18).
  Loads 8 bytes from abs 0xdbde6e8 into `$f15` (`ldc1` at 0xda8cc38).
  Stores 4 bytes from `a6` to ? (base unknown) (`sw` at 0xda8cc88).
  Loads 4 bytes from ? (base unknown) into `$f6` (`lwc1` at 0xda8cc8c).
  Loads 4 bytes from a1 (arg1 at entry) +0x208 into `$f0` (`lwc1` at 0xda8ccac).
  Loads 1 byte from a1 (arg1 at entry) +0x212 into `v0` (`lbu` at 0xda8ccbc).
  Loads 1 byte from a1 (arg1 at entry) +0x213 into `v1` (`lbu` at 0xda8ccd4).
  Loads 4 bytes from a1 (arg1 at entry) +0x20c into `$f0` (`lwc1` at 0xda8ccec).
  The `blez` at 0xda8cc20 is taken when t8(=[a1+168]) <= 0 (signed) and falls through when t8(=[a1+168]) > 0 (signed).
  The `bltz` at 0xda8cc70 is taken when a7(?) < 0 (signed) and falls through when a7(?) >= 0 (signed).
  The `beq` at 0xda8cc84 is taken when t8(=[a1+168]) == a5(?) and falls through when t8(=[a1+168]) != a5(?).
  The `bc1f` at 0xda8cca4 is taken when FP condition code 1 is false and falls through when FP condition code 1 is true.
  The `beq` at 0xda8ccc0 is taken when v0(=[a1+530]:1) == 0 and falls through when v0(=[a1+530]:1) != 0.
  The `bc1t` at 0xda8cccc is taken when FP condition code 2 is true and falls through when FP condition code 2 is false.
  The `beq` at 0xda8ccd8 is taken when v1(=[a1+531]:1) == 0 and falls through when v1(=[a1+531]:1) != 0.
  The `bc1f` at 0xda8cce4 is taken when FP condition code 3 is false and falls through when FP condition code 3 is true.
  The `bc1f` at 0xda8cd04 is taken when not (f4 < f7(=0x0) (c.lt.d at 0xda8cd00)) and falls through when f4 < f7(=0x0) (c.lt.d at 0xda8cd00).
  The `jr` at 0xda8cd1c returns with v0 = ?.

- `__glOdysseyImageMovePixelsDMAtoHost` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xda9f970, 2064 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `s2` (`lw` at 0xda9f9c0).
  Loads 4 bytes from a2 (arg2 at entry) +0xc into `$f7` (`lwc1` at 0xda9f9d8).
  Loads 4 bytes from a2 (arg2 at entry) +0x8 into `$f6` (`lwc1` at 0xda9f9e8).
  Loads 4 bytes from a2 (arg2 at entry) +0x4 into `$f5` (`lwc1` at 0xda9f9f0).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x24, including `lw` at 0xda9f9f8, `lw` at 0xda9fb60.
  Loads 4 bytes from a2 (arg2 at entry) +0x14 into `$f1` (`lwc1` at 0xda9f9fc).
  Loads 4 bytes from a2 (arg2 at entry) +0x10 into `$f0` (`lwc1` at 0xda9fa10).
  Loads 4 bytes from a2 (arg2 at entry) +0x18 into `$f2` (`lwc1` at 0xda9fa20).
  Loads 4 bytes from a2 (arg2 at entry) +0x1c into `$f3` (`lwc1` at 0xda9fa30).
  Loads 4 bytes from a2 (arg2 at entry) +0x0 into `$f4` (`lwc1` at 0xda9fa48).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0x0, including `lbu` at 0xda9fa68, `lbu` at 0xda9fc20.
  Performs 3 4-byte loads from a0 (arg0 at entry) +0xc, including `lw` at 0xda9fa7c, `lw` at 0xda9fb2c, `lw` at 0xda9fb54.
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x8, including `lw` at 0xda9fa88, `lw` at 0xda9fae8, `lw` at 0xda9fb34.
  Performs 2 1-byte loads from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9fa98, `lbu` at 0xda9fd0c.
  Loads 4 bytes from [0x1010] +0x4d4 into `v0` (`lw` at 0xda9faa8).
  Loads 4 bytes from a1 (arg1 at entry) +0x2c into `a1` (`lw` at 0xda9fb0c).
  Loads 4 bytes from a1 (arg1 at entry) +0x28 into `a0` (`lw` at 0xda9fb18).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `v0` (`lw` at 0xda9fb24).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `at` (`lw` at 0xda9fb28).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `a0` (`lw` at 0xda9fb6c).
  Stores 4 bytes from `s4` to a0 (arg0 at entry) +0x18 (`sw` at 0xda9fb8c).
  Loads 4 bytes from a0 (arg0 at entry) +0x10 into `ra` (`lw` at 0xda9fb90).
  Loads 4 bytes from a0 (arg0 at entry) +0x28 into `v1` (`lw` at 0xda9fc88).
  Performs 4 4-byte loads from a1 (arg1 at entry) +0x10, including `lw` at 0xda9fc94, `lw` at 0xda9fcd4, `lw` at 0xda9fff8.
  Performs 3 4-byte loads from a1 (arg1 at entry) +0xc, including `lw` at 0xda9fcb0, `lw` at 0xdaa0004, `lw` at 0xdaa0028.
  Loads 4 bytes from a1 (arg1 at entry) +0x14 into `a1` (`lw` at 0xda9fcf8).
  Loads 4 bytes from (([a1+16] << 0x2) + sp-288) +0x0 into `a0` (`lw` at 0xda9fd04).
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `a5` (`lw` at 0xda9fdd0).
  Loads 4 bytes from a1 (arg1 at entry) +0x24 into `t3` (`lw` at 0xda9feb0).
  Loads 4 bytes from [0x1010] +0x7a90 into `a4` (`lw` at 0xda9ff94).
  Loads 4 bytes from [0x1010] +0x21dd8 into `a4` (`lw` at 0xda9ffb8).
  Loads 4 bytes from [0x1010] +0x718 into `a6` (`lw` at 0xda9ffc4).
  Loads 4 bytes from [0x1010] +0x488 into `a4` (`lw` at 0xdaa007c).
  Calls `memset` via got with a0=sp-344, a1=0x0, a2=0x20, a3=a3 at entry (arg3) (`jalr` at 0xda9f9bc).
  Calls `memset` via got with a0=sp-312, a1=0x0, a2=0x14, a3=? (`jalr` at 0xda9f9d0).
  Calls `__glOdysseyImageCalcXferReadParams [0xdaa3170]` via direct with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-312 (`bgezall` at 0xda9fa84).
  Calls `(unknown callee)` via direct with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=one of 0x0, 0x1, a4=sp-352, a5=sp-348, a6=0x1902 (`bgezall` at 0xda9fb14).
  Calls `__glSpecElementsPerGroup [0xdaf13d0]` via register-constant with a0=[a0+8], a1=[a0+12], a2=?, a3=? (`jalr` at 0xda9fb3c).
  Calls `__glSpecBytesPerElement [0xdaf15a0]` via register-constant with a0=[a0+12], a1=?, a2=?, a3=? (`jalr` at 0xda9fb50).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xda9fbd0).
  Calls `__glOdysseyOpenPMObjReference [0xdaaa8c0]` via register-constant with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16], a4=sp-288, a5=0x0 (`jalr` at 0xda9fcc0).
  Calls `(unknown callee)` via direct with a0=?, a1=?, a2=?, a3=?, a4=[a1+9]:1, a5=0xfffffffff0ffffff (`bgezall` at 0xda9ff28).
  Calls `__glOdysseyReadFromPMObj [0xdaaa4f0]` via register-constant with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=?, a5=one of 0x0, 0x2, a6=0x0, a7=sp-344 (`jalr` at 0xdaa0008).
  Calls `__glOdysseyClosePMObjReference [0xdaaaf20]` via register-constant with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16] (`jalr` at 0xdaa002c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdaa00c8).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdaa00f0).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=?, a2=0x405, a3=? (`jalr` at 0xdaa011c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdaa0158).
  The `beq` at 0xda9fa90 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0xda9faa0 is taken when v1(=[a1+9]:1) == 0 and falls through when v1(=[a1+9]:1) != 0.
  The `beq` at 0xda9fab0 is taken when v0(=[[0x1010]+1236]) == a2(=0x405) and falls through when v0(=[[0x1010]+1236]) != a2(=0x405).
  The `beq` at 0xda9fabc is taken when v0(=[[0x1010]+1236]) == a4(=0x402) and falls through when v0(=[[0x1010]+1236]) != a4(=0x402).
  The `bne` at 0xda9fac4 is taken when v0(=[[0x1010]+1236]) != a6(=0x403) and falls through when v0(=[[0x1010]+1236]) == a6(=0x403).
  The `beq` at 0xda9fad0 is taken when v0(=[[0x1010]+1236]) == at(=0x407) and falls through when v0(=[[0x1010]+1236]) != at(=0x407).
  The `beq` at 0xda9fad8 is taken when v0(=[[0x1010]+1236]) == v1(=0x401) and falls through when v0(=[[0x1010]+1236]) != v1(=0x401).
  The `beq` at 0xda9fae0 is taken when v0(=[[0x1010]+1236]) == a4(=0x403) and falls through when v0(=[[0x1010]+1236]) != a4(=0x403).
  The `beq` at 0xda9faf0 is taken when v0(=[a0+8]) == a6(=0x1902) and falls through when v0(=[a0+8]) != a6(=0x1902).
  The `beq` at 0xda9faf8 is taken when v0(=[a0+8]) == at(=0x1901) and falls through when v0(=[a0+8]) != at(=0x1901).
  The `beq` at 0xda9fb1c is taken when v0(=ret(0xdaa2ab0)) == 0 and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` at 0xda9fb80 is taken when a0(=[a0+24]) >= s4(?) (unsigned) and falls through when a0(=[a0+24]) < s4(?) (unsigned).
  The `beq` at 0xda9fc38 is taken when at(=[a0]:1) == 0 and falls through when at(=[a0]:1) != 0.
  The `beq` at 0xda9fccc is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0 and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` at 0xda9ffa4 is taken when (a4(=[[0x1010]+31376]) & 0x400) == 0 and falls through when (a4(=[[0x1010]+31376]) & 0x400) != 0.
  The `beq` at 0xda9ffbc is taken when a4(=[[0x1010]+138712]) == 0 and falls through when a4(=[[0x1010]+138712]) != 0.
  The `beq` at 0xda9ffcc is taken when (a6(=[[0x1010]+1816]) & 0x4) == 0 and falls through when (a6(=[[0x1010]+1816]) & 0x4) != 0.
  The `beq` at 0xdaa0014 is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0 and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0.
  The `beq` at 0xdaa0038 is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0 and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `jr` at 0xdaa0058 returns with v0 = ?; f0 = ret(__glOdysseyClosePMObjReference).
  The `jr` at 0xdaa00bc returns with v0 = ret(0xdaa2ab0); f0 = ret(0xdaa2ab0).
  The `jr` at 0xdaa00e8 returns with v0 = ret(__glSetError); f0 = ret(__glSetError).
  The `jr` at 0xdaa0110 returns with v0 = ret(__glSetError); f0 = ret(__glSetError).
  The `jr` at 0xdaa013c returns with v0 = ret(__glSetError); f0 = ret(__glSetError).
  The `jr` at 0xdaa0178 returns with v0 = ret(__glSetError); f0 = ret(__glSetError).

- `__glOdyim_LoadMatrixf` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdac7150, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1010 into `a1` (`lw` at 0xdac7150).
  Loads 4 bytes from abs 0x1018 into `at` (`lw` at 0xdac7158).
  Calls `__glim_LoadMatrixf [0xdb7b340]` via register-constant with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac7180).
  Calls `(unknown callee)` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xdac7190).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac71ac).
  The `beq` at 0xdac7174 is taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `jr` at 0xdac71a0 returns with v0 = ret(0xdac6dd0); f0 = ret(0xdac6dd0).
  The `jr` at 0xdac71bc returns with v0 = ret(__glSetError); f0 = ret(__glSetError).

- `__glOdyim_LoadMatrixd` (`builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdac71d0, 196 bytes) Inferred.
  Loads 4 bytes from abs 0x1018 into `at` (`lw` at 0xdac71dc).
  Loads 4 bytes from abs 0x1010 into `s1` (`lw` at 0xdac71f8).
  Loads 4 bytes from [0x1010] +0x6d0 into `a1` (`lw` at 0xdac7210).
  Loads 8 bytes from a0 (arg0 at entry) +0x50 into `$f3` (`ldc1` at 0xdac7244).
  Stores 8 bytes from `$f3` to [0x1010] +0x16690 (`sdc1` at 0xdac7250).
  Loads 8 bytes from a0 (arg0 at entry) +0x58 into `$f2` (`ldc1` at 0xdac7254).
  Stores 8 bytes from `$f2` to [0x1010] +0x16698 (`sdc1` at 0xdac7258).
  Loads 8 bytes from a0 (arg0 at entry) +0x70 into `$f1` (`ldc1` at 0xdac725c).
  Stores 8 bytes from `$f1` to [0x1010] +0x166a0 (`sdc1` at 0xdac7260).
  Loads 8 bytes from a0 (arg0 at entry) +0x78 into `$f0` (`ldc1` at 0xdac7264).
  Stores 8 bytes from `$f0` to [0x1010] +0x166a8 (`sdc1` at 0xdac726c).
  Calls `__glim_LoadMatrixd [0xdb7b430]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac7208).
  Calls `(unknown callee)` via direct with a0=[0x1010], a1=[[0x1010]+1744], a2=?, a3=? (`bgezall` at 0xdac7224).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdac7274).
  The `beq` at 0xdac71fc is taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` at 0xdac7218 is taken when a1(=[[0x1010]+1744]) == at(=0x1701) and falls through when a1(=[[0x1010]+1744]) != at(=0x1701).
  The `jr` at 0xdac723c returns with v0 = ret(0xdac6dd0); f0 = ret(0xdac6dd0).
  The `jr` at 0xdac728c returns with v0 = ret(__glSetError); f0 = ret(__glSetError).

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
