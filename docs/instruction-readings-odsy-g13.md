# Instruction readings from hostfacts

Each entry reports selected non-stack accesses, calls with argument slots, conditional branches and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.



- `__glx_IsList` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ab30, 372 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81ab40).
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81abdc).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81abf8).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81abfc).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81ac04).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81ac1c).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81ac28).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81ab78).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ab98).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81abc4).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81ac30).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ac58).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ac7c).
  The `beql` at 0xd81ab68 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81ab68 is taken and is annulled on fall-through.
  The `beql` at 0xd81ab88 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81ab88 is taken and is annulled on fall-through.
  The `beql` at 0xd81abb4 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81abb4 is taken and is annulled on fall-through.
  The `beql` at 0xd81ac44 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81ac44 is taken and is annulled on fall-through.
  The `beql` at 0xd81ac70 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81ac70 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81ac9c.

- `__glx_GetTexEnvfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81aca4, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81ad58).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81ad74).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81ad78).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81ad80).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81ad98).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81acf4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ad14).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ad40).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81adb4).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81ade8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ae08).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ae24).
  The `beql` at 0xd81ace0 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81ace0 is taken and is annulled on fall-through.
  The `beql` at 0xd81ad04 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81ad04 is taken and is annulled on fall-through.
  The `beql` at 0xd81ad30 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81ad30 is taken and is annulled on fall-through.
  The `bne` at 0xd81adc8 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81adf8 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81adf8 is taken and is annulled on fall-through.
  The `beql` at 0xd81ae1c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81ae1c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81ae3c.

- `__glx_GetPixelMapusv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ae44, 440 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81aef4).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81af10).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81af14).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd81ae90).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81aeb0).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81aedc).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81af48).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd81af80).
  Calls `_XEatData` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81afa0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81afc0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81afdc).
  The `beql` at 0xd81ae7c is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81ae7c is taken and is annulled on fall-through.
  The `beql` at 0xd81aea0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81aea0 is taken and is annulled on fall-through.
  The `beql` at 0xd81aecc is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81aecc is taken and is annulled on fall-through.
  The `bne` at 0xd81af5c is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beq` at 0xd81af8c is taken when (s1(?) & 0x3) == 0 and falls through when (s1(?) & 0x3) != 0.
  The `beql` at 0xd81afb0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81afb0 is taken and is annulled on fall-through.
  The `beql` at 0xd81afd4 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81afd4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81aff4.

- `__glx_GetPixelMapuiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81affc, 404 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81b0ac).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81b0c8).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81b0cc).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81b0d4).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81b0ec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd81b048).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b068).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b094).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81b100).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd81b134).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b154).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b170).
  The `beql` at 0xd81b034 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81b034 is taken and is annulled on fall-through.
  The `beql` at 0xd81b058 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b058 is taken and is annulled on fall-through.
  The `beql` at 0xd81b084 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81b084 is taken and is annulled on fall-through.
  The `bne` at 0xd81b114 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81b144 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b144 is taken and is annulled on fall-through.
  The `beql` at 0xd81b168 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81b168 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81b188.

- `__glx_GetPixelMapfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81b190, 404 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81b240).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81b25c).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81b260).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81b268).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81b280).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd81b1dc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b1fc).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b228).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81b294).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd81b2c8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b2e8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b304).
  The `beql` at 0xd81b1c8 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81b1c8 is taken and is annulled on fall-through.
  The `beql` at 0xd81b1ec is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b1ec is taken and is annulled on fall-through.
  The `beql` at 0xd81b218 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81b218 is taken and is annulled on fall-through.
  The `bne` at 0xd81b2a8 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81b2d8 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b2d8 is taken and is annulled on fall-through.
  The `beql` at 0xd81b2fc is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81b2fc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81b31c.

- `__glx_GetMaterialiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81b324, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81b3d8).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81b3f4).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81b3f8).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81b400).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81b418).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81b374).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b394).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b3c0).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81b434).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81b468).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b488).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b4a4).
  The `beql` at 0xd81b360 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81b360 is taken and is annulled on fall-through.
  The `beql` at 0xd81b384 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b384 is taken and is annulled on fall-through.
  The `beql` at 0xd81b3b0 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81b3b0 is taken and is annulled on fall-through.
  The `bne` at 0xd81b448 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81b478 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b478 is taken and is annulled on fall-through.
  The `beql` at 0xd81b49c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81b49c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81b4bc.

- `__glx_GetMaterialfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81b4c4, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81b578).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81b594).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81b598).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81b5a0).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81b5b8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81b514).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b534).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b560).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81b5d4).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81b608).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b628).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b644).
  The `beql` at 0xd81b500 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81b500 is taken and is annulled on fall-through.
  The `beql` at 0xd81b524 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b524 is taken and is annulled on fall-through.
  The `beql` at 0xd81b550 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81b550 is taken and is annulled on fall-through.
  The `bne` at 0xd81b5e8 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81b618 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b618 is taken and is annulled on fall-through.
  The `beql` at 0xd81b63c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81b63c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81b65c.

- `__glx_GetMapiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81b664, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81b718).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81b734).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81b738).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81b740).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81b758).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81b6b4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b6d4).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b700).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81b774).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81b7a8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b7c8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b7e4).
  The `beql` at 0xd81b6a0 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81b6a0 is taken and is annulled on fall-through.
  The `beql` at 0xd81b6c4 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b6c4 is taken and is annulled on fall-through.
  The `beql` at 0xd81b6f0 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81b6f0 is taken and is annulled on fall-through.
  The `bne` at 0xd81b788 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81b7b8 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b7b8 is taken and is annulled on fall-through.
  The `beql` at 0xd81b7dc is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81b7dc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81b7fc.

- `__glx_GetTexEnviv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81b804, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81b8b8).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81b8d4).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81b8d8).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81b8e0).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81b8f8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81b854).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b874).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b8a0).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81b914).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81b948).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b968).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81b984).
  The `beql` at 0xd81b840 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81b840 is taken and is annulled on fall-through.
  The `beql` at 0xd81b864 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b864 is taken and is annulled on fall-through.
  The `beql` at 0xd81b890 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81b890 is taken and is annulled on fall-through.
  The `bne` at 0xd81b928 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81b958 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81b958 is taken and is annulled on fall-through.
  The `beql` at 0xd81b97c is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81b97c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81b99c.

- `__glx_GetTexLevelParameteriv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81b9a4, 428 bytes) Inferred.
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81ba5c).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81ba78).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81ba7c).
  Stores 1 byte from `t7` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81ba84).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81ba9c).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81baa8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81b9f8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ba18).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81ba44).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81bac0).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a3 at entry (arg3), a2=?, a3=? (`jalr` at 0xd81baf4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bb14).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bb30).
  The `beq` at 0xd81b9e4 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` at 0xd81ba08 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81ba08 is taken and is annulled on fall-through.
  The `beql` at 0xd81ba34 is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81ba34 is taken and is annulled on fall-through.
  The `bne` at 0xd81bad4 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81bb04 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81bb04 is taken and is annulled on fall-through.
  The `beql` at 0xd81bb28 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81bb28 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81bb48.

- `__glx_GetTexLevelParameterfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81bb50, 428 bytes) Inferred.
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81bc08).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81bc24).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81bc28).
  Stores 1 byte from `t7` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81bc30).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81bc48).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd81bc54).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81bba4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bbc4).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bbf0).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81bc6c).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a3 at entry (arg3), a2=?, a3=? (`jalr` at 0xd81bca0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bcc0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bcdc).
  The `beq` at 0xd81bb90 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beql` at 0xd81bbb4 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81bbb4 is taken and is annulled on fall-through.
  The `beql` at 0xd81bbe0 is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81bbe0 is taken and is annulled on fall-through.
  The `bne` at 0xd81bc80 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81bcb0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81bcb0 is taken and is annulled on fall-through.
  The `beql` at 0xd81bcd4 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81bcd4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81bcf4.

- `__glx_GetTexParameteriv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81bcfc, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81bdb0).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81bdcc).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81bdd0).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81bdd8).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81bdf0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81bd4c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bd6c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bd98).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81be0c).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81be40).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81be60).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81be7c).
  The `beql` at 0xd81bd38 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81bd38 is taken and is annulled on fall-through.
  The `beql` at 0xd81bd5c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81bd5c is taken and is annulled on fall-through.
  The `beql` at 0xd81bd88 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81bd88 is taken and is annulled on fall-through.
  The `bne` at 0xd81be20 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81be50 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81be50 is taken and is annulled on fall-through.
  The `beql` at 0xd81be74 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81be74 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81be94.

- `__glx_GetTexParameterfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81be9c, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81bf50).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81bf6c).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81bf70).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81bf78).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81bf90).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81beec).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bf0c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81bf38).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81bfac).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81bfe0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c000).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c01c).
  The `beql` at 0xd81bed8 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81bed8 is taken and is annulled on fall-through.
  The `beql` at 0xd81befc is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81befc is taken and is annulled on fall-through.
  The `beql` at 0xd81bf28 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81bf28 is taken and is annulled on fall-through.
  The `bne` at 0xd81bfc0 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81bff0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81bff0 is taken and is annulled on fall-through.
  The `beql` at 0xd81c014 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81c014 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c034.

- `__glx_GetTexGeniv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c03c, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81c0f0).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81c10c).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81c110).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81c118).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81c130).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81c08c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c0ac).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c0d8).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81c14c).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81c180).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c1a0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c1bc).
  The `beql` at 0xd81c078 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81c078 is taken and is annulled on fall-through.
  The `beql` at 0xd81c09c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81c09c is taken and is annulled on fall-through.
  The `beql` at 0xd81c0c8 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81c0c8 is taken and is annulled on fall-through.
  The `bne` at 0xd81c160 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81c190 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81c190 is taken and is annulled on fall-through.
  The `beql` at 0xd81c1b4 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81c1b4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c1d4.

- `__glx_GetTexGenfv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c1dc, 416 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81c290).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81c2ac).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81c2b0).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81c2b8).
  Stores 4 bytes from `t9` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd81c2d0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81c22c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c24c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c278).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81c2ec).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81c320).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c340).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c35c).
  The `beql` at 0xd81c218 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81c218 is taken and is annulled on fall-through.
  The `beql` at 0xd81c23c is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81c23c is taken and is annulled on fall-through.
  The `beql` at 0xd81c268 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81c268 is taken and is annulled on fall-through.
  The `bne` at 0xd81c300 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81c330 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81c330 is taken and is annulled on fall-through.
  The `beql` at 0xd81c354 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81c354 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c374.

- `__glx_GetTexGendv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c37c, 432 bytes) Inferred.
  Stores 2 bytes from `t0` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd81c430).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd81c44c).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd81c450).
  Stores 1 byte from `t6` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd81c458).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4] (`jalr` at 0xd81c3cc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c3ec).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c418).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-52, a2=0x0, a3=0x0 (`jalr` at 0xd81c48c).
  Calls `memcpy` via got with a0=a2 at entry (arg2), a1=sp-36, a2=0x8, a3=? (`jalr` at 0xd81c4b4).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81c4d0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c4f0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd81c50c).
  The `beql` at 0xd81c3b8 is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd81c3b8 is taken and is annulled on fall-through.
  The `beql` at 0xd81c3dc is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81c3dc is taken and is annulled on fall-through.
  The `beql` at 0xd81c408 is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81c408 is taken and is annulled on fall-through.
  The `bne` at 0xd81c4a0 is taken when v0(?) != at(=0x1) and falls through when v0(?) == at(=0x1).
  The `beql` at 0xd81c4e0 is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81c4e0 is taken and is annulled on fall-through.
  The `beql` at 0xd81c504 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81c504 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c524.

- `__glx_SamplePatternSGIS` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c52c, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c538).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81c548).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81c554).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c558).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c55c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81c560).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81c564).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81c56c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81c57c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81c584).
  The `beql` at 0xd81c574 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81c574 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c598.

- `__glx_EvalCoord2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c5a0, 196 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c5b0).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81c5c8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81c5d4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c5e0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c5e4).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81c5e8, `lw` at 0xd81c608.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81c620).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81c634).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81c638).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81c5f4).
  Calls `memcpy` via got with a0=?, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81c614).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81c644).
  The `beq` at 0xd81c630 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81c65c.

- `__glx_EvalCoord1f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c664, 112 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c670).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81c680).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81c68c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c690).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c694).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81c698).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81c69c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81c6a4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81c6b4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81c6b8).
  The `beql` at 0xd81c6ac is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81c6ac is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c6cc.

- `__glx_EvalCoord1dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c6d4, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c6e4).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81c6f4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81c700).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c70c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c710).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81c714).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81c72c).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81c740).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81c744).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81c720).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81c750).
  The `beq` at 0xd81c73c is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81c768.

- `__glx_EvalCoord1d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c770, 160 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c780).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81c794).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81c7a0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c7ac).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c7b0).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81c7b4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81c7cc).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81c7e0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81c7e4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81c7c0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81c7f0).
  The `beq` at 0xd81c7dc is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81c808.

- `__glx_MapGrid2f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c810, 152 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c81c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81c830).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81c83c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c844).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c848).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81c84c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81c850).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81c854).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd81c858).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x14 (`swc1` at 0xd81c864).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x18 (`swc1` at 0xd81c86c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81c870).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81c874).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81c884).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+28, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81c88c).
  The `beql` at 0xd81c87c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd81c87c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c8a0.

- `__glx_MapGrid2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c8a8, 268 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c8b8).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81c8d8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81c8e4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c8f0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c8f4).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81c8f8, `lw` at 0xd81c914, `lw` at 0xd81c930.
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x24 (`sw` at 0xd81c968).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x28 (`sw` at 0xd81c970).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t1` (`lw` at 0xd81c974).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81c978).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81c988).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd81c900).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd81c91c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+32, a2=0x8, a3=? (`jalr` at 0xd81c938).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+40, a2=0x8, a3=? (`jalr` at 0xd81c954).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+44, a2=?, a3=? (`jalr` at 0xd81c994).
  The `beql` at 0xd81c980 is taken when t1(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+44) (unsigned) and falls through when t1(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+44) (unsigned).
  Its delay slot runs only when the branch at 0xd81c980 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81c9ac.

- `__glx_MapGrid1f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81c9b4, 132 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81c9c0).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81c9d4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81c9e0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81c9e8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81c9ec).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81c9f0).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81c9f4).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81c9f8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81c9fc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81ca04).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81ca14).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81ca1c).
  The `beql` at 0xd81ca0c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81ca0c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81ca30.

- `__glx_EvalCoord2dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ca38, 188 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81ca48).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81ca5c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81ca68).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81ca70).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81ca74).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81ca78, `lw` at 0xd81ca98.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81cab0).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81cac4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cac8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81ca84).
  Calls `memcpy` via got with a0=?, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd81caa4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81cad4).
  The `beq` at 0xd81cac0 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81caec.

- `__glx_AlphaFunc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81caf4, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cb00).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81cb10).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81cb1c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cb24).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81cb28).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81cb2c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81cb30).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81cb34).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81cb3c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cb4c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81cb54).
  The `beql` at 0xd81cb44 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81cb44 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81cb68.

- `__glx_EvalPoint2` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81cb70, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cb7c).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81cb8c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81cb98).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81cb9c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cba0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81cba4).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81cba8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81cbac).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd81cbb4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cbc4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd81cbd0).
  The `beql` at 0xd81cbbc is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81cbbc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81cbe4.

- `__glx_EvalMesh2` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81cbec, 152 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cbfc).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81cc10).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81cc1c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81cc20).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cc24).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81cc28).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81cc2c).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81cc30).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd81cc34).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd81cc40).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd81cc44).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81cc48).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cc58).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81cc64).
  The `beql` at 0xd81cc50 is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned).
  Its delay slot runs only when the branch at 0xd81cc50 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81cc7c.

- `__glx_EvalPoint1` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81cc84, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cc90).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81cca0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81ccac).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81ccb0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81ccb4).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81ccb8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81ccbc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81ccc4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81ccd4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81ccdc).
  The `beql` at 0xd81cccc is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81cccc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81ccf0.

- `__glx_EvalMesh1` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ccf8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cd08).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81cd18).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81cd24).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81cd28).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cd2c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81cd30).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81cd34).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81cd38).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81cd3c).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81cd44).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cd54).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd81cd60).
  The `beql` at 0xd81cd4c is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81cd4c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81cd78.

- `__glx_EvalCoord2fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81cd80, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cd8c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81cd9c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81cda8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81cdac).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cdb0).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd81cdb4).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81cdbc).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd81cdc0).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81cdc4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81cdc8).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81cdcc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cddc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81cde4).
  The `beql` at 0xd81cdd4 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81cdd4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81cdf8.

- `__glx_EvalCoord2f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ce00, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81ce0c).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81ce1c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81ce28).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81ce2c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81ce30).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81ce34).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81ce38).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81ce3c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81ce44).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81ce54).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81ce58).
  The `beql` at 0xd81ce4c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81ce4c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81ce6c.

- `__glx_MapGrid1d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ce74, 212 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81ce84).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81cea0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81ceac).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81ceb8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cebc).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81cec0, `lw` at 0xd81cee0.
  Stores 4 bytes from `t9` to ? (base unknown) (`sw` at 0xd81cf04).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd81cf08).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81cf0c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cf1c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp+8, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81cecc).
  Calls `memcpy` via got with a0=?, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd81ceec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81cf28).
  The `beql` at 0xd81cf14 is taken when t0(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Its delay slot runs only when the branch at 0xd81cf14 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81cf40.

- `__glx_ClearStencil` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81cf48, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cf54).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81cf64).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81cf70).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81cf74).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cf78).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81cf7c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81cf80).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81cf88).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81cf98).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81cfa0).
  The `beql` at 0xd81cf90 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81cf90 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81cfb4.

- `__glx_ClearColor` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81cfbc, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81cfcc).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81cfe0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81cfec).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81cff0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81cff4).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81cff8).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81cffc).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81d008).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd81d010).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d014).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d018).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d028).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81d02c).
  The `beql` at 0xd81d020 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81d020 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d040.

- `__glx_ClearIndex` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d048, 112 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d054).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81d064).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d070).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d074).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d078).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81d07c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d080).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d088).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d098).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81d09c).
  The `beql` at 0xd81d090 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d090 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d0b0.

- `__glx_ClearAccum` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d0b8, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d0c8).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81d0dc).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d0e8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d0ec).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d0f0).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81d0f4).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81d0f8).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81d104).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd81d10c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d110).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d114).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d124).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81d128).
  The `beql` at 0xd81d11c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81d11c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d13c.

- `__glx_Clear` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d144, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d150).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d160).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d16c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d170).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d174).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d178).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d17c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d184).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d194).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d19c).
  The `beql` at 0xd81d18c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d18c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d1b0.

- `__glx_DrawBuffer` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d1b8, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d1c4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d1d4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d1e0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d1e4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d1e8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d1ec).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d1f0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d1f8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d208).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d210).
  The `beql` at 0xd81d200 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d200 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d224.

- `__glx_PushName` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d22c, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d238).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d248).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d254).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d258).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d25c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d260).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d264).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d26c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d27c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d284).
  The `beql` at 0xd81d274 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d274 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d298.

- `__glx_ClearDepth` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d2a0, 160 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d2b0).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81d2c4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81d2d0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d2dc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d2e0).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81d2e4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d2fc).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81d310).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d314).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81d2f0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81d320).
  The `beq` at 0xd81d30c is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81d338.

- `__glx_PushAttrib` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d340, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d34c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d35c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d368).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d36c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d370).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d374).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d378).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d380).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d390).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d398).
  The `beql` at 0xd81d388 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d388 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d3ac.

- `__glx_PopAttrib` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d3b4, 108 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d3c0).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81d3d0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d3dc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d3e0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d3e4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d3e8).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d3f0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d400).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81d404).
  The `beql` at 0xd81d3f8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned).
  Its delay slot runs only when the branch at 0xd81d3f8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d418.

- `__glx_Accum` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d420, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d42c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d43c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d448).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d450).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d454).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d458).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81d45c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d460).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d468).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d478).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d480).
  The `beql` at 0xd81d470 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81d470 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d494.

- `__glx_IndexMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d49c, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d4a8).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d4b8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d4c4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d4c8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d4cc).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d4d0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d4d4).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d4dc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d4ec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d4f4).
  The `beql` at 0xd81d4e4 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d4e4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d508.

- `__glx_DepthMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d510, 120 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d520).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d530).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d53c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d540).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d544).
  Stores 1 byte from `a0` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd81d548).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d54c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d554).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d564).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d56c).
  The `beql` at 0xd81d55c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d55c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d580.

- `__glx_ColorMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d588, 160 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d598).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81d5bc).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81d5c8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d5cc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d5d0).
  Stores 1 byte from `a0` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd81d5d4).
  Stores 1 byte from `a1` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd81d5d8).
  Stores 1 byte from `a2` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd81d5dc).
  Stores 1 byte from `a3` to [[[0x1014]+276]+4] +0x7 (`sb` at 0xd81d5e0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d5e4).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81d5ec).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d5fc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81d608).
  The `beql` at 0xd81d5f4 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d5f4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d620.

- `__glx_StencilMask` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d628, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d634).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81d644).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d650).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d654).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d658).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d65c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d660).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d668).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d678).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81d680).
  The `beql` at 0xd81d670 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81d670 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d694.

- `__glx_BlendFunc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d69c, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d6a8).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81d6b8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81d6c4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d6c8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d6cc).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81d6d0).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81d6d4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d6d8).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd81d6e0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d6f0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd81d6fc).
  The `beql` at 0xd81d6e8 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81d6e8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d710.

- `__glx_Scaled` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d718, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d728).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81d740).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81d74c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d758).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d75c).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81d760, `lw` at 0xd81d780, `lw` at 0xd81d79c.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd81d7b8).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd81d7bc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d7cc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd81d76c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81d788).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd81d7a4).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd81d7d8).
  The `beql` at 0xd81d7c4 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd81d7c4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d7f0.

- `__glx_Rotatef` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d7f8, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d808).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81d81c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d828).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d82c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d830).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81d834).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81d838).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81d844).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd81d84c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d850).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d854).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d864).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81d868).
  The `beql` at 0xd81d85c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81d85c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d87c.

- `__glx_Rotated` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d884, 244 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d894).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81d8b0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81d8bc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d8c8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d8cc).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81d8d0, `lw` at 0xd81d8ec, `lw` at 0xd81d908.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d934).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81d948).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d94c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd81d8d8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81d8f4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd81d910).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=? (`jalr` at 0xd81d92c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd81d958).
  The `beq` at 0xd81d944 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81d970.

- `__glx_PushMatrix` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d978, 108 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d984).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81d994).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81d9a0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81d9a4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81d9a8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81d9ac).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81d9b4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81d9c4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81d9c8).
  The `beql` at 0xd81d9bc is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned).
  Its delay slot runs only when the branch at 0xd81d9bc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81d9dc.

- `__glx_PopMatrix` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81d9e4, 108 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81d9f0).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81da00).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81da0c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81da10).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81da14).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81da18).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81da20).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81da30).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81da34).
  The `beql` at 0xd81da28 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned).
  Its delay slot runs only when the branch at 0xd81da28 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81da48.

- `__glx_Ortho` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81da50, 300 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81da60).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81da7c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81da88).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81da94).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81da98).
  Performs 6 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81da9c, `lw` at 0xd81dab8, `lw` at 0xd81dad4.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81db38).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81db4c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81db50).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd81daa4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81dac0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd81dadc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=? (`jalr` at 0xd81daf8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+36, a1=sp+32, a2=0x8, a3=? (`jalr` at 0xd81db14).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+44, a1=sp+40, a2=0x8, a3=? (`jalr` at 0xd81db30).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+52, a2=?, a3=? (`jalr` at 0xd81db5c).
  The `beq` at 0xd81db48 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+52) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+52) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81db74.

- `__glx_MultMatrixd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81db7c, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81db8c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81db9c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81dba8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81dbb4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81dbb8).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81dbbc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81dbd4).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81dbe8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81dbec).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x80, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81dbc8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81dbf8).
  The `beq` at 0xd81dbe4 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81dc10.

- `__glx_Scalef` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81dc18, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81dc28).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81dc38).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81dc44).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81dc48).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81dc4c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81dc50).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81dc54).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81dc60).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81dc64).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81dc68).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81dc78).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81dc7c).
  The `beql` at 0xd81dc70 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81dc70 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81dc90.

- `__glx_SampleMaskSGIS` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81dc98, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81dca8).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81dcb8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81dcc4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81dcc8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81dccc).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81dcd0).
  Stores 1 byte from `a1` to [[[0x1014]+276]+4] +0x8 (`sb` at 0xd81dcd4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81dcd8).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd81dce0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81dcf0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=a3 at entry (arg3) (`jalr` at 0xd81dcf8).
  The `beql` at 0xd81dce8 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81dce8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81dd0c.

- `__glx_PolygonOffsetEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81dd14, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81dd20).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81dd30).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81dd3c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81dd40).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81dd44).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81dd48).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81dd4c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81dd50).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81dd58).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81dd68).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81dd6c).
  The `beql` at 0xd81dd60 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81dd60 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81dd80.

- `__glx_BlendEquationEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81dd88, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81dd94).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81dda4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81ddb0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81ddb4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81ddb8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81ddbc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81ddc0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81ddc8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81ddd8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81dde0).
  The `beql` at 0xd81ddd0 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81ddd0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81ddf4.

- `__glx_BlendColorEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ddfc, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81de0c).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81de20).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81de2c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81de30).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81de34).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81de38).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81de3c).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81de48).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd81de50).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81de54).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81de58).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81de68).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81de6c).
  The `beql` at 0xd81de60 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81de60 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81de80.

- `__glx_Viewport` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81de88, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81de98).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81deac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81deb8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81debc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81dec0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81dec4).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81dec8).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81decc).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd81ded0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81ded4).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81dedc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81deec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81def8).
  The `beql` at 0xd81dee4 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd81dee4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81df10.

- `__glx_Translatef` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81df18, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81df28).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81df38).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81df44).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81df48).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81df4c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81df50).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81df54).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd81df60).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81df64).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81df68).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81df78).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81df7c).
  The `beql` at 0xd81df70 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81df70 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81df90.

- `__glx_Translated` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81df98, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81dfa8).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81dfc0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81dfcc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81dfd8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81dfdc).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81dfe0, `lw` at 0xd81e000, `lw` at 0xd81e01c.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd81e038).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd81e03c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e04c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd81dfec).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81e008).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd81e024).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd81e058).
  The `beql` at 0xd81e044 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd81e044 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e070.

- `__glx_MultMatrixf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e078, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e088).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81e098).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81e0a4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e0b0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e0b4).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81e0b8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e0d0).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81e0e4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e0e8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x40, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81e0c4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81e0f4).
  The `beq` at 0xd81e0e0 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81e10c.

- `__glx_PixelTransferi` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e114, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e120).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd81e130).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a2` (`lw` at 0xd81e13c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e140).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e144).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e148).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81e14c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e150).
  Stores 4 bytes from `a2` to [[0x1014]+276] +0x4 (`sw` at 0xd81e158).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e168).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[[0x1014]+276]+4]+12, a3=[[0x1014]+276] (`jalr` at 0xd81e174).
  The `beql` at 0xd81e160 is taken when t9(=[[[0x1014]+276]+8]) >= a2(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a2(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81e160 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e188.

- `__glx_PixelTransferf` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e190, 124 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e19c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81e1ac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81e1b8).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e1c0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e1c4).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e1c8).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81e1cc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e1d0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81e1d8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e1e8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81e1f0).
  The `beql` at 0xd81e1e0 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81e1e0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e204.

- `__glx_PixelZoom` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e20c, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e218).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81e228).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81e234).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e238).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e23c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd81e240).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd81e244).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e248).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81e250).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e260).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81e264).
  The `beql` at 0xd81e258 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd81e258 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e278.

- `__glx_DepthFunc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e280, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e28c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81e29c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81e2a8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e2ac).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e2b0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e2b4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e2b8).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81e2c0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e2d0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81e2d8).
  The `beql` at 0xd81e2c8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81e2c8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e2ec.

- `__glx_StencilOp` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e2f4, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e304).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81e314).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81e320).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e324).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e328).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e32c).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81e330).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81e334).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e338).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81e340).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e350).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd81e35c).
  The `beql` at 0xd81e348 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81e348 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e374.

