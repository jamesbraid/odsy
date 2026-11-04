# Instruction readings from hostfacts

Each entry below summarises what the local mechanical analyser reports for one routine in the named binary: selected stores and loads, calls, conditional branches and returns, each with its instruction address. These are software observations only and do not establish board behaviour. The selection is not a full listing of any routine, and entries carry the grade Inferred.

- `glXSelectEventSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd820d58, 312 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd820dc8).
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd820de4).
  Stores 2 bytes from `t8` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd820df0).
  Stores 1 byte from `a1` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd820df4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd820d80).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd820da8).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd820dd4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd820e54).
  The `beq` at 0xd820d8c is taken when v0(=ret(__glXSetupForCommand)) == 0 (target 0xd820e7c) and falls through when v0(=ret(__glXSetupForCommand)) != 0 (target 0xd820d94).
  The `beql` at 0xd820d98 is taken when v1(=[a0+1232]) == 0 (target 0xd820db8) and falls through when v1(=[a0+1232]) != 0 (target 0xd820da0).
  The `beql` at 0xd820dc4 is taken when t6(=[a0+112]) >= t7(=[a0+108]+24) (unsigned) (target 0xd820de8) and falls through when t6(=[a0+112]) < t7(=[a0+108]+24) (unsigned) (target 0xd820dcc).
  The `beql` at 0xd820e44 is taken when v1(=[a0+1232]) == 0 (target 0xd820e64) and falls through when v1(=[a0+1232]) != 0 (target 0xd820e4c).
  The `beql` at 0xd820e68 is taken when v0(=[a0+124]) == 0 (target 0xd820e80) and falls through when v0(=[a0+124]) != 0 (target 0xd820e70).
  The `jr` at 0xd820e88 returns with v0 = ?.

- `glXDestroyGLXPbufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8213d0, 376 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd821490).
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd8214ac).
  Stores 2 bytes from `t0` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd8214b8).
  Stores 1 byte from `a1` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd8214bc).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8213f4).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd821410).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd821428).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd821450).
  The `beq` at 0xd821400 is taken when v0(=ret(__glXSetupForCommand)) == 0 (target 0xd821534) and falls through when v0(=ret(__glXSetupForCommand)) != 0 (target 0xd821408).
  The `bne` at 0xd82143c is taken when t6(?) != 0 (target 0xd821448) and falls through when t6(?) == 0 (target 0xd821444).
  The `beql` at 0xd821460 is taken when v1(=[a0+1232]) == 0 (target 0xd821480) and falls through when v1(=[a0+1232]) != 0 (target 0xd821468).
  The `beql` at 0xd82148c is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned) (target 0xd8214b0) and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned) (target 0xd821494).
  The `beql` at 0xd8214fc is taken when v1(=[a0+1232]) == 0 (target 0xd82151c) and falls through when v1(=[a0+1232]) != 0 (target 0xd821504).
  The `jr` at 0xd821540 returns with v0 = ?.

- `glXCreateGLXPbufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd823b00, 820 bytes) Inferred.
  Stores 4 bytes from `t6` to `ret(__glXAddDrawableInterest) +0x2c` through base `v0 (ret(__glXAddDrawableInterest))` (`sw` at 0xd823bb8).
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd823c6c).
  Stores 2 bytes from `t4` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd823c78).
  Stores 1 byte from `t3` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd823c7c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd823b30).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd823b5c).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd823b74).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x10, a3=0x0 (`jalr` at 0xd823b9c).
  The `bne` at 0xd823b40 is taken when v0(=ret(__glXSetupForCommand)) != 0 (target 0xd823b50) and falls through when v0(=ret(__glXSetupForCommand)) == 0 (target 0xd823b48).
  The `bne` at 0xd823b84 is taken when v0(=ret(__glXAddDrawableInterest)) != 0 (target 0xd823bb0) and falls through when v0(=ret(__glXAddDrawableInterest)) == 0 (target 0xd823b8c).
  The `beql` at 0xd823bbc is taken when a1(?) == 0 (target 0xd823bec) and falls through when a1(?) != 0 (target 0xd823bc4).
  The `beql` at 0xd823bcc is taken when t7(?) == 0 (target 0xd823bec) and falls through when t7(?) != 0 (target 0xd823bd4).
  The `bnel` at 0xd823be0 is taken when t8(?) != 0 (target 0xd823bd8) and falls through when t8(?) == 0 (target 0xd823be8).
  The `jr` at 0xd823e2c returns with v0 = ?.

- `glXGetVideoSyncSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd823e34, 152 bytes) Inferred.
  Stores 4 bytes from `t2` to `a0 (arg0 at entry) +0x0` through base `t3 (a0)` (`sw` at 0xd823eb8).
  Loads 4 bytes into `t6` from `abs 0x1014` through base `a3 (0x1000)` (`lw` at 0xd823e54).
  Loads 4 bytes into `v1` from `[0x1014] +0x114` through base `t6 ([0x1014])` (`lw` at 0xd823e58).
  Loads 4 bytes into `t7` from `[[0x1014]+276] +0xc4` through base `v1 ([[0x1014]+276])` (`lw` at 0xd823e64).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-12, a3=0x1000 (`jalr` at 0xd823ea0).
  The `beq` at 0xd823e5c is taken when v1(=[[0x1014]+276]) == 0 (target 0xd823e70) and falls through when v1(=[[0x1014]+276]) != 0 (target 0xd823e64).
  The `bnel` at 0xd823e68 is taken when t7(=[[[0x1014]+276]+196]) != 0 (target 0xd823e7c) and falls through when t7(=[[[0x1014]+276]+196]) == 0 (target 0xd823e70).
  The `jr` at 0xd823ec4 returns with v0 = one of 0x0, 0x5.

- `glXWaitVideoSyncSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824750, 200 bytes) Inferred.
  Stores 4 bytes from `t5` to `a2 (arg2 at entry) +0x0` through base `t6 (a2)` (`sw` at 0xd824804).
  Loads 4 bytes into `t6` from `abs 0x1014` through base `t0 (0x1000)` (`lw` at 0xd824774).
  Loads 4 bytes into `v1` from `[0x1014] +0x114` through base `t6 ([0x1014])` (`lw` at 0xd82477c).
  Loads 4 bytes into `t7` from `[[0x1014]+276] +0xc4` through base `v1 ([[0x1014]+276])` (`lw` at 0xd824788).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-20, a3=a0 at entry (arg0) (`jalr` at 0xd8247ec).
  The `beq` at 0xd824780 is taken when v1(=[[0x1014]+276]) == 0 (target 0xd824794) and falls through when v1(=[[0x1014]+276]) != 0 (target 0xd824788).
  The `bne` at 0xd82478c is taken when t7(=[[[0x1014]+276]+196]) != 0 (target 0xd82479c) and falls through when t7(=[[[0x1014]+276]+196]) == 0 (target 0xd824794).
  The `blez` at 0xd82479c is taken when a3(=a0) <= 0 (signed) (target 0xd8247b4) and falls through when a3(=a0) > 0 (signed) (target 0xd8247a4).
  The `bltz` at 0xd8247a4 is taken when t8(=a1) < 0 (signed) (target 0xd8247b4) and falls through when t8(=a1) >= 0 (signed) (target 0xd8247ac).
  The `bnel` at 0xd8247ac is taken when at(?) != 0 (target 0xd8247c0) and falls through when at(?) == 0 (target 0xd8247b4).
  The `jr` at 0xd824810 returns with v0 = one of 0x0, 0x5, 0x6.

- `glXDestroyGLXVideoSourceSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824818, 368 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd8248cc).
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd8248e8).
  Stores 2 bytes from `t8` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd8248f4).
  Stores 1 byte from `a1` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd8248f8).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82483c).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd824860).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd824878).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd82488c).
  The `beq` at 0xd824848 is taken when v0(=ret(__glXSetupForCommand)) == 0 (target 0xd824974) and falls through when v0(=ret(__glXSetupForCommand)) != 0 (target 0xd824850).
  The `beql` at 0xd824854 is taken when a0(=a1) == 0 (target 0xd824978) and falls through when a0(=a1) != 0 (target 0xd82485c).
  The `beql` at 0xd82489c is taken when v1(=[a0+1232]) == 0 (target 0xd8248bc) and falls through when v1(=[a0+1232]) != 0 (target 0xd8248a4).
  The `beql` at 0xd8248c8 is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned) (target 0xd8248ec) and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned) (target 0xd8248d0).
  The `beql` at 0xd82493c is taken when v1(=[a0+1232]) == 0 (target 0xd82495c) and falls through when v1(=[a0+1232]) != 0 (target 0xd824944).
  The `jr` at 0xd824980 returns with v0 = ?.

- `glXCreateGLXVideoSourceSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824988, 936 bytes) Inferred.
  Stores 4 bytes from `zero` to `ret(__glXAddDrawableInterest) +0xc` through base `s1 (ret(__glXAddDrawableInterest))` (`sw` at 0xd824a4c).
  Stores 4 bytes from `s0` to `ret(__glXAddDrawableInterest) +0x10` through base `s1 (ret(__glXAddDrawableInterest))` (`sw` at 0xd824a50).
  Stores 1 byte from `t7` to `ret(__glXAddDrawableInterest) +0x20` through base `s1 (ret(__glXAddDrawableInterest))` (`sb` at 0xd824a60).
  Stores 4 bytes from `t8` to `ret(__glXAddDrawableInterest) +0x2c` through base `s1 (ret(__glXAddDrawableInterest))` (`sw` at 0xd824a64).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8249b8).
  Calls `__glXInitializeVideoLibrary` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8249f8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd824a18).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd824a30).
  The `bne` at 0xd8249c4 is taken when v0(=ret(__glXSetupForCommand)) != 0 (target 0xd8249d4) and falls through when v0(=ret(__glXSetupForCommand)) == 0 (target 0xd8249cc).
  The `beq` at 0xd8249dc is taken when v0(?) == at(=0x2) (target 0xd8249f4) and falls through when v0(?) != at(=0x2) (target 0xd8249e4).
  The `beq` at 0xd8249e4 is taken when v0(?) == at(=0x5) (target 0xd8249f4) and falls through when v0(?) != at(=0x5) (target 0xd8249ec).
  The `bne` at 0xd824a00 is taken when v0(=ret(__glXInitializeVideoLibrary)) != 0 (target 0xd824a10) and falls through when v0(=ret(__glXInitializeVideoLibrary)) == 0 (target 0xd824a08).
  The `bne` at 0xd824a3c is taken when v0(=ret(__glXAddDrawableInterest)) != 0 (target 0xd824a4c) and falls through when v0(=ret(__glXAddDrawableInterest)) == 0 (target 0xd824a44).
  The `jr` at 0xd824d28 returns with v0 = ?.

- `glXSwapIntervalSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd824f58, 468 bytes) Inferred.
  Stores 4 bytes from `a0` to `[[[0x1014]+276]+216] +0x64` through base `s0 ([[[0x1014]+276]+216])` (`sw` at 0xd825058).
  Stores 4 bytes from `a0` to `[[[0x1014]+276]+216] +0x64` through base `s0 ([[[0x1014]+276]+216])` (`sw` at 0xd825074).
  Stores 2 bytes from `t7` to `[[[[0x1014]+276]+216]+108] +0x2` through base `a0 ([[[[0x1014]+276]+216]+108])` (`sh` at 0xd825080).
  Stores 1 byte from `a1` to `[[[[0x1014]+276]+216]+108] +0x0` through base `a0 ([[[[0x1014]+276]+216]+108])` (`sb` at 0xd825084).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-32, a3=0x1000 (`jalr` at 0xd824fe0).
  Calls `__glXSetupForCommand` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1000 (`jalr` at 0xd825014).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd825038).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd825064).
  The `bne` at 0xd824f88 is taken when v1(=[[0x1014]+276]) != 0 (target 0xd824f98) and falls through when v1(=[[0x1014]+276]) == 0 (target 0xd824f90).
  The `bgtzl` at 0xd824f98 is taken when t7(=a0) > 0 (signed) (target 0xd824fac) and falls through when t7(=a0) <= 0 (signed) (target 0xd824fa0).
  The `beql` at 0xd824fac is taken when t8(=[[[0x1014]+276]+196]) == 0 (target 0xd824ff8) and falls through when t8(=[[[0x1014]+276]+196]) != 0 (target 0xd824fb4).
  The `bne` at 0xd824ff8 is taken when s0(=[[[0x1014]+276]+216]) != 0 (target 0xd825008) and falls through when s0(=[[[0x1014]+276]+216]) == 0 (target 0xd825000).
  The `beql` at 0xd825028 is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 (target 0xd825048) and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0 (target 0xd825030).
  The `jr` at 0xd825124 returns with v0 = one of 0x0, 0x5, 0x6.

- `glXCreateGLXPixmapWithConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd827654, 364 bytes) Inferred.
  Stores 4 bytes from `v0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd8276ec).
  Stores 2 bytes from `t8` to `[a0+108] +0x2` through base `v0 ([a0+108])` (`sh` at 0xd8276f8).
  Stores 1 byte from `a1` to `[a0+108] +0x0` through base `v0 ([a0+108])` (`sb` at 0xd8276fc).
  Stores 4 bytes from `t1` to `a0 (arg0 at entry) +0x6c` through base `s0 (a0)` (`sw` at 0xd827714).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd82767c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+1232], a2=?, a3=? (`jalr` at 0xd8276ac).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8276d8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=a1 at entry (arg1), a3=? (`jalr` at 0xd827754).
  The `bne` at 0xd827688 is taken when v0(=ret(__glXSetupForCommand)) != 0 (target 0xd827698) and falls through when v0(=ret(__glXSetupForCommand)) == 0 (target 0xd827690).
  The `beql` at 0xd82769c is taken when a1(=[a0+1232]) == 0 (target 0xd8276bc) and falls through when a1(=[a0+1232]) != 0 (target 0xd8276a4).
  The `beql` at 0xd8276c8 is taken when t6(=[a0+112]) >= t7(=[a0+108]+28) (unsigned) (target 0xd8276ec) and falls through when t6(=[a0+112]) < t7(=[a0+108]+28) (unsigned) (target 0xd8276d0).
  The `beql` at 0xd827770 is taken when a1(=[a0+1232]) == 0 (target 0xd827790) and falls through when a1(=[a0+1232]) != 0 (target 0xd827778).
  The `beql` at 0xd827794 is taken when v0(=[a0+124]) == 0 (target 0xd8277ac) and falls through when v0(=[a0+124]) != 0 (target 0xd82779c).
  The `jr` at 0xd8277b8 returns with v0 = ?.

- `glXJoinSwapGroupSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd839878, 300 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd8398e4).
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd839900).
  Stores 2 bytes from `t8` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd83990c).
  Stores 1 byte from `a1` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd839910).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8398a0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8398c4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8398f0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd839968).
  The `beql` at 0xd8398b4 is taken when v1(=[a0+1232]) == 0 (target 0xd8398d4) and falls through when v1(=[a0+1232]) != 0 (target 0xd8398bc).
  The `beql` at 0xd8398e0 is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned) (target 0xd839904) and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned) (target 0xd8398e8).
  The `beql` at 0xd839958 is taken when v1(=[a0+1232]) == 0 (target 0xd839978) and falls through when v1(=[a0+1232]) != 0 (target 0xd839960).
  The `beql` at 0xd83997c is taken when v0(=[a0+124]) == 0 (target 0xd839994) and falls through when v0(=[a0+124]) != 0 (target 0xd839984).
  The `jr` at 0xd83999c returns with v0 = ?.

- `glXBindSwapBarrierSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd8399a4, 300 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd839a10).
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd839a2c).
  Stores 2 bytes from `t8` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd839a38).
  Stores 1 byte from `a1` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd839a3c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8399cc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8399f0).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd839a1c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x10, a2=?, a3=? (`jalr` at 0xd839a94).
  The `beql` at 0xd8399e0 is taken when v1(=[a0+1232]) == 0 (target 0xd839a00) and falls through when v1(=[a0+1232]) != 0 (target 0xd8399e8).
  The `beql` at 0xd839a0c is taken when t6(=[a0+112]) >= t7(=[a0+108]+20) (unsigned) (target 0xd839a30) and falls through when t6(=[a0+112]) < t7(=[a0+108]+20) (unsigned) (target 0xd839a14).
  The `beql` at 0xd839a84 is taken when v1(=[a0+1232]) == 0 (target 0xd839aa4) and falls through when v1(=[a0+1232]) != 0 (target 0xd839a8c).
  The `beql` at 0xd839aa8 is taken when v0(=[a0+124]) == 0 (target 0xd839ac0) and falls through when v0(=[a0+124]) != 0 (target 0xd839ab0).
  The `jr` at 0xd839ac8 returns with v0 = ?.

- `glXQueryMaxSwapBarriersSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd839ad0, 416 bytes) Inferred.
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd839b3c).
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd839b58).
  Stores 2 bytes from `t0` to `[a0+108] +0x2` through base `v1 ([a0+108])` (`sh` at 0xd839b64).
  Stores 1 byte from `t8` to `[a0+108] +0x0` through base `v1 ([a0+108])` (`sb` at 0xd839b68).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd839af8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd839b1c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd839b48).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0 (`jalr` at 0xd839bbc).
  The `beql` at 0xd839b0c is taken when v1(=[a0+1232]) == 0 (target 0xd839b2c) and falls through when v1(=[a0+1232]) != 0 (target 0xd839b14).
  The `beql` at 0xd839b38 is taken when t6(=[a0+112]) >= t7(=[a0+108]+16) (unsigned) (target 0xd839b5c) and falls through when t6(=[a0+112]) < t7(=[a0+108]+16) (unsigned) (target 0xd839b40).
  The `bne` at 0xd839bc4 is taken when v0(=ret(_XReply)) != 0 (target 0xd839c10) and falls through when v0(=ret(_XReply)) == 0 (target 0xd839bcc).
  The `beql` at 0xd839bd0 is taken when v1(=[a0+1232]) == 0 (target 0xd839bf0) and falls through when v1(=[a0+1232]) != 0 (target 0xd839bd8).
  The `beq` at 0xd839bf4 is taken when v0(=[a0+124]) == 0 (target 0xd839c08) and falls through when v0(=[a0+124]) != 0 (target 0xd839bfc).
  The `jr` at 0xd839c68 returns with v0 = one of 0x0, 0x1.

- `glXQueryHyperpipeNetworkSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd83a484, 724 bytes) Inferred.
  Stores 4 bytes from `zero` to `a1 (arg1 at entry) +0x0` through base `t6 (a1)` (`sw` at 0xd83a4bc).
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83a4f4).
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83a510).
  Stores 2 bytes from `t1` to `[a0+108] +0x2` through base `v1 ([a0+108])` (`sh` at 0xd83a51c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83a4a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83a4d4).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83a500).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0 (`jalr` at 0xd83a574).
  The `beql` at 0xd83a4c4 is taken when v1(=[a0+1232]) == 0 (target 0xd83a4e4) and falls through when v1(=[a0+1232]) != 0 (target 0xd83a4cc).
  The `beql` at 0xd83a4f0 is taken when t7(=[a0+112]) >= t8(=[a0+108]+16) (unsigned) (target 0xd83a514) and falls through when t7(=[a0+112]) < t8(=[a0+108]+16) (unsigned) (target 0xd83a4f8).
  The `bne` at 0xd83a57c is taken when v0(=ret(_XReply)) != 0 (target 0xd83a5d0) and falls through when v0(=ret(_XReply)) == 0 (target 0xd83a584).
  The `beql` at 0xd83a588 is taken when v1(=[a0+1232]) == 0 (target 0xd83a5a8) and falls through when v1(=[a0+1232]) != 0 (target 0xd83a590).
  The `beql` at 0xd83a5ac is taken when v0(=[a0+124]) == 0 (target 0xd83a5c4) and falls through when v0(=[a0+124]) != 0 (target 0xd83a5b4).
  The `jr` at 0xd83a750 returns with v0 = ?.

- `glXHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd83a758, 744 bytes) Inferred.
  Stores 4 bytes from `a3` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83a820).
  Stores 4 bytes from `a3` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83a848).
  Stores 2 bytes from `t4` to `[a0+108] +0x2` through base `a3 ([a0+108])` (`sh` at 0xd83a854).
  Stores 1 byte from `t3` to `[a0+108] +0x0` through base `a3 ([a0+108])` (`sb` at 0xd83a858).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83a784).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83a7f8).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+108] (`jalr` at 0xd83a830).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0 (`jalr` at 0xd83a930).
  The `blez` at 0xd83a798 is taken when t1(=a2) <= 0 (signed) (target 0xd83a7b0) and falls through when t1(=a2) > 0 (signed) (target 0xd83a7a0).
  The `beq` at 0xd83a7a0 is taken when t6(=a3) == 0 (target 0xd83a7b0) and falls through when t6(=a3) != 0 (target 0xd83a7a8).
  The `bne` at 0xd83a7a8 is taken when at(?) != 0 (target 0xd83a7b8) and falls through when at(?) == 0 (target 0xd83a7b0).
  The `bgez` at 0xd83a7b8 is taken when t7(=a1) >= 0 (signed) (target 0xd83a7c8) and falls through when t7(=a1) < 0 (signed) (target 0xd83a7c0).
  The `beql` at 0xd83a7e4 is taken when v0(=[a0+1232]) == 0 (target 0xd83a810) and falls through when v0(=[a0+1232]) != 0 (target 0xd83a7ec).
  The `jr` at 0xd83aa38 returns with v0 = one of 0x0, 0x5b.

- `glXDestroyHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd83aa40, 416 bytes) Inferred.
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83aaa8).
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83aac4).
  Stores 2 bytes from `t0` to `[a0+108] +0x2` through base `v1 ([a0+108])` (`sh` at 0xd83aad0).
  Stores 1 byte from `t8` to `[a0+108] +0x0` through base `v1 ([a0+108])` (`sb` at 0xd83aad4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83aa64).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83aa88).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83aab4).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-40, a2=0x0, a3=0x0 (`jalr` at 0xd83ab30).
  The `beql` at 0xd83aa78 is taken when v1(=[a0+1232]) == 0 (target 0xd83aa98) and falls through when v1(=[a0+1232]) != 0 (target 0xd83aa80).
  The `beql` at 0xd83aaa4 is taken when t6(=[a0+112]) >= t7(=[a0+108]+32) (unsigned) (target 0xd83aac8) and falls through when t6(=[a0+112]) < t7(=[a0+108]+32) (unsigned) (target 0xd83aaac).
  The `bne` at 0xd83ab38 is taken when v0(=ret(_XReply)) != 0 (target 0xd83ab84) and falls through when v0(=ret(_XReply)) == 0 (target 0xd83ab40).
  The `beql` at 0xd83ab44 is taken when v1(=[a0+1232]) == 0 (target 0xd83ab64) and falls through when v1(=[a0+1232]) != 0 (target 0xd83ab4c).
  The `beq` at 0xd83ab68 is taken when v0(=[a0+124]) == 0 (target 0xd83ab7c) and falls through when v0(=[a0+124]) != 0 (target 0xd83ab70).
  The `jr` at 0xd83abd8 returns with v0 = ?.

- `glXQueryHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`, 0xd83abe0, 700 bytes) Inferred.
  Stores 4 bytes from `zero` to `a2 (arg2 at entry) +0x0` through base `t6 (a2)` (`sw` at 0xd83ac1c).
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83ac54).
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83ac70).
  Stores 2 bytes from `t1` to `[a0+108] +0x2` through base `v1 ([a0+108])` (`sh` at 0xd83ac7c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83ac08).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83ac34).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83ac60).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-44, a2=0x0, a3=0x0 (`jalr` at 0xd83acdc).
  The `beql` at 0xd83ac24 is taken when v1(=[a0+1232]) == 0 (target 0xd83ac44) and falls through when v1(=[a0+1232]) != 0 (target 0xd83ac2c).
  The `beql` at 0xd83ac50 is taken when t7(=[a0+112]) >= t8(=[a0+108]+32) (unsigned) (target 0xd83ac74) and falls through when t7(=[a0+112]) < t8(=[a0+108]+32) (unsigned) (target 0xd83ac58).
  The `bne` at 0xd83ace4 is taken when v0(=ret(_XReply)) != 0 (target 0xd83ad38) and falls through when v0(=ret(_XReply)) == 0 (target 0xd83acec).
  The `beql` at 0xd83acf8 is taken when v1(=[a0+1232]) == 0 (target 0xd83ad18) and falls through when v1(=[a0+1232]) != 0 (target 0xd83ad00).
  The `beq` at 0xd83ad1c is taken when v0(=[a0+124]) == 0 (target 0xd83ad30) and falls through when v0(=[a0+124]) != 0 (target 0xd83ad24).
  The `jr` at 0xd83ae94 returns with v0 = ?.

