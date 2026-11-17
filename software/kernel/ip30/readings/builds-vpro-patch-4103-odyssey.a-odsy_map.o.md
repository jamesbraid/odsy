# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`

One entry per routine, filed here from the reading batches by binary.

- `gf_OdsyMapGfx` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x0-0x28c (652 bytes).
  It occupies 652 bytes.
  The `ld` at 0x1c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x28 loads 8 bytes from a0 (arg0 at entry) +0x28.
  10 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x4c, `ld` at 0x78, `ld` at 0xb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x94, `lw` at 0x1d0.
  The `sw` at 0x1d8 stores 4 bytes to a0 (arg0 at entry) +0x30.
  3 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x1dc, `ld` at 0x23c, `ld` at 0x248.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x38, including `sw` at 0x208, `sw` at 0x218.
  The `lh` at 0x20c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x24c loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x270 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x274 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `sw` at 0x280 stores 4 bytes to [a0+32]:8 +0x28a8.
  The `sw` at 0x288 stores 4 bytes to [[a0+32]:8+736]:8 +0x107c.
  The `jal` at 0x20 calls gfx_flow_clean_up_other_gfxp with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x34 calls ddv_getaddr with a0=[a0+40]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x64 calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr), a2=[[a0+32]:8+736]:8+0x100000, a3=0x1, a4=0x0.
  The `jal` at 0x8c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+16384, a2=[[a0+32]:8+736]:8+0x120000, a3=0x1, a4=0x2.
  The `jal` at 0xbc calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+32768, a2=[[a0+32]:8+736]:8, a3=0x2, a4=0x2.
  The `jal` at 0xe8 calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+65536, a2=[[a0+32]:8+736]:8+0x110000, a3=0x1, a4=0x2.
  The `jal` at 0x11c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+81920, a2=[[a0+32]:8+736]:8+0x118000, a3=0x1, a4=0x0.
  The `jal` at 0x14c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+98304, a2=[[a0+32]:8+736]:8+0x200000, a3=0x1, a4=0x2.
  The `jal` at 0x17c calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+114688, a2=[[a0+32]:8+736]:8+0x220000, a3=0x8, a4=0x2.
  The `jal` at 0x1ac calls v_mapkvsegment with a0=[a0+40]:8, a1=ret(ddv_getaddr)+245760, a2=[[a0+32]:8+736]:8+0x400000, a3=0x1, a4=0x2.
  The `jal` at 0x1c8 calls splhi with a0=?, a1=?, a2=?, a3=0x1.
  The `jal` at 0x1ec calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x200 calls splx with a0=ret(splhi), a1=ret(splhi), a2=?, a3=?.
  The `jal` at 0x240 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x250 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+10404], a2=?, a3=?.
  The `beq` branch at 0x9c targets 0x1b8, is taken when (at(=[a0+48]) & 0x20) == 0, and falls through when (at(=[a0+48]) & 0x20) != 0.
  The `beq` branch at 0x1e4 targets 0x1fc, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1f4 targets 0x23c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x284 targets 0x1fc and is always taken.
  The return at 0x234 has v0 = one of -0x1, 0x0.