- `__glx_StencilFunc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e37c, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e38c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81e39c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81e3a8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e3ac).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e3b0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e3b4).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81e3b8).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81e3bc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e3c0).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81e3c8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e3d8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd81e3e4).
  The `beql` at 0xd81e3d0 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd81e3d0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e3fc.

- `__glx_LogicOp` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e404, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e410).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81e420).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81e42c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e430).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e434).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e438).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e43c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81e444).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e454).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81e45c).
  The `beql` at 0xd81e44c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81e44c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e470.

- `__glx_ReadBuffer` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e478, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e484).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81e494).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81e4a0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e4a4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e4a8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e4ac).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e4b0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81e4b8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e4c8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81e4d0).
  The `beql` at 0xd81e4c0 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81e4c0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e4e4.

- `__glx_MatrixMode` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e4ec, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e4f8).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd81e508).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81e514).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e518).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e51c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e520).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e524).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81e52c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e53c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd81e544).
  The `beql` at 0xd81e534 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81e534 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e558.

- `__glx_LoadIdentity` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e698, 108 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e6a4).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd81e6b4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd81e6c0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e6c4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e6c8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e6cc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd81e6d4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e6e4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81e6e8).
  The `beql` at 0xd81e6dc is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+4) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+4) (unsigned).
  Its delay slot runs only when the branch at 0xd81e6dc is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e6fc.

- `__glx_Frustum` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e704, 300 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e714).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81e730).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81e73c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e748).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e74c).
  Performs 6 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81e750, `lw` at 0xd81e76c, `lw` at 0xd81e788.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e7ec).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81e800).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e804).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd81e758).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81e774).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd81e790).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=? (`jalr` at 0xd81e7ac).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+36, a1=sp+32, a2=0x8, a3=? (`jalr` at 0xd81e7c8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+44, a1=sp+40, a2=0x8, a3=? (`jalr` at 0xd81e7e4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+52, a2=?, a3=? (`jalr` at 0xd81e810).
  The `beq` at 0xd81e7fc is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+52) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+52) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81e828.

- `__glx_DepthRange` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e830, 196 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e840).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81e858).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81e864).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e870).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e874).
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81e878, `lw` at 0xd81e898.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e8b0).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81e8c4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e8c8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81e884).
  Calls `memcpy` via got with a0=?, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd81e8a4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81e8d4).
  The `beq` at 0xd81e8c0 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81e8ec.

- `__glx_CopyPixels` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e8f4, 152 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e904).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd81e918).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd81e924).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e928).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e92c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd81e930).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd81e934).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd81e938).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd81e93c).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x14 (`sw` at 0xd81e948).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t0` (`lw` at 0xd81e94c).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd81e950).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e960).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+24, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81e96c).
  The `beql` at 0xd81e958 is taken when t0(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+24) (unsigned) and falls through when t0(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+24) (unsigned).
  Its delay slot runs only when the branch at 0xd81e958 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd81e984.

- `__glx_Indexdv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81e98c, 156 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81e99c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd81e9ac).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd81e9b8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd81e9c4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd81e9c8).
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81e9cc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd81e9e4).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd81e9f8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd81e9fc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[[0x1014]+276]+4] (`jalr` at 0xd81e9d8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=?, a2=?, a3=? (`jalr` at 0xd81ea08).
  The `beq` at 0xd81e9f4 is taken when t9(=[[[0x1014]+276]+8]) >= a3(?) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(?) (unsigned).
  Returns with v0 = ? at `jr` at 0xd81ea20.

- `__glXEvalComputeK` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ea28, 100 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458f4 into `at` (`lw` at 0xd81ea44).
  Loads 4 bytes from (a0-3472 << 0x2) +0xd8416c0 into `t6` (`lw` at 0xd81ea50).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd81ea58).
  The `beql` at 0xd81ea3c is taken when t6(=a0-3472) >= 0x29 (unsigned) and falls through when t6(=a0-3472) < 0x29 (unsigned).
  Its delay slot runs only when the branch at 0xd81ea3c is taken and is annulled on fall-through.
  Returns with v0 = 0x0 at `jr` at 0xd81ea84.

- `__glXFillMap2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ea8c, 320 bytes) Inferred.
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81eaf4, `lw` at 0xd81eb58.
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd81eb08).
  Calls `memcpy` via got with a0=?, a1=?, a2=(a0 << 0x3), a3=? (`jalr` at 0xd81eb64).
  The `bne` at 0xd81ead4 is taken when t6(?) != a0 and falls through when t6(?) == a0.
  The `bnel` at 0xd81eae8 is taken when a3 != t7(?) and falls through when a3 == t7(?).
  Its delay slot runs only when the branch at 0xd81eae8 is taken and is annulled on fall-through.
  The `blezl` at 0xd81eb24 is taken when t9(=a1) <= 0 (signed) and falls through when t9(=a1) > 0 (signed).
  Its delay slot runs only when the branch at 0xd81eb24 is taken and is annulled on fall-through.
  The `blez` at 0xd81eb44 is taken when s5(=a2) <= 0 (signed) and falls through when s5(=a2) > 0 (signed).
  The `bne` at 0xd81eb78 is taken when s0(?) != s5(=a2) and falls through when s0(?) == s5(=a2).
  The `bne` at 0xd81eb8c is taken when s6(?) != t2(=a1) and falls through when s6(?) == t2(=a1).
  Returns with v0 = ? at `jr` at 0xd81ebc4.

- `__glXFillMap2f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ebcc, 364 bytes) Inferred.
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81ec24).
  Performs 5 4-byte loads from ? (base unknown), including `lwc1` at 0xd81ec98, `lwc1` at 0xd81ecc0, `lwc1` at 0xd81ecd0.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0xd81ecac, `swc1` at 0xd81eccc, `swc1` at 0xd81ecd8.
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd81ec38).
  The `bne` at 0xd81ec08 is taken when s5(?) != a0 and falls through when s5(?) == a0.
  The `bne` at 0xd81ec18 is taken when a3 != t6(?) and falls through when a3 == t6(?).
  The `blez` at 0xd81ec48 is taken when s4(=a1) <= 0 (signed) and falls through when s4(=a1) > 0 (signed).
  The `blez` at 0xd81ec68 is taken when s3(=a2) <= 0 (signed) and falls through when s3(=a2) > 0 (signed).
  The `blez` at 0xd81ec78 is taken when s0(=a0) <= 0 (signed) and falls through when s0(=a0) > 0 (signed).
  The `beq` at 0xd81ec84 is taken when (s0(=a0) & 0x3) == 0 and falls through when (s0(=a0) & 0x3) != 0.
  The `bne` at 0xd81eca8 is taken when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` at 0xd81ecb0 is taken when a0(?) == s0(=a0) and falls through when a0(?) != s0(=a0).
  The `bne` at 0xd81ece8 is taken when a0(?) != s0(=a0) and falls through when a0(?) == s0(=a0).
  The `bne` at 0xd81ecf8 is taken when t0(?) != s3(=a2) and falls through when t0(?) == s3(=a2).
  The `bne` at 0xd81ed04 is taken when t3(?) != s4(=a1) and falls through when t3(?) == s4(=a1).
  Returns with v0 = ? at `jr` at 0xd81ed30.

- `__glXFillMap1d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ed38, 212 bytes) Inferred.
  Performs 2 4-byte loads from abs 0xd845ab4, including `lw` at 0xd81ed80, `lw` at 0xd81edbc.
  Calls `memcpy` via got with a0=?, a1=a3 at entry (arg3), a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd81ed94).
  Calls `memcpy` via got with a0=?, a1=?, a2=(a0 << 0x3), a3=? (`jalr` at 0xd81edc8).
  The `bne` at 0xd81ed74 is taken when a2 != a0 and falls through when a2 == a0.
  The `blez` at 0xd81eda4 is taken when s5(=a1) <= 0 (signed) and falls through when s5(=a1) > 0 (signed).
  The `bne` at 0xd81eddc is taken when s0(?) != s5(=a1) and falls through when s0(?) == s5(=a1).
  Returns with v0 = ? at `jr` at 0xd81ee04.

- `__glXFillMap1f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ee0c, 284 bytes) Inferred.
  Loads 4 bytes from abs 0xd845ab4 into `t9` (`lw` at 0xd81ee48).
  Performs 5 4-byte loads from ? (base unknown), including `lwc1` at 0xd81eea0, `lwc1` at 0xd81eec8, `lwc1` at 0xd81eed8.
  Performs 5 4-byte stores to ? (base unknown), including `swc1` at 0xd81eeb4, `swc1` at 0xd81eed4, `swc1` at 0xd81eee0.
  Calls `memcpy` via got with a0=?, a1=a3 at entry (arg3), a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd81ee5c).
  The `bne` at 0xd81ee3c is taken when a2 != a0 and falls through when a2 == a0.
  The `blez` at 0xd81ee6c is taken when s3(=a1) <= 0 (signed) and falls through when s3(=a1) > 0 (signed).
  The `blez` at 0xd81ee80 is taken when s0(=a0) <= 0 (signed) and falls through when s0(=a0) > 0 (signed).
  The `beq` at 0xd81ee8c is taken when (s0(=a0) & 0x3) == 0 and falls through when (s0(=a0) & 0x3) != 0.
  The `bne` at 0xd81eeb0 is taken when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` at 0xd81eeb8 is taken when a0(?) == s0(=a0) and falls through when a0(?) != s0(=a0).
  The `bne` at 0xd81eef0 is taken when a0(?) != s0(=a0) and falls through when a0(?) == s0(=a0).
  The `bne` at 0xd81ef00 is taken when t0(?) != s3(=a1) and falls through when t0(?) == s3(=a1).
  Returns with v0 = ? at `jr` at 0xd81ef20.

- `__glx_DispatchNop` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ef28, 16 bytes) Inferred.
  Returns with v0 = 0x0 at `jr` at 0xd81ef28.

- `__glXErrorString` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81ef38, 728 bytes) Inferred.
  Loads 4 bytes from a2 (arg2 at entry) +0xc into `t6` (`lw` at 0xd81ef5c).
  Loads 4 bytes from abs 0xd845b28 into `t9` (`lw` at 0xd81ef78).
  Performs 2 4-byte loads from abs 0xd8458f4, including `lw` at 0xd81ef7c, `lw` at 0xd81efa8.
  Performs 2 4-byte loads from abs 0xd845924, including `lw` at 0xd81ef80, `lw` at 0xd81efa0.
  Loads 4 bytes from abs 0xd845874 into `a2` (`lw` at 0xd81ef90).
  Loads 4 bytes from table(0xd84587c) +0x0 into `a3` (`lw` at 0xd81efb4).
  Loads 4 bytes from abs 0xd845b2c into `t9` (`lw` at 0xd81efb8).
  Calls `sprintf` via got with a0=sp-256, a1=0xd84186c, a2=[0xd845874], a3=? (`jalr` at 0xd81ef8c).
  Calls `XGetErrorDatabaseText` via got with a0=a0 at entry (arg0), a1=0xd841874, a2=sp-256, a3=entry(0xd84587c) (`jalr` at 0xd81efcc).
  The `bltz` at 0xd81ef68 is taken when s0(?) < 0 (signed) and falls through when s0(?) >= 0 (signed).
  The `beq` at 0xd81ef70 is taken when at(?) == 0 and falls through when at(?) != 0.
  Returns with v0 = ? at `jr` at 0xd81efec.

- `__glXFlushRenderBuffer` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81eff4, 368 bytes) Inferred.
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x4 (`sw` at 0xd81f02c).
  Stores 4 bytes from `t2` to [a0+216] +0x6c (`sw` at 0xd81f0c8).
  Stores 4 bytes from `t4` to [a0+216] +0x60 (`sw` at 0xd81f0cc).
  Stores 1 byte from `a3` to [[a0+216]+108] +0x1 (`sb` at 0xd81f0d8).
  Stores 4 bytes from `t6` to [[a0+216]+108] +0x4 (`sw` at 0xd81f0f0).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x4 (`sw` at 0xd81f14c).
  Calls `(unknown callee)` via register with a0=[a0+216], a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd81f058).
  Calls `_XFlush` via got with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd81f08c).
  Calls `_XSend` via got with a0=[a0+216], a1=[a0], a2=?, a3=0x1 (`jalr` at 0xd81f100).
  Calls `(unknown callee)` via register with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd81f120).
  Calls `(unknown callee)` via register with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd81f13c).
  The `bnel` at 0xd81f01c is taken when s0(=[a0+216]) != 0 and falls through when s0(=[a0+216]) == 0.
  Its delay slot runs only when the branch at 0xd81f01c is taken and is annulled on fall-through.
  The `beql` at 0xd81f038 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  Its delay slot runs only when the branch at 0xd81f038 is taken and is annulled on fall-through.
  The `beql` at 0xd81f044 is taken when v0(=[[a0+216]+1232]) == 0 and falls through when v0(=[[a0+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81f044 is taken and is annulled on fall-through.
  The `beql` at 0xd81f078 is taken when t7(=[[a0+216]+112]) >= t8(=[[a0+216]+108]+8) (unsigned) and falls through when t7(=[[a0+216]+112]) < t8(=[[a0+216]+108]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd81f078 is taken and is annulled on fall-through.
  The `beql` at 0xd81f110 is taken when v0(=[[a0+216]+1232]) == 0 and falls through when v0(=[[a0+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd81f110 is taken and is annulled on fall-through.
  The `beql` at 0xd81f134 is taken when v0(=[[a0+216]+124]) == 0 and falls through when v0(=[[a0+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd81f134 is taken and is annulled on fall-through.
  Returns with v0 = [a0] at `jr` at 0xd81f15c.

- `__glXFreeDisplayPrivate` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81f164, 172 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd81f174).
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `a1` (`lw` at 0xd81f180).
  Performs 3 4-byte loads from ? (base unknown), including `lw` at 0xd81f19c, `lw` at 0xd81f1a4, `lw` at 0xd81f1c4.
  Performs 3 4-byte loads from abs 0xd845a70, including `lw` at 0xd81f1a8, `lw` at 0xd81f1d0, `lw` at 0xd81f1ec.
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0xd81f1c0, `sw` at 0xd81f1e8.
  Calls `FreeScreenConfigs [0xd81f210]` via register-constant with a0=[a0+12], a1=[a0+12], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81f18c).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81f1b0).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81f1d8).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81f1f4).
  The `beql` at 0xd81f1a0 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  Its delay slot runs only when the branch at 0xd81f1a0 is taken and is annulled on fall-through.
  The `beq` at 0xd81f1c8 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns with v0 = 0x0 at `jr` at 0xd81f208.

- `FreeScreenConfigs` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81f210, 260 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t7` (`lw` at 0xd81f238).
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a1` (`lw` at 0xd81f23c).
  Loads 4 bytes from [a0] +0x88 into `s2` (`lw` at 0xd81f244).
  Performs 7 4-byte loads from ? (base unknown), including `lw` at 0xd81f254, `lw` at 0xd81f25c, `lw` at 0xd81f274.
  Performs 4 4-byte loads from abs 0xd845a70, including `lw` at 0xd81f260, `lw` at 0xd81f280, `lw` at 0xd81f2a0.
  Performs 4 4-byte stores to ? (base unknown), including `sw` at 0xd81f270, `sw` at 0xd81f290, `sw` at 0xd81f2b0.
  Loads 4 bytes from a0 (arg0 at entry) +0x20 into `a1` (`lw` at 0xd81f2e4).
  Loads 4 bytes from abs 0xd845a84 into `t9` (`lw` at 0xd81f2e8).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81f264).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81f284).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81f2a4).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81f2c4).
  Calls `XFree` via got with a0=[a0+32], a1=[a0+32], a2=?, a3=? (`jalr` at 0xd81f2f0).
  The `blez` at 0xd81f24c is taken when s2(=[[a0]+136]) <= 0 (signed) and falls through when s2(=[[a0]+136]) > 0 (signed).
  The `beql` at 0xd81f258 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  Its delay slot runs only when the branch at 0xd81f258 is taken and is annulled on fall-through.
  The `beql` at 0xd81f278 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  Its delay slot runs only when the branch at 0xd81f278 is taken and is annulled on fall-through.
  The `beql` at 0xd81f298 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  Its delay slot runs only when the branch at 0xd81f298 is taken and is annulled on fall-through.
  The `beql` at 0xd81f2b8 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  Its delay slot runs only when the branch at 0xd81f2b8 is taken and is annulled on fall-through.
  The `bne` at 0xd81f2d8 is taken when s1(?) != s2(=[[a0]+136]) and falls through when s1(?) == s2(=[[a0]+136]).
  Returns with v0 = ret(XFree) at `jr` at 0xd81f30c.

- `__glXWireToEvent` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81f314, 6108 bytes) Inferred.
  Loads 4 bytes from abs 0xd845cf0 into `t9` (`lw` at 0xd81f324).
  Loads 4 bytes from ret(__glXFindDisplay) +0x8 into `a0` (`lw` at 0xd81f354).
  Performs 3 1-byte loads from a2 (arg2 at entry) +0x0, including `lbu` at 0xd81f35c, `lbu` at 0xd81f3c4, `lbu` at 0xd81f454.
  Loads 4 bytes from abs 0xd845b38 into `t9` (`lw` at 0xd81f360).
  Loads 4 bytes from abs 0xd845924 into `a1` (`lw` at 0xd81f364).
  Loads 4 bytes from abs 0xd845874 into `a1` (`lw` at 0xd81f370).
  Loads 4 bytes from [ret(__glXFindDisplay)+8] +0x8 into `t6` (`lw` at 0xd81f384).
  Loads 2 bytes from a2 (arg2 at entry) +0x4 into `t9` (`lhu` at 0xd81f398).
  Performs 2 4-byte stores to a1 (arg1 at entry) +0x0, including `sw` at 0xd81f3a4, `sw` at 0xd81f450.
  Performs 2 4-byte loads from abs 0xd845b3c, including `lw` at 0xd81f3a8, `lw` at 0xd81f440.
  Performs 2 4-byte stores to a1 (arg1 at entry) +0x4, including `sw` at 0xd81f3c0, `sw` at 0xd81f468.
  Performs 2 4-byte stores to a1 (arg1 at entry) +0xc, including `sw` at 0xd81f3c8, `sw` at 0xd81f470.
  Performs 2 4-byte stores to a1 (arg1 at entry) +0x8, including `sw` at 0xd81f3d8, `sw` at 0xd81f458.
  Calls `__glXFindDisplay` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81f344).
  Calls `XMissingExtension` via got with a0=a0 at entry (arg0), a1=[0xd845874], a2=?, a3=? (`jalr` at 0xd81f36c).
  Calls `_XSetLastRequestRead` via got with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81f3b4).
  Calls `_XSetLastRequestRead` via got with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xd81f444).
  The `beq` at 0xd81f34c is taken when v0(=ret(__glXFindDisplay)) == 0 and falls through when v0(=ret(__glXFindDisplay)) != 0.
  The `bnel` at 0xd81f358 is taken when a0(=[ret(__glXFindDisplay)+8]) != 0 and falls through when a0(=[ret(__glXFindDisplay)+8]) == 0.
  Its delay slot runs only when the branch at 0xd81f358 is taken and is annulled on fall-through.
  The `beql` at 0xd81f394 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  Its delay slot runs only when the branch at 0xd81f394 is taken and is annulled on fall-through.
  The `bne` at 0xd81f39c is taken when v1(?) != at(=0x10) and falls through when v1(?) == at(=0x10).
  Returns with v0 = one of 0x0, 0x1 at `jr` at 0xd81f4c0.

- `__glXCloseDisplay` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81f4c8, 320 bytes) Inferred.
  Loads 4 bytes from abs 0xd846414 into `s0` (`lw` at 0xd81f4dc).
  Loads 4 bytes from sym(__glx_contextList) +0x0 into `a2` (`lw` at 0xd81f500).
  Loads 4 bytes from abs 0xd845924 into `s2` (`lw` at 0xd81f514).
  Loads 4 bytes from abs 0xd846400 into `s4` (`lw` at 0xd81f518).
  Loads 4 bytes from [sym(__glx_contextList)] +0x108 into `t6` (`lw` at 0xd81f524).
  Loads 4 bytes from abs 0x1014 into `v0` (`lw` at 0xd81f530).
  Loads 4 bytes from [0x1014] +0x114 into `t7` (`lw` at 0xd81f534).
  Performs 3 4-byte loads from ? (base unknown), including `lw` at 0xd81f53c, `lw` at 0xd81f584, `lw` at 0xd81f5b4.
  Stores 4 bytes from `s2` to [0x1014] +0x114 (`sw` at 0xd81f540).
  Loads 4 bytes from abs 0x1048 into `t8` (`lw` at 0xd81f544).
  Stores 4 bytes from `t4` to ? (base unknown) (`sw` at 0xd81f590).
  Calls `__glXFreeContext` via got with a0=?, a1=0x0, a2=?, a3=? (`jalr` at 0xd81f598).
  Calls `__glXCleanUpDrawablePrivates` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd81f5c0).
  Calls `XextRemoveDisplay` via got with a0=[sym(__glXExtensionInfo)], a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xd81f5d8).
  The `beq` at 0xd81f50c is taken when a2(=[sym(__glx_contextList)]) == 0 and falls through when a2(=[sym(__glx_contextList)]) != 0.
  The `bnel` at 0xd81f528 is taken when s5(=a0) != t6(?) and falls through when s5(=a0) == t6(?).
  Its delay slot runs only when the branch at 0xd81f528 is taken and is annulled on fall-through.
  The `bnel` at 0xd81f538 is taken when a2(?) != t7(=[[0x1014]+276]) and falls through when a2(?) == t7(=[[0x1014]+276]).
  Its delay slot runs only when the branch at 0xd81f538 is taken and is annulled on fall-through.
  The `bne` at 0xd81f550 is taken when t8(=[0x1048]) != 0 and falls through when t8(=[0x1048]) == 0.
  The `bne` at 0xd81f574 is taken when t1(?) != t3(=sym(__glx_dispatch)+1884) and falls through when t1(?) == t3(=sym(__glx_dispatch)+1884).
  The `bnel` at 0xd81f5b0 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  Its delay slot runs only when the branch at 0xd81f5b0 is taken and is annulled on fall-through.
  Returns with v0 = ret(XextRemoveDisplay) at `jr` at 0xd81f600.

- `glXGetCurrentDrawable` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81f608, 60 bytes) Inferred.
  Loads 4 bytes from abs 0xd845cfc into `t9` (`lw` at 0xd81f614).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81f628).
  Loads 4 bytes from [0x1014] +0x114 into `v1` (`lw` at 0xd81f634).
  Loads 4 bytes from [[0x1014]+276] +0xe0 into `v0` (`lw` at 0xd81f638).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81f620).
  Returns with v0 = [[[0x1014]+276]+224] at `jr` at 0xd81f63c.

- `glXGetCurrentContext` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81f644, 80 bytes) Inferred.
  Loads 4 bytes from abs 0xd845cfc into `t9` (`lw` at 0xd81f650).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd81f668).
  Loads 4 bytes from abs 0xd845924 into `t7` (`lw` at 0xd81f670).
  Loads 4 bytes from [0x1014] +0x114 into `v1` (`lw` at 0xd81f674).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81f65c).
  The `bne` at 0xd81f67c is taken when v1(=[[0x1014]+276]) != t7(=0xd846640) and falls through when v1(=[[0x1014]+276]) == t7(=0xd846640).
  Returns with v0 = ? at `jr` at 0xd81f68c.

- `__glXUseXFont` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd81f694, 3108 bytes) Inferred.
  Calls `glGetIntegerv` via got with a0=0xb33, a1=sp-184, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd81f6fc).
  Calls `__glXPostError` via got with a0=?, a1=?, a2=0xc, a3=[a0+20] (`jalr` at 0xd81f72c).
  Calls `XQueryFont` via got with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd81f760).
  Calls `XCreatePixmap` via got with a0=?, a1=?, a2=?, a3=([ret(XQueryFont)+62]:2 + [ret(XQueryFont)+64]:2) (`jalr` at 0xd81f864).
  Calls `XCreateGC` via got with a0=?, a1=ret(XCreatePixmap), a2=0x400c, a3=sp-112 (`jalr` at 0xd81f890).
  Calls `XFillRectangle` via got with a0=?, a1=?, a2=ret(XCreateGC), a3=0x0 (`jalr` at 0xd81f8d4).
  Calls `XSetForeground` via got with a0=?, a1=?, a2=0x1, a3=? (`jalr` at 0xd81f8f0).
  Calls `glGetIntegerv` via got with a0=0xcf0, a1=sp-156, a2=?, a3=? (`jalr` at 0xd81f908).
  Calls `glGetIntegerv` via got with a0=0xcf1, a1=sp-160, a2=?, a3=? (`jalr` at 0xd81f920).
  Calls `glGetIntegerv` via got with a0=0xcf2, a1=sp-164, a2=?, a3=? (`jalr` at 0xd81f938).
  Calls `glGetIntegerv` via got with a0=0xcf3, a1=sp-168, a2=?, a3=? (`jalr` at 0xd81f950).
  Calls `glGetIntegerv` via got with a0=0xcf4, a1=sp-172, a2=?, a3=? (`jalr` at 0xd81f968).
  Calls `glGetIntegerv` via got with a0=0xcf5, a1=sp-176, a2=?, a3=? (`jalr` at 0xd81f980).
  Calls `glPixelStorei` via got with a0=0xcf0, a1=0x0, a2=?, a3=? (`jalr` at 0xd81f998).
  Calls `glPixelStorei` via got with a0=0xcf2, a1=0x0, a2=?, a3=? (`jalr` at 0xd81f9b0).
  Calls `glPixelStorei` via got with a0=0xcf3, a1=0x0, a2=?, a3=? (`jalr` at 0xd81f9c8).
  Calls `glPixelStorei` via got with a0=0xcf4, a1=0x0, a2=?, a3=? (`jalr` at 0xd81f9e0).
  Calls `glPixelStorei` via got with a0=0xcf5, a1=0x1, a2=?, a3=? (`jalr` at 0xd81f9f8).
  Calls `glNewList` via got with a0=?, a1=0x1300, a2=?, a3=? (`jalr` at 0xd81fb04).
  Calls `glEndList` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81fb14).
  Calls `glNewList` via got with a0=?, a1=0x1300, a2=?, a3=? (`jalr` at 0xd81fbd4).
  Calls `glBitmap` via got with a0=0x0, a1=0x0, a2=?, a3=? (`jalr` at 0xd81fc14).
  Calls `glEndList` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81fc24).
  Calls `XDrawString16` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd81fc94).
  Calls `XGetImage` via got with a0=?, a1=?, a2=0x0, a3=0x0 (`jalr` at 0xd81fcfc).
  Calls `glPixelStorei` via got with a0=0xcf1, a1=0x0, a2=?, a3=? (`jalr` at 0xd81fd3c).
  Calls `glPixelStorei` via got with a0=0xcf1, a1=0x1, a2=?, a3=? (`jalr` at 0xd81fd5c).
  Calls `glNewList` via got with a0=?, a1=0x1300, a2=?, a3=? (`jalr` at 0xd81fdb8).
  Calls `memset` via got with a0=?, a1=0x0, a2=?, a3=? (`jalr` at 0xd81fe88).
  Calls `(unknown callee)` via register with a0=ret(XGetImage), a1=?, a2=?, a3=? (`jalr` at 0xd820020).
  Calls `glBitmap` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8200cc).
  Calls `glEndList` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8200dc).
  Calls `(unknown callee)` via register with a0=ret(XGetImage), a1=?, a2=?, a3=? (`jalr` at 0xd82010c).
  Calls `XSetForeground` via got with a0=?, a1=?, a2=0x0, a3=? (`jalr` at 0xd820130).
  Calls `XFillRectangle` via got with a0=?, a1=?, a2=?, a3=0x0 (`jalr` at 0xd820160).
  Calls `XSetForeground` via got with a0=?, a1=?, a2=0x1, a3=? (`jalr` at 0xd82017c).
  Calls `XFreeFontInfo` via got with a0=0x0, a1=?, a2=0x1, a3=? (`jalr` at 0xd8201b4).
  Calls `XFreeGC` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8201cc).
  Calls `XFreePixmap` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8201e4).
  Calls `glPixelStorei` via got with a0=0xcf0, a1=?, a2=?, a3=? (`jalr` at 0xd8201fc).
  Calls `glPixelStorei` via got with a0=0xcf1, a1=?, a2=?, a3=? (`jalr` at 0xd820214).
  Calls `glPixelStorei` via got with a0=0xcf2, a1=?, a2=?, a3=? (`jalr` at 0xd82022c).
  Calls `glPixelStorei` via got with a0=0xcf3, a1=?, a2=?, a3=? (`jalr` at 0xd820244).
  Calls `glPixelStorei` via got with a0=0xcf4, a1=?, a2=?, a3=? (`jalr` at 0xd82025c).
  Calls `glPixelStorei` via got with a0=0xcf5, a1=?, a2=?, a3=? (`jalr` at 0xd820274).
  The `beql` at 0xd81f70c is taken when t7(?) == 0 and falls through when t7(?) != 0.
  Its delay slot runs only when the branch at 0xd81f70c is taken and is annulled on fall-through.
  The `bgez` at 0xd81f7b4 is taken when v1(?) >= 0 (signed) and falls through when v1(?) < 0 (signed).
  The `bne` at 0xd81f7ec is taken when t3(?) < at(=0x8000) (signed) and falls through when t3(?) >= at(=0x8000) (signed).
  The `bne` at 0xd81f804 is taken when t4(?) != 0 and falls through when t4(?) == 0.
  The `bne` at 0xd81f814 is taken when t4(?) != at(=-0x1) and falls through when t4(?) == at(=-0x1).
  The `bne` at 0xd81fa10 is taken when t2(?) != 0 and falls through when t2(?) == 0.
  The `bgez` at 0xd81fa3c is taken when s5(?) >= 0 (signed) and falls through when s5(?) < 0 (signed).
  The `beq` at 0xd81fa60 is taken when t8(=a3) == 0 and falls through when t8(=a3) != 0.
  The `bne` at 0xd81fa7c is taken when t2(?) != at(=0x1) and falls through when t2(?) == at(=0x1).
  The `bne` at 0xd81fa8c is taken when a1(?) < v1(?) (unsigned) and falls through when a1(?) >= v1(?) (unsigned).
  The `bne` at 0xd81faac is taken when a0(?) < v1(?) (unsigned) and falls through when a0(?) >= v1(?) (unsigned).
  The `bne` at 0xd81fabc is taken when t5(?) < a0(?) (unsigned) and falls through when t5(?) >= a0(?) (unsigned).
  The `bne` at 0xd81fad0 is taken when a0(?) < t4(?) (unsigned) and falls through when a0(?) >= t4(?) (unsigned).
  The `beq` at 0xd81fae0 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beql` at 0xd81fb2c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  Its delay slot runs only when the branch at 0xd81fb2c is taken and is annulled on fall-through.
  The `bnel` at 0xd81fb3c is taken when t3(?) != at(=0x1) and falls through when t3(?) == at(=0x1).
  Its delay slot runs only when the branch at 0xd81fb3c is taken and is annulled on fall-through.
  The `beq` at 0xd81fba8 is taken when s6(?) == 0 and falls through when s6(?) != 0.
  The `bne` at 0xd81fbb0 is taken when t3(?) != 0 and falls through when t3(?) == 0.
  The `beq` at 0xd81fbec is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xd81fcc0 is taken when s0(?) >= t9(?) (signed) and falls through when s0(?) < t9(?) (signed).
  The `bnel` at 0xd81fcd0 is taken when t8(?) != at(=0x1) and falls through when t8(?) == at(=0x1).
  Its delay slot runs only when the branch at 0xd81fcd0 is taken and is annulled on fall-through.
  The `bnel` at 0xd81fd10 is taken when t4(=[ret(XGetImage)+8]) != 0 and falls through when t4(=[ret(XGetImage)+8]) == 0.
  Its delay slot runs only when the branch at 0xd81fd10 is taken and is annulled on fall-through.
  The `bnel` at 0xd81fd24 is taken when t7(=[ret(XGetImage)+20]) != at(=0x1) and falls through when t7(=[ret(XGetImage)+20]) == at(=0x1).
  Its delay slot runs only when the branch at 0xd81fd24 is taken and is annulled on fall-through.
  The `beq` at 0xd81fd80 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beql` at 0xd81fdcc is taken when a2(?) == 0 and falls through when a2(?) != 0.
  Its delay slot runs only when the branch at 0xd81fdcc is taken and is annulled on fall-through.
  The `bnel` at 0xd81fddc is taken when t7(?) != at(=0x1) and falls through when t7(?) == at(=0x1).
  Its delay slot runs only when the branch at 0xd81fddc is taken and is annulled on fall-through.
  The `bgez` at 0xd81fe5c is taken when s5(?) >= 0 (signed) and falls through when s5(?) < 0 (signed).
  The `beql` at 0xd81fe98 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  Its delay slot runs only when the branch at 0xd81fe98 is taken and is annulled on fall-through.
  The `blezl` at 0xd81fea4 is taken when t3(?) <= 0 (signed) and falls through when t3(?) > 0 (signed).
  Its delay slot runs only when the branch at 0xd81fea4 is taken and is annulled on fall-through.
  The `blez` at 0xd81feac is taken when s5(?) <= 0 (signed) and falls through when s5(?) > 0 (signed).
  The `beql` at 0xd81fee8 is taken when (s5(?) & 0x3) == 0 and falls through when (s5(?) & 0x3) != 0.
  Its delay slot runs only when the branch at 0xd81fee8 is taken and is annulled on fall-through.
  The `bne` at 0xd81ff18 is taken when a0(?) != s0(?) and falls through when a0(?) == s0(?).
  The `beq` at 0xd81ff20 is taken when s0(?) == s5(?) and falls through when s0(?) != s5(?).
  The `bne` at 0xd81ffbc is taken when s0(?) != s5(?) and falls through when s0(?) == s5(?).
  The `bne` at 0xd81ffcc is taken when s4(?) != t3(?) and falls through when s4(?) == t3(?).
  The `blezl` at 0xd81ffe0 is taken when t8(?) <= 0 (signed) and falls through when t8(?) > 0 (signed).
  Its delay slot runs only when the branch at 0xd81ffe0 is taken and is annulled on fall-through.
  The `blez` at 0xd81ffe8 is taken when s6(?) <= 0 (signed) and falls through when s6(?) > 0 (signed).
  The `beq` at 0xd820028 is taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  The `bgez` at 0xd820044 is taken when s0(?) >= 0 (signed) and falls through when s0(?) < 0 (signed).
  The `bnel` at 0xd82006c is taken when s0(?) != s6(?) and falls through when s0(?) == s6(?).
  Its delay slot runs only when the branch at 0xd82006c is taken and is annulled on fall-through.
  The `bne` at 0xd82007c is taken when s4(?) != t6(?) and falls through when s4(?) == t6(?).
  The `bgez` at 0xd8200fc is taken when t7(?) >= 0 (signed) and falls through when t7(?) < 0 (signed).
  The `blezl` at 0xd82011c is taken when t2(?) <= 0 (signed) and falls through when t2(?) > 0 (signed).
  Its delay slot runs only when the branch at 0xd82011c is taken and is annulled on fall-through.
  The `bne` at 0xd82019c is taken when t7(?) != 0 and falls through when t7(?) == 0.
  Returns with v0 = ? at `jr` at 0xd8202b0.

- `__glXGetReadDrawablePrivate` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8202bc, 40 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `t6` (`lw` at 0xd8202bc).
  Loads 4 bytes from [a0+76] +0xe8 into `v0` (`lw` at 0xd8202c4).
  The `beq` at 0xd8202c8 is taken when v0(=[[a0+76]+232]) == 0 and falls through when v0(=[[a0+76]+232]) != 0.
  Returns with v0 = [[a0+76]+232]+44 at `jr` at 0xd8202d4.
  Returns with v0 = 0x0 at `jr` at 0xd8202dc.

- `__glXGetDrawablePrivate` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8202e4, 40 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `t6` (`lw` at 0xd8202e4).
  Loads 4 bytes from [a0+76] +0xe4 into `v0` (`lw` at 0xd8202ec).
  The `beq` at 0xd8202f0 is taken when v0(=[[a0+76]+228]) == 0 and falls through when v0(=[[a0+76]+228]) != 0.
  Returns with v0 = [[a0+76]+228]+44 at `jr` at 0xd8202fc.
  Returns with v0 = 0x0 at `jr` at 0xd820304.

- `__glXCleanUpDrawablePrivates` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82030c, 120 bytes) Inferred.
  Loads 4 bytes from abs 0xd845924 into `s0` (`lw` at 0xd820320).
  Loads 4 bytes from abs 0xd846560 into `a1` (`lw` at 0xd82032c).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0xd820340, `lw` at 0xd820344.
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0xd820350).
  Loads 4 bytes from abs 0xd845c64 into `t9` (`lw` at 0xd820354).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd82035c).
  The `beql` at 0xd820338 is taken when a1(=[0xd846560]) == 0 and falls through when a1(=[0xd846560]) != 0.
  Its delay slot runs only when the branch at 0xd820338 is taken and is annulled on fall-through.
  The `bne` at 0xd820348 is taken when s1(=a0) != t6(?) and falls through when s1(=a0) == t6(?).
  The `bne` at 0xd820368 is taken when s0(?) != 0 and falls through when s0(?) == 0.
  Returns with v0 = ? at `jr` at 0xd82037c.

- `__glXRemoveDrawableInterest` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820384, 68 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `t6` (`lw` at 0xd82039c).
  Stores 4 bytes from `t7` to a0 (arg0 at entry) +0x14 (`sw` at 0xd8203a4).
  Loads 4 bytes from abs 0xd845c64 into `t9` (`lw` at 0xd8203a8).
  Calls `__glXFreeDrawablePrivate` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8203ac).
  Returns with v0 = ret(__glXFreeDrawablePrivate) at `jr` at 0xd8203c0.

- `__glXSpecialDestroyCallback` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8203c8, 108 bytes) Inferred.
  Loads 4 bytes from abs 0xd845924 into `a0` (`lw` at 0xd8203dc).
  Loads 4 bytes from abs 0xd846560 into `a0` (`lw` at 0xd8203e8).
  Loads 4 bytes from [0xd846560] +0x0 into `t6` (`lw` at 0xd8203f4).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0xd8203fc, `lw` at 0xd820420.
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0xd820400).
  Loads 4 bytes from abs 0xd845c64 into `t9` (`lw` at 0xd820404).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd820408).
  The `beql` at 0xd8203ec is taken when a0(=[0xd846560]) == 0 and falls through when a0(=[0xd846560]) != 0.
  Its delay slot runs only when the branch at 0xd8203ec is taken and is annulled on fall-through.
  The `bnel` at 0xd8203f8 is taken when a1 != t6(?) and falls through when a1 == t6(?).
  Its delay slot runs only when the branch at 0xd8203f8 is taken and is annulled on fall-through.
  The `bnel` at 0xd82041c is taken when a0(?) != 0 and falls through when a0(?) == 0.
  Its delay slot runs only when the branch at 0xd82041c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82042c.

- `__glXFreeDrawablePrivate` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820434, 188 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t6` (`lw` at 0xd82044c).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `t7` (`lw` at 0xd82045c).
  Loads 4 bytes from abs 0xd845924 into `v1` (`lw` at 0xd820468).
  Loads 4 bytes from abs 0xd846560 into `a1` (`lw` at 0xd820470).
  Performs 4 4-byte loads from ? (base unknown), including `lw` at 0xd820488, `lw` at 0xd82049c, `lw` at 0xd8204a8.
  Stores 4 bytes from `t8` to ? (base unknown) (`sw` at 0xd8204a4).
  Stores 4 bytes from `t9` to abs 0xd846560 (`sw` at 0xd8204ac).
  Loads 4 bytes from abs 0xd845a70 into `t9` (`lw` at 0xd8204cc).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8204bc).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8204d4).
  The `bnel` at 0xd820454 is taken when t6(=[a0]) != 0 and falls through when t6(=[a0]) == 0.
  Its delay slot runs only when the branch at 0xd820454 is taken and is annulled on fall-through.
  The `bnel` at 0xd820460 is taken when t7(=[a0+20]) != 0 and falls through when t7(=[a0+20]) == 0.
  Its delay slot runs only when the branch at 0xd820460 is taken and is annulled on fall-through.
  The `beq` at 0xd820474 is taken when a1(=[0xd846560]) == 0 and falls through when a1(=[0xd846560]) != 0.
  The `beq` at 0xd82047c is taken when a1(?) == a0 and falls through when a1(?) != a0.
  The `bne` at 0xd82048c is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `beq` at 0xd820494 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xd8204b4 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  Returns with v0 = ? at `jr` at 0xd8204e8.

