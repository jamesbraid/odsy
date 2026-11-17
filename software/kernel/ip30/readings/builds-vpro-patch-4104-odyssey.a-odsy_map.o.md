# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsyUnpinAndUnmapGctxRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x570 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
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

- `odsyUnmap` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x65c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x65c-0x6bc (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x690, `ld` at 0x694, `ld` at 0x698.
  The `jal` at 0x670 calls as_lookup_current with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x6a4 calls (unknown callee) with a0=?, a1=?, a2=sp-80, a3=0x0.
  The return at 0x6b4 has v0 = ret(?).

- `odsyUnpinAndUnmapSGRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x6bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
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

- `odsyPinAndMapASRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x75c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
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

- `odsyUnpinAndUnmapASRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x7e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
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

- `odsyPinAndMapPfStatRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x848 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x848-0x8a8 (96 bytes).
  It occupies 96 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2840, including `lw` at 0x86c, `lw` at 0x88c.
  The `ld` at 0x898 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x894 calls odsyMapPages with a0=0x0, a1=a0+10320, a2=[a0+10312]:8, a3=[a0+10304], a4=sp-64, a5=0x1, a6=a0+10328.
  The return at 0x8a0 has v0 = ret(odsyMapPages).

- `odsyUnpinAndUnmapPfStatRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x8a8-0x8d8 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x8a8 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x8c8 calls odsyUnmapPages with a0=a0+10328, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x8b0 targets 0x8c4, is taken when at(=[a0+10312]:8) != 0, and falls through when at(=[a0+10312]:8) == 0.
  The `beq` branch at 0x8d0 targets 0x8bc and is always taken.
  The return at 0x8bc has v0 = one of 0x0, ret(odsyUnmapPages).

- `odsyUnmapPages` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x9bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x9bc-0x9e4 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x9bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x9c8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x9cc calls gfxdd_munmap with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x9dc has v0 = 0x0.