- `__glOdylc_Normal3b` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9d6a50, 272 bytes) Inferred.
  Stores 4 bytes from `t9` to `abs 0x1030` through base `t1 (0x1028)` (`sw` at 0xd9d6ae0).
  Stores 4 bytes from `t3` to `abs 0x1028` through base `t1 (0x1028)` (`sw` at 0xd9d6aec).
  Stores 4 bytes from `t6` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9d6b14).
  Stores 4 bytes from `t7` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9d6b24).
  Calls `__glSPDlistSpace [0xda0f8cc]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xd9d6ab8).
  The `bne` at 0xd9d6a84 is taken when t6(=[0x1034]) != 0 (target 0xd9d6a9c) and falls through when t6(=[0x1034]) == 0 (target 0xd9d6a8c).
  The `beql` at 0xd9d6a90 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9d6aa0) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9d6a98).
  The `beql` at 0xd9d6aa4 is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed) (target 0xd9d6b08) and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed) (target 0xd9d6aac).
  The `bne` at 0xd9d6ad0 is taken when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9d6af0) and falls through when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9d6ad8).
  The `beql` at 0xd9d6af8 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9d6b08) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9d6b00).
  The `jr` at 0xd9d6b58 returns with v0 = ?.

- `__glOdylc_Normal3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9d72f4, 272 bytes) Inferred.
  Stores 4 bytes from `t9` to `abs 0x1030` through base `t1 (0x1028)` (`sw` at 0xd9d7384).
  Stores 4 bytes from `t3` to `abs 0x1028` through base `t1 (0x1028)` (`sw` at 0xd9d7390).
  Stores 4 bytes from `t6` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9d73b8).
  Stores 4 bytes from `t7` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9d73c8).
  Calls `__glSPDlistSpace [0xda0f8cc]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xd9d735c).
  The `bne` at 0xd9d7328 is taken when t6(=[0x1034]) != 0 (target 0xd9d7340) and falls through when t6(=[0x1034]) == 0 (target 0xd9d7330).
  The `beql` at 0xd9d7334 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9d7344) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9d733c).
  The `beql` at 0xd9d7348 is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed) (target 0xd9d73ac) and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed) (target 0xd9d7350).
  The `bne` at 0xd9d7374 is taken when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9d7394) and falls through when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9d737c).
  The `beql` at 0xd9d739c is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9d73ac) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9d73a4).
  The `jr` at 0xd9d73fc returns with v0 = ?.

- `__glOdylc_TexCoord1d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9de5b0, 252 bytes) Inferred.
  Stores 4 bytes from `t9` to `abs 0x1030` through base `a2 (0x1028)` (`sw` at 0xd9de63c).
  Stores 4 bytes from `t1` to `abs 0x1028` through base `a2 (0x1028)` (`sw` at 0xd9de648).
  Stores 4 bytes from `t4` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9de674).
  Stores 4 bytes from `$f4` to `? (base unknown)` through base `v1 (?)` (`swc1` at 0xd9de678).
  Calls `__glSPDlistSpace [0xda0f8cc]` via register-constant with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3) (`jalr` at 0xd9de610).
  The `bne` at 0xd9de5d8 is taken when t6(=[0x1034]) != 0 (target 0xd9de5f0) and falls through when t6(=[0x1034]) == 0 (target 0xd9de5e0).
  The `beql` at 0xd9de5e4 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9de5f4) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9de5ec).
  The `beql` at 0xd9de5f8 is taken when a0(=[0x1028]) >= t8(=one of 0x2, 0x3) (signed) (target 0xd9de664) and falls through when a0(=[0x1028]) < t8(=one of 0x2, 0x3) (signed) (target 0xd9de600).
  The `bne` at 0xd9de62c is taken when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9de64c) and falls through when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9de634).
  The `beql` at 0xd9de654 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9de664) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9de65c).
  The `jr` at 0xd9de6a4 returns with v0 = ?.

- `__glOdylc_TexCoord2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9ded88, 268 bytes) Inferred.
  Stores 4 bytes from `t9` to `abs 0x1030` through base `a2 (0x1028)` (`sw` at 0xd9dee1c).
  Stores 4 bytes from `t1` to `abs 0x1028` through base `a2 (0x1028)` (`sw` at 0xd9dee28).
  Stores 4 bytes from `t4` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9dee58).
  Stores 4 bytes from `$f4` to `? (base unknown)` through base `v1 (?)` (`swc1` at 0xd9dee5c).
  Calls `__glSPDlistSpace [0xda0f8cc]` via register-constant with a0=0x0, a1=one of 0x0, 0x1, a2=0x1028, a3=a3 at entry (arg3) (`jalr` at 0xd9dedec).
  The `bne` at 0xd9dedb0 is taken when t6(=[0x1034]) != 0 (target 0xd9dedc8) and falls through when t6(=[0x1034]) == 0 (target 0xd9dedb8).
  The `beql` at 0xd9dedbc is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9dedcc) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9dedc4).
  The `beql` at 0xd9dedd0 is taken when a0(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed) (target 0xd9dee44) and falls through when a0(=[0x1028]) < t8(=one of 0x3, 0x4) (signed) (target 0xd9dedd8).
  The `bne` at 0xd9dee0c is taken when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9dee2c) and falls through when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9dee14).
  The `beql` at 0xd9dee34 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9dee44) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9dee3c).
  The `jr` at 0xd9dee8c returns with v0 = ?.

- `__glOdylc_TexCoord2i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9df1b0, 260 bytes) Inferred.
  Stores 4 bytes from `t9` to `abs 0x1030` through base `t0 (0x1028)` (`sw` at 0xd9df23c).
  Stores 4 bytes from `t2` to `abs 0x1028` through base `t0 (0x1028)` (`sw` at 0xd9df248).
  Stores 4 bytes from `t5` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9df270).
  Stores 4 bytes from `t6` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9df280).
  Calls `__glSPDlistSpace [0xda0f8cc]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=[0x1028], a3=one of 0x0, 0x1 (`jalr` at 0xd9df214).
  The `bne` at 0xd9df1e0 is taken when t6(=[0x1034]) != 0 (target 0xd9df1f8) and falls through when t6(=[0x1034]) == 0 (target 0xd9df1e8).
  The `beql` at 0xd9df1ec is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9df1fc) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9df1f4).
  The `beql` at 0xd9df200 is taken when a2(=[0x1028]) >= t8(=one of 0x3, 0x4) (signed) (target 0xd9df264) and falls through when a2(=[0x1028]) < t8(=one of 0x3, 0x4) (signed) (target 0xd9df208).
  The `bne` at 0xd9df22c is taken when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9df24c) and falls through when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9df234).
  The `beql` at 0xd9df254 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9df264) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9df25c).
  The `jr` at 0xd9df2ac returns with v0 = ?.

- `__glOdylc_TexCoord3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9dfa24, 272 bytes) Inferred.
  Stores 4 bytes from `t9` to `abs 0x1030` through base `t1 (0x1028)` (`sw` at 0xd9dfab4).
  Stores 4 bytes from `t3` to `abs 0x1028` through base `t1 (0x1028)` (`sw` at 0xd9dfac0).
  Stores 4 bytes from `t6` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9dfae8).
  Stores 4 bytes from `t7` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9dfaf8).
  Calls `__glSPDlistSpace [0xda0f8cc]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[0x1028] (`jalr` at 0xd9dfa8c).
  The `bne` at 0xd9dfa58 is taken when t6(=[0x1034]) != 0 (target 0xd9dfa70) and falls through when t6(=[0x1034]) == 0 (target 0xd9dfa60).
  The `beql` at 0xd9dfa64 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9dfa74) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9dfa6c).
  The `beql` at 0xd9dfa78 is taken when a3(=[0x1028]) >= t8(=one of 0x4, 0x5) (signed) (target 0xd9dfadc) and falls through when a3(=[0x1028]) < t8(=one of 0x4, 0x5) (signed) (target 0xd9dfa80).
  The `bne` at 0xd9dfaa4 is taken when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9dfac4) and falls through when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9dfaac).
  The `beql` at 0xd9dfacc is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9dfadc) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9dfad4).
  The `jr` at 0xd9dfb2c returns with v0 = ?.

- `__glOdylc_TexCoord4i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9e02fc, 284 bytes) Inferred.
  Stores 4 bytes from `t9` to `abs 0x1030` through base `t2 (0x1028)` (`sw` at 0xd9e0390).
  Stores 4 bytes from `t4` to `abs 0x1028` through base `t2 (0x1028)` (`sw` at 0xd9e039c).
  Stores 4 bytes from `t7` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9e03c4).
  Stores 4 bytes from `t8` to `? (base unknown)` through base `v1 (?)` (`sw` at 0xd9e03d4).
  Calls `__glSPDlistSpace [0xda0f8cc]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd9e0368).
  The `bne` at 0xd9e0334 is taken when t6(=[0x1034]) != 0 (target 0xd9e034c) and falls through when t6(=[0x1034]) == 0 (target 0xd9e033c).
  The `beql` at 0xd9e0340 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9e0350) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9e0348).
  The `beql` at 0xd9e0354 is taken when t0(=[0x1028]) >= t8(=one of 0x5, 0x6) (signed) (target 0xd9e03b8) and falls through when t0(=[0x1028]) < t8(=one of 0x5, 0x6) (signed) (target 0xd9e035c).
  The `bne` at 0xd9e0380 is taken when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9e03a0) and falls through when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9e0388).
  The `beql` at 0xd9e03a8 is taken when (v1(=[0x1030]) & 0x4) == 0 (target 0xd9e03b8) and falls through when (v1(=[0x1030]) & 0x4) != 0 (target 0xd9e03b0).
  The `jr` at 0xd9e0410 returns with v0 = ?.

- `DownsampleTextureThruHW` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9e335c, 3136 bytes) Inferred.
  Stores 4 bytes from `t8` to `[0x1010] +0x7c00` through base `a3 ([0x1010])` (`sw` at 0xd9e341c).
  Stores 4 bytes from `t9` to `[0x1010] +0x7c00` through base `a3 ([0x1010])` (`sw` at 0xd9e3430).
  Stores 4 bytes from `t6` to `[0x1010] +0x16960` through base `at ([0x1010]+65536)` (`sw` at 0xd9e3448).
  Stores 4 bytes from `t7` to `abs 0x1018` through base `zero (0x0)` (`sw` at 0xd9e3450).
  Calls `__glOdysseyImageLogBase2 [0xd9d1eb0]` via register-constant with a0=?, a1=?, a2=?, a3=[0x1010] (`jalr` at 0xd9e3534).
  Calls `__glOdysseyImageLogBase2 [0xd9d1eb0]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd9e3578).
  Calls `ChooseSuitableBuzzTexModeBaseFmt [0xd9e1dc8]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd9e3754).
  Calls `GetImageFmtEnumFromBuzzTexFormat [0xd9e1d08]` via register-constant with a0=?, a1=table(0x8000), a2=?, a3=? (`jalr` at 0xd9e39b4).
  The `bnel` at 0xd9e33dc is taken when v1(=0x2) != t7(?) (target 0xd9e33f8) and falls through when v1(=0x2) == t7(?) (target 0xd9e33e4).
  The `bnel` at 0xd9e33e8 is taken when v1(=0x2) != t9(?) (target 0xd9e33f8) and falls through when v1(=0x2) == t9(?) (target 0xd9e33f0).
  The `bne` at 0xd9e3400 is taken when a1(=0xde0) != t6(=[a0+12]) (target 0xd9e3420) and falls through when a1(=0xde0) == t6(=[a0+12]) (target 0xd9e3408).
  The `beq` at 0xd9e3460 is taken when a0(?) == 0 (target 0xd9e3484) and falls through when a0(?) != 0 (target 0xd9e3468).
  The `beq` at 0xd9e3468 is taken when a0(?) == at(=0x1) (target 0xd9e3490) and falls through when a0(?) != at(=0x1) (target 0xd9e3470).
  The `jr` at 0xd9e3f94 returns with v0 = 0x10443.

- `__glOdysseyTextureDeactivate` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9e4b04, 248 bytes) Inferred.
  Stores 4 bytes from `zero` to `a0 (arg0 at entry) +0x16418` through base `at (a0+65536)` (`sw` at 0xd9e4b58).
  Stores 4 bytes from `a0` to `? (base unknown)` through base `v0 (?)` (`sw` at 0xd9e4b7c).
  Stores 4 bytes from `v0` to `? (base unknown)` through base `a0 (?)` (`sw` at 0xd9e4bc4).
  Stores 4 bytes from `v0` to `? (base unknown)` through base `a0 (?)` (`sw` at 0xd9e4bc8).
  Calls `__glOdysseyClosePMObjReference [0xd9d9410]` via register-constant with a0=a0 at entry (arg0), a1=[a1+1276], a2=[a0+91168], a3=[a0+91172] (`jalr` at 0xd9e4b40).
  Calls `__glOdysseyClosePMObjReference [0xd9d9410]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd9e4ba0).
  The `bne` at 0xd9e4b78 is taken when v1(?) < 0x10 (signed) (target 0xd9e4b6c) and falls through when v1(?) >= 0x10 (signed) (target 0xd9e4b80).
  The `beql` at 0xd9e4b88 is taken when t1(?) == 0 (target 0xd9e4bec) and falls through when t1(?) != 0 (target 0xd9e4b90).
  The `bne` at 0xd9e4bd4 is taken when v1(?) != a1(=0x10) (target 0xd9e4bc0) and falls through when v1(?) == a1(=0x10) (target 0xd9e4bdc).
  The `jr` at 0xd9e4bf4 returns with v0 = ?; f0 = ret(__glOdysseyClosePMObjReference).