- `__glXBufRealloc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8204f0, 92 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c58 into `t9` (`lw` at 0xd8204fc).
  Loads 4 bytes from abs 0xd845c50 into `t9` (`lw` at 0xd82052c).
  Calls `__glXBufFree` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82050c).
  Calls `__glXBufMalloc` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd820530).
  The `bne` at 0xd82051c is taken when a0(=a1) != 0 and falls through when a0(=a1) == 0.
  Returns with v0 = ? at `jr` at 0xd820544.

- `__glXGetXPrivates` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82054c, 24 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `v0` (`lw` at 0xd82054c).
  Loads 4 bytes from [a0+76] +0xd8 into `t6` (`lw` at 0xd820550).
  Stores 4 bytes from `t6` to a1 (arg1 at entry) +0x0 (`sw` at 0xd820554).
  Loads 4 bytes from [a0+76] +0xe0 into `t7` (`lw` at 0xd820558).
  Stores 4 bytes from `t7` to a2 (arg2 at entry) +0x0 (`sw` at 0xd820560).
  Returns with v0 = [a0+76] at `jr` at 0xd82055c.

- `__glXPostHiddenError` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820564, 108 bytes) Inferred.
  Loads 1 byte from a1 (arg1 at entry) +0x0 into `t7` (`lbu` at 0xd820584).
  Loads 1 byte from a1 (arg1 at entry) +0x1 into `a1` (`lbu` at 0xd820594).
  Loads 4 bytes from abs 0xd845cb4 into `t9` (`lw` at 0xd8205b0).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=[a1+1]:1, a2=?, a3=a3 at entry (arg3) (`jalr` at 0xd8205b4).
  The `bnel` at 0xd82058c is taken when t7(=[a1]:1) != 0 and falls through when t7(=[a1]:1) == 0.
  Its delay slot runs only when the branch at 0xd82058c is taken and is annulled on fall-through.
  The `beq` at 0xd82059c is taken when a1(=[a1+1]:1) == at(=0xa) and falls through when a1(=[a1+1]:1) != at(=0xa).
  The `bnel` at 0xd8205a8 is taken when v0(=[a1+1]:1) != at(=0xb) and falls through when v0(=[a1+1]:1) == at(=0xb).
  Its delay slot runs only when the branch at 0xd8205a8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8205c8.

- `__glXPostError` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8205d0, 164 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d04 into `t9` (`lw` at 0xd8205e0).
  Loads 4 bytes from abs 0xd8459c0 into `v1` (`lw` at 0xd82060c).
  Loads 4 bytes from sym(_XErrorFunction) +0x0 into `v1` (`lw` at 0xd820618).
  Loads 4 bytes from abs 0xd845ae4 into `t9` (`lw` at 0xd82063c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8205f8).
  Calls `_XDefaultError` via got with a0=a0 at entry (arg0), a1=sp-20, a2=?, a3=? (`jalr` at 0xd820644).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=sp-20, a2=?, a3=? (`jalr` at 0xd820658).
  The `bne` at 0xd820634 is taken when v1(=[sym(_XErrorFunction)]) != 0 and falls through when v1(=[sym(_XErrorFunction)]) == 0.
  Returns with v0 = ? at `jr` at 0xd82066c.

- `__glXError` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820674, 12 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0xd820678.

- `__glXFreeHWContext` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820680, 128 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c98 into `t9` (`lw` at 0xd820690).
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `t6` (`lw` at 0xd82069c).
  Loads 4 bytes from abs 0xd8458e8 into `t9` (`lw` at 0xd8206b4).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0xd8206b8, `lw` at 0xd8206cc.
  Loads 4 bytes from abs 0x1014 into `v0` (`lw` at 0xd8206d0).
  Loads 4 bytes from [0x1014] +0x0 into `t8` (`lw` at 0xd8206dc).
  Loads 4 bytes from ? (base unknown) into `t0` (`lw` at 0xd8206e0).
  Stores 4 bytes from `zero` to [0x1014] +0x0 (`sw` at 0xd8206ec).
  Calls `__glXHWAttach` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8206a0).
  Calls `Ioctl [0xd8113d4]` via register-constant with a0=?, a1=0x3e9, a2=sp-4, a3=? (`jalr` at 0xd8206c8).
  The `bnel` at 0xd8206e4 is taken when t8(=[[0x1014]]) != t0(?) and falls through when t8(=[[0x1014]]) == t0(?).
  Its delay slot runs only when the branch at 0xd8206e4 is taken and is annulled on fall-through.
  Returns with v0 = [0x1014] at `jr` at 0xd8206f8.

- `__glXUnbindHWContextFromThread` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820700, 124 bytes) Inferred.
  Performs 3 4-byte loads from abs 0x1014, including `lw` at 0xd82071c, `lw` at 0xd820758, `lw` at 0xd820764.
  Loads 4 bytes from a0 (arg0 at entry) +0x4c into `v0` (`lw` at 0xd820720).
  Loads 4 bytes from [0x1014] +0x0 into `t7` (`lw` at 0xd820728).
  Loads 4 bytes from abs 0xd8458e8 into `t9` (`lw` at 0xd820734).
  Loads 4 bytes from [a0+76] +0x24 into `a0` (`lw` at 0xd82073c).
  Stores 4 bytes from `zero` to [0x1014] +0x0 (`sw` at 0xd820760).
  Stores 4 bytes from `zero` to [0x1014] +0x0 (`sw` at 0xd820768).
  Calls `Ioctl [0xd8113d4]` via register-constant with a0=[[a0+76]+36], a1=0x3ea, a2=sp-8, a3=a3 at entry (arg3) (`jalr` at 0xd820744).
  The `beql` at 0xd82072c is taken when t7(=[[0x1014]]) == 0 and falls through when t7(=[[0x1014]]) != 0.
  Its delay slot runs only when the branch at 0xd82072c is taken and is annulled on fall-through.
  The `bgez` at 0xd820750 is taken when v0(=ret(Ioctl)) >= 0 (signed) and falls through when v0(=ret(Ioctl)) < 0 (signed).
  Returns with v0 = ? at `jr` at 0xd820774.

- `__glXGetPipeAddress` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82077c, 8 bytes) Inferred.
  Returns with v0 = 0x4000 at `jr` at 0xd82077c.

- `__glXPixmapBackdoor` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820784, 48 bytes) Inferred.
  Performs 4 4-byte loads from abs 0xd845924, including `lw` at 0xd820790, `lw` at 0xd820798, `lw` at 0xd8207a0.
  Stores 4 bytes from `a0` to abs 0xd846564 (`sw` at 0xd820794).
  Stores 4 bytes from `a1` to abs 0xd846568 (`sw` at 0xd82079c).
  Stores 4 bytes from `a2` to abs 0xd84656c (`sw` at 0xd8207a4).
  Stores 4 bytes from `a3` to abs 0xd846570 (`sw` at 0xd8207b0).
  Returns with v0 = ? at `jr` at 0xd8207ac.

- `__glXSendLargeCommand` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8207b4, 828 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=[a0+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd820868).
  Calls `_XFlush` via got with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd820894).
  Calls `memcpy` via got with a0=[[a0+216]+108], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xd820930).
  Calls `_XSend` via got with a0=[a0+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xd820960).
  Calls `_XFlush` via got with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd8209a4).
  Calls `memcpy` via got with a0=[[a0+216]+108], a1=?, a2=?, a3=? (`jalr` at 0xd820a3c).
  Calls `_XSend` via got with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd820a6c).
  Calls `(unknown callee)` via register with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd820a98).
  Calls `(unknown callee)` via register with a0=[a0+216], a1=?, a2=?, a3=? (`jalr` at 0xd820ab4).
  The `bne` at 0xd820820 is taken when s8(=[a0+16]-16) != 0 and falls through when s8(=[a0+16]-16) == 0.
  The `bne` at 0xd820830 is taken when s8(=[a0+16]-16) != at(=-0x1) and falls through when s8(=[a0+16]-16) == at(=-0x1).
  The `bne` at 0xd820838 is taken when s4(?) != at(=0xffffffff80000000) and falls through when s4(?) == at(=0xffffffff80000000).
  The `beq` at 0xd820848 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beql` at 0xd820858 is taken when v0(=[[a0+216]+1232]) == 0 and falls through when v0(=[[a0+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd820858 is taken and is annulled on fall-through.
  The `beql` at 0xd820884 is taken when t8(=[[a0+216]+112]) >= t0(=[[a0+216]+108]+16) (unsigned) and falls through when t8(=[[a0+216]+112]) < t0(=[[a0+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd820884 is taken and is annulled on fall-through.
  The `bne` at 0xd82091c is taken when t3(=[[a0+216]+112]) < t4(=([[a0+216]+108] + a2)) (unsigned) and falls through when t3(=[[a0+216]+112]) >= t4(=([[a0+216]+108] + a2)) (unsigned).
  The `blez` at 0xd82096c is taken when s4(?) <= 0 (signed) and falls through when s4(?) > 0 (signed).
  The `beq` at 0xd820978 is taken when s8(=[a0+16]-16) >= s4(?) (signed) and falls through when s8(=[a0+16]-16) < s4(?) (signed).
  The `beql` at 0xd820994 is taken when t9(=[[a0+216]+112]) >= t8(=[[a0+216]+108]+16) (unsigned) and falls through when t9(=[[a0+216]+112]) < t8(=[[a0+216]+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd820994 is taken and is annulled on fall-through.
  The `bne` at 0xd820a28 is taken when t1(=[[a0+216]+112]) < t2(?) (unsigned) and falls through when t1(=[[a0+216]+112]) >= t2(?) (unsigned).
  The `bgtz` at 0xd820a7c is taken when s4(?) > 0 (signed) and falls through when s4(?) <= 0 (signed).
  The `beql` at 0xd820a88 is taken when v0(=[[a0+216]+1232]) == 0 and falls through when v0(=[[a0+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd820a88 is taken and is annulled on fall-through.
  The `beql` at 0xd820aac is taken when v0(=[[a0+216]+124]) == 0 and falls through when v0(=[[a0+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd820aac is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd820ae8.

- `BytesPerElement` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820af0, 244 bytes) Inferred.
  Performs 3 4-byte loads from abs 0xd8458f4, including `lw` at 0xd820b2c, `lw` at 0xd820b60, `lw` at 0xd820ba8.
  Loads 4 bytes from (a0-33634 << 0x2) +0xd841f3c into `t6` (`lw` at 0xd820b38).
  Loads 4 bytes from (a0-32818 << 0x2) +0xd841f58 into `t7` (`lw` at 0xd820b6c).
  Loads 4 bytes from (a0-5120 << 0x2) +0xd841f6c into `t8` (`lw` at 0xd820bb4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820b40).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820b74).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820bbc).
  The `bne` at 0xd820b00 is taken when a0 < 0x1a01 (unsigned) and falls through when a0 >= 0x1a01 (unsigned).
  The `bne` at 0xd820b10 is taken when a0 < at(=0x8037) (unsigned) and falls through when a0 >= at(=0x8037) (unsigned).
  The `beq` at 0xd820b24 is taken when t6(=a0-33634) >= 0x7 (unsigned) and falls through when t6(=a0-33634) < 0x7 (unsigned).
  The `beq` at 0xd820b58 is taken when t7(=a0-32818) >= 0x5 (unsigned) and falls through when t7(=a0-32818) < 0x5 (unsigned).
  The `bne` at 0xd820b80 is taken when a0 < 0x1407 (unsigned) and falls through when a0 >= 0x1407 (unsigned).
  The `beq` at 0xd820b8c is taken when a0 == at(=0x1a00) and falls through when a0 != at(=0x1a00).
  The `beq` at 0xd820ba0 is taken when t8(=a0-5120) >= 0x7 (unsigned) and falls through when t8(=a0-5120) < 0x7 (unsigned).
  Returns with v0 = 0x0 at `jr` at 0xd820bdc.

- `ElementsPerGroup` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820be4, 8272 bytes) Inferred.
  Performs 3 4-byte loads from abs 0xd8458f4, including `lw` at 0xd820c14, `lw` at 0xd820c48, `lw` at 0xd820cc0.
  Loads 4 bytes from (a1-33634 << 0x2) +0xd841ee0 into `t6` (`lw` at 0xd820c20).
  Loads 4 bytes from (a1-32818 << 0x2) +0xd841efc into `t7` (`lw` at 0xd820c54).
  Loads 4 bytes from (a0-6400 << 0x2) +0xd841f10 into `t8` (`lw` at 0xd820ccc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820c28).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820c5c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd820cd4).
  The `bne` at 0xd820bf8 is taken when a1 < at(=0x8037) (unsigned) and falls through when a1 >= at(=0x8037) (unsigned).
  The `beql` at 0xd820c0c is taken when t6(=a1-33634) >= 0x7 (unsigned) and falls through when t6(=a1-33634) < 0x7 (unsigned).
  Its delay slot runs only when the branch at 0xd820c0c is taken and is annulled on fall-through.
  The `beql` at 0xd820c40 is taken when t7(=a1-32818) >= 0x5 (unsigned) and falls through when t7(=a1-32818) < 0x5 (unsigned).
  Its delay slot runs only when the branch at 0xd820c40 is taken and is annulled on fall-through.
  The `bne` at 0xd820c74 is taken when a0 < at(=0x8001) (unsigned) and falls through when a0 >= at(=0x8001) (unsigned).
  The `beq` at 0xd820c7c is taken when a0 == at(=0x80e0) and falls through when a0 != at(=0x80e0).
  The `beq` at 0xd820c84 is taken when a0 == at(=0x80e1) and falls through when a0 != at(=0x80e1).
  The `bne` at 0xd820c98 is taken when a0 < 0x190b (unsigned) and falls through when a0 >= 0x190b (unsigned).
  The `beq` at 0xd820ca4 is taken when a0 == at(=0x8000) and falls through when a0 != at(=0x8000).
  The `beql` at 0xd820cb8 is taken when t8(=a0-6400) >= 0xb (unsigned) and falls through when t8(=a0-6400) < 0xb (unsigned).
  Its delay slot runs only when the branch at 0xd820cb8 is taken and is annulled on fall-through.
  Returns with v0 = 0x3 at `jr` at 0xd820cdc.
  Returns with v0 = 0x4 at `jr` at 0xd820cec.
  Returns with v0 = 0x0 at `jr` at 0xd820d00.

- `glXGetSelectedEventSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820d08, 80 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d24 into `t9` (`lw` at 0xd820d14).
  Stores 4 bytes from `t6` to a2 (arg2 at entry) +0x0 (`sw` at 0xd820d44).
  Calls `__glXGetDrawableAttributes` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-28, a3=0x1 (`jalr` at 0xd820d2c).
  The `beq` at 0xd820d34 is taken when v0(=ret(__glXGetDrawableAttributes)) == 0 and falls through when v0(=ret(__glXGetDrawableAttributes)) != 0.
  Returns with v0 = ret(__glXGetDrawableAttributes) at `jr` at 0xd820d50.

- `glXQueryGLXPbufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820e90, 244 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d24 into `t9` (`lw` at 0xd820ea0).
  Loads 4 bytes from abs 0xd8458f4 into `at` (`lw` at 0xd820ef0).
  Loads 4 bytes from (a2-32780 << 0x2) +0xd841d38 into `t7` (`lw` at 0xd820efc).
  Calls `__glXGetDrawableAttributes` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-28, a3=0x1 (`jalr` at 0xd820ebc).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd820f04).
  The `bne` at 0xd820ec4 is taken when v0(=ret(__glXGetDrawableAttributes)) != 0 and falls through when v0(=ret(__glXGetDrawableAttributes)) == 0.
  The `beql` at 0xd820ee8 is taken when t7(=a2-32780) >= 0x14 (unsigned) and falls through when t7(=a2-32780) < 0x14 (unsigned).
  Its delay slot runs only when the branch at 0xd820ee8 is taken and is annulled on fall-through.
  The `beq` at 0xd820f14 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd820f24 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd820f34 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd820f44 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd820f54 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd820f64 is taken when condition not analyzed and falls through when condition not analyzed.
  Returns with v0 = one of 0x1, 0x2 at `jr` at 0xd820f7c.

- `__glXImageSize` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd821548, 308 bytes) Inferred.
  Performs 2 4-byte loads from abs 0xd8458ec, including `lw` at 0xd821594, `lw` at 0xd8215f0.
  Calls `ElementsPerGroup [0xd820be4]` via register-constant with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8215a4).
  Calls `BytesPerElement [0xd820af0]` via register-constant with a0=?, a1=ret(ElementsPerGroup), a2=?, a3=? (`jalr` at 0xd8215fc).
  The `blez` at 0xd82156c is taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  The `blez` at 0xd821574 is taken when a1 <= 0 (signed) and falls through when a1 > 0 (signed).
  The `blez` at 0xd82157c is taken when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  The `bgtz` at 0xd821584 is taken when a3 > 0 (signed) and falls through when a3 <= 0 (signed).
  The `bne` at 0xd8215bc is taken when a0(?) != at(=0x1a00) and falls through when a0(?) == at(=0x1a00).
  The `beq` at 0xd8215c8 is taken when v1(?) == at(=0x1900) and falls through when v1(?) != at(=0x1900).
  The `bne` at 0xd8215d0 is taken when v1(?) != at(=0x1901) and falls through when v1(?) == at(=0x1901).
  Returns with v0 = ? at `jr` at 0xd821674.

- `__glx_PixelStoref` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82167c, 3596 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[[0x1014]+276]+216], a3=[[0x1014]+276] (`jr` at 0xd82177c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+216], a3=[[0x1014]+276] (`jalr` at 0xd82235c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd822394).
  Calls `_XFlush` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8223d4).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd82244c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd82246c).
  The `beql` at 0xd8216ac is taken when a2(=[[[0x1014]+276]+216]) == 0 and falls through when a2(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd8216ac is taken and is annulled on fall-through.
  The `bne` at 0xd8216b4 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0xd8216c0 is taken when a0 == at(=0x842c) and falls through when a0 != at(=0x842c).
  The `beq` at 0xd8216cc is taken when a0 == at(=0x842d) and falls through when a0 != at(=0x842d).
  The `beq` at 0xd8216d8 is taken when a0 == at(=0x85a0) and falls through when a0 != at(=0x85a0).
  The `beq` at 0xd8216e4 is taken when a0 == at(=0x85a1) and falls through when a0 != at(=0x85a1).
  The `bnel` at 0xd8216f8 is taken when a0 < v0(=0x806d) (unsigned) and falls through when a0 >= v0(=0x806d) (unsigned).
  Its delay slot runs only when the branch at 0xd8216f8 is taken and is annulled on fall-through.
  The `beq` at 0xd821700 is taken when a0 == v0(=0x806d) and falls through when a0 != v0(=0x806d).
  The `beql` at 0xd82170c is taken when a0 == at(=0x806e) and falls through when a0 != at(=0x806e).
  Its delay slot runs only when the branch at 0xd82170c is taken and is annulled on fall-through.
  The `bnel` at 0xd821724 is taken when a0 < v0(=0x806c) (unsigned) and falls through when a0 >= v0(=0x806c) (unsigned).
  Its delay slot runs only when the branch at 0xd821724 is taken and is annulled on fall-through.
  The `beq` at 0xd82172c is taken when a0 == v0(=0x806c) and falls through when a0 != v0(=0x806c).
  The `bne` at 0xd821740 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beql` at 0xd82174c is taken when a0 == at(=0x806b) and falls through when a0 != at(=0x806b).
  Its delay slot runs only when the branch at 0xd82174c is taken and is annulled on fall-through.
  The `beq` at 0xd821760 is taken when t7(=a0-3312) >= 0x16 (unsigned) and falls through when t7(=a0-3312) < 0x16 (unsigned).
  The `beql` at 0xd8217bc is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd8217bc is taken and is annulled on fall-through.
  The `bne` at 0xd8217ec is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8217fc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821804 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0xd821814 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd821820 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd821830 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821830 is taken and is annulled on fall-through.
  The `beq` at 0xd821838 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821840 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beql` at 0xd82187c is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd82187c is taken and is annulled on fall-through.
  The `bne` at 0xd8218ac is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd8218d4 is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `bgez` at 0xd8218e0 is taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bnel` at 0xd8218f0 is taken when t2(=[[[0x1014]+276]+176]) != 0 and falls through when t2(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd8218f0 is taken and is annulled on fall-through.
  The `beql` at 0xd821940 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821940 is taken and is annulled on fall-through.
  The `bne` at 0xd821970 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821980 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821988 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0xd821998 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd8219a4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd8219b4 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd8219b4 is taken and is annulled on fall-through.
  The `beq` at 0xd8219bc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8219c4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beql` at 0xd821a04 is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd821a04 is taken and is annulled on fall-through.
  The `bne` at 0xd821a34 is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd821a5c is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `bgez` at 0xd821a68 is taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bnel` at 0xd821a74 is taken when t8(=[[[0x1014]+276]+176]) != 0 and falls through when t8(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd821a74 is taken and is annulled on fall-through.
  The `beql` at 0xd821ac8 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821ac8 is taken and is annulled on fall-through.
  The `bne` at 0xd821af8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821b08 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821b10 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0xd821b20 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd821b2c is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd821b3c is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821b3c is taken and is annulled on fall-through.
  The `beq` at 0xd821b44 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821b4c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821b78 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821b80 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821b88 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd821b90 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821b90 is taken and is annulled on fall-through.
  The `beq` at 0xd821b98 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd821ba8 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821ba8 is taken and is annulled on fall-through.
  The `beq` at 0xd821bb0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bc1t` at 0xd821bc8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821bd4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bc1t` at 0xd821bec is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821bf8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beql` at 0xd821c1c is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd821c1c is taken and is annulled on fall-through.
  The `bne` at 0xd821c48 is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd821c70 is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `beq` at 0xd821c80 is taken when v0(?) == at(=0x85a2) and falls through when v0(?) != at(=0x85a2).
  The `beq` at 0xd821c88 is taken when v0(?) == at(=0x85a3) and falls through when v0(?) != at(=0x85a3).
  The `bnel` at 0xd821c90 is taken when v0(?) != at(=0x85a4) and falls through when v0(?) == at(=0x85a4).
  Its delay slot runs only when the branch at 0xd821c90 is taken and is annulled on fall-through.
  The `bnel` at 0xd821ca8 is taken when t9(=[[[0x1014]+276]+176]) != 0 and falls through when t9(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd821ca8 is taken and is annulled on fall-through.
  The `beql` at 0xd821cd4 is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd821cd4 is taken and is annulled on fall-through.
  The `bne` at 0xd821d00 is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd821d28 is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `bnel` at 0xd821d38 is taken when v0(?) != at(=0x8430) and falls through when v0(?) == at(=0x8430).
  Its delay slot runs only when the branch at 0xd821d38 is taken and is annulled on fall-through.
  The `bnel` at 0xd821d50 is taken when t2(=[[[0x1014]+276]+176]) != 0 and falls through when t2(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd821d50 is taken and is annulled on fall-through.
  The `beql` at 0xd821d98 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821d98 is taken and is annulled on fall-through.
  The `bne` at 0xd821dc8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821dd8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821de0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0xd821df0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd821dfc is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd821e0c is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821e0c is taken and is annulled on fall-through.
  The `beq` at 0xd821e14 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821e1c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beql` at 0xd821e5c is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd821e5c is taken and is annulled on fall-through.
  The `bne` at 0xd821e8c is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd821eb4 is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `bgez` at 0xd821ec0 is taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bnel` at 0xd821ecc is taken when t8(=[[[0x1014]+276]+176]) != 0 and falls through when t8(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd821ecc is taken and is annulled on fall-through.
  The `beql` at 0xd821f20 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821f20 is taken and is annulled on fall-through.
  The `bne` at 0xd821f50 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821f60 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821f68 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0xd821f78 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd821f84 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd821f94 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd821f94 is taken and is annulled on fall-through.
  The `beq` at 0xd821f9c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd821fa4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beql` at 0xd821fe0 is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd821fe0 is taken and is annulled on fall-through.
  The `bne` at 0xd822010 is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd822038 is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `bgez` at 0xd822044 is taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bnel` at 0xd822054 is taken when t4(=[[[0x1014]+276]+176]) != 0 and falls through when t4(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd822054 is taken and is annulled on fall-through.
  The `beql` at 0xd8220a4 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd8220a4 is taken and is annulled on fall-through.
  The `bne` at 0xd8220d4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8220e4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8220ec is taken when condition not analyzed and falls through when condition not analyzed.
  The `bltz` at 0xd8220fc is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd822108 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd822118 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd822118 is taken and is annulled on fall-through.
  The `beq` at 0xd822120 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd822128 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd822154 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd82215c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd822164 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd82216c is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd82216c is taken and is annulled on fall-through.
  The `beq` at 0xd822174 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd822184 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd822184 is taken and is annulled on fall-through.
  The `beq` at 0xd82218c is taken when condition not analyzed and falls through when condition not analyzed.
  The `bc1t` at 0xd8221a4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8221b0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bc1t` at 0xd8221c8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8221d4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beql` at 0xd8221f8 is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd8221f8 is taken and is annulled on fall-through.
  The `bne` at 0xd822224 is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd82224c is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `beq` at 0xd82225c is taken when v0(?) == at(=0x85a2) and falls through when v0(?) != at(=0x85a2).
  The `beq` at 0xd822264 is taken when v0(?) == at(=0x85a3) and falls through when v0(?) != at(=0x85a3).
  The `bnel` at 0xd82226c is taken when v0(?) != at(=0x85a4) and falls through when v0(?) == at(=0x85a4).
  Its delay slot runs only when the branch at 0xd82226c is taken and is annulled on fall-through.
  The `bnel` at 0xd822284 is taken when t5(=[[[0x1014]+276]+176]) != 0 and falls through when t5(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd822284 is taken and is annulled on fall-through.
  The `beql` at 0xd8222b0 is taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  Its delay slot runs only when the branch at 0xd8222b0 is taken and is annulled on fall-through.
  The `bne` at 0xd8222dc is taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  The `bltz` at 0xd822304 is taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  The `beq` at 0xd822314 is taken when v0(?) == at(=0x842e) and falls through when v0(?) != at(=0x842e).
  The `bnel` at 0xd82231c is taken when v0(?) != at(=0x842f) and falls through when v0(?) == at(=0x842f).
  Its delay slot runs only when the branch at 0xd82231c is taken and is annulled on fall-through.
  The `bnel` at 0xd822330 is taken when t8(=[[[0x1014]+276]+176]) != 0 and falls through when t8(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd822330 is taken and is annulled on fall-through.
  The `beq` at 0xd822344 is taken when a2(=[[[0x1014]+276]+216]) == 0 and falls through when a2(=[[[0x1014]+276]+216]) != 0.
  The `beql` at 0xd822378 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  Its delay slot runs only when the branch at 0xd822378 is taken and is annulled on fall-through.
  The `beql` at 0xd8223bc is taken when t0(?) >= t1(?) (unsigned) and falls through when t0(?) < t1(?) (unsigned).
  Its delay slot runs only when the branch at 0xd8223bc is taken and is annulled on fall-through.
  The `beql` at 0xd822438 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  Its delay slot runs only when the branch at 0xd822438 is taken and is annulled on fall-through.
  The `beql` at 0xd822464 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  Its delay slot runs only when the branch at 0xd822464 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd822480.

- `__glXEmptyImage3D4D` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd822488, 1040 bytes) Inferred.
  Calls `ElementsPerGroup [0xd820be4]` via register-constant with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd822534).
  Calls `BytesPerElement [0xd820af0]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd822580).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8226b8).
  Calls `PackSubsampledImage [0xd83bd8c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8226fc).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd822790).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8227ec).
  Calls `XFree` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd82285c).
  The `beq` at 0xd822508 is taken when t9(=[a0+112]) == at(=0x85a3) and falls through when t9(=[a0+112]) != at(=0x85a3).
  The `bne` at 0xd822514 is taken when t9(=[a0+112]) != at(=0x85a4) and falls through when t9(=[a0+112]) == at(=0x85a4).
  The `blez` at 0xd822544 is taken when s1(=[a0+80]) <= 0 (signed) and falls through when s1(=[a0+80]) > 0 (signed).
  The `blez` at 0xd822554 is taken when s2(=[a0+84]) <= 0 (signed) and falls through when s2(=[a0+84]) > 0 (signed).
  The `blez` at 0xd822564 is taken when s4(=[a0+132]) <= 0 (signed) and falls through when s4(=[a0+132]) > 0 (signed).
  The `bne` at 0xd8225c0 is taken when s5(=[a0+108]) != 0 and falls through when s5(=[a0+108]) == 0.
  The `bne` at 0xd8225d0 is taken when s5(=[a0+108]) != at(=-0x1) and falls through when s5(=[a0+108]) == at(=-0x1).
  The `bne` at 0xd8225d8 is taken when a0(?) != at(=0xffffffff80000000) and falls through when a0(?) == at(=0xffffffff80000000).
  The `beq` at 0xd8225e4 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bgez` at 0xd8225fc is taken when a0(?) >= 0 (signed) and falls through when a0(?) < 0 (signed).
  The `beq` at 0xd822604 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0xd822610 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0xd822694 is taken when t1(?) == 0 and falls through when t1(?) != 0.
  The `beq` at 0xd8226c4 is taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  The `blez` at 0xd82271c is taken when t7(?) <= 0 (signed) and falls through when t7(?) > 0 (signed).
  The `blez` at 0xd822728 is taken when v1(=a3) <= 0 (signed) and falls through when v1(=a3) > 0 (signed).
  The `bne` at 0xd822730 is taken when s4(?) != s5(?) and falls through when s4(?) == s5(?).
  The `bnel` at 0xd82274c is taken when (t8(?) & 0x3) != 0 and falls through when (t8(?) & 0x3) == 0.
  Its delay slot runs only when the branch at 0xd82274c is taken and is annulled on fall-through.
  The `blez` at 0xd8227ac is taken when s7(=a2) <= 0 (signed) and falls through when s7(=a2) > 0 (signed).
  The `bne` at 0xd822800 is taken when s1(?) != s7(=a2) and falls through when s1(?) == s7(=a2).
  The `bne` at 0xd822814 is taken when s8(?) != v1(=a3) and falls through when s8(?) == v1(=a3).
  The `bne` at 0xd822838 is taken when t4(?) != t3(?) and falls through when t4(?) == t3(?).
  The `beql` at 0xd822844 is taken when t7(?) == 0 and falls through when t7(?) != 0.
  Its delay slot runs only when the branch at 0xd822844 is taken and is annulled on fall-through.
  The `beq` at 0xd822850 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  Returns with v0 = ? at `jr` at 0xd822890.

- `__glXEmptyImage` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd822898, 924 bytes) Inferred.
  Calls `EmptyBitmap [0xd822c34]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd822920).
  Calls `ElementsPerGroup [0xd820be4]` via register-constant with a0=a3 at entry (arg3), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd822960).
  Calls `BytesPerElement [0xd820af0]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd822994).
  Calls `malloc` via got with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xd822a64).
  Calls `PackSubsampledImage [0xd83bd8c]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1 (`jalr` at 0xd822ab8).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd822b54).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd822bc4).
  Calls `XFree` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd822c00).
  The `bne` at 0xd822900 is taken when s3(?) != at(=0x1a00) and falls through when s3(?) == at(=0x1a00).
  The `beq` at 0xd822938 is taken when t2(=[a0+112]) == at(=0x85a3) and falls through when t2(=[a0+112]) != at(=0x85a3).
  The `bne` at 0xd822940 is taken when t2(=[a0+112]) != at(=0x85a4) and falls through when t2(=[a0+112]) == at(=0x85a4).
  The `blez` at 0xd822974 is taken when s2(=[a0+80]) <= 0 (signed) and falls through when s2(=[a0+80]) > 0 (signed).
  The `bne` at 0xd8229d4 is taken when s4(=[a0+108]) != 0 and falls through when s4(=[a0+108]) == 0.
  The `bne` at 0xd8229e4 is taken when s4(=[a0+108]) != at(=-0x1) and falls through when s4(=[a0+108]) == at(=-0x1).
  The `bne` at 0xd8229ec is taken when a0(?) != at(=0xffffffff80000000) and falls through when a0(?) == at(=0xffffffff80000000).
  The `beql` at 0xd8229f8 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  Its delay slot runs only when the branch at 0xd8229f8 is taken and is annulled on fall-through.
  The `bgez` at 0xd822a14 is taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `beq` at 0xd822a1c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xd822a28 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beql` at 0xd822a38 is taken when t4(?) == 0 and falls through when t4(?) != 0.
  Its delay slot runs only when the branch at 0xd822a38 is taken and is annulled on fall-through.
  The `beq` at 0xd822a78 is taken when v0(=ret(malloc)) == 0 and falls through when v0(=ret(malloc)) != 0.
  The `bne` at 0xd822adc is taken when s5(?) != s4(?) and falls through when s5(?) == s4(?).
  The `bnel` at 0xd822af4 is taken when (t2(?) & 0x3) != 0 and falls through when (t2(?) & 0x3) == 0.
  Its delay slot runs only when the branch at 0xd822af4 is taken and is annulled on fall-through.
  The `blezl` at 0xd822b90 is taken when s6(=a2) <= 0 (signed) and falls through when s6(=a2) > 0 (signed).
  Its delay slot runs only when the branch at 0xd822b90 is taken and is annulled on fall-through.
  The `bne` at 0xd822bd8 is taken when s1(?) != s6(=a2) and falls through when s1(?) == s6(=a2).
  The `beql` at 0xd822be8 is taken when t5(?) == 0 and falls through when t5(?) != 0.
  Its delay slot runs only when the branch at 0xd822be8 is taken and is annulled on fall-through.
  The `beql` at 0xd822bf0 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  Its delay slot runs only when the branch at 0xd822bf0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd822c2c.

- `EmptyBitmap` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd822c34, 3204 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x60 into `t7` (`lw` at 0xd822c64).
  Loads 4 bytes from a0 (arg0 at entry) +0x50 into `s0` (`lw` at 0xd822c68).
  Loads 4 bytes from a0 (arg0 at entry) +0x6c into `s1` (`lw` at 0xd822c6c).
  Loads 4 bytes from a0 (arg0 at entry) +0x5c into `t8` (`lw` at 0xd822c74).
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd822c78).
  Calls `ElementsPerGroup [0xd820be4]` via register-constant with a0=a3 at entry (arg3), a1=0x1a00, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd822c94).
  The `blez` at 0xd822ca4 is taken when s0(=[a0+80]) <= 0 (signed) and falls through when s0(=[a0+80]) > 0 (signed).
  The `bne` at 0xd822ce0 is taken when s1(=[a0+108]) != 0 and falls through when s1(=[a0+108]) == 0.
  The `bne` at 0xd822cf0 is taken when s1(=[a0+108]) != at(=-0x1) and falls through when s1(=[a0+108]) == at(=-0x1).
  The `bne` at 0xd822cf8 is taken when v1(?) != at(=0xffffffff80000000) and falls through when v1(?) == at(=0xffffffff80000000).
  The `beq` at 0xd822d08 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bgez` at 0xd822d28 is taken when v1(?) >= 0 (signed) and falls through when v1(?) < 0 (signed).
  The `beq` at 0xd822d30 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0xd822d3c is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `blez` at 0xd822d78 is taken when s3(=a2) <= 0 (signed) and falls through when s3(=a2) > 0 (signed).
  The `beq` at 0xd822d98 is taken when t5(?) == 0 and falls through when t5(?) != 0.
  The `beq` at 0xd822db8 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` at 0xd822e18 is taken when a3(?) < 0x8 (signed) and falls through when a3(?) >= 0x8 (signed).
  The `beq` at 0xd822e40 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `beq` at 0xd822e64 is taken when a3(?) >= 0x8 (signed) and falls through when a3(?) < 0x8 (signed).
  The `beq` at 0xd822e6c is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0xd822e84 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `bne` at 0xd822ee4 is taken when ra(?) != s3(=a2) and falls through when ra(?) == s3(=a2).
  Returns with v0 = ret(ElementsPerGroup) at `jr` at 0xd822f04.

- `__glXFillImage3D4D` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd822f0c, 1372 bytes) Inferred.
  Calls `ElementsPerGroup [0xd820be4]` via register-constant with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd822fc8).
  Calls `BytesPerElement [0xd820af0]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd823020).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd82313c).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd823304).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd823330).
  Calls `UnpackSubsampledImage [0xd83b750]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8233d8).
  Calls `XFree` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8233ec).
  The `beq` at 0xd822f98 is taken when t4(=[a0+156]) == at(=0x85a3) and falls through when t4(=[a0+156]) != at(=0x85a3).
  The `bne` at 0xd822fa4 is taken when t4(=[a0+156]) != at(=0x85a4) and falls through when t4(=[a0+156]) == at(=0x85a4).
  The `blezl` at 0xd822fdc is taken when s0(=[a0+124]) <= 0 (signed) and falls through when s0(=[a0+124]) > 0 (signed).
  Its delay slot runs only when the branch at 0xd822fdc is taken and is annulled on fall-through.
  The `blez` at 0xd822ff0 is taken when s1(=[a0+128]) <= 0 (signed) and falls through when s1(=[a0+128]) > 0 (signed).
  The `blez` at 0xd823000 is taken when s4(=[a0+132]) <= 0 (signed) and falls through when s4(=[a0+132]) > 0 (signed).
  The `bne` at 0xd823040 is taken when v0(=ret(BytesPerElement)) != at(=0x1) and falls through when v0(=ret(BytesPerElement)) == at(=0x1).
  The `bne` at 0xd823064 is taken when s8(=[a0+152]) != 0 and falls through when s8(=[a0+152]) == 0.
  The `bne` at 0xd823074 is taken when s8(=[a0+152]) != at(=-0x1) and falls through when s8(=[a0+152]) == at(=-0x1).
  The `bne` at 0xd82307c is taken when v0(?) != at(=0xffffffff80000000) and falls through when v0(?) == at(=0xffffffff80000000).
  The `beq` at 0xd823088 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xd823104 is taken when t5(?) == 0 and falls through when t5(?) != 0.
  The `beq` at 0xd823158 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` at 0xd823160 is taken when t3(?) == 0 and falls through when t3(?) != 0.
  The `beql` at 0xd823180 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  Its delay slot runs only when the branch at 0xd823180 is taken and is annulled on fall-through.
  The `blezl` at 0xd823190 is taken when t4(?) <= 0 (signed) and falls through when t4(?) > 0 (signed).
  Its delay slot runs only when the branch at 0xd823190 is taken and is annulled on fall-through.
  The `blez` at 0xd8231a4 is taken when t7(=a3) <= 0 (signed) and falls through when t7(=a3) > 0 (signed).
  The `blez` at 0xd8231b0 is taken when s7(=a2) <= 0 (signed) and falls through when s7(=a2) > 0 (signed).
  The `blez` at 0xd8231bc is taken when s8(?) <= 0 (signed) and falls through when s8(?) > 0 (signed).
  The `blez` at 0xd8231c4 is taken when s0(=ret(BytesPerElement)) <= 0 (signed) and falls through when s0(=ret(BytesPerElement)) > 0 (signed).
  The `beq` at 0xd8231d0 is taken when (s0(=ret(BytesPerElement)) & 0x3) == 0 and falls through when (s0(=ret(BytesPerElement)) & 0x3) != 0.
  The `bne` at 0xd8231f4 is taken when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` at 0xd823200 is taken when t5(=ret(BytesPerElement)+1) == a0(?) and falls through when t5(=ret(BytesPerElement)+1) != a0(?).
  The `bne` at 0xd82323c is taken when t3(=ret(BytesPerElement)+1) != a0(?) and falls through when t3(=ret(BytesPerElement)+1) == a0(?).
  The `bne` at 0xd82324c is taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  The `bne` at 0xd823258 is taken when s3(?) != s7(=a2) and falls through when s3(?) == s7(=a2).
  The `bne` at 0xd82327c is taken when t7(?) != t6(=a3) and falls through when t7(?) == t6(=a3).
  The `bne` at 0xd8232a0 is taken when t8(?) != t7(?) and falls through when t8(?) == t7(?).
  The `blezl` at 0xd8232b8 is taken when t6(?) <= 0 (signed) and falls through when t6(?) > 0 (signed).
  Its delay slot runs only when the branch at 0xd8232b8 is taken and is annulled on fall-through.
  The `blez` at 0xd8232cc is taken when t5(=a3) <= 0 (signed) and falls through when t5(=a3) > 0 (signed).
  The `bne` at 0xd8232e4 is taken when s6(?) != s5(?) and falls through when s6(?) == s5(?).
  The `blez` at 0xd823318 is taken when s7(=a2) <= 0 (signed) and falls through when s7(=a2) > 0 (signed).
  The `bne` at 0xd823344 is taken when s3(?) != s7(=a2) and falls through when s3(?) == s7(=a2).
  The `bne` at 0xd823368 is taken when t6(?) != t3(=a3) and falls through when t6(?) == t3(=a3).
  The `bne` at 0xd82338c is taken when t7(?) != t6(?) and falls through when t7(?) == t6(?).
  The `beql` at 0xd82339c is taken when t3(?) == 0 and falls through when t3(?) != 0.
  Its delay slot runs only when the branch at 0xd82339c is taken and is annulled on fall-through.
  The `beq` at 0xd8233a4 is taken when t5(?) == 0 and falls through when t5(?) != 0.
  The `beql` at 0xd823400 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  Its delay slot runs only when the branch at 0xd823400 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd823460.

- `__glXFillImage` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd823468, 1104 bytes) Inferred.
  Calls `FillBitmap [0xd8238b8]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8234e4).
  Calls `ElementsPerGroup [0xd820be4]` via register-constant with a0=a3 at entry (arg3), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82352c).
  Calls `BytesPerElement [0xd820af0]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd823568).
  Calls `malloc` via got with a0=?, a1=?, a2=ret(BytesPerElement), a3=? (`jalr` at 0xd823650).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8237a0).
  Calls `memcpy` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8237e4).
  Calls `UnpackSubsampledImage [0xd83b750]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1 (`jalr` at 0xd823850).
  Calls `XFree` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd823864).
  The `bne` at 0xd8234c4 is taken when t7(?) != at(=0x1a00) and falls through when t7(?) == at(=0x1a00).
  The `beq` at 0xd8234fc is taken when t7(=[a0+156]) == at(=0x85a3) and falls through when t7(=[a0+156]) != at(=0x85a3).
  The `bne` at 0xd823504 is taken when t7(=[a0+156]) != at(=0x85a4) and falls through when t7(=[a0+156]) == at(=0x85a4).
  The `blez` at 0xd823544 is taken when s1(=[a0+124]) <= 0 (signed) and falls through when s1(=[a0+124]) > 0 (signed).
  The `bne` at 0xd823594 is taken when v0(=ret(BytesPerElement)) != at(=0x1) and falls through when v0(=ret(BytesPerElement)) == at(=0x1).
  The `bne` at 0xd8235bc is taken when t1(?) != 0 and falls through when t1(?) == 0.
  The `bne` at 0xd8235cc is taken when t1(?) != at(=-0x1) and falls through when t1(?) == at(=-0x1).
  The `bne` at 0xd8235d4 is taken when v0(?) != at(=0xffffffff80000000) and falls through when v0(?) == at(=0xffffffff80000000).
  The `beq` at 0xd8235e0 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beql` at 0xd823610 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  Its delay slot runs only when the branch at 0xd823610 is taken and is annulled on fall-through.
  The `beq` at 0xd823688 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` at 0xd823694 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  The `beq` at 0xd8236b4 is taken when t7(?) == 0 and falls through when t7(?) != 0.
  The `blez` at 0xd8236bc is taken when s2(=a2) <= 0 (signed) and falls through when s2(=a2) > 0 (signed).
  The `blez` at 0xd8236c8 is taken when t5(?) <= 0 (signed) and falls through when t5(?) > 0 (signed).
  The `blez` at 0xd8236d0 is taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  The `beq` at 0xd8236dc is taken when (a2(?) & 0x3) == 0 and falls through when (a2(?) & 0x3) != 0.
  The `bne` at 0xd823700 is taken when a1(?) != a0(?) and falls through when a1(?) == a0(?).
  The `beq` at 0xd82370c is taken when t8(?) == a0(?) and falls through when t8(?) != a0(?).
  The `bne` at 0xd823748 is taken when t6(?) != a0(?) and falls through when t6(?) == a0(?).
  The `bne` at 0xd823758 is taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  The `bne` at 0xd823764 is taken when t2(?) != s2(=a2) and falls through when t2(?) == s2(=a2).
  The `bne` at 0xd82377c is taken when t4(?) != v1(?) and falls through when t4(?) == v1(?).
  The `blezl` at 0xd8237c0 is taken when s2(=a2) <= 0 (signed) and falls through when s2(=a2) > 0 (signed).
  Its delay slot runs only when the branch at 0xd8237c0 is taken and is annulled on fall-through.
  The `bne` at 0xd823804 is taken when t2(?) != s2(=a2) and falls through when t2(?) == s2(=a2).
  The `beql` at 0xd823814 is taken when t7(?) == 0 and falls through when t7(?) != 0.
  Its delay slot runs only when the branch at 0xd823814 is taken and is annulled on fall-through.
  The `beq` at 0xd82381c is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beql` at 0xd823874 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  Its delay slot runs only when the branch at 0xd823874 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8238b0.

- `FillBitmap` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8238b8, 2112 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x7c into `v0` (`lw` at 0xd8238dc).
  Loads 4 bytes from a0 (arg0 at entry) +0x98 into `t0` (`lw` at 0xd8238e4).
  Loads 4 bytes from a0 (arg0 at entry) +0x8c into `t1` (`lw` at 0xd8238e8).
  Loads 4 bytes from a0 (arg0 at entry) +0x88 into `t5` (`lw` at 0xd8238ec).
  Loads 1 byte from a0 (arg0 at entry) +0x79 into `t2` (`lbu` at 0xd8238f4).
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd823904).
  Loads 4 bytes from abs 0xd8458f4 into `t1` (`lw` at 0xd8239bc).
  Performs 5 1-byte loads from ? (base unknown), including `lbu` at 0xd8239fc, `lbu` at 0xd823a00, `lbu` at 0xd823a34.
  Loads 1 byte from table(0xd841de0) +0x0 into `t6` (`lbu` at 0xd823a0c).
  Performs 2 1-byte loads from table(0xd841de0) +0x0, including `lbu` at 0xd823a14, `lbu` at 0xd823a94.
  Calls `ElementsPerGroup [0xd820be4]` via register-constant with a0=a3 at entry (arg3), a1=0x1a00, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd823920).
  The `blez` at 0xd8238f0 is taken when v0(=[a0+124]) <= 0 (signed) and falls through when v0(=[a0+124]) > 0 (signed).
  The `bne` at 0xd823958 is taken when t0(?) != 0 and falls through when t0(?) == 0.
  The `bne` at 0xd823968 is taken when t0(?) != at(=-0x1) and falls through when t0(?) == at(=-0x1).
  The `bne` at 0xd823970 is taken when v1(?) != at(=0xffffffff80000000) and falls through when v1(?) == at(=0xffffffff80000000).
  The `beq` at 0xd823980 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `blez` at 0xd8239b0 is taken when s1(=a2) <= 0 (signed) and falls through when s1(=a2) > 0 (signed).
  The `bne` at 0xd8239ec is taken when t5(?) < 0x8 (signed) and falls through when t5(?) >= 0x8 (signed).
  The `beq` at 0xd8239f4 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `beq` at 0xd823a60 is taken when a2(?) >= 0x8 (signed) and falls through when a2(?) < 0x8 (signed).
  The `beq` at 0xd823a68 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0xd823a80 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `bne` at 0xd823ae0 is taken when t4(?) != s1(=a2) and falls through when t4(?) == s1(=a2).
  Returns with v0 = ret(ElementsPerGroup) at `jr` at 0xd823af8.

- `__glXEndDispatchOverride` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd823ecc, 180 bytes) Inferred.
  Loads 4 bytes from abs 0x1048 into `t6` (`lw` at 0xd823ee8).
  Loads 4 bytes from abs 0x1014 into `v0` (`lw` at 0xd823ef4).
  Stores 4 bytes from `zero` to abs 0x1048 (`sw` at 0xd823ef8).
  Loads 4 bytes from [0x1014] +0x114 into `v1` (`lw` at 0xd823f04).
  Loads 4 bytes from [[0x1014]+276] +0xc4 into `t7` (`lw` at 0xd823f08).
  Loads 4 bytes from [[0x1014]+276] +0xc8 into `a0` (`lw` at 0xd823f14).
  Loads 4 bytes from [[[0x1014]+276]+200] +0x94 into `t9` (`lw` at 0xd823f18).
  Loads 4 bytes from abs 0xd845d14 into `t9` (`lw` at 0xd823f28).
  Performs 4 4-byte loads from ? (base unknown), including `lw` at 0xd823f44, `lw` at 0xd823f54, `lw` at 0xd823f5c.
  Performs 4 4-byte stores to ? (base unknown), including `sw` at 0xd823f50, `sw` at 0xd823f58, `sw` at 0xd823f64.
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd823f1c).
  Calls `__glXDispatchExec` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd823f2c).
  The `beql` at 0xd823eec is taken when t6(=[0x1048]) == 0 and falls through when t6(=[0x1048]) != 0.
  Its delay slot runs only when the branch at 0xd823eec is taken and is annulled on fall-through.
  The `beq` at 0xd823efc is taken when v0(=[0x1014]) == 0 and falls through when v0(=[0x1014]) != 0.
  The `beq` at 0xd823f0c is taken when t7(=[[[0x1014]+276]+196]) == 0 and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `bne` at 0xd823f60 is taken when t2(?) != t3(=ret(__glXDispatchExec)+1884) and falls through when t2(?) == t3(=ret(__glXDispatchExec)+1884).
  Returns with v0 = ? at `jr` at 0xd823f78.

- `__glXBeginDispatchOverride` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd823f80, 176 bytes) Inferred.
  Loads 4 bytes from abs 0x1048 into `t6` (`lw` at 0xd823f9c).
  Loads 4 bytes from abs 0x1014 into `v0` (`lw` at 0xd823fac).
  Stores 4 bytes from `a0` to abs 0x1048 (`sw` at 0xd823fb0).
  Loads 4 bytes from [0x1014] +0x114 into `v1` (`lw` at 0xd823fbc).
  Loads 4 bytes from [[0x1014]+276] +0xc4 into `t7` (`lw` at 0xd823fc0).
  Loads 4 bytes from [[0x1014]+276] +0xc8 into `a0` (`lw` at 0xd823fcc).
  Loads 4 bytes from [[[0x1014]+276]+200] +0x90 into `t9` (`lw` at 0xd823fd4).
  Performs 4 4-byte loads from ? (base unknown), including `lw` at 0xd823ff4, `lw` at 0xd824004, `lw` at 0xd82400c.
  Performs 4 4-byte stores to ? (base unknown), including `sw` at 0xd824000, `sw` at 0xd824008, `sw` at 0xd824014.
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+200], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd823fd8).
  The `bnel` at 0xd823fa4 is taken when t6(=[0x1048]) != 0 and falls through when t6(=[0x1048]) == 0.
  Its delay slot runs only when the branch at 0xd823fa4 is taken and is annulled on fall-through.
  The `beql` at 0xd823fb4 is taken when v0(=[0x1014]) == 0 and falls through when v0(=[0x1014]) != 0.
  Its delay slot runs only when the branch at 0xd823fb4 is taken and is annulled on fall-through.
  The `beql` at 0xd823fc4 is taken when t7(=[[[0x1014]+276]+196]) == 0 and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  Its delay slot runs only when the branch at 0xd823fc4 is taken and is annulled on fall-through.
  The `bne` at 0xd824010 is taken when t2(?) != t3(=a0+1884) and falls through when t2(?) == t3(=a0+1884).
  Returns with v0 = ? at `jr` at 0xd824028.

- `__glXDispatchExec` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824030, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `v1` (`lw` at 0xd82403c).
  Loads 4 bytes from [0x1014] +0x114 into `v0` (`lw` at 0xd824050).
  Loads 4 bytes from [[0x1014]+276] +0xc4 into `t6` (`lw` at 0xd824054).
  Loads 4 bytes from [[0x1014]+276] +0xd8 into `t7` (`lw` at 0xd82405c).
  Loads 4 bytes from [[0x1014]+276] +0xc8 into `a0` (`lw` at 0xd824060).
  Loads 4 bytes from [[[0x1014]+276]+200] +0x8c into `t9` (`lw` at 0xd824064).
  Loads 1 byte from [[0x1014]+276] +0x124 into `t8` (`lbu` at 0xd824084).
  Loads 4 bytes from abs 0xd846400 into `v0` (`lw` at 0xd824094).
  Loads 4 bytes from abs 0xd846404 into `v0` (`lw` at 0xd82409c).
  Performs 2 4-byte loads from abs 0xd846408, including `lw` at 0xd8240a4, `lw` at 0xd8240a8.
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd824068).
  The `beq` at 0xd824048 is taken when v1(=[0x1014]) == 0 and falls through when v1(=[0x1014]) != 0.
  The `beql` at 0xd824058 is taken when t6(=[[[0x1014]+276]+196]) == 0 and falls through when t6(=[[[0x1014]+276]+196]) != 0.
  Its delay slot runs only when the branch at 0xd824058 is taken and is annulled on fall-through.
  The `beq` at 0xd82407c is taken when t7(=[[[0x1014]+276]+216]) == 0 and falls through when t7(=[[[0x1014]+276]+216]) != 0.
  The `beq` at 0xd824088 is taken when t8(=[[[0x1014]+276]+292]:1) == 0 and falls through when t8(=[[[0x1014]+276]+292]:1) != 0.
  Returns with v0 = ? at `jr` at 0xd8240b4.

- `glXGetCurrentReadDrawableSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8240bc, 60 bytes) Inferred.
  Loads 4 bytes from abs 0xd845cfc into `t9` (`lw` at 0xd8240c8).
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8240dc).
  Loads 4 bytes from [0x1014] +0x114 into `t7` (`lw` at 0xd8240e8).
  Loads 4 bytes from [[0x1014]+276] +0xdc into `v0` (`lw` at 0xd8240ec).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8240d4).
  Returns with v0 = [[[0x1014]+276]+220] at `jr` at 0xd8240f0.

