# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These facts describe software behavior in the named build; they do not establish board behavior.

Skipped 44,889 located rows and 5,598 understood rows because those statuses already have factual entries, 278 named-only or undocumented rows because an exact binary/member/routine entry already exists, 55,577 other eligible rows because they rank after this 250-routine hardware-first slice, and 21 selected rows because the inventory supplies no entry address or size for those exact binaries.

- `bte_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ed8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ed8c-0x3f14c (960 bytes).
  It occupies 960 bytes.
  16 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3ed90, `ld` at 0x3edb0, `ld` at 0x3edc4.
  The `lw` at 0x3ed9c loads 4 bytes from [a0+8]:8 +0x44.
  The `sw` at 0x3eda8 stores 4 bytes to [a0+8]:8 +0x44.
  6 such `ld` accesses load 8 bytes from [a0+8]:8 +0x58, including `ld` at 0x3edbc, `ld` at 0x3edf0, `ld` at 0x3f010.
  3 such `lw` accesses load 4 bytes from [a0+8]:8 +0x4c, including `lw` at 0x3ede4, `lw` at 0x3eeb0, `lw` at 0x3f004.
  The `ld` at 0x3ee18 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x3ee1c loads 2 bytes from [a0+8]:8 +0x38.
  The `ld` at 0x3ee20 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x3ee2c loads 8 bytes from ([[-0x3c00]:8]:8 + ([[a0+8]:8+56]:2 << 0x3)) +0x0.
  The `lw` at 0x3ee40 loads 4 bytes from [([[-0x3c00]:8]:8 + ([[a0+8]:8+56]:2 << 0x3))]:8 +0x8c80.
  The `ld` at 0x3ee7c loads 8 bytes from [a0+8]:8 +0x60.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3ee8c, `ld` at 0x3ee98, `ld` at 0x3eea0.
  10 such `lh` accesses load 2 bytes from ?, including `lh` at 0x3eea8, `lh` at 0x3eed8, `lh` at 0x3eeec.
  The `ld` at 0x3eebc loads 8 bytes from table(0x9200000001c001e8) +0x0.
  The `ld` at 0x3eec4 loads 8 bytes from table(0x9200000001c001f8) +0x0.
  The `sd` at 0x3eed0 stores 8 bytes to table(0x9200000001c001e8) +0x0.
  The `sd` at 0x3eee4 stores 8 bytes to table(0x9200000001c001f8) +0x0.
  The `ld` at 0x3eefc loads 8 bytes from table(0x9200000001c00138) +0x0.
  The `sd` at 0x3ef10 stores 8 bytes to table(0x9200000001c00138) +0x0.
  The `ld` at 0x3ef24 loads 8 bytes from table(0x9200000001c00220) +0x0.
  The `sd` at 0x3ef30 stores 8 bytes to table(0x9200000001c00220) +0x0.
  The `sd` at 0x3ef44 stores 8 bytes to table(0x9200000001c00228) +0x0.
  The `ld` at 0x3ef5c loads 8 bytes from table(0x9200000001e04040) +0x0.
  The `sd` at 0x3ef68 stores 8 bytes to table(0x9200000001e04050) +0x0.
  The `sd` at 0x3ef7c stores 8 bytes to table(0x9200000001e04058) +0x0.
  The `sd` at 0x3ef90 stores 8 bytes to table(0x9200000001e04060) +0x0.
  The `sd` at 0x3efa4 stores 8 bytes to table(0x9200000001e04048) +0x0.
  The `ld` at 0x3efb8 loads 8 bytes from table(0x9200000001c00200) +0x0.
  The `sd` at 0x3efcc stores 8 bytes to table(0x9200000001c00200) +0x0.
  The `ld` at 0x3efd4 loads 8 bytes from [a0+8]:8 +0x0.
  The `ld` at 0x3efdc loads 8 bytes from [[a0+8]:8]:8 +0x0.
  The `sd` at 0x3efe8 stores 8 bytes to [[a0+8]:8]:8 +0x0.
  The `lh` at 0x3f014 loads 2 bytes from a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x3f098, `lw` at 0x3f0e0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x3f0ac, `sw` at 0x3f0f4.
  The `jal` at 0x3edb8 calls nested_spintrylock with a0=[[a0+8]:8+88]:8, a1=[[a0+8]:8+68]+1, a2=[a0+8]:8, a3=a3 at entry (arg3).
  The `jal` at 0x3edcc calls bte_get_all_interfaces with a0=[a0+8]:8, a1=a1 at entry (arg1), a2=[a0+8]:8, a3=?.
  The `jal` at 0x3ede0 calls bte_free_interfaces with a0=[a0+8]:8, a1=[[a0+8]:8+76], a2=?, a3=?.
  The `jal` at 0x3edec calls nested_spinunlock with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3ee0c calls us_delay with a0=0x27100, a1=?, a2=?, a3=?.
  The `jal` at 0x3ee48 calls hwgraph_info_get_LBL with a0=[[([[-0x3c00]:8]:8 + ([[a0+8]:8+56]:2 << 0x3))]:8+35968], a1=sym(.rodata)+65336, a2=sp-48, a3=?.
  The `jal` at 0x3ee54 calls hubiio_crb_error_handler with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ee64 calls mutex_spinlock_spl with a0=?, a1=sym(splerr), a2=?, a3=?.
  The `jal` at 0x3efc8 calls us_delay with a0=0x190, a1=entry(0x9200000001c00220), a2=?, a3=-0x1, a5=0x9200000001c00000, a6=0x9200000001e00000.
  The `jal` at 0x3eff4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock_spl), a2=[[a0+8]:8]:8, a3=0xffffffffffefffff.
  The `jal` at 0x3f000 calls bte_free_interfaces with a0=[a0+8]:8, a1=[[a0+8]:8+76], a2=?, a3=?.
  The `jal` at 0x3f00c calls nested_spinunlock with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3f05c calls nested_spintrylock with a0=[[a0+8]:8+88]:8, a1=?, a2=[a0+8]:8, a3=?.
  The `jal` at 0x3f070 calls nested_spintrylock with a0=[a0+8]:8+60, a1=?, a2=?, a3=?.
  The `jal` at 0x3f084 calls nested_spinunlock with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3f094 calls splx with a0=[a1], a1=?, a2=?, a3=?.
  The `jal` at 0x3f09c calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3f0a4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3f0b4 calls nested_spintrylock with a0=[a0+8]:8+60, a1=?, a2=?, a3=?.
  The `jal` at 0x3f0dc calls splx with a0=[a1], a1=?, a2=?, a3=?.
  The `jal` at 0x3f0e4 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3f0ec calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3f0fc calls nested_spintrylock with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3f13c calls cmn_err with a0=0xc, a1=sym(.rodata)+65336, a2=[a0+16]:2, a3=0x2, a4=0x3.
  The `beq` branch at 0x3edc0 targets 0x3f05c, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3edd4 targets 0x3ee0c, is taken when v0(=ret(bte_get_all_interfaces)) == 0, and falls through when v0(=ret(bte_get_all_interfaces)) != 0.
  The `bne` branch at 0x3ee9c targets 0x3ee80, is taken when a0(?) < 0x2 (signed), and falls through when a0(?) >= 0x2 (signed).
  The `beq` branch at 0x3eec0 targets 0x3f0cc, is taken when a3(=[[a0+8]:8+76]) == 0, and falls through when a3(=[[a0+8]:8+76]) != 0.
  The `beq` branch at 0x3ef28 targets 0x3ef58, is taken when a1(=entry(0x9200000001c00220)) == 0, and falls through when a1(=entry(0x9200000001c00220)) != 0.
  The `beq` branch at 0x3ef60 targets 0x3efb4, is taken when a4(=entry(0x9200000001e04040)) == 0, and falls through when a4(=entry(0x9200000001e04040)) != 0.
  The `beq` branch at 0x3f020 targets 0x3f114, is taken when a2(=[a0+16]:2) == a1(=0x1), and falls through when a2(=[a0+16]:2) != a1(=0x1).
  The `beq` branch at 0x3f02c targets 0x3f11c, is taken when a2(=[a0+16]:2) == a3(=0x2), and falls through when a2(=[a0+16]:2) != a3(=0x2).
  The `beq` branch at 0x3f034 targets 0x3f124, is taken when a2(=[a0+16]:2) == a4(=0x3), and falls through when a2(=[a0+16]:2) != a4(=0x3).
  The `beq` branch at 0x3f03c targets 0x3f12c, is taken when a2(=[a0+16]:2) == v0(=0x6), and falls through when a2(=[a0+16]:2) != v0(=0x6).
  The `beq` branch at 0x3f044 targets 0x3f134, is taken when a2(=[a0+16]:2) == a0(=0x7), and falls through when a2(=[a0+16]:2) != a0(=0x7).
  The `bne` branch at 0x3f04c targets 0x3f13c, is taken when a2(=[a0+16]:2) != 0, and falls through when a2(=[a0+16]:2) == 0.
  The `beq` branch at 0x3f054 targets 0x3edf8 and is always taken.
  The `beq` branch at 0x3f064 targets 0x3f0dc, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3f078 targets 0x3f094, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3f08c targets 0x3edf8 and is always taken.
  The `beq` branch at 0x3f0bc targets 0x3f094, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3f0c4 targets 0x3f084 and is always taken.
  The `beq` branch at 0x3f0d4 targets 0x3eed0 and is always taken.
  The `beq` branch at 0x3f104 targets 0x3f0dc, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3f10c targets 0x3f070 and is always taken.
  The `beq` branch at 0x3f114 targets 0x3edf8 and is always taken.
  The `beq` branch at 0x3f11c targets 0x3edf8 and is always taken.
  The `beq` branch at 0x3f124 targets 0x3edf8 and is always taken.
  The `beq` branch at 0x3f12c targets 0x3edf8 and is always taken.
  The `beq` branch at 0x3f134 targets 0x3edf8 and is always taken.
  The `beq` branch at 0x3f144 targets 0x3edf8 and is always taken.
  The return at 0x3ee04 has v0 = one of 0x6, 0x7, 0x2, 0x3, 0x4, 0x5.
- `bte_crb_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f14c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3f14c-0x3f29c (336 bytes).
  It occupies 336 bytes.
  The `ld` at 0x3f180 loads 8 bytes from ?.
  The `ld` at 0x3f198 loads 8 bytes from table(0x8ef8) +0x0.
  The `lh` at 0x3f19c loads 2 bytes from a3 (arg3 at entry) +0x4.
  The `sh` at 0x3f1a0 stores 2 bytes to entry(0x8ef8) +0x30.
  The `lh` at 0x3f1a8 loads 2 bytes from ?.
  The `ld` at 0x3f1c0 loads 8 bytes from entry(0x8ef8) +0x18.
  The `ld` at 0x3f1d8 loads 8 bytes from table(0x9200000001c00400) +0x0.
  The `sd` at 0x3f200 stores 8 bytes to table(0x9200000001c00400) +0x0.
  The `sd` at 0x3f208 stores 8 bytes to table(0x9200000001c003b0) +0x0.
  6 such `ld` accesses load 8 bytes from table(0x9200000001c003b0) +0x0, including `ld` at 0x3f20c, `ld` at 0x3f21c, `ld` at 0x3f22c.
  The `ld` at 0x3f278 loads 8 bytes from entry(0x8ef8) +0x20.
  The `sd` at 0x3f28c stores 8 bytes to [entry(0x8ef8)+32]:8 +0x0.
  The `jal` at 0x3f174 calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+65336, a2=sp-64, a3=a3 at entry (arg3).
  The `jal` at 0x3f270 calls us_delay with a0=0xa, a1=table(0x9200000001c00000), a2=(entry(0x9200000001c003b0) << 0x2f), a3=(a2 | 0x10800), a5=table(0x9200000001c00000), a6=0xff0fffffffffffff.
  The `bgez` branch at 0x3f214 targets 0x3f270, is taken when a2(=(entry(0x9200000001c003b0) << 0x2f)) >= 0 (signed), and falls through when a2(=(entry(0x9200000001c003b0) << 0x2f)) < 0 (signed).
  The `beq` branch at 0x3f224 targets 0x3f26c, is taken when (s0(=0x10000) & a7(=entry(0x9200000001c003b0))) == 0, and falls through when (s0(=0x10000) & a7(=entry(0x9200000001c003b0))) != 0.
  The `beq` branch at 0x3f234 targets 0x3f26c, is taken when (s0(=0x10000) & t0(=entry(0x9200000001c003b0))) == 0, and falls through when (s0(=0x10000) & t0(=entry(0x9200000001c003b0))) != 0.
  The `beq` branch at 0x3f244 targets 0x3f26c, is taken when (s0(=0x10000) & t1(=entry(0x9200000001c003b0))) == 0, and falls through when (s0(=0x10000) & t1(=entry(0x9200000001c003b0))) != 0.
  The `beq` branch at 0x3f254 targets 0x3f26c, is taken when (s0(=0x10000) & t2(=entry(0x9200000001c003b0))) == 0, and falls through when (s0(=0x10000) & t2(=entry(0x9200000001c003b0))) != 0.
  The `bne` branch at 0x3f264 targets 0x3f21c, is taken when (s0(=0x10000) & t3(=entry(0x9200000001c003b0))) != 0, and falls through when (s0(=0x10000) & t3(=entry(0x9200000001c003b0))) == 0.
  The `beq` branch at 0x3f284 targets 0x3f290, is taken when a1(=[entry(0x8ef8)+32]:8) == 0, and falls through when a1(=[entry(0x8ef8)+32]:8) != 0.
  The return at 0x3f294 has v0 = ret(us_delay).
- `sn1_sc_versioncheck` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41138 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41138-0x41330 (504 bytes).
  It occupies 504 bytes.
  The `ld` at 0x41240 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lw` at 0x41244 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x484.
  2 such `lh` accesses load 2 bytes from ret(cnodemodule_lookup) +0x0, including `lh` at 0x41298, `lh` at 0x412d8.
  The `jal` at 0x41190 calls cnodemodule_lookup with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x411a4 calls sc_version with a0=ret(cnodemodule_lookup)+40, a1=sp-112, a2=sp-108, a3=sp-104.
  The `jal` at 0x41220 calls cnode_slice_to_cpuid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x41288 calls cnodemodule_lookup with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4129c calls cmn_err with a0=0x1, a1=sym(.rodata)+65600, a2=[ret(cnodemodule_lookup)]:2, a3=ret(sc_version).
  The `jal` at 0x412b0 calls sprintf with a0=sp-96, a1=sym(.rodata)+65600, a2=?, a3=?.
  The `jal` at 0x412b8 calls cnodemodule_lookup with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x412dc calls cmn_err with a0=0x1, a1=sym(.rodata)+65600, a2=0x1, a3=0x3, a4=0x14, a5=[ret(cnodemodule_lookup)]:2, a6=sp-96.
  The `jal` at 0x412f8 calls cmn_err with a0=0x1, a1=sym(.rodata)+65600, a2=0x1, a3=0x3, a4=0x14.
  The `jal` at 0x41308 calls cmn_err with a0=0x1, a1=sym(.rodata)+65600, a2=?, a3=?.
  The `jal` at 0x41314 calls us_delay with a0=0x4c4b40, a1=?, a2=?, a3=?.
  The `jal` at 0x41320 calls mdboot with a0=0x0, a1=0x0, a2=?, a3=?.
  The `blez` branch at 0x41164 targets 0x4125c, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `beq` branch at 0x41180 targets 0x41208 and is always taken.
  The `beq` branch at 0x41188 targets 0x411f0, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bltz` branch at 0x411b0 targets 0x41288, is taken when v0(=ret(sc_version)) < 0 (signed), and falls through when v0(=ret(sc_version)) >= 0 (signed).
  The `bne` branch at 0x411e8 targets 0x412ac, is taken when t8(?) < s6(=0xf4e0c) (signed), and falls through when t8(?) >= s6(=0xf4e0c) (signed).
  The `beq` branch at 0x41204 targets 0x4125c, is taken when s1(?) >= t9(=[sym(numnodes)]) (signed), and falls through when s1(?) < t9(=[sym(numnodes)]) (signed).
  The `beq` branch at 0x4120c targets 0x4121c and is always taken.
  The `beq` branch at 0x41218 targets 0x41188, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x41228 targets 0x41214, is taken when v0(=ret(cnode_slice_to_cpuid)) == s2(=-0x1), and falls through when v0(=ret(cnode_slice_to_cpuid)) != s2(=-0x1).
  The `bne` branch at 0x4124c targets 0x41218, is taken when s4(=0xf) != t9(?), and falls through when s4(=0xf) == t9(?).
  The `beq` branch at 0x41254 targets 0x41214 and is always taken.
  The `beq` branch at 0x412a4 targets 0x411f4 and is always taken.
  The `beq` branch at 0x41328 targets 0x411f4 and is always taken.
  The return at 0x41280 has v0 = ?.
- `io_perf_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41eb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41eb0-0x41f94 (228 bytes).
  It occupies 228 bytes.
  The `sh` at 0x41f00 stores 2 bytes to sym(.bss) +0xee8c.
  The `sw` at 0x41f08 stores 4 bytes to sym(.bss) +0xeea4.
  The `sh` at 0x41f14 stores 2 bytes to sym(.bss) +0xee8a.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x41f18, `ld` at 0x41f74.
  The `ld` at 0x41f1c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x41f2c loads 8 bytes from ?.
  The `lh` at 0x41f38 loads 2 bytes from ?.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x41f40, `sh` at 0x41f48, `sh` at 0x41f58.
  The `sw` at 0x41f54 stores 4 bytes to ?.
  The `jal` at 0x41ebc calls spinlock_init with a0=sym(iop_lock), a1=sym(.rodata)+65872, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x41ee4 calls init_mutex with a0=sym(global_iop_mon), a1=0x0, a2=sym(.rodata)+65872, a3=0x0.
  The `jal` at 0x41f5c calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata)+65872, a3=?.
  The `jal` at 0x41f80 calls io_perf_init_lfsr with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x41f10 targets 0x41f78, is taken when a1(=[sym(maxnodes)]) <= 0 (signed), and falls through when a1(=[sym(maxnodes)]) > 0 (signed).
  The `bnel` branch at 0x41f70 targets 0x41f1c, is taken when s0(?) < a5(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a5(=[sym(maxnodes)]) (signed); its branch-likely delay slot `ld a4,-15360(zero)` at 0x41f74 runs only when taken and is annulled on fall-through.
  The return at 0x41f8c has v0 = ret(io_perf_init_lfsr).
- `io_perf_init_lfsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41f94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41f94-0x42044 (176 bytes).
  It occupies 176 bytes.
  The `lh` at 0x41f94 loads 2 bytes from abs 0xffffffffffffc42a.
  The `sw` at 0x42004 stores 4 bytes to ?.
  The `jal` at 0x41fa4 calls kmem_alloc_node with a0=0x400000, a1=0x1, a2=[-0x3bd6]:2, a3=a3 at entry (arg3).
  The `jal` at 0x42024 calls printf with a0=sym(.rodata)+65872, a1=0x400000, a2=?, a3=?, a5=0x80000, a6=0xf0000.
  The `beq` branch at 0x41fb8 targets 0x4201c, is taken when v0(=ret(kmem_alloc_node)) == 0, and falls through when v0(=ret(kmem_alloc_node)) != 0.
  The `beq` branch at 0x41fc4 targets 0x42034 and is always taken.
  The `bne` branch at 0x41fdc targets 0x42010, is taken when a4(=0xffffe) < a0(?) (signed), and falls through when a4(=0xffffe) >= a0(?) (signed).
  The `bne` branch at 0x42000 targets 0x41fcc, is taken when (v1(?) & 0x1) != 0, and falls through when (v1(?) & 0x1) == 0.
  The `beq` branch at 0x42008 targets 0x41fd4 and is always taken.
  The `beq` branch at 0x4202c targets 0x42014 and is always taken.
  The `beq` branch at 0x4203c targets 0x41fe8 and is always taken.
  The return at 0x42014 has v0 = one of [sym(lfsr_table)]:8, ret(printf).
- `io_perf_turnon_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42044 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42044-0x422b8 (628 bytes).
  It occupies 628 bytes.
  The `ld` at 0x42080 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x42084 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x42090 loads 8 bytes from ((a1 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0x4209c loads 2 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x420a8, `lw` at 0x42140.
  4 such `lh` accesses load 2 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2, including `lh` at 0x42104, `lh` at 0x421d8, `lh` at 0x421f0.
  3 such `sh` accesses store 2 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca0, including `sh` at 0x42124, `sh` at 0x42158, `sh` at 0x42188.
  3 such `sh` accesses store 2 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2, including `sh` at 0x42130, `sh` at 0x421ec, `sh` at 0x42248.
  3 such `sh` accesses store 2 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca4, including `sh` at 0x42134, `sh` at 0x421bc, `sh` at 0x421cc.
  The `sw` at 0x4214c stores 4 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ec0.
  2 such `lh` accesses load 2 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca0, including `lh` at 0x42150, `lh` at 0x42180.
  The `lw` at 0x42220 loads 4 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8cbc.
  The `sw` at 0x42228 stores 4 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8cbc.
  The `ld` at 0x42264 loads 8 bytes from (sym(pdaindr) + ([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4)) +0x8.
  The `sb` at 0x42274 stores 1 byte to [(sym(pdaindr) + ([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4))+8]:8 +0x7b0.
  The `jal` at 0x420c0 calls printf with a0=sym(.rodata)+65872, a1=[a0], a2=a2 at entry (arg2), a3=?, a5=0xfffffffff800f800.
  The `jal` at 0x420fc calls mutex_lock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=0x19, a2=a2 at entry (arg2), a3=?, a5=0xfffffffff800f800.
  The `jal` at 0x42114 calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=0x200, a2=?, a3=?.
  The `jal` at 0x4212c calls bzero with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36032, a1=0x200, a2=?, a3=?.
  The `jal` at 0x421e8 calls mutex_spinlock with a0=sym(iop_lock), a1=?, a2=?, a3=?, a5=[a0].
  The `jal` at 0x42230 calls mutex_spinunlock with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=[sym(iop_mode)]:2, a3=?, a6=[sym(iop_cnt)]+1, a7=0x4.
  The `jal` at 0x42244 calls io_perf_start_count with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36000, a1=?, a2=?, a3=?, a6=([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2 | 0x1).
  The `jal` at 0x4224c calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=?.
  The `jal` at 0x42280 calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=0x1, a3=a2 at entry (arg2), a5=[a0].
  The `jal` at 0x42290 calls mutex_spinunlock with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=[sym(iop_mode)]:2, a3=?, a5=[sym(iop_cnt)], a6=[sym(iop_cnt)]+1, a7=0x4.
  The `jal` at 0x42298 calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=?.
  The `beq` branch at 0x42068 targets 0x420e4, is taken when a1 >= at(=[sym(maxnodes)]) (signed), and falls through when a1 < at(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x42070 targets 0x420e4, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x42078 targets 0x420e4, is taken when a1 == s1(=-0x1), and falls through when a1 != s1(=-0x1).
  The `beq` branch at 0x420a0 targets 0x42278, is taken when a0(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == s1(=-0x1), and falls through when a0(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != s1(=-0x1).
  The `beq` branch at 0x420b4 targets 0x420ec, is taken when (a1(=[a0]) & a5(=0xfffffffff800f800)) == 0, and falls through when (a1(=[a0]) & a5(=0xfffffffff800f800)) != 0.
  The `beq` branch at 0x420e4 targets 0x420d0 and is always taken.
  The `beq` branch at 0x4210c targets 0x42124, is taken when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) == 0, and falls through when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) != 0.
  The `beq` branch at 0x4211c targets 0x420cc and is always taken.
  The `beq` branch at 0x42148 targets 0x422a8 and is always taken.
  The `beq` branch at 0x42168 targets 0x421d0, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `beq` branch at 0x42170 targets 0x4218c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x42178 targets 0x421c0, is taken when a1(?) == s1(=-0x1), and falls through when a1(?) != s1(=-0x1).
  The `beq` branch at 0x42198 targets 0x421d0, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `beq` branch at 0x421a0 targets 0x4215c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x421a8 targets 0x42150, is taken when a1(?) != s1(=-0x1), and falls through when a1(?) == s1(=-0x1).
  The `beq` branch at 0x421b8 targets 0x4215c and is always taken.
  The `beq` branch at 0x421c8 targets 0x4218c and is always taken.
  The `beq` branch at 0x421d0 targets 0x42280, is taken when a1(?) == s1(=-0x1), and falls through when a1(?) != s1(=-0x1).
  The `beq` branch at 0x42208 targets 0x4222c, is taken when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) == 0, and falls through when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) != 0.
  The `beq` branch at 0x42210 targets 0x42290, is taken when a2(=[sym(iop_mode)]:2) == a1(=0x2), and falls through when a2(=[sym(iop_mode)]:2) != a1(=0x2).
  The `beq` branch at 0x42270 targets 0x420cc and is always taken.
  The `beq` branch at 0x42278 targets 0x420cc and is always taken.
  The `beq` branch at 0x42288 targets 0x420cc and is always taken.
  The `beq` branch at 0x422a0 targets 0x420cc and is always taken.
  The `beq` branch at 0x422b0 targets 0x42170 and is always taken.
  The return at 0x420dc has v0 = one of 0x0, 0x10, 0x16.
- `io_perf_turnoff_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x422b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x422b8-0x4243c (388 bytes).
  It occupies 388 bytes.
  The `ld` at 0x422ec loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x422f0 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x422fc loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0x42308 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  3 such `lh` accesses load 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2, including `lh` at 0x42330, `lh` at 0x42354, `lh` at 0x423a4.
  The `lw` at 0x4238c loads 4 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8cbc.
  The `sw` at 0x42394 stores 4 bytes to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8cbc.
  The `sh` at 0x423b8 stores 2 bytes to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2.
  The `ld` at 0x423dc loads 8 bytes from (sym(pdaindr) + ([[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4)) +0x8.
  The `sb` at 0x423e4 stores 1 byte to [(sym(pdaindr) + ([[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4))+8]:8 +0x7b0.
  The `jal` at 0x42328 calls mutex_lock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=-0x1.
  The `jal` at 0x4234c calls mutex_spinlock with a0=sym(iop_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x4239c calls mutex_spinunlock with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[sym(iop_mode)]:2.
  The `jal` at 0x423b4 calls io_perf_stop_count with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36000, a1=?, a2=?, a3=?.
  The `jal` at 0x423bc calls io_perf_update_count with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36000, a1=?, a2=?, a3=?.
  The `jal` at 0x423c4 calls mutex_unlock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=?.
  The `jal` at 0x423fc calls mutex_unlock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=?.
  The `jal` at 0x42414 calls mutex_unlock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=?.
  The `jal` at 0x42424 calls mutex_spinunlock with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[sym(iop_mode)]:2, a5=[sym(iop_mode)]:2, a6=[sym(iop_cnt)]-1.
  The `jal` at 0x4242c calls mutex_unlock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=?.
  The `beq` branch at 0x422d4 targets 0x423e8, is taken when a0 >= at(=[sym(maxnodes)]) (signed), and falls through when a0 < at(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x422dc targets 0x423e8, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x422e4 targets 0x423e8, is taken when a0 == a4(=-0x1), and falls through when a0 != a4(=-0x1).
  The `beq` branch at 0x42310 targets 0x4240c, is taken when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == a4(=-0x1), and falls through when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != a4(=-0x1).
  The `beq` branch at 0x4233c targets 0x42414, is taken when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) == 0, and falls through when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) != 0.
  The `bne` branch at 0x42344 targets 0x423fc, is taken when a0(=a1) != v0(?), and falls through when a0(=a1) == v0(?).
  The `beq` branch at 0x42368 targets 0x42398, is taken when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) == 0, and falls through when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) != 0.
  The `beq` branch at 0x42374 targets 0x42424, is taken when a4(=[sym(iop_mode)]:2) == a0(=0x2), and falls through when a4(=[sym(iop_mode)]:2) != a0(=0x2).
  The `beq` branch at 0x42404 targets 0x423e8 and is always taken.
  The `beq` branch at 0x4240c targets 0x423e8 and is always taken.
  The `beq` branch at 0x4241c targets 0x423e8 and is always taken.
  The `beq` branch at 0x42434 targets 0x423e8 and is always taken.
  The return at 0x423f4 has v0 = one of 0x0, 0x10, 0x16.
- `io_perf_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4243c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4243c-0x42554 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xeea4, including `lw` at 0x42504, `lw` at 0x42524.
  The `sw` at 0x42514 stores 4 bytes to sym(.bss) +0xeea4.
  The `sw` at 0x42530 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x42450 calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4246c calls mutex_lock with a0=sym(global_iop_mon), a1=0x19, a2=?, a3=?.
  The `jal` at 0x42474 calls mutex_spinlock with a0=sym(iop_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x42488 calls mutex_spinunlock with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x42490 calls mutex_unlock with a0=sym(global_iop_mon), a1=?, a2=?, a3=?.
  The `jal` at 0x424b8 calls mutex_spinunlock with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x424dc calls io_perf_turnon_node with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=?.
  The `jal` at 0x42510 calls mutex_unlock with a0=sym(global_iop_mon), a1=?, a2=?, a3=?, a4=[sym(global_iop_mon+28)]+1, a5=sym(global_iop_mon).
  The `jal` at 0x4253c calls mutex_unlock with a0=sym(global_iop_mon), a1=?, a2=?, a3=?, a4=[sym(maxnodes)].
  The `jal` at 0x42544 calls io_perf_disable with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x42458 targets 0x42534, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `beq` branch at 0x42480 targets 0x424ac, is taken when t8(=[sym(iop_mode)]:2) == 0, and falls through when t8(=[sym(iop_mode)]:2) != 0.
  The `blez` branch at 0x424c4 targets 0x42500, is taken when ra(=[sym(maxnodes)]) <= 0 (signed), and falls through when ra(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x424e8 targets 0x4253c, is taken when v0(=ret(io_perf_turnon_node)) != 0, and falls through when v0(=ret(io_perf_turnon_node)) == 0.
  The `bne` branch at 0x424f8 targets 0x424d4, is taken when s0(?) < a4(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a4(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x4252c targets 0x4249c and is always taken.
  The `beq` branch at 0x42534 targets 0x4249c and is always taken.
  The `beq` branch at 0x4254c targets 0x4249c and is always taken.
  The return at 0x424a4 has v0 = one of 0x10, 0x0, 0x1, ret(io_perf_turnon_node).
- `io_perf_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42554 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42554-0x42644 (240 bytes).
  It occupies 240 bytes.
  The `lw` at 0x425fc loads 4 bytes from sym(.bss) +0xeea4.
  The `sw` at 0x4260c stores 4 bytes to sym(.bss) +0xeea4.
  The `jal` at 0x42560 calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4257c calls mutex_lock with a0=sym(global_iop_mon), a1=0x19, a2=?, a3=?.
  The `jal` at 0x42594 calls mutex_unlock with a0=sym(global_iop_mon), a1=?, a2=?, a3=?.
  The `jal` at 0x425b8 calls io_perf_turnoff_node with a0=?, a1=0x2, a2=?, a3=?.
  The `jal` at 0x425e0 calls mutex_spinlock with a0=sym(iop_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x425f0 calls mutex_spinunlock with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x42608 calls mutex_unlock with a0=sym(global_iop_mon), a1=?, a2=[sym(global_iop_mon+28)]+1, a3=sym(global_iop_mon).
  The `jal` at 0x42634 calls assfail with a0=sym(.rodata)+65872, a1=sym(.rodata)+65872, a2=0x1b8, a3=?.
  The `beq` branch at 0x42568 targets 0x42624, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `beq` branch at 0x4258c targets 0x425a4, is taken when t8(=[sym(iop_mode)]:2) == t9(=0x2), and falls through when t8(=[sym(iop_mode)]:2) != t9(=0x2).
  The `beq` branch at 0x4259c targets 0x42614 and is always taken.
  The `blez` branch at 0x425a4 targets 0x425dc, is taken when v0(=[sym(maxnodes)]) <= 0 (signed), and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x425c0 targets 0x4262c, is taken when v0(=ret(io_perf_turnoff_node)) != 0, and falls through when v0(=ret(io_perf_turnoff_node)) == 0.
  The `bne` branch at 0x425d4 targets 0x425b4, is taken when s0(?) < a1(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x42624 targets 0x42614 and is always taken.
  The `beq` branch at 0x4263c targets 0x425cc and is always taken.
  The return at 0x4261c has v0 = one of 0x0, 0x1, 0x16.
- `io_perf_node_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42644 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42644-0x426c8 (132 bytes).
  It occupies 132 bytes.
  The `ld` at 0x42688 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x4268c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x42698 loads 8 bytes from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0.
  The `lw` at 0x426a8 loads 4 bytes from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x8cbc.
  The `sw` at 0x426b4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x42664 calls io_perf_turnon_node with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x426b8 calls io_perf_enable with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4265c targets 0x426b8, is taken when a1 == at(=-0x1), and falls through when a1 != at(=-0x1).
  The `beq` branch at 0x4266c targets 0x42688, is taken when v0(=ret(io_perf_turnon_node)) == 0, and falls through when v0(=ret(io_perf_turnon_node)) != 0.
  The `beq` branch at 0x426b0 targets 0x42674 and is always taken.
  The `beq` branch at 0x426c0 targets 0x42674 and is always taken.
  The return at 0x42680 has v0 = one of ret(io_perf_turnon_node), 0x0, ret(io_perf_enable).
- `io_perf_node_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x426c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x426c8-0x42704 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x426d8 calls io_perf_turnoff_node with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x426f4 calls io_perf_disable with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x426d0 targets 0x426f4, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x426fc targets 0x426e4 and is always taken.
  The return at 0x426ec has v0 = one of ret(io_perf_turnoff_node), ret(io_perf_disable).
- `io_perf_get_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42704 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42704-0x427d0 (204 bytes).
  It occupies 204 bytes.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x4272c, `sw` at 0x427cc.
  The `ld` at 0x42764 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x42768 loads 8 bytes from [-0x3c00]:8 +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x42770, `ld` at 0x42788, `ld` at 0x42790.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x42798, `sd` at 0x427ac.
  The `lw` at 0x427c0 loads 4 bytes from sym(.bss) +0xeea4.
  The `jal` at 0x42740 calls bzero with a0=a0 at entry (arg0), a1=0x200, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x42724 targets 0x42740, is taken when at(=[sym(iop_mode)]:2) == v1(=0x2), and falls through when at(=[sym(iop_mode)]:2) != v1(=0x2).
  The `blez` branch at 0x42754 targets 0x427c0, is taken when a0(=[sym(maxnodes)]) <= 0 (signed), and falls through when a0(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x427a8 targets 0x42780, is taken when v0(?) < 0x20 (signed), and falls through when v0(?) >= 0x20 (signed).
  The `bne` branch at 0x427b8 targets 0x42764, is taken when a0(?) < t2(=[sym(maxnodes)]) (signed), and falls through when a0(?) >= t2(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x427c8 targets 0x42730 and is always taken.
  The return at 0x42738 has v0 = one of -0x1, 0x0.
- `io_perf_get_node_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x427d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x427d0-0x428f0 (288 bytes).
  It occupies 288 bytes.
  The `ld` at 0x4281c loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x42820 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x4282c loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x42850, `ld` at 0x4285c, `ld` at 0x42878.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x42858, `sd` at 0x42860, `sd` at 0x42880.
  The `lh` at 0x42890 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ca2.
  The `lw` at 0x428a0 loads 4 bytes from sym(.bss) +0xeea4.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x428a4, `sw` at 0x428d8.
  The `lw` at 0x428d0 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8cbc.
  The `jal` at 0x42814 calls bzero with a0=a1 at entry (arg1), a1=0x200, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=-0x1.
  The `jal` at 0x428e0 calls io_perf_get_count with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=-0x1.
  The `beq` branch at 0x427f8 targets 0x428dc, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x42804 targets 0x428c8, is taken when a0 >= v0(=[sym(maxnodes)]) (signed), and falls through when a0 < v0(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x4280c targets 0x428c8, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x42864 targets 0x42890, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `bne` branch at 0x42888 targets 0x42840, is taken when v0(?) < 0x20 (signed), and falls through when v0(?) >= 0x20 (signed).
  The `beq` branch at 0x4289c targets 0x428d0, is taken when t3(?) == t8(=0x4), and falls through when t3(?) != t8(=0x4).
  The `beq` branch at 0x428c8 targets 0x428b0 and is always taken.
  The `beq` branch at 0x428d4 targets 0x428a8 and is always taken.
  The `beq` branch at 0x428e8 targets 0x428ac and is always taken.
  The return at 0x428c0 has v0 = one of ?, -0x1.
- `io_perf_get_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x428f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x428f0-0x4296c (124 bytes).
  It occupies 124 bytes.
  The `lh` at 0x4291c loads 2 bytes from sym(.bss) +0xee8a.
  The `lw` at 0x42930 loads 4 bytes from sym(.bss) +0xf0a8.
  The `sw` at 0x42934 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x42938 loads 4 bytes from sym(.bss) +0xeea4.
  The `sw` at 0x4293c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x42910 calls mutex_lock with a0=sym(global_iop_mon), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x42940 calls mutex_unlock with a0=sym(global_iop_mon), a1=?, a2=?, a3=?.
  The `jal` at 0x4295c calls mutex_unlock with a0=sym(global_iop_mon), a1=?, a2=?, a3=?.
  The `beq` branch at 0x42924 targets 0x4295c, is taken when (t8(=[sym(global_iop_mon+2)]:2) & 0x1) == 0, and falls through when (t8(=[sym(global_iop_mon+2)]:2) & 0x1) != 0.
  The `beq` branch at 0x42964 targets 0x4294c and is always taken.
  The return at 0x42954 has v0 = one of 0x0, 0x16.
- `io_perf_get_node_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4296c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4296c-0x42a70 (260 bytes).
  It occupies 260 bytes.
  The `ld` at 0x429b0 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x429b4 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x429c0 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  2 such `lh` accesses load 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ca2, including `lh` at 0x429dc, `lh` at 0x429f8.
  The `lw` at 0x429f0 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ec0.
  The `sw` at 0x429f4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x42a08 loads 4 bytes from sym(.bss) +0xeea4.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x42a0c, `sw` at 0x42a48.
  The `lw` at 0x42a40 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8cbc.
  The `jal` at 0x429d4 calls mutex_lock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36008, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16.
  The `jal` at 0x42a10 calls mutex_unlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36008, a1=[sym(global_iop_mon+28)], a2=?, a3=?.
  The `jal` at 0x42a50 calls io_perf_get_ctrl with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16.
  The `jal` at 0x42a60 calls mutex_unlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36008, a1=?, a2=?, a3=?.
  The `beq` branch at 0x42994 targets 0x42a4c, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x429a0 targets 0x42a38, is taken when a0 >= v0(=[sym(maxnodes)]) (signed), and falls through when a0 < v0(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x429a8 targets 0x42a38, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x429e8 targets 0x42a60, is taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) == 0, and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) != 0.
  The `beq` branch at 0x42a04 targets 0x42a40, is taken when t9(?) == ra(=0x4), and falls through when t9(?) != ra(=0x4).
  The `beq` branch at 0x42a38 targets 0x42a20 and is always taken.
  The `beq` branch at 0x42a44 targets 0x42a10 and is always taken.
  The `beq` branch at 0x42a58 targets 0x42a1c and is always taken.
  The `beq` branch at 0x42a68 targets 0x42a1c and is always taken.
  The return at 0x42a30 has v0 = one of ?, 0x16.
- `io_perf_start_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42a70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42a70-0x42ad0 (96 bytes).
  It occupies 96 bytes.
  The `lh` at 0x42a70 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `lh` at 0x42a74 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `ld` at 0x42a9c loads 8 bytes from ([a0+26]:2 << 0x21) -0x6dfffffffe3d0000.
  The `ld` at 0x42ac4 loads 8 bytes from ([a0+26]:2 << 0x21) -0x6dfffffffe3cfff8.
  The `sd` at 0x42acc stores 8 bytes to ([a0+26]:2 << 0x21) -0x6dfffffffe3d0000.
  The `beq` branch at 0x42a98 targets 0x42ab4, is taken when a6(=[a0+4]:2) >= 0x10 (signed), and falls through when a6(=[a0+4]:2) < 0x10 (signed).
  The `beq` branch at 0x42aac targets 0x42ac4 and is always taken.
  The return at 0x42ac8 has v0 = ?.
- `io_perf_stop_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42ad0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42ad0-0x42af0 (32 bytes).
  It occupies 32 bytes.
  The `lh` at 0x42ad0 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `ld` at 0x42ae0 loads 8 bytes from ([a0+26]:2 << 0x21) -0x6dfffffffe3d0000.
  The `sd` at 0x42aec stores 8 bytes to ([a0+26]:2 << 0x21) -0x6dfffffffe3d0000.
  The return at 0x42ae8 has v0 = ([a0+26]:2 << 0x21)+0x9200000001c30000.
- `io_perf_update_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42af0-0x42b60 (112 bytes).
  It occupies 112 bytes.
  The `lh` at 0x42b00 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x4, including `lh` at 0x42b08, `lh` at 0x42b40.
  The `ld` at 0x42b14 loads 8 bytes from ([a0+26]:2 << 0x21) -0x6dfffffffe3cfff8.
  The `ld` at 0x42b2c loads 8 bytes from (a0 + ([a0+4]:2 << 0x3)) +0x20.
  The `lwu` at 0x42b34 loads 4 bytes from ?.
  The `sd` at 0x42b3c stores 8 bytes to (a0 + ([a0+4]:2 << 0x3)) +0x20.
  The `sd` at 0x42b50 stores 8 bytes to (a0 + ([a0+4]:2 << 0x3)) +0x120.
  The `beq` branch at 0x42af8 targets 0x42b58, is taken when a3(=[sym(lfsr_table)]:8) == 0, and falls through when a3(=[sym(lfsr_table)]:8) != 0.
  The return at 0x42b58 has v0 = one of -0x1, 0x0.
- `io_perf_multiplex` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42b60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42b60-0x42c34 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x42b68 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x42b6c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x42b78 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lh` at 0x42b98 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ca2.
  The `lh` at 0x42bac loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ca0.
  The `lh` at 0x42bb8 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ca4.
  The `lw` at 0x42bbc loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ec0.
  The `sh` at 0x42c18 stores 2 bytes to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ca4.
  The `jal` at 0x42b88 calls io_perf_stop_count with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x42b90 calls io_perf_update_count with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000, a1=?, a2=?, a3=?.
  The `jal` at 0x42c1c calls io_perf_start_count with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000, a1=?, a2=?, a3=?, a6=0x1, a7=0x1f.
  The `beq` branch at 0x42ba4 targets 0x42c24, is taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) == 0, and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) != 0.
  The `beq` branch at 0x42bb0 targets 0x42c1c, is taken when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000]:2) == 0, and falls through when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000]:2) != 0.
  The `bne` branch at 0x42be4 targets 0x42c18, is taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & ra(?)) != 0, and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & ra(?)) == 0.
  The `beq` branch at 0x42bec targets 0x42c18, is taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) == a0(?), and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) != a0(?).
  The `bne` branch at 0x42c08 targets 0x42c18, is taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & v0(?)) != 0, and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & v0(?)) == 0.
  The `bne` branch at 0x42c10 targets 0x42bc8, is taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) != a0(?), and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) == a0(?).
  The return at 0x42c2c has v0 = one of ret(io_perf_update_count), ret(io_perf_start_count).