- `gf_OdsyUnMapGfx` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x28c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x28c-0x408 (380 bytes).
  It occupies 380 bytes.
  The `ld` at 0x2a0 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x2ac loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x2bc, `lw` at 0x2d4, `lw` at 0x338.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x2e0, `sw` at 0x340.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x2e4, `ld` at 0x31c.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x300, `ld` at 0x310.
  The `sw` at 0x308 stores 4 bytes to [a0+32]:8 +0x28a8.
  The `sw` at 0x30c stores 4 bytes to [[a0+32]:8+736]:8 +0x107c.
  The `lw` at 0x314 loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x350, `ld` at 0x3b8.
  The `lw` at 0x380 loads 4 bytes from ret(gthread_find) +0x8.
  The `ld` at 0x394 loads 8 bytes from ret(gthread_find) +0x0.
  The `sw` at 0x3e4 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `jal` at 0x2a4 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2cc calls splhi with a0=?, a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x2f0 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x320 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8.
  The `jal` at 0x32c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x348 calls splx with a0=ret(splhi), a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x370 calls curthreadhandle with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x378 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x390 calls thread_issproc with a0=[ret(gthread_find)]:8, a1=?, a2=-0x1, a3=?.
  The `jal` at 0x3b4 calls ddv_invalphys_fal with a0=[a0+40]:8, a1=0x0, a2=-0x1, a3=?.
  The `jal` at 0x3e0 calls gf_OdsyInvalTLB with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=?.
  The `jal` at 0x3f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=0x2, a3=?.
  The `bne` branch at 0x2b8 targets 0x33c, is taken when at(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x2c4 targets 0x33c, is taken when (a1(=[a0+48]) & 0x1) == 0, and falls through when (a1(=[a0+48]) & 0x1) != 0.
  The `beq` branch at 0x2e8 targets 0x328, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x2f8 targets 0x32c, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` branch at 0x35c targets 0x370, is taken when at(=[a0+40]:8) != 0, and falls through when at(=[a0+40]:8) == 0.
  The `beq` branch at 0x388 targets 0x3b0, is taken when (v1(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (v1(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x398 targets 0x3ac, is taken when v0(=ret(thread_issproc)) == 0, and falls through when v0(=ret(thread_issproc)) != 0.
  The `beq` branch at 0x3a4 targets 0x368 and is always taken.
  The `beq` branch at 0x3c0 targets 0x3d8, is taken when v0(=ret(ddv_invalphys_fal)) == 0, and falls through when v0(=ret(ddv_invalphys_fal)) != 0.
  The `bne` branch at 0x3c8 targets 0x3f4, is taken when v0(=ret(ddv_invalphys_fal)) != a2(=0x2), and falls through when v0(=ret(ddv_invalphys_fal)) == a2(=0x2).
  The `beq` branch at 0x3d0 targets 0x368 and is always taken.
  The `beq` branch at 0x3ec targets 0x3d0 and is always taken.
  The `beq` branch at 0x400 targets 0x3d0 and is always taken.
  The return at 0x368 has v0 = 0x0.

- `gf_OdsyInvalTLB` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x408 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x408-0x488 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x420 loads 4 bytes from ret(gthread_find) +0x8.
  The `ld` at 0x434 loads 8 bytes from ret(gthread_find) +0x0.
  The `ld` at 0x45c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lh` at 0x464 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x46c loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x478 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `jal` at 0x410 calls curthreadhandle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x418 calls gthread_find with a0=ret(curthreadhandle), a1=?, a2=?, a3=?.
  The `jal` at 0x430 calls thread_issproc with a0=[ret(gthread_find)]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x458 calls ddv_invaltlb with a0=[a0+40]:8, a1=0x0, a2=-0x1, a3=?.
  The `beq` branch at 0x428 targets 0x450, is taken when (at(=[ret(gthread_find)+8]) & 0x4) == 0, and falls through when (at(=[ret(gthread_find)+8]) & 0x4) != 0.
  The `beq` branch at 0x438 targets 0x44c, is taken when v0(=ret(thread_issproc)) == 0, and falls through when v0(=ret(thread_issproc)) != 0.
  The `beq` branch at 0x480 targets 0x444 and is always taken.
  The return at 0x444 has v0 = 0x0.

- `odsyPinAndMapGctxSwShadowRgn` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x488 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x488-0x570 (232 bytes).
  It occupies 232 bytes.
  The `sd` at 0x4e0 stores 8 bytes to a0 (arg0 at entry) +0x60.
  The `sd` at 0x4ec stores 8 bytes to a0 (arg0 at entry) +0x68.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x4fc, `sw` at 0x530, `sw` at 0x560.
  The `ld` at 0x538 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `jal` at 0x4a4 calls pte_cachebits with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4c0 calls useracc with a0=a2 at entry (arg2), a1=0x2b78, a2=0x111, a3=0x0.
  The `jal` at 0x4d8 calls maputokv with a0=a2 at entry (arg2), a1=0x2b78, a2=(ret(pte_cachebits) | 0x7), a3=?.
  The `jal` at 0x51c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x540 calls unuseracc with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=?.
  The `jal` at 0x554 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x4c8 targets 0x50c, is taken when v0(=ret(useracc)) != 0, and falls through when v0(=ret(useracc)) == 0.
  The `beq` branch at 0x4e4 targets 0x534, is taken when v0(=ret(maputokv)) == 0, and falls through when v0(=ret(maputokv)) != 0.
  The `beq` branch at 0x52c targets 0x500 and is always taken.
  The `beq` branch at 0x568 targets 0x500 and is always taken.
  The return at 0x504 has v0 = one of 0x0, ret(useracc), 0x16.

- `odsyUnpinAndUnmapGctxRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x570 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x570-0x65c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0x570 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x584 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `ld` at 0x5a4 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `sd` at 0x5ac stores 8 bytes to a0 (arg0 at entry) +0x68.
  The `sd` at 0x5b0 stores 8 bytes to a0 (arg0 at entry) +0x60.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x10, including `ld` at 0x5d8, `ld` at 0x600, `ld` at 0x614.
  The `ld` at 0x5e0 loads 8 bytes from ret(OdsyNextCSetElem) +0x8.
  The `jal` at 0x590 calls unmaputokv with a0=[a0+96]:8, a1=0x2b78, a2=?, a3=?.
  The `jal` at 0x5a0 calls unuseracc with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=?.
  The `jal` at 0x5bc calls OdsyInitCSetCursor with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x5c4 calls OdsyNextCSetElem with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x5dc calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x5e8 calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=?.
  The `jal` at 0x5f0 calls OdsyNextCSetElem with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x60c calls odsyUnmapPages with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x630 calls OdsyDestroyCSet with a0=a0+224, a1=0x0, a2=?, a3=?.
  The `jal` at 0x64c calls odsyUnmapPages with a0=a0+128, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x57c targets 0x648, is taken when at(=[a0+120]:8) != 0, and falls through when at(=[a0+120]:8) == 0.
  The `beq` branch at 0x588 targets 0x5b4, is taken when a0(=[a0+96]:8) == 0, and falls through when a0(=[a0+96]:8) != 0.
  The `beq` branch at 0x5cc targets 0x628, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x5d4 targets 0x604 and is always taken.
  The `beq` branch at 0x5f8 targets 0x628, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x604 targets 0x5e8, is taken when v1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when v1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x618 targets 0x5e8, is taken when a1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when a1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x620 targets 0x5dc and is always taken.
  The `beq` branch at 0x654 targets 0x584 and is always taken.
  The return at 0x640 has v0 = ret(OdsyDestroyCSet).

- `odsyUnmap` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x65c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x65c-0x6bc (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x690, `ld` at 0x694, `ld` at 0x698.
  The `jal` at 0x670 calls as_lookup_current with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x6a4 calls (unknown callee) with a0=?, a1=?, a2=sp-80, a3=0x0.
  The return at 0x6b4 has v0 = ret(?).

- `odsyUnpinAndUnmapSGRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x6bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x6bc-0x75c (160 bytes).
  It occupies 160 bytes.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x8, including `ld` at 0x6ec, `ld` at 0x714, `ld` at 0x738.
  The `ld` at 0x720 loads 8 bytes from ret(OdsyNextCSetElem) +0x10.
  The `jal` at 0x6cc calls OdsyInitCSetCursor with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6d8 calls OdsyNextCSetElem with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x6f0 calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x6fc calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=?.
  The `jal` at 0x704 calls OdsyNextCSetElem with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x72c calls odsyUnmapPages with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x744 calls OdsyDestroyCSet with a0=a0+104, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x6e0 targets 0x73c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x6e8 targets 0x718 and is always taken.
  The `beq` branch at 0x70c targets 0x73c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x718 targets 0x6f0, is taken when a0(=[ret(OdsyNextCSetElem)+8]:8) == 0, and falls through when a0(=[ret(OdsyNextCSetElem)+8]:8) != 0.
  The `beq` branch at 0x724 targets 0x6f0, is taken when at(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when at(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x734 targets 0x6f0 and is always taken.
  The return at 0x754 has v0 = ret(OdsyDestroyCSet).

- `odsyPinAndMapASRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x75c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x75c-0x7e0 (132 bytes).
  It occupies 132 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x760, `ld` at 0x7c0.
  The `sd` at 0x764 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `sd` at 0x768 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `ld` at 0x790 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x7d4 loads 8 bytes from [a0+8]:8 +0x10.
  The `jal` at 0x78c calls odsyMapPages with a0=0x0, a1=a0+32, a2=[[a0+8]:8+8]:8, a3=0x10000, a4=sym(.data), a5=0x1, a6=a0+40.
  The `jal` at 0x7d0 calls odsyMapPages with a0=0x0, a1=a0+48, a2=[[a0+8]:8+16]:8, a3=0xc000, a4=sym(.data), a5=0x1, a6=a0+56.
  The `beq` branch at 0x798 targets 0x7ac, is taken when v0(=ret(odsyMapPages)) == 0, and falls through when v0(=ret(odsyMapPages)) != 0.
  The `beq` branch at 0x7d8 targets 0x7a4 and is always taken.
  The return at 0x7a4 has v0 = ret(odsyMapPages).

- `odsyUnpinAndUnmapASRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x7e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x7e0-0x848 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x7e4 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x7fc loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x81c calls odsyUnmapPages with a0=a0+40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x834 calls odsyUnmapPages with a0=a0+56, a1=?, a2=?, a3=?.
  The `bne` branch at 0x7f4 targets 0x818, is taken when at(=[a0+40]:8) != 0, and falls through when at(=[a0+40]:8) == 0.
  The `bne` branch at 0x800 targets 0x830, is taken when v1(=[a0+56]:8) != 0, and falls through when v1(=[a0+56]:8) == 0.
  The `beq` branch at 0x828 targets 0x7fc and is always taken.
  The `beq` branch at 0x840 targets 0x804 and is always taken.
  The return at 0x810 has v0 = ?.

- `odsyPinAndMapPfStatRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x848 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x848-0x8a8 (96 bytes).
  It occupies 96 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2840, including `lw` at 0x86c, `lw` at 0x88c.
  The `ld` at 0x898 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x894 calls odsyMapPages with a0=0x0, a1=a0+10320, a2=[a0+10312]:8, a3=[a0+10304], a4=sp-64, a5=0x1, a6=a0+10328.
  The return at 0x8a0 has v0 = ret(odsyMapPages).

- `odsyUnpinAndUnmapPfStatRegions` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x8a8-0x8d8 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x8a8 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x8c8 calls odsyUnmapPages with a0=a0+10328, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x8b0 targets 0x8c4, is taken when at(=[a0+10312]:8) != 0, and falls through when at(=[a0+10312]:8) == 0.
  The `beq` branch at 0x8d0 targets 0x8bc and is always taken.
  The return at 0x8bc has v0 = one of 0x0, ret(odsyUnmapPages).

- `odsyMapPages` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x8d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x8d8-0x9bc (228 bytes).
  It occupies 228 bytes.
  5 such `ld` accesses load 8 bytes from a6 (arg6 at entry) +0x0, including `ld` at 0x92c, `ld` at 0x948, `ld` at 0x970.
  The `sd` at 0x9b8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x908 calls gfxdd_mmap_mem_ex with a0=0x0, a1=a3 at entry (arg3), a2=a0 at entry (arg0), a3=a4 at entry (arg4), a4=a5 at entry (arg5), a5=a6 at entry (arg6).
  The `jal` at 0x928 calls ddv_lock with a0=[a6]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x94c calls ddv_mappages with a0=[a6]:8, a1=0x0, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x96c calls ddv_unlock with a0=[a6]:8, a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x988 calls gfxdd_munmap with a0=[a6]:8, a1=?, a2=?, a3=?, a4=ret(ddv_mappages).
  The `jal` at 0x9a8 calls ddv_getaddr with a0=[a6]:8, a1=?, a2=?, a3=?, a4=a1 at entry (arg1).
  The `beq` branch at 0x910 targets 0x924, is taken when v0(=ret(gfxdd_mmap_mem_ex)) == 0, and falls through when v0(=ret(gfxdd_mmap_mem_ex)) != 0.
  The `beq` branch at 0x958 targets 0x968, is taken when a4(=a1) == 0, and falls through when a4(=a1) != 0.
  The `beq` branch at 0x964 targets 0x9a4, is taken when at(=ret(ddv_mappages)) == 0, and falls through when at(=ret(ddv_mappages)) != 0.
  The `beq` branch at 0x97c targets 0x99c, is taken when a4(=ret(ddv_mappages)) == 0, and falls through when a4(=ret(ddv_mappages)) != 0.
  The `beq` branch at 0x994 targets 0x91c and is always taken.
  The `beq` branch at 0x99c targets 0x91c and is always taken.
  The `beq` branch at 0x9b4 targets 0x968 and is always taken.
  The return at 0x91c has v0 = one of 0xc, ret(ddv_mappages), 0x0.

- `odsyUnmapPages` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x9bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x9bc-0x9e4 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x9bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x9c8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x9cc calls gfxdd_munmap with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x9dc has v0 = 0x0.