- `__glXRestoreCurrent` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8240f8, 668 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=[a1+200], a1=[a1+228]+44, a2=[a1+232]+44, a3=a3 at entry (arg3) (`jalr` at 0xd82416c).
  Calls `(unknown callee)` via register with a0=[a1+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd824194).
  Calls `__glXSendMakeCurrentRead [0xd824394]` via register-constant with a0=[a1+216], a1=a1 at entry (arg1), a2=[a1+60], a3=sp-40 (`jalr` at 0xd824208).
  Calls `__glXSendMakeCurrent [0xd810ad4]` via register-constant with a0=[a1+216], a1=a1 at entry (arg1), a2=[a1+60], a3=sp-40 (`jalr` at 0xd824248).
  Calls `__glXRemoveDrawableInterest` via got with a0=a2 at entry (arg2), a1=?, a2=?, a3=? (`jalr` at 0xd824348).
  Calls `__glXRemoveDrawableInterest` via got with a0=a3 at entry (arg3), a1=?, a2=?, a3=? (`jalr` at 0xd824374).
  The `beq` at 0xd824134 is taken when a1 == t7(=0xd846640) and falls through when a1 != t7(=0xd846640).
  The `beql` at 0xd824144 is taken when t8(=[a1+196]) == 0 and falls through when t8(=[a1+196]) != 0.
  Its delay slot runs only when the branch at 0xd824144 is taken and is annulled on fall-through.
  The `beq` at 0xd824154 is taken when v0(=[[a1+200]+100]) == 0 and falls through when v0(=[[a1+200]+100]) != 0.
  The `bne` at 0xd824178 is taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  The `bne` at 0xd8241a0 is taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  The `bne` at 0xd8241b8 is taken when a2(=[a1+60]) != 0 and falls through when a2(=[a1+60]) == 0.
  The `beq` at 0xd8241d0 is taken when v1(=[a1+220]) == v0(=[a1+224]) and falls through when v1(=[a1+220]) != v0(=[a1+224]).
  The `beq` at 0xd824214 is taken when v0(=ret(__glXSendMakeCurrentRead)) == 0 and falls through when v0(=ret(__glXSendMakeCurrentRead)) != 0.
  The `bne` at 0xd824254 is taken when v0(=ret(__glXSendMakeCurrent)) != 0 and falls through when v0(=ret(__glXSendMakeCurrent)) == 0.
  The `beql` at 0xd824274 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  Its delay slot runs only when the branch at 0xd824274 is taken and is annulled on fall-through.
  The `bnel` at 0xd8242ac is taken when t9(=[0x1048]) != 0 and falls through when t9(=[0x1048]) == 0.
  Its delay slot runs only when the branch at 0xd8242ac is taken and is annulled on fall-through.
  The `bne` at 0xd8242dc is taken when t3(?) != t6(=sym(__glx_nopDispatch)+1884) and falls through when t3(?) == t6(=sym(__glx_nopDispatch)+1884).
  The `beql` at 0xd8242f0 is taken when t7(=a0) == 0 and falls through when t7(=a0) != 0.
  Its delay slot runs only when the branch at 0xd8242f0 is taken and is annulled on fall-through.
  The `beql` at 0xd8242f8 is taken when t7(=a0) == s0(=a1) and falls through when t7(=a0) != s0(=a1).
  Its delay slot runs only when the branch at 0xd8242f8 is taken and is annulled on fall-through.
  The `beql` at 0xd824338 is taken when t5(=a2) == 0 and falls through when t5(=a2) != 0.
  Its delay slot runs only when the branch at 0xd824338 is taken and is annulled on fall-through.
  The `beql` at 0xd82435c is taken when t7(=a3) == t8(=a2) and falls through when t7(=a3) != t8(=a2).
  Its delay slot runs only when the branch at 0xd82435c is taken and is annulled on fall-through.
  The `beql` at 0xd824364 is taken when t7(=a3) == 0 and falls through when t7(=a3) != 0.
  Its delay slot runs only when the branch at 0xd824364 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82438c.