- `RGBSendFc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9fb0c8, 140 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v1 (0x10000)` (`sw` at 0xd9fb0f8).
  Stores 4 bytes from `t1` to `abs 0x10000` through base `v1 (0x10000)` (`sw` at 0xd9fb100).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v1 (0x10000)` (`swc1` at 0xd9fb110).
  Stores 4 bytes from `$f6` to `abs 0x10000` through base `v1 (0x10000)` (`swc1` at 0xd9fb118).
  The `beq` at 0xd9fb0d4 is taken when t6(=[a0+184]:1) == 0 (target 0xd9fb0e4) and falls through when t6(=[a0+184]:1) != 0 (target 0xd9fb0dc).
  The `jr` at 0xd9fb14c returns with v0 = one of 0xf, 0x10.

- `RGBSendClippedBmFmTN` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9fc2b4, 748 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `a1 (0x10000)` (`sw` at 0xd9fc2ec).
  Stores 4 bytes from `t2` to `abs 0x10000` through base `a1 (0x10000)` (`sw` at 0xd9fc310).
  Stores 4 bytes from `$f0` to `abs 0x10000` through base `a1 (0x10000)` (`swc1` at 0xd9fc314).
  Stores 4 bytes from `$f0` to `abs 0x10000` through base `a1 (0x10000)` (`swc1` at 0xd9fc318).
  The `beq` at 0xd9fc2cc is taken when t6(=[a0+184]:1) == 0 (target 0xd9fc2dc) and falls through when t6(=[a0+184]:1) != 0 (target 0xd9fc2d4).
  The `bne` at 0xd9fc2fc is taken when t1(=[[0x1010]+1416]) != at(=0x81fa) (target 0xd9fc424) and falls through when t1(=[[0x1010]+1416]) == at(=0x81fa) (target 0xd9fc304).
  The `jr` at 0xd9fc598 returns with v0 = [0x1010].

- `CISendFc` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9fde00, 116 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v1 (0x10000)` (`sw` at 0xd9fde30).
  Stores 4 bytes from `t1` to `abs 0x10000` through base `v1 (0x10000)` (`sw` at 0xd9fde38).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v1 (0x10000)` (`swc1` at 0xd9fde48).
  Stores 4 bytes from `t2` to `abs 0x10000` through base `v1 (0x10000)` (`sw` at 0xd9fde4c).
  The `beq` at 0xd9fde0c is taken when t6(=[a0+184]:1) == 0 (target 0xd9fde1c) and falls through when t6(=[a0+184]:1) != 0 (target 0xd9fde14).
  The `jr` at 0xd9fde6c returns with v0 = one of 0xf, 0x10.

- `CISendClippedBmFmN` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xd9fe38c, 376 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v1 (0x10000)` (`sw` at 0xd9fe3c8).
  Stores 4 bytes from `t1` to `abs 0x10000` through base `v1 (0x10000)` (`sw` at 0xd9fe3d0).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v1 (0x10000)` (`swc1` at 0xd9fe3e0).
  Stores 4 bytes from `$f0` to `abs 0x10000` through base `v1 (0x10000)` (`swc1` at 0xd9fe3e4).
  The `beq` at 0xd9fe3a4 is taken when t6(=[a0+184]:1) == 0 (target 0xd9fe3b4) and falls through when t6(=[a0+184]:1) != 0 (target 0xd9fe3ac).
  The `jr` at 0xd9fe4fc returns with v0 = one of 0xf, 0x10.

- `__glOdysseyQueryHyperpipeRect` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda09064, 132 bytes) Inferred.
  Loads 4 bytes into `t6` from `a0 (arg0 at entry) +0x21ef0` through base `t6 (a0+131072)` (`lw` at 0xda0908c).
  Loads 4 bytes into `t9` from `abs 0xdafecac` through base `gp (0xdb063e0)` (`lw` at 0xda09098).
  Calls `__glOdysseyIoctl [0xd9eb890]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-40, a3=a3 at entry (arg3) (`jalr` at 0xda090bc).
  The `beq` at 0xda090c4 is taken when v0(=ret(__glOdysseyIoctl)) == 0 (target 0xda090d4) and falls through when v0(=ret(__glOdysseyIoctl)) != 0 (target 0xda090cc).
  The `jr` at 0xda090e0 returns with v0 = one of 0x0, 0x1; f0 = ret(__glOdysseyIoctl).

- `__glOdysseyQueryHyperpipeLimit` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda090e8, 132 bytes) Inferred.
  Loads 4 bytes into `t6` from `a0 (arg0 at entry) +0x21ef0` through base `t6 (a0+131072)` (`lw` at 0xda09110).
  Loads 4 bytes into `t9` from `abs 0xdafecac` through base `gp (0xdb063e0)` (`lw` at 0xda0911c).
  Calls `__glOdysseyIoctl [0xd9eb890]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=a3 at entry (arg3) (`jalr` at 0xda09140).
  The `beq` at 0xda09148 is taken when v0(=ret(__glOdysseyIoctl)) == 0 (target 0xda09158) and falls through when v0(=ret(__glOdysseyIoctl)) != 0 (target 0xda09150).
  The `jr` at 0xda09164 returns with v0 = one of 0x0, 0x1; f0 = ret(__glOdysseyIoctl).

- `__glOdysseyHyperpipeRect` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda0916c, 132 bytes) Inferred.
  Loads 4 bytes into `t6` from `a0 (arg0 at entry) +0x21ef0` through base `t6 (a0+131072)` (`lw` at 0xda09194).
  Loads 4 bytes into `t9` from `abs 0xdafecac` through base `gp (0xdb063e0)` (`lw` at 0xda091a0).
  Calls `__glOdysseyIoctl [0xd9eb890]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=a3 at entry (arg3) (`jalr` at 0xda091c4).
  The `beq` at 0xda091cc is taken when v0(=ret(__glOdysseyIoctl)) == 0 (target 0xda091dc) and falls through when v0(=ret(__glOdysseyIoctl)) != 0 (target 0xda091d4).
  The `jr` at 0xda091e8 returns with v0 = one of 0x0, 0x1; f0 = ret(__glOdysseyIoctl).

- `__glOdysseyHyperpipeStereo` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda091f0, 136 bytes) Inferred.
  Loads 4 bytes into `t6` from `a0 (arg0 at entry) +0x21ef0` through base `t6 (a0+131072)` (`lw` at 0xda09218).
  Loads 4 bytes into `t7` from `a3 (arg3 at entry) +0x0` through base `a3 (a3)` (`lw` at 0xda09228).
  Loads 4 bytes into `t9` from `abs 0xdafecac` through base `gp (0xdb063e0)` (`lw` at 0xda09230).
  Calls `__glOdysseyIoctl [0xd9eb890]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=a3 at entry (arg3) (`jalr` at 0xda0924c).
  The `beq` at 0xda09254 is taken when v0(=ret(__glOdysseyIoctl)) == 0 (target 0xda09264) and falls through when v0(=ret(__glOdysseyIoctl)) != 0 (target 0xda0925c).
  The `jr` at 0xda09270 returns with v0 = one of 0x0, 0x1; f0 = ret(__glOdysseyIoctl).

- `__glOdysseyHyperpipePixelAverage` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda09278, 184 bytes) Inferred.
  Loads 4 bytes into `t9` from `abs 0xdb02174` through base `gp (0xdb063e0)` (`lw` at 0xda09288).
  Loads 4 bytes into `a1` from `abs 0xdafe45c` through base `gp (0xdb063e0)` (`lw` at 0xda09294).
  Loads 4 bytes into `a0` from `abs 0xdb02154` through base `gp (0xdb063e0)` (`lw` at 0xda09298).
  Loads 4 bytes into `t6` from `a0 (arg0 at entry) +0x21ef0` through base `t6 (a0+131072)` (`lw` at 0xda092c8).
  Calls `fprintf` via got with a0=sym(__iob)+32, a1=0xdaf0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda092b0).
  Calls `__glOdysseyIoctl [0xd9eb890]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640018, a2=sp-40, a3=? (`jalr` at 0xda09304).
  The `beq` at 0xda0930c is taken when v0(=ret(__glOdysseyIoctl)) == 0 (target 0xda0931c) and falls through when v0(=ret(__glOdysseyIoctl)) != 0 (target 0xda09314).
  The `jr` at 0xda09328 returns with v0 = one of 0x0, 0x1; f0 = ret(__glOdysseyIoctl).

- `__glOdysseyQueryHyperpipeStereo` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda09330, 132 bytes) Inferred.
  Loads 4 bytes into `t6` from `a0 (arg0 at entry) +0x21ef0` through base `t6 (a0+131072)` (`lw` at 0xda09358).
  Loads 4 bytes into `t9` from `abs 0xdafecac` through base `gp (0xdb063e0)` (`lw` at 0xda09364).
  Calls `__glOdysseyIoctl [0xd9eb890]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-40, a3=a3 at entry (arg3) (`jalr` at 0xda09388).
  The `beq` at 0xda09390 is taken when v0(=ret(__glOdysseyIoctl)) == 0 (target 0xda093a0) and falls through when v0(=ret(__glOdysseyIoctl)) != 0 (target 0xda09398).
  The `jr` at 0xda093ac returns with v0 = one of 0x0, 0x1; f0 = ret(__glOdysseyIoctl).

- `__glOdysseyQueryHyperpipePixelAverage` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xda093b4, 132 bytes) Inferred.
  Loads 4 bytes into `t6` from `a0 (arg0 at entry) +0x21ef0` through base `t6 (a0+131072)` (`lw` at 0xda093dc).
  Loads 4 bytes into `t9` from `abs 0xdafecac` through base `gp (0xdb063e0)` (`lw` at 0xda093e8).
  Calls `__glOdysseyIoctl [0xd9eb890]` via register-constant with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-40, a3=a3 at entry (arg3) (`jalr` at 0xda0940c).
  The `beq` at 0xda09414 is taken when v0(=ret(__glOdysseyIoctl)) == 0 (target 0xda09424) and falls through when v0(=ret(__glOdysseyIoctl)) != 0 (target 0xda0941c).
  The `jr` at 0xda09430 returns with v0 = one of 0x0, 0x1; f0 = ret(__glOdysseyIoctl).

- `__glOdyim_Vertex2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdad7a80, 36 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad7a94).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad7a98).
  Stores 4 bytes from `$f14` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad7aa0).
  The `jr` at 0xdad7a9c returns with v0 = 0x10000.