- `md_perf_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42c34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42c34-0x42d14 (224 bytes).
  It occupies 224 bytes.
  The `sh` at 0x42c84 stores 2 bytes to sym(.bss) +0xf0b4.
  The `sw` at 0x42c8c stores 4 bytes to sym(.bss) +0xf0cc.
  The `sh` at 0x42c98 stores 2 bytes to sym(.bss) +0xf0b2.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x42c9c, `ld` at 0x42cf8.
  The `ld` at 0x42ca0 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x42cb0 loads 8 bytes from ?.
  The `lh` at 0x42cbc loads 2 bytes from ?.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x42cc4, `sh` at 0x42cd8, `sh` at 0x42cdc.
  The `sw` at 0x42ccc stores 4 bytes to ?.
  The `jal` at 0x42c40 calls spinlock_init with a0=sym(mdp_lock), a1=sym(.rodata)+66048, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x42c68 calls init_mutex with a0=sym(global_mdp_mon), a1=0x0, a2=sym(.rodata)+66048, a3=0x0.
  The `jal` at 0x42ce0 calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata)+66048, a3=?.
  The `blez` branch at 0x42c94 targets 0x42cfc, is taken when a1(=[sym(maxnodes)]) <= 0 (signed), and falls through when a1(=[sym(maxnodes)]) > 0 (signed).
  The `bnel` branch at 0x42cf4 targets 0x42ca0, is taken when s0(?) < a5(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a5(=[sym(maxnodes)]) (signed); its branch-likely delay slot `ld a4,-15360(zero)` at 0x42cf8 runs only when taken and is annulled on fall-through.
  The return at 0x42d0c has v0 = ret(init_mutex).
- `md_perf_turnon_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42d14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42d14-0x42f74 (608 bytes).
  It occupies 608 bytes.
  The `ld` at 0x42d4c loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x42d50 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x42d5c loads 8 bytes from ((a1 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0x42d68 loads 2 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  4 such `lh` accesses load 2 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652, including `lh` at 0x42d98, `lh` at 0x42e44, `lh` at 0x42e5c.
  2 such `sh` accesses store 2 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8650, including `sh` at 0x42dcc, `sh` at 0x42e04.
  3 such `sh` accesses store 2 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652, including `sh` at 0x42dd8, `sh` at 0x42e58, `sh` at 0x42f04.
  2 such `sh` accesses store 2 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8654, including `sh` at 0x42de0, `sh` at 0x42e38.
  The `lw` at 0x42dec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x42df8 stores 4 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x87c0.
  The `lh` at 0x42dfc loads 2 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8650.
  The `lw` at 0x42e8c loads 4 bytes from [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x866c.
  The `sw` at 0x42e94 stores 4 bytes to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x866c.
  The `ld` at 0x42edc loads 8 bytes from ?.
  The `sd` at 0x42ee8 stores 8 bytes to ?.
  The `ld` at 0x42f20 loads 8 bytes from (sym(pdaindr) + ([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4)) +0x8.
  The `sb` at 0x42f30 stores 1 byte to [(sym(pdaindr) + ([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4))+8]:8 +0x52a.
  The `jal` at 0x42d90 calls mutex_lock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8, a6=[[-0x3c00]:8]:8.
  The `jal` at 0x42da8 calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=0x150, a2=?, a3=?.
  The `jal` at 0x42dd4 calls bzero with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34416, a1=0x150, a2=?, a3=?.
  The `jal` at 0x42e54 calls mutex_spinlock with a0=sym(mdp_lock), a1=?, a2=?, a3=?, a5=[a0], a6=0x1.
  The `jal` at 0x42e9c calls mutex_spinunlock with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=[sym(mdp_mode)]:2, a3=?, a5=[sym(mdp_cnt)]+1, a6=0x4.
  The `jal` at 0x42f00 calls md_perf_start_count with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34384, a1=0x7fffffffffffffff, a2=?, a3=?, a5=([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2 | 0x1).
  The `jal` at 0x42f08 calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=?.
  The `jal` at 0x42f3c calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=a2 at entry (arg2), a5=[a0], a6=0x1.
  The `jal` at 0x42f4c calls mutex_spinunlock with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=[sym(mdp_mode)]:2, a3=?, a5=[sym(mdp_cnt)]+1, a6=0x4.
  The `jal` at 0x42f54 calls mutex_unlock with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=?.
  The `beq` branch at 0x42d34 targets 0x42db4, is taken when a1 >= at(=[sym(maxnodes)]) (signed), and falls through when a1 < at(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x42d3c targets 0x42db4, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x42d44 targets 0x42db4, is taken when a1 == s1(=-0x1), and falls through when a1 != s1(=-0x1).
  The `beq` branch at 0x42d78 targets 0x42f34, is taken when v1(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == s1(=-0x1), and falls through when v1(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != s1(=-0x1).
  The `beq` branch at 0x42da0 targets 0x42dcc, is taken when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) == 0, and falls through when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) != 0.
  The `beq` branch at 0x42df4 targets 0x42f64 and is always taken.
  The `beq` branch at 0x42e14 targets 0x42e3c, is taken when v0(?) >= 0x6 (signed), and falls through when v0(?) < 0x6 (signed).
  The `beq` branch at 0x42e1c targets 0x42e08, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x42e24 targets 0x42dfc, is taken when a1(?) != s1(=-0x1), and falls through when a1(?) == s1(=-0x1).
  The `beq` branch at 0x42e34 targets 0x42e08 and is always taken.
  The `beq` branch at 0x42e3c targets 0x42f3c, is taken when a1(?) == s1(=-0x1), and falls through when a1(?) != s1(=-0x1).
  The `beq` branch at 0x42e74 targets 0x42e98, is taken when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) == 0, and falls through when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) != 0.
  The `beq` branch at 0x42e7c targets 0x42f4c, is taken when a2(=[sym(mdp_mode)]:2) == a1(=0x2), and falls through when a2(=[sym(mdp_mode)]:2) != a1(=0x2).
  The `bne` branch at 0x42ee4 targets 0x42ec8, is taken when v0(?) < 0x6 (signed), and falls through when v0(?) >= 0x6 (signed).
  The `bne` branch at 0x42eec targets 0x42eb4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x42f2c targets 0x42db4 and is always taken.
  The `beq` branch at 0x42f34 targets 0x42db8 and is always taken.
  The `beq` branch at 0x42f44 targets 0x42db4 and is always taken.
  The `beq` branch at 0x42f5c targets 0x42db4 and is always taken.
  The `beq` branch at 0x42f6c targets 0x42e1c and is always taken.
  The return at 0x42dc4 has v0 = one of 0x0, 0x10, 0x16.
- `md_perf_turnoff_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42f74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42f74-0x430cc (344 bytes).
  It occupies 344 bytes.
  The `ld` at 0x42fa4 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x42fa8 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x42fb4 loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0x42fc0 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  3 such `lh` accesses load 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652, including `lh` at 0x42fe8, `lh` at 0x4300c, `lh` at 0x43050.
  The `lw` at 0x4303c loads 4 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x866c.
  The `sw` at 0x43044 stores 4 bytes to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x866c.
  The `sh` at 0x43064 stores 2 bytes to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652.
  The `ld` at 0x43088 loads 8 bytes from (sym(pdaindr) + ([[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4)) +0x8.
  The `sb` at 0x43090 stores 1 byte to [(sym(pdaindr) + ([[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2 << 0x4))+8]:8 +0x52a.
  The `jal` at 0x42fe0 calls mutex_lock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=-0x1.
  The `jal` at 0x43004 calls mutex_spinlock with a0=sym(mdp_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x43048 calls mutex_spinunlock with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[sym(mdp_cnt)], a5=[sym(mdp_mode)]:2.
  The `jal` at 0x43060 calls md_perf_stop_count with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34384, a1=?, a2=?, a3=?.
  The `jal` at 0x43068 calls md_perf_update_count with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34384, a1=?, a2=?, a3=?.
  The `jal` at 0x43070 calls mutex_unlock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=?.
  The `jal` at 0x430a4 calls mutex_unlock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=?.
  The `jal` at 0x430bc calls mutex_unlock with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=?.
  The `beq` branch at 0x42f8c targets 0x43094, is taken when a0 >= at(=[sym(maxnodes)]) (signed), and falls through when a0 < at(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x42f94 targets 0x43094, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x42f9c targets 0x43094, is taken when a0 == a4(=-0x1), and falls through when a0 != a4(=-0x1).
  The `beq` branch at 0x42fc8 targets 0x430b4, is taken when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == a4(=-0x1), and falls through when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != a4(=-0x1).
  The `beq` branch at 0x42ff4 targets 0x430bc, is taken when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) == 0, and falls through when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) != 0.
  The `bne` branch at 0x42ffc targets 0x430a4, is taken when a0(=a1) != v0(?), and falls through when a0(=a1) == v0(?).
  The `beq` branch at 0x43020 targets 0x43048, is taken when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) == 0, and falls through when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) != 0.
  The `beq` branch at 0x430ac targets 0x43094 and is always taken.
  The `beq` branch at 0x430b4 targets 0x43094 and is always taken.
  The `beq` branch at 0x430c4 targets 0x43094 and is always taken.
  The return at 0x4309c has v0 = one of -0x1, 0x0, 0x16.
- `md_perf_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x430cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x430cc-0x43200 (308 bytes).
  It occupies 308 bytes.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xf0cc, including `lw` at 0x4319c, `lw` at 0x431d0.
  The `lh` at 0x431a0 loads 2 bytes from sym(.bss) +0xf0b2.
  The `sw` at 0x431a8 stores 4 bytes to sym(.bss) +0xf0cc.
  The `lw` at 0x431ac loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x431b4 stores 2 bytes to sym(.bss) +0xf0b2.
  The `sw` at 0x431c0 stores 4 bytes to sym(.bss) +0xf220.
  The `sw` at 0x431dc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x430e4 calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x43100 calls mutex_lock with a0=sym(global_mdp_mon), a1=0x19, a2=?, a3=?.
  The `jal` at 0x43108 calls mutex_spinlock with a0=sym(mdp_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x4311c calls mutex_spinunlock with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x43124 calls mutex_unlock with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?.
  The `jal` at 0x43150 calls mutex_spinunlock with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x43174 calls md_perf_turnon_node with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=?.
  The `jal` at 0x431bc calls mutex_unlock with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?, a4=[a0], a5=sym(global_mdp_mon), a6=([sym(global_mdp_mon+2)]:2 | 0x1), a7=[sym(global_mdp_mon+28)]+1.
  The `jal` at 0x431e8 calls mutex_unlock with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?.
  The `jal` at 0x431f0 calls md_perf_disable with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x430ec targets 0x431e0, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `beq` branch at 0x43114 targets 0x43144, is taken when t8(=[sym(mdp_mode)]:2) == 0, and falls through when t8(=[sym(mdp_mode)]:2) != 0.
  The `blez` branch at 0x4315c targets 0x43198, is taken when ra(=[sym(maxnodes)]) <= 0 (signed), and falls through when ra(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x43180 targets 0x431e8, is taken when v0(=ret(md_perf_turnon_node)) != 0, and falls through when v0(=ret(md_perf_turnon_node)) == 0.
  The `bne` branch at 0x43190 targets 0x4316c, is taken when s0(?) < a0(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a0(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x431d8 targets 0x43130 and is always taken.
  The `beq` branch at 0x431e0 targets 0x43130 and is always taken.
  The `beq` branch at 0x431f8 targets 0x43130 and is always taken.
  The return at 0x4313c has v0 = one of 0x10, 0x0, 0x1, ret(md_perf_turnon_node).
- `md_perf_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43200 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43200-0x43304 (260 bytes).
  It occupies 260 bytes.
  The `lh` at 0x43298 loads 2 bytes from sym(.bss) +0xf0b2.
  The `sh` at 0x432b0 stores 2 bytes to sym(.bss) +0xf0b2.
  The `lw` at 0x432b8 loads 4 bytes from sym(.bss) +0xf0cc.
  The `sw` at 0x432c8 stores 4 bytes to sym(.bss) +0xf0cc.
  The `jal` at 0x4320c calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x43228 calls mutex_lock with a0=sym(global_mdp_mon), a1=0x19, a2=?, a3=?.
  The `jal` at 0x43240 calls mutex_unlock with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?.
  The `jal` at 0x43264 calls md_perf_turnoff_node with a0=?, a1=0x2, a2=?, a3=?.
  The `jal` at 0x43288 calls mutex_spinlock with a0=sym(mdp_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x432ac calls mutex_spinunlock with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=sym(global_mdp_mon), a4=-0x2.
  The `jal` at 0x432c4 calls mutex_unlock with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?, a5=[sym(global_mdp_mon+28)]+1, a6=sym(global_mdp_mon).
  The `jal` at 0x432f4 calls assfail with a0=sym(.rodata)+66048, a1=sym(.rodata)+66048, a2=0x178, a3=?.
  The `beq` branch at 0x43214 targets 0x432e0, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `beq` branch at 0x43238 targets 0x43250, is taken when t8(=[sym(mdp_mode)]:2) == t9(=0x2), and falls through when t8(=[sym(mdp_mode)]:2) != t9(=0x2).
  The `beq` branch at 0x43248 targets 0x432d0 and is always taken.
  The `blez` branch at 0x43250 targets 0x43284, is taken when v0(=[sym(maxnodes)]) <= 0 (signed), and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x4326c targets 0x432e8, is taken when v0(=ret(md_perf_turnoff_node)) != 0, and falls through when v0(=ret(md_perf_turnoff_node)) == 0.
  The `bne` branch at 0x4327c targets 0x43260, is taken when s0(?) < a1(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x432e0 targets 0x432d0 and is always taken.
  The `beq` branch at 0x432fc targets 0x43274 and is always taken.
  The return at 0x432d8 has v0 = one of 0x0, 0x1, 0x16.
- `md_perf_node_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43304 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43304-0x43388 (132 bytes).
  It occupies 132 bytes.
  The `ld` at 0x43348 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x4334c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x43358 loads 8 bytes from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0.
  The `lw` at 0x43368 loads 4 bytes from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x866c.
  The `sw` at 0x43374 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x43324 calls md_perf_turnon_node with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x43378 calls md_perf_enable with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x4331c targets 0x43378, is taken when a1 == at(=-0x1), and falls through when a1 != at(=-0x1).
  The `beq` branch at 0x4332c targets 0x43348, is taken when v0(=ret(md_perf_turnon_node)) == 0, and falls through when v0(=ret(md_perf_turnon_node)) != 0.
  The `beq` branch at 0x43370 targets 0x43334 and is always taken.
  The `beq` branch at 0x43380 targets 0x43334 and is always taken.
  The return at 0x43340 has v0 = one of ret(md_perf_turnon_node), 0x0, ret(md_perf_enable).
- `md_perf_node_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43388 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43388-0x433c4 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x43398 calls md_perf_turnoff_node with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x433b4 calls md_perf_disable with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x43390 targets 0x433b4, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x433bc targets 0x433a4 and is always taken.
  The return at 0x433ac has v0 = one of ret(md_perf_turnoff_node), ret(md_perf_disable).
- `md_perf_transfer_values` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x433c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x433c4-0x43484 (192 bytes).
  It occupies 192 bytes.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x433f0, `ld` at 0x43410, `ld` at 0x43414.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x433fc, `sd` at 0x43430, `sd` at 0x43448.
  The `beq` branch at 0x4345c targets 0x43468, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x43468 targets 0x43404, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x43474 targets 0x433dc, is taken when t2(?) < 0x6 (signed), and falls through when t2(?) >= 0x6 (signed).
  The return at 0x4347c has v0 = ?.
- `md_perf_get_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43484 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43484-0x43534 (176 bytes).
  It occupies 176 bytes.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x434c4, `sw` at 0x43518.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x434d4, `ld` at 0x43504.
  The `ld` at 0x434d8 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x434e4 loads 8 bytes from ?.
  The `lw` at 0x43510 loads 4 bytes from sym(.bss) +0xf0cc.
  The `jal` at 0x434a0 calls bzero with a0=a0 at entry (arg0), a1=0x150, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x434ec calls md_perf_transfer_values with a0=a0 at entry (arg0), a1=table(0x8670), a2=?, a3=?.
  The `beq` branch at 0x434b8 targets 0x434c8, is taken when at(=[sym(mdp_mode)]:2) == v0(=0x2), and falls through when at(=[sym(mdp_mode)]:2) != v0(=0x2).
  The `beq` branch at 0x434c0 targets 0x4351c and is always taken.
  The `blez` branch at 0x434c8 targets 0x43508, is taken when a0(=[sym(maxnodes)]) <= 0 (signed), and falls through when a0(=[sym(maxnodes)]) > 0 (signed).
  The `bnel` branch at 0x43500 targets 0x434d8, is taken when s0(?) < a2(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a2(=[sym(maxnodes)]) (signed); its branch-likely delay slot `ld a1,-15360(zero)` at 0x43504 runs only when taken and is annulled on fall-through.
  The return at 0x4352c has v0 = one of -0x1, 0x0.
- `md_perf_get_node_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43534 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43534-0x43614 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x43580 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x43584 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x43590 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lh` at 0x435b0 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8652.
  The `lw` at 0x435c4 loads 4 bytes from sym(.bss) +0xf0cc.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x435c8, `sw` at 0x435fc.
  The `lw` at 0x435f4 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x866c.
  The `jal` at 0x43560 calls bzero with a0=a1 at entry (arg1), a1=0x150, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x435a4 calls md_perf_transfer_values with a0=a1 at entry (arg1), a1=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34416, a2=0x8650, a3=?.
  The `jal` at 0x43604 calls md_perf_get_count with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x43554 targets 0x43600, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x43570 targets 0x435ec, is taken when s0(=a0) >= v0(=[sym(maxnodes)]) (signed), and falls through when s0(=a0) < v0(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x43578 targets 0x435ec, is taken when s0(=a0) < 0 (signed), and falls through when s0(=a0) >= 0 (signed).
  The `beq` branch at 0x435c0 targets 0x435f4, is taken when a1(?) == a2(=0x4), and falls through when a1(?) != a2(=0x4).
  The `beq` branch at 0x435ec targets 0x435d4 and is always taken.
  The `beq` branch at 0x435f8 targets 0x435cc and is always taken.
  The `beq` branch at 0x4360c targets 0x435d0 and is always taken.
  The return at 0x435e4 has v0 = one of ?, 0x16.
- `md_perf_get_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43614 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43614-0x43690 (124 bytes).
  It occupies 124 bytes.
  The `lh` at 0x43640 loads 2 bytes from sym(.bss) +0xf0b2.
  The `lw` at 0x43654 loads 4 bytes from sym(.bss) +0xf220.
  The `sw` at 0x43658 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x4365c loads 4 bytes from sym(.bss) +0xf0cc.
  The `sw` at 0x43660 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x43634 calls mutex_lock with a0=sym(global_mdp_mon), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x43664 calls mutex_unlock with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?.
  The `jal` at 0x43680 calls mutex_unlock with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?.
  The `beq` branch at 0x43648 targets 0x43680, is taken when (t8(=[sym(global_mdp_mon+2)]:2) & 0x1) == 0, and falls through when (t8(=[sym(global_mdp_mon+2)]:2) & 0x1) != 0.
  The `beq` branch at 0x43688 targets 0x43670 and is always taken.
  The return at 0x43678 has v0 = one of 0x0, 0x16.
- `md_perf_get_node_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43690 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43690-0x43794 (260 bytes).
  It occupies 260 bytes.
  The `ld` at 0x436d4 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x436d8 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x436e4 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  2 such `lh` accesses load 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8652, including `lh` at 0x43700, `lh` at 0x4371c.
  The `lw` at 0x43714 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x87c0.
  The `sw` at 0x43718 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x4372c loads 4 bytes from sym(.bss) +0xf0cc.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x43730, `sw` at 0x4376c.
  The `lw` at 0x43764 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x866c.
  The `jal` at 0x436f8 calls mutex_lock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34392, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16.
  The `jal` at 0x43734 calls mutex_unlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34392, a1=[sym(global_mdp_mon+28)], a2=?, a3=?.
  The `jal` at 0x43774 calls md_perf_get_ctrl with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16.
  The `jal` at 0x43784 calls mutex_unlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34392, a1=?, a2=?, a3=?.
  The `beq` branch at 0x436b8 targets 0x43770, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x436c4 targets 0x4375c, is taken when a0 >= v0(=[sym(maxnodes)]) (signed), and falls through when a0 < v0(=[sym(maxnodes)]) (signed).
  The `bltz` branch at 0x436cc targets 0x4375c, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x4370c targets 0x43784, is taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) == 0, and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) != 0.
  The `beq` branch at 0x43728 targets 0x43764, is taken when t9(?) == ra(=0x4), and falls through when t9(?) != ra(=0x4).
  The `beq` branch at 0x4375c targets 0x43744 and is always taken.
  The `beq` branch at 0x43768 targets 0x43734 and is always taken.
  The `beq` branch at 0x4377c targets 0x43740 and is always taken.
  The `beq` branch at 0x4378c targets 0x43740 and is always taken.
  The return at 0x43754 has v0 = one of ?, 0x16.
- `md_perf_start_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43794 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43794-0x437ec (88 bytes).
  It occupies 88 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x1a, including `lh` at 0x437a8, `lh` at 0x437cc.
  The `sd` at 0x437c8 stores 8 bytes to ?.
  The `lh` at 0x437d0 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `sd` at 0x437e8 stores 8 bytes to ([a0+26]:2 << 0x21) -0x6dfffffffe5f0000.
  The `bne` branch at 0x437c4 targets 0x437a8, is taken when a2(?) < 0x6 (signed), and falls through when a2(?) >= 0x6 (signed).
  The return at 0x437e4 has v0 = ?.
- `md_perf_stop_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x437ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x437ec-0x43804 (24 bytes).
  It occupies 24 bytes.
  The `lh` at 0x437ec loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `sd` at 0x43800 stores 8 bytes to ([a0+26]:2 << 0x21) -0x6dfffffffe5f0000.
  The return at 0x437fc has v0 = 0x9200000001a10000.
- `md_perf_update_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43804 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43804-0x438d8 (212 bytes).
  It occupies 212 bytes.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x4, including `lh` at 0x43810, `lh` at 0x43840, `lh` at 0x438ac.
  The `sd` at 0x4383c stores 8 bytes to (a0 + ([a0+4]:2 << 0x3)) +0x140.
  The `lh` at 0x43848 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4386c, `ld` at 0x43870, `ld` at 0x438c8.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x43890, `sd` at 0x438d4.
  The `beq` branch at 0x4388c targets 0x438ac, is taken when a7(=0xfffff) == t2(?), and falls through when a7(=0xfffff) != t2(?).
  The `bne` branch at 0x4389c targets 0x43840, is taken when a2(?) < 0x6 (signed), and falls through when a2(?) >= 0x6 (signed).
  The `beq` branch at 0x438d0 targets 0x43894 and is always taken.
  The return at 0x438a4 has v0 = ?.
- `md_perf_multiplex` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x438d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x438d8-0x439ac (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x438e0 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x438e4 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x438f0 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lh` at 0x43910 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8652.
  The `lh` at 0x43924 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8650.
  The `lh` at 0x43930 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8654.
  The `lw` at 0x43934 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x87c0.
  The `sh` at 0x43990 stores 2 bytes to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8654.
  The `jal` at 0x43900 calls md_perf_stop_count with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x43908 calls md_perf_update_count with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384, a1=?, a2=?, a3=?.
  The `jal` at 0x43994 calls md_perf_start_count with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384, a1=?, a2=?, a3=?, a6=0x1, a7=0x5.
  The `beq` branch at 0x4391c targets 0x4399c, is taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) == 0, and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) != 0.
  The `beq` branch at 0x43928 targets 0x43994, is taken when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384]:2) == 0, and falls through when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384]:2) != 0.
  The `bne` branch at 0x4395c targets 0x43990, is taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & ra(?)) != 0, and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & ra(?)) == 0.
  The `beq` branch at 0x43964 targets 0x43990, is taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) == a0(?), and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) != a0(?).
  The `bne` branch at 0x43980 targets 0x43990, is taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & v0(?)) != 0, and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & v0(?)) == 0.
  The `bne` branch at 0x43988 targets 0x43940, is taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) != a0(?), and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) == a0(?).
  The return at 0x439a4 has v0 = one of ret(md_perf_update_count), ret(md_perf_start_count).
- `pio_geth` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x439d4-0x439dc (8 bytes).
  It occupies 8 bytes.
  The return at 0x439d4 has v0 = 0x0.
- `piomap_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x439e4-0x439ec (8 bytes).
  It occupies 8 bytes.
  The return at 0x439e4 has v0 = 0x0.
- `sampleBuffersScore` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8b1004 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8b1004-0xd8b100c (8 bytes).
  It occupies 8 bytes.
  The return at 0xd8b1004 has v0 = ?.
- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d001c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d001c-0xd8d0164 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xd8d002c loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d0048 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8d004c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8d005c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8d0070, `lw` at 0xd8d010c.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8d007c, `lw` at 0xd8d0094, `lw` at 0xd8d00c0.
  The `lw` at 0xd8d0080 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8d0098 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8d00a8, `sw` at 0xd8d00c4.
  The `sh` at 0xd8d00cc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8d00d0, `sb` at 0xd8d00f8.
  The `lw` at 0xd8d00d4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8d00e8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8d00ec stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8d00f0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8d00f4 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8d00fc loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8d0100 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8d0108 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8d0114, `lw` at 0xd8d012c.
  The `lw` at 0xd8d0118 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `sw` at 0xd8d014c stores 4 bytes to [[0x1014]+276] +0x48.
  The `jalr` at 0xd8d0068 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d0088 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d00b4 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0120 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d013c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d0050 targets 0xd8d0150, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8d0058 targets 0xd8d0148, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8d0078 targets 0xd8d0098, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d007c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d00a4 targets 0xd8d00c8, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d00a8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0110 targets 0xd8d0130, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d0114 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0134 targets 0xd8d014c, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw t8,44(sp)` at 0xd8d0138 runs only when taken and is annulled on fall-through.
  The return at 0xd8d015c has v0 = one of [[[0x1014]+276]+216], ?.
- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d0164 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d0164-0xd8d02b8 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xd8d0174 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8d0194 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8d0198 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8d01a8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8d01bc, `lw` at 0xd8d0260.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8d01c8, `lw` at 0xd8d01e0, `lw` at 0xd8d020c.
  The `lw` at 0xd8d01cc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8d01e4 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8d01f4, `sw` at 0xd8d0210.
  The `sh` at 0xd8d0218 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8d021c, `sb` at 0xd8d0244.
  The `lw` at 0xd8d0220 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8d0234 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8d0238 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8d023c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8d0240 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8d0248 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8d024c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sw` at 0xd8d0254 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8d025c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8d0268, `lw` at 0xd8d0280.
  The `lw` at 0xd8d026c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `sw` at 0xd8d02a0 stores 4 bytes to [[0x1014]+276] +0x44.
  The `jalr` at 0xd8d01b4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d01d4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0200 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0274 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d0290 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8d019c targets 0xd8d02a4, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8d01a4 targets 0xd8d029c, is taken when v0(=[[[0x1014]+276]+216]) == 0, and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  The `beql` branch at 0xd8d01c4 targets 0xd8d01e4, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8d01c8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d01f0 targets 0xd8d0214, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8d01f4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0264 targets 0xd8d0284, is taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8d0268 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d0288 targets 0xd8d02a0, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw t0,48(sp)` at 0xd8d028c runs only when taken and is annulled on fall-through.
  The return at 0xd8d02b0 has v0 = one of [[[0x1014]+276]+216], ?.
- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d916c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d916c-0xd8d91b8 (76 bytes).
  It occupies 76 bytes.
  The `jalr` at 0xd8d919c calls __glXPostError with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0.
  The return at 0xd8d91b0 has v0 = 0x0.
- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9e4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d9e4c-0xd8da0b4 (616 bytes).
  It occupies 616 bytes.
  The `lw` at 0xd8d9ea4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8d9f0c stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  The `lw` at 0xd8d9f10 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8d9f1c, `lw` at 0xd8d9f34, `lw` at 0xd8da04c.
  The `lw` at 0xd8d9f20 loads 4 bytes from a2 (arg2 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8d9f30, `lw` at 0xd8da024, `lw` at 0xd8da034.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8d9f3c, `lw` at 0xd8d9f64, `lw` at 0xd8d9fa8.
  The `lw` at 0xd8d9f48 loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8d9f68 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8d9fb0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8d9fc0, `sb` at 0xd8d9ff4.
  The `sh` at 0xd8d9fc4 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8d9fcc loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d9fe0 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8d9fe4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8d9fec stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8d9ff8 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8da000 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8da004 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8da008 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8da010 stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8da018 stores 4 bytes to [a0+108] +0xc.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8da030, `sw` at 0xd8da048.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8da054, `lw` at 0xd8da06c.
  The `lw` at 0xd8da058 loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8d9e78 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8d9eac calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=0x0.
  The `jalr` at 0xd8d9ec4 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8d9ef0 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0.
  The `jalr` at 0xd8d9f50 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd8d9f90 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xd8da060 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da07c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da090 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `bne` branch at 0xd8d9e8c targets 0xd8d9e9c, is taken when v0(=ret(__glXSetupForCommand)) != 0, and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  The `beq` branch at 0xd8d9e94 targets 0xd8da0a0 and is always taken.
  The `bne` branch at 0xd8d9ed8 targets 0xd8d9f04, is taken when v0(=ret(__glXAddDrawableInterest)) != 0, and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  The `beq` branch at 0xd8d9efc targets 0xd8da0a0 and is always taken.
  The `beq` branch at 0xd8d9f08 targets 0xd8d9f34, is taken when a2 == 0, and falls through when a2 != 0.
  The `beql` branch at 0xd8d9f18 targets 0xd8d9f38, is taken when t7(=[a2]) == 0, and falls through when t7(=[a2]) != 0; its branch-likely delay slot `lw v0,1232(s0)` at 0xd8d9f1c runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xd8d9f2c targets 0xd8d9f24, is taken when t8(?) != 0, and falls through when t8(?) == 0; its branch-likely delay slot `lw t8,8(v0)` at 0xd8d9f30 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8d9f38 targets 0xd8d9f68, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,108(s0)` at 0xd8d9f3c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8d9f7c targets 0xd8d9fac, is taken when t3(=[a0+112]) >= t5(?) (unsigned), and falls through when t3(=[a0+112]) < t5(?) (unsigned).
  The `beq` branch at 0xd8da014 targets 0xd8da04c, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xd8da01c targets 0xd8da04c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xd8da044 targets 0xd8da024, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beql` branch at 0xd8da050 targets 0xd8da070, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8da054 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xd8da074 targets 0xd8da088, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0.
  The return at 0xd8da0ac has v0 = one of 0x0, ret(?).
- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8da0b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8da0b4-0xd8da220 (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0xd8da11c loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  The `sw` at 0xd8da128 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8da13c, `lw` at 0xd8da1d0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8da148, `lw` at 0xd8da160, `lw` at 0xd8da18c.
  The `lw` at 0xd8da14c loads 4 bytes from [a0+1232] +0x0.
  The `lw` at 0xd8da164 loads 4 bytes from a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x64, including `sw` at 0xd8da174, `sw` at 0xd8da190.
  The `sh` at 0xd8da19c stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8da1a0, `sb` at 0xd8da1c4.
  The `lw` at 0xd8da1a4 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8da1b4 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8da1b8 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sb` at 0xd8da1c0 stores 1 byte to [a0+108] +0x1.
  The `sw` at 0xd8da1cc stores 4 bytes to [a0+108] +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7c, including `lw` at 0xd8da1d8, `lw` at 0xd8da1f0.
  The `lw` at 0xd8da1dc loads 4 bytes from [a0+1232] +0x4.
  The `jalr` at 0xd8da0d8 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8da0f4 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da10c calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da134 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=ret(__glXAddDrawableInterest), a2=?, a3=?.
  The `jalr` at 0xd8da154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da180 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8da1e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x1c, a2=?, a3=?.
  The `jalr` at 0xd8da200 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8da0e4 targets 0xd8da20c, is taken when v0(=ret(__glXSetupForCommand)) == 0, and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  The `bne` branch at 0xd8da120 targets 0xd8da12c, is taken when t6(=[ret(__glXAddDrawableInterest)+20]) != 0, and falls through when t6(=[ret(__glXAddDrawableInterest)+20]) == 0.
  The `beql` branch at 0xd8da144 targets 0xd8da164, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw a0,108(s0)` at 0xd8da148 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8da170 targets 0xd8da194, is taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned), and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned); its branch-likely delay slot `sw a0,100(s0)` at 0xd8da174 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8da1d4 targets 0xd8da1f4, is taken when v1(=[a0+1232]) == 0, and falls through when v1(=[a0+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8da1d8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8da1f8 targets 0xd8da210, is taken when v0(=[a0+124]) == 0, and falls through when v0(=[a0+124]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xd8da1fc runs only when taken and is annulled on fall-through.
  The return at 0xd8da218 has v0 = one of [a0+124], ?.
- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dc6cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dc6cc-0xd8dc76c (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xd8dc6dc loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8dc700 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8dc70c loads 4 bytes from [[0x1014]+276] +0x4.
  The `sh` at 0xd8dc710 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8dc714 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `sb` at 0xd8dc718 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sb` at 0xd8dc71c stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd8dc720 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd8dc724 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `lw` at 0xd8dc728 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8dc730 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8dc74c calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xd8dc738 targets 0xd8dc75c, is taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned); its branch-likely delay slot `lw ra,36(sp)` at 0xd8dc73c runs only when taken and is annulled on fall-through.
  The return at 0xd8dc764 has v0 = one of ?, ret(__glXFlushRenderBuffer).
- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dca94 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dca94-0xd8dcc20 (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0xd8dcaa4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8dcac0 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8dcac4 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8dcac8 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8dcae8, `lw` at 0xd8dcbcc.
  4 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8dcaf4, `lw` at 0xd8dcb0c, `lw` at 0xd8dcb38.
  The `lw` at 0xd8dcaf8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  The `lw` at 0xd8dcb10 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  2 such `sw` accesses store 4 bytes to [[[0x1014]+276]+216] +0x64, including `sw` at 0xd8dcb20, `sw` at 0xd8dcb3c.
  The `sh` at 0xd8dcb48 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8dcb4c, `sb` at 0xd8dcb7c.
  The `lw` at 0xd8dcb50 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8dcb64 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `sw` at 0xd8dcb68 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `lw` at 0xd8dcb6c loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8dcb74 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8dcb78 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8dcb80 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8dcb8c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8dcb9c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x7c, including `lw` at 0xd8dcbd8, `lw` at 0xd8dcbf0.
  The `lw` at 0xd8dcbdc loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `jalr` at 0xd8dcae0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3).
  The `jalr` at 0xd8dcb00 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8dcb2c calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8dcba4 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0.
  The `jalr` at 0xd8dcbc4 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd8dcbe4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8dcc00 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beql` branch at 0xd8dcacc targets 0xd8dcc10, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8dcad0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcaf0 targets 0xd8dcb10, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v1,108(s0)` at 0xd8dcaf4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcb1c targets 0xd8dcb40, is taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned); its branch-likely delay slot `sw v1,100(s0)` at 0xd8dcb20 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcbd4 targets 0xd8dcbf4, is taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0; its branch-likely delay slot `lw v0,124(s0)` at 0xd8dcbd8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xd8dcbf8 targets 0xd8dcc10, is taken when v0(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xd8dcbfc runs only when taken and is annulled on fall-through.
  The return at 0xd8dcc18 has v0 = one of ?, [[[[0x1014]+276]+216]+124], ret(?).
- `InitBuffers` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda47180 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda47180-0xda473ac (556 bytes).
  It occupies 556 bytes.
  The `lbu` at 0xda471a8 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  The `sw` at 0xda471b4 stores 4 bytes to a0 (arg0 at entry) +0x7718.
  The `sw` at 0xda471bc stores 4 bytes to a0 (arg0 at entry) +0x2d4c.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc8d, including `lbu` at 0xda471c0, `lbu` at 0xda4723c, `lbu` at 0xda472a0.
  The `sw` at 0xda471c8 stores 4 bytes to a0 (arg0 at entry) +0x771c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2d48, including `sw` at 0xda471d0, `sw` at 0xda47248.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7718, including `lw` at 0xda471d8, `lw` at 0xda4720c, `lw` at 0xda47240.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x771c, including `lw` at 0xda471ec, `lw` at 0xda47220.
  The `lw` at 0xda47278 loads 4 bytes from a0 (arg0 at entry) +0xcd8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc90, including `lbu` at 0xda47280, `lbu` at 0xda472ec.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x78d8, including `lw` at 0xda472b0, `lw` at 0xda472cc.
  The `sb` at 0xda472f8 stores 1 byte to a0 (arg0 at entry) +0x12e8.
  The `sw` at 0xda47300 stores 4 bytes to a0 (arg0 at entry) +0x12ec.
  The `lbu` at 0xda47328 loads 1 byte from a0 (arg0 at entry) +0xc91.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc92, including `lbu` at 0xda47330, `lbu` at 0xda4734c.
  The `sw` at 0xda4735c stores 4 bytes to a0 (arg0 at entry) +0x79a0.
  The `jalr` at 0xda471e0 calls __glOdysseyInitCI [0xda438fc] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda471f8 calls __glOdysseyInitCI [0xda438fc] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47214 calls __glOdysseyInitRGB [0xdab0cb8] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4722c calls __glOdysseyInitRGB [0xdab0cb8] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47254 calls __glOdysseyInitCI [0xda438fc] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4726c calls __glOdysseyInitRGB [0xdab0cb8] with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda472b8 calls __glOdysseyInitCI [0xda438fc] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda472d4 calls __glOdysseyInitRGB [0xdab0cb8] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47310 calls __glOdysseyInitAccum [0xda35264] with a0=a0+31192, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47340 calls __glInitDepth [0xdb1e3e8] with a0=a0+31060, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda4736c calls __glInitStencil8 [0xdb51f98] with a0=a0+30940, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda47380 calls __glUpdateDepthRange [0xdb836a4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xda471b8 targets 0xda4723c, is taken when t6(=[a0+3214]:1) == 0, and falls through when t6(=[a0+3214]:1) != 0.
  The `beq` branch at 0xda471cc targets 0xda47208, is taken when t7(=[a0+3213]:1) == 0, and falls through when t7(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda47200 targets 0xda47278 and is always taken.
  The `beq` branch at 0xda47234 targets 0xda47278 and is always taken.
  The `beq` branch at 0xda47244 targets 0xda47264, is taken when t8(=[a0+3213]:1) == 0, and falls through when t8(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda4725c targets 0xda47278 and is always taken.
  The `blezl` branch at 0xda4727c targets 0xda472f0, is taken when s2(=[a0+3288]) <= 0 (signed), and falls through when s2(=[a0+3288]) > 0 (signed); its branch-likely delay slot `lbu t4,3216(s1)` at 0xda47280 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xda47284 targets 0xda472ec, is taken when s2(=[a0+3288]) <= 0 (signed), and falls through when s2(=[a0+3288]) > 0 (signed).
  The `beq` branch at 0xda472a4 targets 0xda472c8, is taken when t9(=[a0+3213]:1) == 0, and falls through when t9(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda472c0 targets 0xda472e0 and is always taken.
  The `bnel` branch at 0xda472e4 targets 0xda472a4, is taken when s0(?) != s3(?), and falls through when s0(?) == s3(?); its branch-likely delay slot `lbu t9,3213(s1)` at 0xda472e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda472fc targets 0xda47328, is taken when t4(=[a0+3216]:1) == 0, and falls through when t4(=[a0+3216]:1) != 0.
  The `bne` branch at 0xda47318 targets 0xda47328, is taken when v0(=ret(__glOdysseyInitAccum)) != 0, and falls through when v0(=ret(__glOdysseyInitAccum)) == 0.
  The `beq` branch at 0xda47320 targets 0xda47390 and is always taken.
  The `beql` branch at 0xda4732c targets 0xda47350, is taken when t5(=[a0+3217]:1) == 0, and falls through when t5(=[a0+3217]:1) != 0; its branch-likely delay slot `lbu t7,3218(s1)` at 0xda47330 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda47358 targets 0xda47378, is taken when t7(=[a0+3218]:1) == 0, and falls through when t7(=[a0+3218]:1) != 0.
  The return at 0xda473a4 has v0 = one of 0x0, 0x1.
- `ImageChainAddOpTextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda723c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda723c0-0xda7245c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda72404 loads 4 bytes from ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda72414 stores 4 bytes to ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda72424 stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `sw` at 0xda72428 stores 4 bytes to ret(ImageChainOpCreate) +0x4.
  The `sw` at 0xda7242c stores 4 bytes to ret(ImageChainOpCreate) +0xc.
  The `jalr` at 0xda723e8 calls ImageChainOpCreate [0xda70648] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda7243c calls ImageChainAddOp [0xda70b14] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xda723f4 targets 0xda72404, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The `beq` branch at 0xda723fc targets 0xda7244c and is always taken.
  The return at 0xda72454 has v0 = one of 0x0, 0x1.
- `RenderFunc_TextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda7245c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda7245c-0xda724a8 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xda72484 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `lw` at 0xda72488 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `jalr` at 0xda7248c calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[a0+72], a1=[a0+68], a2=a1 at entry (arg1), a3=0x1.
  The return at 0xda724a0 has v0 = 0x1.
- `LoadTextureFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda7c7b4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda7c7b4-0xda7c8d4 (288 bytes).
  It occupies 288 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xda7c7c4, `lw` at 0xda7c820, `lw` at 0xda7c880.
  The `lw` at 0xda7c7cc loads 4 bytes from abs 0x1010.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda7c7ec, `lw` at 0xda7c7fc, `lw` at 0xda7c804.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda7c7f8, `sw` at 0xda7c800, `sw` at 0xda7c80c.
  The `sw` at 0xda7c81c stores 4 bytes to [0x1010] +0x8b04.
  The `sw` at 0xda7c83c stores 4 bytes to [0x1010] +0x8c0c.
  The `sw` at 0xda7c848 stores 4 bytes to [0x1010] +0x8c10.
  The `sw` at 0xda7c850 stores 4 bytes to [0x1010] +0x8c14.
  The `sw` at 0xda7c858 stores 4 bytes to [0x1010] +0x8c18.
  The `sw` at 0xda7c860 stores 4 bytes to [0x1010] +0x8c1c.
  The `sw` at 0xda7c868 stores 4 bytes to [0x1010] +0x8c20.
  The `sw` at 0xda7c870 stores 4 bytes to [0x1010] +0x8c24.
  The `sw` at 0xda7c878 stores 4 bytes to [0x1010] +0x8c28.
  The `sw` at 0xda7c87c stores 4 bytes to [0x1010] +0x8c08.
  The `sw` at 0xda7c89c stores 4 bytes to [0x1010] +0x8c8c.
  The `sw` at 0xda7c8a4 stores 4 bytes to [0x1010] +0x8c90.
  The `sw` at 0xda7c8ac stores 4 bytes to [0x1010] +0x8c94.
  The `lw` at 0xda7c8b0 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xda7c8c0 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xda7c8c4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda7c8c8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xda7c8d0 stores 4 bytes to [0x1010] +0x2d44.
  The `bne` branch at 0xda7c808 targets 0xda7c7ec, is taken when t8(?) != t1(?), and falls through when t8(?) == t1(?).
  The return at 0xda7c8cc has v0 = [0x1010].
- `ImageChainAddOpPixelTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda81428 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda81428-0xda814bc (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0xda8146c loads 4 bytes from ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda81474 stores 4 bytes to ret(ImageChainOpCreate) +0xc.
  The `sw` at 0xda81488 stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `sw` at 0xda8148c stores 4 bytes to ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xda81490 stores 4 bytes to ret(ImageChainOpCreate) +0x4.
  The `lw` at 0xda81498 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jalr` at 0xda81448 calls ImageChainOpCreate [0xda70648] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda8149c calls ImageChainAddOp [0xda70b14] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=[a0+8], a3=0x0.
  The `bne` branch at 0xda81458 targets 0xda81468, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The `beq` branch at 0xda81460 targets 0xda814ac and is always taken.
  The return at 0xda814b4 has v0 = one of 0x0, 0x1.
- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda87e44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda87e44-0xda87eb8 (116 bytes).
  It occupies 116 bytes.
  The `lwc1` at 0xda87e5c loads 4 bytes from a1 (arg1 at entry) +0x13c.
  The `lwc1` at 0xda87e6c loads 4 bytes from a1 (arg1 at entry) +0x14c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x13c, including `swc1` at 0xda87e78, `swc1` at 0xda87e9c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x14c, including `swc1` at 0xda87e7c, `swc1` at 0xda87ea4.
  The `jalr` at 0xda87e88 calls __glOdySpanShiftOffsetIndex [0xda87750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda87eb0 has v0 = ret(__glOdySpanShiftOffsetIndex).
- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5370 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5370-0xdab53e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdab5388 loads 4 bytes from a1 (arg1 at entry) +0x534.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xdab5398, `lw` at 0xdab53bc.
  The `jalr` at 0xdab53a8 calls __glOdysseyDestroyPMObjGroup [0xdaac74c] with a0=a0 at entry (arg0), a1=a1+1332, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xdab53c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=?.
  The `beql` branch at 0xdab5394 targets 0xdab53c0, is taken when t6(=[a1+1332]) == at(=-0x1), and falls through when t6(=[a1+1332]) != at(=-0x1); its branch-likely delay slot `lw t9,12(a0)` at 0xdab5398 runs only when taken and is annulled on fall-through.
  The return at 0xdab53d8 has v0 = ret(?).
- `InitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab53e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab53e0-0xdab561c (572 bytes).
  It occupies 572 bytes.
  The `sw` at 0xdab5410 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0xdab542c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xdab5430 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xdab5434 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xdab5438 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xdab543c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0xdab5440 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xdab5444 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0xdab5448 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0xdab544c stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0xdab5450 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0xdab5454 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `swc1` at 0xdab5460 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `swc1` at 0xdab5464 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `swc1` at 0xdab5468 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `swc1` at 0xdab546c stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `swc1` at 0xdab5470 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab5484, `sw` at 0xdab5488, `sw` at 0xdab548c.
  The `sw` at 0xdab54d4 stores 4 bytes to a0 (arg0 at entry) +0x534.
  The `sw` at 0xdab54d8 stores 4 bytes to a0 (arg0 at entry) +0x538.
  The `sw` at 0xdab54dc stores 4 bytes to a0 (arg0 at entry) +0xc0.
  The `sw` at 0xdab54e0 stores 4 bytes to a0 (arg0 at entry) +0x544.
  The `sw` at 0xdab54e4 stores 4 bytes to a0 (arg0 at entry) +0x548.
  The `sw` at 0xdab54e8 stores 4 bytes to a0 (arg0 at entry) +0x54c.
  The `sw` at 0xdab54ec stores 4 bytes to a0 (arg0 at entry) +0x550.
  The `sw` at 0xdab54f0 stores 4 bytes to a0 (arg0 at entry) +0x554.
  The `sw` at 0xdab5560 stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0xdab5564 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0xdab5568 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0xdab556c stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0xdab5570 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0xdab5574 stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0xdab5578 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sw` at 0xdab557c stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0xdab5580 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0xdab5584 stores 4 bytes to a0 (arg0 at entry) +0xf8.
  The `sw` at 0xdab5588 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  The `sw` at 0xdab558c stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0xdab5590 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0xdab5594 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0xdab5598 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `sw` at 0xdab559c stores 4 bytes to a0 (arg0 at entry) +0xc4.
  The `sw` at 0xdab55a0 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0xdab55a4 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `sw` at 0xdab55a8 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0xdab55ac stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0xdab55b0 stores 4 bytes to a0 (arg0 at entry) +0xdc.
  The `sw` at 0xdab55b4 stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0xdab55b8 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0xdab55bc stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0xdab55c0 stores 4 bytes to a0 (arg0 at entry) +0x124.
  The `sw` at 0xdab55c4 stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0xdab55c8 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0xdab55cc stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0xdab55d0 stores 4 bytes to a0 (arg0 at entry) +0x128.
  The `sw` at 0xdab55d4 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `swc1` at 0xdab55d8 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `swc1` at 0xdab55dc stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `swc1` at 0xdab55e0 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdab55e4 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `swc1` at 0xdab55e8 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `swc1` at 0xdab55ec stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xdab55f0 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `swc1` at 0xdab55f4 stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `swc1` at 0xdab55f8 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `swc1` at 0xdab55fc stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `swc1` at 0xdab5600 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `swc1` at 0xdab5604 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdab5608 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `jalr` at 0xdab5500 calls bzero with a0=a0+308, a1=0x400, a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xdab551c calls __glOdysseyTextureSetDetailTable [0xdabe880] with a0=a0 at entry (arg0), a1=0x2, a2=0xdbd36a0, a3=?.
  The `bne` branch at 0xdab54bc targets 0xdab5480, is taken when v1(?) != a1(=0x10), and falls through when v1(?) == a1(=0x10).
  The return at 0xdab5614 has v0 = 0x1000.
- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5838 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5838-0xdab5924 (236 bytes).
  It occupies 236 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164ac, including `lw` at 0xdab585c, `lw` at 0xdab5880.
  The `lw` at 0xdab5864 loads 4 bytes from [a0+91308] +0x8.
  The `lw` at 0xdab5894 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab5898 loads 4 bytes from [a0+91312] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164b4, including `lw` at 0xdab58a0, `lw` at 0xdab58c0.
  The `lw` at 0xdab58c4 loads 4 bytes from [a0+91316] +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x164b8, including `lw` at 0xdab58cc, `lw` at 0xdab58ec.
  The `lw` at 0xdab58f0 loads 4 bytes from [a0+91320] +0x8.
  The `jalr` at 0xdab587c calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91308], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab58b0 calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91312], a2=?, a3=?.
  The `jalr` at 0xdab58dc calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91316], a2=?, a3=?.
  The `jalr` at 0xdab5904 calls __glNamesUnlockData [0xdb3e144] with a0=a0 at entry (arg0), a1=[a0+91320], a2=?, a3=?.
  The `beql` branch at 0xdab5868 targets 0xdab588c, is taken when t7(=[[a0+91308]+8]) == 0, and falls through when t7(=[[a0+91308]+8]) != 0; its branch-likely delay slot `lui at,0x1` at 0xdab586c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab589c targets 0xdab58c4, is taken when t8(=[[a0+91312]+8]) == 0, and falls through when t8(=[[a0+91312]+8]) != 0; its branch-likely delay slot `lw a1,8(v0)` at 0xdab58a0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab58c8 targets 0xdab58f0, is taken when t9(=[[a0+91316]+8]) == 0, and falls through when t9(=[[a0+91316]+8]) != 0; its branch-likely delay slot `lw a1,12(v0)` at 0xdab58cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab58f4 targets 0xdab5914, is taken when t0(=[[a0+91320]+8]) == 0, and falls through when t0(=[[a0+91320]+8]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdab58f8 runs only when taken and is annulled on fall-through.
  The return at 0xdab591c has v0 = one of a0+91308, ret(__glNamesUnlockData).
- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5aa0-0xdab5b58 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xdab5af8 loads 4 bytes from a0 (arg0 at entry) +0x164ac.
  The `lw` at 0xdab5b04 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab5b10 loads 4 bytes from a0 (arg0 at entry) +0x164b4.
  The `lw` at 0xdab5b1c loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `beq` branch at 0xdab5aa4 targets 0xdab5af0, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdab5ab0 targets 0xdab5afc, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdab5abc targets 0xdab5b20, is taken when a1 == at(=0x8063), and falls through when a1 != at(=0x8063).
  The `beq` branch at 0xdab5ac4 targets 0xdab5b30, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xdab5acc targets 0xdab5b08, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdab5ad8 targets 0xdab5b40, is taken when a1 == at(=0x8070), and falls through when a1 != at(=0x8070).
  The `beq` branch at 0xdab5ae0 targets 0xdab5b14, is taken when a1 == at(=0x8095), and falls through when a1 != at(=0x8095).
  The `beq` branch at 0xdab5ae8 targets 0xdab5b50 and is always taken.
  The return at 0xdab5af4 has v0 = [a0+91308].
  The return at 0xdab5b00 has v0 = [a0+91312].
  The return at 0xdab5b0c has v0 = [a0+91316].
  The return at 0xdab5b18 has v0 = [a0+91320].
  The return at 0xdab5b28 has v0 = a0+83748.
  The return at 0xdab5b38 has v0 = a0+86268.
  The return at 0xdab5b48 has v0 = a0+88788.
  The return at 0xdab5b50 has v0 = 0x0.
- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab60c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab60c0-0xdab677c (1724 bytes).
  It occupies 1724 bytes.
  The `lw` at 0xdab60d8 loads 4 bytes from abs 0x1010.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdab64cc, `lw` at 0xdab64e0, `lw` at 0xdab64f0.
  21 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab6618, `sw` at 0xdab661c, `sw` at 0xdab6620.
  The `jalr` at 0xdab60fc calls __glOdysseyGetCurrentTexture [0xdab5aa0] with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab6134 calls ChooseSuitableBuzzTexObjFormat [0xdab5cf4] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6178 calls CalcTexelSizes [0xdab5e68] with a0=ret(ChooseSuitableBuzzTexObjFormat), a1=sp-12, a2=sp-16, a3=sp-20.
  The `jalr` at 0xdab61ac calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab628c calls ceilf with a0=?, a1=one of 0x0, 0x1, a2=?, a3=?.
  The `jalr` at 0xdab634c calls __glOdysseyImageLogBase2 [0xdaa6250] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab639c calls memset with a0=sp-80, a1=0x0, a2=0x28, a3=?.
  The `jalr` at 0xdab6550 calls __glOdysseyDestroyPMObjGroup [0xdaac74c] with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xdab6578 calls __glOdysseyDestroyPMObj [0xdaac868] with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0xdab659c calls __glOdysseyCreatePMObj [0xdaac57c] with a0=[0x1010], a1=sp-80, a2=?, a3=a1 at entry (arg1).
  The `jalr` at 0xdab65e0 calls memset with a0=?, a1=0x0, a2=0x44, a3=?.
  The `jalr` at 0xdab65fc calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6688 calls CalcPixelModePixelFormat [0xdab60a4] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xdab61dc targets 0xdab6228, is taken when (v0(?) & 0x78) == 0, and falls through when (v0(?) & 0x78) != 0.
  The `bne` branch at 0xdab6208 targets 0xdab6220, is taken when (v0(?) & 0x78) != 0, and falls through when (v0(?) & 0x78) == 0.
  The `beq` branch at 0xdab6218 targets 0xdab6238 and is always taken.
  The `beq` branch at 0xdab6220 targets 0xdab6238 and is always taken.
  The `bltz` branch at 0xdab6230 targets 0xdab6220, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xdab6240 targets 0xdab6250, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0xdab6248 targets 0xdab6254 and is always taken.
  The `beql` branch at 0xdab62c4 targets 0xdab6314, is taken when (t9(?) & 0x78) == 0, and falls through when (t9(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t9,$f6` at 0xdab62c8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab62f0 targets 0xdab6308, is taken when (t9(?) & 0x78) != 0, and falls through when (t9(?) & 0x78) == 0.
  The `beq` branch at 0xdab6300 targets 0xdab6320 and is always taken.
  The `beq` branch at 0xdab6308 targets 0xdab6320 and is always taken.
  The `bltz` branch at 0xdab6318 targets 0xdab6308, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `bne` branch at 0xdab632c targets 0xdab6370, is taken when t0(?) < 0x2 (signed), and falls through when t0(?) >= 0x2 (signed).
  The `beq` branch at 0xdab6368 targets 0xdab6380 and is always taken.
  The `beq` branch at 0xdab63e8 targets 0xdab6424, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xdab641c targets 0xdab6430 and is always taken.
  The `beq` branch at 0xdab643c targets 0xdab6468, is taken when v0(=a0) == at(=0x8063), and falls through when v0(=a0) != at(=0x8063).
  The `beq` branch at 0xdab6448 targets 0xdab647c, is taken when v0(=a0) == at(=0x8064), and falls through when v0(=a0) != at(=0x8064).
  The `beq` branch at 0xdab6454 targets 0xdab6490, is taken when v0(=a0) == at(=0x8070), and falls through when v0(=a0) != at(=0x8070).
  The `beq` branch at 0xdab6460 targets 0xdab64a0 and is always taken.
  The `beq` branch at 0xdab6474 targets 0xdab64a0 and is always taken.
  The `beq` branch at 0xdab6488 targets 0xdab64a0 and is always taken.
  The `bne` branch at 0xdab64c4 targets 0xdab6590, is taken when t4(?) != 0, and falls through when t4(?) == 0.
  The `beql` branch at 0xdab64d8 targets 0xdab6614, is taken when t5(?) == at(=-0x1), and falls through when t5(?) != at(=-0x1); its branch-likely delay slot `lw t6,72(sp)` at 0xdab64dc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab64e8 targets 0xdab6614, is taken when a1(=0x1) != t8(?), and falls through when a1(=0x1) == t8(?); its branch-likely delay slot `lw t6,72(sp)` at 0xdab64ec runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xdab64fc targets 0xdab6538, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beql` branch at 0xdab6504 targets 0xdab652c, is taken when v0(?) == a2(=a1), and falls through when v0(?) != a2(=a1); its branch-likely delay slot `addiu v0,v0,1` at 0xdab6508 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab651c targets 0xdab652c, is taken when a1(=0x1) != t4(?), and falls through when a1(=0x1) == t4(?); its branch-likely delay slot `addiu v0,v0,1` at 0xdab6520 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab6530 targets 0xdab6504, is taken when v0(?) < a0(?) (signed), and falls through when v0(?) >= a0(?) (signed).
  The `beq` branch at 0xdab6538 targets 0xdab6568, is taken when v1(=one of 0x0, 0x1) == 0, and falls through when v1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xdab6560 targets 0xdab6610 and is always taken.
  The `beq` branch at 0xdab6588 targets 0xdab6610 and is always taken.
  The `bne` branch at 0xdab65ac targets 0xdab6610, is taken when v0(=ret(__glOdysseyCreatePMObj)) != 0, and falls through when v0(=ret(__glOdysseyCreatePMObj)) == 0.
  The `beq` branch at 0xdab65bc targets 0xdab65d4, is taken when v0(=a0) == at(=0x8063), and falls through when v0(=a0) != at(=0x8063).
  The `beq` branch at 0xdab65c4 targets 0xdab65d4, is taken when v0(=a0) == at(=0x8064), and falls through when v0(=a0) != at(=0x8064).
  The `bne` branch at 0xdab65cc targets 0xdab65f4, is taken when v0(=a0) != at(=0x8070), and falls through when v0(=a0) == at(=0x8070).
  The `beq` branch at 0xdab65ec targets 0xdab6768 and is always taken.
  The `beq` branch at 0xdab6608 targets 0xdab6768 and is always taken.
  The `bne` branch at 0xdab66cc targets 0xdab6764, is taken when t4(=a1) != 0, and falls through when t4(=a1) == 0.
  The `beq` branch at 0xdab66e0 targets 0xdab66f4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xdab66ec targets 0xdab66e8, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xdab66f8 targets 0xdab670c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xdab6704 targets 0xdab6700, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xdab670c targets 0xdab6720, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0xdab6718 targets 0xdab6714, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xdab6728 targets 0xdab6738, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xdab6730 targets 0xdab673c and is always taken.
  The `beq` branch at 0xdab6740 targets 0xdab6760, is taken when v0(?) >= a1(?) (signed), and falls through when v0(?) < a1(?) (signed).
  The `beq` branch at 0xdab6748 targets 0xdab6758, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xdab6750 targets 0xdab6758 and is always taken.
  The `beq` branch at 0xdab6758 targets 0xdab6764 and is always taken.
  The return at 0xdab6774 has v0 = one of 0x0, 0x1.
  The instructions from 0xdab6310 to 0xdab6310 are not reached by any path from the entry, and their branches are not listed.
- `LoadTextureFromHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab677c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab677c-0xdab6e30 (1716 bytes).
  It occupies 1716 bytes.
  The `lw` at 0xdab67a0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdab67e4 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdab6810 stores 4 bytes to [0x1010] +0x164c0.
  4 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0, including `lw` at 0xdab684c, `lw` at 0xdab6878, `lw` at 0xdab688c.
  The `lw` at 0xdab6928 loads 4 bytes from [0x1010] +0x4c8.
  The `lw` at 0xdab6954 loads 4 bytes from [0x1010] +0x4a8.
  The `lw` at 0xdab6970 loads 4 bytes from [0x1010] +0x4bc.
  The `lw` at 0xdab698c loads 4 bytes from [0x1010] +0x4b4.
  The `lw` at 0xdab69a8 loads 4 bytes from [0x1010] +0x4b0.
  The `lw` at 0xdab69cc loads 4 bytes from [0x1010] +0x4ac.
  The `lw` at 0xdab6a58 loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x534.
  The `lw` at 0xdab6a6c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a4.
  The `lw` at 0xdab6a78 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4.
  The `lw` at 0xdab6a80 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  The `lw` at 0xdab6a88 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a0.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x59c, including `lw` at 0xdab6a94, `lw` at 0xdab6aa0, `lw` at 0xdab6c08.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x598, including `lw` at 0xdab6aac, `lw` at 0xdab6ae4.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b7c, including `lw` at 0xdab6ac4, `lw` at 0xdab6afc, `lw` at 0xdab6b00.
  The `lw` at 0xdab6ad4 loads 4 bytes from [0x1010] +0x11c94.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xdab6ae0, `sw` at 0xdab6b2c, `sw` at 0xdab6b58.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x9d7, including `lbu` at 0xdab6b04, `lbu` at 0xdab6ba0.
  The `lbu` at 0xdab6b34 loads 1 byte from [0x1010] +0x9d4.
  The `lbu` at 0xdab6b60 loads 1 byte from [0x1010] +0x9d5.
  The `lbu` at 0xdab6b7c loads 1 byte from [0x1010] +0x9d6.
  The `lw` at 0xdab6be4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a8.
  The `lw` at 0xdab6d38 loads 4 bytes from [0x1010] +0x4b8.
  The `lw` at 0xdab6df0 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdab6df8 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xdab6dfc stores 4 bytes to abs 0x1018.
  The `lw` at 0xdab6e00 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdab6e04 stores 4 bytes to [0x1010] +0x2d44.
  The `sw` at 0xdab6e0c stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5ac.
  The `sw` at 0xdab6e14 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0x544.
  The `jalr` at 0xdab67fc calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab6820 calls __glOdysseyGetCurrentTexture [0xdab5aa0] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xdab68bc calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab68d8 calls memset with a0=sp-56, a1=0x0, a2=0x38, a3=?.
  The `jalr` at 0xdab6904 calls __glSpecElementsPerGroup [0xdaf8340] with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xdab691c calls __glSpecBytesPerElement [0xdaf8444] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6a2c calls memset with a0=sp-112, a1=0x0, a2=0x38, a3=?.
  The `jalr` at 0xdab6aa8 calls GetImageFmtEnumFromBuzzTexFormat [0xdab5b58] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432], a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6bf4 calls __glOdysseyImageXfer [0xda6af2c] with a0=sp-112, a1=sp-56, a2=sp-128, a3=0x0.
  The `jalr` at 0xdab6c78 calls ceilf with a0=sp-112, a1=sp-56, a2=sp-128, a3=?.
  The `jalr` at 0xdab6da8 calls __glOdysseyImageXfer [0xda6af2c] with a0=sp-112, a1=sp-56, a2=sp-128, a3=0x0.
  The `beql` branch at 0xdab67d8 targets 0xdab6e1c, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `lw ra,44(sp)` at 0xdab67dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab67e8 targets 0xdab6814, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `beq` branch at 0xdab6858 targets 0xdab68cc, is taken when t6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) == 0, and falls through when t6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) != 0.
  The `beq` branch at 0xdab6860 targets 0xdab689c, is taken when v0(=a0) == at(=0xde0), and falls through when v0(=a0) != at(=0xde0).
  The `beq` branch at 0xdab6868 targets 0xdab6888, is taken when v0(=a0) == at(=0xde1), and falls through when v0(=a0) != at(=0xde1).
  The `bne` branch at 0xdab6870 targets 0xdab68b4, is taken when v0(=a0) != at(=0x806f), and falls through when v0(=a0) == at(=0x806f).
  The `beq` branch at 0xdab68ac targets 0xdab68cc and is always taken.
  The `beq` branch at 0xdab68c4 targets 0xdab6e18 and is always taken.
  The `bne` branch at 0xdab693c targets 0xdab6950, is taken when t2(=[[0x1010]+1224]) != at(=0x85a3), and falls through when t2(=[[0x1010]+1224]) == at(=0x85a3).
  The `beq` branch at 0xdab6948 targets 0xdab6954 and is always taken.
  The `beql` branch at 0xdab695c targets 0xdab6970, is taken when v0(=[[0x1010]+1192]) == 0, and falls through when v0(=[[0x1010]+1192]) != 0; its branch-likely delay slot `sw t4,208(sp)` at 0xdab6960 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6964 targets 0xdab6970 and is always taken.
  The `beql` branch at 0xdab6978 targets 0xdab698c, is taken when v0(=[[0x1010]+1212]) == 0, and falls through when v0(=[[0x1010]+1212]) != 0; its branch-likely delay slot `sw t5,212(sp)` at 0xdab697c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6980 targets 0xdab698c and is always taken.
  The `beql` branch at 0xdab6994 targets 0xdab69a8, is taken when v0(=[[0x1010]+1204]) >= s1(?) (unsigned), and falls through when v0(=[[0x1010]+1204]) < s1(?) (unsigned); its branch-likely delay slot `sw v0,216(sp)` at 0xdab6998 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab699c targets 0xdab69a8 and is always taken.
  The `bgez` branch at 0xdab69b4 targets 0xdab69c8, is taken when t6(=[[0x1010]+1200]) >= 0 (signed), and falls through when t6(=[[0x1010]+1200]) < 0 (signed).
  The `bgez` branch at 0xdab69d8 targets 0xdab69ec, is taken when t7(=[[0x1010]+1196]) >= 0 (signed), and falls through when t7(=[[0x1010]+1196]) < 0 (signed).
  The `beq` branch at 0xdab6af0 targets 0xdab6b00, is taken when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == 0, and falls through when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != 0.
  The `bnel` branch at 0xdab6af8 targets 0xdab6b34, is taken when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != at(=0x8), and falls through when s0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == at(=0x8); its branch-likely delay slot `lw t7,31612(s2)` at 0xdab6afc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6b28 targets 0xdab6b5c and is always taken.
  The `beql` branch at 0xdab6be0 targets 0xdab6c08, is taken when t2(=a0) == at(=0x806f), and falls through when t2(=a0) != at(=0x806f); its branch-likely delay slot `lw t3,16(v1)` at 0xdab6be4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6bfc targets 0xdab6dd4 and is always taken.
  The `bgez` branch at 0xdab6c44 targets 0xdab6c58, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `bgez` branch at 0xdab6c58 targets 0xdab6c70, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bgez` branch at 0xdab6c94 targets 0xdab6ca8, is taken when t3(?) >= 0 (signed), and falls through when t3(?) < 0 (signed).
  The `beql` branch at 0xdab6cd8 targets 0xdab6d28, is taken when (t5(?) & 0x78) == 0, and falls through when (t5(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t5,$f10` at 0xdab6cdc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab6d04 targets 0xdab6d1c, is taken when (t5(?) & 0x78) != 0, and falls through when (t5(?) & 0x78) == 0.
  The `beq` branch at 0xdab6d14 targets 0xdab6d34 and is always taken.
  The `beq` branch at 0xdab6d1c targets 0xdab6d34 and is always taken.
  The `bltz` branch at 0xdab6d2c targets 0xdab6d1c, is taken when t5(?) < 0 (signed), and falls through when t5(?) >= 0 (signed).
  The `beql` branch at 0xdab6d64 targets 0xdab6dd8, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw t9,88(sp)` at 0xdab6d68 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab6dcc targets 0xdab6d7c, is taken when v1(?) != t4(?), and falls through when v1(?) == t4(?).
  The return at 0xdab6e28 has v0 = ?.
  The instructions from 0xdab696c to 0xdab696c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6988 to 0xdab6988 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab69a4 to 0xdab69a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6b30 to 0xdab6b30 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6c04 to 0xdab6c04 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6d24 to 0xdab6d24 are not reached by any path from the entry, and their branches are not listed.
- `LoadTextureFromReadable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab6e30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab6e30-0xdab7238 (1032 bytes).
  It occupies 1032 bytes.
  The `lw` at 0xdab6e68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdab6e84 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdab6eb0 stores 4 bytes to [0x1010] +0x164c0.
  4 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0, including `lw` at 0xdab6ee4, `lw` at 0xdab6f14, `lw` at 0xdab6f28.
  The `lw` at 0xdab6fec loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x534.
  The `lw` at 0xdab7000 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a4.
  The `lw` at 0xdab700c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4.
  The `lw` at 0xdab7014 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  The `lw` at 0xdab701c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a0.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x59c, including `lw` at 0xdab7024, `lw` at 0xdab702c, `lw` at 0xdab7180.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x598, including `lw` at 0xdab7038, `lw` at 0xdab7074.
  The `lw` at 0xdab7060 loads 4 bytes from [0x1010] +0x11c94.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b7c, including `lw` at 0xdab706c, `lw` at 0xdab7090, `lw` at 0xdab7094.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xdab7070, `sw` at 0xdab70c0, `sw` at 0xdab70ec.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x9d7, including `lbu` at 0xdab7098, `lbu` at 0xdab7134.
  The `lbu` at 0xdab70c8 loads 1 byte from [0x1010] +0x9d4.
  The `lbu` at 0xdab70f4 loads 1 byte from [0x1010] +0x9d5.
  The `lbu` at 0xdab7110 loads 1 byte from [0x1010] +0x9d6.
  The `lw` at 0xdab717c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5a8.
  The `lw` at 0xdab71f8 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdab7208 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xdab720c stores 4 bytes to abs 0x1018.
  The `lw` at 0xdab7210 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdab7214 stores 4 bytes to [0x1010] +0x2d44.
  The `sw` at 0xdab7218 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5ac.
  The `sw` at 0xdab7220 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0x544.
  The `jalr` at 0xdab6e9c calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab6ec0 calls __glOdysseyGetCurrentTexture [0xdab5aa0] with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xdab6f58 calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdab6fc0 calls memset with a0=sp-56, a1=0x0, a2=0x38, a3=?.
  The `jalr` at 0xdab7040 calls GetImageFmtEnumFromBuzzTexFormat [0xdab5b58] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432], a1=?, a2=?, a3=?.
  The `jalr` at 0xdab71d4 calls __glOdysseyImageXfer [0xda6af2c] with a0=sp-56, a1=[0x1010]+72912, a2=sp-72, a3=0x0.
  The `beql` branch at 0xdab6e74 targets 0xdab7228, is taken when t8(?) == 0, and falls through when t8(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xdab6e78 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab6e88 targets 0xdab6eb4, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `beq` branch at 0xdab6ef0 targets 0xdab6f68, is taken when t5(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) == 0, and falls through when t5(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) != 0.
  The `beq` branch at 0xdab6efc targets 0xdab6f38, is taken when v0(=a0) == at(=0xde0), and falls through when v0(=a0) != at(=0xde0).
  The `beq` branch at 0xdab6f04 targets 0xdab6f24, is taken when v0(=a0) == at(=0xde1), and falls through when v0(=a0) != at(=0xde1).
  The `bne` branch at 0xdab6f0c targets 0xdab6f50, is taken when v0(=a0) != at(=0x806f), and falls through when v0(=a0) == at(=0x806f).
  The `beq` branch at 0xdab6f48 targets 0xdab6f68 and is always taken.
  The `beq` branch at 0xdab6f60 targets 0xdab7224 and is always taken.
  The `beq` branch at 0xdab7080 targets 0xdab7094, is taken when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == 0, and falls through when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != 0.
  The `bnel` branch at 0xdab708c targets 0xdab70c8, is taken when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) != at(=0x8), and falls through when v1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1432]) == at(=0x8); its branch-likely delay slot `lw t5,31612(s0)` at 0xdab7090 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdab70bc targets 0xdab70f0 and is always taken.
  The `bne` branch at 0xdab7174 targets 0xdab71b8, is taken when t6(=a0) != at(=0x806f), and falls through when t6(=a0) == at(=0x806f).
  The return at 0xdab7230 has v0 = ?.
  The instructions from 0xdab70c4 to 0xdab70c4 are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabec14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabec14-0xdabeedc (712 bytes).
  It occupies 712 bytes.
  The `lw` at 0xdabec3c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabec44 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x164bc, including `lw` at 0xdabed14, `lw` at 0xdabedc0.
  The `lw` at 0xdabed3c loads 4 bytes from [0x1010] +0x0.
  The `lw` at 0xdabedd4 loads 4 bytes from ret(?) +0x0.
  The `sw` at 0xdabede0 stores 4 bytes to ret(?) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabede4, `lw` at 0xdabee18, `lw` at 0xdabee24.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdabee2c, `sw` at 0xdabee54, `sw` at 0xdabee68.
  The `lw` at 0xdabee6c loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabee7c stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabee84 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdabee88 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdabee8c stores 4 bytes to [0x1010] +0x2d44.
  The `lw` at 0xdabee90 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdabeec4 stores 4 bytes to [0x1010] +0x164c0.
  The `jalr` at 0xdabec58 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabecc0 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabed1c calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xdabed48 calls (unknown callee) with a0=[0x1010], a1=0x9d8, a2=?, a3=?.
  The `jalr` at 0xdabed68 calls __glSetError [0xdb1ac34] with a0=0x505, a1=?, a2=?, a3=ret(?).
  The `jalr` at 0xdabed9c calls InitTextureObject [0xdab53e0] with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=ret(?).
  The `jalr` at 0xdabedbc calls __glNamesNewData [0xdb3d17c] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=ret(?).
  The `jalr` at 0xdabedf8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabee3c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xdabeeb0 calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?.
  The `bne` branch at 0xdabec48 targets 0xdabec68, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabec60 targets 0xdabeec8 and is always taken.
  The `beq` branch at 0xdabec6c targets 0xdabec98, is taken when t7(=a0) == at(=0xde0), and falls through when t7(=a0) != at(=0xde0).
  The `beq` branch at 0xdabec78 targets 0xdabeca0, is taken when t7(=a0) == at(=0xde1), and falls through when t7(=a0) != at(=0xde1).
  The `beq` branch at 0xdabec80 targets 0xdabecb0, is taken when t7(=a0) == at(=0x806f), and falls through when t7(=a0) != at(=0x806f).
  The `beq` branch at 0xdabec88 targets 0xdabeca8, is taken when t7(=a0) == at(=0x8095), and falls through when t7(=a0) != at(=0x8095).
  The `beq` branch at 0xdabec90 targets 0xdabecb8 and is always taken.
  The `beq` branch at 0xdabec98 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabeca0 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabeca8 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabecb0 targets 0xdabecd0 and is always taken.
  The `beq` branch at 0xdabecc8 targets 0xdabeec8 and is always taken.
  The `bne` branch at 0xdabecd0 targets 0xdabed08, is taken when t8(=a1) != 0, and falls through when t8(=a1) == 0.
  The `beq` branch at 0xdabed00 targets 0xdabed30 and is always taken.
  The `bne` branch at 0xdabed30 targets 0xdabede4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0xdabed58 targets 0xdabed78, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xdabed70 targets 0xdabeec8 and is always taken.
  The `beq` branch at 0xdabedcc targets 0xdabeec8, is taken when v0(=ret(__glNamesNewData)) == 0, and falls through when v0(=ret(__glNamesNewData)) != 0.
  The `beq` branch at 0xdabeddc targets 0xdabee08 and is always taken.
  The `beql` branch at 0xdabede8 targets 0xdabee0c, is taken when t3(=a0) == t4(?), and falls through when t3(=a0) != t4(?); its branch-likely delay slot `sll t5,t0,0x2` at 0xdabedec runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabee00 targets 0xdabeec8 and is always taken.
  The `beql` branch at 0xdabee28 targets 0xdabee58, is taken when t6(?) == 0, and falls through when t6(?) != 0; its branch-likely delay slot `sw a3,25772(v1)` at 0xdabee2c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdabee94 targets 0xdabeecc, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdabee98 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdabee9c targets 0xdabeecc, is taken when a3(?) == a1(=[[0x1010]+91328]), and falls through when a3(?) != a1(=[[0x1010]+91328]); its branch-likely delay slot `lw ra,28(sp)` at 0xdabeea0 runs only when taken and is annulled on fall-through.
  The return at 0xdabeed4 has v0 = one of [0x1010]+65536, ?.
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabeedc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabeedc-0xdabf170 (660 bytes).
  It occupies 660 bytes.
  The `lw` at 0xdabef20 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabef30 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabef70 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdabef7c loads 4 bytes from [0x1010] +0x164bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x164c0, including `lw` at 0xdabef9c, `lw` at 0xdabf0fc.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabefa4, `lw` at 0xdabefac, `lw` at 0xdabefb4.
  The `lw` at 0xdabefa8 loads 4 bytes from [[0x1010]+91328] +0x8.
  The `sw` at 0xdabefd8 stores 4 bytes to [0x1010] +0x164c0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdabf07c, `sw` at 0xdabf080.
  The `lw` at 0xdabf084 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdabf09c stores 4 bytes to [0x1010] +0x168d0.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdabf0a4, `sw` at 0xdabf134.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xdabf0a8, `lw` at 0xdabf138.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xdabf0ac, `sw` at 0xdabf13c.
  The `lw` at 0xdabf118 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabf12c stores 4 bytes to [0x1010] +0x168d4.
  The `jalr` at 0xdabef3c calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabef60 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabefc4 calls __glOdysseyTextureDeactivate [0xdab8908] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?.
  The `jalr` at 0xdabf000 calls __glNamesDeleteRange [0xdb3e580] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf034 calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xdabf0d8 calls __glNamesDeleteRange [0xdb3e580] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf110 calls __glNamesDeleteRange [0xdb3e580] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bne` branch at 0xdabef2c targets 0xdabef4c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabef44 targets 0xdabf140 and is always taken.
  The `bgezl` branch at 0xdabef50 targets 0xdabef70, is taken when t7(=a0) >= 0 (signed), and falls through when t7(=a0) < 0 (signed); its branch-likely delay slot `lw t8,120(sp)` at 0xdabef54 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xdabef84 targets 0xdabf100, is taken when t8(=a0) <= 0 (signed), and falls through when t8(=a0) > 0 (signed).
  The `beql` branch at 0xdabefa0 targets 0xdabefe0, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0; its branch-likely delay slot `lw v0,0(s4)` at 0xdabefa4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdabefb0 targets 0xdabefe0, is taken when t1(=[[[0x1010]+91328]+8]) != t2(?), and falls through when t1(=[[[0x1010]+91328]+8]) == t2(?); its branch-likely delay slot `lw v0,0(s4)` at 0xdabefb4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdabefe8 targets 0xdabf018, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xdabf010 targets 0xdabf0ec and is always taken.
  The `bnel` branch at 0xdabf024 targets 0xdabf0bc, is taken when t3(?) != v0(?), and falls through when t3(?) == v0(?); its branch-likely delay slot `addiu s0,s0,1` at 0xdabf028 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabf0b0 targets 0xdabf0c4 and is always taken.
  The `bne` branch at 0xdabf0bc targets 0xdabf01c, is taken when s0(?) != s3(=0x4), and falls through when s0(?) == s3(=0x4).
  The `beq` branch at 0xdabf0c4 targets 0xdabf0ec, is taken when s5(?) == v0(?), and falls through when s5(?) != v0(?).
  The `bnel` branch at 0xdabf0f8 targets 0xdabefa0, is taken when s4(?) != t1(=((a0 << 0x2) + a1)), and falls through when s4(?) == t1(=((a0 << 0x2) + a1)); its branch-likely delay slot `lw a1,25792(s7)` at 0xdabf0fc runs only when taken and is annulled on fall-through.
  The return at 0xdabf168 has v0 = one of ret(__glSetError), ret(__glNamesDeleteRange).
  The instructions from 0xdabf0b8 to 0xdabf0b8 are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf170 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf170-0xdabf21c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xdabf18c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf19c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf204 loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabf1b4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdabf1d4 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdabf200 calls __glNamesGenNames [0xdb3e9f4] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `bne` branch at 0xdabf1a4 targets 0xdabf1c4, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf1bc targets 0xdabf20c and is always taken.
  The `bgez` branch at 0xdabf1c4 targets 0xdabf1e4, is taken when a2(=a0) >= 0 (signed), and falls through when a2(=a0) < 0 (signed).
  The `beq` branch at 0xdabf1dc targets 0xdabf20c and is always taken.
  The `beql` branch at 0xdabf1e4 targets 0xdabf210, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdabf1e8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabf1ec targets 0xdabf20c, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The return at 0xdabf214 has v0 = one of 0x1000, ?.
- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf29c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf29c-0xdabf438 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0xdabf2e4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf2f8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf350 loads 4 bytes from ?.
  The `lw` at 0xdabf380 loads 4 bytes from [0x1010] +0x164bc.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xdabf3d4, `sb` at 0xdabf3dc.
  The `jalr` at 0xdabf304 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf328 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf364 calls __glSetError [0xdb1ac34] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabf384 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf3a0 calls __glSetError [0xdb1ac34] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabf3c0 calls __glOdysseyIsTextureResident [0xdabf21c] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabf3ec calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `bne` branch at 0xdabf2f4 targets 0xdabf318, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf310 targets 0xdabf408 and is always taken.
  The `bgez` branch at 0xdabf318 targets 0xdabf33c, is taken when s7(=a0) >= 0 (signed), and falls through when s7(=a0) < 0 (signed).
  The `beq` branch at 0xdabf334 targets 0xdabf408 and is always taken.
  The `blez` branch at 0xdabf33c targets 0xdabf404, is taken when s7(=a0) <= 0 (signed), and falls through when s7(=a0) > 0 (signed).
  The `bne` branch at 0xdabf354 targets 0xdabf378, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xdabf370 targets 0xdabf408 and is always taken.
  The `bne` branch at 0xdabf390 targets 0xdabf3b4, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `beq` branch at 0xdabf3ac targets 0xdabf408 and is always taken.
  The `beq` branch at 0xdabf3c8 targets 0xdabf3d8, is taken when v0(=ret(__glOdysseyIsTextureResident)) == 0, and falls through when v0(=ret(__glOdysseyIsTextureResident)) != 0.
  The `beq` branch at 0xdabf3d0 targets 0xdabf3e0 and is always taken.
  The `bne` branch at 0xdabf3fc targets 0xdabf350, is taken when s2(?) != s7(=a0), and falls through when s2(?) == s7(=a0).
  The return at 0xdabf430 has v0 = one of 0x0, ?.
- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf478 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf478-0xdabf5f8 (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0xdabf4b8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf4d0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf524 loads 4 bytes from ?.
  The `lw` at 0xdabf538 loads 4 bytes from [0x1010] +0x164bc.
  The `lwc1` at 0xdabf554 loads 4 bytes from ?.
  The `lw` at 0xdabf560 loads 4 bytes from [0x1010] +0xdd0.
  The `swc1` at 0xdabf574 stores 4 bytes to ret(__glNamesLockData) +0x3c.
  The `lw` at 0xdabf5a4 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabf5b4 stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabf5bc stores 4 bytes to abs 0x1018.
  The `lw` at 0xdabf5c0 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdabf5c4 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdabf4dc calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf4fc calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabf53c calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabf568 calls Clampf [0xdabf438] with a0=?, a1=?, a2=[[0x1010]+3536], a3=?; fp f14=f20.
  The `jalr` at 0xdabf584 calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `bne` branch at 0xdabf4cc targets 0xdabf4ec, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf4e4 targets 0xdabf5c8 and is always taken.
  The `bgez` branch at 0xdabf4ec targets 0xdabf508, is taken when s5(=a0) >= 0 (signed), and falls through when s5(=a0) < 0 (signed).
  The `blez` branch at 0xdabf508 targets 0xdabf59c, is taken when s5(=a0) <= 0 (signed), and falls through when s5(=a0) > 0 (signed).
  The `beql` branch at 0xdabf528 targets 0xdabf594, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `addiu s1,s1,4` at 0xdabf52c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdabf548 targets 0xdabf590, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xdabf594 targets 0xdabf524, is taken when s1(?) != s4(=((a0 << 0x2) + a1)), and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  The return at 0xdabf5f0 has v0 = one of ret(__glSetError), ?.
- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf5f8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf5f8-0xdabf6ac (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdabf614 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabf624 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabf660 loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabf630 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdabf664 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdabf68c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=[0x1010].
  The `bne` branch at 0xdabf620 targets 0xdabf644, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdabf63c targets 0xdabf69c and is always taken.
  The `bne` branch at 0xdabf644 targets 0xdabf654, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0xdabf64c targets 0xdabf69c and is always taken.
  The `bne` branch at 0xdabf674 targets 0xdabf684, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `beq` branch at 0xdabf67c targets 0xdabf69c and is always taken.
  The return at 0xdabf6a4 has v0 = one of 0x0, 0x1.
- `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6680 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6680-0xdad67c0 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xdad66ac loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `lwc1` at 0xdad66ec loads 4 bytes from a1 (arg1 at entry) +0x20.
  The `lwc1` at 0xdad670c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lwc1` at 0xdad6720 loads 4 bytes from a1 (arg1 at entry) +0x28.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdcc, including `lwc1` at 0xdad6770, `lwc1` at 0xdad6778, `lwc1` at 0xdad6788.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xdad6780, `swc1` at 0xdad67a0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xdad6798, `swc1` at 0xdad67a8.
  The `jalr` at 0xdad66b8 calls (unknown callee) with a0=sp-16, a1=a1+96, a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jalr` at 0xdad66d8 calls Dot [0xdad6650] with a0=a1+32, a1=sp-16, a2=?, a3=a1 at entry (arg1).
  The `bc1tl` branch at 0xdad676c targets 0xdad67a0, is taken when f8 == f10 (c.eq.s at 0xdad6764), and falls through when not (f8 == f10 (c.eq.s at 0xdad6764)); its branch-likely delay slot `lwc1 $f10,3532(s0)` at 0xdad6770 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdad6794 targets 0xdad67ac and is always taken.
  The return at 0xdad67b8 has v0 = ret(Dot).
  The instructions from 0xdad679c to 0xdad679c are not reached by any path from the entry, and their branches are not listed.
- `grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf350 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadf350-0xdadf54c (508 bytes).
  It occupies 508 bytes.
  The `lw` at 0xdadf360 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdadf374, `lw` at 0xdadf3b4.
  The `lw` at 0xdadf384 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0xdadf3b8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdadf3d0, `lw` at 0xdadf42c, `lw` at 0xdadf460.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xdadf3d4, `lw` at 0xdadf430, `lw` at 0xdadf464.
  The `lw` at 0xdadf3f4 loads 4 bytes from [0x1010] +0x8.
  The `sw` at 0xdadf420 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdadf448, `lw` at 0xdadf450, `lw` at 0xdadf458.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0xdadf480, `lw` at 0xdadf4b0.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdadf484, `sw` at 0xdadf48c, `sw` at 0xdadf490.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0xdadf4c0, `lw` at 0xdadf4d0.
  The `sw` at 0xdadf514 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lw` at 0xdadf518 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0xdadf51c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xdadf524 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xdadf52c stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `sw` at 0xdadf538 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `jalr` at 0xdadf38c calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0).
  The `jalr` at 0xdadf3fc calls (unknown callee) with a0=[0x1010], a1=[a0+28], a2=?, a3=a0 at entry (arg0).
  The `bne` branch at 0xdadf3a0 targets 0xdadf3b0, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xdadf3a8 targets 0xdadf53c and is always taken.
  The `bne` branch at 0xdadf41c targets 0xdadf42c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xdadf424 targets 0xdadf53c and is always taken.
  The `bnel` branch at 0xdadf47c targets 0xdadf4b4, is taken when t0(=([a0+4] + a1)) < v0(=[a0+4]) (signed), and falls through when t0(=([a0+4] + a1)) >= v0(=[a0+4]) (signed); its branch-likely delay slot `lw t5,20(a3)` at 0xdadf480 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0xdadf488 targets 0xdadf494, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0xdadf4a4 targets 0xdadf484, is taken when t0(=([a0+4] + a1)) >= v0(?) (signed), and falls through when t0(=([a0+4] + a1)) < v0(?) (signed).
  The `beql` branch at 0xdadf4b4 targets 0xdadf514, is taken when t5(=[a0+20]) == 0, and falls through when t5(=[a0+20]) != 0; its branch-likely delay slot `lw t6,4(a3)` at 0xdadf4b8 runs only when taken and is annulled on fall-through.
  The return at 0xdadf544 has v0 = one of -0x1, 0x0.
- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb0ab58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb0ab58-0xdb0ac9c (324 bytes).
  It occupies 324 bytes.
  The `lw` at 0xdb0ab74 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb0ab7c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb0abc0 loads 4 bytes from table(0xdbbc6cc) +0x0.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x760, including `sw` at 0xdb0abdc, `sw` at 0xdb0ac00, `sw` at 0xdb0ac1c.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc8e, including `lbu` at 0xdb0ac04, `lbu` at 0xdb0ac28.
  The `lw` at 0xdb0ac40 loads 4 bytes from [0x1010] +0xcd8.
  The `sw` at 0xdb0ac74 stores 4 bytes to [0x1010] +0x764.
  The `sw` at 0xdb0ac7c stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb0ac80 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb0ac88 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb0ab90 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb0abe8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb0ac64 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb0ab80 targets 0xdb0aba0, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb0ab98 targets 0xdb0ac8c and is always taken.
  The `beq` branch at 0xdb0aba0 targets 0xdb0abd0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xdb0abac targets 0xdb0ac5c, is taken when t7(=a0-1024) >= 0xd (unsigned), and falls through when t7(=a0-1024) < 0xd (unsigned).
  The `bne` branch at 0xdb0abd0 targets 0xdb0ac5c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xdb0abd8 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0abf0 targets 0xdb0ac8c and is always taken.
  The `beq` branch at 0xdb0abfc targets 0xdb0ac74 and is always taken.
  The `bne` branch at 0xdb0ac10 targets 0xdb0ac20, is taken when t9(=[[0x1010]+3214]:1) != 0, and falls through when t9(=[[0x1010]+3214]:1) == 0.
  The `beq` branch at 0xdb0ac18 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac20 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac30 targets 0xdb0abe0, is taken when t2(=[[0x1010]+3214]:1) == 0, and falls through when t2(=[[0x1010]+3214]:1) != 0.
  The `beq` branch at 0xdb0ac38 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac4c targets 0xdb0abe0, is taken when t5(=a0-1033) >= t4(=[[0x1010]+3288]) (signed), and falls through when t5(=a0-1033) < t4(=[[0x1010]+3288]) (signed).
  The `beq` branch at 0xdb0ac54 targets 0xdb0ac74 and is always taken.
  The `beq` branch at 0xdb0ac6c targets 0xdb0ac8c and is always taken.
  The return at 0xdb0ac94 has v0 = one of ret(__glSetError), [0x1010].
  The indirect jump at 0xdb0abc8 uses the jump table at 0xdbbc6cc with targets 0xdb0abf8, 0xdb0abe0, 0xdb0ac28, 0xdb0abe0, 0xdb0abf8, 0xdb0ac28, 0xdb0ac04, 0xdb0abe0, 0xdb0ac04, 0xdb0ac40, 0xdb0ac40, 0xdb0ac40, 0xdb0ac40.
- `StoreGREATER` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d2d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d2d0-0xdb1d340 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d2d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d2d4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d2d8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d2dc loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d2e0 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d2e4 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d2f4 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d31c loads 4 bytes from ?.
  The `sw` at 0xdb1d32c stores 4 bytes to ?.
  The `beq` branch at 0xdb1d324 targets 0xdb1d338, is taken when t2(?) >= v1(?) (unsigned), and falls through when t2(?) < v1(?) (unsigned).
  The return at 0xdb1d330 has v0 = 0x1.
  The return at 0xdb1d338 has v0 = 0x0.
- `StoreGREATER_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d340 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d340-0xdb1d3b0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d340 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d344 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d348 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d34c loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d350 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d354 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d364 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d38c loads 4 bytes from ?.
  The `sw` at 0xdb1d39c stores 4 bytes to ?.
  The `beq` branch at 0xdb1d394 targets 0xdb1d3a8, is taken when t2(?) >= v1(?) (signed), and falls through when t2(?) < v1(?) (signed).
  The return at 0xdb1d3a0 has v0 = 0x1.
  The return at 0xdb1d3a8 has v0 = 0x0.
- `StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d41c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d41c-0xdb1d48c (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d41c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d420 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d424 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d428 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d42c loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d430 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d440 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d468 loads 4 bytes from ?.
  The `sw` at 0xdb1d478 stores 4 bytes to ?.
  The `bne` branch at 0xdb1d470 targets 0xdb1d484, is taken when v1(?) < t2(?) (unsigned), and falls through when v1(?) >= t2(?) (unsigned).
  The return at 0xdb1d47c has v0 = 0x1.
  The return at 0xdb1d484 has v0 = 0x0.
- `StoreGEQUAL_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d48c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d48c-0xdb1d4fc (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb1d48c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d490 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d494 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d498 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d49c loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d4a0 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d4b0 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d4d8 loads 4 bytes from ?.
  The `sw` at 0xdb1d4e8 stores 4 bytes to ?.
  The `bne` branch at 0xdb1d4e0 targets 0xdb1d4f4, is taken when v1(?) < t2(?) (signed), and falls through when v1(?) >= t2(?) (signed).
  The return at 0xdb1d4ec has v0 = 0x1.
  The return at 0xdb1d4f4 has v0 = 0x0.
- `StoreGREATER_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d714 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d714-0xdb1d76c (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdb1d714 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d718 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d71c loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d720 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d724 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d734 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d738 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d75c loads 4 bytes from ?.
  The return at 0xdb1d764 has v0 = ?.
- `StoreGREATER_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d76c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d76c-0xdb1d7c4 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0xdb1d76c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d770 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d774 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d778 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d77c loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d78c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d790 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d7b4 loads 4 bytes from ?.
  The return at 0xdb1d7bc has v0 = ?.
- `StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d820 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d820-0xdb1d87c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xdb1d820 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d824 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d828 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d82c loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d830 loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d840 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d844 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d868 loads 4 bytes from ?.
  The return at 0xdb1d874 has v0 = ?.
- `StoreGEQUAL_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d87c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d87c-0xdb1d8d8 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0xdb1d87c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb1d880 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb1d884 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb1d888 loads 4 bytes from [a0] +0x79ac.
  The `lw` at 0xdb1d88c loads 4 bytes from [a0] +0x79a4.
  The `lw` at 0xdb1d89c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb1d8a0 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb1d8c4 loads 4 bytes from ?.
  The return at 0xdb1d8d0 has v0 = ?.
- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60970 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60970-0xdb609bc (76 bytes).
  It occupies 76 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb60998, `lw` at 0xdb6099c, `lw` at 0xdb609a8.
  The `beq` branch at 0xdb60974 targets 0xdb60994, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb6097c targets 0xdb6099c, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb60984 targets 0xdb609a8, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb6098c targets 0xdb609b4 and is always taken.
  The return at 0xdb60994 has v0 = [a0+2476].
  The return at 0xdb609a0 has v0 = [a0+2476]+224.
  The return at 0xdb609ac has v0 = [a0+2476]+448.
  The return at 0xdb609b4 has v0 = 0x0.
- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb609bc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb609bc-0xdb60a0c (80 bytes).
  It occupies 80 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb609e0, `lw` at 0xdb609ec, `lw` at 0xdb609f8.
  The `beq` branch at 0xdb609c0 targets 0xdb609e0, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb609c8 targets 0xdb609ec, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb609d0 targets 0xdb609f8, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb609d8 targets 0xdb60a04 and is always taken.
  The return at 0xdb609e4 has v0 = [a0+2476]+216.
  The return at 0xdb609f0 has v0 = [a0+2476]+440.
  The return at 0xdb609fc has v0 = [a0+2476]+664.
  The return at 0xdb60a04 has v0 = 0x0.
- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60a0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60a0c-0xdb60a98 (140 bytes).
  It occupies 140 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d7c, including `lw` at 0xdb60a48, `lw` at 0xdb60a54, `lw` at 0xdb60a60.
  The `lw` at 0xdb60a50 loads 4 bytes from [a0+28028] +0x0.
  The `lw` at 0xdb60a5c loads 4 bytes from [a0+28028] +0x4.
  The `lw` at 0xdb60a68 loads 4 bytes from [a0+28028] +0x8.
  The `lw` at 0xdb60a74 loads 4 bytes from [a0+28028] +0xc.
  The `lw` at 0xdb60a80 loads 4 bytes from [a0+28028] +0x10.
  The `lw` at 0xdb60a8c loads 4 bytes from [a0+28028] +0x14.
  The `beq` branch at 0xdb60a10 targets 0xdb60a48, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb60a18 targets 0xdb60a54, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb60a20 targets 0xdb60a6c, is taken when a1 == at(=0x8063), and falls through when a1 != at(=0x8063).
  The `beq` branch at 0xdb60a28 targets 0xdb60a78, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xdb60a30 targets 0xdb60a60, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb60a38 targets 0xdb60a84, is taken when a1 == at(=0x8070), and falls through when a1 != at(=0x8070).
  The `beq` branch at 0xdb60a40 targets 0xdb60a90 and is always taken.
  The return at 0xdb60a4c has v0 = [[a0+28028]].
  The return at 0xdb60a58 has v0 = [[a0+28028]+4].
  The return at 0xdb60a64 has v0 = [[a0+28028]+8].
  The return at 0xdb60a70 has v0 = [[a0+28028]+12].
  The return at 0xdb60a7c has v0 = [[a0+28028]+16].
  The return at 0xdb60a88 has v0 = [[a0+28028]+20].
  The return at 0xdb60a90 has v0 = 0x0.
- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60a98-0xdb60ae8 (80 bytes).
  It occupies 80 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d80, including `lw` at 0xdb60abc, `lw` at 0xdb60ac8, `lw` at 0xdb60ad4.
  The `lw` at 0xdb60ac4 loads 4 bytes from [a0+28032] +0x0.
  The `lw` at 0xdb60ad0 loads 4 bytes from [a0+28032] +0x4.
  The `lw` at 0xdb60adc loads 4 bytes from [a0+28032] +0x8.
  The `beq` branch at 0xdb60a9c targets 0xdb60abc, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb60aa4 targets 0xdb60ac8, is taken when a1 == at(=0xde1), and falls through when a1 != at(=0xde1).
  The `beq` branch at 0xdb60aac targets 0xdb60ad4, is taken when a1 == at(=0x806f), and falls through when a1 != at(=0x806f).
  The `beq` branch at 0xdb60ab4 targets 0xdb60ae0 and is always taken.
  The return at 0xdb60ac0 has v0 = [[a0+28032]].
  The return at 0xdb60acc has v0 = [[a0+28032]+4].
  The return at 0xdb60ad8 has v0 = [[a0+28032]+8].
  The return at 0xdb60ae0 has v0 = 0x0.
- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60bac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60bac-0xdb60bf0 (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0xdb60bd0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `sb` at 0xdb60bd4 stores 1 byte to a1 (arg1 at entry) +0xc.
  The `sw` at 0xdb60bd8 stores 4 bytes to a1 (arg1 at entry) +0xec.
  The `sw` at 0xdb60bdc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0xdb60be0 stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `sw` at 0xdb60be4 stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `swc1` at 0xdb60bec stores 4 bytes to a1 (arg1 at entry) +0xf0.
  The return at 0xdb60be8 has v0 = ?.
- `__glim_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb63294 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb63294-0xdb6332c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdb632c0 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb632dc loads 4 bytes from abs 0x1010.
  The `sb` at 0xdb632f8 stores 1 byte to [0x1010] +0x9d4.
  The `sb` at 0xdb632fc stores 1 byte to [0x1010] +0x9d5.
  The `sb` at 0xdb63300 stores 1 byte to [0x1010] +0x9d6.
  The `sb` at 0xdb63304 stores 1 byte to [0x1010] +0x9d7.
  The `sw` at 0xdb6330c stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb63310 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb63318 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb632e8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdb632d8 targets 0xdb632f8, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb632f0 targets 0xdb6331c and is always taken.
  The return at 0xdb63324 has v0 = one of ret(__glSetError), [0x1010].
- `IsTextureConsistent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb646f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb646f0-0xdb64860 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0xdb646f8 loads 4 bytes from a1 (arg1 at entry) +0xe4.
  The `lw` at 0xdb646fc loads 4 bytes from [a1+228] +0x4.
  The `lw` at 0xdb64708 loads 4 bytes from [a1+228] +0x8.
  The `lw` at 0xdb64714 loads 4 bytes from [a1+228] +0xc.
  The `lw` at 0xdb64724 loads 4 bytes from a0 (arg0 at entry) +0x9b0.
  The `lw` at 0xdb64734 loads 4 bytes from [a1+228] +0x38.
  The `lw` at 0xdb64738 loads 4 bytes from a0 (arg0 at entry) +0xe8c.
  The `lw` at 0xdb6473c loads 4 bytes from [a0+2480] +0x0.
  The `lw` at 0xdb64750 loads 4 bytes from [a1+228] +0x40.
  The `lw` at 0xdb64758 loads 4 bytes from [a1+228] +0x3c.
  The `lw` at 0xdb64780 loads 4 bytes from a1 (arg1 at entry) +0x10.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdb647fc, `lw` at 0xdb64808, `lw` at 0xdb64814.
  The `beq` branch at 0xdb64700 targets 0xdb64728, is taken when t2(=[[a1+228]+4]) == 0, and falls through when t2(=[[a1+228]+4]) != 0.
  The `beq` branch at 0xdb6470c targets 0xdb64728, is taken when t3(=[[a1+228]+8]) == 0, and falls through when t3(=[[a1+228]+8]) != 0.
  The `bnel` branch at 0xdb64720 targets 0xdb64734, is taken when t4(=[[a1+228]+12]) != 0, and falls through when t4(=[[a1+228]+12]) == 0; its branch-likely delay slot `lw t8,2480(t7)` at 0xdb64724 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb64754 targets 0xdb64778, is taken when t9(=[[a0+2480]]) != at(=0x2101), and falls through when t9(=[[a0+2480]]) == at(=0x2101).
  The `beq` branch at 0xdb64760 targets 0xdb64778, is taken when t5(=[[a1+228]+64]) == at(=0x1907), and falls through when t5(=[[a1+228]+64]) != at(=0x1907).
  The `beql` branch at 0xdb64768 targets 0xdb6477c, is taken when t5(=[[a1+228]+64]) == at(=0x1908), and falls through when t5(=[[a1+228]+64]) != at(=0x1908); its branch-likely delay slot `lw t6,4(sp)` at 0xdb6476c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb64784 targets 0xdb6479c, is taken when t2(=[a1+16]) == at(=0x2600), and falls through when t2(=[a1+16]) != at(=0x2600).
  The `beq` branch at 0xdb6478c targets 0xdb6479c, is taken when t2(=[a1+16]) == at(=0x2601), and falls through when t2(=[a1+16]) != at(=0x2601).
  The `bnel` branch at 0xdb64794 targets 0xdb647a8, is taken when t2(=[a1+16]) != at(=0x8146), and falls through when t2(=[a1+16]) == at(=0x8146); its branch-likely delay slot `slti at,t0,2` at 0xdb64798 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb647a8 targets 0xdb64854, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xdb647b4 targets 0xdb647c0, is taken when v0(?) != t4(=0x1), and falls through when v0(?) == t4(=0x1).
  The `beq` branch at 0xdb647bc targets 0xdb64854, is taken when v1(?) == t4(=0x1), and falls through when v1(?) != t4(=0x1).
  The `bne` branch at 0xdb647d4 targets 0xdb647e0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xdb647e4 targets 0xdb647f0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdb647f0 targets 0xdb647fc, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xdb64800 targets 0xdb64844, is taken when a3(=[[a1+228]+56]) != t8(?), and falls through when a3(=[[a1+228]+56]) == t8(?).
  The `bne` branch at 0xdb6480c targets 0xdb64844, is taken when t1(=[[a1+228]+60]) != t9(?), and falls through when t1(=[[a1+228]+60]) == t9(?).
  The `bne` branch at 0xdb6481c targets 0xdb64844, is taken when t6(?) != t7(?), and falls through when t6(?) == t7(?).
  The `bne` branch at 0xdb6482c targets 0xdb64844, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?).
  The `beq` branch at 0xdb6483c targets 0xdb6484c, is taken when t6(?) == t7(?), and falls through when t6(?) != t7(?).
  The `bne` branch at 0xdb6484c targets 0xdb647b4, is taken when t2(?) != t0(=[a0+3724]), and falls through when t2(?) == t0(=[a0+3724]).
  The return at 0xdb64728 has v0 = 0x0.
  The return at 0xdb64770 has v0 = 0x0.
  The return at 0xdb6479c has v0 = 0x1.
  The return at 0xdb64844 has v0 = 0x0.
  The return at 0xdb64858 has v0 = 0x1.
  The instructions from 0xdb64730 to 0xdb64730 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb647a4 to 0xdb647a4 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureSBModulateA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb6b1fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb6b1fc-0xdb6b274 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0xdb6b21c loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb6b220 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6b228 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb6b22c loads 4 bytes from [a0+28040] +0xc8.
  The `lw` at 0xdb6b238 loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `swc1` at 0xdb6b254 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6b258 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xdb6b260 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xdb6b240 calls __GL_TEXENV_CLAMP [0xdb6acf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3536], a3=a3 at entry (arg3).
  The return at 0xdb6b26c has v0 = a1.
- `__glTextureSBReplaceA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb6c338 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb6c338-0xdb6c3b8 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdb6c358 loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb6c35c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6c364 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb6c368 loads 4 bytes from [a0+28040] +0xc8.
  The `lw` at 0xdb6c36c loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `swc1` at 0xdb6c394 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb6c398 loads 4 bytes from a0 (arg0 at entry) +0x77a0.
  The `swc1` at 0xdb6c3a4 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jalr` at 0xdb6c380 calls __GL_TEXENV_CLAMP [0xdb6acf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3536], a3=a3 at entry (arg3).
  The return at 0xdb6c3b0 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glim_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb74c54 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb74c54-0xdb74d04 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xdb74c70 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb74c80 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb74cec loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb74c98 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdb74cbc calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jalr` at 0xdb74ce8 calls __glNamesGenNames [0xdb3e9f4] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `bne` branch at 0xdb74c88 targets 0xdb74ca8, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb74ca0 targets 0xdb74cf4 and is always taken.
  The `bgez` branch at 0xdb74ca8 targets 0xdb74cd0, is taken when a2(=a0) >= 0 (signed), and falls through when a2(=a0) < 0 (signed).
  The `beql` branch at 0xdb74cd0 targets 0xdb74cf8, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb74cd4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdb74cd8 targets 0xdb74cf8, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0; its branch-likely delay slot `lw ra,28(sp)` at 0xdb74cdc runs only when taken and is annulled on fall-through.
  The return at 0xdb74cfc has v0 = ?.
- `__glim_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb751a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb751a4-0xdb752b8 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xdb751c4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb751cc loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb751e8 loads 4 bytes from [0x1010] +0x2d60.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdb75208, `sw` at 0xdb75294.
  The `lw` at 0xdb75298 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb752a4 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb751f0 calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75214 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75268 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75284 calls __glBindTexture [0xdb74f58] with a0=[0x1010], a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=[0x1010].
  The `beq` branch at 0xdb751d0 targets 0xdb75224, is taken when v0(=[0x1018]) == 0, and falls through when v0(=[0x1018]) != 0.
  The `bne` branch at 0xdb751d8 targets 0xdb7520c, is taken when v0(=[0x1018]) != at(=0x2), and falls through when v0(=[0x1018]) == at(=0x2).
  The `beq` branch at 0xdb75204 targets 0xdb75224 and is always taken.
  The `beq` branch at 0xdb7521c targets 0xdb752a8 and is always taken.
  The `beq` branch at 0xdb75228 targets 0xdb75248, is taken when a2(=a0) == at(=0xde0), and falls through when a2(=a0) != at(=0xde0).
  The `beq` branch at 0xdb75230 targets 0xdb75250, is taken when a2(=a0) == at(=0xde1), and falls through when a2(=a0) != at(=0xde1).
  The `beq` branch at 0xdb75238 targets 0xdb75258, is taken when a2(=a0) == at(=0x806f), and falls through when a2(=a0) != at(=0x806f).
  The `beq` branch at 0xdb75240 targets 0xdb75260 and is always taken.
  The `beq` branch at 0xdb75248 targets 0xdb75278 and is always taken.
  The `beq` branch at 0xdb75250 targets 0xdb75278 and is always taken.
  The `beq` branch at 0xdb75258 targets 0xdb75278 and is always taken.
  The `beq` branch at 0xdb75270 targets 0xdb752a8 and is always taken.
  The return at 0xdb752b0 has v0 = one of ret(__glSetError), ret(__glBindTexture).
- `__glim_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb752b8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb752b8-0xdb75454 (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0xdb752f8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb75310 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb7536c loads 4 bytes from ?.
  The `lw` at 0xdb75380 loads 4 bytes from [0x1010] +0x6da0.
  The `lwc1` at 0xdb753a0 loads 4 bytes from ?.
  The `lw` at 0xdb753b0 loads 4 bytes from [0x1010] +0xdd0.
  2 such `lw` accesses load 4 bytes from ret(__glNamesLockData) +0x8, including `lw` at 0xdb753b8, `lw` at 0xdb753e8.
  The `swc1` at 0xdb753bc stores 4 bytes to ret(__glNamesLockData) +0xf0.
  The `lw` at 0xdb753c0 loads 4 bytes from [0x1010] +0x6d7c.
  The `lw` at 0xdb753c8 loads 4 bytes from ret(__glNamesLockData) +0xec.
  The `lw` at 0xdb753d0 loads 4 bytes from ([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2)) +0x0.
  The `lw` at 0xdb753d4 loads 4 bytes from [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xdc.
  The `lwc1` at 0xdb753e0 loads 4 bytes from ret(__glNamesLockData) +0xf0.
  The `swc1` at 0xdb753e4 stores 4 bytes to [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xe0.
  The `lw` at 0xdb753ec loads 4 bytes from [0x1010] +0x9ac.
  The `swc1` at 0xdb753fc stores 4 bytes to ?.
  The `jalr` at 0xdb7531c calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb7533c calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb75384 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+28064], a2=?, a3=?.
  The `jalr` at 0xdb753ac calls Clampf [0xdb60ae8] with a0=?, a1=?, a2=[[0x1010]+3536], a3=?; fp f14=f20.
  The `jalr` at 0xdb7540c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `bne` branch at 0xdb7530c targets 0xdb7532c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb75324 targets 0xdb75424 and is always taken.
  The `bgez` branch at 0xdb7532c targets 0xdb75348, is taken when s6(=a0) >= 0 (signed), and falls through when s6(=a0) < 0 (signed).
  The `beql` branch at 0xdb75348 targets 0xdb75428, is taken when s6(=a0) == 0, and falls through when s6(=a0) != 0; its branch-likely delay slot `lw ra,68(sp)` at 0xdb7534c runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xdb75350 targets 0xdb75424, is taken when s6(=a0) <= 0 (signed), and falls through when s6(=a0) > 0 (signed).
  The `beql` branch at 0xdb75370 targets 0xdb7541c, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `addiu s1,s1,4` at 0xdb75374 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb75390 targets 0xdb75418, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xdb753d8 targets 0xdb75400, is taken when t3(=[ret(__glNamesLockData)+236]) != t4(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]), and falls through when t3(=[ret(__glNamesLockData)+236]) == t4(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]).
  The `bne` branch at 0xdb7541c targets 0xdb7536c, is taken when s1(?) != s4(=((a0 << 0x2) + a1)), and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  The return at 0xdb7544c has v0 = ?.
- `__glim_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb7569c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb7569c-0xdb7574c (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0xdb756b8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb756c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb756fc loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb756d4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb75704 calls __glNamesLockData [0xdb3d700] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=[0x1010].
  The `jalr` at 0xdb7572c calls __glNamesUnlockData [0xdb3e144] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=[0x1010].
  The `bne` branch at 0xdb756c4 targets 0xdb756e8, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb756e0 targets 0xdb7573c and is always taken.
  The `bne` branch at 0xdb756e8 targets 0xdb756f8, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0xdb756f0 targets 0xdb7573c and is always taken.
  The `bne` branch at 0xdb75714 targets 0xdb75724, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The `beq` branch at 0xdb7571c targets 0xdb7573c and is always taken.
  The return at 0xdb75744 has v0 = one of 0x0, 0x1.
- `__glim_SelectTextureCoordSetSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb76230 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb76230-0xdb762cc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xdb7624c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb76254 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb76288 loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb7629c stores 4 bytes to [0x1010] +0x6d8c.
  The `jalr` at 0xdb76268 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb762a8 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bnel` branch at 0xdb76258 targets 0xdb7627c, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `ori at,zero,0x83c7` at 0xdb7625c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb76270 targets 0xdb762bc and is always taken.
  The `bne` branch at 0xdb76280 targets 0xdb762a0, is taken when a0 < at(=0x83c7) (unsigned), and falls through when a0 >= at(=0x83c7) (unsigned).
  The `beql` branch at 0xdb76298 targets 0xdb762bc, is taken when t8(=[[0x1010]+3604]+33735) >= a0 (unsigned), and falls through when t8(=[[0x1010]+3604]+33735) < a0 (unsigned); its branch-likely delay slot `sw a0,28044(v0)` at 0xdb7629c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb762b0 targets 0xdb762bc and is always taken.
  The return at 0xdb762c4 has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xdb76278 to 0xdb76278 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb762b8 to 0xdb762b8 are not reached by any path from the entry, and their branches are not listed.
- `__glim_InterleavedTextureCoordSetsSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb82eb8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb82eb8-0xdb82f44 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdb82ed4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb82edc loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb82f08 loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb82f14 stores 4 bytes to [0x1010] +0x1524.
  The `jalr` at 0xdb82ef0 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb82f20 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb82ee0 targets 0xdb82f00, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xdb82ef8 targets 0xdb82f34 and is always taken.
  The `blez` branch at 0xdb82f00 targets 0xdb82f18, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beql` branch at 0xdb82f10 targets 0xdb82f34, is taken when t7(=[[0x1010]+3604]) >= a0 (signed), and falls through when t7(=[[0x1010]+3604]) < a0 (signed); its branch-likely delay slot `sw a0,5412(v0)` at 0xdb82f14 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb82f28 targets 0xdb82f34 and is always taken.
  The return at 0xdb82f3c has v0 = one of ret(__glSetError), [0x1010].
  The instructions from 0xdb82f30 to 0xdb82f30 are not reached by any path from the entry, and their branches are not listed.
- `__gllc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb905cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb905cc-0xdb90640 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdb905e4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb90610 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb9061c stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb905f4 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb90624 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb96db8, a3=?.
  The `beq` branch at 0xdb90604 targets 0xdb90630, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb90638 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92eac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92eac-0xdb92f2c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdb92ec4 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb92ef4 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb92f00 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sw` at 0xdb92f08 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0xdb92ed8 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92f10 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb98220, a3=?.
  The `beq` branch at 0xdb92ee8 targets 0xdb92f1c, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb92f24 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92f2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92f2c-0xdb93038 (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0xdb92f60 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb92fbc stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb92fcc stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb92f6c calls __gllc_InvalidValue [0xdadb250] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92f8c calls __gllc_InvalidValue [0xdadb250] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92fa8 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=((a0 << 0x2) + (a0 << 0x2))+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb92fdc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xdb92ffc calls memcpy with a0=(ret(__glDlistAllocOp2) + (a0 << 0x2))+20, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=ret(__glDlistAllocOp2).
  The `jalr` at 0xdb93018 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb98268, a3=?.
  The `bgez` branch at 0xdb92f5c targets 0xdb92f7c, is taken when s0(=(a0 << 0x2)) >= 0 (signed), and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  The `beq` branch at 0xdb92f74 targets 0xdb93024 and is always taken.
  The `bgez` branch at 0xdb92f7c targets 0xdb92f9c, is taken when s0(=(a0 << 0x2)) >= 0 (signed), and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  The `beq` branch at 0xdb92f94 targets 0xdb93024 and is always taken.
  The `beq` branch at 0xdb92fb0 targets 0xdb93024, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb93030 has v0 = one of ret(__gllc_InvalidValue), ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__gllc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb95124 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb95124-0xdb951bc (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdb9513c loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb95174 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdb95180 stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `sb` at 0xdb95188 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xdb95190 stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xdb95198 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `jalr` at 0xdb95158 calls __glDlistAllocOp2 [0xdadacf0] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb951a0 calls __glDlistAppendOp [0xdadad88] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb9938c, a3=?.
  The `beq` branch at 0xdb95168 targets 0xdb951ac, is taken when v0(=ret(__glDlistAllocOp2)) == 0, and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  The return at 0xdb951b4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).
- `__glle_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb96db8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb96db8-0xdb96df8 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdb96dc8 loads 4 bytes from abs 0x1150.
  The `lw` at 0xdb96ddc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb96dd8 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb96df0 has v0 = a0+4.
- `__glle_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98220 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98220-0xdb98268 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdb98230 loads 4 bytes from abs 0x1390.
  The `lw` at 0xdb98240 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdb98244 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb98248 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0xdb98260 has v0 = a0+8.
- `__glle_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98268 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98268-0xdb982cc (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdb98284 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb98288 loads 4 bytes from abs 0x13a0.
  The `jalr` at 0xdb982a8 calls (unknown callee) with a0=[a0], a1=a0+4, a2=(a0 + ([a0] << 0x2))+4, a3=a0 at entry (arg0).
  The return at 0xdb982c4 has v0 = (a0 + (([a0] << 0x2) + ([a0] << 0x2))+4).
- `__glle_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9938c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9938c-0xdb993dc (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdb993a4 loads 4 bytes from abs 0x152c.
  The `lbu` at 0xdb993b0 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0xdb993b4 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0xdb993b8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0xdb993c0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb993bc calls (unknown callee) with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1.
  The return at 0xdb993d4 has v0 = a0+4.
- `__glsplc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9e008 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9e008-0xdb9e054 (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xdb9e040 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb9e02c calls __glSPDlalloc [0xda5278c] with a0=0x4, a1=0x7d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb9e034 targets 0xdb9e044, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9e04c has v0 = ret(__glSPDlalloc).
- `__glsplc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fc84 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fc84-0xdb9fcdc (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdb9fcc0 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdb9fcc8 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdb9fcac calls __glSPDlalloc [0xda5278c] with a0=0x8, a1=0xd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb9fcb4 targets 0xdb9fccc, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9fcd4 has v0 = ret(__glSPDlalloc).
- `__glsplc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fcdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fcdc-0xdb9fd84 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdb9fd38 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb9fd18 calls __glSPDlalloc [0xda5278c] with a0=((a0 << 0x2) + (a0 << 0x2))+4, a1=0xd5, a2=a2 at entry (arg2), a3=(a0 << 0x2).
  The `jalr` at 0xdb9fd48 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=(a0 << 0x2).
  The `jalr` at 0xdb9fd68 calls memcpy with a0=(ret(__glSPDlalloc) + (a0 << 0x2))+4, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=?.
  The `beq` branch at 0xdb9fd24 targets 0xdb9fd74, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdb9fd7c has v0 = one of ret(__glSPDlalloc), ret(memcpy).
- `__glsplc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba1564 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba1564-0xdba15d4 (112 bytes).
  It occupies 112 bytes.
  The `sb` at 0xdba15a8 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdba15b0 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `sb` at 0xdba15b8 stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xdba15c0 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `jalr` at 0xdba1594 calls __glSPDlalloc [0xda5278c] with a0=0x4, a1=0x111, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdba159c targets 0xdba15c4, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0xdba15cc has v0 = ret(__glSPDlalloc).
- `__glce_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5628 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5628-0xdba5630 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5628 targets 0xdba5ed8 and is always taken.
- `__glce_AreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a90 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a90-0xdba5a98 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5a90 targets 0xdba5dd8 and is always taken.
- `__glce_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a98-0xdba5aa0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5a98 targets 0xdba5ed8 and is always taken.
- `__glce_DeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5aa0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5aa0-0xdba5aa8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5aa0 targets 0xdba5dd8 and is always taken.
- `__glce_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5aa8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5aa8-0xdba5ab0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5aa8 targets 0xdba5dd8 and is always taken.
- `__glce_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5ab0-0xdba5ab8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5ab0 targets 0xdba5dd8 and is always taken.
- `__glce_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5ab8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5ab8-0xdba5ac0 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5ab8 targets 0xdba5ed8 and is always taken.
- `__glce_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5dd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5dd0-0xdba5dd8 (8 bytes).
  It occupies 8 bytes.
  The `beq` branch at 0xdba5dd0 targets 0xdba5ed8 and is always taken.
- `glDrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6510 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6510-0xdba651c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6510 loads 4 bytes from abs 0x1150.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6514).
- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bc4 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).
- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).
- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bd0 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).
- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bdc loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).
- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).
- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6be8 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).
- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).
- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6bf4 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).
- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c00 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).
- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8be5ec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8be5ec-0xd8be72c (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0xd8be5f4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8be5f8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8be5fc loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8be638 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8be63c, `lw` at 0xd8be6b8.
  The `lw` at 0xd8be648 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8be658, `lw` at 0xd8be684, `lw` at 0xd8be710.
  The `lw` at 0xd8be65c loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8be670 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8be678 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8be67c, `sb` at 0xd8be6a4.
  The `lw` at 0xd8be680 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be68c stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be694 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8be698 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8be6a0 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8be6ac loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8be6b0 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8be6b4 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd8be6c4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8be6d4 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `sw` at 0xd8be6f4 stores 4 bytes to [[0x1014]+276] +0x48.
  The `jalr` at 0xd8be634 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+216].
  The `jalr` at 0xd8be64c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be6c8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=[[[0x1014]+276]+60], a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be6e0 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8be708 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8be610 targets 0xd8be71c, is taken when a3(=[[[0x1014]+276]+216]) == 0, and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be620 targets 0xd8be6ec, is taken when a3(=[[[0x1014]+276]+216]) == 0, and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be640 targets 0xd8be658, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8be668 targets 0xd8be708, is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+12) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  The `beq` branch at 0xd8be6bc targets 0xd8be6d4, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8be6d8 targets 0xd8be6ec, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8be714 targets 0xd8be670 and is always taken.
  The return at 0xd8be700 has v0 = one of ?, ret(?).
  The return at 0xd8be724 has v0 = ?.
- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8be72c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8be72c-0xd8be878 (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0xd8be734 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8be738 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8be73c loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8be77c loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8be780, `lw` at 0xd8be804.
  The `lw` at 0xd8be78c loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8be79c, `lw` at 0xd8be7c8, `lw` at 0xd8be85c.
  The `lw` at 0xd8be7a0 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8be7b4 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8be7bc stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8be7c0, `sb` at 0xd8be7ec.
  The `lw` at 0xd8be7c4 loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be7d0 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8be7d8 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8be7e0 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sb` at 0xd8be7e8 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8be7f4 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8be7f8 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8be7fc stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `sw` at 0xd8be800 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `lw` at 0xd8be810 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8be820 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `sw` at 0xd8be840 stores 4 bytes to [[0x1014]+276] +0x44.
  The `jalr` at 0xd8be778 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[0x1014]+276]+216].
  The `jalr` at 0xd8be790 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be814 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=a0 at entry (arg0), a4=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8be82c calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8be854 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8be750 targets 0xd8be868, is taken when a4(=[[[0x1014]+276]+216]) == 0, and falls through when a4(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be764 targets 0xd8be838, is taken when a4(=[[[0x1014]+276]+216]) == 0, and falls through when a4(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8be784 targets 0xd8be79c, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8be7ac targets 0xd8be854, is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  The `beq` branch at 0xd8be808 targets 0xd8be820, is taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8be824 targets 0xd8be838, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8be860 targets 0xd8be7b4 and is always taken.
  The return at 0xd8be84c has v0 = one of ?, ret(?).
  The return at 0xd8be870 has v0 = ?.
- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb8d8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cb8d8-0xd8cb918 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xd8cb8fc calls __glXPostError with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0.
  The return at 0xd8cb910 has v0 = 0x0.
- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc530 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cc530-0xd8cc818 (744 bytes).
  It occupies 744 bytes.
  The `lw` at 0xd8cc57c loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0xd8cc5b0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x2c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xd8cc5b4, `lw` at 0xd8cc6e8.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8cc5c0, `lw` at 0xd8cc5d0, `lw` at 0xd8cc5e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cc624, `lw` at 0xd8cc750.
  The `lw` at 0xd8cc630 loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cc63c, `lw` at 0xd8cc67c, `lw` at 0xd8cc7d4.
  The `lw` at 0xd8cc644 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cc65c stores 4 bytes to a0 (arg0 at entry) +0x64.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cc668, `sb` at 0xd8cc698.
  The `sh` at 0xd8cc670 stores 2 bytes to [a0+108] +0x2.
  The `lw` at 0xd8cc678 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc684 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc694 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sb` at 0xd8cc69c stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8cc6a0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xd8cc6a4 stores 4 bytes to [a0+108] +0x4.
  The `lw` at 0xd8cc6ac loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xd8cc6b4 stores 4 bytes to [a0+108] +0xc.
  The `sw` at 0xd8cc6bc stores 4 bytes to [a0+108] +0x10.
  The `sw` at 0xd8cc6c8 stores 4 bytes to [a0+108] +0x8.
  The `sw` at 0xd8cc6ec stores 4 bytes to [a0+108] +0x14.
  The `lw` at 0xd8cc6f4 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `sw` at 0xd8cc700 stores 4 bytes to [a0+108] +0x18.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd8cc724, `sw` at 0xd8cc72c, `sw` at 0xd8cc734.
  The `lw` at 0xd8cc75c loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8cc768 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xd8cc564 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cc580 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc594 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?, a4=ret(?).
  The `jalr` at 0xd8cc634 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc760 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=?.
  The `jalr` at 0xd8cc774 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc780 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc7cc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+108], a2=?, a3=?.
  The `jalr` at 0xd8cc7f0 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0.
  The `beq` branch at 0xd8cc574 targets 0xd8cc7a8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8cc5a0 targets 0xd8cc7e0, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xd8cc5ac targets 0xd8cc624, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xd8cc5b8 targets 0xd8cc624, is taken when a3(=[a2]) == 0, and falls through when a3(=[a2]) != 0.
  The `beq` branch at 0xd8cc5c8 targets 0xd8cc624, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd8cc5d8 targets 0xd8cc624, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8cc5e8 targets 0xd8cc624, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xd8cc5f8 targets 0xd8cc624, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xd8cc608 targets 0xd8cc624, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xd8cc61c targets 0xd8cc5c0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd8cc628 targets 0xd8cc63c, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cc654 targets 0xd8cc7c8, is taken when v1(=[a0+112]) < a3(?) (unsigned), and falls through when v1(=[a0+112]) >= a3(?) (unsigned).
  The `beq` branch at 0xd8cc6c4 targets 0xd8cc750, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bne` branch at 0xd8cc6d8 targets 0xd8cc750, is taken when s1(?) < 0x0 (signed), and falls through when s1(?) >= 0x0 (signed).
  The `beq` branch at 0xd8cc6e0 targets 0xd8cc704, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xd8cc710 targets 0xd8cc750, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0xd8cc748 targets 0xd8cc720, is taken when v0(?) != a2(=-0x1), and falls through when v0(?) == a2(=-0x1).
  The `beq` branch at 0xd8cc754 targets 0xd8cc768, is taken when a2(=[a0+1232]) == 0, and falls through when a2(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc76c targets 0xd8cc77c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cc7d8 targets 0xd8cc65c and is always taken.
  The return at 0xd8cc7a0 has v0 = ret(?).
  The return at 0xd8cc7c0 has v0 = 0x0.
  The return at 0xd8cc810 has v0 = 0x0.
- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc818 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cc818-0xd8cc96c (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0xd8cc87c loads 4 bytes from ret(__glXAddDrawableInterest) +0x14.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4d0, including `lw` at 0xd8cc890, `lw` at 0xd8cc8fc.
  The `lw` at 0xd8cc89c loads 4 bytes from [a0+1232] +0x0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6c, including `lw` at 0xd8cc8a8, `lw` at 0xd8cc8dc, `lw` at 0xd8cc960.
  The `lw` at 0xd8cc8ac loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `sw` at 0xd8cc8c0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sh` at 0xd8cc8c8 stores 2 bytes to [a0+108] +0x2.
  2 such `sb` accesses store 1 byte to [a0+108] +0x0, including `sb` at 0xd8cc8d0, `sb` at 0xd8cc8f8.
  The `lw` at 0xd8cc8d8 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc8e4 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0xd8cc8ec stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0xd8cc8f0 stores 4 bytes to [a0+108] +0x4.
  The `sb` at 0xd8cc8f4 stores 1 byte to [a0+108] +0x1.
  The `lw` at 0xd8cc908 loads 4 bytes from [a0+1232] +0x4.
  The `lw` at 0xd8cc914 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0xd8cc968 stores 4 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xd8cc840 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8cc864 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc874 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc888 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=[ret(__glXAddDrawableInterest)+20].
  The `jalr` at 0xd8cc8a0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc90c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=0x1c, a3=?.
  The `jalr` at 0xd8cc920 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xd8cc954 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0xd8cc854 targets 0xd8cc940, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xd8cc880 targets 0xd8cc964, is taken when a3(=[ret(__glXAddDrawableInterest)+20]) == 0, and falls through when a3(=[ret(__glXAddDrawableInterest)+20]) != 0.
  The `beq` branch at 0xd8cc894 targets 0xd8cc8a8, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `bne` branch at 0xd8cc8b8 targets 0xd8cc954, is taken when at(=[a0+112]) < v1(=[a0+108]+8) (unsigned), and falls through when at(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  The `beq` branch at 0xd8cc900 targets 0xd8cc914, is taken when v0(=[a0+1232]) == 0, and falls through when v0(=[a0+1232]) != 0.
  The `beq` branch at 0xd8cc918 targets 0xd8cc92c, is taken when t9(=[a0+124]) == 0, and falls through when t9(=[a0+124]) != 0.
  The `beq` branch at 0xd8cc95c targets 0xd8cc8c0 and is always taken.
  The `beq` branch at 0xd8cc964 targets 0xd8cc884 and is always taken.
  The return at 0xd8cc938 has v0 = one of ?, ret(?).
  The return at 0xd8cc94c has v0 = ret(__glXSetupForCommand).
- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ce058 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ce058-0xd8ce0d4 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xd8ce058 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8ce05c loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8ce060 loads 4 bytes from [[0x1014]+276] +0x4.
  The `sb` at 0xd8ce064 stores 1 byte to [[[0x1014]+276]+4] +0x7.
  The `sb` at 0xd8ce068 stores 1 byte to [[[0x1014]+276]+4] +0x6.
  The `sb` at 0xd8ce06c stores 1 byte to [[[0x1014]+276]+4] +0x5.
  The `sb` at 0xd8ce070 stores 1 byte to [[[0x1014]+276]+4] +0x4.
  The `sh` at 0xd8ce078 stores 2 bytes to [[[0x1014]+276]+4] +0x0.
  The `sh` at 0xd8ce080 stores 2 bytes to [[[0x1014]+276]+4] +0x2.
  The `lw` at 0xd8ce084 loads 4 bytes from [[0x1014]+276] +0x8.
  The `sw` at 0xd8ce0a0 stores 4 bytes to [[0x1014]+276] +0x4.
  The `jalr` at 0xd8ce0c4 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[[0x1014]+276]+4]+8, a6=[[0x1014]+276].
  The `bne` branch at 0xd8ce0a4 targets 0xd8ce0b8, is taken when at(=[[[0x1014]+276]+8]) < a5(=[[[0x1014]+276]+4]+8) (unsigned), and falls through when at(=[[[0x1014]+276]+8]) >= a5(=[[[0x1014]+276]+4]+8) (unsigned).
  The `beq` branch at 0xd8ce0cc targets 0xd8ce0ac and is always taken.
  The return at 0xd8ce0b0 has v0 = one of 0x1b8f0, ret(__glXFlushRenderBuffer).
- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ce39c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ce39c-0xd8ce4f8 (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0xd8ce3a4 loads 4 bytes from abs 0x1014.
  The `lw` at 0xd8ce3a8 loads 4 bytes from [0x1014] +0x114.
  The `lw` at 0xd8ce3b0 loads 4 bytes from [[0x1014]+276] +0xd8.
  The `lw` at 0xd8ce3e4 loads 4 bytes from [[0x1014]+276] +0x4.
  2 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x4d0, including `lw` at 0xd8ce3e8, `lw` at 0xd8ce498.
  The `lw` at 0xd8ce3f4 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x0.
  3 such `lw` accesses load 4 bytes from [[[0x1014]+276]+216] +0x6c, including `lw` at 0xd8ce400, `lw` at 0xd8ce430, `lw` at 0xd8ce4f4.
  The `lw` at 0xd8ce404 loads 4 bytes from [[[0x1014]+276]+216] +0x70.
  The `sw` at 0xd8ce418 stores 4 bytes to [[[0x1014]+276]+216] +0x64.
  The `sh` at 0xd8ce420 stores 2 bytes to [[[[0x1014]+276]+216]+108] +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1014]+276]+216]+108] +0x0, including `sb` at 0xd8ce428, `sb` at 0xd8ce458.
  The `lw` at 0xd8ce42c loads 4 bytes from [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8ce438 stores 4 bytes to [[[0x1014]+276]+216] +0x60.
  The `sw` at 0xd8ce440 stores 4 bytes to [[[0x1014]+276]+216] +0x6c.
  The `lw` at 0xd8ce444 loads 4 bytes from [[0x1014]+276] +0x110.
  The `sw` at 0xd8ce44c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x4.
  The `sb` at 0xd8ce454 stores 1 byte to [[[[0x1014]+276]+216]+108] +0x1.
  The `lw` at 0xd8ce464 loads 4 bytes from [[0x1014]+276] +0x3c.
  The `sw` at 0xd8ce470 stores 4 bytes to [[[[0x1014]+276]+216]+108] +0xc.
  The `sw` at 0xd8ce47c stores 4 bytes to [[[[0x1014]+276]+216]+108] +0x8.
  The `lw` at 0xd8ce4a8 loads 4 bytes from [[[[0x1014]+276]+216]+1232] +0x4.
  The `lw` at 0xd8ce4b8 loads 4 bytes from [[[0x1014]+276]+216] +0x7c.
  The `jalr` at 0xd8ce3e0 calls __glXFlushRenderBuffer with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xd8ce3f8 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8ce478 calls _XReply with a0=[[[0x1014]+276]+216], a1=sp-96, a2=0x0, a3=0x0, a4=[[[[0x1014]+276]+216]+108]+16, a5=[[[[0x1014]+276]+216]+108], a6=0x4, a7=0x10.
  The `jalr` at 0xd8ce490 calls _XRead with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xd8ce4ac calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232].
  The `jalr` at 0xd8ce4c4 calls (unknown callee) with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?.
  The `jalr` at 0xd8ce4e8 calls _XFlush with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108].
  The `beq` branch at 0xd8ce3cc targets 0xd8ce4d0, is taken when s0(=[[[0x1014]+276]+216]) == 0, and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  The `beq` branch at 0xd8ce3ec targets 0xd8ce400, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `bne` branch at 0xd8ce410 targets 0xd8ce4e8, is taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned), and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  The `beq` branch at 0xd8ce4a0 targets 0xd8ce4b8, is taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0, and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  The `beq` branch at 0xd8ce4bc targets 0xd8ce4d0, is taken when t9(=[[[[0x1014]+276]+216]+124]) == 0, and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  The `beq` branch at 0xd8ce4f0 targets 0xd8ce418 and is always taken.
  The return at 0xd8ce4e0 has v0 = one of ?, ret(?).
- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8ece0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8ece0-0xda8ed4c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xda8ece0 loads 4 bytes from a1 (arg1 at entry) +0x14c.
  The `lwc1` at 0xda8ecf4 loads 4 bytes from a1 (arg1 at entry) +0x13c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x14c, including `swc1` at 0xda8ed1c, `swc1` at 0xda8ed3c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x13c, including `swc1` at 0xda8ed24, `swc1` at 0xda8ed2c.
  The `bgezall` at 0xda8ed20 calls __glOdySpanShiftOffsetIndex [0xda8e0e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda8ed44 has v0 = ret(__glOdySpanShiftOffsetIndex).
- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab29d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab29d0-0xdab2a90 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xdab29e0 loads 4 bytes from a0 (arg0 at entry) +0x164ac.
  The `lw` at 0xdab29e4 loads 4 bytes from [a0+91308] +0x8.
  The `lw` at 0xdab2a18 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab2a1c loads 4 bytes from [a0+91312] +0x8.
  The `lw` at 0xdab2a38 loads 4 bytes from a0 (arg0 at entry) +0x164b4.
  The `lw` at 0xdab2a3c loads 4 bytes from [a0+91316] +0x8.
  The `lw` at 0xdab2a58 loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `lw` at 0xdab2a5c loads 4 bytes from [a0+91320] +0x8.
  The `jalr` at 0xdab2a0c calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91308], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab2a2c calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91312], a2=?, a3=?.
  The `jalr` at 0xdab2a4c calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91316], a2=?, a3=?.
  The `jalr` at 0xdab2a74 calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91320], a2=?, a3=?.
  The `beq` branch at 0xdab29fc targets 0xdab2a18, is taken when at(=[[a0+91308]+8]) == 0, and falls through when at(=[[a0+91308]+8]) != 0.
  The `beq` branch at 0xdab2a20 targets 0xdab2a38, is taken when at(=[[a0+91312]+8]) == 0, and falls through when at(=[[a0+91312]+8]) != 0.
  The `beq` branch at 0xdab2a40 targets 0xdab2a58, is taken when v0(=[[a0+91316]+8]) == 0, and falls through when v0(=[[a0+91316]+8]) != 0.
  The `beq` branch at 0xdab2a60 targets 0xdab2a80, is taken when v1(=[[a0+91320]+8]) == 0, and falls through when v1(=[[a0+91320]+8]) != 0.
  The return at 0xdab2a88 has v0 = one of ?, ret(__glNamesUnlockData).
- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab2b70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab2b70-0xdab2c50 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xdab2bbc loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `lw` at 0xdab2c18 loads 4 bytes from a0 (arg0 at entry) +0x164b4.
  The `lw` at 0xdab2c38 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab2c4c loads 4 bytes from a0 (arg0 at entry) +0x164ac.
  The `bne` branch at 0xdab2b84 targets 0xdab2bc0, is taken when a1 < a3(=0x8064) (unsigned), and falls through when a1 >= a3(=0x8064) (unsigned).
  The `beq` branch at 0xdab2b8c targets 0xdab2c1c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xdab2b98 targets 0xdab2c00, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xdab2ba0 targets 0xdab2c3c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xdab2bb0 targets 0xdab2bf8, is taken when a1 != at(=0x8095), and falls through when a1 == at(=0x8095).
  The `bne` branch at 0xdab2bc0 targets 0xdab2be4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdab2bc8 targets 0xdab2c2c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xdab2bd4 targets 0xdab2bf8, is taken when a1 != at(=0x8063), and falls through when a1 == at(=0x8063).
  The `beq` branch at 0xdab2bf0 targets 0xdab2c48, is taken when a1 == v1(=0xde0), and falls through when a1 != v1(=0xde0).
  The `bne` branch at 0xdab2c0c targets 0xdab2bf8, is taken when a1 != a2(=0x806f), and falls through when a1 == a2(=0x806f).
  The return at 0xdab2bb8 has v0 = [a0+91320].
  The return at 0xdab2bdc has v0 = a0+83748.
  The return at 0xdab2bf8 has v0 = 0x0.
  The return at 0xdab2c14 has v0 = [a0+91316].
  The return at 0xdab2c24 has v0 = a0+86268.
  The return at 0xdab2c34 has v0 = [a0+91312].
  The return at 0xdab2c40 has v0 = a0+88788.
  The return at 0xdab2c48 has v0 = [a0+91308].
- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabbd10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabbd10-0xdabc010 (768 bytes).
  It occupies 768 bytes.
  The `lw` at 0xdabbd28 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabbd44 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x164bc, including `lw` at 0xdabbe08, `lw` at 0xdabbf48.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabbe1c, `lw` at 0xdabbe3c, `lw` at 0xdabbe40.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdabbe5c, `sw` at 0xdabbe70.
  The `lw` at 0xdabbe74 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabbe7c stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabbe84 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdabbe88 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdabbecc stores 4 bytes to [0x1010] +0x164c0.
  The `lw` at 0xdabbef0 loads 4 bytes from [0x1010] +0x0.
  The `lw` at 0xdabbf5c loads 4 bytes from ret(?) +0x0.
  The `sw` at 0xdabbf68 stores 4 bytes to ret(?) +0x0.
  The `jalr` at 0xdabbd74 calls __glSetError [0xdb11f10] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=0xde1.
  The `jalr` at 0xdabbe04 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=one of 0x2, 0xde0, a5=0xde1.
  The `jalr` at 0xdabbe50 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdabbec4 calls __glOdysseyTextureDeactivate [0xdab5590] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?, a4=0x116200.
  The `jalr` at 0xdabbefc calls (unknown callee) with a0=[0x1010], a1=0x9d8, a2=?, a3=?.
  The `jalr` at 0xdabbf24 calls InitTextureObject [0xdab25e0] with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?, a4=ret(?).
  The `jalr` at 0xdabbf44 calls __glNamesNewData [0xdb37aa0] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=ret(?).
  The `jalr` at 0xdabbf78 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabbfa4 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?, a4=ret(?).
  The `jalr` at 0xdabbfd0 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xde0, a5=0xde1.
  The `beq` branch at 0xdabbd48 targets 0xdabbfc8, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdabbd50 targets 0xdabbddc, is taken when s0(=a0) == a4(=0xde0), and falls through when s0(=a0) != a4(=0xde0).
  The `beq` branch at 0xdabbd58 targets 0xdabbed8, is taken when s0(=a0) == a5(=0xde1), and falls through when s0(=a0) != a5(=0xde1).
  The `beq` branch at 0xdabbd60 targets 0xdabbee4, is taken when s0(=a0) == at(=0x8095), and falls through when s0(=a0) != at(=0x8095).
  The `beq` branch at 0xdabbd68 targets 0xdabbd98, is taken when s0(=a0) == v1(=0x806f), and falls through when s0(=a0) != v1(=0x806f).
  The `bne` branch at 0xdabbd9c targets 0xdabbde8, is taken when s3(=a1) != 0, and falls through when s3(=a1) == 0.
  The `beq` branch at 0xdabbdd4 targets 0xdabbe14 and is always taken.
  The `beq` branch at 0xdabbddc targets 0xdabbda4, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xdabbe14 targets 0xdabbef0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xdabbe20 targets 0xdabbf6c, is taken when a4(?) != s0(=a0), and falls through when a4(?) == s0(=a0).
  The `beq` branch at 0xdabbe44 targets 0xdabbe5c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdabbe8c targets 0xdabbe9c, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `bne` branch at 0xdabbe94 targets 0xdabbeb8, is taken when a1(=[[0x1010]+91328]) != s2(?), and falls through when a1(=[[0x1010]+91328]) == s2(?).
  The `beq` branch at 0xdabbed0 targets 0xdabbe9c and is always taken.
  The `beq` branch at 0xdabbedc targets 0xdabbd9c and is always taken.
  The `beq` branch at 0xdabbee8 targets 0xdabbd9c and is always taken.
  The `beq` branch at 0xdabbf0c targets 0xdabbf9c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xdabbf54 targets 0xdabbff4, is taken when (v0(=ret(__glNamesNewData)) & 0xff) == 0, and falls through when (v0(=ret(__glNamesNewData)) & 0xff) != 0.
  The `beq` branch at 0xdabbf64 targets 0xdabbe2c and is always taken.
  The return at 0xdabbd90 has v0 = ret(__glSetError).
  The return at 0xdabbeb0 has v0 = one of ?, ret(__glOdysseyTextureDeactivate).
  The return at 0xdabbf94 has v0 = ret(__glSetError).
  The return at 0xdabbfc0 has v0 = ret(__glSetError).
  The return at 0xdabbfec has v0 = ret(__glSetError).
  The return at 0xdabc008 has v0 = ret(__glNamesNewData).
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc010 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc010-0xdabc29c (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0xdabc020 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc03c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc058 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdabc068 loads 4 bytes from [0x1010] +0x164bc.
  The `sw` at 0xdabc0f4 stores 4 bytes to table(0x164ac) +0x0.
  The `sw` at 0xdabc0f8 stores 4 bytes to ?.
  The `lw` at 0xdabc100 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdabc10c stores 4 bytes to [0x1010] +0x168d0.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdabc114, `sw` at 0xdabc23c.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabc118, `lw` at 0xdabc13c, `lw` at 0xdabc154.
  The `lw` at 0xdabc130 loads 4 bytes from [0x1010] +0x164c0.
  The `lw` at 0xdabc140 loads 4 bytes from [[0x1010]+91328] +0x8.
  The `sw` at 0xdabc1ac stores 4 bytes to [0x1010] +0x164c0.
  The `lw` at 0xdabc21c loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabc228 stores 4 bytes to [0x1010] +0x168d4.
  The `jalr` at 0xdabc0b0 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xdabc188 calls __glNamesDeleteRange [0xdb391d0] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bgezall` at 0xdabc1a4 calls __glOdysseyTextureDeactivate [0xdab5590] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?.
  The `jalr` at 0xdabc1d0 calls __glNamesDeleteRange [0xdb391d0] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabc20c calls __glNamesDeleteRange [0xdb391d0] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabc258 calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc278 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc040 targets 0xdabc270, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdabc048 targets 0xdabc254, is taken when s5(=a0) < 0 (signed), and falls through when s5(=a0) >= 0 (signed).
  The `blez` branch at 0xdabc070 targets 0xdabc24c, is taken when s5(=a0) <= 0 (signed), and falls through when s5(=a0) > 0 (signed).
  The `beq` branch at 0xdabc0a0 targets 0xdabc130 and is always taken.
  The `bne` branch at 0xdabc11c targets 0xdabc178, is taken when a0(?) != s1(?), and falls through when a0(?) == s1(?).
  The `beq` branch at 0xdabc128 targets 0xdabc1e8, is taken when s0(?) == s8(=((a0 << 0x2) + a1)), and falls through when s0(?) != s8(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xdabc138 targets 0xdabc14c, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `beq` branch at 0xdabc144 targets 0xdabc1a0, is taken when v0(=[[[0x1010]+91328]+8]) == a0(?), and falls through when v0(=[[[0x1010]+91328]+8]) != a0(?).
  The `beq` branch at 0xdabc14c targets 0xdabc1bc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xdabc15c targets 0xdabc0b0, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0xdabc168 targets 0xdabc154, is taken when s7(=0x4) != s6(?), and falls through when s7(=0x4) == s6(?).
  The `beq` branch at 0xdabc170 targets 0xdabc11c and is always taken.
  The `beq` branch at 0xdabc198 targets 0xdabc124 and is always taken.
  The `bne` branch at 0xdabc1b4 targets 0xdabc154, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xdabc1e0 targets 0xdabc124 and is always taken.
  The `beq` branch at 0xdabc24c targets 0xdabc1f8 and is always taken.
  The `beq` branch at 0xdabc268 targets 0xdabc050 and is always taken.
  The return at 0xdabc244 has v0 = ret(__glNamesDeleteRange).
  The return at 0xdabc294 has v0 = ret(__glSetError).
  The instructions from 0xdabc0a8 to 0xdabc0ac are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc2a0-0xdabc358 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xdabc2a8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc2c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc2fc loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabc2f8 calls __glNamesGenNames [0xdb39730] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `jalr` at 0xdabc324 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `jalr` at 0xdabc340 calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `beq` branch at 0xdabc2c4 targets 0xdabc31c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdabc2cc targets 0xdabc33c, is taken when a2(=a0) < 0 (signed), and falls through when a2(=a0) >= 0 (signed).
  The `beq` branch at 0xdabc2d4 targets 0xdabc310, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0xdabc2dc targets 0xdabc310, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The return at 0xdabc308 has v0 = ret(__glNamesGenNames).
  The return at 0xdabc314 has v0 = 0x1.
  The return at 0xdabc334 has v0 = ret(__glSetError).
  The return at 0xdabc350 has v0 = ret(__glSetError).
- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc3d0-0xdabc5e0 (528 bytes).
  It occupies 528 bytes.
  The `lw` at 0xdabc3e8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc404 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc44c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdabc464 loads 4 bytes from [0x1010] +0x164bc.
  The `sb` at 0xdabc4a8 stores 1 byte to ?.
  The `lw` at 0xdabc4b8 loads 4 bytes from ?.
  The `jalr` at 0xdabc460 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bgezall` at 0xdabc478 calls __glOdysseyIsTextureResident [0xdabc360] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabc4a4 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=one of 0x0, 0x1, a3=?, a4=0x1.
  The `jalr` at 0xdabc4f8 calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabc53c calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabc584 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc5b4 calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc408 targets 0xdabc57c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdabc410 targets 0xdabc5b0, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `blez` branch at 0xdabc43c targets 0xdabc4bc, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xdabc450 targets 0xdabc4f4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xdabc468 targets 0xdabc538, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bnel` branch at 0xdabc4b4 targets 0xdabc450, is taken when at(=((a0 << 0x2) + a1)) != s1(?), and falls through when at(=((a0 << 0x2) + a1)) == s1(?); its branch-likely delay slot `lw a2,0(s1)` at 0xdabc4b8 runs only when taken and is annulled on fall-through.
  The return at 0xdabc4ec has v0 = one of 0x0, 0x1.
  The return at 0xdabc530 has v0 = 0x0.
  The return at 0xdabc574 has v0 = 0x0.
  The return at 0xdabc5a8 has v0 = 0x0.
  The return at 0xdabc5d8 has v0 = 0x0.
- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc610 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc610-0xdabc794 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0xdabc624 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc640 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xdabc6ac stores 4 bytes to ret(__glNamesLockData) +0x3c.
  The `lw` at 0xdabc6b8 loads 4 bytes from ?.
  The `lw` at 0xdabc6d0 loads 4 bytes from [0x1010] +0x164bc.
  The `lwc1` at 0xdabc6dc loads 4 bytes from [0x1010] +0xdd0.
  The `lwc1` at 0xdabc6f0 loads 4 bytes from ?.
  The `lw` at 0xdabc720 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabc72c stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabc740 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xdabc6a8 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabc6cc calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bgezall` at 0xdabc6ec calls (unnamed) [0xdabc5e0] with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1010]+3536].
  The `jalr` at 0xdabc74c calls __glSetError [0xdb11f10] with a0=0x501, a1=0x120000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc770 calls __glSetError [0xdb11f10] with a0=0x502, a1=0x120000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc644 targets 0xdabc768, is taken when at(=[0x1018]) == v1(=0x1), and falls through when at(=[0x1018]) != v1(=0x1).
  The `bltz` branch at 0xdabc64c targets 0xdabc744, is taken when s4(=a0) < 0 (signed), and falls through when s4(=a0) >= 0 (signed).
  The `blez` branch at 0xdabc658 targets 0xdabc760, is taken when s4(=a0) <= 0 (signed), and falls through when s4(=a0) > 0 (signed).
  The `beq` branch at 0xdabc694 targets 0xdabc6b8 and is always taken.
  The `beq` branch at 0xdabc6b0 targets 0xdabc6fc, is taken when s1(?) == s3(=((a0 << 0x2) + a1)), and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xdabc6bc targets 0xdabc6b0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xdabc6d4 targets 0xdabc6b0, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `beq` branch at 0xdabc6f4 targets 0xdabc6a0 and is always taken.
  The `beq` branch at 0xdabc758 targets 0xdabc654 and is always taken.
  The `beq` branch at 0xdabc760 targets 0xdabc714 and is always taken.
  The return at 0xdabc73c has v0 = ([[0x1010]+92372] | 0x200).
  The return at 0xdabc78c has v0 = ret(__glSetError).
  The instructions from 0xdabc69c to 0xdabc69c are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc7a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc7a0-0xdabc870 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0xdabc7a4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc7c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc7ec loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabc7e8 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc814 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabc850 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc7c4 targets 0xdabc848, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdabc7cc targets 0xdabc834, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0xdabc7f0 targets 0xdabc80c, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The return at 0xdabc804 has v0 = 0x0.
  The return at 0xdabc82c has v0 = 0x1.
  The return at 0xdabc840 has v0 = 0x0.
  The return at 0xdabc868 has v0 = 0x0.
- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb01540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb01540-0xdb0172c (492 bytes).
  It occupies 492 bytes.
  The `lw` at 0xdb01544 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb0155c loads 4 bytes from abs 0x1010.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc8e, including `lbu` at 0xdb01580, `lbu` at 0xdb015dc.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x760, including `sw` at 0xdb0158c, `sw` at 0xdb015ec, `sw` at 0xdb01608.
  The `sw` at 0xdb01590 stores 4 bytes to [0x1010] +0x764.
  The `sw` at 0xdb01598 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb0159c loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb015b0 stores 4 bytes to [0x1010] +0x2d44.
  4 such `lw` accesses load 4 bytes from [0x1010] +0xcd8, including `lw` at 0xdb01620, `lw` at 0xdb0169c, `lw` at 0xdb016f4.
  The `jalr` at 0xdb01660 calls __glSetError [0xdb11f10] with a0=0x500, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb016b4 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb01714 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xdb01560 targets 0xdb0170c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bne` branch at 0xdb01568 targets 0xdb015b4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xdb01578 targets 0xdb0160c, is taken when a0 >= 0x407 (unsigned), and falls through when a0 < 0x407 (unsigned).
  The `bne` branch at 0xdb015b4 targets 0xdb015f0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdb015bc targets 0xdb015dc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xdb015c4 targets 0xdb016cc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xdb015cc targets 0xdb01600, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xdb015d4 targets 0xdb0165c, is taken when a0 != v1(=0x405), and falls through when a0 == v1(=0x405).
  The `beq` branch at 0xdb015e0 targets 0xdb016ac, is taken when a1(=[[0x1010]+3214]:1) == 0, and falls through when a1(=[[0x1010]+3214]:1) != 0.
  The `beq` branch at 0xdb015e8 targets 0xdb01590 and is always taken.
  The `bne` branch at 0xdb015f4 targets 0xdb0163c, is taken when a0 < 0x400 (unsigned), and falls through when a0 >= 0x400 (unsigned).
  The `beq` branch at 0xdb015fc targets 0xdb0164c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdb01604 targets 0xdb01590 and is always taken.
  The `bne` branch at 0xdb01610 targets 0xdb01678, is taken when a0 < 0x40a (unsigned), and falls through when a0 >= 0x40a (unsigned).
  The `beq` branch at 0xdb01618 targets 0xdb016e0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdb0162c targets 0xdb016b0, is taken when v1(=a0-1033) >= a1(=[[0x1010]+3288]) (signed), and falls through when v1(=a0-1033) < a1(=[[0x1010]+3288]) (signed).
  The `beq` branch at 0xdb01634 targets 0xdb01590 and is always taken.
  The `bne` branch at 0xdb0163c targets 0xdb0165c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xdb01644 targets 0xdb01590 and is always taken.
  The `beq` branch at 0xdb01650 targets 0xdb016ac, is taken when a0 == at(=0x401), and falls through when a0 != at(=0x401).
  The `bne` branch at 0xdb0167c targets 0xdb016a0, is taken when a0 < 0x408 (unsigned), and falls through when a0 >= 0x408 (unsigned).
  The `bne` branch at 0xdb01684 targets 0xdb01580, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdb01690 targets 0xdb0165c, is taken when a0 != a1(=0x409), and falls through when a0 == a1(=0x409).
  The `beq` branch at 0xdb01698 targets 0xdb01624 and is always taken.
  The `bne` branch at 0xdb016a4 targets 0xdb01658, is taken when a0 != at(=0x407), and falls through when a0 == at(=0x407).
  The `bne` branch at 0xdb016d0 targets 0xdb0165c, is taken when a0 != v0(=0x403), and falls through when a0 == v0(=0x403).
  The `beq` branch at 0xdb016d8 targets 0xdb016ac and is always taken.
  The `bne` branch at 0xdb016e0 targets 0xdb016f8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xdb016e8 targets 0xdb0165c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xdb016f0 targets 0xdb01624 and is always taken.
  The `bne` branch at 0xdb016fc targets 0xdb0165c, is taken when a0 != at(=0x40b), and falls through when a0 == at(=0x40b).
  The `beq` branch at 0xdb01704 targets 0xdb01624 and is always taken.
  The return at 0xdb015ac has v0 = 0x2.
  The return at 0xdb01670 has v0 = ret(__glSetError).
  The return at 0xdb016c4 has v0 = ret(__glSetError).
  The return at 0xdb01724 has v0 = ret(__glSetError).
- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb595d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb595d0-0xdb59618 (72 bytes).
  It occupies 72 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb595f8, `lw` at 0xdb59608, `lw` at 0xdb5960c.
  The `beq` branch at 0xdb595d8 targets 0xdb59604, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb595e0 targets 0xdb5960c, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb595e8 targets 0xdb595f8, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xdb595f0 has v0 = 0x0.
  The return at 0xdb595fc has v0 = [a0+2476]+448.
  The return at 0xdb59604 has v0 = [a0+2476].
  The return at 0xdb59610 has v0 = [a0+2476]+224.
- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59620 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59620-0xdb5966c (76 bytes).
  It occupies 76 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb59648, `lw` at 0xdb59654, `lw` at 0xdb59660.
  The `beq` branch at 0xdb59628 targets 0xdb59654, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb59630 targets 0xdb59660, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb59638 targets 0xdb59648, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xdb59640 has v0 = 0x0.
  The return at 0xdb5964c has v0 = [a0+2476]+664.
  The return at 0xdb59658 has v0 = [a0+2476]+216.
  The return at 0xdb59664 has v0 = [a0+2476]+440.
- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59670 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59670-0xdb596fc (140 bytes).
  It occupies 140 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d7c, including `lw` at 0xdb596b4, `lw` at 0xdb596c0, `lw` at 0xdb596cc.
  The `lw` at 0xdb596bc loads 4 bytes from [a0+28028] +0x14.
  The `lw` at 0xdb596c8 loads 4 bytes from [a0+28028] +0x0.
  The `lw` at 0xdb596d4 loads 4 bytes from [a0+28028] +0x4.
  The `lw` at 0xdb596e0 loads 4 bytes from [a0+28028] +0x8.
  The `lw` at 0xdb596ec loads 4 bytes from [a0+28028] +0xc.
  The `lw` at 0xdb596f8 loads 4 bytes from [a0+28028] +0x10.
  The `beq` branch at 0xdb5967c targets 0xdb596c0, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb59684 targets 0xdb596cc, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb5968c targets 0xdb596d8, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The `beq` branch at 0xdb59694 targets 0xdb596e4, is taken when a1 == a2(=0x8063), and falls through when a1 != a2(=0x8063).
  The `beq` branch at 0xdb5969c targets 0xdb596f0, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xdb596a4 targets 0xdb596b4, is taken when a1 == v0(=0x8070), and falls through when a1 != v0(=0x8070).
  The return at 0xdb596ac has v0 = 0x0.
  The return at 0xdb596b8 has v0 = [[a0+28028]+20].
  The return at 0xdb596c4 has v0 = [[a0+28028]].
  The return at 0xdb596d0 has v0 = [[a0+28028]+4].
  The return at 0xdb596dc has v0 = [[a0+28028]+8].
  The return at 0xdb596e8 has v0 = [[a0+28028]+12].
  The return at 0xdb596f4 has v0 = [[a0+28028]+16].
- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59700 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59700-0xdb5974c (76 bytes).
  It occupies 76 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d80, including `lw` at 0xdb59728, `lw` at 0xdb59734, `lw` at 0xdb59740.
  The `lw` at 0xdb59730 loads 4 bytes from [a0+28032] +0x8.
  The `lw` at 0xdb5973c loads 4 bytes from [a0+28032] +0x0.
  The `lw` at 0xdb59748 loads 4 bytes from [a0+28032] +0x4.
  The `beq` branch at 0xdb59708 targets 0xdb59734, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb59710 targets 0xdb59740, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb59718 targets 0xdb59728, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xdb59720 has v0 = 0x0.
  The return at 0xdb5972c has v0 = [[a0+28032]+8].
  The return at 0xdb59738 has v0 = [[a0+28032]].
  The return at 0xdb59744 has v0 = [[a0+28032]+4].
- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59800 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59800-0xdb5983c (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0xdb59800 stores 4 bytes to a1 (arg1 at entry) +0xec.
  The `sb` at 0xdb59808 stores 1 byte to a1 (arg1 at entry) +0xc.
  The `sw` at 0xdb59810 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0xdb59818 loads 4 bytes from abs 0xdbdc138.
  The `lw` at 0xdb5981c loads 4 bytes from abs 0xdbdbe94.
  The `lw` at 0xdb59820 loads 4 bytes from abs 0xdbdbe98.
  The `sw` at 0xdb59824 stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `sw` at 0xdb59828 stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `lwc1` at 0xdb5982c loads 4 bytes from abs 0xdbde444.
  The `sw` at 0xdb59830 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xdb59838 stores 4 bytes to a1 (arg1 at entry) +0xf0.
  The return at 0xdb59834 has v0 = 0xdb6c420.
- `__glim_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb5bdb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb5bdb0-0xdb5be24 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdb5bdb4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb5bdcc loads 4 bytes from abs 0x1010.
  The `sb` at 0xdb5bdd8 stores 1 byte to [0x1010] +0x9d7.
  The `sb` at 0xdb5bddc stores 1 byte to [0x1010] +0x9d6.
  The `sb` at 0xdb5bde0 stores 1 byte to [0x1010] +0x9d5.
  The `sb` at 0xdb5bde4 stores 1 byte to [0x1010] +0x9d4.
  The `sw` at 0xdb5bde8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb5bdec loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb5be00 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb5be0c calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=[0x1010].
  The `beq` branch at 0xdb5bdd0 targets 0xdb5be04, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xdb5bdfc has v0 = 0x1.
  The return at 0xdb5be1c has v0 = ret(__glSetError).
- `__glTextureSBModulateA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb63850 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb63850-0xdb638c0 (112 bytes).
  It occupies 112 bytes.
  The `lwc1` at 0xdb63850 loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `lwc1` at 0xdb63860 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0xdb63864 loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb63874 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb63884 loads 4 bytes from [a0+28040] +0xc8.
  The `swc1` at 0xdb6389c stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb638a0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xdb638b0 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `bgezall` at 0xdb63890 calls __GL_TEXENV_CLAMP [0xdb63370] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f13=0x0, f14=[a0+3536], f15=[[a0+28040]+184], f16=[a2+16].
  The return at 0xdb638b8 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glTextureSBReplaceA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb648b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb648b0-0xdb64928 (120 bytes).
  It occupies 120 bytes.
  The `lwc1` at 0xdb648b0 loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `lwc1` at 0xdb648c4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0xdb648c8 loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb648d8 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb648e8 loads 4 bytes from [a0+28040] +0xc8.
  The `swc1` at 0xdb64904 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb64908 loads 4 bytes from a0 (arg0 at entry) +0x77a0.
  The `swc1` at 0xdb64924 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `bgezall` at 0xdb648f4 calls __GL_TEXENV_CLAMP [0xdb63370] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f13=0x0, f14=[a0+3536], f15=[[a0+28040]+184], f16=[a2+16].
  The return at 0xdb64920 has v0 = ret(__GL_TEXENV_CLAMP).
- `__glim_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6c550 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6c550-0xdb6c638 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xdb6c55c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6c578 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6c5c4 loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb6c5c0 calls __glNamesGenNames [0xdb39730] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `jalr` at 0xdb6c5fc calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010].
  The `jalr` at 0xdb6c618 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010].
  The `beq` branch at 0xdb6c57c targets 0xdb6c610, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdb6c584 targets 0xdb6c5f4, is taken when s0(=a0) < 0 (signed), and falls through when s0(=a0) >= 0 (signed).
  The `beq` branch at 0xdb6c58c targets 0xdb6c5e0, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `bne` branch at 0xdb6c594 targets 0xdb6c5b0, is taken when s1(=a1) != 0, and falls through when s1(=a1) == 0.
  The `beq` branch at 0xdb6c608 targets 0xdb6c58c and is always taken.
  The return at 0xdb6c5a8 has v0 = ?.
  The return at 0xdb6c5d8 has v0 = ret(__glNamesGenNames).
  The return at 0xdb6c5ec has v0 = ?.
  The return at 0xdb6c630 has v0 = ret(__glSetError).
- `__glim_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6cb10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6cb10-0xdb6cc28 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xdb6cb10 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6cb18 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6cb78 loads 4 bytes from [0x1010] +0x2d60.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdb6cb84, `sw` at 0xdb6cbec.
  The `lw` at 0xdb6cbf8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb6cc0c stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb6cb54 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=[0x1018].
  The `jalr` at 0xdb6cb7c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=[0x1018].
  The `jalr` at 0xdb6cbb8 calls __glSetError [0xdb11f10] with a0=0x500, a1=0x2, a2=a1 at entry (arg1), a3=?.
  The `bgezall` at 0xdb6cbdc calls __glBindTexture [0xdb6c8b0] with a0=[0x1010], a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0xdb6cb38 targets 0xdb6cb90, is taken when a4(=[0x1018]) == 0, and falls through when a4(=[0x1018]) != 0.
  The `beq` branch at 0xdb6cb48 targets 0xdb6cb70, is taken when a4(=[0x1018]) == v0(=0x2), and falls through when a4(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xdb6cb9c targets 0xdb6cc10, is taken when s0(=a0) == at(=0xde0), and falls through when s0(=a0) != at(=0xde0).
  The `beq` branch at 0xdb6cba4 targets 0xdb6cc1c, is taken when s0(=a0) == v0(=0xde1), and falls through when s0(=a0) != v0(=0xde1).
  The `beq` branch at 0xdb6cbac targets 0xdb6cbd4, is taken when s0(=a0) == v1(=0x806f), and falls through when s0(=a0) != v1(=0x806f).
  The `beq` branch at 0xdb6cc14 targets 0xdb6cbd8 and is always taken.
  The `beq` branch at 0xdb6cc20 targets 0xdb6cbd8 and is always taken.
  The return at 0xdb6cb68 has v0 = ret(__glSetError).
  The return at 0xdb6cbcc has v0 = ret(__glSetError).
  The return at 0xdb6cc08 has v0 = ret(__glBindTexture).
- `__glim_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6cc30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6cc30-0xdb6cde8 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0xdb6cc44 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6cc60 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6ccd0 loads 4 bytes from ?.
  The `lw` at 0xdb6cce8 loads 4 bytes from [0x1010] +0x6da0.
  The `lwc1` at 0xdb6ccf4 loads 4 bytes from [0x1010] +0xdd0.
  The `lwc1` at 0xdb6cd08 loads 4 bytes from ?.
  The `swc1` at 0xdb6cd0c stores 4 bytes to ret(__glNamesLockData) +0xf0.
  2 such `lw` accesses load 4 bytes from ret(__glNamesLockData) +0x8, including `lw` at 0xdb6cd10, `lw` at 0xdb6cd38.
  The `lw` at 0xdb6cd14 loads 4 bytes from [0x1010] +0x6d7c.
  The `lw` at 0xdb6cd20 loads 4 bytes from ([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2)) +0x0.
  The `lw` at 0xdb6cd24 loads 4 bytes from ret(__glNamesLockData) +0xec.
  The `lw` at 0xdb6cd28 loads 4 bytes from [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xdc.
  The `swc1` at 0xdb6cd34 stores 4 bytes to [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xe0.
  The `lw` at 0xdb6cd40 loads 4 bytes from [0x1010] +0x9ac.
  The `swc1` at 0xdb6cd54 stores 4 bytes to ?.
  The `jalr` at 0xdb6ccc0 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdb6cce4 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+28064], a2=?, a3=?.
  The `jalr` at 0xdb6cd04 calls (unnamed) [0xdb59750] with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1010]+3536].
  The `jalr` at 0xdb6cda8 calls __glSetError [0xdb11f10] with a0=0x501, a1=0x70000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb6cdc4 calls __glSetError [0xdb11f10] with a0=0x502, a1=0x70000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb6cc64 targets 0xdb6cdbc, is taken when at(=[0x1018]) == v1(=0x1), and falls through when at(=[0x1018]) != v1(=0x1).
  The `bltz` branch at 0xdb6cc6c targets 0xdb6cda0, is taken when s4(=a0) < 0 (signed), and falls through when s4(=a0) >= 0 (signed).
  The `beq` branch at 0xdb6cc74 targets 0xdb6cd88, is taken when s4(=a0) == 0, and falls through when s4(=a0) != 0.
  The `blez` branch at 0xdb6cc8c targets 0xdb6cd70, is taken when s4(=a0) <= 0 (signed), and falls through when s4(=a0) > 0 (signed).
  The `beq` branch at 0xdb6ccb0 targets 0xdb6ccd0 and is always taken.
  The `beq` branch at 0xdb6ccc8 targets 0xdb6cd58, is taken when s1(?) == s3(=((a0 << 0x2) + a1)), and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xdb6ccd4 targets 0xdb6ccc8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xdb6ccec targets 0xdb6ccc8, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xdb6cd2c targets 0xdb6ccbc, is taken when at(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) != v1(=[ret(__glNamesLockData)+236]), and falls through when at(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) == v1(=[ret(__glNamesLockData)+236]).
  The `beq` branch at 0xdb6cd50 targets 0xdb6ccb8 and is always taken.
  The `beq` branch at 0xdb6cdb4 targets 0xdb6cc74 and is always taken.
  The return at 0xdb6cd80 has v0 = one of a1, ?.
  The return at 0xdb6cd98 has v0 = a1.
  The return at 0xdb6cde0 has v0 = ret(__glSetError).
- `__glim_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6d0f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6d0f0-0xdb6d1b4 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xdb6d0f4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6d110 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6d130 loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb6d12c calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdb6d158 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdb6d194 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb6d114 targets 0xdb6d18c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdb6d11c targets 0xdb6d178, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0xdb6d134 targets 0xdb6d150, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The return at 0xdb6d148 has v0 = 0x0.
  The return at 0xdb6d170 has v0 = 0x1.
  The return at 0xdb6d184 has v0 = 0x0.
  The return at 0xdb6d1ac has v0 = 0x0.
- `__glim_SelectTextureCoordSetSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6dce0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6dce0-0xdb6dd78 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdb6dce8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6dd00 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6dd14 loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb6dd28 stores 4 bytes to [0x1010] +0x6d8c.
  The `jalr` at 0xdb6dd40 calls __glSetError [0xdb11f10] with a0=0x500, a1=?, a2=[0x1010], a3=0x83c7.
  The `jalr` at 0xdb6dd60 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=[0x1010], a3=0x83c7.
  The `beq` branch at 0xdb6dd04 targets 0xdb6dd58, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bne` branch at 0xdb6dd0c targets 0xdb6dd3c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xdb6dd20 targets 0xdb6dd3c, is taken when at(=[[0x1010]+3604]+33735) < a0 (unsigned), and falls through when at(=[[0x1010]+3604]+33735) >= a0 (unsigned).
  The return at 0xdb6dd30 has v0 = 0x1.
  The return at 0xdb6dd50 has v0 = ret(__glSetError).
  The return at 0xdb6dd70 has v0 = ret(__glSetError).
  The instructions from 0xdb6dd38 to 0xdb6dd38 are not reached by any path from the entry, and their branches are not listed.
- `__glim_InterleavedTextureCoordSetsSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7a6b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7a6b0-0xdb7a73c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdb7a6b4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb7a6c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb7a6dc loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb7a6ec stores 4 bytes to [0x1010] +0x1524.
  The `jalr` at 0xdb7a704 calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb7a724 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xdb7a6cc targets 0xdb7a71c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xdb7a6d4 targets 0xdb7a700, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bne` branch at 0xdb7a6e4 targets 0xdb7a700, is taken when a1(=[[0x1010]+3604]) < a0 (signed), and falls through when a1(=[[0x1010]+3604]) >= a0 (signed).
  The return at 0xdb7a6f4 has v0 = 0x1.
  The return at 0xdb7a714 has v0 = ret(__glSetError).
  The return at 0xdb7a734 has v0 = ret(__glSetError).
  The instructions from 0xdb7a6fc to 0xdb7a6fc are not reached by any path from the entry, and their branches are not listed.
- `__gllc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb87fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb87fa0-0xdb8801c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xdb87fb0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb87ff8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb88008 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb87fcc calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb88004 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb8f170, a3=a0 at entry (arg0).
  The `bne` branch at 0xdb87fd4 targets 0xdb87fe8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb87fe0 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb88014 has v0 = ret(__glDlistAppendOp).
- `__gllc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ace0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ace0-0xdb8ad68 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdb8ace0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb8ad38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb8ad48 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdb8ad54 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb8ad10 calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8ad50 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb907c0, a3=a0 at entry (arg0), a4=a1 at entry (arg1).
  The `bne` branch at 0xdb8ad18 targets 0xdb8ad2c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8ad24 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8ad60 has v0 = ret(__glDlistAppendOp).
- `__gllc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ad70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ad70-0xdb8ae74 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xdb8ad98 loads 4 bytes from abs 0x1010.
  The `sw` at 0xdb8adf4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xdb8ae00 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdb8adb8 calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=((a0 << 0x2) + (a0 << 0x2))+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8adfc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=0xd5, a4=ret(__glDlistAllocOp2).
  The `jalr` at 0xdb8ae1c calls memcpy with a0=((a0 << 0x2) + ret(__glDlistAllocOp2))+20, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=ret(__glDlistAllocOp2).
  The `jalr` at 0xdb8ae30 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb90810, a3=?.
  The `jalr` at 0xdb8ae54 calls __gllc_InvalidValue [0xdad6500] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xdb8ad9c targets 0xdb8ae50, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xdb8adc4 targets 0xdb8ade0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8add8 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8ae48 has v0 = ret(__glDlistAppendOp).
  The return at 0xdb8ae6c has v0 = ret(__gllc_InvalidValue).
- `__gllc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8d360 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8d360-0xdb8d400 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xdb8d368 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb8d3c0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdb8d3d4 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `sb` at 0xdb8d3dc stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xdb8d3e0 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xdb8d3ec stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb8d398 calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8d3e8 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb919c0, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a3 at entry (arg3).
  The `bne` branch at 0xdb8d3a0 targets 0xdb8d3b4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8d3ac has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8d3f8 has v0 = ret(__glDlistAppendOp).
- `__glle_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8f170 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8f170-0xdb8f1b4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdb8f184 loads 4 bytes from abs 0x1150.
  The `lw` at 0xdb8f198 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb8f194 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb8f1ac has v0 = a0+4.
- `__glle_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb907c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb907c0-0xdb90808 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdb907c0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdb907d8 loads 4 bytes from abs 0x1390.
  The `lw` at 0xdb907ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb907e8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb90800 has v0 = a0+8.
- `__glle_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb90810 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb90810-0xdb90880 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb90828 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb90830 loads 4 bytes from abs 0x13a0.
  The `jalr` at 0xdb90850 calls (unknown callee) with a0=[a0], a1=a0+4, a2=(a0 + ([a0] << 0x2))+4, a3=([a0] << 0x2), a4=0x517f8.
  The return at 0xdb90878 has v0 = ((([a0] << 0x2) + ([a0] << 0x2)) + a0)+4.
- `__glle_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb919c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb919c0-0xdb91a10 (80 bytes).
  It occupies 80 bytes.
  The `lbu` at 0xdb919c0 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0xdb919c4 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0xdb919c8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lw` at 0xdb919e0 loads 4 bytes from abs 0x152c.
  The `lbu` at 0xdb919f4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb919f0 calls (unknown callee) with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1.
  The return at 0xdb91a08 has v0 = a0+4.
- `__glsplc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb972a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb972a0-0xdb972f8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdb972f4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb972c4 calls __glSPDlalloc [0xda60f00] with a0=0x4, a1=0x7d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb972cc targets 0xdb972e4, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb972dc has v0 = ret(__glSPDlalloc).
  The return at 0xdb972f0 has v0 = ret(__glSPDlalloc).
- `__glsplc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb994d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb994d0-0xdb99534 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdb99520 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdb99530 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdb994f8 calls __glSPDlalloc [0xda60f00] with a0=0x8, a1=0xd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb99504 targets 0xdb9951c, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb99514 has v0 = ret(__glSPDlalloc).
  The return at 0xdb9952c has v0 = ret(__glSPDlalloc).
- `__glsplc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb99540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb99540-0xdb995e8 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdb995b4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb99578 calls __glSPDlalloc [0xda60f00] with a0=((a0 << 0x2) + (a0 << 0x2))+4, a1=0xd5, a2=a2 at entry (arg2), a3=0x48ac8.
  The `jalr` at 0xdb995b0 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=a0 at entry (arg0), a5=ret(__glSPDlalloc).
  The `jalr` at 0xdb995d0 calls memcpy with a0=((a0 << 0x2) + ret(__glSPDlalloc))+4, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=ret(__glSPDlalloc).
  The `bne` branch at 0xdb99580 targets 0xdb99598, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb99590 has v0 = ret(__glSPDlalloc).
  The return at 0xdb995e0 has v0 = ret(memcpy).
- `__glsplc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb9b230 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb9b230-0xdb9b2ac (124 bytes).
  It occupies 124 bytes.
  The `sb` at 0xdb9b288 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdb9b28c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xdb9b290 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `sb` at 0xdb9b2a8 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `jalr` at 0xdb9b260 calls __glSPDlalloc [0xda60f00] with a0=0x4, a1=0x111, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb9b26c targets 0xdb9b284, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb9b27c has v0 = ret(__glSPDlalloc).
  The return at 0xdb9b2a4 has v0 = ret(__glSPDlalloc).
- `__glce_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba1a20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba1a20-0xdba1a94 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdba1a20 loads 4 bytes from abs 0x1150.
  The `lw` at 0xdba1a40 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba1a50 loads 4 bytes from [0x1010] +0x18f0.
  3 such `sw` accesses store 4 bytes to abs 0x1150, including `sw` at 0xdba1a5c, `sw` at 0xdba1a74, `sw` at 0xdba1a84.
  The `lw` at 0xdba1a68 loads 4 bytes from [0x1010] +0x2728.
  The `jalr` at 0xdba1a58 calls glDrawBuffer with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba1a70 calls glDrawBuffer with a0=a0 at entry (arg0), a1=[[0x1010]+10024], a2=?, a3=?.
  The return at 0xdba1a8c has v0 = ret(glDrawBuffer).
- `__glce_AreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5c80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5c80-0xdba5cd0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdba5c88 loads 4 bytes from abs 0x138c.
  The `lw` at 0xdba5c98 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5ca8 loads 4 bytes from [0x1010] +0x2964.
  2 such `sw` accesses store 4 bytes to abs 0x138c, including `sw` at 0xdba5cb0, `sw` at 0xdba5cc0.
  The `jalr` at 0xdba5cac calls glAreTexturesResidentEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5cc8 has v0 = ?.
- `__glce_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5cd0-0xdba5d4c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xdba5cd0 loads 4 bytes from abs 0x1390.
  The `lw` at 0xdba5cf4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5d04 loads 4 bytes from [0x1010] +0x1b30.
  3 such `sw` accesses store 4 bytes to abs 0x1390, including `sw` at 0xdba5d10, `sw` at 0xdba5d2c, `sw` at 0xdba5d3c.
  The `lw` at 0xdba5d20 loads 4 bytes from [0x1010] +0x2968.
  The `jalr` at 0xdba5d0c calls glBindTextureEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba5d28 calls glBindTextureEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[0x1010]+10600], a3=?.
  The return at 0xdba5d44 has v0 = ret(glBindTextureEXT).
- `__glce_DeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5d50 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5d50-0xdba5d9c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdba5d58 loads 4 bytes from abs 0x1394.
  The `lw` at 0xdba5d68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5d78 loads 4 bytes from [0x1010] +0x296c.
  2 such `sw` accesses store 4 bytes to abs 0x1394, including `sw` at 0xdba5d80, `sw` at 0xdba5d8c.
  The `jalr` at 0xdba5d7c calls glDeleteTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5d94 has v0 = ret(glDeleteTexturesEXT).
- `__glce_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5da0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5da0-0xdba5dec (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdba5da8 loads 4 bytes from abs 0x1398.
  The `lw` at 0xdba5db8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5dc8 loads 4 bytes from [0x1010] +0x2970.
  2 such `sw` accesses store 4 bytes to abs 0x1398, including `sw` at 0xdba5dd0, `sw` at 0xdba5ddc.
  The `jalr` at 0xdba5dcc calls glGenTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5de4 has v0 = ret(glGenTexturesEXT).
- `__glce_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5df0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5df0-0xdba5e40 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdba5df8 loads 4 bytes from abs 0x139c.
  The `lw` at 0xdba5e08 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5e18 loads 4 bytes from [0x1010] +0x2974.
  2 such `sw` accesses store 4 bytes to abs 0x139c, including `sw` at 0xdba5e20, `sw` at 0xdba5e30.
  The `jalr` at 0xdba5e1c calls glIsTextureEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5e38 has v0 = ?.
- `__glce_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5e40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5e40-0xdba5ec4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xdba5e40 loads 4 bytes from abs 0x13a0.
  The `lw` at 0xdba5e68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5e78 loads 4 bytes from [0x1010] +0x1b40.
  3 such `sw` accesses store 4 bytes to abs 0x13a0, including `sw` at 0xdba5e84, `sw` at 0xdba5ea4, `sw` at 0xdba5eb4.
  The `lw` at 0xdba5e98 loads 4 bytes from [0x1010] +0x2978.
  The `jalr` at 0xdba5e80 calls glPrioritizeTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba5ea0 calls glPrioritizeTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[0x1010]+10616].
  The return at 0xdba5ebc has v0 = ret(glPrioritizeTexturesEXT).
- `__glce_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba8d20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba8d20-0xdba8dac (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdba8d20 loads 4 bytes from abs 0x152c.
  The `lw` at 0xdba8d4c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba8d5c loads 4 bytes from [0x1010] +0x1ccc.
  3 such `sw` accesses store 4 bytes to abs 0x152c, including `sw` at 0xdba8d68, `sw` at 0xdba8d8c, `sw` at 0xdba8d9c.
  The `lw` at 0xdba8d80 loads 4 bytes from [0x1010] +0x2b04.
  The `jalr` at 0xdba8d64 calls glTextureColorMaskSGIS with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba8d88 calls glTextureColorMaskSGIS with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1010]+11012].
  The return at 0xdba8da4 has v0 = ret(glTextureColorMaskSGIS).
- `glDrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaccb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbaccb0-0xdbaccbc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbaccb0 loads 4 bytes from abs 0x1150.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbaccb4).
- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad364 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad364 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).
- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad370 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).
- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad370 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).
- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad37c loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad37c loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).
- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad388 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).
- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad388 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).
- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad394 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).
- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad394 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).
- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3a0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3a0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).
- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf82340 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf82340-0xcf82480 (320 bytes).
  It occupies 320 bytes.
  The `ld` at 0xcf82348 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf8234c loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf82350 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0xcf8238c loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf82390, `ld` at 0xcf8240c.
  The `ld` at 0xcf8239c loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf823ac, `ld` at 0xcf823d8, `ld` at 0xcf82464.
  The `ld` at 0xcf823b0 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf823c4 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0xcf823cc stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf823d0, `sb` at 0xcf823f8.
  The `ld` at 0xcf823d4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf823e0 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf823e8 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0xcf823ec loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0xcf823f4 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0xcf82400 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0xcf82404 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0xcf82408 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0xcf82418 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf82428 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `sd` at 0xcf82448 stores 8 bytes to [[0x1028]:8+280]:8 +0x78.
  The `jalr` at 0xcf82388 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=[[[0x1028]:8+280]:8+312]:8.
  The `jalr` at 0xcf823a0 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf8241c calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[0x1028]:8+280]:8+104], a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf82434 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf8245c calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf82364 targets 0xcf82470, is taken when a3(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf82374 targets 0xcf82440, is taken when a3(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf82394 targets 0xcf823ac, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf823bc targets 0xcf8245c, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  The `beq` branch at 0xcf82410 targets 0xcf82428, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf8242c targets 0xcf82440, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf82468 targets 0xcf823c4 and is always taken.
  The return at 0xcf82454 has v0 = one of ?, ret(?).
  The return at 0xcf82478 has v0 = ?.
- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf82480 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf82480-0xcf825cc (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0xcf82488 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf8248c loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf82490 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0xcf824d0 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf824d4, `ld` at 0xcf82558.
  The `ld` at 0xcf824e0 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf824f0, `ld` at 0xcf8251c, `ld` at 0xcf825b0.
  The `ld` at 0xcf824f4 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf82508 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0xcf82510 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf82514, `sb` at 0xcf82540.
  The `ld` at 0xcf82518 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf82524 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf8252c stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0xcf82534 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sb` at 0xcf8253c stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0xcf82548 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0xcf8254c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc.
  The `sw` at 0xcf82550 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `sw` at 0xcf82554 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `ld` at 0xcf82564 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf82574 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `sd` at 0xcf82594 stores 8 bytes to [[0x1028]:8+280]:8 +0x70.
  The `jalr` at 0xcf824cc calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[0x1028]:8+280]:8+312]:8.
  The `jalr` at 0xcf824e4 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf82568 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=a0 at entry (arg0), a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf82580 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf825a8 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xcf824a4 targets 0xcf825bc, is taken when a4(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a4(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf824b8 targets 0xcf8258c, is taken when a4(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when a4(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf824d8 targets 0xcf824f0, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf82500 targets 0xcf825a8, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned).
  The `beq` branch at 0xcf8255c targets 0xcf82574, is taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf82578 targets 0xcf8258c, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf825b4 targets 0xcf82508 and is always taken.
  The return at 0xcf825a0 has v0 = one of ?, ret(?).
  The return at 0xcf825c4 has v0 = ?.
- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f6d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8f6d4-0xcf8f714 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0xcf8f6f8 calls __glXPostError with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0.
  The return at 0xcf8f70c has v0 = 0x0.
- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf90330 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf90330-0xcf90628 (760 bytes).
  It occupies 760 bytes.
  The `ld` at 0xcf9037c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0xcf903b0 stores 4 bytes to ret(__glXAddDrawableInterest) +0x40.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xcf903b4, `lw` at 0xcf904ec.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0xcf903c4, `lw` at 0xcf903d4, `lw` at 0xcf903e4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf90428, `ld` at 0xcf90560.
  The `ld` at 0xcf90434 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf90440, `ld` at 0xcf90480, `ld` at 0xcf905e4.
  The `ld` at 0xcf90448 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf90460 stores 8 bytes to a0 (arg0 at entry) +0xa0.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf9046c, `sb` at 0xcf9049c.
  The `sh` at 0xcf90474 stores 2 bytes to [a0+176]:8 +0x2.
  The `ld` at 0xcf9047c loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf90488 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf90498 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sb` at 0xcf904a0 stores 1 byte to [a0+176]:8 +0x1.
  The `lw` at 0xcf904a4 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `sw` at 0xcf904a8 stores 4 bytes to [a0+176]:8 +0x4.
  The `lw` at 0xcf904b0 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `sw` at 0xcf904b8 stores 4 bytes to [a0+176]:8 +0xc.
  The `sw` at 0xcf904c0 stores 4 bytes to [a0+176]:8 +0x10.
  The `sw` at 0xcf904cc stores 4 bytes to [a0+176]:8 +0x8.
  The `sw` at 0xcf904f0 stores 4 bytes to [a0+176]:8 +0x14.
  The `lw` at 0xcf904f8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `sw` at 0xcf90504 stores 4 bytes to [a0+176]:8 +0x18.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xcf90534, `sw` at 0xcf9053c, `sw` at 0xcf90544.
  The `ld` at 0xcf9056c loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf90578 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xcf90364 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf90380 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90394 calls __glXAddDrawableInterest with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90438 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf90570 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=?.
  The `jalr` at 0xcf90584 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90590 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf905dc calls _XFlush with a0=a0 at entry (arg0), a1=[a0+176]:8, a2=?, a3=?.
  The `jalr` at 0xcf90600 calls __glXPostError with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0.
  The `beq` branch at 0xcf90374 targets 0xcf905b8, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf903a0 targets 0xcf905f0, is taken when v0(=ret(__glXAddDrawableInterest)) == 0, and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  The `beq` branch at 0xcf903ac targets 0xcf90428, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xcf903bc targets 0xcf90428, is taken when at(=[a2]) == 0, and falls through when at(=[a2]) != 0.
  The `beq` branch at 0xcf903cc targets 0xcf90428, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xcf903dc targets 0xcf90428, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xcf903ec targets 0xcf90428, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xcf903fc targets 0xcf90428, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xcf9040c targets 0xcf90428, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xcf90420 targets 0xcf903c4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xcf9042c targets 0xcf90440, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf90458 targets 0xcf905d8, is taken when a4(=[a0+184]:8) < at(?) (unsigned), and falls through when a4(=[a0+184]:8) >= at(?) (unsigned).
  The `beq` branch at 0xcf904c8 targets 0xcf90560, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `bne` branch at 0xcf904dc targets 0xcf90560, is taken when s0(?) < 0x0 (signed), and falls through when s0(?) >= 0x0 (signed).
  The `beq` branch at 0xcf904e4 targets 0xcf90508, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xcf90514 targets 0xcf90560, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xcf90558 targets 0xcf90530, is taken when v0(?) != a2(=-0x1), and falls through when v0(?) == a2(=-0x1).
  The `beq` branch at 0xcf90564 targets 0xcf90578, is taken when a2(=[a0+2408]:8) == 0, and falls through when a2(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf9057c targets 0xcf9058c, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf905e8 targets 0xcf90460 and is always taken.
  The return at 0xcf905b0 has v0 = ret(?).
  The return at 0xcf905d0 has v0 = 0x0.
  The return at 0xcf90620 has v0 = 0x0.
- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf90628 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf90628-0xcf90778 (336 bytes).
  It occupies 336 bytes.
  The `lw` at 0xcf90688 loads 4 bytes from ret(__glXAddDrawableInterest) +0x20.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x968, including `ld` at 0xcf9069c, `ld` at 0xcf90708.
  The `ld` at 0xcf906a8 loads 8 bytes from [a0+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xb0, including `ld` at 0xcf906b4, `ld` at 0xcf906e8, `ld` at 0xcf9076c.
  The `ld` at 0xcf906b8 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `sd` at 0xcf906cc stores 8 bytes to a0 (arg0 at entry) +0xa0.
  The `sh` at 0xcf906d4 stores 2 bytes to [a0+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [a0+176]:8 +0x0, including `sb` at 0xcf906dc, `sb` at 0xcf90704.
  The `ld` at 0xcf906e4 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf906f0 stores 8 bytes to a0 (arg0 at entry) +0x98.
  The `sd` at 0xcf906f8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0xcf906fc stores 4 bytes to [a0+176]:8 +0x4.
  The `sb` at 0xcf90700 stores 1 byte to [a0+176]:8 +0x1.
  The `ld` at 0xcf90714 loads 8 bytes from [a0+2408]:8 +0x8.
  The `ld` at 0xcf90720 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `sd` at 0xcf90774 stores 8 bytes to ret(__glXAddDrawableInterest) +0x0.
  The `jalr` at 0xcf90650 calls __glXSetupForCommand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf90670 calls __glXAddDrawableInterest with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90680 calls __glXRemoveDrawableInterest with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90694 calls __glXFreeDrawablePrivate with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf906ac calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=?.
  The `jalr` at 0xcf90718 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=[a0+176]:8+8, a3=0x2.
  The `jalr` at 0xcf9072c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xcf90760 calls _XFlush with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+8.
  The `beq` branch at 0xcf90660 targets 0xcf9074c, is taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0, and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  The `beq` branch at 0xcf9068c targets 0xcf90770, is taken when v1(=[ret(__glXAddDrawableInterest)+32]) == 0, and falls through when v1(=[ret(__glXAddDrawableInterest)+32]) != 0.
  The `beq` branch at 0xcf906a0 targets 0xcf906b4, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `bne` branch at 0xcf906c4 targets 0xcf90760, is taken when a2(=[a0+184]:8) < a3(=[a0+176]:8+8) (unsigned), and falls through when a2(=[a0+184]:8) >= a3(=[a0+176]:8+8) (unsigned).
  The `beq` branch at 0xcf9070c targets 0xcf90720, is taken when a1(=[a0+2408]:8) == 0, and falls through when a1(=[a0+2408]:8) != 0.
  The `beq` branch at 0xcf90724 targets 0xcf90738, is taken when t9(=[a0+208]:8) == 0, and falls through when t9(=[a0+208]:8) != 0.
  The `beq` branch at 0xcf90768 targets 0xcf906cc and is always taken.
  The `beq` branch at 0xcf90770 targets 0xcf90690 and is always taken.
  The return at 0xcf90744 has v0 = one of ?, ret(?).
  The return at 0xcf90758 has v0 = ?.
- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf91e98 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf91e98-0xcf91f14 (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0xcf91e98 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf91e9c loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf91ea0 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  The `sb` at 0xcf91ea4 stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x7.
  The `sb` at 0xcf91ea8 stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x6.
  The `sb` at 0xcf91eac stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x5.
  The `sb` at 0xcf91eb0 stores 1 byte to [[[0x1028]:8+280]:8+8]:8 +0x4.
  The `sh` at 0xcf91eb8 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x0.
  The `sh` at 0xcf91ec0 stores 2 bytes to [[[0x1028]:8+280]:8+8]:8 +0x2.
  The `ld` at 0xcf91ec4 loads 8 bytes from [[0x1028]:8+280]:8 +0x10.
  The `sd` at 0xcf91ee0 stores 8 bytes to [[0x1028]:8+280]:8 +0x8.
  The `jalr` at 0xcf91f04 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[[0x1028]:8+280]:8+8]:8+8, a6=[[0x1028]:8+280]:8.
  The `bne` branch at 0xcf91ee4 targets 0xcf91ef8, is taken when at(=[[[0x1028]:8+280]:8+16]:8) < a5(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned), and falls through when at(=[[[0x1028]:8+280]:8+16]:8) >= a5(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned).
  The `beq` branch at 0xcf91f0c targets 0xcf91eec and is always taken.
  The return at 0xcf91ef0 has v0 = one of 0x1cc00, ret(__glXFlushRenderBuffer).
- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf921dc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf921dc-0xcf92338 (348 bytes).
  It occupies 348 bytes.
  The `ld` at 0xcf921e4 loads 8 bytes from abs 0x1028.
  The `ld` at 0xcf921e8 loads 8 bytes from [0x1028]:8 +0x118.
  The `ld` at 0xcf921f0 loads 8 bytes from [[0x1028]:8+280]:8 +0x138.
  The `ld` at 0xcf92224 loads 8 bytes from [[0x1028]:8+280]:8 +0x8.
  2 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x968, including `ld` at 0xcf92228, `ld` at 0xcf922d8.
  The `ld` at 0xcf92234 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x0.
  3 such `ld` accesses load 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb0, including `ld` at 0xcf92240, `ld` at 0xcf92270, `ld` at 0xcf92334.
  The `ld` at 0xcf92244 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xb8.
  The `sd` at 0xcf92258 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xa0.
  The `sh` at 0xcf92260 stores 2 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2.
  2 such `sb` accesses store 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0, including `sb` at 0xcf92268, `sb` at 0xcf92298.
  The `ld` at 0xcf9226c loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf92278 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0x98.
  The `sd` at 0xcf92280 stores 8 bytes to [[[0x1028]:8+280]:8+312]:8 +0xb0.
  The `lw` at 0xcf92284 loads 4 bytes from [[0x1028]:8+280]:8 +0x1a4.
  The `sw` at 0xcf9228c stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4.
  The `sb` at 0xcf92294 stores 1 byte to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1.
  The `lw` at 0xcf922a4 loads 4 bytes from [[0x1028]:8+280]:8 +0x68.
  The `sw` at 0xcf922b0 stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc.
  The `sw` at 0xcf922bc stores 4 bytes to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8.
  The `ld` at 0xcf922e8 loads 8 bytes from [[[[0x1028]:8+280]:8+312]:8+2408]:8 +0x8.
  The `ld` at 0xcf922f8 loads 8 bytes from [[[0x1028]:8+280]:8+312]:8 +0xd0.
  The `jalr` at 0xcf92220 calls __glXFlushRenderBuffer with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xcf92238 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf922b8 calls _XReply with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-96, a2=0x0, a3=0x0, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8+16, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8, a6=0x4, a7=0x10.
  The `jalr` at 0xcf922d0 calls _XRead with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jalr` at 0xcf922ec calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8.
  The `jalr` at 0xcf92304 calls (unknown callee) with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xcf92328 calls _XFlush with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8.
  The `beq` branch at 0xcf9220c targets 0xcf92310, is taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0, and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  The `beq` branch at 0xcf9222c targets 0xcf92240, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `bne` branch at 0xcf92250 targets 0xcf92328, is taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned), and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned).
  The `beq` branch at 0xcf922e0 targets 0xcf922f8, is taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0, and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  The `beq` branch at 0xcf922fc targets 0xcf92310, is taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0, and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  The `beq` branch at 0xcf92330 targets 0xcf92258 and is always taken.
  The return at 0xcf92320 has v0 = one of ?, ret(?).
- `InitBuffers` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb33b6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb33b6b0-0xb33b8b4 (516 bytes).
  It occupies 516 bytes.
  The `sd` at 0xb33b6c8 stores 8 bytes to a0 (arg0 at entry) +0x9a28.
  The `lbu` at 0xb33b6cc loads 1 byte from a0 (arg0 at entry) +0xdee.
  The `sd` at 0xb33b6e4 stores 8 bytes to a0 (arg0 at entry) +0x4578.
  The `sd` at 0xb33b6e8 stores 8 bytes to a0 (arg0 at entry) +0x9a30.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xded, including `lbu` at 0xb33b6ec, `lbu` at 0xb33b770, `lbu` at 0xb33b838.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x4570, including `sd` at 0xb33b6f8, `sd` at 0xb33b844.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9a30, including `ld` at 0xb33b718, `ld` at 0xb33b87c.
  The `lw` at 0xb33b720 loads 4 bytes from a0 (arg0 at entry) +0xe38.
  The `ld` at 0xb33b774 loads 8 bytes from a0 (arg0 at entry) +0x9cd8.
  The `lbu` at 0xb33b79c loads 1 byte from a0 (arg0 at entry) +0xdf0.
  The `sw` at 0xb33b7a4 stores 4 bytes to a0 (arg0 at entry) +0x1460.
  The `sb` at 0xb33b7b0 stores 1 byte to a0 (arg0 at entry) +0x145c.
  The `lbu` at 0xb33b7d0 loads 1 byte from a0 (arg0 at entry) +0xdf1.
  The `sw` at 0xb33b7f4 stores 4 bytes to a0 (arg0 at entry) +0x9e34.
  The `lbu` at 0xb33b7f8 loads 1 byte from a0 (arg0 at entry) +0xdf2.
  The `bgezall` at 0xb33b704 calls __glOdysseyInitCI [0xb338440] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `bgezall` at 0xb33b714 calls __glOdysseyInitCI [0xb338440] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0xb33b754 calls __glOdysseyInitCI [0xb338440] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xb33b784 calls __glOdysseyInitRGB [0xb393720] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xb33b7c0 calls __glOdysseyInitAccum [0xb32ad90] with a0=a0+40584, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb33b7e4 calls __glInitDepth [0xb3fc0a0] with a0=a0+40376, a1=a0 at entry (arg0), a2=[a0+3569]:1, a3=?.
  The `jalr` at 0xb33b80c calls __glInitStencil8 [0xb434f40] with a0=a0+40160, a1=a0 at entry (arg0), a2=[a0+3570]:1, a3=?.
  The `jalr` at 0xb33b818 calls __glUpdateDepthRange [0xb466170] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xb33b850 calls __glOdysseyInitCI [0xb338440] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `jalr` at 0xb33b868 calls __glOdysseyInitRGB [0xb393720] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `jalr` at 0xb33b878 calls __glOdysseyInitRGB [0xb393720] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb33b8a4 calls __glOdysseyInitRGB [0xb393720] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `beq` branch at 0xb33b6e0 targets 0xb33b838, is taken when at(=[a0+3566]:1) == 0, and falls through when at(=[a0+3566]:1) != 0.
  The `beq` branch at 0xb33b6f4 targets 0xb33b860, is taken when at(=[a0+3565]:1) == 0, and falls through when at(=[a0+3565]:1) != 0.
  The `blez` branch at 0xb33b724 targets 0xb33b79c, is taken when a0(=[a0+3640]) <= 0 (signed), and falls through when a0(=[a0+3640]) > 0 (signed).
  The `beq` branch at 0xb33b748 targets 0xb33b770 and is always taken.
  The `beq` branch at 0xb33b760 targets 0xb33b794, is taken when s2(?) == s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)), and falls through when s2(?) != s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)).
  The `bne` branch at 0xb33b778 targets 0xb33b750, is taken when a2(=[a0+3565]:1) != 0, and falls through when a2(=[a0+3565]:1) == 0.
  The `beq` branch at 0xb33b78c targets 0xb33b760 and is always taken.
  The `beq` branch at 0xb33b7ac targets 0xb33b7d0, is taken when v0(=[a0+3568]:1) == 0, and falls through when v0(=[a0+3568]:1) != 0.
  The `beq` branch at 0xb33b7c8 targets 0xb33b888, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0xb33b7d4 targets 0xb33b7ec, is taken when a2(=[a0+3569]:1) == 0, and falls through when a2(=[a0+3569]:1) != 0.
  The `beq` branch at 0xb33b7fc targets 0xb33b814, is taken when a2(=[a0+3570]:1) == 0, and falls through when a2(=[a0+3570]:1) != 0.
  The `beq` branch at 0xb33b840 targets 0xb33b89c, is taken when a2(=[a0+3565]:1) == 0, and falls through when a2(=[a0+3565]:1) != 0.
  The `beq` branch at 0xb33b858 targets 0xb33b720 and is always taken.
  The `beq` branch at 0xb33b880 targets 0xb33b720 and is always taken.
  The `beq` branch at 0xb33b8ac targets 0xb33b720 and is always taken.
  The return at 0xb33b830 has v0 = 0x1.
  The return at 0xb33b894 has v0 = 0x0.
- `ImageChainAddOpTextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3613b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3613b0-0xb361438 (136 bytes).
  It occupies 136 bytes.
  The `sw` at 0xb3613f4 stores 4 bytes to ret(ImageChainOpCreate) +0x14.
  The `sw` at 0xb3613fc stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `lw` at 0xb361408 loads 4 bytes from ret(ImageChainOpCreate) +0x10.
  The `sd` at 0xb361418 stores 8 bytes to ret(ImageChainOpCreate) +0x8.
  The `sw` at 0xb361424 stores 4 bytes to ret(ImageChainOpCreate) +0x10.
  The `bgezall` at 0xb3613c8 calls ImageChainOpCreate [0xb35f9b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb361420 calls ImageChainAddOp [0xb35fd60] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `bne` branch at 0xb3613d0 targets 0xb3613e4, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The return at 0xb3613dc has v0 = 0x0.
  The return at 0xb361430 has v0 = 0x1.
- `RenderFunc_TextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb361440 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb361440-0xb361484 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0xb36145c loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ld` at 0xb36146c loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `jalr` at 0xb361468 calls __glOdysseyImageMovePixelsTexture [0xb3853e0] with a0=[a0+96]:8, a1=[a0+88]:8, a2=a1 at entry (arg1), a3=0x1.
  The return at 0xb36147c has v0 = 0x1.
- `LoadTextureFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb369aa0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb369aa0-0xb369b90 (240 bytes).
  It occupies 240 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xb369abc, `ld` at 0xb369b14, `ld` at 0xb369b54.
  The `ld` at 0xb369ac8 loads 8 bytes from abs 0x1020.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb369afc, `lw` at 0xb369b3c, `lw` at 0xb369b5c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb369b08, `sw` at 0xb369b48.
  The `sw` at 0xb369b10 stores 4 bytes to [0x1020]:8 +0xb00c.
  The `sw` at 0xb369b50 stores 4 bytes to [0x1020]:8 +0xb110.
  The `sw` at 0xb369b60 stores 4 bytes to [0x1020]:8 +0xb194.
  The `sw` at 0xb369b68 stores 4 bytes to [0x1020]:8 +0xb198.
  The `sw` at 0xb369b70 stores 4 bytes to [0x1020]:8 +0xb19c.
  The `lw` at 0xb369b78 loads 4 bytes from [0x1020]:8 +0x18fdc.
  The `sw` at 0xb369b84 stores 4 bytes to [0x1020]:8 +0x18fdc.
  The `sw` at 0xb369b8c stores 4 bytes to abs 0x1030.
  The `bgtz` branch at 0xb369b04 targets 0xb369af0, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `bgtz` branch at 0xb369b44 targets 0xb369b30, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The return at 0xb369b88 has v0 = ([[0x1020]:8+102364] | 0x38000).
- `ImageChainAddOpPixelTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb36d6c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb36d6c0-0xb36d744 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0xb36d6f0 stores 4 bytes to ret(ImageChainOpCreate) +0x0.
  The `sw` at 0xb36d6f8 stores 4 bytes to ret(ImageChainOpCreate) +0x14.
  The `lw` at 0xb36d704 loads 4 bytes from ret(ImageChainOpCreate) +0x10.
  The `sw` at 0xb36d710 stores 4 bytes to ret(ImageChainOpCreate) +0x10.
  The `sd` at 0xb36d71c stores 8 bytes to ret(ImageChainOpCreate) +0x8.
  The `ld` at 0xb36d730 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0xb36d6d0 calls ImageChainOpCreate [0xb35f9b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb36d72c calls ImageChainAddOp [0xb35fd60] with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=[a0+16]:8, a3=0x0.
  The `bne` branch at 0xb36d6d8 targets 0xb36d6ec, is taken when v0(=ret(ImageChainOpCreate)) != 0, and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  The return at 0xb36d6e4 has v0 = 0x0.
  The return at 0xb36d73c has v0 = 0x1.
- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb373d90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb373d90-0xb373dfc (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xb373d90 loads 4 bytes from a1 (arg1 at entry) +0x178.
  The `lwc1` at 0xb373da4 loads 4 bytes from a1 (arg1 at entry) +0x168.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x178, including `swc1` at 0xb373dcc, `swc1` at 0xb373dec.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x168, including `swc1` at 0xb373dd4, `swc1` at 0xb373ddc.
  The `bgezall` at 0xb373dd0 calls __glOdySpanShiftOffsetIndex [0xb373190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xb373df4 has v0 = ret(__glOdySpanShiftOffsetIndex).
- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397be0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb397be0-0xb397c44 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xb397be4 loads 4 bytes from a1 (arg1 at entry) +0x53c.
  The `ld` at 0xb397c24 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jalr` at 0xb397c18 calls __glOdysseyDestroyPMObjGroup [0xb38f4d0] with a0=a0 at entry (arg0), a1=a1+1340, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb397c28 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xb397c04 targets 0xb397c24, is taken when at(=[a1+1340]) == v0(=-0x1), and falls through when at(=[a1+1340]) != v0(=-0x1).
  The return at 0xb397c3c has v0 = ret(?).
- `InitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397c50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb397c50-0xb397e64 (532 bytes).
  It occupies 532 bytes.
  The `sw` at 0xb397c54 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0xb397c5c stores 4 bytes to a0 (arg0 at entry) +0x48.
  The `sw` at 0xb397c7c stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0xb397c80 stores 4 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0xb397c84 stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0xb397c8c stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0xb397c94 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0xb397c98 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0xb397c9c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sw` at 0xb397ca0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0xb397ca8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `swc1` at 0xb397cac stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `swc1` at 0xb397cb0 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `swc1` at 0xb397cb4 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  The `swc1` at 0xb397cb8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `swc1` at 0xb397cc4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `sd` at 0xb397ccc stores 8 bytes to a0 (arg0 at entry) +0x8.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb397ce0, `sw` at 0xb397ce4, `sw` at 0xb397ce8.
  The `sw` at 0xb397d24 stores 4 bytes to a0 (arg0 at entry) +0x560.
  The `sw` at 0xb397d28 stores 4 bytes to a0 (arg0 at entry) +0x550.
  The `sw` at 0xb397d2c stores 4 bytes to a0 (arg0 at entry) +0x54c.
  The `sw` at 0xb397d30 stores 4 bytes to a0 (arg0 at entry) +0xc8.
  The `sw` at 0xb397d34 stores 4 bytes to a0 (arg0 at entry) +0x540.
  The `sw` at 0xb397d3c stores 4 bytes to a0 (arg0 at entry) +0x53c.
  The `sd` at 0xb397d54 stores 8 bytes to a0 (arg0 at entry) +0x568.
  The `sd` at 0xb397d60 stores 8 bytes to a0 (arg0 at entry) +0x558.
  The `sw` at 0xb397d7c stores 4 bytes to a0 (arg0 at entry) +0x138.
  The `sw` at 0xb397d80 stores 4 bytes to a0 (arg0 at entry) +0x130.
  The `sw` at 0xb397d84 stores 4 bytes to a0 (arg0 at entry) +0x128.
  The `sw` at 0xb397d88 stores 4 bytes to a0 (arg0 at entry) +0x120.
  The `sw` at 0xb397d90 stores 4 bytes to a0 (arg0 at entry) +0x134.
  The `sw` at 0xb397d94 stores 4 bytes to a0 (arg0 at entry) +0x12c.
  The `sw` at 0xb397d98 stores 4 bytes to a0 (arg0 at entry) +0x124.
  The `sw` at 0xb397d9c stores 4 bytes to a0 (arg0 at entry) +0x11c.
  The `sw` at 0xb397da0 stores 4 bytes to a0 (arg0 at entry) +0xe4.
  The `sw` at 0xb397da4 stores 4 bytes to a0 (arg0 at entry) +0xe0.
  The `sw` at 0xb397da8 stores 4 bytes to a0 (arg0 at entry) +0xd8.
  The `sw` at 0xb397dac stores 4 bytes to a0 (arg0 at entry) +0xd4.
  The `sw` at 0xb397db0 stores 4 bytes to a0 (arg0 at entry) +0xd0.
  The `sw` at 0xb397db8 stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `sw` at 0xb397dbc stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `sw` at 0xb397dc4 stores 4 bytes to a0 (arg0 at entry) +0x10c.
  The `sw` at 0xb397dcc stores 4 bytes to a0 (arg0 at entry) +0x108.
  The `sw` at 0xb397dd0 stores 4 bytes to a0 (arg0 at entry) +0x104.
  The `sw` at 0xb397dd4 stores 4 bytes to a0 (arg0 at entry) +0x100.
  The `sw` at 0xb397dd8 stores 4 bytes to a0 (arg0 at entry) +0xfc.
  The `sw` at 0xb397ddc stores 4 bytes to a0 (arg0 at entry) +0xf8.
  The `sw` at 0xb397de0 stores 4 bytes to a0 (arg0 at entry) +0xf4.
  The `sw` at 0xb397de4 stores 4 bytes to a0 (arg0 at entry) +0xf0.
  The `sw` at 0xb397de8 stores 4 bytes to a0 (arg0 at entry) +0xec.
  The `sw` at 0xb397dec stores 4 bytes to a0 (arg0 at entry) +0xe8.
  The `sw` at 0xb397df0 stores 4 bytes to a0 (arg0 at entry) +0x118.
  The `sw` at 0xb397df4 stores 4 bytes to a0 (arg0 at entry) +0x114.
  The `sw` at 0xb397df8 stores 4 bytes to a0 (arg0 at entry) +0x110.
  The `sw` at 0xb397e00 stores 4 bytes to a0 (arg0 at entry) +0xcc.
  The `swc1` at 0xb397e14 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `swc1` at 0xb397e18 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `swc1` at 0xb397e1c stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `swc1` at 0xb397e20 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `swc1` at 0xb397e24 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `swc1` at 0xb397e28 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xb397e2c stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `swc1` at 0xb397e30 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xb397e34 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `swc1` at 0xb397e38 stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `swc1` at 0xb397e3c stores 4 bytes to a0 (arg0 at entry) +0x70.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xdc, including `sw` at 0xb397e40, `sw` at 0xb397e48.
  The `swc1` at 0xb397e50 stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `swc1` at 0xb397e54 stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `jalr` at 0xb397d5c calls bzero with a0=a0+316, a1=0x400, a2=a2 at entry (arg2), a3=-0x4, a5=0xb4c0e88, a6=-0x1, a7=0x2.
  The `jalr` at 0xb397d74 calls __glOdysseyTextureSetDetailTable [0xb3a0f80] with a0=a0 at entry (arg0), a1=0x2, a2=0xb4c0e88, a3=?.
  The `bne` branch at 0xb397d18 targets 0xb397ce0, is taken when a4(?) != a6(=a0+1088), and falls through when a4(?) == a6(=a0+1088).
  The return at 0xb397e5c has v0 = 0x3100.
- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398040 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb398040-0xb398100 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0xb398050 loads 8 bytes from a0 (arg0 at entry) +0x18b20.
  The `lw` at 0xb398054 loads 4 bytes from [a0+101152]:8 +0x10.
  The `ld` at 0xb398088 loads 8 bytes from a0 (arg0 at entry) +0x18b28.
  The `lw` at 0xb39808c loads 4 bytes from [a0+101160]:8 +0x10.
  The `ld` at 0xb3980a8 loads 8 bytes from a0 (arg0 at entry) +0x18b30.
  The `lw` at 0xb3980ac loads 4 bytes from [a0+101168]:8 +0x10.
  The `ld` at 0xb3980c8 loads 8 bytes from a0 (arg0 at entry) +0x18b38.
  The `lw` at 0xb3980cc loads 4 bytes from [a0+101176]:8 +0x10.
  The `jalr` at 0xb39807c calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101152]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb39809c calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101160]:8, a2=?, a3=?.
  The `jalr` at 0xb3980bc calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101168]:8, a2=?, a3=?.
  The `jalr` at 0xb3980e4 calls __glNamesUnlockData [0xb420260] with a0=a0 at entry (arg0), a1=[a0+101176]:8, a2=?, a3=?.
  The `beq` branch at 0xb39806c targets 0xb398088, is taken when at(=[[a0+101152]:8+16]) == 0, and falls through when at(=[[a0+101152]:8+16]) != 0.
  The `beq` branch at 0xb398090 targets 0xb3980a8, is taken when at(=[[a0+101160]:8+16]) == 0, and falls through when at(=[[a0+101160]:8+16]) != 0.
  The `beq` branch at 0xb3980b0 targets 0xb3980c8, is taken when v0(=[[a0+101168]:8+16]) == 0, and falls through when v0(=[[a0+101168]:8+16]) != 0.
  The `beq` branch at 0xb3980d0 targets 0xb3980f0, is taken when v1(=[[a0+101176]:8+16]) == 0, and falls through when v1(=[[a0+101176]:8+16]) != 0.
  The return at 0xb3980f8 has v0 = one of ?, ret(__glNamesUnlockData).
- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3981e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3981e0-0xb3982c0 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0xb39822c loads 8 bytes from a0 (arg0 at entry) +0x18b38.
  The `ld` at 0xb398288 loads 8 bytes from a0 (arg0 at entry) +0x18b30.
  The `ld` at 0xb3982a8 loads 8 bytes from a0 (arg0 at entry) +0x18b28.
  The `ld` at 0xb3982bc loads 8 bytes from a0 (arg0 at entry) +0x18b20.
  The `bne` branch at 0xb3981f4 targets 0xb398230, is taken when a1 < a3(=0x8064) (unsigned), and falls through when a1 >= a3(=0x8064) (unsigned).
  The `beq` branch at 0xb3981fc targets 0xb39828c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xb398208 targets 0xb398270, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xb398210 targets 0xb3982ac, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xb398220 targets 0xb398268, is taken when a1 != at(=0x8095), and falls through when a1 == at(=0x8095).
  The `bne` branch at 0xb398230 targets 0xb398254, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xb398238 targets 0xb39829c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xb398244 targets 0xb398268, is taken when a1 != at(=0x8063), and falls through when a1 == at(=0x8063).
  The `beq` branch at 0xb398260 targets 0xb3982b8, is taken when a1 == v1(=0xde0), and falls through when a1 != v1(=0xde0).
  The `bne` branch at 0xb39827c targets 0xb398268, is taken when a1 != a2(=0x806f), and falls through when a1 == a2(=0x806f).
  The return at 0xb398228 has v0 = [a0+101176]:8.
  The return at 0xb39824c has v0 = a0+93520.
  The return at 0xb398268 has v0 = 0x0.
  The return at 0xb398284 has v0 = [a0+101168]:8.
  The return at 0xb398294 has v0 = a0+96064.
  The return at 0xb3982a4 has v0 = [a0+101160]:8.
  The return at 0xb3982b0 has v0 = a0+98608.
  The return at 0xb3982b8 has v0 = [a0+101152]:8.
- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398b00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb398b00-0xb399068 (1384 bytes).
  It occupies 1384 bytes.
  The `ld` at 0xb398b50 loads 8 bytes from abs 0x1020.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb398d00, `lw` at 0xb398fec, `lw` at 0xb399010.
  The `lw` at 0xb398d18 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4.
  The `lw` at 0xb398d24 loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0xc4.
  The `lw` at 0xb398d64 loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x5c4.
  3 such `sw` accesses store 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8, including `sw` at 0xb398d98, `sw` at 0xb398dcc, `sw` at 0xb399064.
  The `sw` at 0xb398dd0 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d4.
  The `sw` at 0xb398dd4 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d0.
  The `sw` at 0xb398dd8 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5cc.
  The `sw` at 0xb398de0 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c8.
  The `sw` at 0xb398de8 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5dc.
  The `sw` at 0xb398df0 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e0.
  The `sw` at 0xb398df8 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e4.
  The `sw` at 0xb398e00 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e8.
  The `sw` at 0xb398e08 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5ec.
  The `sw` at 0xb398e14 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b0.
  The `sw` at 0xb398e18 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5f0.
  The `sw` at 0xb398e28 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4.
  The `sw` at 0xb398e3c stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  The `sw` at 0xb398e48 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5bc.
  The `sw` at 0xb398e58 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0.
  The `sw` at 0xb398edc stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xb8.
  The `sw` at 0xb398ee0 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xc0.
  The `sw` at 0xb398ee8 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xbc.
  The `sw` at 0xb398ef4 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0xc4.
  The `bgezall` at 0xb398b58 calls __glOdysseyGetCurrentTexture [0xb3981e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb398b70 calls ChooseSuitableBuzzTexObjFormat [0xb3984c0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb398ba4 calls CalcTexelSizes [0xb398920] with a0=ret(ChooseSuitableBuzzTexObjFormat), a1=sp-288, a2=sp-284, a3=sp-280, a4=sp-276, a5=sp-272, a6=sp-268, a7=sp-264.
  The `jalr` at 0xb398bd0 calls ceilf with a0=?, a1=?, a2=?, a3=?; fp f13=0x3d800000.
  The `jalr` at 0xb398c18 calls ceilf with a0=?, a1=?, a2=?, a3=?; fp f13=0x3d800000.
  The `jalr` at 0xb398c58 calls memset with a0=sp-260, a1=0x0, a2=0x28, a3=?.
  The `jalr` at 0xb398d8c calls __glOdysseyDestroyPMObjGroup [0xb38f4d0] with a0=[0x1020]:8, a1=?, a2=?, a3=?, a5=one of 0x0, 0x1, a7=(((a1 << 0x4) + a1) << 0x2).
  The `jalr` at 0xb398dac calls __glOdysseyCreatePMObj [0xb38f2f0] with a0=[0x1020]:8, a1=sp-260, a2=?, a3=a1 at entry (arg1), a7=(a1 << 0x4).
  The `bgezall` at 0xb398e2c calls CalcPixelModePixelFormat [0xb398ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb398f20 calls __glOdysseyImageLogBase2 [0xb38a9c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb398fa0 calls __glSetError [0xb3f83f0] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xb39903c calls memset with a0=((((a1 << 0x4) + a1) << 0x2) + ret(__glOdysseyGetCurrentTexture))+1456, a1=0x0, a2=0x44, a3=?.
  The `jalr` at 0xb399058 calls __glOdysseyDestroyPMObj [0xb38f620] with a0=[0x1020]:8, a1=?, a2=a1 at entry (arg1), a3=?, a5=one of 0x0, 0x1, a7=(((a1 << 0x4) + a1) << 0x2).
  The `beq` branch at 0xb398c40 targets 0xb398f1c, is taken when s0(=a4) >= 0x2 (signed), and falls through when s0(=a4) < 0x2 (signed).
  The `beq` branch at 0xb398c94 targets 0xb398f38, is taken when s3(=a5) == 0, and falls through when s3(=a5) != 0.
  The `beq` branch at 0xb398cc8 targets 0xb398f48, is taken when s6(=0x8063) == s4(=a0), and falls through when s6(=0x8063) != s4(=a0).
  The `beq` branch at 0xb398cd0 targets 0xb398f5c, is taken when s4(=a0) == t0(=0x8064), and falls through when s4(=a0) != t0(=0x8064).
  The `beq` branch at 0xb398cd8 targets 0xb398f70, is taken when s4(=a0) == t1(=0x8070), and falls through when s4(=a0) != t1(=0x8070).
  The `bne` branch at 0xb398cf8 targets 0xb398d9c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xb398d0c targets 0xb398dcc, is taken when t0(?) == t1(=-0x1), and falls through when t0(?) != t1(=-0x1).
  The `bne` branch at 0xb398d1c targets 0xb398dcc, is taken when t0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1476]) != t3(=0x1), and falls through when t0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1476]) == t3(=0x1).
  The `blez` branch at 0xb398d28 targets 0xb398d80, is taken when t8(=[ret(__glOdysseyGetCurrentTexture)+196]) <= 0 (signed), and falls through when t8(=[ret(__glOdysseyGetCurrentTexture)+196]) > 0 (signed).
  The `beq` branch at 0xb398d54 targets 0xb398d74, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xb398d5c targets 0xb398d70, is taken when a4(=ret(__glOdysseyGetCurrentTexture)) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))), and falls through when a4(=ret(__glOdysseyGetCurrentTexture)) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  The `bne` branch at 0xb398d78 targets 0xb399008, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xb398d80 targets 0xb39904c, is taken when a5(=one of 0x0, 0x1) == 0, and falls through when a5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xb398d94 targets 0xb398dd0 and is always taken.
  The `beq` branch at 0xb398db4 targets 0xb398f84, is taken when v0(=ret(__glOdysseyCreatePMObj)) == 0, and falls through when v0(=ret(__glOdysseyCreatePMObj)) != 0.
  The `bne` branch at 0xb398e54 targets 0xb398ef8, is taken when s5(=a1) != 0, and falls through when s5(=a1) == 0.
  The `beq` branch at 0xb398e7c targets 0xb398e9c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xb398e94 targets 0xb398e90, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0xb398ea0 targets 0xb398ebc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xb398eb4 targets 0xb398eb0, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xb398ebc targets 0xb398edc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0xb398ed4 targets 0xb398ed0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xb398f30 targets 0xb398c4c and is always taken.
  The `beq` branch at 0xb398f40 targets 0xb398cc8 and is always taken.
  The `beq` branch at 0xb398f54 targets 0xb398ce0 and is always taken.
  The `beq` branch at 0xb398f68 targets 0xb398ce0 and is always taken.
  The `beq` branch at 0xb398f7c targets 0xb398ce0 and is always taken.
  The `beq` branch at 0xb398f84 targets 0xb399020, is taken when s6(=0x8063) == s4(=a0), and falls through when s6(=0x8063) != s4(=a0).
  The `beq` branch at 0xb398f8c targets 0xb399020, is taken when s4(=a0) == t0(=0x8064), and falls through when s4(=a0) != t0(=0x8064).
  The `beq` branch at 0xb398f94 targets 0xb399020, is taken when s4(=a0) == t1(=0x8070), and falls through when s4(=a0) != t1(=0x8070).
  The `beq` branch at 0xb398fe4 targets 0xb398ff8, is taken when a4(?) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))), and falls through when a4(?) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  The `beq` branch at 0xb399000 targets 0xb398d80, is taken when a4(?) >= t2(=(ret(__glOdysseyGetCurrentTexture) + ((([ret(__glOdysseyGetCurrentTexture)+196] << 0x4) + [ret(__glOdysseyGetCurrentTexture)+196]) << 0x2))) (unsigned), and falls through when a4(?) < t2(=(ret(__glOdysseyGetCurrentTexture) + ((([ret(__glOdysseyGetCurrentTexture)+196] << 0x4) + [ret(__glOdysseyGetCurrentTexture)+196]) << 0x2))) (unsigned).
  The `beq` branch at 0xb399008 targets 0xb398fe0, is taken when a4(?) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))), and falls through when a4(?) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  The `beq` branch at 0xb399018 targets 0xb398fe0 and is always taken.
  The `beq` branch at 0xb399044 targets 0xb398fa8 and is always taken.
  The `beq` branch at 0xb399060 targets 0xb398dd0 and is always taken.
  The return at 0xb398f14 has v0 = 0x1.
  The return at 0xb398fd0 has v0 = 0x0.
  The instructions from 0xb398fd8 to 0xb398fdc are not reached by any path from the entry, and their branches are not listed.
- `LoadTextureFromHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb399070 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb399070-0xb399608 (1432 bytes).
  It occupies 1432 bytes.
  The `ld` at 0xb3990b4 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3990e8 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `sd` at 0xb399110 stores 8 bytes to ?.
  The `lw` at 0xb39913c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8.
  The `lw` at 0xb399210 loads 4 bytes from [0x1020]:8 +0x5c0.
  The `lw` at 0xb39922c loads 4 bytes from [0x1020]:8 +0x5a0.
  The `lw` at 0xb399240 loads 4 bytes from [0x1020]:8 +0x5b4.
  The `lw` at 0xb399254 loads 4 bytes from [0x1020]:8 +0x5ac.
  The `lw` at 0xb399268 loads 4 bytes from [0x1020]:8 +0x5a8.
  The `lw` at 0xb399284 loads 4 bytes from [0x1020]:8 +0x5a4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb3992e4, `lw` at 0xb39945c.
  The `lw` at 0xb3992f4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5bc.
  The `lw` at 0xb3992fc loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5cc.
  The `lw` at 0xb399304 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d0.
  The `lw` at 0xb39930c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4, including `lw` at 0xb399318, `lw` at 0xb399324, `lw` at 0xb39948c.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b0, including `lw` at 0xb39933c, `lw` at 0xb399358.
  The `lw` at 0xb39934c loads 4 bytes from [0x1020]:8 +0xa084.
  The `lw` at 0xb399350 loads 4 bytes from [0x1020]:8 +0x141f4.
  7 such `sw` accesses store 4 bytes to [0x1020]:8 +0xa084, including `sw` at 0xb399354, `sw` at 0xb399394, `sw` at 0xb3993bc.
  The `lbu` at 0xb399370 loads 1 byte from [0x1020]:8 +0xaf0.
  The `lbu` at 0xb399398 loads 1 byte from [0x1020]:8 +0xaf1.
  The `lbu` at 0xb3993c0 loads 1 byte from [0x1020]:8 +0xaf2.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xaf3, including `lbu` at 0xb3993ec, `lbu` at 0xb3995b8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb399468, `sw` at 0xb399488.
  The `sw` at 0xb39946c stores 4 bytes to abs 0x1030.
  The `sw` at 0xb399478 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4.
  The `lw` at 0xb399490 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0.
  The `lw` at 0xb399510 loads 4 bytes from [0x1020]:8 +0x5b0.
  The `bgezall` at 0xb399104 calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb399130 calls __glOdysseyGetCurrentTexture [0xb3981e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb39916c calls __glSetError [0xb3f83f0] with a0=0x502, a1=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496], a2=?, a3=?.
  The `jalr` at 0xb3991cc calls memset with a0=sp-384, a1=0x0, a2=0x40, a3=?.
  The `jalr` at 0xb3991f8 calls __glSpecElementsPerGroup [0xb3d72a0] with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jalr` at 0xb399208 calls __glSpecBytesPerElement [0xb3d7470] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jalr` at 0xb3992c4 calls memset with a0=sp-304, a1=0x0, a2=0x40, a3=?, a5=one of 0x0, 0x1.
  The `bgezall` at 0xb399338 calls GetImageFmtEnumFromBuzzTexFormat [0xb3982c0] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456], a1=?, a2=0x1, a3=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1460].
  The `jalr` at 0xb399430 calls __glOdysseyImageXfer [0xb359fd0] with a0=sp-304, a1=sp-384, a2=sp-320, a3=0x0, a4=sp-240.
  The `jalr` at 0xb3994ec calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xb399598 calls __glOdysseyImageXfer [0xb359fd0] with a0=sp-304, a1=sp-384, a2=sp-320, a3=0x0, a4=sp-240.
  The `beq` branch at 0xb3990cc targets 0xb3995e8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb3990f4 targets 0xb399114, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `beq` branch at 0xb399148 targets 0xb3991bc, is taken when a1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) == 0, and falls through when a1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) != 0.
  The `beq` branch at 0xb399150 targets 0xb39919c, is taken when s5(=0x806f) == s1(=a0), and falls through when s5(=0x806f) != s1(=a0).
  The `beq` branch at 0xb399158 targets 0xb3991a8, is taken when s1(=a0) == at(=0xde1), and falls through when s1(=a0) != at(=0xde1).
  The `beq` branch at 0xb399160 targets 0xb3991b0, is taken when s1(=a0) == v1(=0xde0), and falls through when s1(=a0) != v1(=0xde0).
  The `beq` branch at 0xb399360 targets 0xb3995b8, is taken when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == 0, and falls through when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != 0.
  The `beq` branch at 0xb399368 targets 0xb3995b8, is taken when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == at(=0x8), and falls through when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != at(=0x8).
  The `beq` branch at 0xb399410 targets 0xb39948c, is taken when s5(=0x806f) == s1(=a0), and falls through when s5(=0x806f) != s1(=a0).
  The `beq` branch at 0xb39953c targets 0xb39943c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xb3995a0 targets 0xb399570, is taken when s2(?) != s5(?), and falls through when s2(?) == s5(?).
  The `beq` branch at 0xb3995b0 targets 0xb39943c and is always taken.
  The `beq` branch at 0xb3995e0 targets 0xb399398 and is always taken.
  The return at 0xb399194 has v0 = ret(__glSetError).
  The return at 0xb399484 has v0 = ?.
  The return at 0xb399600 has v0 = a4.
- `LoadTextureFromReadable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb399610 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb399610-0xb3999d4 (964 bytes).
  It occupies 964 bytes.
  The `ld` at 0xb399634 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb399664 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `sd` at 0xb39968c stores 8 bytes to ?.
  The `lw` at 0xb3996c0 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8.
  The `lw` at 0xb3997ac loads 4 bytes from ret(__glOdysseyGetCurrentTexture) +0x53c.
  The `lw` at 0xb3997bc loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5bc.
  The `lw` at 0xb3997c4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5cc.
  The `lw` at 0xb3997cc loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d0.
  The `lw` at 0xb3997d4 loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8.
  3 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4, including `lw` at 0xb3997dc, `lw` at 0xb3997e8, `lw` at 0xb399958.
  2 such `lw` accesses load 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b0, including `lw` at 0xb399800, `lw` at 0xb39981c.
  The `lw` at 0xb399810 loads 4 bytes from [0x1020]:8 +0xa084.
  The `lw` at 0xb399814 loads 4 bytes from [0x1020]:8 +0x141f4.
  7 such `sw` accesses store 4 bytes to [0x1020]:8 +0xa084, including `sw` at 0xb399818, `sw` at 0xb399858, `sw` at 0xb399880.
  The `lbu` at 0xb399840 loads 1 byte from [0x1020]:8 +0xaf0.
  The `lbu` at 0xb39985c loads 1 byte from [0x1020]:8 +0xaf1.
  The `lbu` at 0xb399884 loads 1 byte from [0x1020]:8 +0xaf2.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xaf3, including `lbu` at 0xb3998ac, `lbu` at 0xb39998c.
  The `lw` at 0xb399920 loads 4 bytes from ?.
  The `sw` at 0xb39992c stores 4 bytes to ?.
  The `sw` at 0xb399934 stores 4 bytes to abs 0x1030.
  The `sw` at 0xb399940 stores 4 bytes to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4.
  The `sw` at 0xb399948 stores 4 bytes to ret(__glOdysseyGetCurrentTexture) +0x54c.
  The `lw` at 0xb39995c loads 4 bytes from (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0.
  The `bgezall` at 0xb399680 calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb3996b0 calls __glOdysseyGetCurrentTexture [0xb3981e0] with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xb3996f8 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xb399790 calls memset with a0=sp-272, a1=0x0, a2=0x40, a3=?.
  The `bgezall` at 0xb3997fc calls GetImageFmtEnumFromBuzzTexFormat [0xb3982c0] with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456], a1=[ret(__glOdysseyGetCurrentTexture)+1340], a2=0x1, a3=?.
  The `jalr` at 0xb399900 calls __glOdysseyImageXfer [0xb359fd0] with a0=sp-272, a1=[0x1020]:8+82488, a2=sp-288, a3=0x0, a4=sp-208.
  The `beq` branch at 0xb39964c targets 0xb3999b8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb399670 targets 0xb399690, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `beq` branch at 0xb3996d4 targets 0xb39973c, is taken when a0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) == 0, and falls through when a0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) != 0.
  The `beq` branch at 0xb3996dc targets 0xb399728, is taken when s6(=0x806f) == s1(=a0), and falls through when s6(=0x806f) != s1(=a0).
  The `beq` branch at 0xb3996e4 targets 0xb39972c, is taken when s1(=a0) == at(=0xde1), and falls through when s1(=a0) != at(=0xde1).
  The `beq` branch at 0xb3996ec targets 0xb399734, is taken when s1(=a0) == v1(=0xde0), and falls through when s1(=a0) != v1(=0xde0).
  The `beq` branch at 0xb39982c targets 0xb39998c, is taken when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == 0, and falls through when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != 0.
  The `beq` branch at 0xb399838 targets 0xb39998c, is taken when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == at(=0x8), and falls through when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != at(=0x8).
  The `beq` branch at 0xb3998dc targets 0xb399958, is taken when t0(=0x806f) == s1(=a0), and falls through when t0(=0x806f) != s1(=a0).
  The `beq` branch at 0xb399984 targets 0xb3998e4 and is always taken.
  The `beq` branch at 0xb3999b0 targets 0xb39985c and is always taken.
  The return at 0xb399720 has v0 = ret(__glSetError).
  The return at 0xb399950 has v0 = ret(__glOdysseyImageXfer).
  The return at 0xb3999cc has v0 = ?.
- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1380 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1380-0xb3a168c (780 bytes).
  It occupies 780 bytes.
  The `lw` at 0xb3a1398 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a13b4 loads 8 bytes from abs 0x1020.
  2 such `ld` accesses load 8 bytes from [0x1020]:8 +0x18b40, including `ld` at 0xb3a1478, `ld` at 0xb3a15c0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb3a148c, `lw` at 0xb3a14b8, `lw` at 0xb3a14dc.
  The `ld` at 0xb3a14b4 loads 8 bytes from ?.
  The `sd` at 0xb3a14d4 stores 8 bytes to ?.
  The `sw` at 0xb3a14e8 stores 4 bytes to ?.
  The `lw` at 0xb3a14ec loads 4 bytes from [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a14f4 stores 4 bytes to [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a14fc stores 4 bytes to abs 0x1030.
  The `ld` at 0xb3a1500 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `sd` at 0xb3a1544 stores 8 bytes to [0x1020]:8 +0x18b48.
  The `ld` at 0xb3a1568 loads 8 bytes from [0x1020]:8 +0x0.
  The `lw` at 0xb3a15d8 loads 4 bytes from ret(?) +0x0.
  The `sw` at 0xb3a15e4 stores 4 bytes to ret(?) +0x0.
  The `jalr` at 0xb3a13e4 calls __glSetError [0xb3f83f0] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=0xde1.
  The `jalr` at 0xb3a1474 calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=one of 0x2, 0xde0, a5=0xde1.
  The `jalr` at 0xb3a14c8 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=?, a2=?, a3=?.
  The `bgezall` at 0xb3a153c calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=?, a3=?, a4=0x116200.
  The `jalr` at 0xb3a1574 calls (unknown callee) with a0=[0x1020]:8, a1=0x9f0, a2=?, a3=?.
  The `jalr` at 0xb3a159c calls InitTextureObject [0xb397c50] with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?, a4=ret(?).
  The `jalr` at 0xb3a15bc calls __glNamesNewData [0xb41f060] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a1 at entry (arg1), a3=ret(?).
  The `jalr` at 0xb3a15f4 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1620 calls __glSetError [0xb3f83f0] with a0=0x505, a1=?, a2=?, a3=?, a4=ret(?).
  The `jalr` at 0xb3a164c calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xde0, a5=0xde1.
  The `beq` branch at 0xb3a13b8 targets 0xb3a1644, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0xb3a13c0 targets 0xb3a144c, is taken when s0(=a0) == a4(=0xde0), and falls through when s0(=a0) != a4(=0xde0).
  The `beq` branch at 0xb3a13c8 targets 0xb3a1550, is taken when s0(=a0) == a5(=0xde1), and falls through when s0(=a0) != a5(=0xde1).
  The `beq` branch at 0xb3a13d0 targets 0xb3a155c, is taken when s0(=a0) == at(=0x8095), and falls through when s0(=a0) != at(=0x8095).
  The `beq` branch at 0xb3a13d8 targets 0xb3a1408, is taken when s0(=a0) == v1(=0x806f), and falls through when s0(=a0) != v1(=0x806f).
  The `bne` branch at 0xb3a140c targets 0xb3a1458, is taken when s3(=a1) != 0, and falls through when s3(=a1) == 0.
  The `beq` branch at 0xb3a1444 targets 0xb3a1484 and is always taken.
  The `beq` branch at 0xb3a144c targets 0xb3a1414, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xb3a1484 targets 0xb3a1568, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xb3a1490 targets 0xb3a15e8, is taken when a4(?) != s0(=a0), and falls through when a4(?) == s0(=a0).
  The `beq` branch at 0xb3a14bc targets 0xb3a14d4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xb3a1504 targets 0xb3a1514, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `bne` branch at 0xb3a150c targets 0xb3a1530, is taken when a1(=[[0x1020]:8+101192]:8) != s2(?), and falls through when a1(=[[0x1020]:8+101192]:8) == s2(?).
  The `beq` branch at 0xb3a1548 targets 0xb3a1514 and is always taken.
  The `beq` branch at 0xb3a1554 targets 0xb3a140c and is always taken.
  The `beq` branch at 0xb3a1560 targets 0xb3a140c and is always taken.
  The `beq` branch at 0xb3a1584 targets 0xb3a1618, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xb3a15cc targets 0xb3a1670, is taken when (v0(=ret(__glNamesNewData)) & 0xff) == 0, and falls through when (v0(=ret(__glNamesNewData)) & 0xff) != 0.
  The `beq` branch at 0xb3a15e0 targets 0xb3a149c and is always taken.
  The return at 0xb3a1400 has v0 = ret(__glSetError).
  The return at 0xb3a1528 has v0 = one of ?, ret(__glOdysseyTextureDeactivate).
  The return at 0xb3a1610 has v0 = ret(__glSetError).
  The return at 0xb3a163c has v0 = ret(__glSetError).
  The return at 0xb3a1668 has v0 = ret(__glSetError).
  The return at 0xb3a1684 has v0 = ret(__glNamesNewData).
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1690 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1690-0xb3a191c (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0xb3a16a0 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a16bc loads 8 bytes from abs 0x1020.
  The `lw` at 0xb3a16d8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xb3a16e8 loads 8 bytes from [0x1020]:8 +0x18b40.
  The `sd` at 0xb3a1774 stores 8 bytes to table(0x18b20) +0x0.
  The `sd` at 0xb3a1778 stores 8 bytes to ?.
  The `lw` at 0xb3a1780 loads 4 bytes from [0x1020]:8 +0x18fdc.
  The `sw` at 0xb3a178c stores 4 bytes to [0x1020]:8 +0x18fdc.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xb3a1794, `sw` at 0xb3a18bc.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb3a1798, `lw` at 0xb3a17bc, `lw` at 0xb3a17d8.
  The `ld` at 0xb3a17b0 loads 8 bytes from [0x1020]:8 +0x18b48.
  The `lw` at 0xb3a17c0 loads 4 bytes from [[0x1020]:8+101192]:8 +0x10.
  The `ld` at 0xb3a17d4 loads 8 bytes from ?.
  The `sd` at 0xb3a182c stores 8 bytes to [0x1020]:8 +0x18b48.
  The `lw` at 0xb3a189c loads 4 bytes from [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a18a8 stores 4 bytes to [0x1020]:8 +0x18fe0.
  The `jalr` at 0xb3a1730 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1808 calls __glNamesDeleteRange [0xb4207c0] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `bgezall` at 0xb3a1824 calls __glOdysseyTextureDeactivate [0xb39ac40] with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=?, a3=?.
  The `jalr` at 0xb3a1850 calls __glNamesDeleteRange [0xb4207c0] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `jalr` at 0xb3a188c calls __glNamesDeleteRange [0xb4207c0] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `jalr` at 0xb3a18d8 calls __glSetError [0xb3f83f0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a18f8 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a16c0 targets 0xb3a18f0, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0xb3a16c8 targets 0xb3a18d4, is taken when s5(=a0) < 0 (signed), and falls through when s5(=a0) >= 0 (signed).
  The `blez` branch at 0xb3a16f0 targets 0xb3a18cc, is taken when s5(=a0) <= 0 (signed), and falls through when s5(=a0) > 0 (signed).
  The `beq` branch at 0xb3a1720 targets 0xb3a17b0 and is always taken.
  The `bne` branch at 0xb3a179c targets 0xb3a17f8, is taken when a0(?) != s1(?), and falls through when a0(?) == s1(?).
  The `beq` branch at 0xb3a17a8 targets 0xb3a1868, is taken when s0(?) == s8(=((a0 << 0x2) + a1)), and falls through when s0(?) != s8(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xb3a17b8 targets 0xb3a17cc, is taken when a1(=[[0x1020]:8+101192]:8) == 0, and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  The `beq` branch at 0xb3a17c4 targets 0xb3a1820, is taken when at(=[[[0x1020]:8+101192]:8+16]) == a0(?), and falls through when at(=[[[0x1020]:8+101192]:8+16]) != a0(?).
  The `beq` branch at 0xb3a17cc targets 0xb3a183c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xb3a17dc targets 0xb3a1730, is taken when v0(?) == a0(?), and falls through when v0(?) != a0(?).
  The `bne` branch at 0xb3a17e8 targets 0xb3a17d4, is taken when s7(=0x4) != s6(?), and falls through when s7(=0x4) == s6(?).
  The `beq` branch at 0xb3a17f0 targets 0xb3a179c and is always taken.
  The `beq` branch at 0xb3a1818 targets 0xb3a17a4 and is always taken.
  The `bne` branch at 0xb3a1834 targets 0xb3a17d4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xb3a1860 targets 0xb3a17a4 and is always taken.
  The `beq` branch at 0xb3a18cc targets 0xb3a1878 and is always taken.
  The `beq` branch at 0xb3a18e8 targets 0xb3a16d0 and is always taken.
  The return at 0xb3a18c4 has v0 = ret(__glNamesDeleteRange).
  The return at 0xb3a1914 has v0 = ret(__glSetError).
  The instructions from 0xb3a1728 to 0xb3a172c are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1920 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1920-0xb3a19d8 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xb3a1928 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1940 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3a197c loads 8 bytes from [0x1020]:8 +0x18b40.
  The `jalr` at 0xb3a1978 calls __glNamesGenNames [0xb420d10] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8.
  The `jalr` at 0xb3a19a4 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8.
  The `jalr` at 0xb3a19c0 calls __glSetError [0xb3f83f0] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8.
  The `beq` branch at 0xb3a1944 targets 0xb3a199c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0xb3a194c targets 0xb3a19bc, is taken when a2(=a0) < 0 (signed), and falls through when a2(=a0) >= 0 (signed).
  The `beq` branch at 0xb3a1954 targets 0xb3a1990, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0xb3a195c targets 0xb3a1990, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The return at 0xb3a1988 has v0 = ret(__glNamesGenNames).
  The return at 0xb3a1994 has v0 = 0x1.
  The return at 0xb3a19b4 has v0 = ret(__glSetError).
  The return at 0xb3a19d0 has v0 = ret(__glSetError).
- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1a50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1a50-0xb3a1c60 (528 bytes).
  It occupies 528 bytes.
  The `lw` at 0xb3a1a68 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1a84 loads 8 bytes from abs 0x1020.
  The `lw` at 0xb3a1acc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xb3a1ae4 loads 8 bytes from [0x1020]:8 +0x18b40.
  The `sb` at 0xb3a1b28 stores 1 byte to ?.
  The `lw` at 0xb3a1b38 loads 4 bytes from ?.
  The `jalr` at 0xb3a1ae0 calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `bgezall` at 0xb3a1af8 calls __glOdysseyIsTextureResident [0xb3a19e0] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xb3a1b24 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=one of 0x0, 0x1, a3=?, a4=0x1.
  The `jalr` at 0xb3a1b78 calls __glSetError [0xb3f83f0] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1bbc calls __glSetError [0xb3f83f0] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xb3a1c04 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a1c34 calls __glSetError [0xb3f83f0] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a1a88 targets 0xb3a1bfc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bltz` branch at 0xb3a1a90 targets 0xb3a1c30, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `blez` branch at 0xb3a1abc targets 0xb3a1b3c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xb3a1ad0 targets 0xb3a1b74, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xb3a1ae8 targets 0xb3a1bb8, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bnel` branch at 0xb3a1b34 targets 0xb3a1ad0, is taken when at(=((a0 << 0x2) + a1)) != s1(?), and falls through when at(=((a0 << 0x2) + a1)) == s1(?); its branch-likely delay slot `lw a2,0(s1)` at 0xb3a1b38 runs only when taken and is annulled on fall-through.
  The return at 0xb3a1b6c has v0 = one of 0x0, 0x1.
  The return at 0xb3a1bb0 has v0 = 0x0.
  The return at 0xb3a1bf4 has v0 = 0x0.
  The return at 0xb3a1c28 has v0 = 0x0.
  The return at 0xb3a1c58 has v0 = 0x0.
- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1c90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1c90-0xb3a1e14 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0xb3a1ca4 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1cc0 loads 8 bytes from abs 0x1020.
  The `swc1` at 0xb3a1d2c stores 4 bytes to ret(__glNamesLockData) +0x44.
  The `lw` at 0xb3a1d38 loads 4 bytes from ?.
  The `ld` at 0xb3a1d50 loads 8 bytes from [0x1020]:8 +0x18b40.
  The `lwc1` at 0xb3a1d5c loads 4 bytes from [0x1020]:8 +0xf34.
  The `lwc1` at 0xb3a1d70 loads 4 bytes from ?.
  The `lw` at 0xb3a1da0 loads 4 bytes from [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a1dac stores 4 bytes to [0x1020]:8 +0x18fe0.
  The `sw` at 0xb3a1dc0 stores 4 bytes to abs 0x1030.
  The `jalr` at 0xb3a1d28 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xb3a1d4c calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=?.
  The `bgezall` at 0xb3a1d6c calls Clampf [0xb3a1c60] with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1020]:8+3892].
  The `jalr` at 0xb3a1dcc calls __glSetError [0xb3f83f0] with a0=0x501, a1=0x130000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a1df0 calls __glSetError [0xb3f83f0] with a0=0x502, a1=0x130000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a1cc4 targets 0xb3a1de8, is taken when at(=[0x1030]) == v1(=0x1), and falls through when at(=[0x1030]) != v1(=0x1).
  The `bltz` branch at 0xb3a1ccc targets 0xb3a1dc4, is taken when s4(=a0) < 0 (signed), and falls through when s4(=a0) >= 0 (signed).
  The `blez` branch at 0xb3a1cd8 targets 0xb3a1de0, is taken when s4(=a0) <= 0 (signed), and falls through when s4(=a0) > 0 (signed).
  The `beq` branch at 0xb3a1d14 targets 0xb3a1d38 and is always taken.
  The `beq` branch at 0xb3a1d30 targets 0xb3a1d7c, is taken when s1(?) == s3(=((a0 << 0x2) + a1)), and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xb3a1d3c targets 0xb3a1d30, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xb3a1d54 targets 0xb3a1d30, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `beq` branch at 0xb3a1d74 targets 0xb3a1d20 and is always taken.
  The `beq` branch at 0xb3a1dd8 targets 0xb3a1cd4 and is always taken.
  The `beq` branch at 0xb3a1de0 targets 0xb3a1d94 and is always taken.
  The return at 0xb3a1dbc has v0 = ([[0x1020]:8+102368] | 0x200).
  The return at 0xb3a1e0c has v0 = ret(__glSetError).
  The instructions from 0xb3a1d1c to 0xb3a1d1c are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1e20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1e20-0xb3a1ef0 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0xb3a1e24 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3a1e40 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3a1e6c loads 8 bytes from [0x1020]:8 +0x18b40.
  The `jalr` at 0xb3a1e68 calls __glNamesLockData [0xb41f600] with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xb3a1e94 calls __glNamesUnlockData [0xb420260] with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xb3a1ed0 calls __glSetError [0xb3f83f0] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xb3a1e44 targets 0xb3a1ec8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0xb3a1e4c targets 0xb3a1eb4, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0xb3a1e70 targets 0xb3a1e8c, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The return at 0xb3a1e84 has v0 = 0x0.
  The return at 0xb3a1eac has v0 = 0x1.
  The return at 0xb3a1ec0 has v0 = 0x0.
  The return at 0xb3a1ee8 has v0 = 0x0.
- `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b70b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3b70b0-0xb3b719c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0xb3b70bc loads 8 bytes from a0 (arg0 at entry) +0x4690.
  The `lwc1` at 0xb3b70f4 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xb3b70fc loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xb3b7100 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf30, including `lwc1` at 0xb3b714c, `lwc1` at 0xb3b716c, `lwc1` at 0xb3b7184.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xb3b7168, `swc1` at 0xb3b7180.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xb3b7178, `swc1` at 0xb3b7188.
  The `jalr` at 0xb3b70d8 calls (unknown callee) with a0=sp-80, a1=a1+108, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xb3b70ec calls Dot [0xb3b7080] with a0=a1+44, a1=sp-80, a2=?, a3=?.
  The `bc1t` branch at 0xb3b7154 targets 0xb3b717c, is taken when f6 == f0(=0x0) (c.eq.s at 0xb3b7148), and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xb3b7148)).
  The `beq` branch at 0xb3b7174 targets 0xb3b718c and is always taken.
  The return at 0xb3b7194 has v0 = ret(Dot).
- `grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3c0c40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3c0c40-0xb3c0e60 (544 bytes).
  It occupies 544 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xb3c0c40, `lw` at 0xb3c0c90.
  The `ld` at 0xb3c0c48 loads 8 bytes from abs 0x1020.
  The `ld` at 0xb3c0c54 loads 8 bytes from a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xb3c0c94, `lw` at 0xb3c0ce8, `lw` at 0xb3c0e10.
  The `lw` at 0xb3c0c9c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xb3c0cb0 loads 8 bytes from [0x1020]:8 +0x10.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xb3c0cc0, `ld` at 0xb3c0dbc, `ld` at 0xb3c0dd4.
  The `sd` at 0xb3c0cd8 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `lw` at 0xb3c0d14 loads 4 bytes from ?.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb3c0d30, `sw` at 0xb3c0d38, `sw` at 0xb3c0d40.
  The `lw` at 0xb3c0dac loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1c, including `lw` at 0xb3c0dc0, `lw` at 0xb3c0dcc.
  The `sw` at 0xb3c0e14 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sw` at 0xb3c0e18 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0xb3c0e24 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0xb3c0e28 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sd` at 0xb3c0e30 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0xb3c0e3c stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jalr` at 0xb3c0c68 calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xb3c0cd0 calls (unknown callee) with a0=[0x1020]:8, a1=[a0+32]:8, a2=?, a3=?, a4=a1 at entry (arg1), a5=[a0].
  The `bne` branch at 0xb3c0c70 targets 0xb3c0c8c, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0xb3c0ce0 targets 0xb3c0e4c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `bne` branch at 0xb3c0d10 targets 0xb3c0dac, is taken when a0(=([a0+4] + a1)) < a1(=[a0+4]) (signed), and falls through when a0(=([a0+4] + a1)) >= a1(=[a0+4]) (signed).
  The `beq` branch at 0xb3c0d28 targets 0xb3c0d54, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `bltz` branch at 0xb3c0d34 targets 0xb3c0d44, is taken when a5(=-0x1) < 0 (signed), and falls through when a5(=-0x1) >= 0 (signed).
  The `beq` branch at 0xb3c0d54 targets 0xb3c0dac, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0xb3c0d68 targets 0xb3c0d78, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0xb3c0d88 targets 0xb3c0d98, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0xb3c0da4 targets 0xb3c0d60, is taken when a6(=([a0+4] + a1)+1) != a1(?), and falls through when a6(=([a0+4] + a1)+1) == a1(?).
  The `beq` branch at 0xb3c0db4 targets 0xb3c0e10, is taken when v1(=[a0+24]) == 0, and falls through when v1(=[a0+24]) != 0.
  The return at 0xb3c0c84 has v0 = -0x1.
  The return at 0xb3c0e44 has v0 = 0x0.
  The return at 0xb3c0e58 has v0 = -0x1.
- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3e76f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3e76f0-0xb3e78dc (492 bytes).
  It occupies 492 bytes.
  The `lw` at 0xb3e76f4 loads 4 bytes from abs 0x1030.
  The `ld` at 0xb3e770c loads 8 bytes from abs 0x1020.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xdee, including `lbu` at 0xb3e7730, `lbu` at 0xb3e778c.
  5 such `sw` accesses store 4 bytes to [0x1020]:8 +0x870, including `sw` at 0xb3e773c, `sw` at 0xb3e779c, `sw` at 0xb3e77b8.
  The `sw` at 0xb3e7740 stores 4 bytes to [0x1020]:8 +0x874.
  The `sw` at 0xb3e7748 stores 4 bytes to abs 0x1030.
  The `lw` at 0xb3e774c loads 4 bytes from [0x1020]:8 +0x456c.
  The `sw` at 0xb3e7760 stores 4 bytes to [0x1020]:8 +0x456c.
  4 such `lw` accesses load 4 bytes from [0x1020]:8 +0xe38, including `lw` at 0xb3e77d0, `lw` at 0xb3e784c, `lw` at 0xb3e78a4.
  The `jalr` at 0xb3e7810 calls __glSetError [0xb3f83f0] with a0=0x500, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `jalr` at 0xb3e7864 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `jalr` at 0xb3e78c4 calls __glSetError [0xb3f83f0] with a0=0x502, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0xb3e7710 targets 0xb3e78bc, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `bne` branch at 0xb3e7718 targets 0xb3e7764, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xb3e7728 targets 0xb3e77bc, is taken when a0 >= 0x407 (unsigned), and falls through when a0 < 0x407 (unsigned).
  The `bne` branch at 0xb3e7764 targets 0xb3e77a0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xb3e776c targets 0xb3e778c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xb3e7774 targets 0xb3e787c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xb3e777c targets 0xb3e77b0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xb3e7784 targets 0xb3e780c, is taken when a0 != v1(=0x405), and falls through when a0 == v1(=0x405).
  The `beq` branch at 0xb3e7790 targets 0xb3e785c, is taken when a1(=[[0x1020]:8+3566]:1) == 0, and falls through when a1(=[[0x1020]:8+3566]:1) != 0.
  The `beq` branch at 0xb3e7798 targets 0xb3e7740 and is always taken.
  The `bne` branch at 0xb3e77a4 targets 0xb3e77ec, is taken when a0 < 0x400 (unsigned), and falls through when a0 >= 0x400 (unsigned).
  The `beq` branch at 0xb3e77ac targets 0xb3e77fc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xb3e77b4 targets 0xb3e7740 and is always taken.
  The `bne` branch at 0xb3e77c0 targets 0xb3e7828, is taken when a0 < 0x40a (unsigned), and falls through when a0 >= 0x40a (unsigned).
  The `beq` branch at 0xb3e77c8 targets 0xb3e7890, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb3e77dc targets 0xb3e7860, is taken when v1(=a0-1033) >= a1(=[[0x1020]:8+3640]) (signed), and falls through when v1(=a0-1033) < a1(=[[0x1020]:8+3640]) (signed).
  The `beq` branch at 0xb3e77e4 targets 0xb3e7740 and is always taken.
  The `bne` branch at 0xb3e77ec targets 0xb3e780c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xb3e77f4 targets 0xb3e7740 and is always taken.
  The `beq` branch at 0xb3e7800 targets 0xb3e785c, is taken when a0 == at(=0x401), and falls through when a0 != at(=0x401).
  The `bne` branch at 0xb3e782c targets 0xb3e7850, is taken when a0 < 0x408 (unsigned), and falls through when a0 >= 0x408 (unsigned).
  The `bne` branch at 0xb3e7834 targets 0xb3e7730, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xb3e7840 targets 0xb3e780c, is taken when a0 != a1(=0x409), and falls through when a0 == a1(=0x409).
  The `beq` branch at 0xb3e7848 targets 0xb3e77d4 and is always taken.
  The `bne` branch at 0xb3e7854 targets 0xb3e7808, is taken when a0 != at(=0x407), and falls through when a0 == at(=0x407).
  The `bne` branch at 0xb3e7880 targets 0xb3e780c, is taken when a0 != v0(=0x403), and falls through when a0 == v0(=0x403).
  The `beq` branch at 0xb3e7888 targets 0xb3e785c and is always taken.
  The `bne` branch at 0xb3e7890 targets 0xb3e78a8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xb3e7898 targets 0xb3e780c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xb3e78a0 targets 0xb3e77d4 and is always taken.
  The `bne` branch at 0xb3e78ac targets 0xb3e780c, is taken when a0 != at(=0x40b), and falls through when a0 == at(=0x40b).
  The `beq` branch at 0xb3e78b4 targets 0xb3e77d4 and is always taken.
  The return at 0xb3e775c has v0 = 0x2.
  The return at 0xb3e7820 has v0 = ret(__glSetError).
  The return at 0xb3e7874 has v0 = ret(__glSetError).
  The return at 0xb3e78d4 has v0 = ret(__glSetError).
- `StoreGREATER` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fad20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fad20-0xb3fad94 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3fad20 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fad24 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fad28 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fad34 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fad48 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fad58 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fad60 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fad6c loads 4 bytes from ?.
  The `sw` at 0xb3fad88 stores 4 bytes to ?.
  The `beq` branch at 0xb3fad78 targets 0xb3fad8c, is taken when at(?) >= a5(?) (unsigned), and falls through when at(?) < a5(?) (unsigned).
  The return at 0xb3fad84 has v0 = 0x1.
  The return at 0xb3fad8c has v0 = 0x0.
- `StoreGREATER_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fada0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fada0-0xb3fae14 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3fada0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fada4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fada8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fadb4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fadc8 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fadd8 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fade0 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fadec loads 4 bytes from ?.
  The `sw` at 0xb3fae08 stores 4 bytes to ?.
  The `beq` branch at 0xb3fadf8 targets 0xb3fae0c, is taken when at(?) >= a5(?) (signed), and falls through when at(?) < a5(?) (signed).
  The return at 0xb3fae04 has v0 = 0x1.
  The return at 0xb3fae0c has v0 = 0x0.
- `StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fae90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fae90-0xb3faf04 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3fae90 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fae94 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fae98 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3faea8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3faeb4 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3faec8 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3faed0 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3faedc loads 4 bytes from ?.
  The `sw` at 0xb3faef8 stores 4 bytes to ?.
  The `bne` branch at 0xb3faee8 targets 0xb3faefc, is taken when a5(?) < at(?) (unsigned), and falls through when a5(?) >= at(?) (unsigned).
  The return at 0xb3faef4 has v0 = 0x1.
  The return at 0xb3faefc has v0 = 0x0.
- `StoreGEQUAL_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3faf10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3faf10-0xb3faf84 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0xb3faf10 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3faf14 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3faf18 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3faf28 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3faf34 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3faf48 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3faf50 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3faf5c loads 4 bytes from ?.
  The `sw` at 0xb3faf78 stores 4 bytes to ?.
  The `bne` branch at 0xb3faf68 targets 0xb3faf7c, is taken when a5(?) < at(?) (signed), and falls through when a5(?) >= at(?) (signed).
  The return at 0xb3faf74 has v0 = 0x1.
  The return at 0xb3faf7c has v0 = 0x0.
- `StoreGREATER_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb1d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb1d0-0xb3fb22c (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0xb3fb1d0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb1d4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb1d8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb1e4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb1f0 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb20c loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb210 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb218 loads 4 bytes from ?.
  The return at 0xb3fb224 has v0 = ?.
- `StoreGREATER_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb230 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb230-0xb3fb28c (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0xb3fb230 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb234 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb238 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb244 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb250 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb26c loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb270 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb278 loads 4 bytes from ?.
  The return at 0xb3fb284 has v0 = ?.
- `StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb2f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb2f0-0xb3fb350 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xb3fb2f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb2f4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb2f8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb308 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb314 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb324 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb330 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb33c loads 4 bytes from ?.
  The return at 0xb3fb348 has v0 = ?.
- `StoreGEQUAL_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb350 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb350-0xb3fb3b0 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xb3fb350 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb3fb354 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xb3fb358 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xb3fb368 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xb3fb374 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xb3fb384 loads 4 bytes from [a0]:8 +0x9e40.
  The `lw` at 0xb3fb390 loads 4 bytes from [a0]:8 +0x9e38.
  The `lw` at 0xb3fb39c loads 4 bytes from ?.
  The return at 0xb3fb3a8 has v0 = ?.
- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4438a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4438a0-0xb4438e8 (72 bytes).
  It occupies 72 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xac0, including `ld` at 0xb4438c8, `ld` at 0xb4438d8, `ld` at 0xb4438dc.
  The `beq` branch at 0xb4438a8 targets 0xb4438d4, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb4438b0 targets 0xb4438dc, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb4438b8 targets 0xb4438c8, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xb4438c0 has v0 = 0x0.
  The return at 0xb4438cc has v0 = [a0+2752]:8+448.
  The return at 0xb4438d4 has v0 = [a0+2752]:8.
  The return at 0xb4438e0 has v0 = [a0+2752]:8+224.
- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4438f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4438f0-0xb44393c (76 bytes).
  It occupies 76 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xac0, including `ld` at 0xb443918, `ld` at 0xb443924, `ld` at 0xb443930.
  The `beq` branch at 0xb4438f8 targets 0xb443924, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb443900 targets 0xb443930, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb443908 targets 0xb443918, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xb443910 has v0 = 0x0.
  The return at 0xb44391c has v0 = [a0+2752]:8+664.
  The return at 0xb443928 has v0 = [a0+2752]:8+216.
  The return at 0xb443934 has v0 = [a0+2752]:8+440.
- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443940 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443940-0xb4439f8 (184 bytes).
  It occupies 184 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e60, including `ld` at 0xb443988, `ld` at 0xb44399c, `ld` at 0xb4439b0.
  The `ld` at 0xb443990 loads 8 bytes from [a0+36448]:8 +0x28.
  The `ld` at 0xb4439a4 loads 8 bytes from [a0+36448]:8 +0x0.
  The `ld` at 0xb4439b8 loads 8 bytes from [a0+36448]:8 +0x8.
  The `ld` at 0xb4439cc loads 8 bytes from [a0+36448]:8 +0x10.
  The `ld` at 0xb4439e0 loads 8 bytes from [a0+36448]:8 +0x18.
  The `ld` at 0xb4439f4 loads 8 bytes from [a0+36448]:8 +0x20.
  The `beq` branch at 0xb44394c targets 0xb443994, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb443954 targets 0xb4439a8, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb44395c targets 0xb4439bc, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The `beq` branch at 0xb443964 targets 0xb4439d0, is taken when a1 == a2(=0x8063), and falls through when a1 != a2(=0x8063).
  The `beq` branch at 0xb44396c targets 0xb4439e4, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xb443974 targets 0xb443984, is taken when a1 == v0(=0x8070), and falls through when a1 != v0(=0x8070).
  The return at 0xb44397c has v0 = 0x0.
  The return at 0xb44398c has v0 = [[a0+36448]:8+40]:8.
  The return at 0xb4439a0 has v0 = [[a0+36448]:8]:8.
  The return at 0xb4439b4 has v0 = [[a0+36448]:8+8]:8.
  The return at 0xb4439c8 has v0 = [[a0+36448]:8+16]:8.
  The return at 0xb4439dc has v0 = [[a0+36448]:8+24]:8.
  The return at 0xb4439f0 has v0 = [[a0+36448]:8+32]:8.
- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443a00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443a00-0xb443a60 (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8e68, including `ld` at 0xb443a30, `ld` at 0xb443a44, `ld` at 0xb443a54.
  The `ld` at 0xb443a38 loads 8 bytes from [a0+36456]:8 +0x10.
  The `ld` at 0xb443a4c loads 8 bytes from [a0+36456]:8 +0x0.
  The `ld` at 0xb443a5c loads 8 bytes from [a0+36456]:8 +0x8.
  The `beq` branch at 0xb443a08 targets 0xb443a3c, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xb443a10 targets 0xb443a50, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xb443a18 targets 0xb443a28, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xb443a20 has v0 = 0x0.
  The return at 0xb443a34 has v0 = [[a0+36456]:8+16]:8.
  The return at 0xb443a48 has v0 = [[a0+36456]:8]:8.
  The return at 0xb443a58 has v0 = [[a0+36456]:8+8]:8.
- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443b10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443b10-0xb443b4c (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0xb443b10 stores 4 bytes to a1 (arg1 at entry) +0xf8.
  The `sb` at 0xb443b18 stores 1 byte to a1 (arg1 at entry) +0x14.
  The `sw` at 0xb443b20 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0xb443b28 loads 8 bytes from abs 0xb4cb6e8.
  The `ld` at 0xb443b2c loads 8 bytes from abs 0xb4cb1a0.
  The `ld` at 0xb443b30 loads 8 bytes from abs 0xb4cb1a8.
  The `sd` at 0xb443b34 stores 8 bytes to a1 (arg1 at entry) +0x128.
  The `sd` at 0xb443b38 stores 8 bytes to a1 (arg1 at entry) +0x120.
  The `lwc1` at 0xb443b3c loads 4 bytes from abs 0xb4cfa10.
  The `sd` at 0xb443b40 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xb443b48 stores 4 bytes to a1 (arg1 at entry) +0xfc.
  The return at 0xb443b44 has v0 = 0xb456aa0.