- `videoPackingToInternalFormat` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824d30, 1332 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458f4 into `at` (`lw` at 0xd824d8c).
  Loads 4 bytes from (a0-1 << 0x2) +0xd841c6c into `t6` (`lw` at 0xd824d98).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd824da0).
  The `bne` at 0xd824d40 is taken when a0 < 0x1001 (signed) and falls through when a0 >= 0x1001 (signed).
  The `beq` at 0xd824d48 is taken when a0 == at(=0x1001) and falls through when a0 != at(=0x1001).
  The `beq` at 0xd824d50 is taken when a0 == at(=0x1002) and falls through when a0 != at(=0x1002).
  The `bne` at 0xd824d64 is taken when a0 < 0x19 (signed) and falls through when a0 >= 0x19 (signed).
  The `beq` at 0xd824d70 is taken when a0 == at(=0x1000) and falls through when a0 != at(=0x1000).
  The `beql` at 0xd824d84 is taken when t6(=a0-1) >= 0x18 (unsigned) and falls through when t6(=a0-1) < 0x18 (unsigned).
  Its delay slot runs only when the branch at 0xd824d84 is taken and is annulled on fall-through.
  Returns with v0 = 0x8050 at `jr` at 0xd824dd0.
  Returns with v0 = 0x8056 at `jr` at 0xd824dd8.
  Returns with v0 = 0x8058 at `jr` at 0xd824de0.
  Returns with v0 = 0x0 at `jr` at 0xd824dec.

- `__glXCreateVideoSourcePrivate` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824df4, 104 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `v1` (`lw` at 0xd824e0c).
  Loads 4 bytes from abs 0xd845a6c into `t9` (`lw` at 0xd824e1c).
  Loads 4 bytes from abs 0xd845d1c into `t6` (`lw` at 0xd824e3c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x1c (`sw` at 0xd824e40).
  Stores 4 bytes from `t6` to a0 (arg0 at entry) +0x18 (`sw` at 0xd824e44).
  Calls `calloc` via got with a0=0x1, a1=0x18, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xd824e28).
  The `bnel` at 0xd824e14 is taken when v1(=[a0+28]) != 0 and falls through when v1(=[a0+28]) == 0.
  Its delay slot runs only when the branch at 0xd824e14 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd824e54.

- `__glXDestroyVideoSourcePrivate` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824e5c, 92 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `a2` (`lw` at 0xd824e74).
  Performs 2 4-byte stores to a0 (arg0 at entry) +0x1c, including `sw` at 0xd824e80, `sw` at 0xd824ea0.
  Loads 4 bytes from abs 0xd845a70 into `t9` (`lw` at 0xd824e84).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x18 (`sw` at 0xd824ea4).
  Calls `free` via got with a0=[a0+28], a1=a0 at entry (arg0), a2=[a0+28], a3=a3 at entry (arg3) (`jalr` at 0xd824e90).
  The `beql` at 0xd824e7c is taken when a2(=[a0+28]) == 0 and falls through when a2(=[a0+28]) != 0.
  Its delay slot runs only when the branch at 0xd824e7c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd824eb0.

- `__glXInitializeVideoLibrary` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824eb8, 160 bytes) Inferred.
  Performs 3 4-byte loads from abs 0xd845924, including `lw` at 0xd824ec4, `lw` at 0xd824f00, `lw` at 0xd824f2c.
  Loads 4 bytes from abs 0xd846780 into `t6` (`lw` at 0xd824ed4).
  Loads 4 bytes from abs 0xd845ac0 into `t9` (`lw` at 0xd824ee4).
  Performs 2 4-byte loads from abs 0xd8458f4, including `lw` at 0xd824ee8, `lw` at 0xd824f1c.
  Stores 4 bytes from `v0` to abs 0xd846780 (`sw` at 0xd824f0c).
  Loads 4 bytes from abs 0xd845ac4 into `t9` (`lw` at 0xd824f18).
  Stores 4 bytes from `v0` to abs 0xd846784 (`sw` at 0xd824f38).
  Calls `dlopen` via got with a0=0xd841c50, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd824ef0).
  Calls `dlsym` via got with a0=ret(dlopen), a1=0xd841c5c, a2=?, a3=? (`jalr` at 0xd824f20).
  The `bnel` at 0xd824edc is taken when t6(=[0xd846780]) != 0 and falls through when t6(=[0xd846780]) == 0.
  Its delay slot runs only when the branch at 0xd824edc is taken and is annulled on fall-through.
  The `bne` at 0xd824f08 is taken when v0(=ret(dlopen)) != 0 and falls through when v0(=ret(dlopen)) == 0.
  The `bne` at 0xd824f34 is taken when v0(=ret(dlsym)) != 0 and falls through when v0(=ret(dlsym)) == 0.
  Returns with v0 = one of 0x0, 0x1 at `jr` at 0xd824f50.

- `__glXBufFree` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82512c, 72 bytes) Inferred.
  Loads 4 bytes from abs 0xd845ad8 into `t9` (`lw` at 0xd82514c).
  Loads 4 bytes from a0 (arg0 at entry) -0x8 into `a1` (`lw` at 0xd825150).
  Calls `munmap` via got with a0=a0-8, a1=[a0-8]+8, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xd825158).
  The `beq` at 0xd825144 is taken when a0 == 0 and falls through when a0 != 0.
  Returns with v0 = ? at `jr` at 0xd82516c.

- `glXQueryContextInfoEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825174, 240 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0xc4 into `t6` (`lw` at 0xd82518c).
  Performs 2 4-byte loads from a1 (arg1 at entry) +0x2c, including `lw` at 0xd825198, `lw` at 0xd82521c.
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd8251a4).
  Loads 4 bytes from a1 (arg1 at entry) +0x38 into `t2` (`lw` at 0xd825204).
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `t8` (`lw` at 0xd825210).
  Performs 5 4-byte stores to a3 (arg3 at entry) +0x0, including `sw` at 0xd825218, `sw` at 0xd825224, `sw` at 0xd825230.
  Loads 4 bytes from a1 (arg1 at entry) +0x20 into `t0` (`lw` at 0xd825228).
  Loads 4 bytes from a1 (arg1 at entry) +0x30 into `t1` (`lw` at 0xd825234).
  Calls `__glXQueryContextInfo [0xd825264]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8251b4).
  The `bnel` at 0xd825190 is taken when t6(=[a1+196]) != 0 and falls through when t6(=[a1+196]) == 0.
  Its delay slot runs only when the branch at 0xd825190 is taken and is annulled on fall-through.
  The `bnel` at 0xd82519c is taken when t7(=[a1+44]) != 0 and falls through when t7(=[a1+44]) == 0.
  Its delay slot runs only when the branch at 0xd82519c is taken and is annulled on fall-through.
  The `beq` at 0xd8251c8 is taken when v0(=ret(__glXQueryContextInfo)) == 0 and falls through when v0(=ret(__glXQueryContextInfo)) != 0.
  The `beq` at 0xd8251dc is taken when a2 == at(=0x800a) and falls through when a2 != at(=0x800a).
  The `beq` at 0xd8251e8 is taken when a2 == at(=0x800b) and falls through when a2 != at(=0x800b).
  The `beq` at 0xd8251f0 is taken when a2 == at(=0x800c) and falls through when a2 != at(=0x800c).
  The `beq` at 0xd8251f8 is taken when a2 == at(=0x8013) and falls through when a2 != at(=0x8013).
  The `beql` at 0xd825200 is taken when a2 == at(=0x8030) and falls through when a2 != at(=0x8030).
  Its delay slot runs only when the branch at 0xd825200 is taken and is annulled on fall-through.
  The `beq` at 0xd82524c is taken when condition not analyzed and falls through when condition not analyzed.
  Returns with v0 = ? at `jr` at 0xd82525c.

- `__glXQueryContextInfo` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825264, 1896 bytes) Inferred.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8252a0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8252d0).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8252fc).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0 (`jalr` at 0xd82536c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd825398).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8253b4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8253e8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd825404).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd825424).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd825454).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd825470).
  Calls `_XRead` via got with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=? (`jalr` at 0xd825490).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd825630).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd825650).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd82566c).
  The `bne` at 0xd825288 is taken when a1 != 0 and falls through when a1 == 0.
  The `bne` at 0xd8252ac is taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beql` at 0xd8252c0 is taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8252c0 is taken and is annulled on fall-through.
  The `beql` at 0xd8252ec is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd8252ec is taken and is annulled on fall-through.
  The `bne` at 0xd82537c is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beql` at 0xd825388 is taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd825388 is taken and is annulled on fall-through.
  The `beq` at 0xd8253ac is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `bne` at 0xd8253cc is taken when v1(?) < 0x4 (signed) and falls through when v1(?) >= 0x4 (signed).
  The `beql` at 0xd8253d8 is taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8253d8 is taken and is annulled on fall-through.
  The `beq` at 0xd8253fc is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `bne` at 0xd825438 is taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  The `beql` at 0xd825444 is taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd825444 is taken and is annulled on fall-through.
  The `beq` at 0xd825468 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  The `blez` at 0xd8254a8 is taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  The `beql` at 0xd8254b4 is taken when (a3(?) & 0x1) == 0 and falls through when (a3(?) & 0x1) != 0.
  Its delay slot runs only when the branch at 0xd8254b4 is taken and is annulled on fall-through.
  The `beq` at 0xd8254c8 is taken when v0(?) == a2(=0x800a) and falls through when v0(?) != a2(=0x800a).
  The `beq` at 0xd8254d4 is taken when v0(?) == t1(=0x800b) and falls through when v0(?) != t1(=0x800b).
  The `beq` at 0xd8254dc is taken when v0(?) == t2(=0x800c) and falls through when v0(?) != t2(=0x800c).
  The `beql` at 0xd8254e4 is taken when v0(?) == t0(=0x8013) and falls through when v0(?) != t0(=0x8013).
  Its delay slot runs only when the branch at 0xd8254e4 is taken and is annulled on fall-through.
  The `beq` at 0xd825530 is taken when a0(=0x1) == a3(?) and falls through when a0(=0x1) != a3(?).
  The `beql` at 0xd825550 is taken when v0(?) == a2(=0x800a) and falls through when v0(?) != a2(=0x800a).
  Its delay slot runs only when the branch at 0xd825550 is taken and is annulled on fall-through.
  The `beql` at 0xd825558 is taken when v0(?) == t1(=0x800b) and falls through when v0(?) != t1(=0x800b).
  Its delay slot runs only when the branch at 0xd825558 is taken and is annulled on fall-through.
  The `beql` at 0xd825560 is taken when v0(?) == t2(=0x800c) and falls through when v0(?) != t2(=0x800c).
  Its delay slot runs only when the branch at 0xd825560 is taken and is annulled on fall-through.
  The `beql` at 0xd825568 is taken when v0(?) == t0(=0x8013) and falls through when v0(?) != t0(=0x8013).
  Its delay slot runs only when the branch at 0xd825568 is taken and is annulled on fall-through.
  The `beql` at 0xd8255bc is taken when v0(?) == a2(=0x800a) and falls through when v0(?) != a2(=0x800a).
  Its delay slot runs only when the branch at 0xd8255bc is taken and is annulled on fall-through.
  The `beql` at 0xd8255c4 is taken when v0(?) == t1(=0x800b) and falls through when v0(?) != t1(=0x800b).
  Its delay slot runs only when the branch at 0xd8255c4 is taken and is annulled on fall-through.
  The `beql` at 0xd8255cc is taken when v0(?) == t2(=0x800c) and falls through when v0(?) != t2(=0x800c).
  Its delay slot runs only when the branch at 0xd8255cc is taken and is annulled on fall-through.
  The `beql` at 0xd8255d4 is taken when v0(?) == t0(=0x8013) and falls through when v0(?) != t0(=0x8013).
  Its delay slot runs only when the branch at 0xd8255d4 is taken and is annulled on fall-through.
  The `bnel` at 0xd825620 is taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  Its delay slot runs only when the branch at 0xd825620 is taken and is annulled on fall-through.
  The `beql` at 0xd825640 is taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd825640 is taken and is annulled on fall-through.
  The `beql` at 0xd825664 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  Its delay slot runs only when the branch at 0xd825664 is taken and is annulled on fall-through.
  Returns with v0 = one of 0x0, 0x5 at `jr` at 0xd825688.

- `glXGetCurrentDisplayEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825690, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bc0 into `t9` (`lw` at 0xd82569c).
  Calls `glXGetCurrentDisplay` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8256a8).
  Returns with v0 = ret(glXGetCurrentDisplay) at `jr` at 0xd8256bc.

- `glXQueryServerString` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8256c4, 352 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d00 into `t9` (`lw` at 0xd8256d4).
  Loads 4 bytes from a0 (arg0 at entry) +0x88 into `t6` (`lw` at 0xd825718).
  Loads 4 bytes from ret(__glXInitialize) +0x20 into `t7` (`lw` at 0xd825724).
  Loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x4 into `v1` (`lw` at 0xd825740).
  Loads 4 bytes from ret(__glXInitialize) +0x18 into `t9` (`lw` at 0xd825774).
  Performs 3 4-byte loads from abs 0xd845cf8, including `lw` at 0xd825780, `lw` at 0xd8257b4, `lw` at 0xd8257e8.
  Performs 3 4-byte loads from ret(__glXInitialize) +0x4, including `lw` at 0xd825784, `lw` at 0xd8257b8, `lw` at 0xd8257ec.
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xd825808).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8256e8).
  Calls `__glXQueryServerString` via got with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x1 (`jalr` at 0xd82578c).
  Calls `__glXQueryServerString` via got with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x2 (`jalr` at 0xd8257c0).
  Calls `__glXQueryServerString` via got with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x3 (`jalr` at 0xd8257f4).
  The `bne` at 0xd825700 is taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  The `bltz` at 0xd825710 is taken when a2(=a1) < 0 (signed) and falls through when a2(=a1) >= 0 (signed).
  The `bnel` at 0xd825720 is taken when a2(=a1) < t6(=[a0+136]) (signed) and falls through when a2(=a1) >= t6(=[a0+136]) (signed).
  Its delay slot runs only when the branch at 0xd825720 is taken and is annulled on fall-through.
  The `bne` at 0xd825744 is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) != 0 and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) == 0.
  The `beq` at 0xd825754 is taken when a3(=a2) == at(=0x1) and falls through when a3(=a2) != at(=0x1).
  The `beq` at 0xd82575c is taken when a3(=a2) == at(=0x2) and falls through when a3(=a2) != at(=0x2).
  The `beq` at 0xd825764 is taken when a3(=a2) == at(=0x3) and falls through when a3(=a2) != at(=0x3).
  The `bne` at 0xd825778 is taken when t9(=[ret(__glXInitialize)+24]) != 0 and falls through when t9(=[ret(__glXInitialize)+24]) == 0.
  The `bne` at 0xd8257ac is taken when t2(=[ret(__glXInitialize)+28]) != 0 and falls through when t2(=[ret(__glXInitialize)+28]) == 0.
  The `bne` at 0xd8257e0 is taken when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) != 0 and falls through when v1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) == 0.
  Returns with v0 = ? at `jr` at 0xd82581c.

- `glXGetClientString` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825824, 96 bytes) Inferred.
  Performs 3 4-byte loads from abs 0xd8458f4, including `lw` at 0xd825858, `lw` at 0xd825864, `lw` at 0xd825870.
  The `beq` at 0xd825834 is taken when a1 == at(=0x1) and falls through when a1 != at(=0x1).
  The `beq` at 0xd825840 is taken when a1 == at(=0x2) and falls through when a1 != at(=0x2).
  The `beq` at 0xd825848 is taken when a1 == at(=0x3) and falls through when a1 != at(=0x3).
  Returns with v0 = 0xd840b48 at `jr` at 0xd82585c.
  Returns with v0 = 0xd840b4c at `jr` at 0xd825868.
  Returns with v0 = 0xd840b5c at `jr` at 0xd825874.
  Returns with v0 = 0x0 at `jr` at 0xd82587c.

- `glXQueryExtensionsString` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825884, 252 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d00 into `t9` (`lw` at 0xd825890).
  Loads 4 bytes from a0 (arg0 at entry) +0x88 into `t7` (`lw` at 0xd8258cc).
  Loads 4 bytes from ret(__glXInitialize) +0x20 into `t8` (`lw` at 0xd8258d8).
  Loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x4 into `a0` (`lw` at 0xd8258f0).
  Loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x18 into `a0` (`lw` at 0xd8258f8).
  Loads 4 bytes from ([ret(__glXInitialize)+32] + (a1 << 0x5)) +0x14 into `a1` (`lw` at 0xd825910).
  Loads 4 bytes from abs 0xd845cf8 into `t9` (`lw` at 0xd825920).
  Loads 4 bytes from ret(__glXInitialize) +0x4 into `a1` (`lw` at 0xd825924).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0xd825940, `sw` at 0xd825968.
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd825944).
  Loads 4 bytes from abs 0xd8458f4 into `a0` (`lw` at 0xd825948).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8258a4).
  Calls `__glXQueryServerString` via got with a0=a0 at entry (arg0), a1=[ret(__glXInitialize)+4], a2=a1 at entry (arg1), a3=0x3 (`jalr` at 0xd82592c).
  Calls `combine_strings [0xd826114]` via register-constant with a0=0xd840b5c, a1=?, a2=?, a3=? (`jalr` at 0xd825954).
  The `bne` at 0xd8258b4 is taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  The `bltz` at 0xd8258c4 is taken when a2(=a1) < 0 (signed) and falls through when a2(=a1) >= 0 (signed).
  The `bnel` at 0xd8258d4 is taken when a2(=a1) < t7(=[a0+136]) (signed) and falls through when a2(=a1) >= t7(=[a0+136]) (signed).
  Its delay slot runs only when the branch at 0xd8258d4 is taken and is annulled on fall-through.
  The `bnel` at 0xd8258f4 is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) != 0 and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+4]) == 0.
  Its delay slot runs only when the branch at 0xd8258f4 is taken and is annulled on fall-through.
  The `bnel` at 0xd825908 is taken when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+24]) != 0 and falls through when a0(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+24]) == 0.
  Its delay slot runs only when the branch at 0xd825908 is taken and is annulled on fall-through.
  The `bne` at 0xd825918 is taken when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) != 0 and falls through when a1(=[([ret(__glXInitialize)+32] + (a1 << 0x5))+20]) == 0.
  Returns with v0 = ? at `jr` at 0xd825978.

- `glXGetContextIDEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825980, 8 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `v0` (`lw` at 0xd825984).
  Returns with v0 = [a0+20] at `jr` at 0xd825980.