- `__glOdyim_Vertex3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdad7c80, 48 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad7c9c).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad7ca0).
  Stores 4 bytes from `$f14` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad7ca4).
  Stores 4 bytes from `$f0` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad7cac).
  The `jr` at 0xdad7ca8 returns with v0 = 0x10000.

- `__glOdyim_Vertex3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdad7d80, 56 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad7da4).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad7da8).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad7dac).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad7db4).
  The `jr` at 0xdad7db0 returns with v0 = 0x10000.

- `__glOdyim_Vertex4i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdad8040, 68 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad806c).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad8070).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad8074).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad8078).
  The `jr` at 0xdad807c returns with v0 = 0x10000.

- `__glOdyim_TexCoord3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdaddb40, 48 bytes) Inferred.
  Stores 4 bytes from `t7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdaddb58).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdaddb60).
  Stores 4 bytes from `$f14` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdaddb64).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdaddb6c).
  The `jr` at 0xdaddb68 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3b` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdade240, 40 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade25c).
  Stores 8 bytes from `$f6` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade264).
  The `jr` at 0xdade260 returns with v0 = 0x10000.

- `__glOdyim_Color3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdade300, 48 bytes) Inferred.
  Stores 4 bytes from `t7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdade318).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdade320).
  Stores 4 bytes from `$f14` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdade324).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdade32c).
  The `jr` at 0xdade328 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdade340, 48 bytes) Inferred.
  Stores 4 bytes from `t7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdade358).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdade360).
  Stores 4 bytes from `$f14` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdade364).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdade36c).
  The `jr` at 0xdade368 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdade540, 40 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade55c).
  Stores 8 bytes from `$f6` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade564).
  The `jr` at 0xdade560 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdade640, 40 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade65c).
  Stores 8 bytes from `$f6` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade664).
  The `jr` at 0xdade660 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3ui` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdade840, 40 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade85c).
  Stores 8 bytes from `$f6` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade864).
  The `jr` at 0xdade860 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3us` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdade940, 40 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade95c).
  Stores 8 bytes from `$f6` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdade964).
  The `jr` at 0xdade960 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4b` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadea40, 44 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdadea58).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadea5c).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadea60).
  Stores 4 bytes from `a3` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadea68).
  The `jr` at 0xdadea64 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadec00, 68 bytes) Inferred.
  Stores 4 bytes from `t7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadec24).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdadec2c).
  Stores 4 bytes from `$f6` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdadec34).
  Stores 4 bytes from `$f8` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdadec38).
  The `jr` at 0xdadec3c returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadedc0, 44 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdadedd8).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadeddc).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadede0).
  Stores 4 bytes from `a3` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadede8).
  The `jr` at 0xdadede4 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadeec0, 44 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdadeed8).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadeedc).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadeee0).
  Stores 4 bytes from `a3` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadeee8).
  The `jr` at 0xdadeee4 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4ub` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadefc0, 44 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdadefd8).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadefdc).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadefe0).
  Stores 4 bytes from `a3` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadefe8).
  The `jr` at 0xdadefe4 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4ui` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadf0c0, 44 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdadf0d8).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadf0dc).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadf0e0).
  Stores 4 bytes from `a3` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadf0e8).
  The `jr` at 0xdadf0e4 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4us` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadf1c0, 44 bytes) Inferred.
  Stores 8 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdadf1d8).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadf1dc).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadf1e0).
  Stores 4 bytes from `a3` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdadf1e8).
  The `jr` at 0xdadf1e4 returns with v0 = 0x10000.

- `__glOdyim_ScratchIndexd` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`, 0xdadf2c0, 28 bytes) Inferred.
  Stores 8 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`sdc1` at 0xdadf2d8).
  The `jr` at 0xdadf2d4 returns with v0 = 0x10000.

- `__glXOpenGraphicsDevice` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd80e4e4, 396 bytes) Inferred.
  Stores 4 bytes from `a2` to `? (base unknown)` through base `a3 (?)` (`sw` at 0xd80e5d8).
  Stores 4 bytes from `a2` to `[0x1014] +0x104` through base `a3 ([0x1014])` (`sw` at 0xd80e640).
  Loads 4 bytes into `v1` from `abs 0x1014` through base `zero (0x0)` (`lw` at 0xd80e50c).
  Loads 4 bytes into `v1` from `([0x1014] + (a0 << 0x2)) +0x4` through base `v1 (([0x1014] + (a0 << 0x2)))` (`lw` at 0xd80e518).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd842808, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd80e544).
  Calls `open` via got with a0=0xd842828, a1=0x802, a2=?, a3=? (`jalr` at 0xd80e560).
  Calls `fcntl` via got with a0=?, a1=0x2, a2=0x5, a3=? (`jalr` at 0xd80e57c).
  Calls `__glXFatal` via got with a0=0x0, a1=0xd842808, a2=?, a3=[0x1014], a4=[[0x1014]+260] (`jalr` at 0xd80e5ac).
  The `beq` at 0xd80e504 is taken when a0 >= 0x41 (signed) (target 0xd80e538) and falls through when a0 < 0x41 (signed) (target 0xd80e50c).
  The `bltz` at 0xd80e520 is taken when v1(=[([0x1014] + (a0 << 0x2))+4]) < 0 (signed) (target 0xd80e554) and falls through when v1(=[([0x1014] + (a0 << 0x2))+4]) >= 0 (signed) (target 0xd80e528).
  The `bltz` at 0xd80e568 is taken when v0(=ret(open)) < 0 (signed) (target 0xd80e5dc) and falls through when v0(=ret(open)) >= 0 (signed) (target 0xd80e570).
  The `bltz` at 0xd80e584 is taken when v0(=ret(fcntl)) < 0 (signed) (target 0xd80e5f8) and falls through when v0(=ret(fcntl)) >= 0 (signed) (target 0xd80e58c).
  The `bltz` at 0xd80e594 is taken when a4(=[[0x1014]+260]) < 0 (signed) (target 0xd80e610) and falls through when a4(=[[0x1014]+260]) >= 0 (signed) (target 0xd80e59c).
  The `jr` at 0xd80e530 returns with v0 = ?.

- `glXSelectEventSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd823d98, 284 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd823e10).
  Stores 2 bytes from `t1` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd823e18).
  Stores 1 byte from `a5` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd823e20).
  Stores 4 bytes from `a7` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd823e30).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd823dc4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd823de8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x801f, a3=a1 at entry (arg1), a4=[a0+1232], a5=0x10, a7=[a0+96]+1 (`jalr` at 0xd823e70).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd823e84).
  The `beq` at 0xd823dd0 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 (target 0xd823e90) and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 (target 0xd823dd8).
  The `beq` at 0xd823ddc is taken when a4(=[a0+1232]) == 0 (target 0xd823df0) and falls through when a4(=[a0+1232]) != 0 (target 0xd823de4).
  The `bne` at 0xd823e00 is taken when v0(=[a0+112]) < v1(=[a0+108]+24) (unsigned) (target 0xd823ea0) and falls through when v0(=[a0+112]) >= v1(=[a0+108]+24) (unsigned) (target 0xd823e08).
  The `beq` at 0xd823e64 is taken when a4(=[a0+1232]) == 0 (target 0xd823e78) and falls through when a4(=[a0+1232]) != 0 (target 0xd823e6c).
  The `beq` at 0xd823e7c is taken when t9(=[a0+124]) == 0 (target 0xd823e90) and falls through when t9(=[a0+124]) != 0 (target 0xd823e84).
  The `jr` at 0xd823e98 returns with v0 = ?.

- `__glXGetDrawableAttributes` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd823fec, 1040 bytes) Inferred.
  Stores 4 bytes from `v0` to `a0 (arg0 at entry) +0x64` through base `s1 (a0)` (`sw` at 0xd824078).
  Stores 2 bytes from `t2` to `[a0+108] +0x2` through base `v0 ([a0+108])` (`sh` at 0xd824080).
  Stores 1 byte from `t3` to `[a0+108] +0x0` through base `v0 ([a0+108])` (`sb` at 0xd824088).
  Stores 4 bytes from `t0` to `a0 (arg0 at entry) +0x60` through base `s1 (a0)` (`sw` at 0xd824098).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd824020).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd824050).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-144, a2=0x0, a3=0x0, a5=0x11, a6=0x1000a, a7=a1 at entry (arg1) (`jalr` at 0xd8240d0).
  Calls `malloc` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8240f4).
  The `beq` at 0xd82402c is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 (target 0xd8243a4) and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 (target 0xd824034).
  The `beq` at 0xd82403c is taken when v0(=a3) == 0 (target 0xd82414c) and falls through when v0(=a3) != 0 (target 0xd824044).
  The `beq` at 0xd824044 is taken when a2(=[a0+1232]) == 0 (target 0xd824058) and falls through when a2(=[a0+1232]) != 0 (target 0xd82404c).
  The `bne` at 0xd824068 is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned) (target 0xd82422c) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned) (target 0xd824070).
  The `beq` at 0xd8240d8 is taken when v0(=ret(_XReply)) == 0 (target 0xd82423c) and falls through when v0(=ret(_XReply)) != 0 (target 0xd8240e0).
  The `jr` at 0xd824144 returns with v0 = 0x0.

- `glXDestroyGLXPbufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8243fc, 328 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd8244a0).
  Stores 2 bytes from `t0` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd8244a8).
  Stores 1 byte from `a4` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd8244b0).
  Stores 4 bytes from `a6` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd8244c0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd824428).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd824444).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd824454).
  Calls `__glXFreeDrawablePrivate` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd824468).
  The `beq` at 0xd824434 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 (target 0xd824510) and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 (target 0xd82443c).
  The `beq` at 0xd824460 is taken when v1(=[ret(__glXAddDrawableInterest)+20]) == 0 (target 0xd82453c) and falls through when v1(=[ret(__glXAddDrawableInterest)+20]) != 0 (target 0xd824468).
  The `beq` at 0xd824474 is taken when v0(=[a0+1232]) == 0 (target 0xd824488) and falls through when v0(=[a0+1232]) != 0 (target 0xd82447c).
  The `bne` at 0xd824498 is taken when a1(=[a0+112]) < a2(=[a0+108]+16) (unsigned) (target 0xd824528) and falls through when a1(=[a0+112]) >= a2(=[a0+108]+16) (unsigned) (target 0xd8244a0).
  The `beq` at 0xd8244e8 is taken when v0(=[a0+1232]) == 0 (target 0xd8244fc) and falls through when v0(=[a0+1232]) != 0 (target 0xd8244f0).
  The `jr` at 0xd824520 returns with v0 = ?.

- `glXCreateGLXPbufferSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd824c48, 796 bytes) Inferred.
  Stores 4 bytes from `v1` to `ret(__glXAddDrawableInterest) +0x2c` through base `v0 (ret(__glXAddDrawableInterest))` (`sw` at 0xd824cc4).
  Stores 4 bytes from `a4` to `a0 (arg0 at entry) +0x64` through base `s2 (a0)` (`sw` at 0xd824d54).
  Stores 1 byte from `v0` to `[a0+108] +0x0` through base `a4 ([a0+108])` (`sb` at 0xd824d5c).
  Stores 2 bytes from `at` to `[a0+108] +0x2` through base `a4 ([a0+108])` (`sh` at 0xd824d68).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd824c80).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd824c9c).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd824cac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd824d24).
  The `beq` at 0xd824c90 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 (target 0xd824e84) and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 (target 0xd824c98).
  The `beq` at 0xd824cb4 is taken when v0(=ret(__glXAddDrawableInterest)) == 0 (target 0xd824f40) and falls through when v0(=ret(__glXAddDrawableInterest)) != 0 (target 0xd824cbc).
  The `beq` at 0xd824cc8 is taken when s0(=a4) == 0 (target 0xd824e7c) and falls through when s0(=a4) != 0 (target 0xd824cd0).
  The `beq` at 0xd824cd8 is taken when a0(=[a4]) == 0 (target 0xd824f38) and falls through when a0(=[a4]) != 0 (target 0xd824ce0).
  The `beq` at 0xd824cec is taken when a1(?) == 0 (target 0xd824d14) and falls through when a1(?) != 0 (target 0xd824cf4).
  The `jr` at 0xd824e74 returns with v0 = ?.

- `glXGetVideoSyncSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd824f64, 140 bytes) Inferred.
  Stores 4 bytes from `a3` to `a0 (arg0 at entry) +0x0` through base `a4 (a0)` (`sw` at 0xd824fe0).
  Loads 4 bytes into `a4` from `abs 0x1014` through base `zero (0x0)` (`lw` at 0xd824f64).
  Loads 4 bytes into `a4` from `[0x1014] +0x114` through base `a4 ([0x1014])` (`lw` at 0xd824f68).
  Loads 4 bytes into `a5` from `[[0x1014]+276] +0xc4` through base `a4 ([[0x1014]+276])` (`lw` at 0xd824f88).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3fe, a2=sp-32, a3=a3 at entry (arg3), a4=[[0x1014]+276], a5=[[[0x1014]+276]+196] (`jalr` at 0xd824fbc).
  The `beq` at 0xd824f80 is taken when a4(=[[0x1014]+276]) == 0 (target 0xd824fe4) and falls through when a4(=[[0x1014]+276]) != 0 (target 0xd824f88).
  The `beq` at 0xd824f8c is taken when a5(=[[[0x1014]+276]+196]) == 0 (target 0xd824fe4) and falls through when a5(=[[[0x1014]+276]+196]) != 0 (target 0xd824f94).
  The `jr` at 0xd824fdc returns with v0 = 0x0; f0 = ret(ioctl).

- `glXWaitVideoSyncSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd824ff0, 200 bytes) Inferred.
  Stores 4 bytes from `a3` to `a2 (arg2 at entry) +0x0` through base `a4 (a2)` (`sw` at 0xd8250b4).
  Loads 4 bytes into `a6` from `abs 0x1014` through base `zero (0x0)` (`lw` at 0xd824ff0).
  Loads 4 bytes into `a6` from `[0x1014] +0x114` through base `a6 ([0x1014])` (`lw` at 0xd825000).
  Loads 4 bytes into `a7` from `[[0x1014]+276] +0xc4` through base `a6 ([[0x1014]+276])` (`lw` at 0xd825020).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ff, a2=sp-48, a3=a3 at entry (arg3), a4=a0 at entry (arg0), a5=a1 at entry (arg1), a6=[[0x1014]+276], a7=[[[0x1014]+276]+196] (`jalr` at 0xd825090).
  The `beq` at 0xd825018 is taken when a6(=[[0x1014]+276]) == 0 (target 0xd825050) and falls through when a6(=[[0x1014]+276]) != 0 (target 0xd825020).
  The `beq` at 0xd825024 is taken when a7(=[[[0x1014]+276]+196]) == 0 (target 0xd825050) and falls through when a7(=[[[0x1014]+276]+196]) != 0 (target 0xd82502c).
  The `blez` at 0xd82502c is taken when a0 <= 0 (signed) (target 0xd825044) and falls through when a0 > 0 (signed) (target 0xd825034).
  The `bltz` at 0xd825034 is taken when a1 < 0 (signed) (target 0xd825044) and falls through when a1 >= 0 (signed) (target 0xd82503c).
  The `bne` at 0xd82503c is taken when t0(?) != 0 (target 0xd825060) and falls through when t0(?) == 0 (target 0xd825044).
  The `jr` at 0xd825048 returns with v0 = 0x6.

- `glXDestroyGLXVideoSourceSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8250b8, 320 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd82515c).
  Stores 2 bytes from `a6` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd825164).
  Stores 1 byte from `a2` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd82516c).
  Stores 4 bytes from `a4` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd82517c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8250e4).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd825104).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd825114).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd825120).
  The `beq` at 0xd8250f0 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 (target 0xd8251d4) and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 (target 0xd8250f8).
  The `beq` at 0xd8250f8 is taken when s1(=a1) == 0 (target 0xd8251d0) and falls through when s1(=a1) != 0 (target 0xd825100).
  The `beq` at 0xd82512c is taken when v0(=[a0+1232]) == 0 (target 0xd825140) and falls through when v0(=[a0+1232]) != 0 (target 0xd825134).
  The `bne` at 0xd825150 is taken when v0(=[a0+112]) < v1(=[a0+108]+16) (unsigned) (target 0xd8251e8) and falls through when v0(=[a0+112]) >= v1(=[a0+108]+16) (unsigned) (target 0xd825158).
  The `beq` at 0xd8251a8 is taken when v0(=[a0+1232]) == 0 (target 0xd8251bc) and falls through when v0(=[a0+1232]) != 0 (target 0xd8251b0).
  The `jr` at 0xd8251e0 returns with v0 = ?.

- `glXCreateGLXVideoSourceSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd8252cc, 848 bytes) Inferred.
  Stores 4 bytes from `zero` to `ret(__glXAddDrawableInterest) +0x30` through base `at (ret(__glXAddDrawableInterest))` (`sw` at 0xd82539c).
  Stores 4 bytes from `a1` to `ret(__glXAddDrawableInterest) +0x2c` through base `at (ret(__glXAddDrawableInterest))` (`sw` at 0xd8253a4).
  Stores 4 bytes from `v1` to `ret(__glXAddDrawableInterest) +0x8` through base `at (ret(__glXAddDrawableInterest))` (`sw` at 0xd8253a8).
  Stores 4 bytes from `v0` to `ret(__glXAddDrawableInterest) +0x10` through base `at (ret(__glXAddDrawableInterest))` (`sw` at 0xd8253b0).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd825300).
  Calls `__glXInitializeVideoLibrary` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd825358).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd825370).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd825380).
  The `beq` at 0xd82530c is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 (target 0xd825590) and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 (target 0xd825314).
  The `beq` at 0xd825318 is taken when s0(=a4) == v0(=0x2) (target 0xd825354) and falls through when s0(=a4) != v0(=0x2) (target 0xd825320).
  The `beq` at 0xd825324 is taken when s0(=a4) == v1(=0x5) (target 0xd825358) and falls through when s0(=a4) != v1(=0x5) (target 0xd82532c).
  The `beq` at 0xd825360 is taken when v0(=ret(__glXInitializeVideoLibrary)) == 0 (target 0xd825598) and falls through when v0(=ret(__glXInitializeVideoLibrary)) != 0 (target 0xd825368).
  The `beq` at 0xd825388 is taken when v0(=ret(__glXAddDrawableInterest)) == 0 (target 0xd8255a4) and falls through when v0(=ret(__glXAddDrawableInterest)) != 0 (target 0xd825390).
  The `jr` at 0xd82533c returns with v0 = 0x0; f0 = ret(__glXSetupForCommand).

- `glXSwapIntervalSGI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd825758, 440 bytes) Inferred.
  Stores 4 bytes from `v0` to `? (base unknown)` through base `a3 (?)` (`sw` at 0xd825854).
  Stores 2 bytes from `t3` to `? (base unknown)` through base `v0 (?)` (`sh` at 0xd82585c).
  Stores 1 byte from `a7` to `? (base unknown)` through base `v0 (?)` (`sb` at 0xd825864).
  Stores 4 bytes from `t1` to `? (base unknown)` through base `a3 (?)` (`sw` at 0xd825874).
  Calls `ioctl` via got with a0=[([0x1014] + ([[0x1014]+264] << 0x2))+4], a1=0x3ee, a2=sp-64, a3=a3 at entry (arg3), a5=a0 at entry (arg0) (`jalr` at 0xd8257bc).
  Calls `__glXSetupForCommand` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[[0x1014]+276]+216], a4=[[[0x1014]+276]+60], a5=a0 at entry (arg0) (`jalr` at 0xd825808).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd825824).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a4=a0 at entry (arg0), a6=0x10000, a7=0x10 (`jalr` at 0xd8258a8).
  The `beq` at 0xd825774 is taken when v0(=[[0x1014]+276]) == 0 (target 0xd8258e8) and falls through when v0(=[[0x1014]+276]) != 0 (target 0xd82577c).
  The `blez` at 0xd82577c is taken when a0 <= 0 (signed) (target 0xd825908) and falls through when a0 > 0 (signed) (target 0xd825784).
  The `beq` at 0xd825788 is taken when v1(=[[[0x1014]+276]+196]) == 0 (target 0xd8257d8) and falls through when v1(=[[[0x1014]+276]+196]) != 0 (target 0xd825790).
  The `bne` at 0xd8257e0 is taken when a3(=[[[0x1014]+276]+216]) != 0 (target 0xd8257f8) and falls through when a3(=[[[0x1014]+276]+216]) == 0 (target 0xd8257e8).
  The `beq` at 0xd825818 is taken when a3(?) == 0 (target 0xd82582c) and falls through when a3(?) != 0 (target 0xd825820).
  The `jr` at 0xd8257d0 returns with v0 = 0x0; f0 = ret(ioctl).

- `glXCreateGLXPixmapWithConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd838c8c, 336 bytes) Inferred.
  Stores 4 bytes from `v0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd838d08).
  Stores 2 bytes from `t1` to `[a0+108] +0x2` through base `v0 ([a0+108])` (`sh` at 0xd838d10).
  Stores 1 byte from `a5` to `[a0+108] +0x0` through base `v0 ([a0+108])` (`sb` at 0xd838d18).
  Stores 4 bytes from `a7` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd838d28).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd838cb8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd838cdc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=[a1+72], a3=[a1+36], a4=0x10006, a5=0x10, a7=[a0+96]+1 (`jalr` at 0xd838d64).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd838d84).
  The `beq` at 0xd838cc4 is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 (target 0xd838dc8) and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0 (target 0xd838ccc).
  The `beq` at 0xd838cd0 is taken when a5(=[a0+1232]) == 0 (target 0xd838ce4) and falls through when a5(=[a0+1232]) != 0 (target 0xd838cd8).
  The `bne` at 0xd838cf4 is taken when v1(=[a0+112]) < a0(=[a0+108]+28) (unsigned) (target 0xd838db8) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+28) (unsigned) (target 0xd838cfc).
  The `beq` at 0xd838d78 is taken when a5(=[a0+1232]) == 0 (target 0xd838d8c) and falls through when a5(=[a0+1232]) != 0 (target 0xd838d80).
  The `beq` at 0xd838d90 is taken when t9(=[a0+124]) == 0 (target 0xd838da4) and falls through when t9(=[a0+124]) != 0 (target 0xd838d98).
  The `jr` at 0xd838db0 returns with v0 = ?; f0 = ret(?).

- `glXJoinSwapGroupSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83c008, 264 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83c078).
  Stores 2 bytes from `t0` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd83c080).
  Stores 1 byte from `a4` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd83c088).
  Stores 4 bytes from `a6` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd83c098).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83c038).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd83c050).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x1000b, a4=0x10, a5=[a0+1232], a6=[a0+96]+1, a7=[a0+108]+20 (`jalr` at 0xd83c0d0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83c0e4).
  The `beq` at 0xd83c044 is taken when a5(=[a0+1232]) == 0 (target 0xd83c058) and falls through when a5(=[a0+1232]) != 0 (target 0xd83c04c).
  The `bne` at 0xd83c068 is taken when v1(=[a0+112]) < a1(=[a0+108]+20) (unsigned) (target 0xd83c100) and falls through when v1(=[a0+112]) >= a1(=[a0+108]+20) (unsigned) (target 0xd83c070).
  The `beq` at 0xd83c0c4 is taken when a5(=[a0+1232]) == 0 (target 0xd83c0d8) and falls through when a5(=[a0+1232]) != 0 (target 0xd83c0cc).
  The `beq` at 0xd83c0dc is taken when t9(=[a0+124]) == 0 (target 0xd83c0ec) and falls through when t9(=[a0+124]) != 0 (target 0xd83c0e4).
  The `jr` at 0xd83c0f8 returns with v0 = ?.