- `glXChooseFBConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825988, 68 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bcc into `t9` (`lw` at 0xd825998).
  Calls `glXChooseFBConfigWithFltSGIX` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0 (`jalr` at 0xd8259b0).
  Returns with v0 = ret(glXChooseFBConfigWithFltSGIX) at `jr` at 0xd8259c4.

- `orderFBConfigs` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8259cc, 1468 bytes) Inferred.
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+28], a1=[a1+28], a2=a2 at entry (arg2), a3=a2 at entry (arg2) (`jalr` at 0xd825a08).
  Calls `orderLarger1 [0xd835ea8]` via register-constant with a0=?, a1=?, a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825af4).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+108], a1=[a1+108], a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825b34).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+78]:1, a1=[a1+78]:1, a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825b74).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+152], a1=[a1+152], a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825bb4).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+148], a1=[a1+148], a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825bf4).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+144], a1=[a1+144], a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825c34).
  Calls `orderLarger1 [0xd835ea8]` via register-constant with a0=[a0+100], a1=[a1+100], a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825dfc).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0+104], a1=[a1+104], a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825e3c).
  Calls `orderLarger1 [0xd835ea8]` via register-constant with a0=?, a1=?, a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825f1c).
  Calls `orderSmaller [0xd825fc0]` via register-constant with a0=[a0], a1=[a1], a2=?, a3=a2 at entry (arg2) (`jalr` at 0xd825f5c).
  The `bne` at 0xd8259f0 is taken when (a2 & 0x100) != 0 and falls through when (a2 & 0x100) == 0.
  The `beq` at 0xd825a14 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` at 0xd825a28 is taken when (a3(=a2) & 0x4) == 0 and falls through when (a3(=a2) & 0x4) != 0.
  The `beq` at 0xd825a40 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0xd825a58 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xd825a70 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0xd825a84 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xd825a98 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0xd825ab0 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xd825ac8 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0xd825b08 is taken when v0(=ret(orderLarger1)) == 0 and falls through when v0(=ret(orderLarger1)) != 0.
  The `bnel` at 0xd825b1c is taken when (a3(=a2) & 0x200) != 0 and falls through when (a3(=a2) & 0x200) == 0.
  Its delay slot runs only when the branch at 0xd825b1c is taken and is annulled on fall-through.
  The `beq` at 0xd825b48 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  The `bnel` at 0xd825b5c is taken when t6(?) != 0 and falls through when t6(?) == 0.
  Its delay slot runs only when the branch at 0xd825b5c is taken and is annulled on fall-through.
  The `beq` at 0xd825b88 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  The `bnel` at 0xd825b9c is taken when t7(?) != 0 and falls through when t7(?) == 0.
  Its delay slot runs only when the branch at 0xd825b9c is taken and is annulled on fall-through.
  The `beq` at 0xd825bc8 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  The `bnel` at 0xd825bdc is taken when t8(?) != 0 and falls through when t8(?) == 0.
  Its delay slot runs only when the branch at 0xd825bdc is taken and is annulled on fall-through.
  The `beq` at 0xd825c08 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  The `bltzl` at 0xd825c1c is taken when t9(=(a2 << 0xf)) < 0 (signed) and falls through when t9(=(a2 << 0xf)) >= 0 (signed).
  Its delay slot runs only when the branch at 0xd825c1c is taken and is annulled on fall-through.
  The `beq` at 0xd825c48 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  The `bltzl` at 0xd825c5c is taken when t6(=(a2 << 0xe)) < 0 (signed) and falls through when t6(=(a2 << 0xe)) >= 0 (signed).
  Its delay slot runs only when the branch at 0xd825c5c is taken and is annulled on fall-through.
  The `bnel` at 0xd825c6c is taken when v0(=0x1) != t7(=[a0+160]:1) and falls through when v0(=0x1) == t7(=[a0+160]:1).
  Its delay slot runs only when the branch at 0xd825c6c is taken and is annulled on fall-through.
  The `bne` at 0xd825c80 is taken when v0(=0x1) != t8(=[a1+160]:1) and falls through when v0(=0x1) == t8(=[a1+160]:1).
  The `bgez` at 0xd825c88 is taken when t9(=(a2 << 0x7)) >= 0 (signed) and falls through when t9(=(a2 << 0x7)) < 0 (signed).
  The `bgez` at 0xd825cb8 is taken when t6(=(a2 << 0xa)) >= 0 (signed) and falls through when t6(=(a2 << 0xa)) < 0 (signed).
  The `bgez` at 0xd825cd8 is taken when t7(=(a2 << 0xb)) >= 0 (signed) and falls through when t7(=(a2 << 0xb)) < 0 (signed).
  The `bgez` at 0xd825cf8 is taken when t8(=(a2 << 0x8)) >= 0 (signed) and falls through when t8(=(a2 << 0x8)) < 0 (signed).
  The `beq` at 0xd825d18 is taken when t9(?) == 0 and falls through when t9(?) != 0.
  The `bgez` at 0xd825d34 is taken when t6(=(a2 << 0xc)) >= 0 (signed) and falls through when t6(=(a2 << 0xc)) < 0 (signed).
  The `bgezl` at 0xd825d50 is taken when t7(=(a2 << 0xd)) >= 0 (signed) and falls through when t7(=(a2 << 0xd)) < 0 (signed).
  Its delay slot runs only when the branch at 0xd825d50 is taken and is annulled on fall-through.
  The `bgez` at 0xd825d6c is taken when t8(=(a2 << 0x6)) >= 0 (signed) and falls through when t8(=(a2 << 0x6)) < 0 (signed).
  The `bc1tl` at 0xd825db8 is taken when f12 == f2 (c.eq.d at 0xd825db0) and falls through when not (f12 == f2 (c.eq.d at 0xd825db0)).
  Its delay slot runs only when the branch at 0xd825db8 is taken and is annulled on fall-through.
  The `bc1f` at 0xd825dc8 is taken when not (f2 < f12 (c.lt.d at 0xd825dc0)) and falls through when f2 < f12 (c.lt.d at 0xd825dc0).
  The `bnel` at 0xd825de4 is taken when t9(?) != 0 and falls through when t9(?) == 0.
  Its delay slot runs only when the branch at 0xd825de4 is taken and is annulled on fall-through.
  The `beq` at 0xd825e10 is taken when v0(=ret(orderLarger1)) == 0 and falls through when v0(=ret(orderLarger1)) != 0.
  The `bnel` at 0xd825e24 is taken when t6(?) != 0 and falls through when t6(?) == 0.
  Its delay slot runs only when the branch at 0xd825e24 is taken and is annulled on fall-through.
  The `beq` at 0xd825e50 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  The `beq` at 0xd825e64 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xd825e78 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0xd825e8c is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beql` at 0xd825ea0 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  Its delay slot runs only when the branch at 0xd825ea0 is taken and is annulled on fall-through.
  The `beq` at 0xd825eb4 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0xd825ec8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beql` at 0xd825edc is taken when v0(?) == 0 and falls through when v0(?) != 0.
  Its delay slot runs only when the branch at 0xd825edc is taken and is annulled on fall-through.
  The `beql` at 0xd825ef0 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  Its delay slot runs only when the branch at 0xd825ef0 is taken and is annulled on fall-through.
  The `beq` at 0xd825f30 is taken when v0(=ret(orderLarger1)) == 0 and falls through when v0(=ret(orderLarger1)) != 0.
  The `bnel` at 0xd825f44 is taken when (a3(=a2) & 0x4000) != 0 and falls through when (a3(=a2) & 0x4000) == 0.
  Its delay slot runs only when the branch at 0xd825f44 is taken and is annulled on fall-through.
  The `beq` at 0xd825f64 is taken when v0(=ret(orderSmaller)) == 0 and falls through when v0(=ret(orderSmaller)) != 0.
  Returns with v0 = ? at `jr` at 0xd825f80.

- `orderLarger` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825f88, 56 bytes) Inferred.
  The `bne` at 0xd825f88 is taken when a0 != a1 and falls through when a0 == a1.
  The `bne` at 0xd825f98 is taken when a0 != 0 and falls through when a0 == 0.
  The `bne` at 0xd825fa8 is taken when a1 != 0 and falls through when a1 == 0.
  Returns with v0 = 0x0 at `jr` at 0xd825f90.
  Returns with v0 = -0x1 at `jr` at 0xd825fa0.
  Returns with v0 = 0x1 at `jr` at 0xd825fb0.
  Returns with v0 = ? at `jr` at 0xd825fb8.

- `orderSmaller` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825fc0, 340 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0xd825fc0.

- `glXGetFBConfigAttribSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd825fc8, 72 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bc4 into `t9` (`lw` at 0xd825ff0).
  Calls `glXGetFBConfigAttrib` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd825ff4).
  The `bne` at 0xd825fe0 is taken when a2 != at(=0x800b) and falls through when a2 == at(=0x800b).
  Returns with v0 = ? at `jr` at 0xd826008.

- `glXFreeContextEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826010, 56 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd82601c).
  Calls `DestroyContext [0xd8267a0]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82602c).
  Returns with v0 = ret(DestroyContext) at `jr` at 0xd826040.

- `glXImportContextEXT` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826048, 204 bytes) Inferred.
  Loads 4 bytes from abs 0xd845ba8 into `t9` (`lw` at 0xd826070).
  Loads 4 bytes from abs 0xd8458e8 into `t9` (`lw` at 0xd826094).
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd8260d4).
  Calls `__glXIsDirect` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82607c).
  Calls `CreateContext [0xd80f618]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x0 (`jalr` at 0xd8260c0).
  Calls `__glXQueryContextInfo [0xd825264]` via register-constant with a0=a0 at entry (arg0), a1=ret(CreateContext), a2=?, a3=? (`jalr` at 0xd8260e4).
  The `bne` at 0xd826060 is taken when a1 != 0 and falls through when a1 == 0.
  The `beq` at 0xd826084 is taken when v0(=ret(__glXIsDirect)) == 0 and falls through when v0(=ret(__glXIsDirect)) != 0.
  The `beq` at 0xd8260cc is taken when v0(=ret(CreateContext)) == 0 and falls through when v0(=ret(CreateContext)) != 0.
  The `beq` at 0xd8260f0 is taken when v0(=ret(__glXQueryContextInfo)) == 0 and falls through when v0(=ret(__glXQueryContextInfo)) != 0.
  Returns with v0 = ? at `jr` at 0xd82610c.

- `combine_strings` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826114, 1676 bytes) Inferred.
  Calls `strlen` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd826154).
  Calls `strlen` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd826170).
  Calls `malloc` via got with a0=ret(strlen)+2, a1=?, a2=?, a3=? (`jalr` at 0xd82618c).
  Calls `strdup` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd8261a4).
  Calls `malloc` via got with a0=ret(strlen)+2, a1=?, a2=?, a3=? (`jalr` at 0xd8261c4).
  Calls `strdup` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8261dc).
  Calls `free` via got with a0=ret(malloc), a1=?, a2=?, a3=? (`jalr` at 0xd826210).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd826230).
  Calls `strtok` via got with a0=ret(strdup), a1=0xd840d98, a2=?, a3=? (`jalr` at 0xd826254).
  Calls `strlen` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd826284).
  Calls `strcspn` via got with a0=?, a1=0xd840d9c, a2=?, a3=? (`jalr` at 0xd8262a8).
  Calls `strlen` via got with a0=ret(strtok), a1=?, a2=?, a3=? (`jalr` at 0xd8262c0).
  Calls `strncmp` via got with a0=ret(strtok), a1=?, a2=ret(strcspn), a3=? (`jalr` at 0xd8262dc).
  Calls `strcat` via got with a0=?, a1=ret(strtok), a2=?, a3=? (`jalr` at 0xd8262f8).
  Calls `strcat` via got with a0=ret(strcat), a1=0xd840da0, a2=?, a3=? (`jalr` at 0xd826310).
  Calls `strtok` via got with a0=0x0, a1=0xd840da4, a2=?, a3=? (`jalr` at 0xd826340).
  Calls `free` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd82635c).
  The `beq` at 0xd82617c is taken when v0(=ret(strlen)) >= s1(=ret(strlen)) (signed) and falls through when v0(=ret(strlen)) < s1(=ret(strlen)) (signed).
  The `beq` at 0xd8261f0 is taken when s4(=ret(malloc)) == 0 and falls through when s4(=ret(malloc)) != 0.
  The `bnel` at 0xd8261f8 is taken when v0(=ret(strdup)) != 0 and falls through when v0(=ret(strdup)) == 0.
  Its delay slot runs only when the branch at 0xd8261f8 is taken and is annulled on fall-through.
  The `beql` at 0xd826200 is taken when s4(=ret(malloc)) == 0 and falls through when s4(=ret(malloc)) != 0.
  Its delay slot runs only when the branch at 0xd826200 is taken and is annulled on fall-through.
  The `beq` at 0xd826220 is taken when t6(?) == 0 and falls through when t6(?) != 0.
  The `beq` at 0xd826260 is taken when v0(=ret(strtok)) == 0 and falls through when v0(=ret(strtok)) != 0.
  The `beq` at 0xd826294 is taken when s7(?) >= s3(?) (unsigned) and falls through when s7(?) < s3(?) (unsigned).
  The `bne` at 0xd8262c8 is taken when v0(=ret(strlen)) != s0(=ret(strcspn)) and falls through when v0(=ret(strlen)) == s0(=ret(strcspn)).
  The `bne` at 0xd8262e4 is taken when v0(=ret(strncmp)) != 0 and falls through when v0(=ret(strncmp)) == 0.
  The `bne` at 0xd82632c is taken when s1(?) < s3(?) (unsigned) and falls through when s1(?) >= s3(?) (unsigned).
  The `bne` at 0xd82634c is taken when v0(=ret(strtok)) != 0 and falls through when v0(=ret(strtok)) == 0.
  Returns with v0 = ? at `jr` at 0xd826390.

- `glXWaitX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826398, 368 bytes) Inferred.
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd826484).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd82649c).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8264a0).
  Stores 1 byte from `a1` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8264a8).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8264b4).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8263b4).
  Calls `XSync` via got with a0=[[[0x1014]+276]+216], a1=0x0, a2=[[0x1014]+276], a3=? (`jalr` at 0xd8263ec).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=? (`jalr` at 0xd826408).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd826430).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd826464).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=0x9, a2=?, a3=? (`jalr` at 0xd8264cc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8264e8).
  The `beql` at 0xd8263cc is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd8263cc is taken and is annulled on fall-through.
  The `beq` at 0xd8263d8 is taken when t7(=[[[0x1014]+276]+196]) == 0 and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `beql` at 0xd82641c is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd82641c is taken and is annulled on fall-through.
  The `beql` at 0xd826450 is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd826450 is taken and is annulled on fall-through.
  The `beql` at 0xd8264bc is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8264bc is taken and is annulled on fall-through.
  The `beql` at 0xd8264e0 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd8264e0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd826500.

- `glXWaitGL` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826508, 360 bytes) Inferred.
  Stores 2 bytes from `t1` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8265ec).
  Stores 4 bytes from `t3` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd826604).
  Stores 4 bytes from `t5` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd826608).
  Stores 1 byte from `a1` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd826610).
  Stores 4 bytes from `t7` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd82661c).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd826524).
  Calls `glFinish` via got with a0=?, a1=?, a2=[[0x1014]+276], a3=? (`jalr` at 0xd826554).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[0x1014]+276], a3=? (`jalr` at 0xd826570).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd826598).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8265cc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=0x8, a2=?, a3=? (`jalr` at 0xd826634).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd826650).
  The `beql` at 0xd82653c is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd82653c is taken and is annulled on fall-through.
  The `beq` at 0xd826548 is taken when t7(=[[[0x1014]+276]+196]) == 0 and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `beql` at 0xd826584 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd826584 is taken and is annulled on fall-through.
  The `beql` at 0xd8265b8 is taken when t8(=[[[[0x1014]+276]+216]+112]) >= t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned) and falls through when t8(=[[[[0x1014]+276]+216]+112]) < t0(=[[[[0x1014]+276]+216]+108]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8265b8 is taken and is annulled on fall-through.
  The `beql` at 0xd826624 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd826624 is taken and is annulled on fall-through.
  The `beql` at 0xd826648 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd826648 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd826668.

- `glXQueryExtension` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826670, 132 bytes) Inferred.
  Loads 4 bytes from abs 0xd845a88 into `t9` (`lw` at 0xd826680).
  Loads 4 bytes from abs 0xd8458f4 into `a1` (`lw` at 0xd826688).
  Stores 4 bytes from `t7` to a1 (arg1 at entry) +0x0 (`sw` at 0xd8266c8).
  Stores 4 bytes from `t8` to a2 (arg2 at entry) +0x0 (`sw` at 0xd8266d4).
  Calls `XQueryExtension` via got with a0=a0 at entry (arg0), a1=0xd840d94, a2=sp-4, a3=sp-12 (`jalr` at 0xd8266a8).
  The `beq` at 0xd8266b8 is taken when v0(=ret(XQueryExtension)) == 0 and falls through when v0(=ret(XQueryExtension)) != 0.
  The `beq` at 0xd8266c0 is taken when v1(=a1) == 0 and falls through when v1(=a1) != 0.
  The `beq` at 0xd8266cc is taken when a0(=a2) == 0 and falls through when a0(=a2) != 0.
  Returns with v0 = one of 0x0, 0x1 at `jr` at 0xd8266ec.

- `glXQueryVersion` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8266f4, 116 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d00 into `t9` (`lw` at 0xd826700).
  Loads 4 bytes from ret(__glXInitialize) +0x10 into `t6` (`lw` at 0xd82673c).
  Stores 4 bytes from `t6` to a1 (arg1 at entry) +0x0 (`sw` at 0xd826740).
  Loads 4 bytes from ret(__glXInitialize) +0x14 into `t7` (`lw` at 0xd82674c).
  Stores 4 bytes from `t7` to a2 (arg2 at entry) +0x0 (`sw` at 0xd826750).
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd826714).
  The `bne` at 0xd826724 is taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  The `beq` at 0xd826734 is taken when v1(=a1) == 0 and falls through when v1(=a1) != 0.
  The `beql` at 0xd826744 is taken when a0(=a2) == 0 and falls through when a0(=a2) != 0.
  Its delay slot runs only when the branch at 0xd826744 is taken and is annulled on fall-through.
  Returns with v0 = one of 0x0, 0x1 at `jr` at 0xd826760.

- `glXDestroyContext` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826768, 56 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458ec into `t9` (`lw` at 0xd826774).
  Calls `DestroyContext [0xd8267a0]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd826784).
  Returns with v0 = ret(DestroyContext) at `jr` at 0xd826798.

- `__glXFreeContext` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826904, 480 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=[a0+200], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd826970).
  Calls `XFree` via got with a0=[a0+248], a1=?, a2=?, a3=? (`jalr` at 0xd82698c).
  Calls `XFree` via got with a0=[a0+252], a1=?, a2=?, a3=? (`jalr` at 0xd8269a8).
  Calls `XFree` via got with a0=[a0+256], a1=?, a2=?, a3=? (`jalr` at 0xd8269c4).
  Calls `XFree` via got with a0=[a0+260], a1=?, a2=?, a3=? (`jalr` at 0xd8269e0).
  Calls `__glx_PopClientAttrib` via got with a0=?, a1=[a0+188], a2=?, a3=? (`jalr` at 0xd826a04).
  Calls `free` via got with a0=?, a1=[a0+188], a2=?, a3=? (`jalr` at 0xd826a54).
  Calls `free` via got with a0=[a0+188], a1=[a0+188], a2=?, a3=? (`jalr` at 0xd826a88).
  Calls `XFree` via got with a0=[a0+180], a1=?, a2=?, a3=? (`jalr` at 0xd826aa0).
  Calls `XFree` via got with a0=[a0], a1=?, a2=?, a3=? (`jalr` at 0xd826ab4).
  Calls `XFree` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd826ac8).
  The `beq` at 0xd826920 is taken when a1 == 0 and falls through when a1 != 0.
  The `beql` at 0xd826930 is taken when v0(=[sym(__glx_contextList)]) == 0 and falls through when v0(=[sym(__glx_contextList)]) != 0.
  Its delay slot runs only when the branch at 0xd826930 is taken and is annulled on fall-through.
  The `bnel` at 0xd826938 is taken when v0(?) != s0(=a0) and falls through when v0(?) == s0(=a0).
  Its delay slot runs only when the branch at 0xd826938 is taken and is annulled on fall-through.
  The `bne` at 0xd826954 is taken when v0(?) != 0 and falls through when v0(?) == 0.
  The `beql` at 0xd826960 is taken when t7(=[a0+196]) == 0 and falls through when t7(=[a0+196]) != 0.
  Its delay slot runs only when the branch at 0xd826960 is taken and is annulled on fall-through.
  The `beql` at 0xd826980 is taken when a0(=[a0+248]) == 0 and falls through when a0(=[a0+248]) != 0.
  Its delay slot runs only when the branch at 0xd826980 is taken and is annulled on fall-through.
  The `beql` at 0xd82699c is taken when a0(=[a0+252]) == 0 and falls through when a0(=[a0+252]) != 0.
  Its delay slot runs only when the branch at 0xd82699c is taken and is annulled on fall-through.
  The `beql` at 0xd8269b8 is taken when a0(=[a0+256]) == 0 and falls through when a0(=[a0+256]) != 0.
  Its delay slot runs only when the branch at 0xd8269b8 is taken and is annulled on fall-through.
  The `beql` at 0xd8269d4 is taken when a0(=[a0+260]) == 0 and falls through when a0(=[a0+260]) != 0.
  Its delay slot runs only when the branch at 0xd8269d4 is taken and is annulled on fall-through.
  The `beql` at 0xd8269f8 is taken when a1(=[a0+188]) >= t8(=[a0+192]) (unsigned) and falls through when a1(=[a0+188]) < t8(=[a0+192]) (unsigned).
  Its delay slot runs only when the branch at 0xd8269f8 is taken and is annulled on fall-through.
  The `bne` at 0xd826a1c is taken when a1(=[a0+188]) < t0(=[a0+192]) (unsigned) and falls through when a1(=[a0+188]) >= t0(=[a0+192]) (unsigned).
  The `beq` at 0xd826a38 is taken when a1(=[a0+188]) >= t3(=([a0+188] + ([a0+184] << 0x2))) (unsigned) and falls through when a1(=[a0+188]) < t3(=([a0+188] + ([a0+184] << 0x2))) (unsigned).
  The `beq` at 0xd826a44 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` at 0xd826a78 is taken when v0(?) < t6(=([a0+188] + ([a0+184] << 0x2))) (unsigned) and falls through when v0(?) >= t6(=([a0+188] + ([a0+184] << 0x2))) (unsigned).
  Returns with v0 = ret(XFree) at `jr` at 0xd826adc.

- `glXUseXFont` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826ae4, 408 bytes) Inferred.
  Stores 2 bytes from `t2` to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd826bd8).
  Stores 4 bytes from `t4` to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd826bf0).
  Stores 4 bytes from `t6` to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd826bf4).
  Stores 1 byte from `a1` to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd826bfc).
  Stores 4 bytes from `t8` to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd826c08).
  Calls `__glXInitThread` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd826b14).
  Calls `__glXUseXFont` via got with a0=[[0x1014]+276], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jalr` at 0xd826b54).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a1 at entry (arg1), a3=? (`jalr` at 0xd826b70).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd826b90).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd826bbc).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=0xc, a2=?, a3=? (`jalr` at 0xd826c40).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd826c5c).
  The `beql` at 0xd826b2c is taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd826b2c is taken and is annulled on fall-through.
  The `beq` at 0xd826b40 is taken when t7(=[[[0x1014]+276]+196]) == 0 and falls through when t7(=[[[0x1014]+276]+196]) != 0.
  The `beql` at 0xd826b80 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd826b80 is taken and is annulled on fall-through.
  The `beql` at 0xd826bac is taken when t0(=[[[[0x1014]+276]+216]+112]) >= t1(=[[[[0x1014]+276]+216]+108]+24) (unsigned) and falls through when t0(=[[[[0x1014]+276]+216]+112]) < t1(=[[[[0x1014]+276]+216]+108]+24) (unsigned).
  Its delay slot runs only when the branch at 0xd826bac is taken and is annulled on fall-through.
  The `beql` at 0xd826c30 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  Its delay slot runs only when the branch at 0xd826c30 is taken and is annulled on fall-through.
  The `beql` at 0xd826c54 is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Its delay slot runs only when the branch at 0xd826c54 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd826c74.

- `IndexScore` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826c7c, 17708 bytes) Inferred.
  Returns with v0 = ? at `jr` at 0xd826c7c.

- `glXGetConfig` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd826c84, 928 bytes) Inferred.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd826cac).
  Calls `(unknown callee)` via register with a0=[a1+4], a1=([ret(__glXInitialize)+32] + ([a1+8] << 0x5)), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd826dbc).
  The `bne` at 0xd826cc0 is taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  The `bltz` at 0xd826cd8 is taken when a0(=[a1+8]) < 0 (signed) and falls through when a0(=[a1+8]) >= 0 (signed).
  The `bnel` at 0xd826ce8 is taken when a0(=[a1+8]) < t7(=[a0+136]) (signed) and falls through when a0(=[a1+8]) >= t7(=[a0+136]) (signed).
  Its delay slot runs only when the branch at 0xd826ce8 is taken and is annulled on fall-through.
  The `bnel` at 0xd826d0c is taken when v1(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+4]) != 0 and falls through when v1(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+4]) == 0.
  Its delay slot runs only when the branch at 0xd826d0c is taken and is annulled on fall-through.
  The `bne` at 0xd826d14 is taken when a2 != at(=0x1) and falls through when a2 == at(=0x1).
  The `bltz` at 0xd826d38 is taken when v0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+8]-1) < 0 (signed) and falls through when v0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+8]-1) >= 0 (signed).
  The `bne` at 0xd826d4c is taken when a0(=[a1+4]) != t1(?) and falls through when a0(=[a1+4]) == t1(?).
  The `bnel` at 0xd826d60 is taken when a2 < v0(=0x186a1) (signed) and falls through when a2 >= v0(=0x186a1) (signed).
  Its delay slot runs only when the branch at 0xd826d60 is taken and is annulled on fall-through.
  The `beql` at 0xd826d68 is taken when a2 == v0(=0x186a1) and falls through when a2 != v0(=0x186a1).
  Its delay slot runs only when the branch at 0xd826d68 is taken and is annulled on fall-through.
  The `bne` at 0xd826d7c is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beql` at 0xd826d8c is taken when a2 == at(=0x186a0) and falls through when a2 != at(=0x186a0).
  Its delay slot runs only when the branch at 0xd826d8c is taken and is annulled on fall-through.
  The `beq` at 0xd826da0 is taken when t2(=a2-1) >= 0x28 (unsigned) and falls through when t2(=a2-1) < 0x28 (unsigned).
  The `beq` at 0xd826dcc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826ddc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826dec is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826dfc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e0c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e1c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e2c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e3c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e4c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e5c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e6c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e7c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e8c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826e9c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826eac is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826ebc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826ecc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826efc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f0c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f1c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f2c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f3c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f4c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f5c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f88 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826f98 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826fa8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826fb8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826fc8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826fd8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd826fe8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd826ff8 is taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  The `bne` at 0xd827000 is taken when a2 != at(=0x1) and falls through when a2 == at(=0x1).
  Returns with v0 = ? at `jr` at 0xd82701c.

- `glXDestroyGLXPixmap` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827024, 280 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d04 into `t9` (`lw` at 0xd827030).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd82705c, `lw` at 0xd8270ec.
  Performs 4 4-byte loads from a0 (arg0 at entry) +0x6c, including `lw` at 0xd827064, `lw` at 0xd82707c, `lw` at 0xd8270a8.
  Loads 4 bytes from [a0+1232] +0x0 into `t9` (`lw` at 0xd827068).
  Stores 2 bytes from `t8` to [a0+108] +0x2 (`sh` at 0xd8270b8).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x6c (`sw` at 0xd8270d0).
  Stores 4 bytes from `t3` to a0 (arg0 at entry) +0x60 (`sw` at 0xd8270d4).
  Stores 1 byte from `a1` to [a0+108] +0x1 (`sb` at 0xd8270dc).
  Stores 4 bytes from `t5` to [a0+108] +0x4 (`sw` at 0xd8270e8).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827048).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd827070).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd82709c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xf, a2=?, a3=? (`jalr` at 0xd827100).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd82711c).
  The `beq` at 0xd827054 is taken when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beql` at 0xd827060 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd827060 is taken and is annulled on fall-through.
  The `beql` at 0xd82708c is taken when t6(=[a0+112]) >= t7(=[a0+108]+8) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd82708c is taken and is annulled on fall-through.
  The `beql` at 0xd8270f0 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8270f0 is taken and is annulled on fall-through.
  The `beql` at 0xd827114 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  Its delay slot runs only when the branch at 0xd827114 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd827134.