- `glXBindSwapBarrierSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83c110, 264 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83c17c).
  Stores 2 bytes from `t0` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd83c184).
  Stores 1 byte from `a4` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd83c18c).
  Stores 4 bytes from `a6` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd83c19c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83c140).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd83c158).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x1000c, a4=0x10, a5=[a0+1232], a6=[a0+96]+1, a7=[a0+108]+20 (`jalr` at 0xd83c1d4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83c1e8).
  The `beq` at 0xd83c14c is taken when a5(=[a0+1232]) == 0 (target 0xd83c160) and falls through when a5(=[a0+1232]) != 0 (target 0xd83c154).
  The `bne` at 0xd83c170 is taken when v1(=[a0+112]) < a1(=[a0+108]+20) (unsigned) (target 0xd83c204) and falls through when v1(=[a0+112]) >= a1(=[a0+108]+20) (unsigned) (target 0xd83c178).
  The `beq` at 0xd83c1c8 is taken when a5(=[a0+1232]) == 0 (target 0xd83c1dc) and falls through when a5(=[a0+1232]) != 0 (target 0xd83c1d0).
  The `beq` at 0xd83c1e0 is taken when t9(=[a0+124]) == 0 (target 0xd83c1f0) and falls through when t9(=[a0+124]) != 0 (target 0xd83c1e8).
  The `jr` at 0xd83c1fc returns with v0 = ?.

- `glXQueryMaxSwapBarriersSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83c218, 372 bytes) Inferred.
  Stores 4 bytes from `a5` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83c284).
  Stores 2 bytes from `t2` to `[a0+108] +0x2` through base `a5 ([a0+108])` (`sh` at 0xd83c28c).
  Stores 1 byte from `t3` to `[a0+108] +0x0` through base `a5 ([a0+108])` (`sb` at 0xd83c294).
  Stores 4 bytes from `t0` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd83c2a4).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83c248).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd83c260).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a5=[a0+108], a6=0x11, a7=0x1000d (`jalr` at 0xd83c2dc).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0+1232] (`jalr` at 0xd83c2f8).
  The `beq` at 0xd83c254 is taken when a5(=[a0+1232]) == 0 (target 0xd83c268) and falls through when a5(=[a0+1232]) != 0 (target 0xd83c25c).
  The `bne` at 0xd83c278 is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned) (target 0xd83c338) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned) (target 0xd83c280).
  The `beq` at 0xd83c2e4 is taken when v0(=ret(_XReply)) == 0 (target 0xd83c348) and falls through when v0(=ret(_XReply)) != 0 (target 0xd83c2ec).
  The `beq` at 0xd83c2ec is taken when a5(=[a0+1232]) == 0 (target 0xd83c300) and falls through when a5(=[a0+1232]) != 0 (target 0xd83c2f4).
  The `beq` at 0xd83c304 is taken when t9(=[a0+124]) == 0 (target 0xd83c314) and falls through when t9(=[a0+124]) != 0 (target 0xd83c30c).
  The `jr` at 0xd83c330 returns with v0 = 0x1.

- `glXQueryHyperpipeNetworkSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83cc58, 628 bytes) Inferred.
  Stores 4 bytes from `zero` to `a1 (arg1 at entry) +0x0` through base `s1 (a1)` (`sw` at 0xd83cc8c).
  Stores 4 bytes from `v0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83ccc8).
  Stores 2 bytes from `t2` to `[a0+108] +0x2` through base `v0 ([a0+108])` (`sh` at 0xd83ccd0).
  Stores 1 byte from `t3` to `[a0+108] +0x0` through base `v0 ([a0+108])` (`sb` at 0xd83ccd8).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83cc84).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd83cca0).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=0x1000e, a6=0x11 (`jalr` at 0xd83cd20).
  Calls `_XEatData` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83cd50).
  The `beq` at 0xd83cc94 is taken when a2(=[a0+1232]) == 0 (target 0xd83cca8) and falls through when a2(=[a0+1232]) != 0 (target 0xd83cc9c).
  The `bne` at 0xd83ccb8 is taken when v1(=[a0+112]) < a0(=[a0+108]+16) (unsigned) (target 0xd83ce70) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+16) (unsigned) (target 0xd83ccc0).
  The `beq` at 0xd83cd28 is taken when v0(=ret(_XReply)) == 0 (target 0xd83ce80) and falls through when v0(=ret(_XReply)) != 0 (target 0xd83cd30).
  The `blez` at 0xd83cd34 is taken when a0(?) <= 0 (signed) (target 0xd83cd48) and falls through when a0(?) > 0 (signed) (target 0xd83cd3c).
  The `bne` at 0xd83cd40 is taken when a0(?) < 0x21 (signed) (target 0xd83cda4) and falls through when a0(?) >= 0x21 (signed) (target 0xd83cd48).
  The `jr` at 0xd83cd9c returns with v0 = 0x0.

- `glXHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83cecc, 704 bytes) Inferred.
  Stores 4 bytes from `a0` to `a0 (arg0 at entry) +0x64` through base `s1 (a0)` (`sw` at 0xd83cf84).
  Stores 1 byte from `a3` to `[a0+108] +0x0` through base `a0 ([a0+108])` (`sb` at 0xd83cf8c).
  Stores 2 bytes from `a2` to `[a0+108] +0x2` through base `a0 ([a0+108])` (`sh` at 0xd83cf98).
  Stores 4 bytes from `v1` to `a0 (arg0 at entry) +0x60` through base `s1 (a0)` (`sw` at 0xd83cfac).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83cf08).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83cf40).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-112, a2=0x0, a3=0x0 (`jalr` at 0xd83d050).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd83d08c).
  The `blez` at 0xd83cf10 is taken when s2(=a2) <= 0 (signed) (target 0xd83d0c8) and falls through when s2(=a2) > 0 (signed) (target 0xd83cf18).
  The `beq` at 0xd83cf18 is taken when s3(=a3) == 0 (target 0xd83d0c8) and falls through when s3(=a3) != 0 (target 0xd83cf20).
  The `beq` at 0xd83cf20 is taken when v0(?) == 0 (target 0xd83d0c8) and falls through when v0(?) != 0 (target 0xd83cf28).
  The `bltz` at 0xd83cf28 is taken when v1(=a1) < 0 (signed) (target 0xd83d17c) and falls through when v1(=a1) >= 0 (signed) (target 0xd83cf30).
  The `beq` at 0xd83cf34 is taken when v0(=[a0+1232]) == 0 (target 0xd83cf4c) and falls through when v0(=[a0+1232]) != 0 (target 0xd83cf3c).
  The `jr` at 0xd83d0c0 returns with v0 = 0x0.

- `glXDestroyHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83d18c, 372 bytes) Inferred.
  Stores 4 bytes from `a5` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83d1f4).
  Stores 2 bytes from `t3` to `[a0+108] +0x2` through base `a5 ([a0+108])` (`sh` at 0xd83d1fc).
  Stores 1 byte from `t8` to `[a0+108] +0x0` through base `a5 ([a0+108])` (`sb` at 0xd83d204).
  Stores 4 bytes from `t1` to `a0 (arg0 at entry) +0x60` through base `s0 (a0)` (`sw` at 0xd83d214).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83d1b8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd83d1d0).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-80, a2=0x0, a3=0x0, a4=[a0+132], a5=[a0+108], a6=0x10011, a7=0x11 (`jalr` at 0xd83d250).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+1232] (`jalr` at 0xd83d270).
  The `beq` at 0xd83d1c4 is taken when a4(=[a0+1232]) == 0 (target 0xd83d1d8) and falls through when a4(=[a0+1232]) != 0 (target 0xd83d1cc).
  The `bne` at 0xd83d1e8 is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned) (target 0xd83d2a8) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned) (target 0xd83d1f0).
  The `beq` at 0xd83d258 is taken when v0(=ret(_XReply)) == 0 (target 0xd83d2bc) and falls through when v0(=ret(_XReply)) != 0 (target 0xd83d260).
  The `beq` at 0xd83d264 is taken when a4(=[a0+1232]) == 0 (target 0xd83d278) and falls through when a4(=[a0+1232]) != 0 (target 0xd83d26c).
  The `beq` at 0xd83d27c is taken when t9(=[a0+124]) == 0 (target 0xd83d290) and falls through when t9(=[a0+124]) != 0 (target 0xd83d284).
  The `jr` at 0xd83d2a0 returns with v0 = ?.