- `glXCreateGLXPixmap` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82713c, 352 bytes) Inferred.
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x64 (`sw` at 0xd8271d4).
  Stores 2 bytes from `t8` to [a0+108] +0x2 (`sh` at 0xd8271e0).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x6c (`sw` at 0xd8271fc).
  Stores 4 bytes from `t3` to a0 (arg0 at entry) +0x60 (`sw` at 0xd827200).
  Stores 1 byte from `a1` to [a0+108] +0x1 (`sb` at 0xd827208).
  Stores 4 bytes from `t5` to [a0+108] +0x4 (`sw` at 0xd827214).
  Stores 4 bytes from `t9` to [a0+108] +0x8 (`sw` at 0xd82721c).
  Stores 4 bytes from `t6` to [a0+108] +0xc (`sw` at 0xd827224).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827164).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd827194).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8271c0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0xd, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd827230).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd82725c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd827278).
  The `bne` at 0xd827170 is taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beql` at 0xd827184 is taken when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd827184 is taken and is annulled on fall-through.
  The `beql` at 0xd8271b0 is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned) and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8271b0 is taken and is annulled on fall-through.
  The `beql` at 0xd82724c is taken when a1(=[a0+1232]) == 0 and falls through when a1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd82724c is taken and is annulled on fall-through.
  The `beql` at 0xd827270 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  Its delay slot runs only when the branch at 0xd827270 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd827294.

- `glXIsDirect` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82729c, 76 bytes) Inferred.
  Loads 4 bytes from abs 0xd845ba8 into `t9` (`lw` at 0xd8272c4).
  Loads 4 bytes from a1 (arg1 at entry) +0x14 into `a1` (`lw` at 0xd8272c8).
  Calls `__glXIsDirect` via got with a0=a0 at entry (arg0), a1=[a1+20], a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jalr` at 0xd8272cc).
  The `bne` at 0xd8272b4 is taken when a1 != 0 and falls through when a1 == 0.
  Returns with v0 = ? at `jr` at 0xd8272e0.

- `__glXIsDirect` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8272e8, 336 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d04 into `t9` (`lw` at 0xd8272f4).
  Stores 2 bytes from `t1` to [a0+108] +0x2 (`sh` at 0xd827390).
  Stores 4 bytes from `t3` to a0 (arg0 at entry) +0x6c (`sw` at 0xd8273ac).
  Stores 4 bytes from `t5` to a0 (arg0 at entry) +0x60 (`sw` at 0xd8273b0).
  Stores 1 byte from `t0` to [a0+108] +0x1 (`sb` at 0xd8273b8).
  Stores 4 bytes from `t9` to [a0+108] +0x4 (`sw` at 0xd8273d0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82730c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd827348).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd827374).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-36, a2=0x0, a3=0x0 (`jalr` at 0xd8273d8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8273f8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd827414).
  The `beq` at 0xd827318 is taken when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `bnel` at 0xd827324 is taken when t6(=a1) != 0 and falls through when t6(=a1) == 0.
  Its delay slot runs only when the branch at 0xd827324 is taken and is annulled on fall-through.
  The `beql` at 0xd827338 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd827338 is taken and is annulled on fall-through.
  The `beql` at 0xd827364 is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned) and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd827364 is taken and is annulled on fall-through.
  The `beql` at 0xd8273e8 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd8273e8 is taken and is annulled on fall-through.
  The `beql` at 0xd82740c is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  Its delay slot runs only when the branch at 0xd82740c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd827430.

- `glXCopyContext` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827438, 540 bytes) Inferred.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82746c).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x2, a2=0xa, a3=[a2+20] (`jalr` at 0xd8274b0).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xa, a2=0xa, a3=[a2+20] (`jalr` at 0xd8274d4).
  Calls `(unknown callee)` via register with a0=[a2+200], a1=[a1+200], a2=a3 at entry (arg3), a3=a1 at entry (arg1) (`jalr` at 0xd82750c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1) (`jalr` at 0xd827544).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=a1 at entry (arg1) (`jalr` at 0xd827584).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+108], a2=0xa, a3=a1 at entry (arg1) (`jalr` at 0xd82761c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd827638).
  The `beq` at 0xd827488 is taken when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `beq` at 0xd827490 is taken when a3(=a1) == 0 and falls through when a3(=a1) != 0.
  The `beq` at 0xd82749c is taken when t8(?) == 0 and falls through when t8(?) != 0.
  The `bnel` at 0xd8274c0 is taken when t0(=a2) != v1(?) and falls through when t0(=a2) == v1(?).
  Its delay slot runs only when the branch at 0xd8274c0 is taken and is annulled on fall-through.
  The `beq` at 0xd8274e8 is taken when t9(=[a1+196]) == 0 and falls through when t9(=[a1+196]) != 0.
  The `beq` at 0xd8274f4 is taken when t2(=[a2+196]) == 0 and falls through when t2(=[a2+196]) != 0.
  The `bne` at 0xd82751c is taken when a3(=a1) != v1(?) and falls through when a3(=a1) == v1(?).
  The `beql` at 0xd827530 is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd827530 is taken and is annulled on fall-through.
  The `beql` at 0xd827570 is taken when t3(=[a0+112]) >= t4(=[a0+108]+20) (unsigned) and falls through when t3(=[a0+112]) < t4(=[a0+108]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd827570 is taken and is annulled on fall-through.
  The `beq` at 0xd8275e8 is taken when t0(=a2) == 0 and falls through when t0(=a2) != 0.
  The `beql` at 0xd82760c is taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  Its delay slot runs only when the branch at 0xd82760c is taken and is annulled on fall-through.
  The `beql` at 0xd827630 is taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  Its delay slot runs only when the branch at 0xd827630 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82764c.

- `__glXConvolutionParameterivEXT_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8277c0, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c18 into `t9` (`lw` at 0xd8277cc).
  Calls `__glXConvolutionParameterfvEXT_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8277d8).
  Returns with v0 = ret(__glXConvolutionParameterfvEXT_size) at `jr` at 0xd8277ec.

- `__glXConvolutionParameterfvEXT_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8277f4, 84 bytes) Inferred.
  The `beq` at 0xd8277f8 is taken when a0 == at(=0x8013) and falls through when a0 != at(=0x8013).
  The `beq` at 0xd827800 is taken when a0 == at(=0x8014) and falls through when a0 != at(=0x8014).
  The `beq` at 0xd827808 is taken when a0 == at(=0x8015) and falls through when a0 != at(=0x8015).
  The `beq` at 0xd827810 is taken when a0 == at(=0x8154) and falls through when a0 != at(=0x8154).
  Returns with v0 = 0x4 at `jr` at 0xd827820, `jr` at 0xd827828, `jr` at 0xd827830.
  Returns with v0 = 0x1 at `jr` at 0xd827838.
  Returns with v0 = 0x0 at `jr` at 0xd827840.

- `__glXMaterialiv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827848, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c10 into `t9` (`lw` at 0xd827854).
  Calls `__glXMaterialfv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827860).
  Returns with v0 = ret(__glXMaterialfv_size) at `jr` at 0xd827874.

- `__glXMaterialfv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82787c, 132 bytes) Inferred.
  The `beq` at 0xd827880 is taken when a0 == at(=0x1200) and falls through when a0 != at(=0x1200).
  The `beq` at 0xd827888 is taken when a0 == at(=0x1201) and falls through when a0 != at(=0x1201).
  The `beq` at 0xd827890 is taken when a0 == at(=0x1202) and falls through when a0 != at(=0x1202).
  The `beq` at 0xd827898 is taken when a0 == at(=0x1600) and falls through when a0 != at(=0x1600).
  The `beq` at 0xd8278a0 is taken when a0 == at(=0x1601) and falls through when a0 != at(=0x1601).
  The `beq` at 0xd8278a8 is taken when a0 == at(=0x1602) and falls through when a0 != at(=0x1602).
  The `beq` at 0xd8278b0 is taken when a0 == at(=0x1603) and falls through when a0 != at(=0x1603).
  Returns with v0 = 0x1 at `jr` at 0xd8278c0.
  Returns with v0 = 0x4 at `jr` at 0xd8278c8, `jr` at 0xd8278d0, `jr` at 0xd8278d8, `jr` at 0xd8278e0, `jr` at 0xd8278e8.
  Returns with v0 = 0x3 at `jr` at 0xd8278f0.
  Returns with v0 = 0x0 at `jr` at 0xd8278f8.

- `__glXLightModeliv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827900, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c08 into `t9` (`lw` at 0xd82790c).
  Calls `__glXLightModelfv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827918).
  Returns with v0 = ret(__glXLightModelfv_size) at `jr` at 0xd82792c.

- `__glXLightModelfv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827934, 84 bytes) Inferred.
  The `beq` at 0xd827938 is taken when a0 == at(=0xb51) and falls through when a0 != at(=0xb51).
  The `beq` at 0xd827940 is taken when a0 == at(=0xb52) and falls through when a0 != at(=0xb52).
  The `beq` at 0xd827948 is taken when a0 == at(=0xb53) and falls through when a0 != at(=0xb53).
  The `beq` at 0xd827950 is taken when a0 == at(=0x81f8) and falls through when a0 != at(=0x81f8).
  Returns with v0 = 0x4 at `jr` at 0xd827960.
  Returns with v0 = 0x1 at `jr` at 0xd827968, `jr` at 0xd827970, `jr` at 0xd827978.
  Returns with v0 = 0x0 at `jr` at 0xd827980.

- `__glXLightiv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827988, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c00 into `t9` (`lw` at 0xd827994).
  Calls `__glXLightfv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8279a0).
  Returns with v0 = ret(__glXLightfv_size) at `jr` at 0xd8279b4.

- `__glXColorTableParameterfvSGI_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8279bc, 36 bytes) Inferred.
  The `beq` at 0xd8279c0 is taken when a0 == at(=0x80d6) and falls through when a0 != at(=0x80d6).
  The `bne` at 0xd8279c8 is taken when a0 != at(=0x80d7) and falls through when a0 == at(=0x80d7).
  Returns with v0 = 0x4 at `jr` at 0xd8279d0.
  Returns with v0 = 0x0 at `jr` at 0xd8279d8.

- `__glXBufCalloc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8279e0, 120 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c50 into `t9` (`lw` at 0xd827a14).
  Loads 4 bytes from abs 0xd845ad4 into `t9` (`lw` at 0xd827a34).
  Calls `__glXBufMalloc` via got with a0=?, a1=a1 at entry (arg1), a2=?, a3=a0 at entry (arg0) (`jalr` at 0xd827a20).
  Calls `memset` via got with a0=ret(__glXBufMalloc), a1=0x0, a2=?, a3=? (`jalr` at 0xd827a3c).
  The `beq` at 0xd8279f8 is taken when a0 == 0 and falls through when a0 != 0.
  The `bne` at 0xd827a00 is taken when a1 != 0 and falls through when a1 == 0.
  Returns with v0 = ? at `jr` at 0xd827a50.

- `__glXBufMalloc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827a58, 200 bytes) Inferred.
  Loads 4 bytes from abs 0xd845a40 into `t9` (`lw` at 0xd827a80).
  Loads 4 bytes from abs 0xd8458f4 into `a0` (`lw` at 0xd827a84).
  Loads 4 bytes from abs 0xd845a48 into `t9` (`lw` at 0xd827aa0).
  Loads 4 bytes from abs 0xd845a50 into `t9` (`lw` at 0xd827ad4).
  Stores 4 bytes from `t7` to ? (base unknown) (`sw` at 0xd827b08).
  Calls `open` via got with a0=0xd841554, a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827a8c).
  Calls `mmap` via got with a0=0x0, a1=a0+8, a2=0x3, a3=0x2 (`jalr` at 0xd827ac0).
  Calls `close` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd827ad8).
  The `bne` at 0xd827a70 is taken when a0 != 0 and falls through when a0 == 0.
  The `beq` at 0xd827a98 is taken when v0(=ret(open)) == at(=-0x1) and falls through when v0(=ret(open)) != at(=-0x1).
  The `bne` at 0xd827af8 is taken when v1(?) != at(=-0x1) and falls through when v1(?) == at(=-0x1).
  Returns with v0 = ? at `jr` at 0xd827b18.

- `__glXFatal` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827b20, 156 bytes) Inferred.
  Performs 2 4-byte loads from abs 0xd845a4c, including `lw` at 0xd827b30, `lw` at 0xd827b80.
  Performs 2 4-byte loads from abs 0xd8458f4, including `lw` at 0xd827b3c, `lw` at 0xd827b88.
  Performs 3 4-byte loads from abs 0xd8459b4, including `lw` at 0xd827b40, `lw` at 0xd827b70, `lw` at 0xd827b84.
  Loads 4 bytes from abs 0xd845acc into `t9` (`lw` at 0xd827b6c).
  Loads 4 bytes from abs 0xd845ad0 into `t9` (`lw` at 0xd827b9c).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd841544, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827b58).
  Calls `vfprintf` via got with a0=sym(__iob)+32, a1=a1 at entry (arg1), a2=sp+8, a3=? (`jalr` at 0xd827b74).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd841550, a2=?, a3=? (`jalr` at 0xd827b90).
  Calls `abort` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd827ba0).
  Returns with v0 = ret(abort) at `jr` at 0xd827bb4.

- `__glXWarning` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827bbc, 140 bytes) Inferred.
  Performs 2 4-byte loads from abs 0xd845a4c, including `lw` at 0xd827bcc, `lw` at 0xd827c1c.
  Performs 2 4-byte loads from abs 0xd8458f4, including `lw` at 0xd827bd8, `lw` at 0xd827c24.
  Performs 3 4-byte loads from abs 0xd8459b4, including `lw` at 0xd827bdc, `lw` at 0xd827c0c, `lw` at 0xd827c20.
  Loads 4 bytes from abs 0xd845acc into `t9` (`lw` at 0xd827c08).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd841530, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827bf4).
  Calls `vfprintf` via got with a0=sym(__iob)+32, a1=a1 at entry (arg1), a2=sp+8, a3=? (`jalr` at 0xd827c10).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xd841540, a2=?, a3=? (`jalr` at 0xd827c2c).
  Returns with v0 = ret(fprintf) at `jr` at 0xd827c40.

- `__glXRealloc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827c48, 96 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c40 into `t9` (`lw` at 0xd827c68).
  Loads 4 bytes from abs 0xd845ac8 into `t9` (`lw` at 0xd827c80).
  Calls `__glXFree` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1) (`jalr` at 0xd827c6c).
  Calls `realloc` via got with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a1 at entry (arg1) (`jalr` at 0xd827c8c).
  The `bne` at 0xd827c60 is taken when a2 != 0 and falls through when a2 == 0.
  Returns with v0 = ? at `jr` at 0xd827ca0.

- `__glXFree` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827ca8, 68 bytes) Inferred.
  Loads 4 bytes from abs 0xd845a70 into `t9` (`lw` at 0xd827ccc).
  Calls `free` via got with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827cd0).
  The `beq` at 0xd827cc4 is taken when a1 == 0 and falls through when a1 != 0.
  Returns with v0 = ? at `jr` at 0xd827ce4.

- `__glXColorTableParameterivSGI_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827cec, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845c20 into `t9` (`lw` at 0xd827cf8).
  Calls `__glXColorTableParameterfvSGI_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827d04).
  Returns with v0 = ret(__glXColorTableParameterfvSGI_size) at `jr` at 0xd827d18.

- `__glXLightfv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827d20, 144 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458f4 into `at` (`lw` at 0xd827d3c).
  Loads 4 bytes from (a0-4608 << 0x2) +0xd8414e0 into `t6` (`lw` at 0xd827d48).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd827d50).
  The `beq` at 0xd827d34 is taken when t6(=a0-4608) >= 0xa (unsigned) and falls through when t6(=a0-4608) < 0xa (unsigned).
  Returns with v0 = 0x0 at `jr` at 0xd827da8.

- `__glXTexGendv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827db0, 60 bytes) Inferred.
  The `beq` at 0xd827db4 is taken when a0 == at(=0x2500) and falls through when a0 != at(=0x2500).
  The `beq` at 0xd827dbc is taken when a0 == at(=0x2501) and falls through when a0 != at(=0x2501).
  The `beq` at 0xd827dc4 is taken when a0 == at(=0x2502) and falls through when a0 != at(=0x2502).
  Returns with v0 = 0x1 at `jr` at 0xd827dd4.
  Returns with v0 = 0x4 at `jr` at 0xd827ddc.
  Returns with v0 = 0x0 at `jr` at 0xd827de4.

- `__glXCallLists_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827dec, 180 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458f4 into `at` (`lw` at 0xd827e14).
  Loads 4 bytes from (a1-5120 << 0x2) +0xd841338 into `t6` (`lw` at 0xd827e20).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd827e28).
  The `bgez` at 0xd827df8 is taken when a0 >= 0 (signed) and falls through when a0 < 0 (signed).
  The `beq` at 0xd827e0c is taken when t6(=a1-5120) >= 0xa (unsigned) and falls through when t6(=a1-5120) < 0xa (unsigned).
  The `beq` at 0xd827e30 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e38 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e40 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e48 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e50 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e58 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e60 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e68 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e70 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd827e78 is taken when condition not analyzed and falls through when condition not analyzed.
  Returns with v0 = 0x0 at `jr` at 0xd827e00, `jr` at 0xd827e80.

- `__glXFogfv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827ea0, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bd8 into `t9` (`lw` at 0xd827eac).
  Calls `__glXFogiv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827eb8).
  Returns with v0 = ret(__glXFogiv_size) at `jr` at 0xd827ecc.

- `__glXFogiv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827ed4, 112 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458f4 into `at` (`lw` at 0xd827ef0).
  Loads 4 bytes from (a0-2913 << 0x2) +0xd841320 into `t6` (`lw` at 0xd827efc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd827f04).
  The `beq` at 0xd827ee8 is taken when t6(=a0-2913) >= 0x6 (unsigned) and falls through when t6(=a0-2913) < 0x6 (unsigned).
  Returns with v0 = 0x0 at `jr` at 0xd827f3c.

- `glXGetFBConfigFromVisualSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827f44, 296 bytes) Inferred.
  Loads 4 bytes from abs 0xd845d00 into `t9` (`lw` at 0xd827f50).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `a1` (`lw` at 0xd827f80).
  Loads 4 bytes from a0 (arg0 at entry) +0x88 into `t7` (`lw` at 0xd827f90).
  Loads 4 bytes from ret(__glXInitialize) +0x20 into `t8` (`lw` at 0xd827f9c).
  Loads 4 bytes from ([ret(__glXInitialize)+32] + ([a1+8] << 0x5)) +0xc into `a2` (`lw` at 0xd827fb4).
  Loads 4 bytes from ([ret(__glXInitialize)+32] + ([a1+8] << 0x5)) +0x10 into `a0` (`lw` at 0xd827fb8).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `a1` (`lw` at 0xd827fcc).
  Loads 4 bytes from ? (base unknown) into `t0` (`lw` at 0xd827fd4).
  Loads 4 bytes from abs 0xd845a7c into `t9` (`lw` at 0xd827fe4).
  Performs 4 4-byte loads from ? (base unknown), including `lw` at 0xd82801c, `lw` at 0xd82802c, `lw` at 0xd828034.
  Calls `__glXInitialize` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd827f64).
  Calls `malloc` via got with a0=0xe8, a1=[a1+4], a2=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+12], a3=a1 at entry (arg1) (`jalr` at 0xd827ff0).
  The `bne` at 0xd827f70 is taken when v0(=ret(__glXInitialize)) != 0 and falls through when v0(=ret(__glXInitialize)) == 0.
  The `bltz` at 0xd827f88 is taken when a1(=[a1+8]) < 0 (signed) and falls through when a1(=[a1+8]) >= 0 (signed).
  The `bnel` at 0xd827f98 is taken when a1(=[a1+8]) < t7(=[a0+136]) (signed) and falls through when a1(=[a1+8]) >= t7(=[a0+136]) (signed).
  Its delay slot runs only when the branch at 0xd827f98 is taken and is annulled on fall-through.
  The `beql` at 0xd827fbc is taken when a2(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+12]) == 0 and falls through when a2(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+12]) != 0.
  Its delay slot runs only when the branch at 0xd827fbc is taken and is annulled on fall-through.
  The `blez` at 0xd827fc4 is taken when a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]) <= 0 (signed) and falls through when a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]) > 0 (signed).
  The `bne` at 0xd827fdc is taken when a1(=[a1+4]) != t0(?) and falls through when a1(=[a1+4]) == t0(?).
  The `bne` at 0xd828000 is taken when v0(=ret(malloc)) != 0 and falls through when v0(=ret(malloc)) == 0.
  The `bne` at 0xd828038 is taken when t3(?) != t5(?) and falls through when t3(?) == t5(?).
  The `bne` at 0xd828050 is taken when v0(?) != a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]) and falls through when v0(?) == a0(=[([ret(__glXInitialize)+32] + ([a1+8] << 0x5))+16]).
  Returns with v0 = ? at `jr` at 0xd828064.

- `glXGetVisualFromFBConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82806c, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bd0 into `t9` (`lw` at 0xd828078).
  Calls `glXGetVisualFromFBConfig` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd828084).
  Returns with v0 = ret(glXGetVisualFromFBConfig) at `jr` at 0xd828098.

- `glXCreateContextWithConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8280a0, 108 bytes) Inferred.
  Loads 4 bytes from abs 0xd8458e8 into `t9` (`lw` at 0xd8280b0).
  Calls `CreateContext [0xd80f618]` via register-constant with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jalr` at 0xd8280f0).
  Returns with v0 = ret(CreateContext) at `jr` at 0xd828104.

- `__glXTexGenfv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82810c, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845be4 into `t9` (`lw` at 0xd828118).
  Calls `__glXTexGendv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd828124).
  Returns with v0 = ret(__glXTexGendv_size) at `jr` at 0xd828138.

- `__glXTexImage2D_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828140, 500 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82818c).
  The `bgez` at 0xd82814c is taken when a2 >= 0 (signed) and falls through when a2 < 0 (signed).
  The `bgez` at 0xd82815c is taken when a3 >= 0 (signed) and falls through when a3 < 0 (signed).
  The `beq` at 0xd828170 is taken when t6(=a0-6400) >= 0xb (unsigned) and falls through when t6(=a0-6400) < 0xb (unsigned).
  The 19 conditional branches in the range 0xd828194-0xd828330 are not reached from the entry per hostfacts and are not listed.
  Returns with v0 = 0x0 at `jr` at 0xd828154, `jr` at 0xd828164, `jr` at 0xd828200.

- `__glXTexImage1D_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828334, 460 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd828370).
  The `bgez` at 0xd828340 is taken when a2 >= 0 (signed) and falls through when a2 < 0 (signed).
  The `beq` at 0xd828354 is taken when t6(=a0-6400) >= 0xb (unsigned) and falls through when t6(=a0-6400) < 0xb (unsigned).
  The 19 conditional branches in the range 0xd828378-0xd8284fc are not reached from the entry per hostfacts and are not listed.
  Returns with v0 = 0x0 at `jr` at 0xd828348, `jr` at 0xd8283e4.

- `__glXTexEnviv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828500, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bf8 into `t9` (`lw` at 0xd82850c).
  Calls `__glXTexEnvfv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd828518).
  Returns with v0 = ret(__glXTexEnvfv_size) at `jr` at 0xd82852c.

- `__glXTexEnvfv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828534, 52 bytes) Inferred.
  The `beq` at 0xd828538 is taken when a0 == at(=0x2200) and falls through when a0 != at(=0x2200).
  The `beq` at 0xd828540 is taken when a0 == at(=0x2201) and falls through when a0 != at(=0x2201).
  Returns with v0 = 0x1 at `jr` at 0xd828550.
  Returns with v0 = 0x4 at `jr` at 0xd828558.
  Returns with v0 = 0x0 at `jr` at 0xd828560.

- `__glXTexParameteriv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828568, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845bf0 into `t9` (`lw` at 0xd828574).
  Calls `__glXTexParameterfv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd828580).
  Returns with v0 = ret(__glXTexParameterfv_size) at `jr` at 0xd828594.

- `__glXTexParameterfv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82859c, 332 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82862c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd82866c).
  The `bne` at 0xd8285b0 is taken when a0 < at(=0x8073) (unsigned) and falls through when a0 >= at(=0x8073) (unsigned).
  The `bne` at 0xd8285bc is taken when a0 < at(=0x813e) (unsigned) and falls through when a0 >= at(=0x813e) (unsigned).
  The `bnel` at 0xd8285c8 is taken when a0 < v0(=0x819b) (unsigned) and falls through when a0 >= v0(=0x819b) (unsigned).
  Its delay slot runs only when the branch at 0xd8285c8 is taken and is annulled on fall-through.
  The `beq` at 0xd8285d0 is taken when a0 == v0(=0x819b) and falls through when a0 != v0(=0x819b).
  The `bne` at 0xd8285e8 is taken when a0 < at(=0x817b) (unsigned) and falls through when a0 >= at(=0x817b) (unsigned).
  The `beq` at 0xd8285f0 is taken when a0 == at(=0x819a) and falls through when a0 != at(=0x819a).
  The `beql` at 0xd828610 is taken when t6(=a0-33137) >= 0xa (unsigned) and falls through when t6(=a0-33137) < 0xa (unsigned).
  Its delay slot runs only when the branch at 0xd828610 is taken and is annulled on fall-through.
  The `bne` at 0xd82863c is taken when a0 < at(=0x809c) (unsigned) and falls through when a0 >= at(=0x809c) (unsigned).
  The `beql` at 0xd828650 is taken when t7(=a0-33060) >= 0x1a (unsigned) and falls through when t7(=a0-33060) < 0x1a (unsigned).
  Its delay slot runs only when the branch at 0xd828650 is taken and is annulled on fall-through.
  The `beq` at 0xd828678 is taken when a0 == at(=0x809a) and falls through when a0 != at(=0x809a).
  The `beq` at 0xd828680 is taken when a0 == at(=0x809b) and falls through when a0 != at(=0x809b).
  The `beq` at 0xd828694 is taken when a0 == at(=0x1004) and falls through when a0 != at(=0x1004).
  The `beq` at 0xd82869c is taken when a0 == at(=0x2800) and falls through when a0 != at(=0x2800).
  The `beq` at 0xd8286a4 is taken when a0 == at(=0x2801) and falls through when a0 != at(=0x2801).
  The `beq` at 0xd8286ac is taken when a0 == at(=0x2802) and falls through when a0 != at(=0x2802).
  The `beq` at 0xd8286b4 is taken when a0 == at(=0x2803) and falls through when a0 != at(=0x2803).
  The `bnel` at 0xd8286bc is taken when a0 != at(=0x8072) and falls through when a0 == at(=0x8072).
  Its delay slot runs only when the branch at 0xd8286bc is taken and is annulled on fall-through.
  Returns with v0 = 0x1 at `jr` at 0xd8286c4.
  Returns with v0 = 0x4 at `jr` at 0xd8286d4.
  Returns with v0 = 0x0 at `jr` at 0xd8286e0.

- `__glXTexGeniv_size` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8286e8, 52 bytes) Inferred.
  Loads 4 bytes from abs 0xd845be4 into `t9` (`lw` at 0xd8286f4).
  Calls `__glXTexGendv_size` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd828700).
  Returns with v0 = ret(__glXTexGendv_size) at `jr` at 0xd828714.

- `__glx_PixelStorei` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82871c, 1356 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=[[[0x1014]+276]+216] (`jr` at 0xd828810).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a1 at entry (arg1), a3=[[[0x1014]+276]+216] (`jalr` at 0xd828b4c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd828b7c).
  Calls `_XFlush` via got with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd828bb4).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd828c28).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd828c48).
  The `beql` at 0xd828750 is taken when a3(=[[[0x1014]+276]+216]) == 0 and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  Its delay slot runs only when the branch at 0xd828750 is taken and is annulled on fall-through.
  The `bne` at 0xd828758 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0xd828764 is taken when a0 == at(=0x842c) and falls through when a0 != at(=0x842c).
  The `beq` at 0xd82876c is taken when a0 == at(=0x842d) and falls through when a0 != at(=0x842d).
  The `beq` at 0xd828774 is taken when a0 == at(=0x85a0) and falls through when a0 != at(=0x85a0).
  The `beql` at 0xd82877c is taken when a0 == at(=0x85a1) and falls through when a0 != at(=0x85a1).
  Its delay slot runs only when the branch at 0xd82877c is taken and is annulled on fall-through.
  The `bnel` at 0xd828790 is taken when a0 < v0(=0x806d) (unsigned) and falls through when a0 >= v0(=0x806d) (unsigned).
  Its delay slot runs only when the branch at 0xd828790 is taken and is annulled on fall-through.
  The `beq` at 0xd828798 is taken when a0 == v0(=0x806d) and falls through when a0 != v0(=0x806d).
  The `beq` at 0xd8287a0 is taken when a0 == at(=0x806e) and falls through when a0 != at(=0x806e).
  The `bnel` at 0xd8287b8 is taken when a0 < v0(=0x806c) (unsigned) and falls through when a0 >= v0(=0x806c) (unsigned).
  Its delay slot runs only when the branch at 0xd8287b8 is taken and is annulled on fall-through.
  The `beq` at 0xd8287c0 is taken when a0 == v0(=0x806c) and falls through when a0 != v0(=0x806c).
  The `bne` at 0xd8287d4 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0xd8287e0 is taken when a0 == at(=0x806b) and falls through when a0 != at(=0x806b).
  The `beq` at 0xd8287f4 is taken when t7(=a0-3312) >= 0x16 (unsigned) and falls through when t7(=a0-3312) < 0x16 (unsigned).
  The `bgez` at 0xd828818 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd828824 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd828824 is taken and is annulled on fall-through.
  The `beq` at 0xd828830 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828838 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd828840 is taken when a2(=a1) >= 0 (signed) and falls through when a2(=a1) < 0 (signed).
  The `bnel` at 0xd828850 is taken when t0(=[[[0x1014]+276]+176]) != 0 and falls through when t0(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd828850 is taken and is annulled on fall-through.
  The `bgez` at 0xd828868 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd828878 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd828878 is taken and is annulled on fall-through.
  The `beq` at 0xd828880 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828888 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd828890 is taken when a2(=a1) >= 0 (signed) and falls through when a2(=a1) < 0 (signed).
  The `bnel` at 0xd8288a0 is taken when t4(=[[[0x1014]+276]+176]) != 0 and falls through when t4(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd8288a0 is taken and is annulled on fall-through.
  The `bgez` at 0xd8288b8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd8288c8 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd8288c8 is taken and is annulled on fall-through.
  The `beq` at 0xd8288d0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8288d8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8288e4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8288ec is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8288f4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd8288fc is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd8288fc is taken and is annulled on fall-through.
  The `beq` at 0xd828904 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd828910 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd828910 is taken and is annulled on fall-through.
  The `beq` at 0xd82891c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828928 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828934 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828940 is taken when a2(=a1) == at(=0x85a2) and falls through when a2(=a1) != at(=0x85a2).
  The `beq` at 0xd828948 is taken when a2(=a1) == at(=0x85a3) and falls through when a2(=a1) != at(=0x85a3).
  The `bnel` at 0xd828950 is taken when a2(=a1) != at(=0x85a4) and falls through when a2(=a1) == at(=0x85a4).
  Its delay slot runs only when the branch at 0xd828950 is taken and is annulled on fall-through.
  The `bnel` at 0xd828968 is taken when t2(=[[[0x1014]+276]+176]) != 0 and falls through when t2(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd828968 is taken and is annulled on fall-through.
  The `bnel` at 0xd82897c is taken when a2(=a1) != at(=0x8430) and falls through when a2(=a1) == at(=0x8430).
  Its delay slot runs only when the branch at 0xd82897c is taken and is annulled on fall-through.
  The `bnel` at 0xd828994 is taken when t4(=[[[0x1014]+276]+176]) != 0 and falls through when t4(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd828994 is taken and is annulled on fall-through.
  The `bgez` at 0xd8289a4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd8289b4 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd8289b4 is taken and is annulled on fall-through.
  The `beq` at 0xd8289bc is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd8289c4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd8289cc is taken when a2(=a1) >= 0 (signed) and falls through when a2(=a1) < 0 (signed).
  The `bnel` at 0xd8289d8 is taken when t8(=[[[0x1014]+276]+176]) != 0 and falls through when t8(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd8289d8 is taken and is annulled on fall-through.
  The `bgez` at 0xd8289f4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd828a04 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd828a04 is taken and is annulled on fall-through.
  The `beq` at 0xd828a0c is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828a14 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd828a1c is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd828a2c is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd828a2c is taken and is annulled on fall-through.
  The `beq` at 0xd828a34 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828a3c is taken when condition not analyzed and falls through when condition not analyzed.
  The `bgez` at 0xd828a44 is taken when a2(=a1) >= 0 (signed) and falls through when a2(=a1) < 0 (signed).
  The `bnel` at 0xd828a54 is taken when t4(=[[[0x1014]+276]+176]) != 0 and falls through when t4(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd828a54 is taken and is annulled on fall-through.
  The `beq` at 0xd828a70 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828a78 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828a80 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd828a88 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd828a88 is taken and is annulled on fall-through.
  The `beq` at 0xd828a90 is taken when condition not analyzed and falls through when condition not analyzed.
  The `bnel` at 0xd828aa0 is taken when condition not analyzed and falls through when condition not analyzed.
  Its delay slot runs only when the branch at 0xd828aa0 is taken and is annulled on fall-through.
  The `beq` at 0xd828aa8 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828ab4 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828ac0 is taken when condition not analyzed and falls through when condition not analyzed.
  The `beq` at 0xd828acc is taken when a2(=a1) == at(=0x85a2) and falls through when a2(=a1) != at(=0x85a2).
  The `beq` at 0xd828ad4 is taken when a2(=a1) == at(=0x85a3) and falls through when a2(=a1) != at(=0x85a3).
  The `bnel` at 0xd828adc is taken when a2(=a1) != at(=0x85a4) and falls through when a2(=a1) == at(=0x85a4).
  Its delay slot runs only when the branch at 0xd828adc is taken and is annulled on fall-through.
  The `bnel` at 0xd828af4 is taken when t0(=[[[0x1014]+276]+176]) != 0 and falls through when t0(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd828af4 is taken and is annulled on fall-through.
  The `beq` at 0xd828b08 is taken when a2(=a1) == at(=0x842e) and falls through when a2(=a1) != at(=0x842e).
  The `bnel` at 0xd828b10 is taken when a2(=a1) != at(=0x842f) and falls through when a2(=a1) == at(=0x842f).
  Its delay slot runs only when the branch at 0xd828b10 is taken and is annulled on fall-through.
  The `bnel` at 0xd828b28 is taken when t2(=[[[0x1014]+276]+176]) != 0 and falls through when t2(=[[[0x1014]+276]+176]) == 0.
  Its delay slot runs only when the branch at 0xd828b28 is taken and is annulled on fall-through.
  The `beq` at 0xd828b38 is taken when a3(=[[[0x1014]+276]+216]) == 0 and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  The `beql` at 0xd828b64 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  Its delay slot runs only when the branch at 0xd828b64 is taken and is annulled on fall-through.
  The `beql` at 0xd828ba0 is taken when t4(?) >= t5(?) (unsigned) and falls through when t4(?) < t5(?) (unsigned).
  Its delay slot runs only when the branch at 0xd828ba0 is taken and is annulled on fall-through.
  The `beql` at 0xd828c14 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  Its delay slot runs only when the branch at 0xd828c14 is taken and is annulled on fall-through.
  The `beql` at 0xd828c40 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  Its delay slot runs only when the branch at 0xd828c40 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd828c60.

- `__glx_Color4d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828c70, 244 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd828c80).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd828c9c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd828ca8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd828cb4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd828cb8).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd828cbc, `lw` at 0xd828cd8, `lw` at 0xd828cf4.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd828d20).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd828d34).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd828d38).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd828cc4).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd828ce0).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd828cfc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=sp+24, a2=0x8, a3=? (`jalr` at 0xd828d18).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd828d44).
  The `beq` at 0xd828d30 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd828d5c.

- `__glx_Color4bv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828d64, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd828d70).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd828d80).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd828d8c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd828d90).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd828d94).
  Loads 1 byte from a0 (arg0 at entry) +0x0 into `t9` (`lb` at 0xd828d98).
  Stores 1 byte from `t9` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd828da0).
  Loads 1 byte from a0 (arg0 at entry) +0x1 into `t0` (`lb` at 0xd828da4).
  Stores 1 byte from `t0` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd828da8).
  Loads 1 byte from a0 (arg0 at entry) +0x2 into `t1` (`lb` at 0xd828dac).
  Stores 1 byte from `t1` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd828db0).
  Loads 1 byte from a0 (arg0 at entry) +0x3 into `t2` (`lb` at 0xd828db4).
  Stores 1 byte from `t2` to [[[0x1014]+276]+4] +0x7 (`sb` at 0xd828db8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd828dbc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd828dc0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd828dd0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd828dd8).
  The `beql` at 0xd828dc8 is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd828dc8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd828dec.

- `__glx_Color4b` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828df4, 192 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd828e04).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd828e28).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd828e34).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd828e58).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd828e5c).
  Stores 1 byte from `a0` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd828e60).
  Stores 1 byte from `a1` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd828e64).
  Stores 1 byte from `a2` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd828e68).
  Stores 1 byte from `a3` to [[[0x1014]+276]+4] +0x7 (`sb` at 0xd828e6c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd828e70).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd828e78).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd828e88).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=?, a3=? (`jalr` at 0xd828e94).
  The `beql` at 0xd828e80 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd828e80 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd828eac.

- `__glx_Color3usv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828eb4, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd828ec0).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd828ed0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd828edc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd828ee0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd828ee4).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lhu` at 0xd828ee8).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd828ef0).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lhu` at 0xd828ef4).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd828ef8).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lhu` at 0xd828efc).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd828f00).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd828f04).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd828f08).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd828f18).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd828f20).
  The `beql` at 0xd828f10 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd828f10 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd828f34.

- `__glx_Color3us` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828f3c, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd828f4c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd828f68).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd828f74).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd828f78).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd828f7c).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd828f80).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd828f84).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd828f88).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd828f8c).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd828f94).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd828fa4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+12 (`jalr` at 0xd828fb0).
  The `beql` at 0xd828f9c is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd828f9c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd828fc8.

- `__glx_Color3uiv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd828fd0, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd828fdc).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd828fec).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd828ff8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd828ffc).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829000).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd829004).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd82900c).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd829010).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd829014).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd829018).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd82901c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd829020).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829024).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829034).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd82903c).
  The `beql` at 0xd82902c is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd82902c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829050.

- `__glx_Color4dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829058, 252 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829068).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd829080).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd82908c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829094).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829098).
  Performs 4 4-byte loads from abs 0xd845ab4, including `lw` at 0xd82909c, `lw` at 0xd8290bc, `lw` at 0xd8290dc.
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829110).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd829124).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829128).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=a3 at entry (arg3) (`jalr` at 0xd8290a8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd8290c8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd8290e8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+28, a1=a0+24, a2=0x8, a3=? (`jalr` at 0xd829108).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+36, a2=?, a3=? (`jalr` at 0xd829134).
  The `beq` at 0xd829120 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+36) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+36) (unsigned).
  Returns with v0 = ? at `jr` at 0xd82914c.

- `__glx_Color4ub` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829154, 160 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829164).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd829188).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd829194).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829198).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82919c).
  Stores 1 byte from `a0` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd8291a0).
  Stores 1 byte from `a1` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd8291a4).
  Stores 1 byte from `a2` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd8291a8).
  Stores 1 byte from `a3` to [[[0x1014]+276]+4] +0x7 (`sb` at 0xd8291ac).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8291b0).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd8291b8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8291c8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8291d4).
  The `beql` at 0xd8291c0 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8291c0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8291ec.

- `__glx_Color4sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8291f4, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829200).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829210).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd82921c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829220).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829224).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd829228).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd829230).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd829234).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd829238).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd82923c).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd829240).
  Loads 2 bytes from a0 (arg0 at entry) +0x6 into `t2` (`lh` at 0xd829244).
  Stores 2 bytes from `t2` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd829248).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd82924c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829250).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829260).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829268).
  The `beql` at 0xd829258 is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd829258 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82927c.

- `__glx_Color4s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829284, 192 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829294).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8292b8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd8292c4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8292e8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8292ec).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd8292f0).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd8292f4).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd8292f8).
  Stores 2 bytes from `a3` to [[[0x1014]+276]+4] +0xa (`sh` at 0xd8292fc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829300).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd829308).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829318).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=? (`jalr` at 0xd829324).
  The `beql` at 0xd829310 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd829310 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82933c.

- `__glx_Color4iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829344, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829350).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829360).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd82936c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829370).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829374).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd829378).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd829380).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd829384).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd829388).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd82938c).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd829390).
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `t2` (`lw` at 0xd829394).
  Stores 4 bytes from `t2` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd829398).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd82939c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8293a0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8293b0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8293b8).
  The `beql` at 0xd8293a8 is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8293a8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8293cc.

- `__glx_Color4i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8293d4, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8293e4).
  Loads 4 bytes from [0x1014] +0x114 into `s1` (`lw` at 0xd8293f8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd829404).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829408).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82940c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd829410).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd829414).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd829418).
  Stores 4 bytes from `a3` to [[[0x1014]+276]+4] +0x10 (`sw` at 0xd82941c).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829420).
  Stores 4 bytes from `s0` to [[0x1014]+276] +0x4 (`sw` at 0xd829428).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829438).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd829444).
  The `beql` at 0xd829430 is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd829430 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82945c.

- `__glx_Color4fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829464, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829470).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829480).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd82948c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829490).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829494).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd829498).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd8294a0).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd8294a4).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd8294a8).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd8294ac).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd8294b0).
  Loads 4 bytes from a0 (arg0 at entry) +0xc into `$f10` (`lwc1` at 0xd8294b4).
  Stores 4 bytes from `$f10` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd8294b8).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8294bc).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8294c0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8294d0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8294d8).
  The `beql` at 0xd8294c8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd8294c8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8294ec.

- `__glx_Color4f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8294f4, 140 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829504).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd829518).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829524).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829528).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82952c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd829530).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd829534).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd829540).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x10 (`swc1` at 0xd829548).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd82954c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829550).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829560).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd829564).
  The `beql` at 0xd829558 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+20) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+20) (unsigned).
  Its delay slot runs only when the branch at 0xd829558 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829578.

- `__glx_Color3ui` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829580, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829590).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd8295a0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd8295ac).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8295b0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8295b4).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8295b8).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd8295bc).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd8295c0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8295c4).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd8295cc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8295dc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd8295e8).
  The `beql` at 0xd8295d4 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd8295d4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829600.

- `__glx_Color3dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829608, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829618).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd82962c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd829638).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829640).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829644).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd829648, `lw` at 0xd829668, `lw` at 0xd829688.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd8296a8).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd8296ac).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8296bc).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd829654).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd829674).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd829694).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd8296c8).
  The `beql` at 0xd8296b4 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd8296b4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8296e0.

- `__glx_Color3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8296e8, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8296f8).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd829710).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd82971c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829728).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82972c).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd829730, `lw` at 0xd829750, `lw` at 0xd82976c.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd829788).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd82978c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82979c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd82973c).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd829758).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd829774).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd8297a8).
  The `beql` at 0xd829794 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd829794 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8297c0.

- `__glx_Color3bv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8297c8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8297d4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd8297e4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd8297f0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8297f4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8297f8).
  Loads 1 byte from a0 (arg0 at entry) +0x0 into `t9` (`lb` at 0xd8297fc).
  Stores 1 byte from `t9` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd829804).
  Loads 1 byte from a0 (arg0 at entry) +0x1 into `t0` (`lb` at 0xd829808).
  Stores 1 byte from `t0` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd82980c).
  Loads 1 byte from a0 (arg0 at entry) +0x2 into `t1` (`lb` at 0xd829810).
  Stores 1 byte from `t1` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd829814).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd829818).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd82981c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82982c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829834).
  The `beql` at 0xd829824 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd829824 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829848.

- `__glx_Color3b` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829850, 172 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829860).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd82987c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd829888).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8298a4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8298a8).
  Stores 1 byte from `a0` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd8298ac).
  Stores 1 byte from `a1` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd8298b0).
  Stores 1 byte from `a2` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd8298b4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8298b8).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd8298c0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8298d0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=?, a3=[[[0x1014]+276]+4]+8 (`jalr` at 0xd8298dc).
  The `beql` at 0xd8298c8 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8298c8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8298f4.

- `__glx_Begin` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8298fc, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829908).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829918).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829924).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829928).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82992c).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd829930).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829934).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd82993c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82994c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829954).
  The `beql` at 0xd829944 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd829944 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829968.

- `__glx_ListBase` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829970, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82997c).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd82998c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829998).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82999c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8299a0).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd8299a4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd8299a8).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd8299b0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd8299c0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd8299c8).
  The `beql` at 0xd8299b8 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd8299b8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd8299dc.

- `__glx_CallList` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8299e4, 116 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd8299f0).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829a00).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829a0c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829a10).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829a14).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd829a18).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829a1c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829a24).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829a34).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829a3c).
  The `beql` at 0xd829a2c is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd829a2c is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829a50.

- `__glx_Color3f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829a58, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829a68).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd829a78).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829a84).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829a88).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829a8c).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd829a90).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd829a94).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd829aa0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829aa4).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829aa8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829ab8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd829abc).
  The `beql` at 0xd829ab0 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd829ab0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829ad0.

- `__glx_Color3ubv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829ad8, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829ae4).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829af4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829b00).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829b04).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829b08).
  Loads 1 byte from a0 (arg0 at entry) +0x0 into `t9` (`lbu` at 0xd829b0c).
  Stores 1 byte from `t9` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd829b14).
  Loads 1 byte from a0 (arg0 at entry) +0x1 into `t0` (`lbu` at 0xd829b18).
  Stores 1 byte from `t0` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd829b1c).
  Loads 1 byte from a0 (arg0 at entry) +0x2 into `t1` (`lbu` at 0xd829b20).
  Stores 1 byte from `t1` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd829b24).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd829b28).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829b2c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829b3c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829b44).
  The `beql` at 0xd829b34 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd829b34 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829b58.

- `__glx_Color3ub` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829b60, 148 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829b70).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd829b8c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd829b98).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829b9c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829ba0).
  Stores 1 byte from `a0` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd829ba4).
  Stores 1 byte from `a1` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd829ba8).
  Stores 1 byte from `a2` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd829bac).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829bb0).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd829bb8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829bc8).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+8 (`jalr` at 0xd829bd4).
  The `beql` at 0xd829bc0 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd829bc0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829bec.

- `__glx_Color3sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829bf4, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829c00).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829c10).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829c1c).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829c20).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829c24).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd829c28).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd829c30).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd829c34).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd829c38).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd829c3c).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd829c40).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd829c44).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829c48).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829c58).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829c60).
  The `beql` at 0xd829c50 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd829c50 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829c74.

- `__glx_Color3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829c7c, 172 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829c8c).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd829ca8).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd829cb4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829cd0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829cd4).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd829cd8).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd829cdc).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd829ce0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829ce4).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd829cec).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829cfc).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12 (`jalr` at 0xd829d08).
  The `beql` at 0xd829cf4 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd829cf4 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829d20.

- `__glx_Color3iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829d28, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829d34).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829d44).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829d50).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829d54).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829d58).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd829d5c).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd829d64).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd829d68).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd829d6c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd829d70).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd829d74).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd829d78).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829d7c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829d8c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829d94).
  The `beql` at 0xd829d84 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd829d84 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829da8.

- `__glx_Color3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829db0, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829dc0).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd829dd0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd829ddc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829de0).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829de4).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd829de8).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd829dec).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd829df0).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829df4).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd829dfc).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829e0c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd829e18).
  The `beql` at 0xd829e04 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd829e04 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829e30.

- `__glx_Color3fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829e38, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829e44).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829e54).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829e60).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829e64).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829e68).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd829e6c).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd829e74).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd829e78).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd829e7c).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd829e80).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd829e84).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829e88).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829e8c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829e9c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829ea4).
  The `beql` at 0xd829e94 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd829e94 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829eb8.

- `__glx_Color4ubv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829ec0, 144 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829ecc).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd829edc).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd829ee8).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829eec).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829ef0).
  Loads 1 byte from a0 (arg0 at entry) +0x0 into `t9` (`lbu` at 0xd829ef4).
  Stores 1 byte from `t9` to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd829efc).
  Loads 1 byte from a0 (arg0 at entry) +0x1 into `t0` (`lbu` at 0xd829f00).
  Stores 1 byte from `t0` to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd829f04).
  Loads 1 byte from a0 (arg0 at entry) +0x2 into `t1` (`lbu` at 0xd829f08).
  Stores 1 byte from `t1` to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd829f0c).
  Loads 1 byte from a0 (arg0 at entry) +0x3 into `t2` (`lbu` at 0xd829f10).
  Stores 1 byte from `t2` to [[[0x1014]+276]+4] +0x7 (`sb` at 0xd829f14).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t3` (`lw` at 0xd829f18).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd829f1c).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829f2c).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd829f34).
  The `beql` at 0xd829f24 is taken when t3(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t3(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+8) (unsigned).
  Its delay slot runs only when the branch at 0xd829f24 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829f48.

- `__glx_Normal3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829f50, 172 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd829f60).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd829f7c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd829f88).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd829fa4).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd829fa8).
  Stores 2 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd829fac).
  Stores 2 bytes from `a1` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd829fb0).
  Stores 2 bytes from `a2` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd829fb4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd829fb8).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd829fc0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd829fd0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=?, a3=[[[0x1014]+276]+4]+12 (`jalr` at 0xd829fdc).
  The `beql` at 0xd829fc8 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd829fc8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd829ff4.

- `__glx_Normal3iv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd829ffc, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82a008).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd82a018).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd82a024).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82a028).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82a02c).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lw` at 0xd82a030).
  Stores 4 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd82a038).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `t0` (`lw` at 0xd82a03c).
  Stores 4 bytes from `t0` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd82a040).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `t1` (`lw` at 0xd82a044).
  Stores 4 bytes from `t1` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd82a048).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd82a04c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd82a050).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82a060).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd82a068).
  The `beql` at 0xd82a058 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd82a058 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82a07c.

- `__glx_Normal3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82a084, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82a094).
  Loads 4 bytes from [0x1014] +0x114 into `s0` (`lw` at 0xd82a0a4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a3` (`lw` at 0xd82a0b0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82a0b4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82a0b8).
  Stores 4 bytes from `a0` to [[[0x1014]+276]+4] +0x4 (`sw` at 0xd82a0bc).
  Stores 4 bytes from `a1` to [[[0x1014]+276]+4] +0x8 (`sw` at 0xd82a0c0).
  Stores 4 bytes from `a2` to [[[0x1014]+276]+4] +0xc (`sw` at 0xd82a0c4).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd82a0c8).
  Stores 4 bytes from `a3` to [[0x1014]+276] +0x4 (`sw` at 0xd82a0d0).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82a0e0).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=[[[0x1014]+276]+4]+16 (`jalr` at 0xd82a0ec).
  The `beql` at 0xd82a0d8 is taken when t9(=[[[0x1014]+276]+8]) >= a3(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a3(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd82a0d8 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82a104.

- `__glx_Normal3fv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82a10c, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82a118).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd82a128).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd82a134).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82a138).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82a13c).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `$f4` (`lwc1` at 0xd82a140).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd82a148).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `$f6` (`lwc1` at 0xd82a14c).
  Stores 4 bytes from `$f6` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd82a150).
  Loads 4 bytes from a0 (arg0 at entry) +0x8 into `$f8` (`lwc1` at 0xd82a154).
  Stores 4 bytes from `$f8` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd82a158).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd82a15c).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd82a160).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82a170).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd82a178).
  The `beql` at 0xd82a168 is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd82a168 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82a18c.

- `__glx_Normal3f` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82a194, 128 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82a1a4).
  Loads 4 bytes from [0x1014] +0x114 into `a0` (`lw` at 0xd82a1b4).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd82a1c0).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82a1c4).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82a1c8).
  Stores 4 bytes from `$f12` to [[[0x1014]+276]+4] +0x4 (`swc1` at 0xd82a1cc).
  Stores 4 bytes from `$f14` to [[[0x1014]+276]+4] +0x8 (`swc1` at 0xd82a1d0).
  Stores 4 bytes from `$f4` to [[[0x1014]+276]+4] +0xc (`swc1` at 0xd82a1dc).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t9` (`lw` at 0xd82a1e0).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd82a1e4).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82a1f4).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+16, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82a1f8).
  The `beql` at 0xd82a1ec is taken when t9(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+16) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+16) (unsigned).
  Its delay slot runs only when the branch at 0xd82a1ec is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82a20c.

- `__glx_Normal3dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82a214, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82a224).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd82a238).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd82a244).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82a24c).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82a250).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd82a254, `lw` at 0xd82a274, `lw` at 0xd82a294.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd82a2b4).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd82a2b8).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82a2c8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=a0 at entry (arg0), a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd82a260).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=a0+8, a2=0x8, a3=? (`jalr` at 0xd82a280).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=a0+16, a2=0x8, a3=? (`jalr` at 0xd82a2a0).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd82a2d4).
  The `beql` at 0xd82a2c0 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd82a2c0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82a2ec.

- `__glx_Normal3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82a2f4, 224 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82a304).
  Loads 4 bytes from [0x1014] +0x114 into `a3` (`lw` at 0xd82a31c).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `s0` (`lw` at 0xd82a328).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82a334).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82a338).
  Performs 3 4-byte loads from abs 0xd845ab4, including `lw` at 0xd82a33c, `lw` at 0xd82a35c, `lw` at 0xd82a378.
  Loads 4 bytes from ? (base unknown) into `t9` (`lw` at 0xd82a394).
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0xd82a398).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82a3a8).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+4, a1=sp, a2=0x8, a3=[[0x1014]+276] (`jalr` at 0xd82a348).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+12, a1=sp+8, a2=0x8, a3=? (`jalr` at 0xd82a364).
  Calls `memcpy` via got with a0=[[[0x1014]+276]+4]+20, a1=sp+16, a2=0x8, a3=? (`jalr` at 0xd82a380).
  Calls `__glXFlushRenderBuffer` via got with a0=?, a1=[[[0x1014]+276]+4]+28, a2=?, a3=? (`jalr` at 0xd82a3b4).
  The `beql` at 0xd82a3a0 is taken when t9(?) >= s0(=[[[0x1014]+276]+4]+28) (unsigned) and falls through when t9(?) < s0(=[[[0x1014]+276]+4]+28) (unsigned).
  Its delay slot runs only when the branch at 0xd82a3a0 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82a3cc.

- `__glx_Normal3sv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd82a3d4, 136 bytes) Inferred.
  Loads 4 bytes from abs 0x1014 into `t6` (`lw` at 0xd82a3e0).
  Loads 4 bytes from [0x1014] +0x114 into `a2` (`lw` at 0xd82a3f0).
  Loads 4 bytes from [[0x1014]+276] +0x4 into `a1` (`lw` at 0xd82a3fc).
  Stores 2 bytes from `t7` to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd82a400).
  Stores 2 bytes from `t8` to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd82a404).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `t9` (`lh` at 0xd82a408).
  Stores 2 bytes from `t9` to [[[0x1014]+276]+4] +0x4 (`sh` at 0xd82a410).
  Loads 2 bytes from a0 (arg0 at entry) +0x2 into `t0` (`lh` at 0xd82a414).
  Stores 2 bytes from `t0` to [[[0x1014]+276]+4] +0x6 (`sh` at 0xd82a418).
  Loads 2 bytes from a0 (arg0 at entry) +0x4 into `t1` (`lh` at 0xd82a41c).
  Stores 2 bytes from `t1` to [[[0x1014]+276]+4] +0x8 (`sh` at 0xd82a420).
  Loads 4 bytes from [[0x1014]+276] +0x8 into `t2` (`lw` at 0xd82a424).
  Stores 4 bytes from `a1` to [[0x1014]+276] +0x4 (`sw` at 0xd82a428).
  Loads 4 bytes from abs 0xd845d08 into `t9` (`lw` at 0xd82a438).
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+12, a2=[[0x1014]+276], a3=a3 at entry (arg3) (`jalr` at 0xd82a440).
  The `beql` at 0xd82a430 is taken when t2(=[[[0x1014]+276]+8]) >= a1(=[[[0x1014]+276]+4]+12) (unsigned) and falls through when t2(=[[[0x1014]+276]+8]) < a1(=[[[0x1014]+276]+4]+12) (unsigned).
  Its delay slot runs only when the branch at 0xd82a430 is taken and is annulled on fall-through.
  Returns with v0 = ? at `jr` at 0xd82a454.

## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: docs/driver-functions.md); `usb_comp_update_tiles` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: docs/driver-functions.md); `usb_comp_readwrite_register` in
`builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented for this
binary/member: docs/driver-functions.md); `odsy_usb_comp_update_tiles` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member: docs/driver-
functions.md); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already
documented for this binary/member: docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented for this binary/member: docs/driver-
functions.md); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already
documented for this binary/member: docs/driver-functions.md); `dma_mapinit` in
`usr/cpu/sysgen/IP30boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `hub_dma_init` in `usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member:
docs/instruction-readings-odsy-g12.md); `hub_dmatrans_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` (already
documented for this binary/member: docs/instruction-readings-odsy-g12.md); `hub_dmatrans_list` in
`usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `hub_dmamap_drain` in `usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this
binary/member: docs/instruction-readings-odsy-g12.md); `hub_dmaaddr_drain` in
`usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `hub_dmalist_drain` in `usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this
binary/member: docs/instruction-readings-odsy-g12.md); `dma_geth` in `usr/cpu/sysgen/IP35boot/kernel.o`
(already documented for this binary/member: docs/instruction-readings-odsy-g12.md); `dmamap_init` in
`usr/cpu/sysgen/IP35boot/kernel.o` (already documented for this binary/member: docs/instruction-readings-
odsy-g12.md); `sampleBuffersScore` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` (already documented
for this binary/member: docs/instruction-readings-odsy-g12.md).