- `glXQueryHyperpipeConfigSGIX` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`, 0xd83d300, 616 bytes) Inferred.
  Stores 4 bytes from `zero` to `a2 (arg2 at entry) +0x0` through base `s1 (a2)` (`sw` at 0xd83d338).
  Stores 4 bytes from `v0` to `a0 (arg0 at entry) +0x64` through base `s0 (a0)` (`sw` at 0xd83d378).
  Stores 2 bytes from `t3` to `[a0+108] +0x2` through base `v0 ([a0+108])` (`sh` at 0xd83d380).
  Stores 1 byte from `t8` to `[a0+108] +0x0` through base `v0 ([a0+108])` (`sb` at 0xd83d388).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd83d330).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd83d34c).
  Calls `_XReply` via got with a0=a0 at entry (arg0), a1=sp-96, a2=0x0, a3=0x0, a4=[a0+132], a5=a1 at entry (arg1), a6=0x1000f, a7=0x11 (`jalr` at 0xd83d3d4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd83d408).
  The `beq` at 0xd83d340 is taken when a2(=[a0+1232]) == 0 (target 0xd83d354) and falls through when a2(=[a0+1232]) != 0 (target 0xd83d348).
  The `bne` at 0xd83d364 is taken when v1(=[a0+112]) < a0(=[a0+108]+32) (unsigned) (target 0xd83d520) and falls through when v1(=[a0+112]) >= a0(=[a0+108]+32) (unsigned) (target 0xd83d36c).
  The `beq` at 0xd83d3dc is taken when v0(=ret(_XReply)) == 0 (target 0xd83d530) and falls through when v0(=ret(_XReply)) != 0 (target 0xd83d3e4).
  The `bgtz` at 0xd83d3ec is taken when t9(?) > 0 (signed) (target 0xd83d440) and falls through when t9(?) <= 0 (signed) (target 0xd83d3f4).
  The `beq` at 0xd83d3fc is taken when a2(=[a0+1232]) == 0 (target 0xd83d410) and falls through when a2(=[a0+1232]) != 0 (target 0xd83d404).
  The `jr` at 0xd83d438 returns with v0 = 0x0.

- `__glOdyim_Clear` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9644d0, 1476 bytes) Inferred.
  Stores 1 byte from `v1` to `[0x1010] +0x16975` through base `a0 ([0x1010]+65536)` (`sb` at 0xd964544).
  Stores 4 bytes from `zero` to `abs 0x1018` through base `zero (0x0)` (`sw` at 0xd964554).
  Stores 4 bytes from `a1` to `[0x1010] +0x7c20` through base `s0 ([0x1010])` (`sw` at 0xd9645fc).
  Stores 4 bytes from `a4` to `[0x1010] +0x7c24` through base `s0 ([0x1010])` (`sw` at 0xd964604).
  Calls `__glSetError [0xda34dc0]` via register-constant with a0=0x502, a1=[0x1018], a2=0x10000, a3=a3 at entry (arg3) (`jalr` at 0xd964520).
  Calls `(unknown callee)` via register with a0=[0x1010], a1=[0x1018], a2=0x10000, a3=a3 at entry (arg3) (`jalr` at 0xd96454c).
  Calls `__glSetError [0xda34dc0]` via register-constant with a0=0x501, a1=?, a2=-0x4701, a3=a0 at entry (arg0) (`jalr` at 0xd964570).
  Calls `(unknown callee)` via register with a0=[0x1010]+31416, a1=?, a2=-0x4701, a3=a0 at entry (arg0), a4=[[0x1010]+3204], a5=0x1c00, a7=[[0x1010]+3224]:1 (`jalr` at 0xd9645b4).
  The `beq` at 0xd964504 is taken when at(=[[0x1010]+92516]) == 0 (target 0xd964688) and falls through when at(=[[0x1010]+92516]) != 0 (target 0xd96450c).
  The `beq` at 0xd96450c is taken when a1(=[0x1018]) == 0 (target 0xd964540) and falls through when a1(=[0x1018]) != 0 (target 0xd964514).
  The `beq` at 0xd964518 is taken when a1(=[0x1018]) == v0(=0x2) (target 0xd96453c) and falls through when a1(=[0x1018]) != v0(=0x2) (target 0xd964520).
  The `beq` at 0xd964564 is taken when (a1(=a0) & a2(=-0x4701)) == 0 (target 0xd964580) and falls through when (a1(=a0) & a2(=-0x4701)) != 0 (target 0xd96456c).
  The `beq` at 0xd964580 is taken when a3(=a0) == 0 (target 0xd96452c) and falls through when a3(=a0) != 0 (target 0xd964588).
  The `jr` at 0xd964534 returns with v0 = ?.

- `ApplyMaterialF` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd983680, 1892 bytes) Inferred.
  Stores 4 bytes from `a5` to `a0 (arg0 at entry) +0x18` through base `a0 (a0)` (`sw` at 0xd98371c).
  Stores 4 bytes from `a7` to `a0 (arg0 at entry) +0x18` through base `a0 (a0)` (`sw` at 0xd98375c).
  Stores 4 bytes from `t0` to `a0 (arg0 at entry) +0x1c` through base `a0 (a0)` (`sw` at 0xd9837a0).
  Stores 4 bytes from `zero` to `[0x1010] +0x9830` through base `a1 ([0x1010]+65536)` (`sw` at 0xd9837b8).
  The `bne` at 0xd983684 is taken when a1 < 0x1600 (unsigned) (target 0xd9836b8) and falls through when a1 >= 0x1600 (unsigned) (target 0xd98368c).
  The `beq` at 0xd983690 is taken when a1 >= 0x1601 (unsigned) (target 0xd9838f0) and falls through when a1 < 0x1601 (unsigned) (target 0xd983698).
  The `bne` at 0xd9836bc is taken when a1 < 0x1201 (unsigned) (target 0xd983924) and falls through when a1 >= 0x1201 (unsigned) (target 0xd9836c4).
  The `beq` at 0xd9836c8 is taken when a1 >= 0x1202 (unsigned) (target 0xd983a6c) and falls through when a1 < 0x1202 (unsigned) (target 0xd9836d0).
  The `beq` at 0xd9837b0 is taken when t2(=[[0x1010]+38960]) == 0 (target 0xd983864) and falls through when t2(=[[0x1010]+38960]) != 0 (target 0xd9837b8).
  The `jr` at 0xd98385c returns with v0 = [[0x1010]+31900].

- `ApplyMaterialI` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd983df0, 2332 bytes) Inferred.
  Stores 4 bytes from `a5` to `a0 (arg0 at entry) +0x18` through base `a0 (a0)` (`sw` at 0xd983ec0).
  Stores 4 bytes from `t0` to `a0 (arg0 at entry) +0x18` through base `a0 (a0)` (`sw` at 0xd983f14).
  Stores 4 bytes from `t1` to `a0 (arg0 at entry) +0x1c` through base `a0 (a0)` (`sw` at 0xd983f6c).
  Stores 4 bytes from `zero` to `[0x1010] +0x9830` through base `a1 ([0x1010]+65536)` (`sw` at 0xd983f84).
  The `bne` at 0xd983df4 is taken when a1 < 0x1600 (unsigned) (target 0xd983e44) and falls through when a1 >= 0x1600 (unsigned) (target 0xd983dfc).
  The `beq` at 0xd983e00 is taken when a1 >= 0x1601 (unsigned) (target 0xd9840b8) and falls through when a1 < 0x1601 (unsigned) (target 0xd983e08).
  The `bne` at 0xd983e48 is taken when a1 < 0x1201 (unsigned) (target 0xd984104) and falls through when a1 >= 0x1201 (unsigned) (target 0xd983e50).
  The `beq` at 0xd983e50 is taken when a5(?) == 0 (target 0xd9842b0) and falls through when a5(?) != 0 (target 0xd983e58).
  The `beq` at 0xd983f7c is taken when t3(=[[0x1010]+38960]) == 0 (target 0xd984030) and falls through when t3(=[[0x1010]+38960]) != 0 (target 0xd983f84).
  The `jr` at 0xd984028 returns with v0 = [[0x1010]+31904].

- `AddConvolutionBorders` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd99e4b0, 9864 bytes) Inferred.
  Stores 4 bytes from `ra` to `[0x1010] +0x7bfc` through base `s3 ([0x1010])` (`sw` at 0xd99e518).
  Stores 4 bytes from `ra` to `[0x1010] +0x16960` through base `s2 ([0x1010]+65536)` (`sw` at 0xd99e534).
  Stores 4 bytes from `ra` to `abs 0x1018` through base `zero (0x0)` (`sw` at 0xd99e540).
  Stores 4 bytes from `$f24` to `? (base unknown)` through base `t3 (?)` (`swc1` at 0xd99e55c).
  Calls `__glOdysseyProgramTexFilter [0xd9b6820]` via register-constant with a0=?, a1=a1 at entry (arg1), a2=?, a3=[[[0x1010]+764]+64], a4=[[[0x1010]+764]+68] (`jalr` at 0xd99e5fc).
  Calls `LoadTextureFilter [0xd99cb60]` via direct with a0=a1 at entry (arg1), a1=[a1+16]-1, a2=?, a3=? (`bgezall` at 0xd99e664).
  Calls `__glOdysseyImageMovePixelsTexture [0xd9bbff0]` via register-constant with a0=a4 at entry (arg4), a1=[a1+68], a2=sp-432, a3=0x0, a5=[a2+24], a6=[a2+20], a7=[a2+16] (`jalr` at 0xd99e6f8).
  Calls `__glOdysseyProgramTexFilter [0xd9b6820]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd99e76c).
  The `beq` at 0xd99e798 is taken when t1(=[[[0x1010]+764]]) == t2(=0x8010) (target 0xd99f400) and falls through when t1(=[[[0x1010]+764]]) != t2(=0x8010) (target 0xd99e7a0).
  The `beq` at 0xd99e7a8 is taken when a1(=[[0x1010]+72660]) == t2(=0x8150) (target 0xd99e858) and falls through when a1(=[[0x1010]+72660]) != t2(=0x8150) (target 0xd99e7b0).
  The `beq` at 0xd99e7b4 is taken when a1(=[[0x1010]+72660]) == t3(=0x8152) (target 0xd99f40c) and falls through when a1(=[[0x1010]+72660]) != t3(=0x8152) (target 0xd99e7bc).
  The `beq` at 0xd99e7bc is taken when a1(=[[0x1010]+72660]) == t8(=0x8151) (target 0xd9a059c) and falls through when a1(=[[0x1010]+72660]) != t8(=0x8151) (target 0xd99e7c4).
  The `beq` at 0xd99e7c4 is taken when a1(=[[0x1010]+72660]) == t9(=0x8153) (target 0xd99fc94) and falls through when a1(=[[0x1010]+72660]) != t9(=0x8153) (target 0xd99e7cc).
  The `jr` at 0xd99f2ac returns with v0 = ?; f0 = ret(floorf).

- `__glOdylc_TexCoord2i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xd9cd110, 292 bytes) Inferred.
  Stores 4 bytes from `a7` to `? (base unknown)` through base `a6 (?)` (`sw` at 0xd9cd1ac).
  Stores 4 bytes from `a0` to `? (base unknown)` through base `a6 (?)` (`sw` at 0xd9cd1b0).
  Stores 4 bytes from `a1` to `? (base unknown)` through base `a6 (?)` (`sw` at 0xd9cd1b4).
  Stores 4 bytes from `a6` to `abs 0x1030` through base `zero (0x0)` (`sw` at 0xd9cd1bc).
  Calls `__glSPDlistSpace [0xd9fb4b0]` via register-constant with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[0x1028] (`jalr` at 0xd9cd160).
  The `beq` at 0xd9cd138 is taken when at(=[0x1034]) == 0 (target 0xd9cd1e4) and falls through when at(=[0x1034]) != 0 (target 0xd9cd140).
  The `beq` at 0xd9cd144 is taken when a4(=[0x1028]) >= 0x3 (signed) (target 0xd9cd1dc) and falls through when a4(=[0x1028]) < 0x3 (signed) (target 0xd9cd14c).
  The `beq` at 0xd9cd178 is taken when v0(=ret(__glSPDlistSpace)) == 0 (target 0xd9cd20c) and falls through when v0(=ret(__glSPDlistSpace)) != 0 (target 0xd9cd180).
  The `beq` at 0xd9cd1f4 is taken when a4(=[0x1028]) >= a7(?) (signed) (target 0xd9cd18c) and falls through when a4(=[0x1028]) < a7(?) (signed) (target 0xd9cd1fc).
  The `jr` at 0xd9cd1d4 returns with v0 = ?.

- `__glOdyim_Vertex2d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdace5c0, 36 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdace5d4).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdace5d8).
  Stores 4 bytes from `$f13` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdace5e0).
  The `jr` at 0xdace5dc returns with v0 = 0x10000.

- `__glOdyim_Vertex3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdace7c0, 44 bytes) Inferred.
  Stores 4 bytes from `t0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdace7d8).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdace7dc).
  Stores 4 bytes from `$f13` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdace7e0).
  Stores 4 bytes from `$f14` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdace7e8).
  The `jr` at 0xdace7e4 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3b` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4140, 32 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad414c).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4150).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4154).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad415c).
  The `jr` at 0xdad4158 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3d` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4240, 44 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4258).
  Stores 4 bytes from `$f12` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad425c).
  Stores 4 bytes from `$f13` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad4260).
  Stores 4 bytes from `$f14` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad4268).
  The `jr` at 0xdad4264 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4440, 32 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad444c).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4450).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4454).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad445c).
  The `jr` at 0xdad4458 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4540, 32 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad454c).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4550).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4554).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad455c).
  The `jr` at 0xdad4558 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3ui` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4740, 32 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad474c).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4750).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4754).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad475c).
  The `jr` at 0xdad4758 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor3us` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4840, 32 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad484c).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4850).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4854).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad485c).
  The `jr` at 0xdad4858 returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4b` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4940, 36 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad494c).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4950).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4954).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4958).
  The `jr` at 0xdad495c returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4dv` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4b00, 68 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4b24).
  Stores 4 bytes from `$f4` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad4b2c).
  Stores 4 bytes from `$f5` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad4b34).
  Stores 4 bytes from `$f6` to `abs 0x10000` through base `v0 (0x10000)` (`swc1` at 0xdad4b38).
  The `jr` at 0xdad4b3c returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4i` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4cc0, 36 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4ccc).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4cd0).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4cd4).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4cd8).
  The `jr` at 0xdad4cdc returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4s` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4dc0, 36 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4dcc).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4dd0).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4dd4).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4dd8).
  The `jr` at 0xdad4ddc returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4ub` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4ec0, 36 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4ecc).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4ed0).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4ed4).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4ed8).
  The `jr` at 0xdad4edc returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4ui` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad4fc0, 36 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4fcc).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4fd0).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4fd4).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad4fd8).
  The `jr` at 0xdad4fdc returns with v0 = 0x10000.

- `__glOdyim_ScratchColor4us` (`builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`, 0xdad50c0, 36 bytes) Inferred.
  Stores 4 bytes from `a7` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad50cc).
  Stores 4 bytes from `a0` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad50d0).
  Stores 4 bytes from `a1` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad50d4).
  Stores 4 bytes from `a2` to `abs 0x10000` through base `v0 (0x10000)` (`sw` at 0xdad50d8).
  The `jr` at 0xdad50dc returns with v0 = 0x10000.
