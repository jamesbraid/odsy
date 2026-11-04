# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These facts describe software behavior in the named build; they do not establish board behavior.

Skipped 44,889 located rows and 5,598 understood rows because those statuses already have factual entries, 278 named-only or undocumented rows because an exact binary/member/routine entry already exists, 55,577 other eligible rows because they rank after this 250-routine hardware-first slice, and 21 selected rows because the inventory supplies no entry address or size for those exact binaries.

- `bte_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ed8c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ed8c-0x3f14c (960 bytes).
  Stores 4 bytes from a1 to [a0+8]:8 +0x44 (`sw` at 0x3eda8) with value [[a0+8]:8+68]+1.
  Stores 8 bytes from t1 to table(0x9200000001c001e8) +0x0 (`sd` at 0x3eed0) with value (entry(0x9200000001c001e8) | one of 0x11, 0x101).
  Stores 8 bytes from t0 to table(0x9200000001c001f8) +0x0 (`sd` at 0x3eee4) with value (entry(0x9200000001c001f8) | one of 0x20000, 0x40000).
  Stores 8 bytes from a3 to table(0x9200000001c00138) +0x0 (`sd` at 0x3ef10).
  Stores 8 bytes from zero to table(0x9200000001c00220) +0x0 (`sd` at 0x3ef30) with value 0x0.
  Stores 8 bytes from zero to table(0x9200000001c00228) +0x0 (`sd` at 0x3ef44) with value 0x0.
  Stores 8 bytes from zero to table(0x9200000001e04050) +0x0 (`sd` at 0x3ef68) with value 0x0.
  Stores 8 bytes from zero to table(0x9200000001e04058) +0x0 (`sd` at 0x3ef7c) with value 0x0.
  Stores 8 bytes from zero to table(0x9200000001e04060) +0x0 (`sd` at 0x3ef90) with value 0x0.
  Stores 8 bytes from a3 to table(0x9200000001e04048) +0x0 (`sd` at 0x3efa4) with value -0x1.
  Stores 8 bytes from t1 to table(0x9200000001c00200) +0x0 (`sd` at 0x3efcc) with value (entry(0x9200000001c00200) | 0x100).
  Stores 8 bytes from a1 to [[a0+8]:8]:8 +0x0 (`sd` at 0x3efe8).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x3f0ac) with value ret(splhi).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x3f0f4) with value ret(splhi).
  Calls `nested_spintrylock` via direct with a0=[[a0+8]:8+88]:8, a1=[[a0+8]:8+68]+1, a2=[a0+8]:8, a3=a3 at entry (arg3) (`jal` at 0x3edb8).
  Calls `bte_get_all_interfaces` via direct with a0=[a0+8]:8, a1=a1 at entry (arg1), a2=[a0+8]:8, a3=? (`jal` at 0x3edcc).
  Calls `bte_free_interfaces` via direct with a0=[a0+8]:8, a1=[[a0+8]:8+76], a2=?, a3=? (`jal` at 0x3ede0).
  Calls `nested_spinunlock` via direct with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3edec).
  Calls `us_delay` via direct with a0=0x27100, a1=?, a2=?, a3=? (`jal` at 0x3ee0c).
  Calls `hwgraph_info_get_LBL` via direct with a0=[[([[-0x3c00]:8]:8 + ([[a0+8]:8+56]:2 << 0x3))]:8+35968], a1=sym(.rodata)+65336, a2=sp-48, a3=? (`jal` at 0x3ee48).
  Calls `hubiio_crb_error_handler` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ee54).
  Calls `mutex_spinlock_spl` via direct with a0=?, a1=sym(splerr), a2=?, a3=? (`jal` at 0x3ee64).
  Calls `us_delay` via direct with a0=0x190, a1=entry(0x9200000001c00220), a2=?, a3=-0x1, a5=0x9200000001c00000, a6=0x9200000001e00000 (`jal` at 0x3efc8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock_spl), a2=[[a0+8]:8]:8, a3=0xffffffffffefffff (`jal` at 0x3eff4).
  Calls `bte_free_interfaces` via direct with a0=[a0+8]:8, a1=[[a0+8]:8+76], a2=?, a3=? (`jal` at 0x3f000).
  Calls `nested_spinunlock` via direct with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3f00c).
  Calls `nested_spintrylock` via direct with a0=[[a0+8]:8+88]:8, a1=?, a2=[a0+8]:8, a3=? (`jal` at 0x3f05c).
  Calls `nested_spintrylock` via direct with a0=[a0+8]:8+60, a1=?, a2=?, a3=? (`jal` at 0x3f070).
  Calls `nested_spinunlock` via direct with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3f084).
  Calls `splx` via direct with a0=[a1], a1=?, a2=?, a3=? (`jal` at 0x3f094).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3f09c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3f0a4).
  Calls `nested_spintrylock` via direct with a0=[a0+8]:8+60, a1=?, a2=?, a3=? (`jal` at 0x3f0b4).
  Calls `splx` via direct with a0=[a1], a1=?, a2=?, a3=? (`jal` at 0x3f0dc).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3f0e4).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3f0ec).
  Calls `nested_spintrylock` via direct with a0=[[a0+8]:8+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3f0fc).
  Calls `cmn_err` via direct with a0=0xc, a1=sym(.rodata)+65336, a2=[a0+16]:2, a3=0x2, a4=0x3 (`jal` at 0x3f13c).
  At `beq` at 0x3edc0 (target 0x3f05c), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3edd4 (target 0x3ee0c), taken when v0(=ret(bte_get_all_interfaces)) == 0 and falls through when v0(=ret(bte_get_all_interfaces)) != 0.
  At `bne` at 0x3ee9c (target 0x3ee80), taken when a0(?) < 0x2 (signed) and falls through when a0(?) >= 0x2 (signed).
  At `beq` at 0x3eec0 (target 0x3f0cc), taken when a3(=[[a0+8]:8+76]) == 0 and falls through when a3(=[[a0+8]:8+76]) != 0.
  At `beq` at 0x3ef28 (target 0x3ef58), taken when a1(=entry(0x9200000001c00220)) == 0 and falls through when a1(=entry(0x9200000001c00220)) != 0.
  At `beq` at 0x3ef60 (target 0x3efb4), taken when a4(=entry(0x9200000001e04040)) == 0 and falls through when a4(=entry(0x9200000001e04040)) != 0.
  At `beq` at 0x3f020 (target 0x3f114), taken when a2(=[a0+16]:2) == a1(=0x1) and falls through when a2(=[a0+16]:2) != a1(=0x1).
  At `beq` at 0x3f02c (target 0x3f11c), taken when a2(=[a0+16]:2) == a3(=0x2) and falls through when a2(=[a0+16]:2) != a3(=0x2).
  At `beq` at 0x3f034 (target 0x3f124), taken when a2(=[a0+16]:2) == a4(=0x3) and falls through when a2(=[a0+16]:2) != a4(=0x3).
  At `beq` at 0x3f03c (target 0x3f12c), taken when a2(=[a0+16]:2) == v0(=0x6) and falls through when a2(=[a0+16]:2) != v0(=0x6).
  At `beq` at 0x3f044 (target 0x3f134), taken when a2(=[a0+16]:2) == a0(=0x7) and falls through when a2(=[a0+16]:2) != a0(=0x7).
  At `bne` at 0x3f04c (target 0x3f13c), taken when a2(=[a0+16]:2) != 0 and falls through when a2(=[a0+16]:2) == 0.
  At `beq` at 0x3f064 (target 0x3f0dc), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3f078 (target 0x3f094), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3f0bc (target 0x3f094), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3f104 (target 0x3f0dc), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  Returns v0 = ? (`jr` at 0x3ee04).

- `bte_crb_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3f14c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3f14c-0x3f29c (336 bytes).
  Stores 2 bytes from a3 to entry(0x8ef8) +0x30 (`sh` at 0x3f1a0) with value [a3+4]:2.
  Stores 8 bytes from a4 to table(0x9200000001c00400) +0x0 (`sd` at 0x3f200).
  Stores 8 bytes from a3 to table(0x9200000001c003b0) +0x0 (`sd` at 0x3f208) with value (a2 | 0x10800).
  Stores 8 bytes from s0 to [entry(0x8ef8)+32]:8 +0x0 (`sd` at 0x3f28c) with value 0x10000.
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+65336, a2=sp-64, a3=a3 at entry (arg3) (`jal` at 0x3f174).
  Calls `us_delay` via direct with a0=0xa, a1=table(0x9200000001c00000), a2=(entry(0x9200000001c003b0) << 0x2f), a3=(a2 | 0x10800), a5=table(0x9200000001c00000), a6=0xff0fffffffffffff (`jal` at 0x3f270).
  At `bgez` at 0x3f214 (target 0x3f270), taken when a2(=(entry(0x9200000001c003b0) << 0x2f)) >= 0 (signed) and falls through when a2(=(entry(0x9200000001c003b0) << 0x2f)) < 0 (signed).
  At `beq` at 0x3f224 (target 0x3f26c), taken when (s0(=0x10000) & a7(=entry(0x9200000001c003b0))) == 0 and falls through when (s0(=0x10000) & a7(=entry(0x9200000001c003b0))) != 0.
  At `beq` at 0x3f234 (target 0x3f26c), taken when (s0(=0x10000) & t0(=entry(0x9200000001c003b0))) == 0 and falls through when (s0(=0x10000) & t0(=entry(0x9200000001c003b0))) != 0.
  At `beq` at 0x3f244 (target 0x3f26c), taken when (s0(=0x10000) & t1(=entry(0x9200000001c003b0))) == 0 and falls through when (s0(=0x10000) & t1(=entry(0x9200000001c003b0))) != 0.
  At `beq` at 0x3f254 (target 0x3f26c), taken when (s0(=0x10000) & t2(=entry(0x9200000001c003b0))) == 0 and falls through when (s0(=0x10000) & t2(=entry(0x9200000001c003b0))) != 0.
  At `bne` at 0x3f264 (target 0x3f21c), taken when (s0(=0x10000) & t3(=entry(0x9200000001c003b0))) != 0 and falls through when (s0(=0x10000) & t3(=entry(0x9200000001c003b0))) == 0.
  At `beq` at 0x3f284 (target 0x3f290), taken when a1(=[entry(0x8ef8)+32]:8) == 0 and falls through when a1(=[entry(0x8ef8)+32]:8) != 0.
  Returns v0 = ret(us_delay); f0 = ret(us_delay) (`jr` at 0x3f294).

- `sn1_sc_versioncheck` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41138 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41138-0x41330 (504 bytes).
  Calls `cnodemodule_lookup` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x41190).
  Calls `sc_version` via direct with a0=ret(cnodemodule_lookup)+40, a1=sp-112, a2=sp-108, a3=sp-104 (`jal` at 0x411a4).
  Calls `cnode_slice_to_cpuid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x41220).
  Calls `cnodemodule_lookup` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x41288).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata)+65600, a2=[ret(cnodemodule_lookup)]:2, a3=ret(sc_version) (`jal` at 0x4129c).
  Calls `sprintf` via direct with a0=sp-96, a1=sym(.rodata)+65600, a2=?, a3=? (`jal` at 0x412b0).
  Calls `cnodemodule_lookup` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x412b8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata)+65600, a2=0x1, a3=0x3, a4=0x14, a5=[ret(cnodemodule_lookup)]:2, a6=sp-96 (`jal` at 0x412dc).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata)+65600, a2=0x1, a3=0x3, a4=0x14 (`jal` at 0x412f8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata)+65600, a2=?, a3=? (`jal` at 0x41308).
  Calls `us_delay` via direct with a0=0x4c4b40, a1=?, a2=?, a3=? (`jal` at 0x41314).
  Calls `mdboot` via direct with a0=0x0, a1=0x0, a2=?, a3=? (`jal` at 0x41320).
  At `blez` at 0x41164 (target 0x4125c), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `beq` at 0x41188 (target 0x411f0), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `bltz` at 0x411b0 (target 0x41288), taken when v0(=ret(sc_version)) < 0 (signed) and falls through when v0(=ret(sc_version)) >= 0 (signed).
  At `bne` at 0x411e8 (target 0x412ac), taken when t8(?) < s6(=0xf4e0c) (signed) and falls through when t8(?) >= s6(=0xf4e0c) (signed).
  At `beq` at 0x41204 (target 0x4125c), taken when s1(?) >= t9(=[sym(numnodes)]) (signed) and falls through when s1(?) < t9(=[sym(numnodes)]) (signed).
  At `beq` at 0x41218 (target 0x41188), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x41228 (target 0x41214), taken when v0(=ret(cnode_slice_to_cpuid)) == s2(=-0x1) and falls through when v0(=ret(cnode_slice_to_cpuid)) != s2(=-0x1).
  At `bne` at 0x4124c (target 0x41218), taken when s4(=0xf) != t9(?) and falls through when s4(=0xf) == t9(?).
  Returns v0 = ? (`jr` at 0x41280).

- `io_perf_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41eb0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41eb0-0x41f94 (228 bytes).
  Stores 2 bytes from zero to sym(iop_mode) +0x0 (`sh` at 0x41ec4) with value 0x0.
  Stores 2 bytes from a3 to sym(.bss) +0xee8c (`sh` at 0x41f00) with value -0x1.
  Stores 4 bytes from zero to sym(.bss) +0xeea4 (`sw` at 0x41f08) with value 0x0.
  Stores 2 bytes from zero to sym(.bss) +0xee8a (`sh` at 0x41f14) with value 0x0.
  Stores 2 bytes from s0 to ? (base unknown) (`sh` at 0x41f40).
  Stores 2 bytes from zero to ? (base unknown) (`sh` at 0x41f48) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x41f54) with value 0x0.
  Stores 2 bytes from a3 to ? (base unknown) (`sh` at 0x41f58).
  Calls `spinlock_init` via direct with a0=sym(iop_lock), a1=sym(.rodata)+65872, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x41ebc).
  Calls `init_mutex` via direct with a0=sym(global_iop_mon), a1=0x0, a2=sym(.rodata)+65872, a3=0x0 (`jal` at 0x41ee4).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata)+65872, a3=? (`jal` at 0x41f5c).
  Calls `io_perf_init_lfsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x41f80).
  At `blez` at 0x41f10 (target 0x41f78), taken when a1(=[sym(maxnodes)]) <= 0 (signed) and falls through when a1(=[sym(maxnodes)]) > 0 (signed).
  At `bnel` at 0x41f70 (target 0x41f1c), taken when s0(?) < a5(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a5(=[sym(maxnodes)]) (signed).
  Returns v0 = ret(io_perf_init_lfsr); f0 = ret(io_perf_init_lfsr) (`jr` at 0x41f8c).

- `io_perf_init_lfsr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x41f94 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x41f94-0x42044 (176 bytes).
  Stores 8 bytes from v0 to sym(lfsr_table) +0x0 (`sd` at 0x41fb4) with value ret(kmem_alloc_node).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x42004).
  Calls `kmem_alloc_node` via direct with a0=0x400000, a1=0x1, a2=[-0x3bd6]:2, a3=a3 at entry (arg3) (`jal` at 0x41fa4).
  Calls `printf` via direct with a0=sym(.rodata)+65872, a1=0x400000, a2=?, a3=?, a5=0x80000, a6=0xf0000 (`jal` at 0x42024).
  At `beq` at 0x41fb8 (target 0x4201c), taken when v0(=ret(kmem_alloc_node)) == 0 and falls through when v0(=ret(kmem_alloc_node)) != 0.
  At `bne` at 0x41fdc (target 0x42010), taken when a4(=0xffffe) < a0(?) (signed) and falls through when a4(=0xffffe) >= a0(?) (signed).
  At `bne` at 0x42000 (target 0x41fcc), taken when (v1(?) & 0x1) != 0 and falls through when (v1(?) & 0x1) == 0.
  Returns v0 = ? (`jr` at 0x42014).

- `io_perf_turnon_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42044 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42044-0x422b8 (628 bytes).
  Stores 2 bytes from zero to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca0 (`sh` at 0x42124) with value 0x0.
  Stores 2 bytes from zero to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2 (`sh` at 0x42130) with value 0x0.
  Stores 2 bytes from s1 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca4 (`sh` at 0x42134) with value -0x1.
  Stores 4 bytes from a5 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ec0 (`sw` at 0x4214c) with value [a0].
  Stores 2 bytes from t9 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca0 (`sh` at 0x42158) with value [[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36000]:2+1.
  Stores 2 bytes from v1 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca0 (`sh` at 0x42188) with value [[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36000]:2+1.
  Stores 2 bytes from a1 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca4 (`sh` at 0x421bc).
  Stores 2 bytes from a1 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca4 (`sh` at 0x421cc).
  Stores 2 bytes from a2 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2 (`sh` at 0x421ec).
  Stores 4 bytes from a6 to sym(iop_cnt) +0x0 (`sw` at 0x42218) with value [sym(iop_cnt)]+1.
  Stores 2 bytes from a7 to sym(iop_mode) +0x0 (`sh` at 0x4221c) with value 0x4.
  Stores 4 bytes from a5 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8cbc (`sw` at 0x42228) with value [[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36028]+1.
  Stores 2 bytes from a6 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2 (`sh` at 0x42248) with value ([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2 | 0x1).
  Stores 1 byte from a7 to [table(sym(pdaindr))+8]:8 +0x7b0 (`sb` at 0x42274) with value 0x1.
  Calls `printf` via direct with a0=sym(.rodata)+65872, a1=[a0], a2=a2 at entry (arg2), a3=?, a5=0xfffffffff800f800 (`jal` at 0x420c0).
  Calls `mutex_lock` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=0x19, a2=a2 at entry (arg2), a3=?, a5=0xfffffffff800f800 (`jal` at 0x420fc).
  Calls `mutex_unlock` via direct with a0=?, a1=0x200, a2=?, a3=? (`jal` at 0x42114).
  Calls `bzero` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36032, a1=0x200, a2=?, a3=? (`jal` at 0x4212c).
  Calls `mutex_spinlock` via direct with a0=sym(iop_lock), a1=?, a2=?, a3=?, a5=[a0] (`jal` at 0x421e8).
  Calls `mutex_spinunlock` via direct with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=[sym(iop_mode)]:2, a3=?, a6=[sym(iop_cnt)]+1, a7=0x4 (`jal` at 0x42230).
  Calls `io_perf_start_count` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36000, a1=?, a2=?, a3=?, a6=([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2 | 0x1) (`jal` at 0x42244).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4224c).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=0x1, a3=a2 at entry (arg2), a5=[a0] (`jal` at 0x42280).
  Calls `mutex_spinunlock` via direct with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=[sym(iop_mode)]:2, a3=?, a5=[sym(iop_cnt)], a6=[sym(iop_cnt)]+1, a7=0x4 (`jal` at 0x42290).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x42298).
  At `beq` at 0x42068 (target 0x420e4), taken when a1 >= at(=[sym(maxnodes)]) (signed) and falls through when a1 < at(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x42070 (target 0x420e4), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `beq` at 0x42078 (target 0x420e4), taken when a1 == s1(=-0x1) and falls through when a1 != s1(=-0x1).
  At `beq` at 0x420a0 (target 0x42278), taken when a0(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == s1(=-0x1) and falls through when a0(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != s1(=-0x1).
  At `beq` at 0x420b4 (target 0x420ec), taken when (a1(=[a0]) & a5(=0xfffffffff800f800)) == 0 and falls through when (a1(=[a0]) & a5(=0xfffffffff800f800)) != 0.
  At `beq` at 0x4210c (target 0x42124), taken when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) == 0 and falls through when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) != 0.
  At `beq` at 0x42168 (target 0x421d0), taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  At `beq` at 0x42170 (target 0x4218c), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x42178 (target 0x421c0), taken when a1(?) == s1(=-0x1) and falls through when a1(?) != s1(=-0x1).
  At `beq` at 0x42198 (target 0x421d0), taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  At `beq` at 0x421a0 (target 0x4215c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x421a8 (target 0x42150), taken when a1(?) != s1(=-0x1) and falls through when a1(?) == s1(=-0x1).
  At `beq` at 0x421d0 (target 0x42280), taken when a1(?) == s1(=-0x1) and falls through when a1(?) != s1(=-0x1).
  At `beq` at 0x42208 (target 0x4222c), taken when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) == 0 and falls through when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) != 0.
  At `beq` at 0x42210 (target 0x42290), taken when a2(=[sym(iop_mode)]:2) == a1(=0x2) and falls through when a2(=[sym(iop_mode)]:2) != a1(=0x2).
  Returns v0 = one of 0x0, 0x10, 0x16 (`jr` at 0x420dc).

- `io_perf_turnoff_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x422b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x422b8-0x4243c (388 bytes).
  Stores 4 bytes from a6 to sym(iop_cnt) +0x0 (`sw` at 0x4237c) with value [sym(iop_cnt)]-1.
  Stores 2 bytes from a5 to sym(iop_mode) +0x0 (`sh` at 0x42388).
  Stores 4 bytes from a3 to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8cbc (`sw` at 0x42394) with value [[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36028]+1.
  Stores 2 bytes from a7 to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8ca2 (`sh` at 0x423b8).
  Stores 1 byte from zero to [table(sym(pdaindr))+8]:8 +0x7b0 (`sb` at 0x423e4) with value 0x0.
  Calls `mutex_lock` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=-0x1 (`jal` at 0x42328).
  Calls `mutex_spinlock` via direct with a0=sym(iop_lock), a1=?, a2=?, a3=? (`jal` at 0x4234c).
  Calls `mutex_spinunlock` via direct with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[sym(iop_mode)]:2 (`jal` at 0x4239c).
  Calls `io_perf_stop_count` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36000, a1=?, a2=?, a3=? (`jal` at 0x423b4).
  Calls `io_perf_update_count` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36000, a1=?, a2=?, a3=? (`jal` at 0x423bc).
  Calls `mutex_unlock` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=? (`jal` at 0x423c4).
  Calls `mutex_unlock` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=? (`jal` at 0x423fc).
  Calls `mutex_unlock` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=? (`jal` at 0x42414).
  Calls `mutex_spinunlock` via direct with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[sym(iop_mode)]:2, a5=[sym(iop_mode)]:2, a6=[sym(iop_cnt)]-1 (`jal` at 0x42424).
  Calls `mutex_unlock` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36008, a1=?, a2=?, a3=? (`jal` at 0x4242c).
  At `beq` at 0x422d4 (target 0x423e8), taken when a0 >= at(=[sym(maxnodes)]) (signed) and falls through when a0 < at(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x422dc (target 0x423e8), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x422e4 (target 0x423e8), taken when a0 == a4(=-0x1) and falls through when a0 != a4(=-0x1).
  At `beq` at 0x42310 (target 0x4240c), taken when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == a4(=-0x1) and falls through when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != a4(=-0x1).
  At `beq` at 0x4233c (target 0x42414), taken when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) == 0 and falls through when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x1) != 0.
  At `bne` at 0x42344 (target 0x423fc), taken when a0(=a1) != v0(?) and falls through when a0(=a1) == v0(?).
  At `beq` at 0x42368 (target 0x42398), taken when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) == 0 and falls through when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36002]:2) & 0x4) != 0.
  At `beq` at 0x42374 (target 0x42424), taken when a4(=[sym(iop_mode)]:2) == a0(=0x2) and falls through when a4(=[sym(iop_mode)]:2) != a0(=0x2).
  Returns v0 = one of 0x0, 0x10, 0x16 (`jr` at 0x423f4).

- `io_perf_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4243c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4243c-0x42554 (280 bytes).
  Stores 2 bytes from t9 to sym(iop_mode) +0x0 (`sh` at 0x424b4) with value 0x2.
  Stores 4 bytes from a4 to sym(.bss) +0xeea4 (`sw` at 0x42514) with value [sym(global_iop_mon+28)]+1.
  Stores 4 bytes from a5 to a1 (arg1 at entry) +0x0 (`sw` at 0x42530) with value [sym(global_iop_mon+28)].
  Calls `cap_able` via direct with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x42450).
  Calls `mutex_lock` via direct with a0=sym(global_iop_mon), a1=0x19, a2=?, a3=? (`jal` at 0x4246c).
  Calls `mutex_spinlock` via direct with a0=sym(iop_lock), a1=?, a2=?, a3=? (`jal` at 0x42474).
  Calls `mutex_spinunlock` via direct with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x42488).
  Calls `mutex_unlock` via direct with a0=sym(global_iop_mon), a1=?, a2=?, a3=? (`jal` at 0x42490).
  Calls `mutex_spinunlock` via direct with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x424b8).
  Calls `io_perf_turnon_node` via direct with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=? (`jal` at 0x424dc).
  Calls `mutex_unlock` via direct with a0=sym(global_iop_mon), a1=?, a2=?, a3=?, a4=[sym(global_iop_mon+28)]+1, a5=sym(global_iop_mon) (`jal` at 0x42510).
  Calls `mutex_unlock` via direct with a0=sym(global_iop_mon), a1=?, a2=?, a3=?, a4=[sym(maxnodes)] (`jal` at 0x4253c).
  Calls `io_perf_disable` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x42544).
  At `beq` at 0x42458 (target 0x42534), taken when v0(=ret(cap_able)) == 0 and falls through when v0(=ret(cap_able)) != 0.
  At `beq` at 0x42480 (target 0x424ac), taken when t8(=[sym(iop_mode)]:2) == 0 and falls through when t8(=[sym(iop_mode)]:2) != 0.
  At `blez` at 0x424c4 (target 0x42500), taken when ra(=[sym(maxnodes)]) <= 0 (signed) and falls through when ra(=[sym(maxnodes)]) > 0 (signed).
  At `bne` at 0x424e8 (target 0x4253c), taken when v0(=ret(io_perf_turnon_node)) != 0 and falls through when v0(=ret(io_perf_turnon_node)) == 0.
  At `bne` at 0x424f8 (target 0x424d4), taken when s0(?) < a4(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a4(=[sym(maxnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x424a4).

- `io_perf_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42554 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42554-0x42644 (240 bytes).
  Stores 2 bytes from zero to sym(iop_mode) +0x0 (`sh` at 0x425ec) with value 0x0.
  Stores 4 bytes from a2 to sym(.bss) +0xeea4 (`sw` at 0x4260c) with value [sym(global_iop_mon+28)]+1.
  Calls `cap_able` via direct with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x42560).
  Calls `mutex_lock` via direct with a0=sym(global_iop_mon), a1=0x19, a2=?, a3=? (`jal` at 0x4257c).
  Calls `mutex_unlock` via direct with a0=sym(global_iop_mon), a1=?, a2=?, a3=? (`jal` at 0x42594).
  Calls `io_perf_turnoff_node` via direct with a0=?, a1=0x2, a2=?, a3=? (`jal` at 0x425b8).
  Calls `mutex_spinlock` via direct with a0=sym(iop_lock), a1=?, a2=?, a3=? (`jal` at 0x425e0).
  Calls `mutex_spinunlock` via direct with a0=sym(iop_lock), a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x425f0).
  Calls `mutex_unlock` via direct with a0=sym(global_iop_mon), a1=?, a2=[sym(global_iop_mon+28)]+1, a3=sym(global_iop_mon) (`jal` at 0x42608).
  Calls `assfail` via direct with a0=sym(.rodata)+65872, a1=sym(.rodata)+65872, a2=0x1b8, a3=? (`jal` at 0x42634).
  At `beq` at 0x42568 (target 0x42624), taken when v0(=ret(cap_able)) == 0 and falls through when v0(=ret(cap_able)) != 0.
  At `beq` at 0x4258c (target 0x425a4), taken when t8(=[sym(iop_mode)]:2) == t9(=0x2) and falls through when t8(=[sym(iop_mode)]:2) != t9(=0x2).
  At `blez` at 0x425a4 (target 0x425dc), taken when v0(=[sym(maxnodes)]) <= 0 (signed) and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  At `bne` at 0x425c0 (target 0x4262c), taken when v0(=ret(io_perf_turnoff_node)) != 0 and falls through when v0(=ret(io_perf_turnoff_node)) == 0.
  At `bne` at 0x425d4 (target 0x425b4), taken when s0(?) < a1(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  Returns v0 = one of 0x0, 0x1, 0x16 (`jr` at 0x4261c).

- `io_perf_node_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42644 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42644-0x426c8 (132 bytes).
  Stores 4 bytes from v0 to a2 (arg2 at entry) +0x0 (`sw` at 0x426b4) with value [[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+36028].
  Calls `io_perf_turnon_node` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x42664).
  Calls `io_perf_enable` via direct with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x426b8).
  At `beq` at 0x4265c (target 0x426b8), taken when a1 == at(=-0x1) and falls through when a1 != at(=-0x1).
  At `beq` at 0x4266c (target 0x42688), taken when v0(=ret(io_perf_turnon_node)) == 0 and falls through when v0(=ret(io_perf_turnon_node)) != 0.
  Returns v0 = ? (`jr` at 0x42680).

- `io_perf_node_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x426c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x426c8-0x42704 (60 bytes).
  Calls `io_perf_turnoff_node` via direct with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x426d8).
  Calls `io_perf_disable` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x426f4).
  At `beq` at 0x426d0 (target 0x426f4), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  Returns v0 = ? (`jr` at 0x426ec).

- `io_perf_get_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42704 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42704-0x427d0 (204 bytes).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x4272c) with value -0x1.
  Stores 8 bytes from t2 to ? (base unknown) (`sd` at 0x42798).
  Stores 8 bytes from a6 to ? (base unknown) (`sd` at 0x427ac).
  Stores 4 bytes from t3 to a1 (arg1 at entry) +0x0 (`sw` at 0x427cc) with value [sym(global_iop_mon+28)].
  Calls `bzero` via direct with a0=a0 at entry (arg0), a1=0x200, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x42740).
  At `beq` at 0x42724 (target 0x42740), taken when at(=[sym(iop_mode)]:2) == v1(=0x2) and falls through when at(=[sym(iop_mode)]:2) != v1(=0x2).
  At `blez` at 0x42754 (target 0x427c0), taken when a0(=[sym(maxnodes)]) <= 0 (signed) and falls through when a0(=[sym(maxnodes)]) > 0 (signed).
  At `bne` at 0x427a8 (target 0x42780), taken when v0(?) < 0x20 (signed) and falls through when v0(?) >= 0x20 (signed).
  At `bne` at 0x427b8 (target 0x42764), taken when a0(?) < t2(=[sym(maxnodes)]) (signed) and falls through when a0(?) >= t2(=[sym(maxnodes)]) (signed).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x42738).

- `io_perf_get_node_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x427d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x427d0-0x428f0 (288 bytes).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0x42858).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0x4288c).
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0x42860).
  Stores 8 bytes from t8 to ? (base unknown) (`sd` at 0x42880).
  Stores 4 bytes from v0 to a2 (arg2 at entry) +0x0 (`sw` at 0x428a4) with value [sym(global_iop_mon+28)].
  Stores 4 bytes from t8 to a2 (arg2 at entry) +0x0 (`sw` at 0x428d8) with value [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36028].
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x200, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=-0x1 (`jal` at 0x42814).
  Calls `io_perf_get_count` via direct with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=-0x1 (`jal` at 0x428e0).
  At `beq` at 0x427f8 (target 0x428dc), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  At `beq` at 0x42804 (target 0x428c8), taken when a0 >= v0(=[sym(maxnodes)]) (signed) and falls through when a0 < v0(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x4280c (target 0x428c8), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x42864 (target 0x42890), taken when v0(?) >= 0x20 (signed) and falls through when v0(?) < 0x20 (signed).
  At `bne` at 0x42888 (target 0x42840), taken when v0(?) < 0x20 (signed) and falls through when v0(?) >= 0x20 (signed).
  At `beq` at 0x4289c (target 0x428d0), taken when t3(?) == t8(=0x4) and falls through when t3(?) != t8(=0x4).
  Returns v0 = ? (`jr` at 0x428c0).

- `io_perf_get_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x428f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x428f0-0x4296c (124 bytes).
  Stores 4 bytes from at to a0 (arg0 at entry) +0x0 (`sw` at 0x42934) with value [sym(global_iop_mon+544)].
  Stores 4 bytes from t9 to a1 (arg1 at entry) +0x0 (`sw` at 0x4293c) with value [sym(global_iop_mon+28)].
  Calls `mutex_lock` via direct with a0=sym(global_iop_mon), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x42910).
  Calls `mutex_unlock` via direct with a0=sym(global_iop_mon), a1=?, a2=?, a3=? (`jal` at 0x42940).
  Calls `mutex_unlock` via direct with a0=sym(global_iop_mon), a1=?, a2=?, a3=? (`jal` at 0x4295c).
  At `beq` at 0x42924 (target 0x4295c), taken when (t8(=[sym(global_iop_mon+2)]:2) & 0x1) == 0 and falls through when (t8(=[sym(global_iop_mon+2)]:2) & 0x1) != 0.
  Returns v0 = one of 0x0, 0x16; f0 = ret(mutex_unlock) (`jr` at 0x42954).

- `io_perf_get_node_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x4296c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x4296c-0x42a70 (260 bytes).
  Stores 4 bytes from ra to a1 (arg1 at entry) +0x0 (`sw` at 0x429f4) with value [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544].
  Stores 4 bytes from a1 to a2 (arg2 at entry) +0x0 (`sw` at 0x42a0c) with value [sym(global_iop_mon+28)].
  Stores 4 bytes from at to a2 (arg2 at entry) +0x0 (`sw` at 0x42a48) with value [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36028].
  Calls `mutex_lock` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36008, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16 (`jal` at 0x429d4).
  Calls `mutex_unlock` via direct with a0=?, a1=[sym(global_iop_mon+28)], a2=?, a3=? (`jal` at 0x42a10).
  Calls `io_perf_get_ctrl` via direct with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16 (`jal` at 0x42a50).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x42a60).
  At `beq` at 0x42994 (target 0x42a4c), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  At `beq` at 0x429a0 (target 0x42a38), taken when a0 >= v0(=[sym(maxnodes)]) (signed) and falls through when a0 < v0(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x429a8 (target 0x42a38), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x429e8 (target 0x42a60), taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) == 0 and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) != 0.
  At `beq` at 0x42a04 (target 0x42a40), taken when t9(?) == ra(=0x4) and falls through when t9(?) != ra(=0x4).
  Returns v0 = ? (`jr` at 0x42a30).

- `io_perf_start_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42a70 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42a70-0x42ad0 (96 bytes).
  Stores 8 bytes from a2 to ([a0+26]:2 << 0x21) -0x6dfffffffe3d0000 (`sd` at 0x42acc).
  At `beq` at 0x42a98 (target 0x42ab4), taken when a6(=[a0+4]:2) >= 0x10 (signed) and falls through when a6(=[a0+4]:2) < 0x10 (signed).
  Returns v0 = ? (`jr` at 0x42ac8).

- `io_perf_stop_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42ad0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42ad0-0x42af0 (32 bytes).
  Stores 8 bytes from at to ([a0+26]:2 << 0x21) -0x6dfffffffe3d0000 (`sd` at 0x42aec) with value ([([a0+26]:2 << 0x21)-7926335344142516224]:8 | 0xff).
  Returns v0 = ([a0+26]:2 << 0x21)+0x9200000001c30000 (`jr` at 0x42ae8).

- `io_perf_update_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42af0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42af0-0x42b60 (112 bytes).
  Stores 8 bytes from v1 to (a0 + ([a0+4]:2 << 0x3)) +0x20 (`sd` at 0x42b3c).
  Stores 8 bytes from at to (a0 + ([a0+4]:2 << 0x3)) +0x120 (`sd` at 0x42b50) with value [sym(lbolt)].
  At `beq` at 0x42af8 (target 0x42b58), taken when a3(=[sym(lfsr_table)]:8) == 0 and falls through when a3(=[sym(lfsr_table)]:8) != 0.
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x42b58).

- `io_perf_multiplex` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42b60 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42b60-0x42c34 (212 bytes).
  Stores 2 bytes from a0 to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8ca4 (`sh` at 0x42c18).
  Calls `io_perf_stop_count` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x42b88).
  Calls `io_perf_update_count` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000, a1=?, a2=?, a3=? (`jal` at 0x42b90).
  Calls `io_perf_start_count` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000, a1=?, a2=?, a3=?, a6=0x1, a7=0x1f (`jal` at 0x42c1c).
  At `beq` at 0x42ba4 (target 0x42c24), taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) == 0 and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36002]:2) & 0x1) != 0.
  At `beq` at 0x42bb0 (target 0x42c1c), taken when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000]:2) == 0 and falls through when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36000]:2) != 0.
  At `bne` at 0x42be4 (target 0x42c18), taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & ra(?)) != 0 and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & ra(?)) == 0.
  At `beq` at 0x42bec (target 0x42c18), taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) == a0(?) and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) != a0(?).
  At `bne` at 0x42c08 (target 0x42c18), taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & v0(?)) != 0 and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36544]) & v0(?)) == 0.
  At `bne` at 0x42c10 (target 0x42bc8), taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) != a0(?) and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+36004]:2) == a0(?).
  Returns v0 = ? (`jr` at 0x42c2c).

- `md_perf_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42c34 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42c34-0x42d14 (224 bytes).
  Stores 2 bytes from zero to sym(mdp_mode) +0x0 (`sh` at 0x42c48) with value 0x0.
  Stores 2 bytes from a3 to sym(.bss) +0xf0b4 (`sh` at 0x42c84) with value -0x1.
  Stores 4 bytes from zero to sym(.bss) +0xf0cc (`sw` at 0x42c8c) with value 0x0.
  Stores 2 bytes from zero to sym(.bss) +0xf0b2 (`sh` at 0x42c98) with value 0x0.
  Stores 2 bytes from s0 to ? (base unknown) (`sh` at 0x42cc4).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x42ccc) with value 0x0.
  Stores 2 bytes from zero to ? (base unknown) (`sh` at 0x42cd8) with value 0x0.
  Stores 2 bytes from a3 to ? (base unknown) (`sh` at 0x42cdc).
  Calls `spinlock_init` via direct with a0=sym(mdp_lock), a1=sym(.rodata)+66048, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x42c40).
  Calls `init_mutex` via direct with a0=sym(global_mdp_mon), a1=0x0, a2=sym(.rodata)+66048, a3=0x0 (`jal` at 0x42c68).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata)+66048, a3=? (`jal` at 0x42ce0).
  At `blez` at 0x42c94 (target 0x42cfc), taken when a1(=[sym(maxnodes)]) <= 0 (signed) and falls through when a1(=[sym(maxnodes)]) > 0 (signed).
  At `bnel` at 0x42cf4 (target 0x42ca0), taken when s0(?) < a5(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a5(=[sym(maxnodes)]) (signed).
  Returns v0 = ret(init_mutex); f0 = ret(init_mutex) (`jr` at 0x42d0c).

- `md_perf_turnon_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42d14 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42d14-0x42f74 (608 bytes).
  Stores 2 bytes from zero to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8650 (`sh` at 0x42dcc) with value 0x0.
  Stores 2 bytes from zero to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652 (`sh` at 0x42dd8) with value 0x0.
  Stores 2 bytes from s1 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8654 (`sh` at 0x42de0) with value -0x1.
  Stores 4 bytes from a5 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x87c0 (`sw` at 0x42df8) with value [a0].
  Stores 2 bytes from a7 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8650 (`sh` at 0x42e04) with value [[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34384]:2+1.
  Stores 2 bytes from a1 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8654 (`sh` at 0x42e38).
  Stores 2 bytes from a2 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652 (`sh` at 0x42e58).
  Stores 4 bytes from a5 to sym(mdp_cnt) +0x0 (`sw` at 0x42e84) with value [sym(mdp_cnt)]+1.
  Stores 2 bytes from a6 to sym(mdp_mode) +0x0 (`sh` at 0x42e88) with value 0x4.
  Stores 4 bytes from a7 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x866c (`sw` at 0x42e94) with value [[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34412]+1.
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0x42ee8).
  Stores 2 bytes from a5 to [((a1 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652 (`sh` at 0x42f04) with value ([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2 | 0x1).
  Stores 1 byte from a6 to [table(sym(pdaindr))+8]:8 +0x52a (`sb` at 0x42f30) with value 0x1.
  Calls `mutex_lock` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8, a6=[[-0x3c00]:8]:8 (`jal` at 0x42d90).
  Calls `mutex_unlock` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=0x150, a2=?, a3=? (`jal` at 0x42da8).
  Calls `bzero` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34416, a1=0x150, a2=?, a3=? (`jal` at 0x42dd4).
  Calls `mutex_spinlock` via direct with a0=sym(mdp_lock), a1=?, a2=?, a3=?, a5=[a0], a6=0x1 (`jal` at 0x42e54).
  Calls `mutex_spinunlock` via direct with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=[sym(mdp_mode)]:2, a3=?, a5=[sym(mdp_cnt)]+1, a6=0x4 (`jal` at 0x42e9c).
  Calls `md_perf_start_count` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34384, a1=0x7fffffffffffffff, a2=?, a3=?, a5=([[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2 | 0x1) (`jal` at 0x42f00).
  Calls `mutex_unlock` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=? (`jal` at 0x42f08).
  Calls `mutex_unlock` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=a2 at entry (arg2), a5=[a0], a6=0x1 (`jal` at 0x42f3c).
  Calls `mutex_spinunlock` via direct with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=[sym(mdp_mode)]:2, a3=?, a5=[sym(mdp_cnt)]+1, a6=0x4 (`jal` at 0x42f4c).
  Calls `mutex_unlock` via direct with a0=[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=?, a2=?, a3=? (`jal` at 0x42f54).
  At `beq` at 0x42d34 (target 0x42db4), taken when a1 >= at(=[sym(maxnodes)]) (signed) and falls through when a1 < at(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x42d3c (target 0x42db4), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `beq` at 0x42d44 (target 0x42db4), taken when a1 == s1(=-0x1) and falls through when a1 != s1(=-0x1).
  At `beq` at 0x42d78 (target 0x42f34), taken when v1(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == s1(=-0x1) and falls through when v1(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != s1(=-0x1).
  At `beq` at 0x42da0 (target 0x42dcc), taken when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) == 0 and falls through when (t8(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) != 0.
  At `beq` at 0x42e14 (target 0x42e3c), taken when v0(?) >= 0x6 (signed) and falls through when v0(?) < 0x6 (signed).
  At `beq` at 0x42e1c (target 0x42e08), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bne` at 0x42e24 (target 0x42dfc), taken when a1(?) != s1(=-0x1) and falls through when a1(?) == s1(=-0x1).
  At `beq` at 0x42e3c (target 0x42f3c), taken when a1(?) == s1(=-0x1) and falls through when a1(?) != s1(=-0x1).
  At `beq` at 0x42e74 (target 0x42e98), taken when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) == 0 and falls through when (a4(=[[((a1 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) != 0.
  At `beq` at 0x42e7c (target 0x42f4c), taken when a2(=[sym(mdp_mode)]:2) == a1(=0x2) and falls through when a2(=[sym(mdp_mode)]:2) != a1(=0x2).
  At `bne` at 0x42ee4 (target 0x42ec8), taken when v0(?) < 0x6 (signed) and falls through when v0(?) >= 0x6 (signed).
  At `bne` at 0x42eec (target 0x42eb4), taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns v0 = one of 0x0, 0x10, 0x16 (`jr` at 0x42dc4).

- `md_perf_turnoff_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x42f74 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x42f74-0x430cc (344 bytes).
  Stores 4 bytes from a7 to sym(mdp_cnt) +0x0 (`sw` at 0x4302c) with value [sym(mdp_cnt)]-1.
  Stores 2 bytes from a6 to sym(mdp_mode) +0x0 (`sh` at 0x43038).
  Stores 4 bytes from a3 to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x866c (`sw` at 0x43044) with value [[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34412]+1.
  Stores 2 bytes from t0 to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8652 (`sh` at 0x43064).
  Stores 1 byte from zero to [table(sym(pdaindr))+8]:8 +0x52a (`sb` at 0x43090) with value 0x0.
  Calls `mutex_lock` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34392, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=-0x1 (`jal` at 0x42fe0).
  Calls `mutex_spinlock` via direct with a0=sym(mdp_lock), a1=?, a2=?, a3=? (`jal` at 0x43004).
  Calls `mutex_spinunlock` via direct with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[sym(mdp_cnt)], a5=[sym(mdp_mode)]:2 (`jal` at 0x43048).
  Calls `md_perf_stop_count` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34384, a1=?, a2=?, a3=? (`jal` at 0x43060).
  Calls `md_perf_update_count` via direct with a0=[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34384, a1=?, a2=?, a3=? (`jal` at 0x43068).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x43070).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x430a4).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x430bc).
  At `beq` at 0x42f8c (target 0x43094), taken when a0 >= at(=[sym(maxnodes)]) (signed) and falls through when a0 < at(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x42f94 (target 0x43094), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x42f9c (target 0x43094), taken when a0 == a4(=-0x1) and falls through when a0 != a4(=-0x1).
  At `beq` at 0x42fc8 (target 0x430b4), taken when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == a4(=-0x1) and falls through when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != a4(=-0x1).
  At `beq` at 0x42ff4 (target 0x430bc), taken when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) == 0 and falls through when (v0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x1) != 0.
  At `bne` at 0x42ffc (target 0x430a4), taken when a0(=a1) != v0(?) and falls through when a0(=a1) == v0(?).
  At `beq` at 0x43020 (target 0x43048), taken when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) == 0 and falls through when (a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34386]:2) & 0x4) != 0.
  Returns v0 = one of -0x1, 0x0, 0x16 (`jr` at 0x4309c).

- `md_perf_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x430cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x430cc-0x43200 (308 bytes).
  Stores 2 bytes from t9 to sym(mdp_mode) +0x0 (`sh` at 0x4314c) with value 0x2.
  Stores 4 bytes from a7 to sym(.bss) +0xf0cc (`sw` at 0x431a8) with value [sym(global_mdp_mon+28)]+1.
  Stores 2 bytes from a6 to sym(.bss) +0xf0b2 (`sh` at 0x431b4) with value ([sym(global_mdp_mon+2)]:2 | 0x1).
  Stores 4 bytes from a4 to sym(.bss) +0xf220 (`sw` at 0x431c0) with value [a0].
  Stores 4 bytes from t0 to a1 (arg1 at entry) +0x0 (`sw` at 0x431dc) with value [sym(global_mdp_mon+28)].
  Calls `cap_able` via direct with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x430e4).
  Calls `mutex_lock` via direct with a0=sym(global_mdp_mon), a1=0x19, a2=?, a3=? (`jal` at 0x43100).
  Calls `mutex_spinlock` via direct with a0=sym(mdp_lock), a1=?, a2=?, a3=? (`jal` at 0x43108).
  Calls `mutex_spinunlock` via direct with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x4311c).
  Calls `mutex_unlock` via direct with a0=sym(global_mdp_mon), a1=?, a2=?, a3=? (`jal` at 0x43124).
  Calls `mutex_spinunlock` via direct with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x43150).
  Calls `md_perf_turnon_node` via direct with a0=a0 at entry (arg0), a1=?, a2=0x2, a3=? (`jal` at 0x43174).
  Calls `mutex_unlock` via direct with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?, a4=[a0], a5=sym(global_mdp_mon), a6=([sym(global_mdp_mon+2)]:2 | 0x1), a7=[sym(global_mdp_mon+28)]+1 (`jal` at 0x431bc).
  Calls `mutex_unlock` via direct with a0=sym(global_mdp_mon), a1=?, a2=?, a3=? (`jal` at 0x431e8).
  Calls `md_perf_disable` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x431f0).
  At `beq` at 0x430ec (target 0x431e0), taken when v0(=ret(cap_able)) == 0 and falls through when v0(=ret(cap_able)) != 0.
  At `beq` at 0x43114 (target 0x43144), taken when t8(=[sym(mdp_mode)]:2) == 0 and falls through when t8(=[sym(mdp_mode)]:2) != 0.
  At `blez` at 0x4315c (target 0x43198), taken when ra(=[sym(maxnodes)]) <= 0 (signed) and falls through when ra(=[sym(maxnodes)]) > 0 (signed).
  At `bne` at 0x43180 (target 0x431e8), taken when v0(=ret(md_perf_turnon_node)) != 0 and falls through when v0(=ret(md_perf_turnon_node)) == 0.
  At `bne` at 0x43190 (target 0x4316c), taken when s0(?) < a0(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a0(=[sym(maxnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x4313c).

- `md_perf_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43200 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43200-0x43304 (260 bytes).
  Stores 2 bytes from zero to sym(mdp_mode) +0x0 (`sh` at 0x4329c) with value 0x0.
  Stores 2 bytes from a2 to sym(.bss) +0xf0b2 (`sh` at 0x432b0).
  Stores 4 bytes from a5 to sym(.bss) +0xf0cc (`sw` at 0x432c8) with value [sym(global_mdp_mon+28)]+1.
  Calls `cap_able` via direct with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4320c).
  Calls `mutex_lock` via direct with a0=sym(global_mdp_mon), a1=0x19, a2=?, a3=? (`jal` at 0x43228).
  Calls `mutex_unlock` via direct with a0=sym(global_mdp_mon), a1=?, a2=?, a3=? (`jal` at 0x43240).
  Calls `md_perf_turnoff_node` via direct with a0=?, a1=0x2, a2=?, a3=? (`jal` at 0x43264).
  Calls `mutex_spinlock` via direct with a0=sym(mdp_lock), a1=?, a2=?, a3=? (`jal` at 0x43288).
  Calls `mutex_spinunlock` via direct with a0=sym(mdp_lock), a1=ret(mutex_spinlock), a2=?, a3=sym(global_mdp_mon), a4=-0x2 (`jal` at 0x432ac).
  Calls `mutex_unlock` via direct with a0=sym(global_mdp_mon), a1=?, a2=?, a3=?, a5=[sym(global_mdp_mon+28)]+1, a6=sym(global_mdp_mon) (`jal` at 0x432c4).
  Calls `assfail` via direct with a0=sym(.rodata)+66048, a1=sym(.rodata)+66048, a2=0x178, a3=? (`jal` at 0x432f4).
  At `beq` at 0x43214 (target 0x432e0), taken when v0(=ret(cap_able)) == 0 and falls through when v0(=ret(cap_able)) != 0.
  At `beq` at 0x43238 (target 0x43250), taken when t8(=[sym(mdp_mode)]:2) == t9(=0x2) and falls through when t8(=[sym(mdp_mode)]:2) != t9(=0x2).
  At `blez` at 0x43250 (target 0x43284), taken when v0(=[sym(maxnodes)]) <= 0 (signed) and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  At `bne` at 0x4326c (target 0x432e8), taken when v0(=ret(md_perf_turnoff_node)) != 0 and falls through when v0(=ret(md_perf_turnoff_node)) == 0.
  At `bne` at 0x4327c (target 0x43260), taken when s0(?) < a1(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  Returns v0 = one of 0x0, 0x1, 0x16 (`jr` at 0x432d8).

- `md_perf_node_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43304 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43304-0x43388 (132 bytes).
  Stores 4 bytes from v0 to a2 (arg2 at entry) +0x0 (`sw` at 0x43374) with value [[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+34412].
  Calls `md_perf_turnon_node` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x43324).
  Calls `md_perf_enable` via direct with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x43378).
  At `beq` at 0x4331c (target 0x43378), taken when a1 == at(=-0x1) and falls through when a1 != at(=-0x1).
  At `beq` at 0x4332c (target 0x43348), taken when v0(=ret(md_perf_turnon_node)) == 0 and falls through when v0(=ret(md_perf_turnon_node)) != 0.
  Returns v0 = ? (`jr` at 0x43340).

- `md_perf_node_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43388 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43388-0x433c4 (60 bytes).
  Calls `md_perf_turnoff_node` via direct with a0=a0 at entry (arg0), a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x43398).
  Calls `md_perf_disable` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x433b4).
  At `beq` at 0x43390 (target 0x433b4), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  Returns v0 = ? (`jr` at 0x433ac).
- `md_perf_transfer_values` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x433c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x433c4-0x43484 (192 bytes).
  Stores 8 bytes from t3 to ? (base unknown) (`sd` at 0x433fc).
  Stores 8 bytes from at to ? (base unknown) (`sd` at 0x43430).
  Stores 8 bytes from t8 to ? (base unknown) (`sd` at 0x43448).
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0x43464).
  At `beq` at 0x4345c (target 0x43468), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `bne` at 0x43468 (target 0x43404), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0x43474 (target 0x433dc), taken when t2(?) < 0x6 (signed) and falls through when t2(?) >= 0x6 (signed).
  Returns v0 = ? (`jr` at 0x4347c).
- `md_perf_get_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43484 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43484-0x43534 (176 bytes).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x434c4) with value -0x1.
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x0 (`sw` at 0x43518) with value [sym(global_mdp_mon+28)].
  Calls `bzero` via direct with a0=a0 at entry (arg0), a1=0x150, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x434a0).
  Calls `md_perf_transfer_values` via direct with a0=a0 at entry (arg0), a1=table(0x8670), a2=?, a3=? (`jal` at 0x434ec).
  At `beq` at 0x434b8 (target 0x434c8), taken when at(=[sym(mdp_mode)]:2) == v0(=0x2) and falls through when at(=[sym(mdp_mode)]:2) != v0(=0x2).
  At `blez` at 0x434c8 (target 0x43508), taken when a0(=[sym(maxnodes)]) <= 0 (signed) and falls through when a0(=[sym(maxnodes)]) > 0 (signed).
  At `bnel` at 0x43500 (target 0x434d8), taken when s0(?) < a2(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a2(=[sym(maxnodes)]) (signed).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x4352c).
- `md_perf_get_node_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43534 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43534-0x43614 (224 bytes).
  Stores 4 bytes from a0 to a2 (arg2 at entry) +0x0 (`sw` at 0x435c8) with value [sym(global_mdp_mon+28)].
  Stores 4 bytes from a2 to a2 (arg2 at entry) +0x0 (`sw` at 0x435fc).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x150, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x43560).
  Calls `md_perf_transfer_values` via direct with a0=a1 at entry (arg1), a1=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34416, a2=0x8650, a3=? (`jal` at 0x435a4).
  Calls `md_perf_get_count` via direct with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x43604).
  At `beq` at 0x43554 (target 0x43600), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  At `beq` at 0x43570 (target 0x435ec), taken when s0(=a0) >= v0(=[sym(maxnodes)]) (signed) and falls through when s0(=a0) < v0(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x43578 (target 0x435ec), taken when s0(=a0) < 0 (signed) and falls through when s0(=a0) >= 0 (signed).
  At `beq` at 0x435c0 (target 0x435f4), taken when a1(?) == a2(=0x4) and falls through when a1(?) != a2(=0x4).
  Returns v0 = ? (`jr` at 0x435e4).
- `md_perf_get_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43614 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43614-0x43690 (124 bytes).
  Stores 4 bytes from at to a0 (arg0 at entry) +0x0 (`sw` at 0x43658) with value [sym(global_mdp_mon+368)].
  Stores 4 bytes from t9 to a1 (arg1 at entry) +0x0 (`sw` at 0x43660) with value [sym(global_mdp_mon+28)].
  Calls `mutex_lock` via direct with a0=sym(global_mdp_mon), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x43634).
  Calls `mutex_unlock` via direct with a0=sym(global_mdp_mon), a1=?, a2=?, a3=? (`jal` at 0x43664).
  Calls `mutex_unlock` via direct with a0=sym(global_mdp_mon), a1=?, a2=?, a3=? (`jal` at 0x43680).
  At `beq` at 0x43648 (target 0x43680), taken when (t8(=[sym(global_mdp_mon+2)]:2) & 0x1) == 0 and falls through when (t8(=[sym(global_mdp_mon+2)]:2) & 0x1) != 0.
  Returns v0 = one of 0x0, 0x16; f0 = ret(mutex_unlock) (`jr` at 0x43678).
- `md_perf_get_node_ctrl` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43690 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43690-0x43794 (260 bytes).
  Stores 4 bytes from ra to a1 (arg1 at entry) +0x0 (`sw` at 0x43718) with value [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752].
  Stores 4 bytes from a1 to a2 (arg2 at entry) +0x0 (`sw` at 0x43730) with value [sym(global_mdp_mon+28)].
  Stores 4 bytes from at to a2 (arg2 at entry) +0x0 (`sw` at 0x4376c) with value [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34412].
  Calls `mutex_lock` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34392, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16 (`jal` at 0x436f8).
  Calls `mutex_unlock` via direct with a0=?, a1=[sym(global_mdp_mon+28)], a2=?, a3=? (`jal` at 0x43734).
  Calls `md_perf_get_ctrl` via direct with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=0x16 (`jal` at 0x43774).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x43784).
  At `beq` at 0x436b8 (target 0x43770), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  At `beq` at 0x436c4 (target 0x4375c), taken when a0 >= v0(=[sym(maxnodes)]) (signed) and falls through when a0 < v0(=[sym(maxnodes)]) (signed).
  At `bltz` at 0x436cc (target 0x4375c), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x4370c (target 0x43784), taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) == 0 and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) != 0.
  At `beq` at 0x43728 (target 0x43764), taken when t9(?) == ra(=0x4) and falls through when t9(?) != ra(=0x4).
  Returns v0 = ? (`jr` at 0x43754).
- `md_perf_start_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43794 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43794-0x437ec (88 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x437c8) with value 0x0.
  Stores 8 bytes from a7 to ([a0+26]:2 << 0x21) -0x6dfffffffe5f0000 (`sd` at 0x437e8).
  At `bne` at 0x437c4 (target 0x437a8), taken when a2(?) < 0x6 (signed) and falls through when a2(?) >= 0x6 (signed).
  Returns v0 = ? (`jr` at 0x437e4).
- `md_perf_stop_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x437ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x437ec-0x43804 (24 bytes).
  Stores 8 bytes from zero to ([a0+26]:2 << 0x21) -0x6dfffffffe5f0000 (`sd` at 0x43800) with value 0x0.
  Returns v0 = 0x9200000001a10000 (`jr` at 0x437fc).
- `md_perf_update_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x43804 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x43804-0x438d8 (212 bytes).
  Stores 8 bytes from at to (a0 + ([a0+4]:2 << 0x3)) +0x140 (`sd` at 0x4383c) with value [sym(lbolt)].
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x43890).
  Stores 8 bytes from t9 to ? (base unknown) (`sd` at 0x438d4).
  At `beq` at 0x4388c (target 0x438ac), taken when a7(=0xfffff) == t2(?) and falls through when a7(=0xfffff) != t2(?).
  At `bne` at 0x4389c (target 0x43840), taken when a2(?) < 0x6 (signed) and falls through when a2(?) >= 0x6 (signed).
  Returns v0 = ? (`jr` at 0x438a4).
- `md_perf_multiplex` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x438d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x438d8-0x439ac (212 bytes).
  Stores 2 bytes from a0 to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8654 (`sh` at 0x43990).
  Calls `md_perf_stop_count` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x43900).
  Calls `md_perf_update_count` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384, a1=?, a2=?, a3=? (`jal` at 0x43908).
  Calls `md_perf_start_count` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384, a1=?, a2=?, a3=?, a6=0x1, a7=0x5 (`jal` at 0x43994).
  At `beq` at 0x4391c (target 0x4399c), taken when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) == 0 and falls through when (t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34386]:2) & 0x1) != 0.
  At `beq` at 0x43928 (target 0x43994), taken when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384]:2) == 0 and falls through when t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34384]:2) != 0.
  At `bne` at 0x4395c (target 0x43990), taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & ra(?)) != 0 and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & ra(?)) == 0.
  At `beq` at 0x43964 (target 0x43990), taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) == a0(?) and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) != a0(?).
  At `bne` at 0x43980 (target 0x43990), taken when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & v0(?)) != 0 and falls through when (a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34752]) & v0(?)) == 0.
  At `bne` at 0x43988 (target 0x43940), taken when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) != a0(?) and falls through when a3(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34388]:2) == a0(?).
  Returns v0 = ? (`jr` at 0x439a4).
- `pio_geth` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x439d4-0x439dc (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x439d4).
- `piomap_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x439e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x439e4-0x439ec (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x439e4).
- `sampleBuffersScore` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8b1004 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8b1004-0xd8b100c (8 bytes).
  Returns v0 = ? (`jr` at 0xd8b1004).
- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d001c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d001c-0xd8d0164 (328 bytes).
  Stores 4 bytes from a0 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8d00a8) with value [[[[0x1014]+276]+216]+108].
  Stores 4 bytes from a0 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8d00c4) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t0 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8d00cc) with value 0x3.
  Stores 1 byte from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8d00d0) with value 0x0.
  Stores 4 bytes from t2 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8d00e8) with value [[[[0x1014]+276]+216]+108]+12.
  Stores 4 bytes from t4 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8d00ec) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 1 byte from t6 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8d00f4) with value 0x6a.
  Stores 1 byte from t5 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8d00f8) with value [[[0x1014]+276]+272].
  Stores 4 bytes from t9 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8d0100) with value [[[0x1014]+276]+60].
  Stores 4 bytes from t7 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8d0108) with value a0.
  Stores 4 bytes from t8 to [[0x1014]+276] +0x48 (`sw` at 0xd8d014c) with value a1.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d0068).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d0088).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d00b4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d0120).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d013c).
  At `beq` at 0xd8d0050 (target 0xd8d0150), taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8d0058 (target 0xd8d0148), taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd8d0078 (target 0xd8d0098), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd8d00a4 (target 0xd8d00c8), taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  At `beql` at 0xd8d0110 (target 0xd8d0130), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd8d0134 (target 0xd8d014c), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8d015c).
- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d0164 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d0164-0xd8d02b8 (340 bytes).
  Stores 4 bytes from a0 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8d01f4) with value [[[[0x1014]+276]+216]+108].
  Stores 4 bytes from a0 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8d0210) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t0 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8d0218) with value 0x4.
  Stores 1 byte from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8d021c) with value 0x0.
  Stores 4 bytes from t2 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8d0234) with value [[[[0x1014]+276]+216]+108]+16.
  Stores 4 bytes from t4 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8d0238) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 1 byte from t6 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8d0240) with value 0x69.
  Stores 1 byte from t5 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8d0244) with value [[[0x1014]+276]+272].
  Stores 4 bytes from t9 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8d024c) with value [[[0x1014]+276]+60].
  Stores 4 bytes from t7 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8d0254) with value a0.
  Stores 4 bytes from t8 to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8d025c) with value a1.
  Stores 4 bytes from t0 to [[0x1014]+276] +0x44 (`sw` at 0xd8d02a0) with value a2.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d01b4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d01d4).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d0200).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d0274).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8d0290).
  At `beq` at 0xd8d019c (target 0xd8d02a4), taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8d01a4 (target 0xd8d029c), taken when v0(=[[[0x1014]+276]+216]) == 0 and falls through when v0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd8d01c4 (target 0xd8d01e4), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd8d01f0 (target 0xd8d0214), taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  At `beql` at 0xd8d0264 (target 0xd8d0284), taken when v1(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v1(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd8d0288 (target 0xd8d02a0), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8d02b0).
- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d916c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d916c-0xd8d91b8 (76 bytes).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0 (`jalr` at 0xd8d919c).
  Returns v0 = 0x0; f0 = ret(__glXPostError) (`jr` at 0xd8d91b0).
- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9e4c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8d9e4c-0xd8da0b4 (616 bytes).
  Stores 4 bytes from t6 to ret(__glXAddDrawableInterest) +0x2c (`sw` at 0xd8d9f0c) with value 0x4.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x64 (`sw` at 0xd8d9fb0) with value [a0+108].
  Stores 1 byte from t1 to [a0+108] +0x0 (`sb` at 0xd8d9fc0) with value 0x1b.
  Stores 2 bytes from t6 to [a0+108] +0x2 (`sh` at 0xd8d9fc4).
  Stores 4 bytes from t3 to a0 (arg0 at entry) +0x60 (`sw` at 0xd8d9fe0) with value [a0+96]+1.
  Stores 4 bytes from t9 to a0 (arg0 at entry) +0x6c (`sw` at 0xd8d9fe4).
  Stores 1 byte from t1 to [a0+108] +0x1 (`sb` at 0xd8d9fec) with value 0x1b.
  Stores 1 byte from t5 to [a0+108] +0x0 (`sb` at 0xd8d9ff4).
  Stores 4 bytes from t6 to [a0+108] +0x4 (`sw` at 0xd8da000) with value [a1+36].
  Stores 4 bytes from t7 to [a0+108] +0x8 (`sw` at 0xd8da008) with value [a1+72].
  Stores 4 bytes from a3 to [a0+108] +0x10 (`sw` at 0xd8da010).
  Stores 4 bytes from t8 to [a0+108] +0xc (`sw` at 0xd8da018).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0xd8da030).
  Stores 4 bytes from t4 to ? (base unknown) (`sw` at 0xd8da048).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8d9e78).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=? (`jalr` at 0xd8d9eac).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xd8d9ec4).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0 (`jalr` at 0xd8d9ef0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=? (`jalr` at 0xd8d9f50).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=? (`jalr` at 0xd8d9f90).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8da060).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8da07c).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8da090).
  At `bne` at 0xd8d9e8c (target 0xd8d9e9c), taken when v0(=ret(__glXSetupForCommand)) != 0 and falls through when v0(=ret(__glXSetupForCommand)) == 0.
  At `bne` at 0xd8d9ed8 (target 0xd8d9f04), taken when v0(=ret(__glXAddDrawableInterest)) != 0 and falls through when v0(=ret(__glXAddDrawableInterest)) == 0.
  At `beq` at 0xd8d9f08 (target 0xd8d9f34), taken when a2 == 0 and falls through when a2 != 0.
  At `beql` at 0xd8d9f18 (target 0xd8d9f38), taken when t7(=[a2]) == 0 and falls through when t7(=[a2]) != 0.
  At `bnel` at 0xd8d9f2c (target 0xd8d9f24), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `beql` at 0xd8d9f38 (target 0xd8d9f68), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  At `beq` at 0xd8d9f7c (target 0xd8d9fac), taken when t3(=[a0+112]) >= t5(?) (unsigned) and falls through when t3(=[a0+112]) < t5(?) (unsigned).
  At `beq` at 0xd8da014 (target 0xd8da04c), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0xd8da01c (target 0xd8da04c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xd8da044 (target 0xd8da024), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beql` at 0xd8da050 (target 0xd8da070), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  At `beq` at 0xd8da074 (target 0xd8da088), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8da0ac).
- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8da0b4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8da0b4-0xd8da220 (364 bytes).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0xd8da128) with value 0x0.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x64 (`sw` at 0xd8da174) with value [a0+108].
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x64 (`sw` at 0xd8da190) with value [a0+108].
  Stores 2 bytes from t0 to [a0+108] +0x2 (`sh` at 0xd8da19c) with value 0x2.
  Stores 1 byte from a1 to [a0+108] +0x0 (`sb` at 0xd8da1a0) with value 0x1c.
  Stores 4 bytes from t2 to a0 (arg0 at entry) +0x6c (`sw` at 0xd8da1b4) with value [a0+108]+8.
  Stores 4 bytes from t4 to a0 (arg0 at entry) +0x60 (`sw` at 0xd8da1b8) with value [a0+96]+1.
  Stores 1 byte from a1 to [a0+108] +0x1 (`sb` at 0xd8da1c0) with value 0x1c.
  Stores 1 byte from t5 to [a0+108] +0x0 (`sb` at 0xd8da1c4).
  Stores 4 bytes from t6 to [a0+108] +0x4 (`sw` at 0xd8da1cc) with value a1.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8da0d8).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd8da0f4).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8da10c).
  Calls `__glXFreeDrawablePrivate` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8da134).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8da154).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8da180).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=0x1c, a2=?, a3=? (`jalr` at 0xd8da1e4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8da200).
  At `beq` at 0xd8da0e4 (target 0xd8da20c), taken when v0(=ret(__glXSetupForCommand)) == 0 and falls through when v0(=ret(__glXSetupForCommand)) != 0.
  At `bne` at 0xd8da120 (target 0xd8da12c), taken when t6(?) != 0 and falls through when t6(?) == 0.
  At `beql` at 0xd8da144 (target 0xd8da164), taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  At `beql` at 0xd8da170 (target 0xd8da194), taken when t7(=[a0+112]) >= t8(=[a0+108]+8) (unsigned) and falls through when t7(=[a0+112]) < t8(=[a0+108]+8) (unsigned).
  At `beql` at 0xd8da1d4 (target 0xd8da1f4), taken when v1(=[a0+1232]) == 0 and falls through when v1(=[a0+1232]) != 0.
  At `beql` at 0xd8da1f8 (target 0xd8da210), taken when v0(=[a0+124]) == 0 and falls through when v0(=[a0+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8da218).
- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dc6cc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dc6cc-0xd8dc76c (160 bytes).
  Stores 2 bytes from t7 to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8dc710) with value 0x8.
  Stores 2 bytes from t8 to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8dc714) with value 0x822.
  Stores 1 byte from a0 to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd8dc718) with value a0.
  Stores 1 byte from a1 to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd8dc71c) with value a1.
  Stores 1 byte from a2 to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd8dc720) with value a2.
  Stores 1 byte from a3 to [[[0x1014]+276]+4] +0x7 (`sb` at 0xd8dc724) with value a3.
  Stores 4 bytes from s0 to [[0x1014]+276] +0x4 (`sw` at 0xd8dc730) with value [[[0x1014]+276]+4]+8.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8dc74c).
  At `beql` at 0xd8dc738 (target 0xd8dc75c), taken when t9(=[[[0x1014]+276]+8]) >= s0(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when t9(=[[[0x1014]+276]+8]) < s0(=[[[0x1014]+276]+4]+8) (unsigned).
  Returns v0 = ? (`jr` at 0xd8dc764).
- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8dca94 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`.
  Range: 0xd8dca94-0xd8dcc20 (396 bytes).
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8dcb20) with value [[[[0x1014]+276]+216]+108].
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8dcb3c) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from t1 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8dcb48) with value 0x4.
  Stores 1 byte from t0 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8dcb4c) with value 0x10.
  Stores 4 bytes from t3 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8dcb64) with value [[[[0x1014]+276]+216]+108]+16.
  Stores 4 bytes from t5 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8dcb68) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from t7 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8dcb74) with value 0x1007.
  Stores 1 byte from t9 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8dcb78) with value 0x11.
  Stores 1 byte from t6 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8dcb7c) with value [[[0x1014]+276]+272].
  Stores 4 bytes from t8 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8dcb8c) with value [[[0x1014]+276]+60].
  Stores 4 bytes from t0 to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8dcb9c) with value a0.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=[[[0x1014]+276]+4], a3=a3 at entry (arg3) (`jalr` at 0xd8dcae0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8dcb00).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8dcb2c).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-48, a2=0x0, a3=0x0 (`jalr` at 0xd8dcba4).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0xd8dcbc4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8dcbe4).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8dcc00).
  At `beql` at 0xd8dcacc (target 0xd8dcc10), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beql` at 0xd8dcaf0 (target 0xd8dcb10), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd8dcb1c (target 0xd8dcb40), taken when t7(=[[[[0x1014]+276]+216]+112]) >= t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when t7(=[[[[0x1014]+276]+216]+112]) < t8(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  At `beql` at 0xd8dcbd4 (target 0xd8dcbf4), taken when v0(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beql` at 0xd8dcbf8 (target 0xd8dcc10), taken when v0(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when v0(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8dcc18).

- `InitBuffers` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda47180 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda47180-0xda473ac (556 bytes).
  The routine occupies 556 bytes at address 0xda47180.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x7718 (`sw` at 0xda471b4) with value a0+30496.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x2d4c (`sw` at 0xda471bc) with value a0+30496.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x771c (`sw` at 0xda471c8) with value a0+30716.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x2d48 (`sw` at 0xda471d0) with value a0+30716.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x2d48 (`sw` at 0xda47248) with value [a0+30488].
  Stores 1 byte from t2 to a0 (arg0 at entry) +0x12e8 (`sb` at 0xda472f8) with value 0x1.
  Stores 4 bytes from t3 to a0 (arg0 at entry) +0x12ec (`sw` at 0xda47300) with value -0x1.
  Stores 4 bytes from t6 to a0 (arg0 at entry) +0x79a0 (`sw` at 0xda4735c) with value 0x1ffff800.
  Calls `__glOdysseyInitCI [0xda438fc]` via register-constant with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda471e0).
  Calls `__glOdysseyInitCI [0xda438fc]` via register-constant with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xda471f8).
  Calls `__glOdysseyInitRGB [0xdab0cb8]` via register-constant with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda47214).
  Calls `__glOdysseyInitRGB [0xdab0cb8]` via register-constant with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xda4722c).
  Calls `__glOdysseyInitCI [0xda438fc]` via register-constant with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda47254).
  Calls `__glOdysseyInitRGB [0xdab0cb8]` via register-constant with a0=[a0+30488], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda4726c).
  Calls `__glOdysseyInitCI [0xda438fc]` via register-constant with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xda472b8).
  Calls `__glOdysseyInitRGB [0xdab0cb8]` via register-constant with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xda472d4).
  Calls `__glOdysseyInitAccum [0xda35264]` via register-constant with a0=a0+31192, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xda47310).
  Calls `__glInitDepth [0xdb1e3e8]` via register-constant with a0=a0+31060, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xda47340).
  Calls `__glInitStencil8 [0xdb51f98]` via register-constant with a0=a0+30940, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xda4736c).
  Calls `__glUpdateDepthRange [0xdb836a4]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xda47380).
  At `beq` at 0xda471b8 (target 0xda4723c), taken when t6(=[a0+3214]:1) == 0 and falls through when t6(=[a0+3214]:1) != 0.
  At `beq` at 0xda471cc (target 0xda47208), taken when t7(=[a0+3213]:1) == 0 and falls through when t7(=[a0+3213]:1) != 0.
  At `beq` at 0xda47244 (target 0xda47264), taken when t8(=[a0+3213]:1) == 0 and falls through when t8(=[a0+3213]:1) != 0.
  At `blezl` at 0xda4727c (target 0xda472f0), taken when s2(=[a0+3288]) <= 0 (signed) and falls through when s2(=[a0+3288]) > 0 (signed).
  At `blez` at 0xda47284 (target 0xda472ec), taken when s2(=[a0+3288]) <= 0 (signed) and falls through when s2(=[a0+3288]) > 0 (signed).
  At `beq` at 0xda472a4 (target 0xda472c8), taken when t9(=[a0+3213]:1) == 0 and falls through when t9(=[a0+3213]:1) != 0.
  At `bnel` at 0xda472e4 (target 0xda472a4), taken when s0(?) != s3(?) and falls through when s0(?) == s3(?).
  At `beq` at 0xda472fc (target 0xda47328), taken when t4(=[a0+3216]:1) == 0 and falls through when t4(=[a0+3216]:1) != 0.
  At `bne` at 0xda47318 (target 0xda47328), taken when v0(=ret(__glOdysseyInitAccum)) != 0 and falls through when v0(=ret(__glOdysseyInitAccum)) == 0.
  At `beql` at 0xda4732c (target 0xda47350), taken when t5(=[a0+3217]:1) == 0 and falls through when t5(=[a0+3217]:1) != 0.
  At `beq` at 0xda47358 (target 0xda47378), taken when t7(=[a0+3218]:1) == 0 and falls through when t7(=[a0+3218]:1) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xda473a4).
- `ImageChainAddOpTextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda723c0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda723c0-0xda7245c (156 bytes).
  Stores 4 bytes from t9 to ret(ImageChainOpCreate) +0x8 (`sw` at 0xda72414) with value ([ret(ImageChainOpCreate)+8] | 0x2c).
  Stores 4 bytes from t6 to ret(ImageChainOpCreate) +0x0 (`sw` at 0xda72424) with value 0x2.
  Stores 4 bytes from t7 to ret(ImageChainOpCreate) +0x4 (`sw` at 0xda72428) with value 0xda7245c.
  Stores 4 bytes from t0 to ret(ImageChainOpCreate) +0xc (`sw` at 0xda7242c) with value 0x1.
  Calls `ImageChainOpCreate [0xda70648]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda723e8).
  Calls `ImageChainAddOp [0xda70b14]` via register-constant with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jalr` at 0xda7243c).
  At `bne` at 0xda723f4 (target 0xda72404), taken when v0(=ret(ImageChainOpCreate)) != 0 and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xda72454).
- `RenderFunc_TextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda7245c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda7245c-0xda724a8 (76 bytes).
  Calls `__glOdysseyImageMovePixelsTexture [0xdaa043c]` via register-constant with a0=[a0+72], a1=[a0+68], a2=a1 at entry (arg1), a3=0x1 (`jalr` at 0xda7248c).
  Returns v0 = 0x1; f0 = ret(__glOdysseyImageMovePixelsTexture) (`jr` at 0xda724a0).
- `LoadTextureFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda7c7b4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda7c7b4-0xda7c8d4 (288 bytes).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0xda7c7f8).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0xda7c80c).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0xda7c818).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0xda7c800).
  Stores 4 bytes from a2 to [0x1010] +0x8b04 (`sw` at 0xda7c81c) with value 0x2.
  Stores 4 bytes from t7 to [0x1010] +0x8c0c (`sw` at 0xda7c83c).
  Stores 4 bytes from t5 to [0x1010] +0x8c10 (`sw` at 0xda7c848).
  Stores 4 bytes from t7 to [0x1010] +0x8c14 (`sw` at 0xda7c850).
  Stores 4 bytes from t5 to [0x1010] +0x8c18 (`sw` at 0xda7c858).
  Stores 4 bytes from t7 to [0x1010] +0x8c1c (`sw` at 0xda7c860).
  Stores 4 bytes from t5 to [0x1010] +0x8c20 (`sw` at 0xda7c868).
  Stores 4 bytes from t7 to [0x1010] +0x8c24 (`sw` at 0xda7c870).
  Stores 4 bytes from t5 to [0x1010] +0x8c28 (`sw` at 0xda7c878).
  Stores 4 bytes from a2 to [0x1010] +0x8c08 (`sw` at 0xda7c87c) with value 0x2.
  Stores 4 bytes from t0 to [0x1010] +0x8c8c (`sw` at 0xda7c89c).
  Stores 4 bytes from t9 to [0x1010] +0x8c90 (`sw` at 0xda7c8a4).
  Stores 4 bytes from t0 to [0x1010] +0x8c94 (`sw` at 0xda7c8ac).
  Stores 4 bytes from t2 to [0x1010] +0x168d0 (`sw` at 0xda7c8c0) with value ([[0x1010]+92368] | 0x38000).
  Stores 4 bytes from a2 to abs 0x1018 (`sw` at 0xda7c8c4) with value 0x2.
  Stores 4 bytes from t4 to [0x1010] +0x2d44 (`sw` at 0xda7c8d0) with value [[0x1010]+11588].
  At `bne` at 0xda7c808 (target 0xda7c7ec), taken when t8(?) != t1(?) and falls through when t8(?) == t1(?).
  Returns v0 = [0x1010] (`jr` at 0xda7c8cc).
- `ImageChainAddOpPixelTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda81428 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda81428-0xda814bc (148 bytes).
  Stores 4 bytes from t9 to ret(ImageChainOpCreate) +0xc (`sw` at 0xda81474) with value 0x1.
  Stores 4 bytes from t6 to ret(ImageChainOpCreate) +0x0 (`sw` at 0xda81488) with value 0xb.
  Stores 4 bytes from t8 to ret(ImageChainOpCreate) +0x8 (`sw` at 0xda8148c) with value ([ret(ImageChainOpCreate)+8] | 0xe).
  Stores 4 bytes from t0 to ret(ImageChainOpCreate) +0x4 (`sw` at 0xda81490) with value 0xda814bc.
  Calls `ImageChainOpCreate [0xda70648]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda81448).
  Calls `ImageChainAddOp [0xda70b14]` via register-constant with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=[a0+8], a3=0x0 (`jalr` at 0xda8149c).
  At `bne` at 0xda81458 (target 0xda81468), taken when v0(=ret(ImageChainOpCreate)) != 0 and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xda814b4).

- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda87e44 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda87e44-0xda87eb8 (116 bytes).
  Stores 4 bytes from $f8 to a1 (arg1 at entry) +0x13c (`swc1` at 0xda87e78).
  Stores 4 bytes from $f10 to a1 (arg1 at entry) +0x14c (`swc1` at 0xda87e7c).
  Stores 4 bytes from $f16 to a1 (arg1 at entry) +0x13c (`swc1` at 0xda87e9c).
  Stores 4 bytes from $f18 to a1 (arg1 at entry) +0x14c (`swc1` at 0xda87ea4).
  Calls `__glOdySpanShiftOffsetIndex [0xda87750]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xda87e88).
  Returns v0 = ret(__glOdySpanShiftOffsetIndex); f0 = ret(__glOdySpanShiftOffsetIndex) (`jr` at 0xda87eb0).
- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5370 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5370-0xdab53e0 (112 bytes).
  Calls `__glOdysseyDestroyPMObjGroup [0xdaac74c]` via register-constant with a0=a0 at entry (arg0), a1=a1+1332, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jalr` at 0xdab53a8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=? (`jalr` at 0xdab53c4).
  At `beql` at 0xdab5394 (target 0xdab53c0), taken when t6(=[a1+1332]) == at(=-0x1) and falls through when t6(=[a1+1332]) != at(=-0x1).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0xdab53d8).
- `InitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab53e0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab53e0-0xdab561c (572 bytes).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x8 (`sw` at 0xdab5410) with value a1.
  Stores 4 bytes from t6 to a0 (arg0 at entry) +0x0 (`sw` at 0xdab542c) with value 0x1.
  Stores 4 bytes from t7 to a0 (arg0 at entry) +0x4 (`sw` at 0xdab5430) with value 0xdab5370.
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0xc (`sw` at 0xdab5434) with value a2.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x10 (`sw` at 0xdab5438) with value 0x0.
  Stores 4 bytes from t8 to a0 (arg0 at entry) +0x14 (`sw` at 0xdab543c) with value 0x2702.
  Stores 4 bytes from t9 to a0 (arg0 at entry) +0x18 (`sw` at 0xdab5440) with value 0x2601.
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x1c (`sw` at 0xdab5444) with value 0x2901.
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x20 (`sw` at 0xdab5448) with value 0x2901.
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x24 (`sw` at 0xdab544c) with value 0x2901.
  Stores 4 bytes from t2 to a0 (arg0 at entry) +0x40 (`sw` at 0xdab5450) with value -0x4.
  Stores 4 bytes from t3 to a0 (arg0 at entry) +0x44 (`sw` at 0xdab5454) with value 0x104.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x2c (`swc1` at 0xdab5460).
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x30 (`swc1` at 0xdab5464).
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x34 (`swc1` at 0xdab5468).
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x38 (`swc1` at 0xdab546c).
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0x3c (`swc1` at 0xdab5470).
  12 such accesses: Stores 4 bytes from zero to ? (base unknown) (including `sw` at 0xdab5484, 0xdab5488, 0xdab548c).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0xdab54ac) with value 0x1.
  Stores 4 bytes from t4 to a0 (arg0 at entry) +0x534 (`sw` at 0xdab54d4) with value -0x1.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x538 (`sw` at 0xdab54d8) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xc0 (`sw` at 0xdab54dc) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x544 (`sw` at 0xdab54e0) with value 0x0.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x548 (`sw` at 0xdab54e4) with value 0x2.
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x54c (`sw` at 0xdab54e8) with value 0xdbd36a0.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x550 (`sw` at 0xdab54ec) with value 0x2.
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x554 (`sw` at 0xdab54f0) with value 0xdbd36a0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x108 (`sw` at 0xdab5560) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x10c (`sw` at 0xdab5564) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x110 (`sw` at 0xdab5568) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xe0 (`sw` at 0xdab556c) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xe4 (`sw` at 0xdab5570) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xe8 (`sw` at 0xdab5574) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xec (`sw` at 0xdab5578) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xf0 (`sw` at 0xdab557c) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xf4 (`sw` at 0xdab5580) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xf8 (`sw` at 0xdab5584) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xfc (`sw` at 0xdab5588) with value 0x0.
  Stores 4 bytes from t5 to a0 (arg0 at entry) +0x100 (`sw` at 0xdab558c) with value 0x3100.
  Stores 4 bytes from t6 to a0 (arg0 at entry) +0x104 (`sw` at 0xdab5590) with value 0xf00.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x7c (`sw` at 0xdab5594) with value 0x0.
  Stores 4 bytes from t7 to a0 (arg0 at entry) +0x80 (`sw` at 0xdab5598) with value 0x3e8.
  Stores 4 bytes from t8 to a0 (arg0 at entry) +0xc4 (`sw` at 0xdab559c) with value 0x8000000.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xc8 (`sw` at 0xdab55a0) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xcc (`sw` at 0xdab55a4) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xd0 (`sw` at 0xdab55a8) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xd8 (`sw` at 0xdab55ac) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xdc (`sw` at 0xdab55b0) with value 0x0.
  Stores 4 bytes from t9 to a0 (arg0 at entry) +0xd4 (`sw` at 0xdab55b4) with value 0x82.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x114 (`sw` at 0xdab55b8) with value 0x1000.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x11c (`sw` at 0xdab55bc) with value 0x1000.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x124 (`sw` at 0xdab55c0) with value 0x1000.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x12c (`sw` at 0xdab55c4) with value 0x1000.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x118 (`sw` at 0xdab55c8) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x120 (`sw` at 0xdab55cc) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x128 (`sw` at 0xdab55d0) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x130 (`sw` at 0xdab55d4) with value 0x0.
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0x68 (`swc1` at 0xdab55d8).
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0x6c (`swc1` at 0xdab55dc).
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0x70 (`swc1` at 0xdab55e0).
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0xa0 (`swc1` at 0xdab55e4).
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0xa4 (`swc1` at 0xdab55e8).
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0xa8 (`swc1` at 0xdab55ec).
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0xac (`swc1` at 0xdab55f0).
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x90 (`swc1` at 0xdab55f4) with value ret(__glOdysseyTextureSetDetailTable).
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x94 (`swc1` at 0xdab55f8) with value ret(__glOdysseyTextureSetDetailTable).
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x98 (`swc1` at 0xdab55fc) with value ret(__glOdysseyTextureSetDetailTable).
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x9c (`swc1` at 0xdab5600) with value ret(__glOdysseyTextureSetDetailTable).
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0x74 (`swc1` at 0xdab5604).
  Stores 4 bytes from $f6 to a0 (arg0 at entry) +0x78 (`swc1` at 0xdab5608).
  Calls `bzero` via got with a0=a0+308, a1=0x400, a2=a2 at entry (arg2), a3=a0 at entry (arg0) (`jalr` at 0xdab5500).
  Calls `__glOdysseyTextureSetDetailTable [0xdabe880]` via register-constant with a0=a0 at entry (arg0), a1=0x2, a2=0xdbd36a0, a3=? (`jalr` at 0xdab551c).
  At `bne` at 0xdab54bc (target 0xdab5480), taken when v1(?) != a1(=0x10) and falls through when v1(?) == a1(=0x10).
  Returns v0 = 0x1000; f0 = ret(__glOdysseyTextureSetDetailTable) (`jr` at 0xdab5614).
- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5838 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5838-0xdab5924 (236 bytes).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=a0 at entry (arg0), a1=[a0+91308], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab587c).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=a0 at entry (arg0), a1=[a0+91312], a2=?, a3=? (`jalr` at 0xdab58b0).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdab58dc).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdab5904).
  At `beql` at 0xdab5868 (target 0xdab588c), taken when t7(=[[a0+91308]+8]) == 0 and falls through when t7(=[[a0+91308]+8]) != 0.
  At `beql` at 0xdab589c (target 0xdab58c4), taken when t8(=[[a0+91312]+8]) == 0 and falls through when t8(=[[a0+91312]+8]) != 0.
  At `beql` at 0xdab58c8 (target 0xdab58f0), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beql` at 0xdab58f4 (target 0xdab5914), taken when t0(?) == 0 and falls through when t0(?) != 0.
  Returns v0 = ? (`jr` at 0xdab591c).
- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab5aa0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab5aa0-0xdab5b58 (184 bytes).
  At `beq` at 0xdab5aa4 (target 0xdab5af0), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdab5ab0 (target 0xdab5afc), taken when a1 == at(=0xde1) and falls through when a1 != at(=0xde1).
  At `beq` at 0xdab5abc (target 0xdab5b20), taken when a1 == at(=0x8063) and falls through when a1 != at(=0x8063).
  At `beq` at 0xdab5ac4 (target 0xdab5b30), taken when a1 == at(=0x8064) and falls through when a1 != at(=0x8064).
  At `beq` at 0xdab5acc (target 0xdab5b08), taken when a1 == at(=0x806f) and falls through when a1 != at(=0x806f).
  At `beq` at 0xdab5ad8 (target 0xdab5b40), taken when a1 == at(=0x8070) and falls through when a1 != at(=0x8070).
  At `beq` at 0xdab5ae0 (target 0xdab5b14), taken when a1 == at(=0x8095) and falls through when a1 != at(=0x8095).
  Returns v0 = [a0+91308] (`jr` at 0xdab5af4).
  Returns v0 = [a0+91312] (`jr` at 0xdab5b00).
  Returns v0 = [a0+91316] (`jr` at 0xdab5b0c).
  Returns v0 = [a0+91320] (`jr` at 0xdab5b18).
  Returns v0 = a0+83748 (`jr` at 0xdab5b28).
  Returns v0 = a0+86268 (`jr` at 0xdab5b38).
  Returns v0 = a0+88788 (`jr` at 0xdab5b48).
  Returns v0 = 0x0 (`jr` at 0xdab5b50).
- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab60c0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab60c0-0xdab677c (1724 bytes).
  Stores 4 bytes from s0 to ? (base unknown) (`sw` at 0xdab6618) with value a2.
  Stores 4 bytes from s1 to ? (base unknown) (`sw` at 0xdab661c) with value a3.
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0xdab6620).
  Stores 4 bytes from t5 to ? (base unknown) (`sw` at 0xdab6628).
  Stores 4 bytes from t5 to ? (base unknown) (`sw` at 0xdab6668).
  Stores 4 bytes from t7 to ? (base unknown) (`sw` at 0xdab6630).
  Stores 4 bytes from t7 to ? (base unknown) (`sw` at 0xdab6670).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0xdab6638).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0xdab6678).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0xdab6640).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0xdab66b4).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0xdab664c).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0xdab66bc).
  Stores 4 bytes from t4 to ? (base unknown) (`sw` at 0xdab6658).
  Stores 4 bytes from t6 to ? (base unknown) (`sw` at 0xdab6660).
  4 such accesses: Stores 4 bytes from v0 to ? (base unknown) (including `sw` at 0xdab66a4, 0xdab672c, 0xdab675c).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xdab6720).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0xdab6724).
  Calls `__glOdysseyGetCurrentTexture [0xdab5aa0]` via register-constant with a0=[0x1010], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab60fc).
  Calls `ChooseSuitableBuzzTexObjFormat [0xdab5cf4]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab6134).
  Calls `CalcTexelSizes [0xdab5e68]` via register-constant with a0=ret(ChooseSuitableBuzzTexObjFormat), a1=sp-12, a2=sp-16, a3=sp-20 (`jalr` at 0xdab6178).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab61ac).
  Calls `ceilf` via got with a0=?, a1=one of 0x0, 0x1, a2=?, a3=? (`jalr` at 0xdab628c).
  Calls `__glOdysseyImageLogBase2 [0xdaa6250]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab634c).
  Calls `memset` via got with a0=sp-80, a1=0x0, a2=0x28, a3=? (`jalr` at 0xdab639c).
  Calls `__glOdysseyDestroyPMObjGroup [0xdaac74c]` via register-constant with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0xdab6550).
  Calls `__glOdysseyDestroyPMObj [0xdaac868]` via register-constant with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0xdab6578).
  Calls `__glOdysseyCreatePMObj [0xdaac57c]` via register-constant with a0=?, a1=sp-80, a2=?, a3=a1 at entry (arg1) (`jalr` at 0xdab659c).
  Calls `memset` via got with a0=?, a1=0x0, a2=0x44, a3=? (`jalr` at 0xdab65e0).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xdab65fc).
  Calls `CalcPixelModePixelFormat [0xdab60a4]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab6688).
  At `beq` at 0xdab61dc (target 0xdab6228), taken when (v0(?) & 0x78) == 0 and falls through when (v0(?) & 0x78) != 0.
  At `bne` at 0xdab6208 (target 0xdab6220), taken when (v0(?) & 0x78) != 0 and falls through when (v0(?) & 0x78) == 0.
  At `bltz` at 0xdab6230 (target 0xdab6220), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `beq` at 0xdab6240 (target 0xdab6250), taken when (v0(?) & 0x1) == 0 and falls through when (v0(?) & 0x1) != 0.
  At `beql` at 0xdab62c4 (target 0xdab6314), taken when (t9(?) & 0x78) == 0 and falls through when (t9(?) & 0x78) != 0.
  At `bne` at 0xdab62f0 (target 0xdab6308), taken when (t9(?) & 0x78) != 0 and falls through when (t9(?) & 0x78) == 0.
  At `bltz` at 0xdab6318 (target 0xdab6308), taken when t9(?) < 0 (signed) and falls through when t9(?) >= 0 (signed).
  At `bne` at 0xdab632c (target 0xdab6370), taken when t0(?) < 0x2 (signed) and falls through when t0(?) >= 0x2 (signed).
  At `beq` at 0xdab63e8 (target 0xdab6424), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0xdab643c (target 0xdab6468), taken when v0(=a0) == at(=0x8063) and falls through when v0(=a0) != at(=0x8063).
  At `beq` at 0xdab6448 (target 0xdab647c), taken when v0(=a0) == at(=0x8064) and falls through when v0(=a0) != at(=0x8064).
  At `beq` at 0xdab6454 (target 0xdab6490), taken when v0(=a0) == at(=0x8070) and falls through when v0(=a0) != at(=0x8070).
  At `bne` at 0xdab64c4 (target 0xdab6590), taken when t4(?) != 0 and falls through when t4(?) == 0.
  At `beql` at 0xdab64d8 (target 0xdab6614), taken when t5(?) == at(=-0x1) and falls through when t5(?) != at(=-0x1).
  At `bnel` at 0xdab64e8 (target 0xdab6614), taken when a1(=0x1) != t8(?) and falls through when a1(=0x1) == t8(?).
  At `blez` at 0xdab64fc (target 0xdab6538), taken when a0(?) <= 0 (signed) and falls through when a0(?) > 0 (signed).
  At `beql` at 0xdab6504 (target 0xdab652c), taken when v0(?) == a2(=a1) and falls through when v0(?) != a2(=a1).
  At `bnel` at 0xdab651c (target 0xdab652c), taken when a1(=0x1) != t4(?) and falls through when a1(=0x1) == t4(?).
  At `bne` at 0xdab6530 (target 0xdab6504), taken when v0(?) < a0(?) (signed) and falls through when v0(?) >= a0(?) (signed).
  At `beq` at 0xdab6538 (target 0xdab6568), taken when v1(=one of 0x0, 0x1) == 0 and falls through when v1(=one of 0x0, 0x1) != 0.
  At `bne` at 0xdab65ac (target 0xdab6610), taken when v0(=ret(__glOdysseyCreatePMObj)) != 0 and falls through when v0(=ret(__glOdysseyCreatePMObj)) == 0.
  At `beq` at 0xdab65bc (target 0xdab65d4), taken when v0(=a0) == at(=0x8063) and falls through when v0(=a0) != at(=0x8063).
  At `beq` at 0xdab65c4 (target 0xdab65d4), taken when v0(=a0) == at(=0x8064) and falls through when v0(=a0) != at(=0x8064).
  At `bne` at 0xdab65cc (target 0xdab65f4), taken when v0(=a0) != at(=0x8070) and falls through when v0(=a0) == at(=0x8070).
  At `bne` at 0xdab66cc (target 0xdab6764), taken when t4(=a1) != 0 and falls through when t4(=a1) == 0.
  At `beq` at 0xdab66e0 (target 0xdab66f4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0xdab66ec (target 0xdab66e8), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0xdab66f8 (target 0xdab670c), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0xdab6704 (target 0xdab6700), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0xdab670c (target 0xdab6720), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0xdab6718 (target 0xdab6714), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xdab6728 (target 0xdab6738), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xdab6740 (target 0xdab6760), taken when v0(?) >= a1(?) (signed) and falls through when v0(?) < a1(?) (signed).
  At `beq` at 0xdab6748 (target 0xdab6758), taken when at(?) == 0 and falls through when at(?) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xdab6774).
  The instructions from 0xdab6310 to 0xdab6310 are not reached by any path from the entry, and their branches are not listed.
- `LoadTextureFromHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab677c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab677c-0xdab6e30 (1716 bytes).
  Stores 4 bytes from zero to [0x1010] +0x164c0 (`sw` at 0xdab6810) with value 0x0.
  Stores 4 bytes from t8 to [0x1010] +0x7b7c (`sw` at 0xdab6ae0).
  Stores 4 bytes from t8 to [0x1010] +0x7b7c (`sw` at 0xdab6bac).
  Stores 4 bytes from t6 to [0x1010] +0x7b7c (`sw` at 0xdab6b2c).
  Stores 4 bytes from t6 to [0x1010] +0x7b7c (`sw` at 0xdab6bcc).
  Stores 4 bytes from t1 to [0x1010] +0x7b7c (`sw` at 0xdab6b58).
  Stores 4 bytes from t1 to [0x1010] +0x7b7c (`sw` at 0xdab6bd4).
  Stores 4 bytes from t9 to [0x1010] +0x7b7c (`sw` at 0xdab6de0).
  Stores 4 bytes from t2 to [0x1010] +0x168d0 (`sw` at 0xdab6df8).
  Stores 4 bytes from t6 to abs 0x1018 (`sw` at 0xdab6dfc) with value 0x2.
  Stores 4 bytes from t3 to [0x1010] +0x2d44 (`sw` at 0xdab6e04) with value [[0x1010]+11588].
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0xdab6e0c) with value 0x1.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0xdab6e14) with value 0x1.
  Calls `__glOdysseyTextureDeactivate [0xdab8908]` via register-constant with a0=[0x1010], a1=[[0x1010]+91328], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab67fc).
  Calls `__glOdysseyGetCurrentTexture [0xdab5aa0]` via register-constant with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xdab6820).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xdab68bc).
  Calls `memset` via got with a0=sp-56, a1=0x0, a2=0x38, a3=? (`jalr` at 0xdab68d8).
  Calls `__glSpecElementsPerGroup [0xdaf8340]` via register-constant with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=? (`jalr` at 0xdab6904).
  Calls `__glSpecBytesPerElement [0xdaf8444]` via register-constant with a0=a3 at entry (arg3), a1=?, a2=?, a3=? (`jalr` at 0xdab691c).
  Calls `memset` via got with a0=sp-112, a1=0x0, a2=0x38, a3=? (`jalr` at 0xdab6a2c).
  Calls `GetImageFmtEnumFromBuzzTexFormat [0xdab5b58]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab6aa8).
  Calls `__glOdysseyImageXfer [0xda6af2c]` via register-constant with a0=sp-112, a1=sp-56, a2=sp-128, a3=0x0 (`jalr` at 0xdab6bf4).
  Calls `ceilf` via got with a0=sp-112, a1=sp-56, a2=sp-128, a3=? (`jalr` at 0xdab6c78).
  Calls `__glOdysseyImageXfer [0xda6af2c]` via register-constant with a0=sp-112, a1=sp-56, a2=sp-128, a3=0x0 (`jalr` at 0xdab6da8).
  At `beql` at 0xdab67d8 (target 0xdab6e1c), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0xdab67e8 (target 0xdab6814), taken when a1(=[[0x1010]+91328]) == 0 and falls through when a1(=[[0x1010]+91328]) != 0.
  At `beq` at 0xdab6858 (target 0xdab68cc), taken when t6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) == 0 and falls through when t6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) != 0.
  At `beq` at 0xdab6860 (target 0xdab689c), taken when v0(=a0) == at(=0xde0) and falls through when v0(=a0) != at(=0xde0).
  At `beq` at 0xdab6868 (target 0xdab6888), taken when v0(=a0) == at(=0xde1) and falls through when v0(=a0) != at(=0xde1).
  At `bne` at 0xdab6870 (target 0xdab68b4), taken when v0(=a0) != at(=0x806f) and falls through when v0(=a0) == at(=0x806f).
  At `bne` at 0xdab693c (target 0xdab6950), taken when t2(=[[0x1010]+1224]) != at(=0x85a3) and falls through when t2(=[[0x1010]+1224]) == at(=0x85a3).
  At `beql` at 0xdab695c (target 0xdab6970), taken when v0(=[[0x1010]+1192]) == 0 and falls through when v0(=[[0x1010]+1192]) != 0.
  At `beql` at 0xdab6978 (target 0xdab698c), taken when v0(=[[0x1010]+1212]) == 0 and falls through when v0(=[[0x1010]+1212]) != 0.
  At `beql` at 0xdab6994 (target 0xdab69a8), taken when v0(=[[0x1010]+1204]) >= s1(?) (unsigned) and falls through when v0(=[[0x1010]+1204]) < s1(?) (unsigned).
  At `bgez` at 0xdab69b4 (target 0xdab69c8), taken when t6(=[[0x1010]+1200]) >= 0 (signed) and falls through when t6(=[[0x1010]+1200]) < 0 (signed).
  At `bgez` at 0xdab69d8 (target 0xdab69ec), taken when t7(=[[0x1010]+1196]) >= 0 (signed) and falls through when t7(=[[0x1010]+1196]) < 0 (signed).
  At `beq` at 0xdab6af0 (target 0xdab6b00), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bnel` at 0xdab6af8 (target 0xdab6b34), taken when s0(?) != at(=0x8) and falls through when s0(?) == at(=0x8).
  At `beql` at 0xdab6be0 (target 0xdab6c08), taken when t2(=a0) == at(=0x806f) and falls through when t2(=a0) != at(=0x806f).
  At `bgez` at 0xdab6c44 (target 0xdab6c58), taken when t2(?) >= 0 (signed) and falls through when t2(?) < 0 (signed).
  At `bgez` at 0xdab6c58 (target 0xdab6c70), taken when t6(?) >= 0 (signed) and falls through when t6(?) < 0 (signed).
  At `bgez` at 0xdab6c94 (target 0xdab6ca8), taken when t3(?) >= 0 (signed) and falls through when t3(?) < 0 (signed).
  At `beql` at 0xdab6cd8 (target 0xdab6d28), taken when (t5(?) & 0x78) == 0 and falls through when (t5(?) & 0x78) != 0.
  At `bne` at 0xdab6d04 (target 0xdab6d1c), taken when (t5(?) & 0x78) != 0 and falls through when (t5(?) & 0x78) == 0.
  At `bltz` at 0xdab6d2c (target 0xdab6d1c), taken when t5(?) < 0 (signed) and falls through when t5(?) >= 0 (signed).
  At `beql` at 0xdab6d64 (target 0xdab6dd8), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `bne` at 0xdab6dcc (target 0xdab6d7c), taken when v1(?) != t4(?) and falls through when v1(?) == t4(?).
  Returns v0 = ? (`jr` at 0xdab6e28).
  The instructions from 0xdab696c to 0xdab696c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6988 to 0xdab6988 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab69a4 to 0xdab69a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6b30 to 0xdab6b30 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6c04 to 0xdab6c04 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdab6d24 to 0xdab6d24 are not reached by any path from the entry, and their branches are not listed.
- `LoadTextureFromReadable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab6e30 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab6e30-0xdab7238 (1032 bytes).
  Stores 4 bytes from zero to [0x1010] +0x164c0 (`sw` at 0xdab6eb0) with value 0x0.
  Stores 4 bytes from t5 to [0x1010] +0x7b7c (`sw` at 0xdab7070).
  Stores 4 bytes from t5 to [0x1010] +0x7b7c (`sw` at 0xdab7168).
  Stores 4 bytes from t4 to [0x1010] +0x7b7c (`sw` at 0xdab70c0).
  Stores 4 bytes from t3 to [0x1010] +0x7b7c (`sw` at 0xdab70ec).
  Stores 4 bytes from t7 to [0x1010] +0x7b7c (`sw` at 0xdab7158).
  Stores 4 bytes from t6 to [0x1010] +0x7b7c (`sw` at 0xdab7160).
  Stores 4 bytes from t1 to [0x1010] +0x7b7c (`sw` at 0xdab71e8).
  Stores 4 bytes from t8 to [0x1010] +0x168d0 (`sw` at 0xdab7208).
  Stores 4 bytes from t3 to abs 0x1018 (`sw` at 0xdab720c) with value 0x2.
  Stores 4 bytes from t4 to [0x1010] +0x2d44 (`sw` at 0xdab7214) with value [[0x1010]+11588].
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0xdab7218) with value 0x1.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0xdab7220) with value 0x1.
  Calls `__glOdysseyTextureDeactivate [0xdab8908]` via register-constant with a0=[0x1010], a1=[[0x1010]+91328], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab6e9c).
  Calls `__glOdysseyGetCurrentTexture [0xdab5aa0]` via register-constant with a0=[0x1010], a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xdab6ec0).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xdab6f58).
  Calls `memset` via got with a0=sp-56, a1=0x0, a2=0x38, a3=? (`jalr` at 0xdab6fc0).
  Calls `GetImageFmtEnumFromBuzzTexFormat [0xdab5b58]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xdab7040).
  Calls `__glOdysseyImageXfer [0xda6af2c]` via register-constant with a0=sp-56, a1=[0x1010]+72912, a2=sp-72, a3=0x0 (`jalr` at 0xdab71d4).
  At `beql` at 0xdab6e74 (target 0xdab7228), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0xdab6e88 (target 0xdab6eb4), taken when a1(=[[0x1010]+91328]) == 0 and falls through when a1(=[[0x1010]+91328]) != 0.
  At `beq` at 0xdab6ef0 (target 0xdab6f68), taken when t5(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) == 0 and falls through when t5(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1472]) != 0.
  At `beq` at 0xdab6efc (target 0xdab6f38), taken when v0(=a0) == at(=0xde0) and falls through when v0(=a0) != at(=0xde0).
  At `beq` at 0xdab6f04 (target 0xdab6f24), taken when v0(=a0) == at(=0xde1) and falls through when v0(=a0) != at(=0xde1).
  At `bne` at 0xdab6f0c (target 0xdab6f50), taken when v0(=a0) != at(=0x806f) and falls through when v0(=a0) == at(=0x806f).
  At `beq` at 0xdab7080 (target 0xdab7094), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bnel` at 0xdab708c (target 0xdab70c8), taken when v1(?) != at(=0x8) and falls through when v1(?) == at(=0x8).
  At `bne` at 0xdab7174 (target 0xdab71b8), taken when t6(=a0) != at(=0x806f) and falls through when t6(=a0) == at(=0x806f).
  Returns v0 = ? (`jr` at 0xdab7230).
  The instructions from 0xdab70c4 to 0xdab70c4 are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabec14 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabec14-0xdabeedc (712 bytes).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0xdabede0).
  Stores 4 bytes from a3 to table(0x164ac) +0x0 (`sw` at 0xdabee2c).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0xdabee54).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0xdabee68).
  Stores 4 bytes from t1 to [0x1010] +0x168d4 (`sw` at 0xdabee7c).
  Stores 4 bytes from t2 to abs 0x1018 (`sw` at 0xdabee84) with value 0x2.
  Stores 4 bytes from t3 to [0x1010] +0x2d44 (`sw` at 0xdabee8c) with value [[0x1010]+11588].
  Stores 4 bytes from zero to [0x1010] +0x164c0 (`sw` at 0xdabeec4) with value 0x0.
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabec58).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabecc0).
  Calls `__glNamesLockData [0xdb3d700]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jalr` at 0xdabed1c).
  Calls `(unknown callee)` via register with a0=[0x1010], a1=0x9d8, a2=?, a3=? (`jalr` at 0xdabed48).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x505, a1=?, a2=?, a3=ret(?) (`jalr` at 0xdabed68).
  Calls `InitTextureObject [0xdab53e0]` via register-constant with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=ret(?) (`jalr` at 0xdabed9c).
  Calls `__glNamesNewData [0xdb3d17c]` via register-constant with a0=[0x1010], a1=?, a2=a1 at entry (arg1), a3=? (`jalr` at 0xdabedbc).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xdabedf8).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=[0x1010], a1=entry(0x164ac), a2=?, a3=? (`jalr` at 0xdabee3c).
  Calls `__glOdysseyTextureDeactivate [0xdab8908]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=? (`jalr` at 0xdabeeb0).
  At `bne` at 0xdabec48 (target 0xdabec68), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `beq` at 0xdabec6c (target 0xdabec98), taken when t7(=a0) == at(=0xde0) and falls through when t7(=a0) != at(=0xde0).
  At `beq` at 0xdabec78 (target 0xdabeca0), taken when t7(=a0) == at(=0xde1) and falls through when t7(=a0) != at(=0xde1).
  At `beq` at 0xdabec80 (target 0xdabecb0), taken when t7(=a0) == at(=0x806f) and falls through when t7(=a0) != at(=0x806f).
  At `beq` at 0xdabec88 (target 0xdabeca8), taken when t7(=a0) == at(=0x8095) and falls through when t7(=a0) != at(=0x8095).
  At `bne` at 0xdabecd0 (target 0xdabed08), taken when t8(=a1) != 0 and falls through when t8(=a1) == 0.
  At `bne` at 0xdabed30 (target 0xdabede4), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `bne` at 0xdabed58 (target 0xdabed78), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0xdabedcc (target 0xdabeec8), taken when v0(=ret(__glNamesNewData)) == 0 and falls through when v0(=ret(__glNamesNewData)) != 0.
  At `beql` at 0xdabede8 (target 0xdabee0c), taken when t3(=a0) == t4(?) and falls through when t3(=a0) != t4(?).
  At `beql` at 0xdabee28 (target 0xdabee58), taken when t6(=[entry(0x164ac)+8]) == 0 and falls through when t6(=[entry(0x164ac)+8]) != 0.
  At `beql` at 0xdabee94 (target 0xdabeecc), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beql` at 0xdabee9c (target 0xdabeecc), taken when a3(?) == a1(?) and falls through when a3(?) != a1(?).
  Returns v0 = ? (`jr` at 0xdabeed4).
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabeedc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabeedc-0xdabf170 (660 bytes).
  Stores 4 bytes from zero to [0x1010] +0x164c0 (`sw` at 0xdabefd8) with value 0x0.
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xdabf07c).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xdabf080).
  Stores 4 bytes from t8 to [0x1010] +0x168d0 (`sw` at 0xdabf09c) with value ([[0x1010]+92368] | 0x116200).
  Stores 4 bytes from t9 to abs 0x1018 (`sw` at 0xdabf0a4) with value 0x2.
  Stores 4 bytes from t0 to [0x1010] +0x2d44 (`sw` at 0xdabf0ac) with value [[0x1010]+11588].
  Stores 4 bytes from t3 to [0x1010] +0x168d4 (`sw` at 0xdabf12c) with value ([[0x1010]+92372] | 0x200).
  Stores 4 bytes from t4 to abs 0x1018 (`sw` at 0xdabf134) with value 0x2.
  Stores 4 bytes from t5 to [0x1010] +0x2d44 (`sw` at 0xdabf13c) with value [[0x1010]+11588].
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabef3c).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabef60).
  Calls `__glOdysseyTextureDeactivate [0xdab8908]` via register-constant with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=? (`jalr` at 0xdabefc4).
  Calls `__glNamesDeleteRange [0xdb3e580]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=? (`jalr` at 0xdabf000).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=? (`jalr` at 0xdabf034).
  Calls `__glNamesDeleteRange [0xdb3e580]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=? (`jalr` at 0xdabf0d8).
  Calls `__glNamesDeleteRange [0xdb3e580]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=? (`jalr` at 0xdabf110).
  At `bne` at 0xdabef2c (target 0xdabef4c), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `bgezl` at 0xdabef50 (target 0xdabef70), taken when t7(=a0) >= 0 (signed) and falls through when t7(=a0) < 0 (signed).
  At `blez` at 0xdabef84 (target 0xdabf100), taken when t8(=a0) <= 0 (signed) and falls through when t8(=a0) > 0 (signed).
  At `beql` at 0xdabefa0 (target 0xdabefe0), taken when a1(=[[0x1010]+91328]) == 0 and falls through when a1(=[[0x1010]+91328]) != 0.
  At `bnel` at 0xdabefb0 (target 0xdabefe0), taken when t1(=[[[0x1010]+91328]+8]) != t2(?) and falls through when t1(=[[[0x1010]+91328]+8]) == t2(?).
  At `bne` at 0xdabefe8 (target 0xdabf018), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bnel` at 0xdabf024 (target 0xdabf0bc), taken when t3(?) != v0(?) and falls through when t3(?) == v0(?).
  At `bne` at 0xdabf0bc (target 0xdabf01c), taken when s0(?) != s3(=0x4) and falls through when s0(?) == s3(=0x4).
  At `beq` at 0xdabf0c4 (target 0xdabf0ec), taken when s5(?) == v0(?) and falls through when s5(?) != v0(?).
  At `bnel` at 0xdabf0f8 (target 0xdabefa0), taken when s4(?) != t1(?) and falls through when s4(?) == t1(?).
  Returns v0 = ? (`jr` at 0xdabf168).
  The instructions from 0xdabf0b8 to 0xdabf0b8 are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf170 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf170-0xdabf21c (172 bytes).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jalr` at 0xdabf1b4).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jalr` at 0xdabf1d4).
  Calls `__glNamesGenNames [0xdb3e9f4]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jalr` at 0xdabf200).
  At `bne` at 0xdabf1a4 (target 0xdabf1c4), taken when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  At `bgez` at 0xdabf1c4 (target 0xdabf1e4), taken when a2(=a0) >= 0 (signed) and falls through when a2(=a0) < 0 (signed).
  At `beql` at 0xdabf1e4 (target 0xdabf210), taken when a3(=a1) == 0 and falls through when a3(=a1) != 0.
  At `beq` at 0xdabf1ec (target 0xdabf20c), taken when a2(=a0) == 0 and falls through when a2(=a0) != 0.
  Returns v0 = ? (`jr` at 0xdabf214).
- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf29c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf29c-0xdabf438 (412 bytes).
  Stores 1 byte from s6 to ? (base unknown) (`sb` at 0xdabf3d4) with value 0x1.
  Stores 1 byte from zero to ? (base unknown) (`sb` at 0xdabf3dc) with value 0x0.
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabf304).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabf328).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xdabf364).
  Calls `__glNamesLockData [0xdb3d700]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=? (`jalr` at 0xdabf384).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xdabf3a0).
  Calls `__glOdysseyIsTextureResident [0xdabf21c]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdabf3c0).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdabf3ec).
  At `bne` at 0xdabf2f4 (target 0xdabf318), taken when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  At `bgez` at 0xdabf318 (target 0xdabf33c), taken when s7(=a0) >= 0 (signed) and falls through when s7(=a0) < 0 (signed).
  At `blez` at 0xdabf33c (target 0xdabf404), taken when s7(=a0) <= 0 (signed) and falls through when s7(=a0) > 0 (signed).
  At `bne` at 0xdabf354 (target 0xdabf378), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0xdabf390 (target 0xdabf3b4), taken when v0(=ret(__glNamesLockData)) != 0 and falls through when v0(=ret(__glNamesLockData)) == 0.
  At `beq` at 0xdabf3c8 (target 0xdabf3d8), taken when v0(=ret(__glOdysseyIsTextureResident)) == 0 and falls through when v0(=ret(__glOdysseyIsTextureResident)) != 0.
  At `bne` at 0xdabf3fc (target 0xdabf350), taken when s2(?) != s7(=a0) and falls through when s2(?) == s7(=a0).
  Returns v0 = ? (`jr` at 0xdabf430).
- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf478 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf478-0xdabf5f8 (384 bytes).
  Stores 4 bytes from $f0 to ret(__glNamesLockData) +0x3c (`swc1` at 0xdabf574) with value ret(Clampf).
  Stores 4 bytes from t2 to [0x1010] +0x168d4 (`sw` at 0xdabf5b4) with value ([[0x1010]+92372] | 0x200).
  Stores 4 bytes from t3 to abs 0x1018 (`sw` at 0xdabf5bc) with value 0x2.
  Stores 4 bytes from t4 to [0x1010] +0x2d44 (`sw` at 0xdabf5c4) with value [[0x1010]+11588].
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabf4dc).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabf4fc).
  Calls `__glNamesLockData [0xdb3d700]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=? (`jalr` at 0xdabf53c).
  Calls `Clampf [0xdabf438]` via register-constant with a0=?, a1=?, a2=[[0x1010]+3536], a3=?; fp f14=f20 (`jalr` at 0xdabf568).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdabf584).
  At `bne` at 0xdabf4cc (target 0xdabf4ec), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `bgez` at 0xdabf4ec (target 0xdabf508), taken when s5(=a0) >= 0 (signed) and falls through when s5(=a0) < 0 (signed).
  At `blez` at 0xdabf508 (target 0xdabf59c), taken when s5(=a0) <= 0 (signed) and falls through when s5(=a0) > 0 (signed).
  At `beql` at 0xdabf528 (target 0xdabf594), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xdabf548 (target 0xdabf590), taken when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  At `bne` at 0xdabf594 (target 0xdabf524), taken when s1(?) != s4(=((a0 << 0x2) + a1)) and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  Returns v0 = ? (`jr` at 0xdabf5f0).
- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf5f8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf5f8-0xdabf6ac (180 bytes).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010] (`jalr` at 0xdabf630).
  Calls `__glNamesLockData [0xdb3d700]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=[0x1010] (`jalr` at 0xdabf664).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=?, a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdabf68c).
  At `bne` at 0xdabf620 (target 0xdabf644), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `bne` at 0xdabf644 (target 0xdabf654), taken when a2(=a0) != 0 and falls through when a2(=a0) == 0.
  At `bne` at 0xdabf674 (target 0xdabf684), taken when v0(=ret(__glNamesLockData)) != 0 and falls through when v0(=ret(__glNamesLockData)) == 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xdabf6a4).
- `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6680 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6680-0xdad67c0 (320 bytes).
  The routine occupies 320 bytes at address 0xdad6680.
  Stores 4 bytes from $f8 to a2 (arg2 at entry) +0x0 (`swc1` at 0xdad6780).
  Stores 4 bytes from $f8 to a2 (arg2 at entry) +0x4 (`swc1` at 0xdad6798).
  Stores 4 bytes from $f10 to a2 (arg2 at entry) +0x0 (`swc1` at 0xdad67a0) with value [a0+3532].
  Stores 4 bytes from $f4 to a2 (arg2 at entry) +0x4 (`swc1` at 0xdad67a8) with value [a0+3532].
  Calls `(unknown callee)` via register with a0=sp-16, a1=a1+96, a2=a2 at entry (arg2), a3=a1 at entry (arg1) (`jalr` at 0xdad66b8).
  Calls `Dot [0xdad6650]` via register-constant with a0=a1+32, a1=sp-16, a2=?, a3=a1 at entry (arg1) (`jalr` at 0xdad66d8).
  At `bc1tl` at 0xdad676c (target 0xdad67a0), taken when f8 == f10 (c.eq.s at 0xdad6764) and falls through when not (f8 == f10 (c.eq.s at 0xdad6764)).
  Returns v0 = ret(Dot) (`jr` at 0xdad67b8).
  The instructions from 0xdad679c to 0xdad679c are not reached by any path from the entry, and their branches are not listed.
- `grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdadf350 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdadf350-0xdadf54c (508 bytes).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x1c (`sw` at 0xdadf420) with value ret(?).
  Stores 4 bytes from t6 to sp (at entry) -0x2c (`sw` at 0xdadf44c).
  Stores 4 bytes from t9 to sp (at entry) -0x28 (`sw` at 0xdadf454).
  Stores 4 bytes from t6 to sp (at entry) -0x24 (`sw` at 0xdadf45c).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0xdadf484) with value 0x0.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0xdadf48c).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0xdadf490).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0xdadf4cc) with value [a0+24].
  Stores 4 bytes from t4 to ? (base unknown) (`sw` at 0xdadf4e4).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0xdadf500).
  Stores 4 bytes from t6 to ? (base unknown) (`sw` at 0xdadf50c).
  Stores 4 bytes from t3 to a0 (arg0 at entry) +0x8 (`sw` at 0xdadf514).
  Stores 4 bytes from t6 to a0 (arg0 at entry) +0x18 (`sw` at 0xdadf51c) with value [a0+4].
  Stores 4 bytes from t0 to a0 (arg0 at entry) +0x4 (`sw` at 0xdadf524).
  Stores 4 bytes from t5 to a0 (arg0 at entry) +0xc (`sw` at 0xdadf52c).
  Stores 4 bytes from t4 to a0 (arg0 at entry) +0x10 (`sw` at 0xdadf538) with value ([a0+16] + a1).
  Calls `(unknown callee)` via register with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0 at entry (arg0) (`jalr` at 0xdadf38c).
  Calls `(unknown callee)` via register with a0=?, a1=[a0+28], a2=?, a3=a0 at entry (arg0) (`jalr` at 0xdadf3fc).
  At `bne` at 0xdadf3a0 (target 0xdadf3b0), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `bne` at 0xdadf41c (target 0xdadf42c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `bnel` at 0xdadf47c (target 0xdadf4b4), taken when t0(?) < v0(=[a0+4]) (signed) and falls through when t0(?) >= v0(=[a0+4]) (signed).
  At `bltz` at 0xdadf488 (target 0xdadf494), taken when a0(?) < 0 (signed) and falls through when a0(?) >= 0 (signed).
  At `beq` at 0xdadf4a4 (target 0xdadf484), taken when t0(?) >= v0(?) (signed) and falls through when t0(?) < v0(?) (signed).
  At `beql` at 0xdadf4b4 (target 0xdadf514), taken when t5(=[a0+20]) == 0 and falls through when t5(=[a0+20]) != 0.
  Returns v0 = one of -0x1, 0x0; f0 = ret(?) (`jr` at 0xdadf544).
- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb0ab58 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb0ab58-0xdb0ac9c (324 bytes).
  Stores 4 bytes from zero to [0x1010] +0x760 (`sw` at 0xdb0abdc) with value 0x0.
  Stores 4 bytes from t8 to [0x1010] +0x760 (`sw` at 0xdb0ac00) with value 0x404.
  Stores 4 bytes from t0 to [0x1010] +0x760 (`sw` at 0xdb0ac1c) with value 0x404.
  Stores 4 bytes from t1 to [0x1010] +0x760 (`sw` at 0xdb0ac24) with value 0x408.
  Stores 4 bytes from t3 to [0x1010] +0x760 (`sw` at 0xdb0ac3c) with value 0x405.
  Stores 4 bytes from a0 to [0x1010] +0x760 (`sw` at 0xdb0ac58) with value a0.
  Stores 4 bytes from a0 to [0x1010] +0x764 (`sw` at 0xdb0ac74) with value a0.
  Stores 4 bytes from t6 to abs 0x1018 (`sw` at 0xdb0ac7c) with value 0x2.
  Stores 4 bytes from t8 to [0x1010] +0x2d44 (`sw` at 0xdb0ac88) with value ([[0x1010]+11588] | 0x1).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb0ab90).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb0abe8).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb0ac64).
  At `bne` at 0xdb0ab80 (target 0xdb0aba0), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `beq` at 0xdb0aba0 (target 0xdb0abd0), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0xdb0abac (target 0xdb0ac5c), taken when t7(=a0-1024) >= 0xd (unsigned) and falls through when t7(=a0-1024) < 0xd (unsigned).
  At `bne` at 0xdb0abd0 (target 0xdb0ac5c), taken when a0 != 0 and falls through when a0 == 0.
  At `bne` at 0xdb0ac10 (target 0xdb0ac20), taken when t9(=[[0x1010]+3214]:1) != 0 and falls through when t9(=[[0x1010]+3214]:1) == 0.
  At `beq` at 0xdb0ac30 (target 0xdb0abe0), taken when t2(=[[0x1010]+3214]:1) == 0 and falls through when t2(=[[0x1010]+3214]:1) != 0.
  At `beq` at 0xdb0ac4c (target 0xdb0abe0), taken when t5(=a0-1033) >= t4(=[[0x1010]+3288]) (signed) and falls through when t5(=a0-1033) < t4(=[[0x1010]+3288]) (signed).
  Returns v0 = ? (`jr` at 0xdb0ac94).
- `StoreGREATER` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d2d0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d2d0-0xdb1d340 (112 bytes).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xdb1d32c).
  At `beq` at 0xdb1d324 (target 0xdb1d338), taken when t2(?) >= v1(?) (unsigned) and falls through when t2(?) < v1(?) (unsigned).
  Returns v0 = 0x1 (`jr` at 0xdb1d330).
  Returns v0 = 0x0 (`jr` at 0xdb1d338).
- `StoreGREATER_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d340 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d340-0xdb1d3b0 (112 bytes).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xdb1d39c).
  At `beq` at 0xdb1d394 (target 0xdb1d3a8), taken when t2(?) >= v1(?) (signed) and falls through when t2(?) < v1(?) (signed).
  Returns v0 = 0x1 (`jr` at 0xdb1d3a0).
  Returns v0 = 0x0 (`jr` at 0xdb1d3a8).
- `StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d41c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d41c-0xdb1d48c (112 bytes).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xdb1d478).
  At `bne` at 0xdb1d470 (target 0xdb1d484), taken when v1(?) < t2(?) (unsigned) and falls through when v1(?) >= t2(?) (unsigned).
  Returns v0 = 0x1 (`jr` at 0xdb1d47c).
  Returns v0 = 0x0 (`jr` at 0xdb1d484).
- `StoreGEQUAL_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d48c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d48c-0xdb1d4fc (112 bytes).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xdb1d4e8).
  At `bne` at 0xdb1d4e0 (target 0xdb1d4f4), taken when v1(?) < t2(?) (signed) and falls through when v1(?) >= t2(?) (signed).
  Returns v0 = 0x1 (`jr` at 0xdb1d4ec).
  Returns v0 = 0x0 (`jr` at 0xdb1d4f4).
- `StoreGREATER_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d714 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d714-0xdb1d76c (88 bytes).
  Returns v0 = ? (`jr` at 0xdb1d764).
- `StoreGREATER_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d76c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d76c-0xdb1d7c4 (88 bytes).
  Returns v0 = ? (`jr` at 0xdb1d7bc).
- `StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d820 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d820-0xdb1d87c (92 bytes).
  Returns v0 = ? (`jr` at 0xdb1d874).
- `StoreGEQUAL_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1d87c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1d87c-0xdb1d8d8 (92 bytes).
  Returns v0 = ? (`jr` at 0xdb1d8d0).

- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60970 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60970-0xdb609bc (76 bytes).
  At `beq` at 0xdb60974 (target 0xdb60994), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb6097c (target 0xdb6099c), taken when a1 == at(=0xde1) and falls through when a1 != at(=0xde1).
  At `beq` at 0xdb60984 (target 0xdb609a8), taken when a1 == at(=0x806f) and falls through when a1 != at(=0x806f).
  Returns v0 = [a0+2476] (`jr` at 0xdb60994).
  Returns v0 = [a0+2476]+224 (`jr` at 0xdb609a0).
  Returns v0 = [a0+2476]+448 (`jr` at 0xdb609ac).
  Returns v0 = 0x0 (`jr` at 0xdb609b4).
- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb609bc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb609bc-0xdb60a0c (80 bytes).
  At `beq` at 0xdb609c0 (target 0xdb609e0), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb609c8 (target 0xdb609ec), taken when a1 == at(=0xde1) and falls through when a1 != at(=0xde1).
  At `beq` at 0xdb609d0 (target 0xdb609f8), taken when a1 == at(=0x806f) and falls through when a1 != at(=0x806f).
  Returns v0 = [a0+2476]+216 (`jr` at 0xdb609e4).
  Returns v0 = [a0+2476]+440 (`jr` at 0xdb609f0).
  Returns v0 = [a0+2476]+664 (`jr` at 0xdb609fc).
  Returns v0 = 0x0 (`jr` at 0xdb60a04).
- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60a0c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60a0c-0xdb60a98 (140 bytes).
  At `beq` at 0xdb60a10 (target 0xdb60a48), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb60a18 (target 0xdb60a54), taken when a1 == at(=0xde1) and falls through when a1 != at(=0xde1).
  At `beq` at 0xdb60a20 (target 0xdb60a6c), taken when a1 == at(=0x8063) and falls through when a1 != at(=0x8063).
  At `beq` at 0xdb60a28 (target 0xdb60a78), taken when a1 == at(=0x8064) and falls through when a1 != at(=0x8064).
  At `beq` at 0xdb60a30 (target 0xdb60a60), taken when a1 == at(=0x806f) and falls through when a1 != at(=0x806f).
  At `beq` at 0xdb60a38 (target 0xdb60a84), taken when a1 == at(=0x8070) and falls through when a1 != at(=0x8070).
  Returns v0 = [[a0+28028]] (`jr` at 0xdb60a4c).
  Returns v0 = [[a0+28028]+4] (`jr` at 0xdb60a58).
  Returns v0 = [[a0+28028]+8] (`jr` at 0xdb60a64).
  Returns v0 = [[a0+28028]+12] (`jr` at 0xdb60a70).
  Returns v0 = [[a0+28028]+16] (`jr` at 0xdb60a7c).
  Returns v0 = [[a0+28028]+20] (`jr` at 0xdb60a88).
  Returns v0 = 0x0 (`jr` at 0xdb60a90).
- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60a98 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60a98-0xdb60ae8 (80 bytes).
  At `beq` at 0xdb60a9c (target 0xdb60abc), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb60aa4 (target 0xdb60ac8), taken when a1 == at(=0xde1) and falls through when a1 != at(=0xde1).
  At `beq` at 0xdb60aac (target 0xdb60ad4), taken when a1 == at(=0x806f) and falls through when a1 != at(=0x806f).
  Returns v0 = [[a0+28032]] (`jr` at 0xdb60ac0).
  Returns v0 = [[a0+28032]+4] (`jr` at 0xdb60acc).
  Returns v0 = [[a0+28032]+8] (`jr` at 0xdb60ad8).
  Returns v0 = 0x0 (`jr` at 0xdb60ae0).
- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb60bac (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb60bac-0xdb60bf0 (68 bytes).
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x8 (`sw` at 0xdb60bd0) with value a3.
  Stores 1 byte from zero to a1 (arg1 at entry) +0xc (`sb` at 0xdb60bd4) with value 0x0.
  Stores 4 bytes from a2 to a1 (arg1 at entry) +0xec (`sw` at 0xdb60bd8) with value a2.
  Stores 4 bytes from t6 to a1 (arg1 at entry) +0x4 (`sw` at 0xdb60bdc) with value 0xdb74b38.
  Stores 4 bytes from t7 to a1 (arg1 at entry) +0x108 (`sw` at 0xdb60be0) with value 0xdb60b28.
  Stores 4 bytes from t8 to a1 (arg1 at entry) +0x10c (`sw` at 0xdb60be4) with value 0xdb60b6c.
  Stores 4 bytes from $f4 to a1 (arg1 at entry) +0xf0 (`swc1` at 0xdb60bec).
  Returns v0 = ? (`jr` at 0xdb60be8).
- `__glim_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb63294 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb63294-0xdb6332c (152 bytes).
  Stores 1 byte from a0 to [0x1010] +0x9d4 (`sb` at 0xdb632f8).
  Stores 1 byte from a1 to [0x1010] +0x9d5 (`sb` at 0xdb632fc).
  Stores 1 byte from a2 to [0x1010] +0x9d6 (`sb` at 0xdb63300).
  Stores 1 byte from a3 to [0x1010] +0x9d7 (`sb` at 0xdb63304).
  Stores 4 bytes from t7 to abs 0x1018 (`sw` at 0xdb6330c) with value 0x2.
  Stores 4 bytes from t9 to [0x1010] +0x2d44 (`sw` at 0xdb63318) with value ([[0x1010]+11588] | 0x1).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xdb632e8).
  At `bne` at 0xdb632d8 (target 0xdb632f8), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  Returns v0 = ? (`jr` at 0xdb63324).
- `IsTextureConsistent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb646f0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb646f0-0xdb64860 (368 bytes).
  At `beq` at 0xdb64700 (target 0xdb64728), taken when t2(=[[a1+228]+4]) == 0 and falls through when t2(=[[a1+228]+4]) != 0.
  At `beq` at 0xdb6470c (target 0xdb64728), taken when t3(=[[a1+228]+8]) == 0 and falls through when t3(=[[a1+228]+8]) != 0.
  At `bnel` at 0xdb64720 (target 0xdb64734), taken when t4(=[[a1+228]+12]) != 0 and falls through when t4(=[[a1+228]+12]) == 0.
  At `bne` at 0xdb64754 (target 0xdb64778), taken when t9(=[[a0+2480]]) != at(=0x2101) and falls through when t9(=[[a0+2480]]) == at(=0x2101).
  At `beq` at 0xdb64760 (target 0xdb64778), taken when t5(=[[a1+228]+64]) == at(=0x1907) and falls through when t5(=[[a1+228]+64]) != at(=0x1907).
  At `beql` at 0xdb64768 (target 0xdb6477c), taken when t5(=[[a1+228]+64]) == at(=0x1908) and falls through when t5(=[[a1+228]+64]) != at(=0x1908).
  At `beq` at 0xdb64784 (target 0xdb6479c), taken when t2(=[a1+16]) == at(=0x2600) and falls through when t2(=[a1+16]) != at(=0x2600).
  At `beq` at 0xdb6478c (target 0xdb6479c), taken when t2(=[a1+16]) == at(=0x2601) and falls through when t2(=[a1+16]) != at(=0x2601).
  At `bnel` at 0xdb64794 (target 0xdb647a8), taken when t2(=[a1+16]) != at(=0x8146) and falls through when t2(=[a1+16]) == at(=0x8146).
  At `bne` at 0xdb647a8 (target 0xdb64854), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xdb647b4 (target 0xdb647c0), taken when v0(?) != t4(=0x1) -> outside and falls through when v0(?) == t4(=0x1).
  At `beq` at 0xdb647bc (target 0xdb64854), taken when v1(?) == t4(=0x1) and falls through when v1(?) != t4(=0x1).
  At `bne` at 0xdb647d4 (target 0xdb647e0), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0xdb647e4 (target 0xdb647f0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xdb647f0 (target 0xdb647fc), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0xdb64800 (target 0xdb64844), taken when a3(=[[a1+228]+56]) != t8(?) and falls through when a3(=[[a1+228]+56]) == t8(?).
  At `bne` at 0xdb6480c (target 0xdb64844), taken when t1(=[[a1+228]+60]) != t9(?) and falls through when t1(=[[a1+228]+60]) == t9(?).
  At `bne` at 0xdb6481c (target 0xdb64844), taken when t6(?) != t7(?) and falls through when t6(?) == t7(?).
  At `bne` at 0xdb6482c (target 0xdb64844), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?).
  At `beq` at 0xdb6483c (target 0xdb6484c), taken when t6(?) == t7(?) and falls through when t6(?) != t7(?).
  At `bne` at 0xdb6484c (target 0xdb647b4), taken when t2(?) != t0(=[a0+3724]) and falls through when t2(?) == t0(=[a0+3724]).
  Returns v0 = 0x0 (`jr` at 0xdb64728).
  Returns v0 = 0x0 (`jr` at 0xdb64770).
  Returns v0 = 0x1 (`jr` at 0xdb6479c).
  Returns v0 = 0x0 (`jr` at 0xdb64844).
  Returns v0 = 0x1 (`jr` at 0xdb64858).
  The instructions from 0xdb64730 to 0xdb64730 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb647a4 to 0xdb647a4 are not reached by any path from the entry, and their branches are not listed.
- `__glTextureSBModulateA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb6b1fc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb6b1fc-0xdb6b274 (120 bytes).
  Stores 4 bytes from $f0 to a2 (arg2 at entry) +0x10 (`swc1` at 0xdb6b254) with value ret(__GL_TEXENV_CLAMP).
  Stores 4 bytes from $f18 to a1 (arg1 at entry) +0xc (`swc1` at 0xdb6b260).
  Calls `__GL_TEXENV_CLAMP [0xdb6acf0]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3536], a3=a3 at entry (arg3) (`jalr` at 0xdb6b240).
  Returns v0 = a1; f0 = ret(__GL_TEXENV_CLAMP) (`jr` at 0xdb6b26c).
- `__glTextureSBReplaceA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb6c338 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb6c338-0xdb6c3b8 (128 bytes).
  Stores 4 bytes from $f0 to a2 (arg2 at entry) +0x10 (`swc1` at 0xdb6c394) with value ret(__GL_TEXENV_CLAMP).
  Stores 4 bytes from $f18 to a1 (arg1 at entry) +0xc (`swc1` at 0xdb6c3a4).
  Calls `__GL_TEXENV_CLAMP [0xdb6acf0]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+3536], a3=a3 at entry (arg3) (`jalr` at 0xdb6c380).
  Returns v0 = ret(__GL_TEXENV_CLAMP); f0 = ret(__GL_TEXENV_CLAMP) (`jr` at 0xdb6c3b0).
- `__glim_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb74c54 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb74c54-0xdb74d04 (176 bytes).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jalr` at 0xdb74c98).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jalr` at 0xdb74cbc).
  Calls `__glNamesGenNames [0xdb3e9f4]` via register-constant with a0=?, a1=?, a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jalr` at 0xdb74ce8).
  At `bne` at 0xdb74c88 (target 0xdb74ca8), taken when t7(=[0x1018]) != at(=0x1) and falls through when t7(=[0x1018]) == at(=0x1).
  At `bgez` at 0xdb74ca8 (target 0xdb74cd0), taken when a2(=a0) >= 0 (signed) and falls through when a2(=a0) < 0 (signed).
  At `beql` at 0xdb74cd0 (target 0xdb74cf8), taken when a2(=a0) == 0 and falls through when a2(=a0) != 0.
  At `beql` at 0xdb74cd8 (target 0xdb74cf8), taken when a3(=a1) == 0 and falls through when a3(=a1) != 0.
  Returns v0 = ? (`jr` at 0xdb74cfc).
- `__glim_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb751a4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb751a4-0xdb752b8 (276 bytes).
  Stores 4 bytes from zero to abs 0x1018 (`sw` at 0xdb75208) with value 0x0.
  Stores 4 bytes from t6 to abs 0x1018 (`sw` at 0xdb75294) with value 0x2.
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0xdb752a4).
  Calls `(unknown callee)` via register with a0=[0x1010], a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010] (`jalr` at 0xdb751f0).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010] (`jalr` at 0xdb75214).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x500, a1=?, a2=a0 at entry (arg0), a3=? (`jalr` at 0xdb75268).
  Calls `__glBindTexture [0xdb74f58]` via register-constant with a0=?, a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=? (`jalr` at 0xdb75284).
  At `beq` at 0xdb751d0 (target 0xdb75224), taken when v0(=[0x1018]) == 0 and falls through when v0(=[0x1018]) != 0.
  At `bne` at 0xdb751d8 (target 0xdb7520c), taken when v0(=[0x1018]) != at(=0x2) and falls through when v0(=[0x1018]) == at(=0x2).
  At `beq` at 0xdb75228 (target 0xdb75248), taken when a2(=a0) == at(=0xde0) and falls through when a2(=a0) != at(=0xde0).
  At `beq` at 0xdb75230 (target 0xdb75250), taken when a2(=a0) == at(=0xde1) and falls through when a2(=a0) != at(=0xde1).
  At `beq` at 0xdb75238 (target 0xdb75258), taken when a2(=a0) == at(=0x806f) and falls through when a2(=a0) != at(=0x806f).
  Returns v0 = ? (`jr` at 0xdb752b0).
- `__glim_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb752b8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb752b8-0xdb75454 (412 bytes).
  Stores 4 bytes from $f0 to ret(__glNamesLockData) +0xf0 (`swc1` at 0xdb753bc) with value ret(Clampf).
  Stores 4 bytes from $f0 to [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xe0 (`swc1` at 0xdb753e4) with value [ret(__glNamesLockData)+240].
  Stores 4 bytes from $f0 to ? (base unknown) (`swc1` at 0xdb753fc) with value [ret(__glNamesLockData)+240].
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb7531c).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb7533c).
  Calls `__glNamesLockData [0xdb3d700]` via register-constant with a0=[0x1010], a1=[[0x1010]+28064], a2=?, a3=? (`jalr` at 0xdb75384).
  Calls `Clampf [0xdb60ae8]` via register-constant with a0=?, a1=?, a2=[[0x1010]+3536], a3=?; fp f14=f20 (`jalr` at 0xdb753ac).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdb7540c).
  At `bne` at 0xdb7530c (target 0xdb7532c), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `bgez` at 0xdb7532c (target 0xdb75348), taken when s6(=a0) >= 0 (signed) and falls through when s6(=a0) < 0 (signed).
  At `beql` at 0xdb75348 (target 0xdb75428), taken when s6(=a0) == 0 and falls through when s6(=a0) != 0.
  At `blez` at 0xdb75350 (target 0xdb75424), taken when s6(=a0) <= 0 (signed) and falls through when s6(=a0) > 0 (signed).
  At `beql` at 0xdb75370 (target 0xdb7541c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xdb75390 (target 0xdb75418), taken when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  At `bne` at 0xdb753d8 (target 0xdb75400), taken when t3(=[ret(__glNamesLockData)+236]) != t4(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) and falls through when t3(=[ret(__glNamesLockData)+236]) == t4(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]).
  At `bne` at 0xdb7541c (target 0xdb7536c), taken when s1(?) != s4(=((a0 << 0x2) + a1)) and falls through when s1(?) == s4(=((a0 << 0x2) + a1)).
  Returns v0 = ? (`jr` at 0xdb7544c).
- `__glim_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb7569c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb7569c-0xdb7574c (176 bytes).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=[0x1010] (`jalr` at 0xdb756d4).
  Calls `__glNamesLockData [0xdb3d700]` via register-constant with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=[0x1010] (`jalr` at 0xdb75704).
  Calls `__glNamesUnlockData [0xdb3e144]` via register-constant with a0=?, a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdb7572c).
  At `bne` at 0xdb756c4 (target 0xdb756e8), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `bne` at 0xdb756e8 (target 0xdb756f8), taken when a2(=a0) != 0 and falls through when a2(=a0) == 0.
  At `bne` at 0xdb75714 (target 0xdb75724), taken when v0(=ret(__glNamesLockData)) != 0 and falls through when v0(=ret(__glNamesLockData)) == 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xdb75744).
- `__glim_SelectTextureCoordSetSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb76230 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb76230-0xdb762cc (156 bytes).
  Stores 4 bytes from a0 to [0x1010] +0x6d8c (`sw` at 0xdb7629c) with value a0.
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb76268).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb762a8).
  At `bnel` at 0xdb76258 (target 0xdb7627c), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `bne` at 0xdb76280 (target 0xdb762a0), taken when a0 < at(=0x83c7) (unsigned) and falls through when a0 >= at(=0x83c7) (unsigned).
  At `beql` at 0xdb76298 (target 0xdb762bc), taken when t8(=[[0x1010]+3604]+33735) >= a0 (unsigned) and falls through when t8(=[[0x1010]+3604]+33735) < a0 (unsigned).
  Returns v0 = ? (`jr` at 0xdb762c4).
  The instructions from 0xdb76278 to 0xdb76278 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb762b8 to 0xdb762b8 are not reached by any path from the entry, and their branches are not listed.
- `__glim_InterleavedTextureCoordSetsSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb82eb8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb82eb8-0xdb82f44 (140 bytes).
  Stores 4 bytes from a0 to [0x1010] +0x1524 (`sw` at 0xdb82f14) with value a0.
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb82ef0).
  Calls `__glSetError [0xdb1ac34]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb82f20).
  At `bne` at 0xdb82ee0 (target 0xdb82f00), taken when t6(=[0x1018]) != at(=0x1) and falls through when t6(=[0x1018]) == at(=0x1).
  At `blez` at 0xdb82f00 (target 0xdb82f18), taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  At `beql` at 0xdb82f10 (target 0xdb82f34), taken when t7(=[[0x1010]+3604]) >= a0 (signed) and falls through when t7(=[[0x1010]+3604]) < a0 (signed).
  Returns v0 = ? (`jr` at 0xdb82f3c).
  The instructions from 0xdb82f30 to 0xdb82f30 are not reached by any path from the entry, and their branches are not listed.
- `__gllc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb905cc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb905cc-0xdb90640 (116 bytes).
  Stores 2 bytes from t6 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb90610) with value 0x7d.
  Stores 4 bytes from t7 to ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb9061c) with value a0.
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb905f4).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdb96db8, a3=? (`jalr` at 0xdb90624).
  At `beq` at 0xdb90604 (target 0xdb90630), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdb90638).
- `__gllc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92eac (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92eac-0xdb92f2c (128 bytes).
  Stores 2 bytes from t6 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb92ef4) with value 0xd4.
  Stores 4 bytes from t7 to ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb92f00) with value a0.
  Stores 4 bytes from t8 to ret(__glDlistAllocOp2) +0x14 (`sw` at 0xdb92f08) with value a1.
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb92ed8).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdb98220, a3=? (`jalr` at 0xdb92f10).
  At `beq` at 0xdb92ee8 (target 0xdb92f1c), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdb92f24).
- `__gllc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb92f2c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb92f2c-0xdb93038 (268 bytes).
  Stores 2 bytes from t6 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb92fbc) with value 0xd5.
  Stores 4 bytes from t7 to ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb92fcc) with value a0.
  Calls `__gllc_InvalidValue [0xdadb250]` via register-constant with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb92f6c).
  Calls `__gllc_InvalidValue [0xdadb250]` via register-constant with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb92f8c).
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=((a0 << 0x2) + (a0 << 0x2))+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb92fa8).
  Calls `memcpy` via got with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0xdb92fdc).
  Calls `memcpy` via got with a0=?, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=? (`jalr` at 0xdb92ffc).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=[0x1010], a1=?, a2=0xdb98268, a3=? (`jalr` at 0xdb93018).
  At `bgez` at 0xdb92f5c (target 0xdb92f7c), taken when s0(=(a0 << 0x2)) >= 0 (signed) and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  At `bgez` at 0xdb92f7c (target 0xdb92f9c), taken when s0(=(a0 << 0x2)) >= 0 (signed) and falls through when s0(=(a0 << 0x2)) < 0 (signed).
  At `beq` at 0xdb92fb0 (target 0xdb93024), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdb93030).
- `__gllc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb95124 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb95124-0xdb951bc (152 bytes).
  Stores 2 bytes from t6 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb95174) with value 0x111.
  Stores 1 byte from t7 to ret(__glDlistAllocOp2) +0x10 (`sb` at 0xdb95180).
  Stores 1 byte from t8 to ret(__glDlistAllocOp2) +0x11 (`sb` at 0xdb95188).
  Stores 1 byte from t9 to ret(__glDlistAllocOp2) +0x12 (`sb` at 0xdb95190).
  Stores 1 byte from t0 to ret(__glDlistAllocOp2) +0x13 (`sb` at 0xdb95198).
  Calls `__glDlistAllocOp2 [0xdadacf0]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb95158).
  Calls `__glDlistAppendOp [0xdadad88]` via register-constant with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdb9938c, a3=? (`jalr` at 0xdb951a0).
  At `beq` at 0xdb95168 (target 0xdb951ac), taken when v0(=ret(__glDlistAllocOp2)) == 0 and falls through when v0(=ret(__glDlistAllocOp2)) != 0.
  Returns v0 = ? (`jr` at 0xdb951b4).
- `__glle_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb96db8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb96db8-0xdb96df8 (64 bytes).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb96dd8).
  Returns v0 = a0+4; f0 = ret(?) (`jr` at 0xdb96df0).
- `__glle_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98220 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98220-0xdb98268 (72 bytes).
  Calls `(unknown callee)` via register with a0=[a0], a1=[a0+4], a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xdb98248).
  Returns v0 = a0+8; f0 = ret(?) (`jr` at 0xdb98260).
- `__glle_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb98268 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb98268-0xdb982cc (100 bytes).
  Calls `(unknown callee)` via register with a0=[a0], a1=a0+4, a2=(a0 + ([a0] << 0x2))+4, a3=a0 at entry (arg0) (`jalr` at 0xdb982a8).
  Returns v0 = ?; f0 = ret(?) (`jr` at 0xdb982c4).
- `__glle_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9938c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9938c-0xdb993dc (80 bytes).
  Calls `(unknown callee)` via register with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1 (`jalr` at 0xdb993bc).
  Returns v0 = a0+4; f0 = ret(?) (`jr` at 0xdb993d4).
- `__glsplc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9e008 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9e008-0xdb9e054 (76 bytes).
  Stores 4 bytes from t6 to ret(__glSPDlalloc) +0x0 (`sw` at 0xdb9e040) with value a0.
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=0x4, a1=0x7d, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9e02c).
  At `beq` at 0xdb9e034 (target 0xdb9e044), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb9e04c).
- `__glsplc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fc84 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fc84-0xdb9fcdc (88 bytes).
  Stores 4 bytes from t6 to ret(__glSPDlalloc) +0x0 (`sw` at 0xdb9fcc0) with value a0.
  Stores 4 bytes from t7 to ret(__glSPDlalloc) +0x4 (`sw` at 0xdb9fcc8) with value a1.
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=0x8, a1=0xd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9fcac).
  At `beq` at 0xdb9fcb4 (target 0xdb9fccc), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb9fcd4).

- `__glsplc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb9fcdc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb9fcdc-0xdb9fd84 (168 bytes).
  Stores 4 bytes from t6 to ret(__glSPDlalloc) +0x0 (`sw` at 0xdb9fd38) with value a0.
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=((a0 << 0x2) + (a0 << 0x2))+4, a1=0xd5, a2=a2 at entry (arg2), a3=(a0 << 0x2) (`jalr` at 0xdb9fd18).
  Calls `memcpy` via got with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xdb9fd48).
  Calls `memcpy` via got with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xdb9fd68).
  At `beq` at 0xdb9fd24 (target 0xdb9fd74), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ? (`jr` at 0xdb9fd7c).
- `__glsplc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba1564 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba1564-0xdba15d4 (112 bytes).
  Stores 1 byte from t6 to ret(__glSPDlalloc) +0x0 (`sb` at 0xdba15a8).
  Stores 1 byte from t7 to ret(__glSPDlalloc) +0x1 (`sb` at 0xdba15b0).
  Stores 1 byte from t8 to ret(__glSPDlalloc) +0x2 (`sb` at 0xdba15b8).
  Stores 1 byte from t9 to ret(__glSPDlalloc) +0x3 (`sb` at 0xdba15c0).
  Calls `__glSPDlalloc [0xda5278c]` via register-constant with a0=0x4, a1=0x111, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba1594).
  At `beq` at 0xdba159c (target 0xdba15c4), taken when v0(=ret(__glSPDlalloc)) == 0 and falls through when v0(=ret(__glSPDlalloc)) != 0.
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdba15cc).
- `__glce_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5628 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5628-0xdba5630 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5628-0xdba5630.
- `__glce_AreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a90 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a90-0xdba5a98 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5a90-0xdba5a98.
- `__glce_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5a98 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5a98-0xdba5aa0 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5a98-0xdba5aa0.
- `__glce_DeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5aa0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5aa0-0xdba5aa8 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5aa0-0xdba5aa8.
- `__glce_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5aa8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5aa8-0xdba5ab0 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5aa8-0xdba5ab0.
- `__glce_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5ab0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5ab0-0xdba5ab8 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5ab0-0xdba5ab8.
- `__glce_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5ab8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5ab8-0xdba5ac0 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5ab8-0xdba5ac0.
- `__glce_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba5dd0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba5dd0-0xdba5dd8 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba5dd0-0xdba5dd8.
- `glDrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6510 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6510-0xdba651c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6514).
- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bc4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bc4-0xdba6bd0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bc8).
- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).
- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bd0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bd0-0xdba6bdc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bd4).
- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bdc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bdc-0xdba6be8 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6be0).
- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).
- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6be8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6be8-0xdba6bf4 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bec).
- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).
- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6bf4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6bf4-0xdba6c00 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6bf8).
- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c00 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c00-0xdba6c0c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c04).

- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8be5ec (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8be5ec-0xd8be72c (320 bytes).
  Stores 4 bytes from a0 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8be670) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from a2 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8be678) with value 0x3.
  Stores 1 byte from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8be67c) with value 0x0.
  Stores 4 bytes from v0 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8be68c) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8be694) with value [[[[0x1014]+276]+216]+108]+12.
  Stores 1 byte from a3 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8be6a0) with value 0x6a.
  Stores 1 byte from at to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8be6a4) with value [[[0x1014]+276]+272].
  Stores 4 bytes from v1 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8be6b0) with value a0.
  Stores 4 bytes from a2 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8be6b4) with value [[[0x1014]+276]+60].
  Stores 4 bytes from s1 to [[0x1014]+276] +0x48 (`sw` at 0xd8be6f4) with value a1.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=[[[0x1014]+276]+216] (`jalr` at 0xd8be634).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8be64c).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=[[[0x1014]+276]+60], a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8be6c8).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8be6e0).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8be708).
  At `beq` at 0xd8be610 (target 0xd8be71c), taken when a3(=[[[0x1014]+276]+216]) == 0 and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8be620 (target 0xd8be6ec), taken when a3(=[[[0x1014]+276]+216]) == 0 and falls through when a3(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8be640 (target 0xd8be658), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd8be668 (target 0xd8be708), taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+12) (unsigned) and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+12) (unsigned).
  At `beq` at 0xd8be6bc (target 0xd8be6d4), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd8be6d8 (target 0xd8be6ec), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8be700).
  Returns v0 = ? (`jr` at 0xd8be724).
- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8be72c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8be72c-0xd8be878 (332 bytes).
  Stores 4 bytes from a0 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8be7b4) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from a4 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8be7bc) with value 0x4.
  Stores 1 byte from zero to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8be7c0) with value 0x0.
  Stores 4 bytes from v1 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8be7d0) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from a3 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8be7d8) with value [[[[0x1014]+276]+216]+108]+16.
  Stores 1 byte from at to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8be7e8) with value 0x69.
  Stores 1 byte from v0 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8be7ec) with value [[[0x1014]+276]+272].
  Stores 4 bytes from v1 to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8be7f8) with value a1.
  Stores 4 bytes from a3 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8be7fc) with value a0.
  Stores 4 bytes from a4 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8be800) with value [[[0x1014]+276]+60].
  Stores 4 bytes from s2 to [[0x1014]+276] +0x44 (`sw` at 0xd8be840) with value a2.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[0x1014]+276]+216] (`jalr` at 0xd8be778).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a4=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8be790).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=a0 at entry (arg0), a4=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8be814).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8be82c).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8be854).
  At `beq` at 0xd8be750 (target 0xd8be868), taken when a4(=[[[0x1014]+276]+216]) == 0 and falls through when a4(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8be764 (target 0xd8be838), taken when a4(=[[[0x1014]+276]+216]) == 0 and falls through when a4(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8be784 (target 0xd8be79c), taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd8be7ac (target 0xd8be854), taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  At `beq` at 0xd8be808 (target 0xd8be820), taken when a4(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a4(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd8be824 (target 0xd8be838), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8be84c).
  Returns v0 = ? (`jr` at 0xd8be870).
- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb8d8 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cb8d8-0xd8cb918 (64 bytes).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0 (`jalr` at 0xd8cb8fc).
  Returns v0 = 0x0; f0 = ret(__glXPostError) (`jr` at 0xd8cb910).
- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc530 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cc530-0xd8cc818 (744 bytes).
  Stores 4 bytes from v1 to ret(__glXAddDrawableInterest) +0x2c (`sw` at 0xd8cc5b0) with value 0x4.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x64 (`sw` at 0xd8cc65c) with value [a0+108].
  Stores 1 byte from v1 to [a0+108] +0x0 (`sb` at 0xd8cc668) with value 0x1b.
  Stores 2 bytes from a3 to [a0+108] +0x2 (`sh` at 0xd8cc670).
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x60 (`sw` at 0xd8cc684) with value [a0+96]+1.
  Stores 4 bytes from at to a0 (arg0 at entry) +0x6c (`sw` at 0xd8cc694).
  Stores 1 byte from a3 to [a0+108] +0x0 (`sb` at 0xd8cc698).
  Stores 1 byte from v1 to [a0+108] +0x1 (`sb` at 0xd8cc69c) with value 0x1b.
  Stores 4 bytes from at to [a0+108] +0x4 (`sw` at 0xd8cc6a4) with value [a1+36].
  Stores 4 bytes from at to [a0+108] +0xc (`sw` at 0xd8cc6b4).
  Stores 4 bytes from s1 to [a0+108] +0x10 (`sw` at 0xd8cc6bc).
  Stores 4 bytes from a4 to [a0+108] +0x8 (`sw` at 0xd8cc6c8) with value [a1+72].
  Stores 4 bytes from a3 to [a0+108] +0x14 (`sw` at 0xd8cc6ec) with value [a2].
  Stores 4 bytes from v1 to [a0+108] +0x18 (`sw` at 0xd8cc700) with value [a2+4].
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0xd8cc724).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0xd8cc72c).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xd8cc734).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0xd8cc74c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cc564).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc580).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=?, a4=ret(?) (`jalr` at 0xd8cc594).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cc634).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+1232], a3=? (`jalr` at 0xd8cc760).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc774).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xd8cc780).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=[a0+108], a2=?, a3=? (`jalr` at 0xd8cc7cc).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0 (`jalr` at 0xd8cc7f0).
  At `beq` at 0xd8cc574 (target 0xd8cc7a8), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `beq` at 0xd8cc5a0 (target 0xd8cc7e0), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `beq` at 0xd8cc5ac (target 0xd8cc624), taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  At `beq` at 0xd8cc5b8 (target 0xd8cc624), taken when a3(=[a2]) == 0 and falls through when a3(=[a2]) != 0.
  At `beq` at 0xd8cc5c8 (target 0xd8cc624), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xd8cc5d8 (target 0xd8cc624), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8cc5e8 (target 0xd8cc624), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xd8cc5f8 (target 0xd8cc624), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0xd8cc608 (target 0xd8cc624), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0xd8cc61c (target 0xd8cc5c0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xd8cc628 (target 0xd8cc63c), taken when a2(=[a0+1232]) == 0 and falls through when a2(=[a0+1232]) != 0.
  At `bne` at 0xd8cc654 (target 0xd8cc7c8), taken when v1(=[a0+112]) < a3(?) (unsigned) and falls through when v1(=[a0+112]) >= a3(?) (unsigned).
  At `beq` at 0xd8cc6c4 (target 0xd8cc750), taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  At `bne` at 0xd8cc6d8 (target 0xd8cc750), taken when s1(?) < 0x0 (signed) and falls through when s1(?) >= 0x0 (signed).
  At `beq` at 0xd8cc6e0 (target 0xd8cc704), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xd8cc710 (target 0xd8cc750), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0xd8cc748 (target 0xd8cc720), taken when v0(?) != a2(=-0x1) and falls through when v0(?) == a2(=-0x1).
  At `beq` at 0xd8cc754 (target 0xd8cc768), taken when a2(=[a0+1232]) == 0 and falls through when a2(=[a0+1232]) != 0.
  At `beq` at 0xd8cc76c (target 0xd8cc77c), taken when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  Returns v0 = ?; f0 = ret(__glXRemoveDrawableInterest) (`jr` at 0xd8cc7a0).
  Returns v0 = 0x0; f0 = ret(__glXSetupForCommand) (`jr` at 0xd8cc7c0).
  Returns v0 = 0x0; f0 = ret(__glXPostError) (`jr` at 0xd8cc810).
- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc818 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8cc818-0xd8cc96c (340 bytes).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x64 (`sw` at 0xd8cc8c0) with value [a0+108].
  Stores 2 bytes from v1 to [a0+108] +0x2 (`sh` at 0xd8cc8c8) with value 0x2.
  Stores 1 byte from a2 to [a0+108] +0x0 (`sb` at 0xd8cc8d0) with value 0x1c.
  Stores 4 bytes from at to a0 (arg0 at entry) +0x60 (`sw` at 0xd8cc8e4) with value [a0+96]+1.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x6c (`sw` at 0xd8cc8ec) with value [a0+108]+8.
  Stores 4 bytes from s1 to [a0+108] +0x4 (`sw` at 0xd8cc8f0) with value a1.
  Stores 1 byte from a2 to [a0+108] +0x1 (`sb` at 0xd8cc8f4) with value 0x1c.
  Stores 1 byte from a3 to [a0+108] +0x0 (`sb` at 0xd8cc8f8).
  Stores 4 bytes from zero to ret(__glXAddDrawableInterest) +0x0 (`sw` at 0xd8cc968) with value 0x0.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8cc840).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xd8cc864).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xd8cc874).
  Calls `__glXFreeDrawablePrivate` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=[ret(__glXAddDrawableInterest)+20] (`jalr` at 0xd8cc888).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc8a0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=0x1c, a3=? (`jalr` at 0xd8cc90c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc920).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xd8cc954).
  At `beq` at 0xd8cc854 (target 0xd8cc940), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `beq` at 0xd8cc880 (target 0xd8cc964), taken when a3(=[ret(__glXAddDrawableInterest)+20]) == 0 and falls through when a3(=[ret(__glXAddDrawableInterest)+20]) != 0.
  At `beq` at 0xd8cc894 (target 0xd8cc8a8), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  At `bne` at 0xd8cc8b8 (target 0xd8cc954), taken when at(=[a0+112]) < v1(=[a0+108]+8) (unsigned) and falls through when at(=[a0+112]) >= v1(=[a0+108]+8) (unsigned).
  At `beq` at 0xd8cc900 (target 0xd8cc914), taken when v0(=[a0+1232]) == 0 and falls through when v0(=[a0+1232]) != 0.
  At `beq` at 0xd8cc918 (target 0xd8cc92c), taken when t9(=[a0+124]) == 0 and falls through when t9(=[a0+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8cc938).
  Returns v0 = ret(__glXSetupForCommand); f0 = ret(__glXSetupForCommand) (`jr` at 0xd8cc94c).
- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ce058 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ce058-0xd8ce0d4 (124 bytes).
  Stores 1 byte from a3 to [[[0x1014]+276]+4] +0x7 (`sb` at 0xd8ce064) with value a3.
  Stores 1 byte from a2 to [[[0x1014]+276]+4] +0x6 (`sb` at 0xd8ce068) with value a2.
  Stores 1 byte from a1 to [[[0x1014]+276]+4] +0x5 (`sb` at 0xd8ce06c) with value a1.
  Stores 1 byte from a0 to [[[0x1014]+276]+4] +0x4 (`sb` at 0xd8ce070) with value a0.
  Stores 2 bytes from v0 to [[[0x1014]+276]+4] +0x0 (`sh` at 0xd8ce078) with value 0x8.
  Stores 2 bytes from at to [[[0x1014]+276]+4] +0x2 (`sh` at 0xd8ce080) with value 0x822.
  Stores 4 bytes from a5 to [[0x1014]+276] +0x4 (`sw` at 0xd8ce0a0) with value [[[0x1014]+276]+4]+8.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4]+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[[0x1014]+276]+4]+8, a6=[[0x1014]+276] (`jalr` at 0xd8ce0c4).
  At `bne` at 0xd8ce0a4 (target 0xd8ce0b8), taken when at(=[[[0x1014]+276]+8]) < a5(=[[[0x1014]+276]+4]+8) (unsigned) and falls through when at(=[[[0x1014]+276]+8]) >= a5(=[[[0x1014]+276]+4]+8) (unsigned).
  Returns v0 = ? (`jr` at 0xd8ce0b0).
- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8ce39c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8ce39c-0xd8ce4f8 (348 bytes).
  Stores 4 bytes from a5 to [[[0x1014]+276]+216] +0x64 (`sw` at 0xd8ce418) with value [[[[0x1014]+276]+216]+108].
  Stores 2 bytes from a6 to [[[[0x1014]+276]+216]+108] +0x2 (`sh` at 0xd8ce420) with value 0x4.
  Stores 1 byte from a7 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8ce428) with value 0x10.
  Stores 4 bytes from a3 to [[[0x1014]+276]+216] +0x60 (`sw` at 0xd8ce438) with value [[[[0x1014]+276]+216]+96]+1.
  Stores 4 bytes from a4 to [[[0x1014]+276]+216] +0x6c (`sw` at 0xd8ce440) with value [[[[0x1014]+276]+216]+108]+16.
  Stores 4 bytes from a0 to [[[[0x1014]+276]+216]+108] +0x4 (`sw` at 0xd8ce44c) with value 0x1007.
  Stores 1 byte from a1 to [[[[0x1014]+276]+216]+108] +0x1 (`sb` at 0xd8ce454) with value 0x11.
  Stores 1 byte from a2 to [[[[0x1014]+276]+216]+108] +0x0 (`sb` at 0xd8ce458) with value [[[0x1014]+276]+272].
  Stores 4 bytes from s1 to [[[[0x1014]+276]+216]+108] +0xc (`sw` at 0xd8ce470) with value a0.
  Stores 4 bytes from v1 to [[[[0x1014]+276]+216]+108] +0x8 (`sw` at 0xd8ce47c) with value [[[0x1014]+276]+60].
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1014]+276], a1=[[[0x1014]+276]+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xd8ce3e0).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8ce3f8).
  Calls `_XReply` via got with a0=[[[0x1014]+276]+216], a1=sp-96, a2=0x0, a3=0x0, a4=[[[[0x1014]+276]+216]+108]+16, a5=[[[[0x1014]+276]+216]+108], a6=0x4, a7=0x10 (`jalr` at 0xd8ce478).
  Calls `_XRead` via got with a0=[[[0x1014]+276]+216], a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0xd8ce490).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=[[[[0x1014]+276]+216]+1232] (`jalr` at 0xd8ce4ac).
  Calls `(unknown callee)` via register with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=? (`jalr` at 0xd8ce4c4).
  Calls `_XFlush` via got with a0=[[[0x1014]+276]+216], a1=?, a2=?, a3=?, a5=[[[[0x1014]+276]+216]+108] (`jalr` at 0xd8ce4e8).
  At `beq` at 0xd8ce3cc (target 0xd8ce4d0), taken when s0(=[[[0x1014]+276]+216]) == 0 and falls through when s0(=[[[0x1014]+276]+216]) != 0.
  At `beq` at 0xd8ce3ec (target 0xd8ce400), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `bne` at 0xd8ce410 (target 0xd8ce4e8), taken when at(=[[[[0x1014]+276]+216]+112]) < v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned) and falls through when at(=[[[[0x1014]+276]+216]+112]) >= v0(=[[[[0x1014]+276]+216]+108]+16) (unsigned).
  At `beq` at 0xd8ce4a0 (target 0xd8ce4b8), taken when a3(=[[[[0x1014]+276]+216]+1232]) == 0 and falls through when a3(=[[[[0x1014]+276]+216]+1232]) != 0.
  At `beq` at 0xd8ce4bc (target 0xd8ce4d0), taken when t9(=[[[[0x1014]+276]+216]+124]) == 0 and falls through when t9(=[[[[0x1014]+276]+216]+124]) != 0.
  Returns v0 = ? (`jr` at 0xd8ce4e0).

- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8ece0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8ece0-0xda8ed4c (108 bytes).
  Stores 4 bytes from $f1 to a1 (arg1 at entry) +0x14c (`swc1` at 0xda8ed1c) with value 0x0.
  Stores 4 bytes from $f0 to a1 (arg1 at entry) +0x13c (`swc1` at 0xda8ed24) with value 0x41800000.
  Stores 4 bytes from $f30 to a1 (arg1 at entry) +0x13c (`swc1` at 0xda8ed2c) with value [a1+316].
  Stores 4 bytes from $f3 to a1 (arg1 at entry) +0x14c (`swc1` at 0xda8ed3c).
  Calls `__glOdySpanShiftOffsetIndex [0xda8e0e0]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xda8ed20).
  Returns v0 = ret(__glOdySpanShiftOffsetIndex); f0 = ret(__glOdySpanShiftOffsetIndex) (`jr` at 0xda8ed44).
- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab29d0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab29d0-0xdab2a90 (192 bytes).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=a0 at entry (arg0), a1=[a0+91308], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdab2a0c).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=a0 at entry (arg0), a1=[a0+91312], a2=?, a3=? (`jalr` at 0xdab2a2c).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=a0 at entry (arg0), a1=[a0+91316], a2=?, a3=? (`jalr` at 0xdab2a4c).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=a0 at entry (arg0), a1=[a0+91320], a2=?, a3=? (`jalr` at 0xdab2a74).
  At `beq` at 0xdab29fc (target 0xdab2a18), taken when at(=[[a0+91308]+8]) == 0 and falls through when at(=[[a0+91308]+8]) != 0.
  At `beq` at 0xdab2a20 (target 0xdab2a38), taken when at(=[[a0+91312]+8]) == 0 and falls through when at(=[[a0+91312]+8]) != 0.
  At `beq` at 0xdab2a40 (target 0xdab2a58), taken when v0(=[[a0+91316]+8]) == 0 and falls through when v0(=[[a0+91316]+8]) != 0.
  At `beq` at 0xdab2a60 (target 0xdab2a80), taken when v1(=[[a0+91320]+8]) == 0 and falls through when v1(=[[a0+91320]+8]) != 0.
  Returns v0 = ? (`jr` at 0xdab2a88).
- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab2b70 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab2b70-0xdab2c50 (224 bytes).
  At `bne` at 0xdab2b84 (target 0xdab2bc0), taken when a1 < a3(=0x8064) (unsigned) and falls through when a1 >= a3(=0x8064) (unsigned).
  At `beq` at 0xdab2b8c (target 0xdab2c1c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xdab2b98 (target 0xdab2c00), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xdab2ba0 (target 0xdab2c3c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0xdab2bb0 (target 0xdab2bf8), taken when a1 != at(=0x8095) and falls through when a1 == at(=0x8095).
  At `bne` at 0xdab2bc0 (target 0xdab2be4), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xdab2bc8 (target 0xdab2c2c), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0xdab2bd4 (target 0xdab2bf8), taken when a1 != at(=0x8063) and falls through when a1 == at(=0x8063).
  At `beq` at 0xdab2bf0 (target 0xdab2c48), taken when a1 == v1(=0xde0) and falls through when a1 != v1(=0xde0).
  At `bne` at 0xdab2c0c (target 0xdab2bf8), taken when a1 != a2(=0x806f) and falls through when a1 == a2(=0x806f).
  Returns v0 = [a0+91320] (`jr` at 0xdab2bb8).
  Returns v0 = a0+83748 (`jr` at 0xdab2bdc).
  Returns v0 = 0x0 (`jr` at 0xdab2bf8).
  Returns v0 = [a0+91316] (`jr` at 0xdab2c14).
  Returns v0 = a0+86268 (`jr` at 0xdab2c24).
  Returns v0 = [a0+91312] (`jr` at 0xdab2c34).
  Returns v0 = a0+88788 (`jr` at 0xdab2c40).
  Returns v0 = [a0+91308] (`jr` at 0xdab2c48).
- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabbd10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabbd10-0xdabc010 (768 bytes).
  Stores 4 bytes from s2 to ? (base unknown) (`sw` at 0xdabbe5c).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0xdabbe70).
  Stores 4 bytes from v1 to [0x1010] +0x168d4 (`sw` at 0xdabbe7c) with value ([[0x1010]+92372] | 0x200).
  Stores 4 bytes from at to abs 0x1018 (`sw` at 0xdabbe84) with value 0x2.
  Stores 4 bytes from zero to [0x1010] +0x164c0 (`sw` at 0xdabbecc) with value 0x0.
  Stores 4 bytes from v1 to ret(?) +0x0 (`sw` at 0xdabbf68) with value [ret(?)]+1.
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=0xde1 (`jalr` at 0xdabbd74).
  Calls `__glNamesLockData [0xdb38050]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=one of 0x2, 0xde0, a5=0xde1 (`jalr` at 0xdabbe04).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=? (`jalr` at 0xdabbe50).
  Calls `(unnamed) [0xdab5590]` via direct with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?, a4=0x116200 (`bgezall` at 0xdabbec4).
  Calls `(unknown callee)` via register with a0=[0x1010], a1=0x9d8, a2=?, a3=? (`jalr` at 0xdabbefc).
  Calls `(unnamed) [0xdab25e0]` via register-constant with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?, a4=ret(?) (`jalr` at 0xdabbf24).
  Calls `__glNamesNewData [0xdb37aa0]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=? (`jalr` at 0xdabbf44).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xdabbf78).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x505, a1=?, a2=?, a3=?, a4=ret(?) (`jalr` at 0xdabbfa4).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xde0, a5=0xde1 (`jalr` at 0xdabbfd0).
  At `beq` at 0xdabbd48 (target 0xdabbfc8), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `beq` at 0xdabbd50 (target 0xdabbddc), taken when s0(=a0) == a4(=0xde0) and falls through when s0(=a0) != a4(=0xde0).
  At `beq` at 0xdabbd58 (target 0xdabbed8), taken when s0(=a0) == a5(=0xde1) and falls through when s0(=a0) != a5(=0xde1).
  At `beq` at 0xdabbd60 (target 0xdabbee4), taken when s0(=a0) == at(=0x8095) and falls through when s0(=a0) != at(=0x8095).
  At `beq` at 0xdabbd68 (target 0xdabbd98), taken when s0(=a0) == v1(=0x806f) and falls through when s0(=a0) != v1(=0x806f).
  At `bne` at 0xdabbd9c (target 0xdabbde8), taken when s3(=a1) != 0 and falls through when s3(=a1) == 0.
  At `beq` at 0xdabbddc (target 0xdabbda4), taken when s3(=a1) == 0 and falls through when s3(=a1) != 0.
  At `beq` at 0xdabbe14 (target 0xdabbef0), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xdabbe20 (target 0xdabbf6c), taken when a4(?) != s0(=a0) and falls through when a4(?) == s0(=a0).
  At `beq` at 0xdabbe44 (target 0xdabbe5c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xdabbe8c (target 0xdabbe9c), taken when a1(=[[0x1010]+91328]) == 0 and falls through when a1(=[[0x1010]+91328]) != 0.
  At `bne` at 0xdabbe94 (target 0xdabbeb8), taken when a1(=[[0x1010]+91328]) != s2(?) and falls through when a1(=[[0x1010]+91328]) == s2(?).
  At `beq` at 0xdabbf0c (target 0xdabbf9c), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xdabbf54 (target 0xdabbff4), taken when (v0(=ret(__glNamesNewData)) & 0xff) == 0 and falls through when (v0(=ret(__glNamesNewData)) & 0xff) != 0.
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabbd90).
  Returns v0 = ? (`jr` at 0xdabbeb0).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabbf94).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabbfc0).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabbfec).
  Returns v0 = ret(__glNamesNewData); f0 = ret(__glNamesNewData) (`jr` at 0xdabc008).
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc010 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc010-0xdabc29c (652 bytes).
  Stores 4 bytes from a0 to table(0x164ac) +0x0 (`sw` at 0xdabc0f4) with value table(0x11fc4).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0xdabc0f8) with value table(0x11fc4).
  Stores 4 bytes from v0 to [0x1010] +0x168d0 (`sw` at 0xdabc10c) with value ([[0x1010]+92368] | 0x116200).
  Stores 4 bytes from at to abs 0x1018 (`sw` at 0xdabc114) with value 0x2.
  Stores 4 bytes from zero to [0x1010] +0x164c0 (`sw` at 0xdabc1ac) with value 0x0.
  Stores 4 bytes from s2 to [0x1010] +0x168d4 (`sw` at 0xdabc228) with value ([[0x1010]+92372] | 0x200).
  Stores 4 bytes from s1 to abs 0x1018 (`sw` at 0xdabc23c) with value 0x2.
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=? (`jalr` at 0xdabc0b0).
  Calls `__glNamesDeleteRange [0xdb391d0]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=? (`jalr` at 0xdabc188).
  Calls `(unnamed) [0xdab5590]` via direct with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=? (`bgezall` at 0xdabc1a4).
  Calls `__glNamesDeleteRange [0xdb391d0]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=? (`jalr` at 0xdabc1d0).
  Calls `__glNamesDeleteRange [0xdb391d0]` via register-constant with a0=[0x1010], a1=?, a2=?, a3=? (`jalr` at 0xdabc20c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabc258).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabc278).
  At `beq` at 0xdabc040 (target 0xdabc270), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `bltz` at 0xdabc048 (target 0xdabc254), taken when s5(=a0) < 0 (signed) and falls through when s5(=a0) >= 0 (signed).
  At `blez` at 0xdabc070 (target 0xdabc24c), taken when s5(=a0) <= 0 (signed) and falls through when s5(=a0) > 0 (signed).
  At `bne` at 0xdabc11c (target 0xdabc178), taken when a0(?) != s1(?) and falls through when a0(?) == s1(?).
  At `beq` at 0xdabc128 (target 0xdabc1e8), taken when s0(?) == s8(=((a0 << 0x2) + a1)) and falls through when s0(?) != s8(=((a0 << 0x2) + a1)).
  At `beq` at 0xdabc138 (target 0xdabc14c), taken when a1(=[[0x1010]+91328]) == 0 and falls through when a1(=[[0x1010]+91328]) != 0.
  At `beq` at 0xdabc144 (target 0xdabc1a0), taken when v0(=[[[0x1010]+91328]+8]) == a0(?) and falls through when v0(=[[[0x1010]+91328]+8]) != a0(?).
  At `beq` at 0xdabc14c (target 0xdabc1bc), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xdabc15c (target 0xdabc0b0), taken when v1(?) == a0(?) and falls through when v1(?) != a0(?).
  At `bne` at 0xdabc168 (target 0xdabc154), taken when s7(=0x4) != s6(?) and falls through when s7(=0x4) == s6(?).
  At `bne` at 0xdabc1b4 (target 0xdabc154), taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns v0 = ret(__glNamesDeleteRange); f0 = ret(__glNamesDeleteRange) (`jr` at 0xdabc244).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabc294).
  The instructions from 0xdabc0a8 to 0xdabc0ac are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc2a0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc2a0-0xdabc358 (184 bytes).
  Calls `__glNamesGenNames [0xdb39730]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010] (`jalr` at 0xdabc2f8).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010] (`jalr` at 0xdabc324).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010] (`jalr` at 0xdabc340).
  At `beq` at 0xdabc2c4 (target 0xdabc31c), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `bltz` at 0xdabc2cc (target 0xdabc33c), taken when a2(=a0) < 0 (signed) and falls through when a2(=a0) >= 0 (signed).
  At `beq` at 0xdabc2d4 (target 0xdabc310), taken when a3(=a1) == 0 and falls through when a3(=a1) != 0.
  At `beq` at 0xdabc2dc (target 0xdabc310), taken when a2(=a0) == 0 and falls through when a2(=a0) != 0.
  Returns v0 = ret(__glNamesGenNames); f0 = ret(__glNamesGenNames) (`jr` at 0xdabc308).
  Returns v0 = 0x1 (`jr` at 0xdabc314).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabc334).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabc350).
- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc3d0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc3d0-0xdabc5e0 (528 bytes).
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0xdabc4a8) with value one of 0x0, 0x1.
  Calls `__glNamesLockData [0xdb38050]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=? (`jalr` at 0xdabc460).
  Calls `__glOdysseyIsTextureResident [0xdabc360]` via direct with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`bgezall` at 0xdabc478).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=one of 0x0, 0x1, a3=?, a4=0x1 (`jalr` at 0xdabc4a4).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xdabc4f8).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xdabc53c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabc584).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabc5b4).
  At `beq` at 0xdabc408 (target 0xdabc57c), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `bltz` at 0xdabc410 (target 0xdabc5b0), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `blez` at 0xdabc43c (target 0xdabc4bc), taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  At `beq` at 0xdabc450 (target 0xdabc4f4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xdabc468 (target 0xdabc538), taken when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  At `bnel` at 0xdabc4b4 (target 0xdabc450), taken when at(=((a0 << 0x2) + a1)) != s1(?) and falls through when at(=((a0 << 0x2) + a1)) == s1(?).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xdabc4ec).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xdabc530).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xdabc574).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xdabc5a8).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xdabc5d8).
- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc610 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc610-0xdabc794 (388 bytes).
  Stores 4 bytes from $f0 to ret(__glNamesLockData) +0x3c (`swc1` at 0xdabc6ac) with value ret(0xdabc5e0).
  Stores 4 bytes from v0 to [0x1010] +0x168d4 (`sw` at 0xdabc72c) with value ([[0x1010]+92372] | 0x200).
  Stores 4 bytes from at to abs 0x1018 (`sw` at 0xdabc740) with value 0x2.
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdabc6a8).
  Calls `__glNamesLockData [0xdb38050]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=? (`jalr` at 0xdabc6cc).
  Calls `(unnamed) [0xdabc5e0]` via direct with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1010]+3536] (`bgezall` at 0xdabc6ec).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=0x120000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabc74c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=0x120000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdabc770).
  At `beq` at 0xdabc644 (target 0xdabc768), taken when at(=[0x1018]) == v1(=0x1) and falls through when at(=[0x1018]) != v1(=0x1).
  At `bltz` at 0xdabc64c (target 0xdabc744), taken when s4(=a0) < 0 (signed) and falls through when s4(=a0) >= 0 (signed).
  At `blez` at 0xdabc658 (target 0xdabc760), taken when s4(=a0) <= 0 (signed) and falls through when s4(=a0) > 0 (signed).
  At `beq` at 0xdabc6b0 (target 0xdabc6fc), taken when s1(?) == s3(=((a0 << 0x2) + a1)) and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  At `beq` at 0xdabc6bc (target 0xdabc6b0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xdabc6d4 (target 0xdabc6b0), taken when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  Returns v0 = ([[0x1010]+92372] | 0x200) (`jr` at 0xdabc73c).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdabc78c).
  The instructions from 0xdabc69c to 0xdabc69c are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc7a0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc7a0-0xdabc870 (208 bytes).
  Calls `__glNamesLockData [0xdb38050]` via register-constant with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xdabc7e8).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdabc814).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xdabc850).
  At `beq` at 0xdabc7c4 (target 0xdabc848), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `beq` at 0xdabc7cc (target 0xdabc834), taken when a2(=a0) == 0 and falls through when a2(=a0) != 0.
  At `bne` at 0xdabc7f0 (target 0xdabc80c), taken when v0(=ret(__glNamesLockData)) != 0 and falls through when v0(=ret(__glNamesLockData)) == 0.
  Returns v0 = 0x0; f0 = ret(__glNamesLockData) (`jr` at 0xdabc804).
  Returns v0 = 0x1; f0 = ret(__glNamesUnlockData) (`jr` at 0xdabc82c).
  Returns v0 = 0x0 (`jr` at 0xdabc840).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xdabc868).
- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb01540 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb01540-0xdb0172c (492 bytes).
  Stores 4 bytes from v0 to [0x1010] +0x760 (`sw` at 0xdb0158c) with value one of 0x404, 0x408.
  Stores 4 bytes from a0 to [0x1010] +0x764 (`sw` at 0xdb01590) with value a0.
  Stores 4 bytes from v0 to abs 0x1018 (`sw` at 0xdb01598) with value 0x2.
  Stores 4 bytes from at to [0x1010] +0x2d44 (`sw` at 0xdb015b0) with value ([[0x1010]+11588] | 0x1).
  Stores 4 bytes from at to [0x1010] +0x760 (`sw` at 0xdb015ec) with value 0x405.
  Stores 4 bytes from a1 to [0x1010] +0x760 (`sw` at 0xdb01608) with value 0x404.
  Stores 4 bytes from a0 to [0x1010] +0x760 (`sw` at 0xdb01638) with value a0.
  Stores 4 bytes from zero to [0x1010] +0x760 (`sw` at 0xdb01648) with value 0x0.
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x500, a1=?, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb01660).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=?, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb016b4).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=?, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb01714).
  At `beq` at 0xdb01560 (target 0xdb0170c), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `bne` at 0xdb01568 (target 0xdb015b4), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0xdb01578 (target 0xdb0160c), taken when a0 >= 0x407 (unsigned) and falls through when a0 < 0x407 (unsigned).
  At `bne` at 0xdb015b4 (target 0xdb015f0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xdb015bc (target 0xdb015dc), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0xdb015c4 (target 0xdb016cc), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xdb015cc (target 0xdb01600), taken when v0(?) != 0 -> outside and falls through when v0(?) == 0.
  At `bne` at 0xdb015d4 (target 0xdb0165c), taken when a0 != v1(=0x405) and falls through when a0 == v1(=0x405).
  At `beq` at 0xdb015e0 (target 0xdb016ac), taken when a1(=[[0x1010]+3214]:1) == 0 and falls through when a1(=[[0x1010]+3214]:1) != 0.
  At `bne` at 0xdb015f4 (target 0xdb0163c), taken when a0 < 0x400 (unsigned) and falls through when a0 >= 0x400 (unsigned).
  At `beq` at 0xdb015fc (target 0xdb0164c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xdb01610 (target 0xdb01678), taken when a0 < 0x40a (unsigned) and falls through when a0 >= 0x40a (unsigned).
  At `beq` at 0xdb01618 (target 0xdb016e0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xdb0162c (target 0xdb016b0), taken when v1(=a0-1033) >= a1(=[[0x1010]+3288]) (signed) and falls through when v1(=a0-1033) < a1(=[[0x1010]+3288]) (signed).
  At `bne` at 0xdb0163c (target 0xdb0165c), taken when a0 != 0 and falls through when a0 == 0.
  At `beq` at 0xdb01650 (target 0xdb016ac), taken when a0 == at(=0x401) and falls through when a0 != at(=0x401).
  At `bne` at 0xdb0167c (target 0xdb016a0), taken when a0 < 0x408 (unsigned) and falls through when a0 >= 0x408 (unsigned).
  At `bne` at 0xdb01684 (target 0xdb01580), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xdb01690 (target 0xdb0165c), taken when a0 != a1(=0x409) and falls through when a0 == a1(=0x409).
  At `bne` at 0xdb016a4 (target 0xdb01658), taken when a0 != at(=0x407) and falls through when a0 == at(=0x407).
  At `bne` at 0xdb016d0 (target 0xdb0165c), taken when a0 != v0(=0x403) and falls through when a0 == v0(=0x403).
  At `bne` at 0xdb016e0 (target 0xdb016f8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xdb016e8 (target 0xdb0165c), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0xdb016fc (target 0xdb0165c), taken when a0 != at(=0x40b) and falls through when a0 == at(=0x40b).
  Returns v0 = 0x2 (`jr` at 0xdb015ac).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb01670).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb016c4).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb01724).
- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb595d0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb595d0-0xdb59618 (72 bytes).
  At `beq` at 0xdb595d8 (target 0xdb59604), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb595e0 (target 0xdb5960c), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xdb595e8 (target 0xdb595f8), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  Returns v0 = 0x0 (`jr` at 0xdb595f0).
  Returns v0 = [a0+2476]+448 (`jr` at 0xdb595fc).
  Returns v0 = [a0+2476] (`jr` at 0xdb59604).
  Returns v0 = [a0+2476]+224 (`jr` at 0xdb59610).
- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59620 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59620-0xdb5966c (76 bytes).
  At `beq` at 0xdb59628 (target 0xdb59654), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb59630 (target 0xdb59660), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xdb59638 (target 0xdb59648), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  Returns v0 = 0x0 (`jr` at 0xdb59640).
  Returns v0 = [a0+2476]+664 (`jr` at 0xdb5964c).
  Returns v0 = [a0+2476]+216 (`jr` at 0xdb59658).
  Returns v0 = [a0+2476]+440 (`jr` at 0xdb59664).
- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59670 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59670-0xdb596fc (140 bytes).
  At `beq` at 0xdb5967c (target 0xdb596c0), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb59684 (target 0xdb596cc), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xdb5968c (target 0xdb596d8), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  At `beq` at 0xdb59694 (target 0xdb596e4), taken when a1 == a2(=0x8063) and falls through when a1 != a2(=0x8063).
  At `beq` at 0xdb5969c (target 0xdb596f0), taken when a1 == at(=0x8064) and falls through when a1 != at(=0x8064).
  At `beq` at 0xdb596a4 (target 0xdb596b4), taken when a1 == v0(=0x8070) and falls through when a1 != v0(=0x8070).
  Returns v0 = 0x0 (`jr` at 0xdb596ac).
  Returns v0 = [[a0+28028]+20] (`jr` at 0xdb596b8).
  Returns v0 = [[a0+28028]] (`jr` at 0xdb596c4).
  Returns v0 = [[a0+28028]+4] (`jr` at 0xdb596d0).
  Returns v0 = [[a0+28028]+8] (`jr` at 0xdb596dc).
  Returns v0 = [[a0+28028]+12] (`jr` at 0xdb596e8).
  Returns v0 = [[a0+28028]+16] (`jr` at 0xdb596f4).
- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59700 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59700-0xdb5974c (76 bytes).
  At `beq` at 0xdb59708 (target 0xdb59734), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xdb59710 (target 0xdb59740), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xdb59718 (target 0xdb59728), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  Returns v0 = 0x0 (`jr` at 0xdb59720).
  Returns v0 = [[a0+28032]+8] (`jr` at 0xdb5972c).
  Returns v0 = [[a0+28032]] (`jr` at 0xdb59738).
  Returns v0 = [[a0+28032]+4] (`jr` at 0xdb59744).
- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59800 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59800-0xdb5983c (60 bytes).
  Stores 4 bytes from a2 to a1 (arg1 at entry) +0xec (`sw` at 0xdb59800) with value a2.
  Stores 1 byte from zero to a1 (arg1 at entry) +0xc (`sb` at 0xdb59808) with value 0x0.
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x8 (`sw` at 0xdb59810) with value a3.
  Stores 4 bytes from a0 to a1 (arg1 at entry) +0x10c (`sw` at 0xdb59824) with value 0xdb597c0.
  Stores 4 bytes from v1 to a1 (arg1 at entry) +0x108 (`sw` at 0xdb59828) with value 0xdb59780.
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x4 (`sw` at 0xdb59830) with value 0xdb6c420.
  Stores 4 bytes from $f0 to a1 (arg1 at entry) +0xf0 (`swc1` at 0xdb59838) with value 0x3f800000.
  Returns v0 = 0xdb6c420; f0 = 0x3f800000 (`jr` at 0xdb59834).
- `__glim_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb5bdb0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb5bdb0-0xdb5be24 (116 bytes).
  Stores 1 byte from a3 to [0x1010] +0x9d7 (`sb` at 0xdb5bdd8) with value a3.
  Stores 1 byte from a2 to [0x1010] +0x9d6 (`sb` at 0xdb5bddc) with value a2.
  Stores 1 byte from a1 to [0x1010] +0x9d5 (`sb` at 0xdb5bde0) with value a1.
  Stores 1 byte from a0 to [0x1010] +0x9d4 (`sb` at 0xdb5bde4) with value a0.
  Stores 4 bytes from a4 to abs 0x1018 (`sw` at 0xdb5bde8) with value 0x2.
  Stores 4 bytes from a0 to [0x1010] +0x2d44 (`sw` at 0xdb5be00) with value ([[0x1010]+11588] | 0x1).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=[0x1010] (`jalr` at 0xdb5be0c).
  At `beq` at 0xdb5bdd0 (target 0xdb5be04), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  Returns v0 = 0x1 (`jr` at 0xdb5bdfc).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb5be1c).
- `__glTextureSBModulateA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb63850 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb63850-0xdb638c0 (112 bytes).
  Stores 4 bytes from $f0 to a2 (arg2 at entry) +0x10 (`swc1` at 0xdb6389c) with value ret(__GL_TEXENV_CLAMP).
  Stores 4 bytes from $f0 to a1 (arg1 at entry) +0xc (`swc1` at 0xdb638b0).
  Calls `__GL_TEXENV_CLAMP [0xdb63370]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f13=0x0, f14=[a0+3536], f15=[[a0+28040]+184], f16=[a2+16] (`bgezall` at 0xdb63890).
  Returns v0 = ret(__GL_TEXENV_CLAMP) (`jr` at 0xdb638b8).
- `__glTextureSBReplaceA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb648b0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb648b0-0xdb64928 (120 bytes).
  Stores 4 bytes from $f0 to a2 (arg2 at entry) +0x10 (`swc1` at 0xdb64904) with value ret(__GL_TEXENV_CLAMP).
  Stores 4 bytes from $f0 to a1 (arg1 at entry) +0xc (`swc1` at 0xdb64924).
  Calls `__GL_TEXENV_CLAMP [0xdb63370]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f13=0x0, f14=[a0+3536], f15=[[a0+28040]+184], f16=[a2+16] (`bgezall` at 0xdb648f4).
  Returns v0 = ret(__GL_TEXENV_CLAMP) (`jr` at 0xdb64920).
- `__glim_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6c550 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6c550-0xdb6c638 (232 bytes).
  Calls `__glNamesGenNames [0xdb39730]` via register-constant with a0=?, a1=?, a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jalr` at 0xdb6c5c0).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010] (`jalr` at 0xdb6c5fc).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010] (`jalr` at 0xdb6c618).
  At `beq` at 0xdb6c57c (target 0xdb6c610), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `bltz` at 0xdb6c584 (target 0xdb6c5f4), taken when s0(=a0) < 0 (signed) and falls through when s0(=a0) >= 0 (signed).
  At `beq` at 0xdb6c58c (target 0xdb6c5e0), taken when s0(=a0) == 0 and falls through when s0(=a0) != 0.
  At `bne` at 0xdb6c594 (target 0xdb6c5b0), taken when s1(=a1) != 0 and falls through when s1(=a1) == 0.
  Returns v0 = ? (`jr` at 0xdb6c5a8).
  Returns v0 = ret(__glNamesGenNames); f0 = ret(__glNamesGenNames) (`jr` at 0xdb6c5d8).
  Returns v0 = ? (`jr` at 0xdb6c5ec).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb6c630).
- `__glim_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6cb10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6cb10-0xdb6cc28 (280 bytes).
  Stores 4 bytes from zero to abs 0x1018 (`sw` at 0xdb6cb84) with value 0x0.
  Stores 4 bytes from a3 to abs 0x1018 (`sw` at 0xdb6cbec) with value 0x2.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0xdb6cc0c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=[0x1018] (`jalr` at 0xdb6cb54).
  Calls `(unknown callee)` via register with a0=[0x1010], a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=[0x1018] (`jalr` at 0xdb6cb7c).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x500, a1=0x2, a2=a1 at entry (arg1), a3=? (`jalr` at 0xdb6cbb8).
  Calls `__glBindTexture [0xdb6c8b0]` via direct with a0=?, a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=? (`bgezall` at 0xdb6cbdc).
  At `beq` at 0xdb6cb38 (target 0xdb6cb90), taken when a4(=[0x1018]) == 0 and falls through when a4(=[0x1018]) != 0.
  At `beq` at 0xdb6cb48 (target 0xdb6cb70), taken when a4(=[0x1018]) == v0(=0x2) and falls through when a4(=[0x1018]) != v0(=0x2).
  At `beq` at 0xdb6cb9c (target 0xdb6cc10), taken when s0(=a0) == at(=0xde0) and falls through when s0(=a0) != at(=0xde0).
  At `beq` at 0xdb6cba4 (target 0xdb6cc1c), taken when s0(=a0) == v0(=0xde1) and falls through when s0(=a0) != v0(=0xde1).
  At `beq` at 0xdb6cbac (target 0xdb6cbd4), taken when s0(=a0) == v1(=0x806f) and falls through when s0(=a0) != v1(=0x806f).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb6cb68).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb6cbcc).
  Returns v0 = ret(__glBindTexture); f0 = ret(__glBindTexture) (`jr` at 0xdb6cc08).
- `__glim_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6cc30 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6cc30-0xdb6cde8 (440 bytes).
  Stores 4 bytes from $f0 to ret(__glNamesLockData) +0xf0 (`swc1` at 0xdb6cd0c) with value ret(0xdb59750).
  Stores 4 bytes from $f0 to [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xe0 (`swc1` at 0xdb6cd34) with value ret(0xdb59750).
  Stores 4 bytes from $f0 to ? (base unknown) (`swc1` at 0xdb6cd54) with value ret(0xdb59750).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdb6ccc0).
  Calls `__glNamesLockData [0xdb38050]` via register-constant with a0=[0x1010], a1=[[0x1010]+28064], a2=?, a3=? (`jalr` at 0xdb6cce4).
  Calls `(unnamed) [0xdb59750]` via register-constant with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1010]+3536] (`jalr` at 0xdb6cd04).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=0x70000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb6cda8).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=0x70000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb6cdc4).
  At `beq` at 0xdb6cc64 (target 0xdb6cdbc), taken when at(=[0x1018]) == v1(=0x1) and falls through when at(=[0x1018]) != v1(=0x1).
  At `bltz` at 0xdb6cc6c (target 0xdb6cda0), taken when s4(=a0) < 0 (signed) and falls through when s4(=a0) >= 0 (signed).
  At `beq` at 0xdb6cc74 (target 0xdb6cd88), taken when s4(=a0) == 0 and falls through when s4(=a0) != 0.
  At `blez` at 0xdb6cc8c (target 0xdb6cd70), taken when s4(=a0) <= 0 (signed) and falls through when s4(=a0) > 0 (signed).
  At `beq` at 0xdb6ccc8 (target 0xdb6cd58), taken when s1(?) == s3(=((a0 << 0x2) + a1)) and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  At `beq` at 0xdb6ccd4 (target 0xdb6ccc8), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xdb6ccec (target 0xdb6ccc8), taken when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  At `bne` at 0xdb6cd2c (target 0xdb6ccbc), taken when at(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) != v1(=[ret(__glNamesLockData)+236]) and falls through when at(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) == v1(=[ret(__glNamesLockData)+236]).
  Returns v0 = ? (`jr` at 0xdb6cd80).
  Returns v0 = a1 (`jr` at 0xdb6cd98).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb6cde0).
- `__glim_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6d0f0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6d0f0-0xdb6d1b4 (196 bytes).
  Calls `__glNamesLockData [0xdb38050]` via register-constant with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xdb6d12c).
  Calls `__glNamesUnlockData [0xdb38c70]` via register-constant with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xdb6d158).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xdb6d194).
  At `beq` at 0xdb6d114 (target 0xdb6d18c), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `beq` at 0xdb6d11c (target 0xdb6d178), taken when a2(=a0) == 0 and falls through when a2(=a0) != 0.
  At `bne` at 0xdb6d134 (target 0xdb6d150), taken when v0(=ret(__glNamesLockData)) != 0 and falls through when v0(=ret(__glNamesLockData)) == 0.
  Returns v0 = 0x0; f0 = ret(__glNamesLockData) (`jr` at 0xdb6d148).
  Returns v0 = 0x1; f0 = ret(__glNamesUnlockData) (`jr` at 0xdb6d170).
  Returns v0 = 0x0 (`jr` at 0xdb6d184).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xdb6d1ac).
- `__glim_SelectTextureCoordSetSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6dce0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6dce0-0xdb6dd78 (152 bytes).
  Stores 4 bytes from a0 to [0x1010] +0x6d8c (`sw` at 0xdb6dd28) with value a0.
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x500, a1=?, a2=[0x1010], a3=0x83c7 (`jalr` at 0xdb6dd40).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=?, a2=[0x1010], a3=0x83c7 (`jalr` at 0xdb6dd60).
  At `beq` at 0xdb6dd04 (target 0xdb6dd58), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `bne` at 0xdb6dd0c (target 0xdb6dd3c), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0xdb6dd20 (target 0xdb6dd3c), taken when at(=[[0x1010]+3604]+33735) < a0 (unsigned) and falls through when at(=[[0x1010]+3604]+33735) >= a0 (unsigned).
  Returns v0 = 0x1 (`jr` at 0xdb6dd30).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb6dd50).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb6dd70).
  The instructions from 0xdb6dd38 to 0xdb6dd38 are not reached by any path from the entry, and their branches are not listed.

- `__glim_InterleavedTextureCoordSetsSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7a6b0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7a6b0-0xdb7a73c (140 bytes).
  Stores 4 bytes from a0 to [0x1010] +0x1524 (`sw` at 0xdb7a6ec) with value a0.
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x501, a1=?, a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb7a704).
  Calls `__glSetError [0xdb11f10]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3) (`jalr` at 0xdb7a724).
  At `beq` at 0xdb7a6cc (target 0xdb7a71c), taken when at(=[0x1018]) == v0(=0x1) and falls through when at(=[0x1018]) != v0(=0x1).
  At `blez` at 0xdb7a6d4 (target 0xdb7a700), taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  At `bne` at 0xdb7a6e4 (target 0xdb7a700), taken when a1(=[[0x1010]+3604]) < a0 (signed) and falls through when a1(=[[0x1010]+3604]) >= a0 (signed).
  Returns v0 = 0x1 (`jr` at 0xdb7a6f4).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb7a714).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xdb7a734).
  The instructions from 0xdb7a6fc to 0xdb7a6fc are not reached by any path from the entry, and their branches are not listed.
- `__gllc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb87fa0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb87fa0-0xdb8801c (124 bytes).
  Stores 2 bytes from v1 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb87ff8) with value 0x7d.
  Stores 4 bytes from a3 to ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb88008) with value a0.
  Calls `__glDlistAllocOp2 [0xdad5f00]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb87fcc).
  Calls `__glDlistAppendOp [0xdad5f90]` via register-constant with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdb8f170, a3=a0 at entry (arg0) (`jalr` at 0xdb88004).
  At `bne` at 0xdb87fd4 (target 0xdb87fe8), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  Returns v0 = ret(__glDlistAllocOp2); f0 = ret(__glDlistAllocOp2) (`jr` at 0xdb87fe0).
  Returns v0 = ret(__glDlistAppendOp); f0 = ret(__glDlistAppendOp) (`jr` at 0xdb88014).
- `__gllc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ace0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ace0-0xdb8ad68 (136 bytes).
  Stores 2 bytes from v1 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb8ad38) with value 0xd4.
  Stores 4 bytes from a4 to ret(__glDlistAllocOp2) +0x14 (`sw` at 0xdb8ad48) with value a1.
  Stores 4 bytes from a3 to ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb8ad54) with value a0.
  Calls `__glDlistAllocOp2 [0xdad5f00]` via register-constant with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8ad10).
  Calls `__glDlistAppendOp [0xdad5f90]` via register-constant with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdb907c0, a3=a0 at entry (arg0), a4=a1 at entry (arg1) (`jalr` at 0xdb8ad50).
  At `bne` at 0xdb8ad18 (target 0xdb8ad2c), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  Returns v0 = ret(__glDlistAllocOp2); f0 = ret(__glDlistAllocOp2) (`jr` at 0xdb8ad24).
  Returns v0 = ret(__glDlistAppendOp); f0 = ret(__glDlistAppendOp) (`jr` at 0xdb8ad60).
- `__gllc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ad70 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ad70-0xdb8ae74 (260 bytes).
  Stores 4 bytes from s1 to ret(__glDlistAllocOp2) +0x10 (`sw` at 0xdb8adf4) with value a0.
  Stores 2 bytes from a3 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb8ae00) with value 0xd5.
  Calls `__glDlistAllocOp2 [0xdad5f00]` via register-constant with a0=[0x1010], a1=((a0 << 0x2) + (a0 << 0x2))+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8adb8).
  Calls `memcpy` via got with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=?, a3=0xd5, a4=ret(__glDlistAllocOp2) (`jalr` at 0xdb8adfc).
  Calls `memcpy` via got with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xdb8ae1c).
  Calls `__glDlistAppendOp [0xdad5f90]` via register-constant with a0=[0x1010], a1=?, a2=0xdb90810, a3=? (`jalr` at 0xdb8ae30).
  Calls `__gllc_InvalidValue [0xdad6500]` via register-constant with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8ae54).
  At `bltz` at 0xdb8ad9c (target 0xdb8ae50), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `bne` at 0xdb8adc4 (target 0xdb8ade0), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  Returns v0 = ret(__glDlistAllocOp2); f0 = ret(__glDlistAllocOp2) (`jr` at 0xdb8add8).
  Returns v0 = ret(__glDlistAppendOp); f0 = ret(__glDlistAppendOp) (`jr` at 0xdb8ae48).
  Returns v0 = ret(__gllc_InvalidValue); f0 = ret(__gllc_InvalidValue) (`jr` at 0xdb8ae6c).
- `__gllc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8d360 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8d360-0xdb8d400 (160 bytes).
  Stores 2 bytes from v1 to ret(__glDlistAllocOp2) +0xc (`sh` at 0xdb8d3c0) with value 0x111.
  Stores 1 byte from a6 to ret(__glDlistAllocOp2) +0x13 (`sb` at 0xdb8d3d4) with value a3.
  Stores 1 byte from a5 to ret(__glDlistAllocOp2) +0x12 (`sb` at 0xdb8d3dc) with value a2.
  Stores 1 byte from a4 to ret(__glDlistAllocOp2) +0x11 (`sb` at 0xdb8d3e0) with value a1.
  Stores 1 byte from a3 to ret(__glDlistAllocOp2) +0x10 (`sb` at 0xdb8d3ec) with value a0.
  Calls `__glDlistAllocOp2 [0xdad5f00]` via register-constant with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8d398).
  Calls `__glDlistAppendOp [0xdad5f90]` via register-constant with a0=?, a1=ret(__glDlistAllocOp2), a2=0xdb919c0, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a3 at entry (arg3) (`jalr` at 0xdb8d3e8).
  At `bne` at 0xdb8d3a0 (target 0xdb8d3b4), taken when v0(=ret(__glDlistAllocOp2)) != 0 and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  Returns v0 = ret(__glDlistAllocOp2); f0 = ret(__glDlistAllocOp2) (`jr` at 0xdb8d3ac).
  Returns v0 = ret(__glDlistAppendOp); f0 = ret(__glDlistAppendOp) (`jr` at 0xdb8d3f8).
- `__glle_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8f170 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8f170-0xdb8f1b4 (68 bytes).
  Calls `(unknown callee)` via register with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb8f194).
  Returns v0 = a0+4; f0 = ret(?) (`jr` at 0xdb8f1ac).
- `__glle_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb907c0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb907c0-0xdb90808 (72 bytes).
  Calls `(unknown callee)` via register with a0=[a0], a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb907e8).
  Returns v0 = a0+8; f0 = ret(?) (`jr` at 0xdb90800).
- `__glle_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb90810 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb90810-0xdb90880 (112 bytes).
  Calls `(unknown callee)` via register with a0=[a0], a1=a0+4, a2=(a0 + ([a0] << 0x2))+4, a3=([a0] << 0x2), a4=0x517f8 (`jalr` at 0xdb90850).
  Returns v0 = ?; f0 = ret(?) (`jr` at 0xdb90878).
- `__glle_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb919c0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb919c0-0xdb91a10 (80 bytes).
  Calls `(unknown callee)` via register with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1 (`jalr` at 0xdb919f0).
  Returns v0 = a0+4; f0 = ret(?) (`jr` at 0xdb91a08).
- `__glsplc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb972a0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb972a0-0xdb972f8 (88 bytes).
  Stores 4 bytes from v1 to ret(__glSPDlalloc) +0x0 (`sw` at 0xdb972f4) with value a0.
  Calls `__glSPDlalloc [0xda60f00]` via register-constant with a0=0x4, a1=0x7d, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb972c4).
  At `bne` at 0xdb972cc (target 0xdb972e4), taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb972dc).
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb972f0).
- `__glsplc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb994d0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb994d0-0xdb99534 (100 bytes).
  Stores 4 bytes from v1 to ret(__glSPDlalloc) +0x0 (`sw` at 0xdb99520) with value a0.
  Stores 4 bytes from a2 to ret(__glSPDlalloc) +0x4 (`sw` at 0xdb99530) with value a1.
  Calls `__glSPDlalloc [0xda60f00]` via register-constant with a0=0x8, a1=0xd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb994f8).
  At `bne` at 0xdb99504 (target 0xdb9951c), taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb99514).
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb9952c).
- `__glsplc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb99540 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb99540-0xdb995e8 (168 bytes).
  Stores 4 bytes from a4 to ret(__glSPDlalloc) +0x0 (`sw` at 0xdb995b4) with value a0.
  Calls `__glSPDlalloc [0xda60f00]` via register-constant with a0=((a0 << 0x2) + (a0 << 0x2))+4, a1=0xd5, a2=a2 at entry (arg2), a3=0x48ac8 (`jalr` at 0xdb99578).
  Calls `memcpy` via got with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=?, a3=?, a4=a0 at entry (arg0), a5=ret(__glSPDlalloc) (`jalr` at 0xdb995b0).
  Calls `memcpy` via got with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jalr` at 0xdb995d0).
  At `bne` at 0xdb99580 (target 0xdb99598), taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb99590).
  Returns v0 = ret(memcpy); f0 = ret(memcpy) (`jr` at 0xdb995e0).
- `__glsplc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb9b230 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb9b230-0xdb9b2ac (124 bytes).
  Stores 1 byte from v1 to ret(__glSPDlalloc) +0x0 (`sb` at 0xdb9b288) with value a0.
  Stores 1 byte from a5 to ret(__glSPDlalloc) +0x2 (`sb` at 0xdb9b28c) with value a2.
  Stores 1 byte from ra to ret(__glSPDlalloc) +0x3 (`sb` at 0xdb9b290) with value a3.
  Stores 1 byte from a4 to ret(__glSPDlalloc) +0x1 (`sb` at 0xdb9b2a8) with value a1.
  Calls `__glSPDlalloc [0xda60f00]` via register-constant with a0=0x4, a1=0x111, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdb9b260).
  At `bne` at 0xdb9b26c (target 0xdb9b284), taken when v0(=ret(__glSPDlalloc)) != 0 and falls through when v0(=ret(__glSPDlalloc)) == 0.
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb9b27c).
  Returns v0 = ret(__glSPDlalloc); f0 = ret(__glSPDlalloc) (`jr` at 0xdb9b2a4).
- `__glce_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba1a20 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba1a20-0xdba1a94 (116 bytes).
  Stores 4 bytes from at to abs 0x1150 (`sw` at 0xdba1a5c) with value [[0x1010]+6384].
  Stores 4 bytes from a1 to abs 0x1150 (`sw` at 0xdba1a74).
  Stores 4 bytes from s8 to abs 0x1150 (`sw` at 0xdba1a84).
  Calls `glDrawBuffer` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba1a58).
  Calls `glDrawBuffer` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xdba1a70).
  Returns v0 = ret(glDrawBuffer); f0 = ret(glDrawBuffer) (`jr` at 0xdba1a8c).
- `__glce_AreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5c80 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5c80-0xdba5cd0 (80 bytes).
  Stores 4 bytes from at to abs 0x138c (`sw` at 0xdba5cb0) with value [[0x1010]+10596].
  Stores 4 bytes from s8 to abs 0x138c (`sw` at 0xdba5cc0) with value [0x138c].
  Calls `glAreTexturesResidentEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba5cac).
  Returns v0 = ?; f0 = ret(glAreTexturesResidentEXT) (`jr` at 0xdba5cc8).
- `__glce_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5cd0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5cd0-0xdba5d4c (124 bytes).
  Stores 4 bytes from at to abs 0x1390 (`sw` at 0xdba5d10) with value [[0x1010]+6960].
  Stores 4 bytes from a2 to abs 0x1390 (`sw` at 0xdba5d2c).
  Stores 4 bytes from s8 to abs 0x1390 (`sw` at 0xdba5d3c).
  Calls `glBindTextureEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba5d0c).
  Calls `glBindTextureEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xdba5d28).
  Returns v0 = ret(glBindTextureEXT); f0 = ret(glBindTextureEXT) (`jr` at 0xdba5d44).
- `__glce_DeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5d50 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5d50-0xdba5d9c (76 bytes).
  Stores 4 bytes from at to abs 0x1394 (`sw` at 0xdba5d80) with value [[0x1010]+10604].
  Stores 4 bytes from s8 to abs 0x1394 (`sw` at 0xdba5d8c) with value [0x1394].
  Calls `glDeleteTexturesEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba5d7c).
  Returns v0 = ret(glDeleteTexturesEXT); f0 = ret(glDeleteTexturesEXT) (`jr` at 0xdba5d94).
- `__glce_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5da0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5da0-0xdba5dec (76 bytes).
  Stores 4 bytes from at to abs 0x1398 (`sw` at 0xdba5dd0) with value [[0x1010]+10608].
  Stores 4 bytes from s8 to abs 0x1398 (`sw` at 0xdba5ddc) with value [0x1398].
  Calls `glGenTexturesEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba5dcc).
  Returns v0 = ret(glGenTexturesEXT); f0 = ret(glGenTexturesEXT) (`jr` at 0xdba5de4).
- `__glce_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5df0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5df0-0xdba5e40 (80 bytes).
  Stores 4 bytes from at to abs 0x139c (`sw` at 0xdba5e20) with value [[0x1010]+10612].
  Stores 4 bytes from s8 to abs 0x139c (`sw` at 0xdba5e30) with value [0x139c].
  Calls `glIsTextureEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba5e1c).
  Returns v0 = ?; f0 = ret(glIsTextureEXT) (`jr` at 0xdba5e38).
- `__glce_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5e40 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5e40-0xdba5ec4 (132 bytes).
  Stores 4 bytes from at to abs 0x13a0 (`sw` at 0xdba5e84) with value [[0x1010]+6976].
  Stores 4 bytes from a3 to abs 0x13a0 (`sw` at 0xdba5ea4).
  Stores 4 bytes from s8 to abs 0x13a0 (`sw` at 0xdba5eb4).
  Calls `glPrioritizeTexturesEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba5e80).
  Calls `glPrioritizeTexturesEXT` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jalr` at 0xdba5ea0).
  Returns v0 = ret(glPrioritizeTexturesEXT); f0 = ret(glPrioritizeTexturesEXT) (`jr` at 0xdba5ebc).
- `__glce_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba8d20 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba8d20-0xdba8dac (140 bytes).
  Stores 4 bytes from at to abs 0x152c (`sw` at 0xdba8d68) with value [[0x1010]+7372].
  Stores 4 bytes from a4 to abs 0x152c (`sw` at 0xdba8d8c).
  Stores 4 bytes from s8 to abs 0x152c (`sw` at 0xdba8d9c).
  Calls `glTextureColorMaskSGIS` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba8d64).
  Calls `glTextureColorMaskSGIS` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xdba8d88).
  Returns v0 = ret(glTextureColorMaskSGIS); f0 = ret(glTextureColorMaskSGIS) (`jr` at 0xdba8da4).
- `glDrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaccb0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbaccb0-0xdbaccbc (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbaccb4).
- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).
- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).
- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).

- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).
- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).
- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).
- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).
- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).
- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).
- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).
- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).
- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).
- `__glx_SelectBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf82340 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf82340-0xcf82480 (320 bytes).
  Stores 8 bytes from a0 to [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0xcf823c4) with value [[[[0x1028]:8+280]:8+312]:8+176]:8.
  Stores 2 bytes from a2 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0xcf823cc) with value 0x3.
  Stores 1 byte from zero to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0xcf823d0) with value 0x0.
  Stores 8 bytes from v0 to [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0xcf823e0) with value [[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  Stores 8 bytes from v1 to [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0xcf823e8) with value [[[[0x1028]:8+280]:8+312]:8+176]:8+12.
  Stores 1 byte from a3 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0xcf823f4) with value 0x6a.
  Stores 1 byte from at to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0xcf823f8) with value [[[0x1028]:8+280]:8+420].
  Stores 4 bytes from v1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0xcf82404) with value a0.
  Stores 4 bytes from a2 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0xcf82408) with value [[[0x1028]:8+280]:8+104].
  Stores 8 bytes from s1 to [[0x1028]:8+280]:8 +0x78 (`sd` at 0xcf82448) with value a1.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=[[[0x1028]:8+280]:8+312]:8 (`jalr` at 0xcf82388).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf823a0).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=[[[0x1028]:8+280]:8+104], a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf8241c).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf82434).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf8245c).
  At `beq` at 0xcf82364 (target 0xcf82470), taken when a3(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0xcf82374 (target 0xcf82440), taken when a3(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when a3(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0xcf82394 (target 0xcf823ac), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0xcf823bc (target 0xcf8245c), taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned) and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+12) (unsigned).
  At `beq` at 0xcf82410 (target 0xcf82428), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0xcf8242c (target 0xcf82440), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  Returns v0 = ? (`jr` at 0xcf82454).
  Returns v0 = ? (`jr` at 0xcf82478).
- `__glx_FeedbackBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf82480 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf82480-0xcf825cc (332 bytes).
  Stores 8 bytes from a0 to [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0xcf82508) with value [[[[0x1028]:8+280]:8+312]:8+176]:8.
  Stores 2 bytes from a4 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0xcf82510) with value 0x4.
  Stores 1 byte from zero to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0xcf82514) with value 0x0.
  Stores 8 bytes from v1 to [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0xcf82524) with value [[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  Stores 8 bytes from a3 to [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0xcf8252c) with value [[[[0x1028]:8+280]:8+312]:8+176]:8+16.
  Stores 1 byte from at to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0xcf8253c) with value 0x69.
  Stores 1 byte from v0 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0xcf82540) with value [[[0x1028]:8+280]:8+420].
  Stores 4 bytes from v1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc (`sw` at 0xcf8254c) with value a1.
  Stores 4 bytes from a3 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0xcf82550) with value a0.
  Stores 4 bytes from a4 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0xcf82554) with value [[[0x1028]:8+280]:8+104].
  Stores 8 bytes from s2 to [[0x1028]:8+280]:8 +0x70 (`sd` at 0xcf82594) with value a2.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[0x1028]:8+280]:8+312]:8 (`jalr` at 0xcf824cc).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf824e4).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=a0 at entry (arg0), a4=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf82568).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf82580).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf825a8).
  At `beq` at 0xcf824a4 (target 0xcf825bc), taken when a4(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when a4(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0xcf824b8 (target 0xcf8258c), taken when a4(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when a4(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0xcf824d8 (target 0xcf824f0), taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0xcf82500 (target 0xcf825a8), taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned) and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned).
  At `beq` at 0xcf8255c (target 0xcf82574), taken when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a4(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0xcf82578 (target 0xcf8258c), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  Returns v0 = ? (`jr` at 0xcf825a0).
  Returns v0 = ? (`jr` at 0xcf825c4).
- `glXAssociateDMPbufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf8f6d4 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf8f6d4-0xcf8f714 (64 bytes).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0x9, a2=0x10, a3=0x0 (`jalr` at 0xcf8f6f8).
  Returns v0 = 0x0; f0 = ret(__glXPostError) (`jr` at 0xcf8f70c).
- `glXCreatePbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf90330 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf90330-0xcf90628 (760 bytes).
  Stores 4 bytes from a4 to ret(__glXAddDrawableInterest) +0x40 (`sw` at 0xcf903b0) with value 0x4.
  Stores 8 bytes from a1 to a0 (arg0 at entry) +0xa0 (`sd` at 0xcf90460) with value [a0+176]:8.
  Stores 1 byte from a4 to [a0+176]:8 +0x0 (`sb` at 0xcf9046c) with value 0x1b.
  Stores 2 bytes from at to [a0+176]:8 +0x2 (`sh` at 0xcf90474).
  Stores 8 bytes from v1 to a0 (arg0 at entry) +0x98 (`sd` at 0xcf90488) with value [a0+152]:8+1.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0xb0 (`sd` at 0xcf90498).
  Stores 1 byte from at to [a0+176]:8 +0x0 (`sb` at 0xcf9049c).
  Stores 1 byte from a4 to [a0+176]:8 +0x1 (`sb` at 0xcf904a0) with value 0x1b.
  Stores 4 bytes from a3 to [a0+176]:8 +0x4 (`sw` at 0xcf904a8) with value [a1+36].
  Stores 4 bytes from a3 to [a0+176]:8 +0xc (`sw` at 0xcf904b8).
  Stores 4 bytes from s0 to [a0+176]:8 +0x10 (`sw` at 0xcf904c0).
  Stores 4 bytes from v1 to [a0+176]:8 +0x8 (`sw` at 0xcf904cc) with value [a1+72].
  Stores 4 bytes from a4 to [a0+176]:8 +0x14 (`sw` at 0xcf904f0) with value [a2].
  Stores 4 bytes from a3 to [a0+176]:8 +0x18 (`sw` at 0xcf90504) with value [a2+4].
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0xcf90534).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0xcf9053c).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0xcf90544).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xcf9055c).
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf90364).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf90380).
  Calls `__glXAddDrawableInterest` via got with a0=ret(?), a1=?, a2=?, a3=? (`jalr` at 0xcf90394).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf90438).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=[a0+2408]:8, a3=? (`jalr` at 0xcf90570).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf90584).
  Calls `__glXRemoveDrawableInterest` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xcf90590).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=[a0+176]:8, a2=?, a3=? (`jalr` at 0xcf905dc).
  Calls `__glXPostError` via got with a0=a0 at entry (arg0), a1=0xb, a2=0x1b, a3=0x0 (`jalr` at 0xcf90600).
  At `beq` at 0xcf90374 (target 0xcf905b8), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `beq` at 0xcf903a0 (target 0xcf905f0), taken when v0(=ret(__glXAddDrawableInterest)) == 0 and falls through when v0(=ret(__glXAddDrawableInterest)) != 0.
  At `beq` at 0xcf903ac (target 0xcf90428), taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  At `beq` at 0xcf903bc (target 0xcf90428), taken when at(=[a2]) == 0 and falls through when at(=[a2]) != 0.
  At `beq` at 0xcf903cc (target 0xcf90428), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0xcf903dc (target 0xcf90428), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0xcf903ec (target 0xcf90428), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xcf903fc (target 0xcf90428), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xcf9040c (target 0xcf90428), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xcf90420 (target 0xcf903c4), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0xcf9042c (target 0xcf90440), taken when a2(=[a0+2408]:8) == 0 and falls through when a2(=[a0+2408]:8) != 0.
  At `bne` at 0xcf90458 (target 0xcf905d8), taken when a4(=[a0+184]:8) < at(?) (unsigned) and falls through when a4(=[a0+184]:8) >= at(?) (unsigned).
  At `beq` at 0xcf904c8 (target 0xcf90560), taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  At `bne` at 0xcf904dc (target 0xcf90560), taken when s0(?) < 0x0 (signed) and falls through when s0(?) >= 0x0 (signed).
  At `beq` at 0xcf904e4 (target 0xcf90508), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xcf90514 (target 0xcf90560), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0xcf90558 (target 0xcf90530), taken when v0(?) != a2(=-0x1) and falls through when v0(?) == a2(=-0x1).
  At `beq` at 0xcf90564 (target 0xcf90578), taken when a2(=[a0+2408]:8) == 0 and falls through when a2(=[a0+2408]:8) != 0.
  At `beq` at 0xcf9057c (target 0xcf9058c), taken when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  Returns v0 = ?; f0 = ret(__glXRemoveDrawableInterest) (`jr` at 0xcf905b0).
  Returns v0 = 0x0; f0 = ret(__glXSetupForCommand) (`jr` at 0xcf905d0).
  Returns v0 = 0x0; f0 = ret(__glXPostError) (`jr` at 0xcf90620).
- `glXDestroyPbuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf90628 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf90628-0xcf90778 (336 bytes).
  Stores 8 bytes from a0 to a0 (arg0 at entry) +0xa0 (`sd` at 0xcf906cc) with value [a0+176]:8.
  Stores 2 bytes from a3 to [a0+176]:8 +0x2 (`sh` at 0xcf906d4) with value 0x2.
  Stores 1 byte from at to [a0+176]:8 +0x0 (`sb` at 0xcf906dc) with value 0x1c.
  Stores 8 bytes from a1 to a0 (arg0 at entry) +0x98 (`sd` at 0xcf906f0) with value [a0+152]:8+1.
  Stores 8 bytes from a2 to a0 (arg0 at entry) +0xb0 (`sd` at 0xcf906f8) with value [a0+176]:8+8.
  Stores 4 bytes from s1 to [a0+176]:8 +0x4 (`sw` at 0xcf906fc) with value a1.
  Stores 1 byte from at to [a0+176]:8 +0x1 (`sb` at 0xcf90700) with value 0x1c.
  Stores 1 byte from v1 to [a0+176]:8 +0x0 (`sb` at 0xcf90704).
  Stores 8 bytes from zero to ret(__glXAddDrawableInterest) +0x0 (`sd` at 0xcf90774) with value 0x0.
  Calls `__glXSetupForCommand` via got with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf90650).
  Calls `__glXAddDrawableInterest` via got with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jalr` at 0xcf90670).
  Calls `__glXRemoveDrawableInterest` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xcf90680).
  Calls `__glXFreeDrawablePrivate` via got with a0=ret(__glXAddDrawableInterest), a1=?, a2=?, a3=? (`jalr` at 0xcf90694).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=?, a3=? (`jalr` at 0xcf906ac).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+2408]:8, a2=[a0+176]:8+8, a3=0x2 (`jalr` at 0xcf90718).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xcf9072c).
  Calls `_XFlush` via got with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+176]:8+8 (`jalr` at 0xcf90760).
  At `beq` at 0xcf90660 (target 0xcf9074c), taken when (v0(=ret(__glXSetupForCommand)) & 0xff) == 0 and falls through when (v0(=ret(__glXSetupForCommand)) & 0xff) != 0.
  At `beq` at 0xcf9068c (target 0xcf90770), taken when v1(=[ret(__glXAddDrawableInterest)+32]) == 0 and falls through when v1(=[ret(__glXAddDrawableInterest)+32]) != 0.
  At `beq` at 0xcf906a0 (target 0xcf906b4), taken when a1(=[a0+2408]:8) == 0 and falls through when a1(=[a0+2408]:8) != 0.
  At `bne` at 0xcf906c4 (target 0xcf90760), taken when a2(=[a0+184]:8) < a3(=[a0+176]:8+8) (unsigned) and falls through when a2(=[a0+184]:8) >= a3(=[a0+176]:8+8) (unsigned).
  At `beq` at 0xcf9070c (target 0xcf90720), taken when a1(=[a0+2408]:8) == 0 and falls through when a1(=[a0+2408]:8) != 0.
  At `beq` at 0xcf90724 (target 0xcf90738), taken when t9(=[a0+208]:8) == 0 and falls through when t9(=[a0+208]:8) != 0.
  Returns v0 = ? (`jr` at 0xcf90744).
  Returns v0 = ?; f0 = ret(__glXSetupForCommand) (`jr` at 0xcf90758).
- `__glx_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf91e98 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf91e98-0xcf91f14 (124 bytes).
  Stores 1 byte from a3 to [[[0x1028]:8+280]:8+8]:8 +0x7 (`sb` at 0xcf91ea4) with value a3.
  Stores 1 byte from a2 to [[[0x1028]:8+280]:8+8]:8 +0x6 (`sb` at 0xcf91ea8) with value a2.
  Stores 1 byte from a1 to [[[0x1028]:8+280]:8+8]:8 +0x5 (`sb` at 0xcf91eac) with value a1.
  Stores 1 byte from a0 to [[[0x1028]:8+280]:8+8]:8 +0x4 (`sb` at 0xcf91eb0) with value a0.
  Stores 2 bytes from v0 to [[[0x1028]:8+280]:8+8]:8 +0x0 (`sh` at 0xcf91eb8) with value 0x8.
  Stores 2 bytes from at to [[[0x1028]:8+280]:8+8]:8 +0x2 (`sh` at 0xcf91ec0) with value 0x822.
  Stores 8 bytes from a5 to [[0x1028]:8+280]:8 +0x8 (`sd` at 0xcf91ee0) with value [[[0x1028]:8+280]:8+8]:8+8.
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8+8, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[[0x1028]:8+280]:8+8]:8+8, a6=[[0x1028]:8+280]:8 (`jalr` at 0xcf91f04).
  At `bne` at 0xcf91ee4 (target 0xcf91ef8), taken when at(=[[[0x1028]:8+280]:8+16]:8) < a5(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned) and falls through when at(=[[[0x1028]:8+280]:8+16]:8) >= a5(=[[[0x1028]:8+280]:8+8]:8+8) (unsigned).
  Returns v0 = ? (`jr` at 0xcf91ef0).
- `__glx_InstrumentsBufferSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf921dc (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0xcf921dc-0xcf92338 (348 bytes).
  Stores 8 bytes from a5 to [[[0x1028]:8+280]:8+312]:8 +0xa0 (`sd` at 0xcf92258) with value [[[[0x1028]:8+280]:8+312]:8+176]:8.
  Stores 2 bytes from a6 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x2 (`sh` at 0xcf92260) with value 0x4.
  Stores 1 byte from a7 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0xcf92268) with value 0x10.
  Stores 8 bytes from a3 to [[[0x1028]:8+280]:8+312]:8 +0x98 (`sd` at 0xcf92278) with value [[[[0x1028]:8+280]:8+312]:8+152]:8+1.
  Stores 8 bytes from a4 to [[[0x1028]:8+280]:8+312]:8 +0xb0 (`sd` at 0xcf92280) with value [[[[0x1028]:8+280]:8+312]:8+176]:8+16.
  Stores 4 bytes from a0 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x4 (`sw` at 0xcf9228c) with value 0x1007.
  Stores 1 byte from a1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x1 (`sb` at 0xcf92294) with value 0x11.
  Stores 1 byte from a2 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x0 (`sb` at 0xcf92298) with value [[[0x1028]:8+280]:8+420].
  Stores 4 bytes from s1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0xc (`sw` at 0xcf922b0) with value a0.
  Stores 4 bytes from v1 to [[[[0x1028]:8+280]:8+312]:8+176]:8 +0x8 (`sw` at 0xcf922bc) with value [[[0x1028]:8+280]:8+104].
  Calls `__glXFlushRenderBuffer` via got with a0=[[0x1028]:8+280]:8, a1=[[[0x1028]:8+280]:8+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xcf92220).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf92238).
  Calls `_XReply` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=sp-96, a2=0x0, a3=0x0, a4=[[[[0x1028]:8+280]:8+312]:8+176]:8+16, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8, a6=0x4, a7=0x10 (`jalr` at 0xcf922b8).
  Calls `_XRead` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=? (`jalr` at 0xcf922d0).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=[[[[0x1028]:8+280]:8+312]:8+2408]:8 (`jalr` at 0xcf922ec).
  Calls `(unknown callee)` via register with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=? (`jalr` at 0xcf92304).
  Calls `_XFlush` via got with a0=[[[0x1028]:8+280]:8+312]:8, a1=?, a2=?, a3=?, a5=[[[[0x1028]:8+280]:8+312]:8+176]:8 (`jalr` at 0xcf92328).
  At `beq` at 0xcf9220c (target 0xcf92310), taken when s0(=[[[0x1028]:8+280]:8+312]:8) == 0 and falls through when s0(=[[[0x1028]:8+280]:8+312]:8) != 0.
  At `beq` at 0xcf9222c (target 0xcf92240), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `bne` at 0xcf92250 (target 0xcf92328), taken when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) < v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned) and falls through when at(=[[[[0x1028]:8+280]:8+312]:8+184]:8) >= v0(=[[[[0x1028]:8+280]:8+312]:8+176]:8+16) (unsigned).
  At `beq` at 0xcf922e0 (target 0xcf922f8), taken when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) == 0 and falls through when a3(=[[[[0x1028]:8+280]:8+312]:8+2408]:8) != 0.
  At `beq` at 0xcf922fc (target 0xcf92310), taken when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) == 0 and falls through when t9(=[[[[0x1028]:8+280]:8+312]:8+208]:8) != 0.
  Returns v0 = ? (`jr` at 0xcf92320).
- `InitBuffers` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb33b6b0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb33b6b0-0xb33b8b4 (516 bytes).
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x9a28 (`sd` at 0xb33b6c8) with value a0+39480.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x4578 (`sd` at 0xb33b6e4) with value a0+39480.
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x9a30 (`sd` at 0xb33b6e8) with value a0+39816.
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x4570 (`sd` at 0xb33b6f8) with value a0+39816.
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x1460 (`sw` at 0xb33b7a4) with value -0x1.
  Stores 1 byte from at to a0 (arg0 at entry) +0x145c (`sb` at 0xb33b7b0) with value 0x1.
  Stores 4 bytes from at to a0 (arg0 at entry) +0x9e34 (`sw` at 0xb33b7f4) with value 0x1ffff800.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x4570 (`sd` at 0xb33b844) with value a0+39480.
  Calls `__glOdysseyInitCI [0xb338440]` via direct with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480 (`bgezall` at 0xb33b704).
  Calls `__glOdysseyInitCI [0xb338440]` via direct with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=? (`bgezall` at 0xb33b714).
  Calls `__glOdysseyInitCI [0xb338440]` via direct with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=? (`bgezall` at 0xb33b754).
  Calls `__glOdysseyInitRGB [0xb393720]` via register-constant with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=? (`jalr` at 0xb33b784).
  Calls `__glOdysseyInitAccum [0xb32ad90]` via register-constant with a0=a0+40584, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xb33b7c0).
  Calls `__glInitDepth [0xb3fc0a0]` via register-constant with a0=a0+40376, a1=a0 at entry (arg0), a2=[a0+3569]:1, a3=? (`jalr` at 0xb33b7e4).
  Calls `__glInitStencil8 [0xb434f40]` via register-constant with a0=a0+40160, a1=a0 at entry (arg0), a2=[a0+3570]:1, a3=? (`jalr` at 0xb33b80c).
  Calls `__glUpdateDepthRange [0xb466170]` via register-constant with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0xb33b818).
  Calls `__glOdysseyInitCI [0xb338440]` via direct with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480 (`bgezall` at 0xb33b850).
  Calls `__glOdysseyInitRGB [0xb393720]` via register-constant with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480 (`jalr` at 0xb33b868).
  Calls `__glOdysseyInitRGB [0xb393720]` via register-constant with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jalr` at 0xb33b878).
  Calls `__glOdysseyInitRGB [0xb393720]` via register-constant with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480 (`jalr` at 0xb33b8a4).
  At `beq` at 0xb33b6e0 (target 0xb33b838), taken when at(=[a0+3566]:1) == 0 and falls through when at(=[a0+3566]:1) != 0.
  At `beq` at 0xb33b6f4 (target 0xb33b860), taken when at(=[a0+3565]:1) == 0 and falls through when at(=[a0+3565]:1) != 0.
  At `blez` at 0xb33b724 (target 0xb33b79c), taken when a0(=[a0+3640]) <= 0 (signed) and falls through when a0(=[a0+3640]) > 0 (signed).
  At `beq` at 0xb33b760 (target 0xb33b794), taken when s2(?) == s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)) and falls through when s2(?) != s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)).
  At `bne` at 0xb33b778 (target 0xb33b750), taken when a2(=[a0+3565]:1) != 0 and falls through when a2(=[a0+3565]:1) == 0.
  At `beq` at 0xb33b7ac (target 0xb33b7d0), taken when v0(=[a0+3568]:1) == 0 and falls through when v0(=[a0+3568]:1) != 0.
  At `beq` at 0xb33b7c8 (target 0xb33b888), taken when v0(=ret(__glOdysseyInitAccum)) == 0 and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  At `beq` at 0xb33b7d4 (target 0xb33b7ec), taken when a2(=[a0+3569]:1) == 0 and falls through when a2(=[a0+3569]:1) != 0.
  At `beq` at 0xb33b7fc (target 0xb33b814), taken when a2(=[a0+3570]:1) == 0 and falls through when a2(=[a0+3570]:1) != 0.
  At `beq` at 0xb33b840 (target 0xb33b89c), taken when a2(=[a0+3565]:1) == 0 and falls through when a2(=[a0+3565]:1) != 0.
  Returns v0 = 0x1; f0 = ret(__glUpdateDepthRange) (`jr` at 0xb33b830).
  Returns v0 = 0x0; f0 = ret(__glOdysseyInitAccum) (`jr` at 0xb33b894).
- `ImageChainAddOpTextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3613b0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3613b0-0xb361438 (136 bytes).
  Stores 4 bytes from at to ret(ImageChainOpCreate) +0x14 (`sw` at 0xb3613f4) with value 0x1.
  Stores 4 bytes from ra to ret(ImageChainOpCreate) +0x0 (`sw` at 0xb3613fc) with value 0x2.
  Stores 8 bytes from ra to ret(ImageChainOpCreate) +0x8 (`sd` at 0xb361418) with value 0xb361440.
  Stores 4 bytes from at to ret(ImageChainOpCreate) +0x10 (`sw` at 0xb361424) with value ([ret(ImageChainOpCreate)+16] | 0x2c).
  Calls `ImageChainOpCreate [0xb35f9b0]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xb3613c8).
  Calls `ImageChainAddOp [0xb35fd60]` via direct with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`bgezall` at 0xb361420).
  At `bne` at 0xb3613d0 (target 0xb3613e4), taken when v0(=ret(ImageChainOpCreate)) != 0 and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  Returns v0 = 0x0; f0 = ret(ImageChainOpCreate) (`jr` at 0xb3613dc).
  Returns v0 = 0x1; f0 = ret(ImageChainAddOp) (`jr` at 0xb361430).
- `RenderFunc_TextureColor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb361440 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb361440-0xb361484 (68 bytes).
  Calls `__glOdysseyImageMovePixelsTexture [0xb3853e0]` via register-constant with a0=[a0+96]:8, a1=[a0+88]:8, a2=a1 at entry (arg1), a3=0x1 (`jalr` at 0xb361468).
  Returns v0 = 0x1; f0 = ret(__glOdysseyImageMovePixelsTexture) (`jr` at 0xb36147c).
- `LoadTextureFilter` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb369aa0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb369aa0-0xb369b90 (240 bytes).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0xb369b08).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0xb369b48).
  Stores 4 bytes from a6 to [0x1020]:8 +0xb00c (`sw` at 0xb369b10) with value 0x2.
  Stores 4 bytes from a6 to [0x1020]:8 +0xb110 (`sw` at 0xb369b50) with value 0x2.
  Stores 4 bytes from at to [0x1020]:8 +0xb194 (`sw` at 0xb369b60).
  Stores 4 bytes from a1 to [0x1020]:8 +0xb198 (`sw` at 0xb369b68).
  Stores 4 bytes from a0 to [0x1020]:8 +0xb19c (`sw` at 0xb369b70).
  Stores 4 bytes from v0 to [0x1020]:8 +0x18fdc (`sw` at 0xb369b84) with value ([[0x1020]:8+102364] | 0x38000).
  Stores 4 bytes from a6 to abs 0x1030 (`sw` at 0xb369b8c) with value 0x2.
  At `bgtz` at 0xb369b04 (target 0xb369af0), taken when a4(?) > 0 (signed) and falls through when a4(?) <= 0 (signed).
  At `bgtz` at 0xb369b44 (target 0xb369b30), taken when a3(?) > 0 (signed) and falls through when a3(?) <= 0 (signed).
  Returns v0 = ([[0x1020]:8+102364] | 0x38000) (`jr` at 0xb369b88).
- `ImageChainAddOpPixelTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb36d6c0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb36d6c0-0xb36d744 (132 bytes).
  Stores 4 bytes from v1 to ret(ImageChainOpCreate) +0x0 (`sw` at 0xb36d6f0) with value 0xb.
  Stores 4 bytes from ra to ret(ImageChainOpCreate) +0x14 (`sw` at 0xb36d6f8) with value 0x1.
  Stores 4 bytes from at to ret(ImageChainOpCreate) +0x10 (`sw` at 0xb36d710) with value ([ret(ImageChainOpCreate)+16] | 0xe).
  Stores 8 bytes from a3 to ret(ImageChainOpCreate) +0x8 (`sd` at 0xb36d71c) with value 0xb36d750.
  Calls `ImageChainOpCreate [0xb35f9b0]` via register-constant with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb36d6d0).
  Calls `ImageChainAddOp [0xb35fd60]` via register-constant with a0=a0 at entry (arg0), a1=ret(ImageChainOpCreate), a2=[a0+16]:8, a3=0x0 (`jalr` at 0xb36d72c).
  At `bne` at 0xb36d6d8 (target 0xb36d6ec), taken when v0(=ret(ImageChainOpCreate)) != 0 and falls through when v0(=ret(ImageChainOpCreate)) == 0.
  Returns v0 = 0x0; f0 = ret(ImageChainOpCreate) (`jr` at 0xb36d6e4).
  Returns v0 = 0x1; f0 = ret(ImageChainAddOp) (`jr` at 0xb36d73c).
- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb373d90 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb373d90-0xb373dfc (108 bytes).
  Stores 4 bytes from $f1 to a1 (arg1 at entry) +0x178 (`swc1` at 0xb373dcc) with value 0x0.
  Stores 4 bytes from $f0 to a1 (arg1 at entry) +0x168 (`swc1` at 0xb373dd4) with value 0x41800000.
  Stores 4 bytes from $f31 to a1 (arg1 at entry) +0x168 (`swc1` at 0xb373ddc) with value [a1+360].
  Stores 4 bytes from $f3 to a1 (arg1 at entry) +0x178 (`swc1` at 0xb373dec).
  Calls `__glOdySpanShiftOffsetIndex [0xb373190]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xb373dd0).
  Returns v0 = ret(__glOdySpanShiftOffsetIndex); f0 = ret(__glOdySpanShiftOffsetIndex) (`jr` at 0xb373df4).
- `FreeTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397be0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb397be0-0xb397c44 (100 bytes).
  Calls `__glOdysseyDestroyPMObjGroup [0xb38f4d0]` via register-constant with a0=a0 at entry (arg0), a1=a1+1340, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb397c18).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jalr` at 0xb397c28).
  At `beq` at 0xb397c04 (target 0xb397c24), taken when at(=[a1+1340]) == v0(=-0x1) and falls through when at(=[a1+1340]) != v0(=-0x1).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0xb397c3c).
- `InitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb397c50 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb397c50-0xb397e64 (532 bytes).
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x4c (`sw` at 0xb397c54) with value 0x104.
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0x48 (`sw` at 0xb397c5c) with value -0x4.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x2c (`sw` at 0xb397c7c) with value 0x2901.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x28 (`sw` at 0xb397c80) with value 0x2901.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x24 (`sw` at 0xb397c84) with value 0x2901.
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x20 (`sw` at 0xb397c8c) with value 0x2601.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x1c (`sw` at 0xb397c94) with value 0x2702.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x18 (`sw` at 0xb397c98) with value 0x0.
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x14 (`sw` at 0xb397c9c) with value a2.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x10 (`sw` at 0xb397ca0) with value a1.
  Stores 4 bytes from a7 to a0 (arg0 at entry) +0x0 (`sw` at 0xb397ca8) with value 0x1.
  Stores 4 bytes from $f1 to a0 (arg0 at entry) +0x44 (`swc1` at 0xb397cac) with value 0x3f800000.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x40 (`swc1` at 0xb397cb0) with value 0x0.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x3c (`swc1` at 0xb397cb4) with value 0x0.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x38 (`swc1` at 0xb397cb8) with value 0x0.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x34 (`swc1` at 0xb397cc4) with value 0x0.
  Stores 8 bytes from at to a0 (arg0 at entry) +0x8 (`sd` at 0xb397ccc) with value 0xb397be0.
  12 such accesses: Stores 4 bytes from zero to ? (base unknown) (including `sw` at 0xb397ce0, 0xb397ce4, 0xb397ce8).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0xb397d08) with value 0x1.
  Stores 4 bytes from a7 to a0 (arg0 at entry) +0x560 (`sw` at 0xb397d24) with value 0x2.
  Stores 4 bytes from a7 to a0 (arg0 at entry) +0x550 (`sw` at 0xb397d28) with value 0x2.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x54c (`sw` at 0xb397d2c) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xc8 (`sw` at 0xb397d30) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x540 (`sw` at 0xb397d34) with value 0x0.
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x53c (`sw` at 0xb397d3c) with value -0x1.
  Stores 8 bytes from a5 to a0 (arg0 at entry) +0x568 (`sd` at 0xb397d54) with value 0xb4c0e88.
  Stores 8 bytes from a5 to a0 (arg0 at entry) +0x558 (`sd` at 0xb397d60) with value 0xb4c0e88.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x138 (`sw` at 0xb397d7c) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x130 (`sw` at 0xb397d80) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x128 (`sw` at 0xb397d84) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x120 (`sw` at 0xb397d88) with value 0x0.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x134 (`sw` at 0xb397d90) with value 0x1000.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x12c (`sw` at 0xb397d94) with value 0x1000.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x124 (`sw` at 0xb397d98) with value 0x1000.
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x11c (`sw` at 0xb397d9c) with value 0x1000.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xe4 (`sw` at 0xb397da0) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xe0 (`sw` at 0xb397da4) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xd8 (`sw` at 0xb397da8) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xd4 (`sw` at 0xb397dac) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xd0 (`sw` at 0xb397db0) with value 0x0.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x88 (`sw` at 0xb397db8) with value 0x3e8.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x84 (`sw` at 0xb397dbc) with value 0x0.
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0x10c (`sw` at 0xb397dc4) with value 0xf00.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x108 (`sw` at 0xb397dcc) with value 0x3100.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x104 (`sw` at 0xb397dd0) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x100 (`sw` at 0xb397dd4) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xfc (`sw` at 0xb397dd8) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xf8 (`sw` at 0xb397ddc) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xf4 (`sw` at 0xb397de0) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xf0 (`sw` at 0xb397de4) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xec (`sw` at 0xb397de8) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xe8 (`sw` at 0xb397dec) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x118 (`sw` at 0xb397df0) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x114 (`sw` at 0xb397df4) with value 0x0.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x110 (`sw` at 0xb397df8) with value 0x0.
  Stores 4 bytes from at to a0 (arg0 at entry) +0xcc (`sw` at 0xb397e00) with value 0x8000000.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0xa4 (`swc1` at 0xb397e14) with value 0x0.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0xa0 (`swc1` at 0xb397e18) with value 0x0.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x9c (`swc1` at 0xb397e1c) with value 0x0.
  Stores 4 bytes from $f0 to a0 (arg0 at entry) +0x98 (`swc1` at 0xb397e20) with value 0x0.
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0xb4 (`swc1` at 0xb397e24) with value 0x3f800000.
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0xb0 (`swc1` at 0xb397e28) with value 0x3f800000.
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0xac (`swc1` at 0xb397e2c) with value 0x3f800000.
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0xa8 (`swc1` at 0xb397e30) with value 0x3f800000.
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0x78 (`swc1` at 0xb397e34) with value 0x3f800000.
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0x74 (`swc1` at 0xb397e38) with value 0x3f800000.
  Stores 4 bytes from $f4 to a0 (arg0 at entry) +0x70 (`swc1` at 0xb397e3c) with value 0x3f800000.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xdc (`sw` at 0xb397e40) with value 0x0.
  Stores 4 bytes from ra to a0 (arg0 at entry) +0xdc (`sw` at 0xb397e48) with value 0x82.
  Stores 4 bytes from $f3 to a0 (arg0 at entry) +0x80 (`swc1` at 0xb397e50) with value 0x447a0000.
  Stores 4 bytes from $f2 to a0 (arg0 at entry) +0x7c (`swc1` at 0xb397e54) with value 0xffffffffc47a0000.
  Calls `bzero` via got with a0=a0+316, a1=0x400, a2=a2 at entry (arg2), a3=-0x4, a5=0xb4c0e88, a6=-0x1, a7=0x2 (`jalr` at 0xb397d5c).
  Calls `__glOdysseyTextureSetDetailTable [0xb3a0f80]` via register-constant with a0=a0 at entry (arg0), a1=0x2, a2=0xb4c0e88, a3=? (`jalr` at 0xb397d74).
  At `bne` at 0xb397d18 (target 0xb397ce0), taken when a4(?) != a6(=a0+1088) and falls through when a4(?) == a6(=a0+1088).
  Returns v0 = 0x3100; f0 = 0x0 (`jr` at 0xb397e5c).

- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398040 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb398040-0xb398100 (192 bytes).
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=a0 at entry (arg0), a1=[a0+101152]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb39807c).
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=a0 at entry (arg0), a1=[a0+101160]:8, a2=?, a3=? (`jalr` at 0xb39809c).
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=a0 at entry (arg0), a1=[a0+101168]:8, a2=?, a3=? (`jalr` at 0xb3980bc).
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=a0 at entry (arg0), a1=[a0+101176]:8, a2=?, a3=? (`jalr` at 0xb3980e4).
  At `beq` at 0xb39806c (target 0xb398088), taken when at(=[[a0+101152]:8+16]) == 0 and falls through when at(=[[a0+101152]:8+16]) != 0.
  At `beq` at 0xb398090 (target 0xb3980a8), taken when at(=[[a0+101160]:8+16]) == 0 and falls through when at(=[[a0+101160]:8+16]) != 0.
  At `beq` at 0xb3980b0 (target 0xb3980c8), taken when v0(=[[a0+101168]:8+16]) == 0 and falls through when v0(=[[a0+101168]:8+16]) != 0.
  At `beq` at 0xb3980d0 (target 0xb3980f0), taken when v1(=[[a0+101176]:8+16]) == 0 and falls through when v1(=[[a0+101176]:8+16]) != 0.
  Returns v0 = ? (`jr` at 0xb3980f8).
- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3981e0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3981e0-0xb3982c0 (224 bytes).
  At `bne` at 0xb3981f4 (target 0xb398230), taken when a1 < a3(=0x8064) (unsigned) and falls through when a1 >= a3(=0x8064) (unsigned).
  At `beq` at 0xb3981fc (target 0xb39828c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xb398208 (target 0xb398270), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xb398210 (target 0xb3982ac), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0xb398220 (target 0xb398268), taken when a1 != at(=0x8095) and falls through when a1 == at(=0x8095).
  At `bne` at 0xb398230 (target 0xb398254), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xb398238 (target 0xb39829c), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0xb398244 (target 0xb398268), taken when a1 != at(=0x8063) and falls through when a1 == at(=0x8063).
  At `beq` at 0xb398260 (target 0xb3982b8), taken when a1 == v1(=0xde0) and falls through when a1 != v1(=0xde0).
  At `bne` at 0xb39827c (target 0xb398268), taken when a1 != a2(=0x806f) and falls through when a1 == a2(=0x806f).
  Returns v0 = [a0+101176]:8 (`jr` at 0xb398228).
  Returns v0 = a0+93520 (`jr` at 0xb39824c).
  Returns v0 = 0x0 (`jr` at 0xb398268).
  Returns v0 = [a0+101168]:8 (`jr` at 0xb398284).
  Returns v0 = a0+96064 (`jr` at 0xb398294).
  Returns v0 = [a0+101160]:8 (`jr` at 0xb3982a4).
  Returns v0 = a0+98608 (`jr` at 0xb3982b0).
  Returns v0 = [a0+101152]:8 (`jr` at 0xb3982b8).
- `AllocateGfxMemForTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb398b00 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb398b00-0xb399068 (1384 bytes).
  Stores 4 bytes from s3 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8 (`sw` at 0xb398d98) with value a5.
  Stores 4 bytes from s3 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8 (`sw` at 0xb398dcc) with value a5.
  Stores 4 bytes from s3 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d8 (`sw` at 0xb399064) with value a5.
  Stores 4 bytes from s0 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d4 (`sw` at 0xb398dd0) with value a4.
  Stores 4 bytes from s1 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5d0 (`sw` at 0xb398dd4) with value a3.
  Stores 4 bytes from s2 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5cc (`sw` at 0xb398dd8) with value a2.
  Stores 4 bytes from a3 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c8 (`sw` at 0xb398de0).
  Stores 4 bytes from a2 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5dc (`sw` at 0xb398de8).
  Stores 4 bytes from a1 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e0 (`sw` at 0xb398df0).
  Stores 4 bytes from a0 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e4 (`sw` at 0xb398df8).
  Stores 4 bytes from v1 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5e8 (`sw` at 0xb398e00).
  Stores 4 bytes from v0 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5ec (`sw` at 0xb398e08).
  Stores 4 bytes from ra to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b0 (`sw` at 0xb398e14).
  Stores 4 bytes from at to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5f0 (`sw` at 0xb398e18).
  Stores 4 bytes from t8 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b4 (`sw` at 0xb398e28).
  Stores 4 bytes from v0 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5b8 (`sw` at 0xb398e3c) with value ret(CalcPixelModePixelFormat).
  Stores 4 bytes from t1 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5bc (`sw` at 0xb398e48).
  Stores 4 bytes from t0 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c0 (`sw` at 0xb398e58).
  Stores 4 bytes from a1 to ret(__glOdysseyGetCurrentTexture) +0xb8 (`sw` at 0xb398edc).
  Stores 4 bytes from a0 to ret(__glOdysseyGetCurrentTexture) +0xc0 (`sw` at 0xb398ee0).
  Stores 4 bytes from v0 to ret(__glOdysseyGetCurrentTexture) +0xbc (`sw` at 0xb398ee8).
  Stores 4 bytes from a1 to ret(__glOdysseyGetCurrentTexture) +0xc4 (`sw` at 0xb398ef4).
  Calls `__glOdysseyGetCurrentTexture [0xb3981e0]` via direct with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xb398b58).
  Calls `ChooseSuitableBuzzTexObjFormat [0xb3984c0]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xb398b70).
  Calls `CalcTexelSizes [0xb398920]` via direct with a0=ret(ChooseSuitableBuzzTexObjFormat), a1=sp-288, a2=sp-284, a3=sp-280, a4=sp-276, a5=sp-272, a6=sp-268, a7=sp-264 (`bgezall` at 0xb398ba4).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=?; fp f13=0x3d800000 (`jalr` at 0xb398bd0).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=?; fp f13=0x3d800000 (`jalr` at 0xb398c18).
  Calls `memset` via got with a0=sp-260, a1=0x0, a2=0x28, a3=? (`jalr` at 0xb398c58).
  Calls `__glOdysseyDestroyPMObjGroup [0xb38f4d0]` via register-constant with a0=?, a1=?, a2=?, a3=?, a5=one of 0x0, 0x1, a7=(((a1 << 0x4) + a1) << 0x2) (`jalr` at 0xb398d8c).
  Calls `__glOdysseyCreatePMObj [0xb38f2f0]` via register-constant with a0=?, a1=sp-260, a2=?, a3=a1 at entry (arg1), a7=(a1 << 0x4) (`jalr` at 0xb398dac).
  Calls `CalcPixelModePixelFormat [0xb398ae0]` via direct with a0=?, a1=?, a2=?, a3=? (`bgezall` at 0xb398e2c).
  Calls `__glOdysseyImageLogBase2 [0xb38a9c0]` via register-constant with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xb398f20).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x505, a1=?, a2=?, a3=? (`jalr` at 0xb398fa0).
  Calls `memset` via got with a0=((((a1 << 0x4) + a1) << 0x2) + ret(__glOdysseyGetCurrentTexture))+1456, a1=0x0, a2=0x44, a3=? (`jalr` at 0xb39903c).
  Calls `__glOdysseyDestroyPMObj [0xb38f620]` via register-constant with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=one of 0x0, 0x1, a7=(((a1 << 0x4) + a1) << 0x2) (`jalr` at 0xb399058).
  At `beq` at 0xb398c40 (target 0xb398f1c), taken when s0(=a4) >= 0x2 (signed) and falls through when s0(=a4) < 0x2 (signed).
  At `beq` at 0xb398c94 (target 0xb398f38), taken when s3(=a5) == 0 and falls through when s3(=a5) != 0.
  At `beq` at 0xb398cc8 (target 0xb398f48), taken when s6(=0x8063) == s4(=a0) and falls through when s6(=0x8063) != s4(=a0).
  At `beq` at 0xb398cd0 (target 0xb398f5c), taken when s4(=a0) == t0(=0x8064) and falls through when s4(=a0) != t0(=0x8064).
  At `beq` at 0xb398cd8 (target 0xb398f70), taken when s4(=a0) == t1(=0x8070) and falls through when s4(=a0) != t1(=0x8070).
  At `bne` at 0xb398cf8 (target 0xb398d9c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xb398d0c (target 0xb398dcc), taken when t0(?) == t1(=-0x1) and falls through when t0(?) != t1(=-0x1).
  At `bne` at 0xb398d1c (target 0xb398dcc), taken when t0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1476]) != t3(=0x1) and falls through when t0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1476]) == t3(=0x1).
  At `blez` at 0xb398d28 (target 0xb398d80), taken when t8(=[ret(__glOdysseyGetCurrentTexture)+196]) <= 0 (signed) and falls through when t8(=[ret(__glOdysseyGetCurrentTexture)+196]) > 0 (signed).
  At `beq` at 0xb398d54 (target 0xb398d74), taken when (t9(?) & 0x1) == 0 and falls through when (t9(?) & 0x1) != 0.
  At `beq` at 0xb398d5c (target 0xb398d70), taken when a4(=ret(__glOdysseyGetCurrentTexture)) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))) and falls through when a4(=ret(__glOdysseyGetCurrentTexture)) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  At `bne` at 0xb398d78 (target 0xb399008), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0xb398d80 (target 0xb39904c), taken when a5(=one of 0x0, 0x1) == 0 and falls through when a5(=one of 0x0, 0x1) != 0.
  At `beq` at 0xb398db4 (target 0xb398f84), taken when v0(=ret(__glOdysseyCreatePMObj)) == 0 and falls through when v0(=ret(__glOdysseyCreatePMObj)) != 0.
  At `bne` at 0xb398e54 (target 0xb398ef8), taken when s5(=a1) != 0 and falls through when s5(=a1) == 0.
  At `beq` at 0xb398e7c (target 0xb398e9c), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xb398e94 (target 0xb398e90), taken when s2(?) != 0 and falls through when s2(?) == 0.
  At `beq` at 0xb398ea0 (target 0xb398ebc), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0xb398eb4 (target 0xb398eb0), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0xb398ebc (target 0xb398edc), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0xb398ed4 (target 0xb398ed0), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0xb398f84 (target 0xb399020), taken when s6(=0x8063) == s4(=a0) and falls through when s6(=0x8063) != s4(=a0).
  At `beq` at 0xb398f8c (target 0xb399020), taken when s4(=a0) == t0(=0x8064) and falls through when s4(=a0) != t0(=0x8064).
  At `beq` at 0xb398f94 (target 0xb399020), taken when s4(=a0) == t1(=0x8070) and falls through when s4(=a0) != t1(=0x8070).
  At `beq` at 0xb398fe4 (target 0xb398ff8), taken when a4(?) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))) and falls through when a4(?) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  At `beq` at 0xb399000 (target 0xb398d80), taken when a4(?) >= t2(=(ret(__glOdysseyGetCurrentTexture) + ((([ret(__glOdysseyGetCurrentTexture)+196] << 0x4) + [ret(__glOdysseyGetCurrentTexture)+196]) << 0x2))) (unsigned) and falls through when a4(?) < t2(=(ret(__glOdysseyGetCurrentTexture) + ((([ret(__glOdysseyGetCurrentTexture)+196] << 0x4) + [ret(__glOdysseyGetCurrentTexture)+196]) << 0x2))) (unsigned).
  At `beq` at 0xb399008 (target 0xb398fe0), taken when a4(?) == a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))) and falls through when a4(?) != a6(=(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))).
  Returns v0 = 0x1; f0 = ret(CalcPixelModePixelFormat) (`jr` at 0xb398f14).
  Returns v0 = 0x0 (`jr` at 0xb398fd0).
  The instructions from 0xb398fd8 to 0xb398fdc are not reached by any path from the entry, and their branches are not listed.
- `LoadTextureFromHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb399070 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb399070-0xb399608 (1432 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0xb399110) with value 0x0.
  Stores 4 bytes from a0 to [0x1020]:8 +0xa084 (`sw` at 0xb399354) with value [[0x1020]:8+82420].
  Stores 4 bytes from a0 to [0x1020]:8 +0xa084 (`sw` at 0xb399394).
  Stores 4 bytes from a0 to [0x1020]:8 +0xa084 (`sw` at 0xb3995e4).
  Stores 4 bytes from s8 to [0x1020]:8 +0xa084 (`sw` at 0xb3993bc).
  Stores 4 bytes from t1 to [0x1020]:8 +0xa084 (`sw` at 0xb3993e4).
  Stores 4 bytes from t0 to [0x1020]:8 +0xa084 (`sw` at 0xb399414).
  Stores 4 bytes from t0 to [0x1020]:8 +0xa084 (`sw` at 0xb399450).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xb399468).
  Stores 4 bytes from s8 to abs 0x1030 (`sw` at 0xb39946c) with value 0x2.
  Stores 4 bytes from at to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4 (`sw` at 0xb399478) with value 0x1.
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0xb399488) with value 0x1.
  Calls `__glOdysseyTextureDeactivate [0xb39ac40]` via direct with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xb399104).
  Calls `__glOdysseyGetCurrentTexture [0xb3981e0]` via direct with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=? (`bgezall` at 0xb399130).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496], a2=?, a3=? (`jalr` at 0xb39916c).
  Calls `memset` via got with a0=sp-384, a1=0x0, a2=0x40, a3=? (`jalr` at 0xb3991cc).
  Calls `__glSpecElementsPerGroup [0xb3d72a0]` via register-constant with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=? (`jalr` at 0xb3991f8).
  Calls `__glSpecBytesPerElement [0xb3d7470]` via register-constant with a0=a3 at entry (arg3), a1=?, a2=?, a3=? (`jalr` at 0xb399208).
  Calls `memset` via got with a0=sp-304, a1=0x0, a2=0x40, a3=?, a5=one of 0x0, 0x1 (`jalr` at 0xb3992c4).
  Calls `GetImageFmtEnumFromBuzzTexFormat [0xb3982c0]` via direct with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456], a1=?, a2=0x1, a3=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1460] (`bgezall` at 0xb399338).
  Calls `__glOdysseyImageXfer [0xb359fd0]` via register-constant with a0=sp-304, a1=sp-384, a2=sp-320, a3=0x0, a4=sp-240 (`jalr` at 0xb399430).
  Calls `ceilf` via got with a0=?, a1=?, a2=?, a3=? (`jalr` at 0xb3994ec).
  Calls `__glOdysseyImageXfer [0xb359fd0]` via register-constant with a0=sp-304, a1=sp-384, a2=sp-320, a3=0x0, a4=sp-240 (`jalr` at 0xb399598).
  At `beq` at 0xb3990cc (target 0xb3995e8), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xb3990f4 (target 0xb399114), taken when a1(=[[0x1020]:8+101192]:8) == 0 and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  At `beq` at 0xb399148 (target 0xb3991bc), taken when a1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) == 0 and falls through when a1(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) != 0.
  At `beq` at 0xb399150 (target 0xb39919c), taken when s5(=0x806f) == s1(=a0) and falls through when s5(=0x806f) != s1(=a0).
  At `beq` at 0xb399158 (target 0xb3991a8), taken when s1(=a0) == at(=0xde1) and falls through when s1(=a0) != at(=0xde1).
  At `beq` at 0xb399160 (target 0xb3991b0), taken when s1(=a0) == v1(=0xde0) and falls through when s1(=a0) != v1(=0xde0).
  At `beq` at 0xb399360 (target 0xb3995b8), taken when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == 0 and falls through when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != 0.
  At `beq` at 0xb399368 (target 0xb3995b8), taken when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == at(=0x8) and falls through when s6(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != at(=0x8).
  At `beq` at 0xb399410 (target 0xb39948c), taken when s5(=0x806f) == s1(=a0) and falls through when s5(=0x806f) != s1(=a0).
  At `beq` at 0xb39953c (target 0xb39943c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xb3995a0 (target 0xb399570), taken when s2(?) != s5(?) and falls through when s2(?) == s5(?).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb399194).
  Returns v0 = ? (`jr` at 0xb399484).
  Returns v0 = a4 (`jr` at 0xb399600).
- `LoadTextureFromReadable` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb399610 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb399610-0xb3999d4 (964 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0xb39968c) with value 0x0.
  Stores 4 bytes from a1 to [0x1020]:8 +0xa084 (`sw` at 0xb399818) with value [[0x1020]:8+82420].
  Stores 4 bytes from a1 to [0x1020]:8 +0xa084 (`sw` at 0xb399858).
  Stores 4 bytes from a1 to [0x1020]:8 +0xa084 (`sw` at 0xb3999b4).
  Stores 4 bytes from v1 to [0x1020]:8 +0xa084 (`sw` at 0xb399880).
  Stores 4 bytes from at to [0x1020]:8 +0xa084 (`sw` at 0xb3998a8).
  Stores 4 bytes from t1 to [0x1020]:8 +0xa084 (`sw` at 0xb3998e0).
  Stores 4 bytes from s0 to [0x1020]:8 +0xa084 (`sw` at 0xb399914).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0xb39992c).
  Stores 4 bytes from s2 to abs 0x1030 (`sw` at 0xb399934) with value 0x2.
  Stores 4 bytes from t0 to (ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2)) +0x5c4 (`sw` at 0xb399940) with value 0x1.
  Stores 4 bytes from t0 to ret(__glOdysseyGetCurrentTexture) +0x54c (`sw` at 0xb399948) with value 0x1.
  Calls `__glOdysseyTextureDeactivate [0xb39ac40]` via direct with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`bgezall` at 0xb399680).
  Calls `__glOdysseyGetCurrentTexture [0xb3981e0]` via direct with a0=[0x1020]:8, a1=a0 at entry (arg0), a2=?, a3=? (`bgezall` at 0xb3996b0).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xb3996f8).
  Calls `memset` via got with a0=sp-272, a1=0x0, a2=0x40, a3=? (`jalr` at 0xb399790).
  Calls `GetImageFmtEnumFromBuzzTexFormat [0xb3982c0]` via direct with a0=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456], a1=[ret(__glOdysseyGetCurrentTexture)+1340], a2=0x1, a3=? (`bgezall` at 0xb3997fc).
  Calls `__glOdysseyImageXfer [0xb359fd0]` via register-constant with a0=sp-272, a1=[0x1020]:8+82488, a2=sp-288, a3=0x0, a4=sp-208 (`jalr` at 0xb399900).
  At `beq` at 0xb39964c (target 0xb3999b8), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0xb399670 (target 0xb399690), taken when a1(=[[0x1020]:8+101192]:8) == 0 and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  At `beq` at 0xb3996d4 (target 0xb39973c), taken when a0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) == 0 and falls through when a0(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1496]) != 0.
  At `beq` at 0xb3996dc (target 0xb399728), taken when s6(=0x806f) == s1(=a0) and falls through when s6(=0x806f) != s1(=a0).
  At `beq` at 0xb3996e4 (target 0xb39972c), taken when s1(=a0) == at(=0xde1) and falls through when s1(=a0) != at(=0xde1).
  At `beq` at 0xb3996ec (target 0xb399734), taken when s1(=a0) == v1(=0xde0) and falls through when s1(=a0) != v1(=0xde0).
  At `beq` at 0xb39982c (target 0xb39998c), taken when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == 0 and falls through when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != 0.
  At `beq` at 0xb399838 (target 0xb39998c), taken when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) == at(=0x8) and falls through when a2(=[(ret(__glOdysseyGetCurrentTexture) + (((a1 << 0x4) + a1) << 0x2))+1456]) != at(=0x8).
  At `beq` at 0xb3998dc (target 0xb399958), taken when t0(=0x806f) == s1(=a0) and falls through when t0(=0x806f) != s1(=a0).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb399720).
  Returns v0 = ret(__glOdysseyImageXfer); f0 = ret(__glOdysseyImageXfer) (`jr` at 0xb399950).
  Returns v0 = ? (`jr` at 0xb3999cc).
- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1380 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1380-0xb3a168c (780 bytes).
  Stores 8 bytes from s2 to ? (base unknown) (`sd` at 0xb3a14d4).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0xb3a14e8).
  Stores 4 bytes from v1 to [0x1020]:8 +0x18fe0 (`sw` at 0xb3a14f4) with value ([[0x1020]:8+102368] | 0x200).
  Stores 4 bytes from at to abs 0x1030 (`sw` at 0xb3a14fc) with value 0x2.
  Stores 8 bytes from zero to [0x1020]:8 +0x18b48 (`sd` at 0xb3a1544) with value 0x0.
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xb3a15e4).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=0xde1 (`jalr` at 0xb3a13e4).
  Calls `__glNamesLockData [0xb41f600]` via register-constant with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=one of 0x2, 0xde0, a5=0xde1 (`jalr` at 0xb3a1474).
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=[0x1020]:8, a1=?, a2=?, a3=? (`jalr` at 0xb3a14c8).
  Calls `__glOdysseyTextureDeactivate [0xb39ac40]` via direct with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=?, a3=?, a4=0x116200 (`bgezall` at 0xb3a153c).
  Calls `(unknown callee)` via register with a0=[0x1020]:8, a1=0x9f0, a2=?, a3=? (`jalr` at 0xb3a1574).
  Calls `InitTextureObject [0xb397c50]` via register-constant with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?, a4=ret(?) (`jalr` at 0xb3a159c).
  Calls `__glNamesNewData [0xb41f060]` via register-constant with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a1 at entry (arg1), a3=? (`jalr` at 0xb3a15bc).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=?, a2=?, a3=? (`jalr` at 0xb3a15f4).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x505, a1=?, a2=?, a3=?, a4=ret(?) (`jalr` at 0xb3a1620).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xde0, a5=0xde1 (`jalr` at 0xb3a164c).
  At `beq` at 0xb3a13b8 (target 0xb3a1644), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `beq` at 0xb3a13c0 (target 0xb3a144c), taken when s0(=a0) == a4(=0xde0) and falls through when s0(=a0) != a4(=0xde0).
  At `beq` at 0xb3a13c8 (target 0xb3a1550), taken when s0(=a0) == a5(=0xde1) and falls through when s0(=a0) != a5(=0xde1).
  At `beq` at 0xb3a13d0 (target 0xb3a155c), taken when s0(=a0) == at(=0x8095) and falls through when s0(=a0) != at(=0x8095).
  At `beq` at 0xb3a13d8 (target 0xb3a1408), taken when s0(=a0) == v1(=0x806f) and falls through when s0(=a0) != v1(=0x806f).
  At `bne` at 0xb3a140c (target 0xb3a1458), taken when s3(=a1) != 0 and falls through when s3(=a1) == 0.
  At `beq` at 0xb3a144c (target 0xb3a1414), taken when s3(=a1) == 0 and falls through when s3(=a1) != 0.
  At `beq` at 0xb3a1484 (target 0xb3a1568), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `bne` at 0xb3a1490 (target 0xb3a15e8), taken when a4(?) != s0(=a0) and falls through when a4(?) == s0(=a0).
  At `beq` at 0xb3a14bc (target 0xb3a14d4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xb3a1504 (target 0xb3a1514), taken when a1(=[[0x1020]:8+101192]:8) == 0 and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  At `bne` at 0xb3a150c (target 0xb3a1530), taken when a1(=[[0x1020]:8+101192]:8) != s2(?) and falls through when a1(=[[0x1020]:8+101192]:8) == s2(?).
  At `beq` at 0xb3a1584 (target 0xb3a1618), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0xb3a15cc (target 0xb3a1670), taken when (v0(=ret(__glNamesNewData)) & 0xff) == 0 and falls through when (v0(=ret(__glNamesNewData)) & 0xff) != 0.
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a1400).
  Returns v0 = ? (`jr` at 0xb3a1528).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a1610).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a163c).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a1668).
  Returns v0 = ret(__glNamesNewData); f0 = ret(__glNamesNewData) (`jr` at 0xb3a1684).
- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1690 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1690-0xb3a191c (652 bytes).
  Stores 8 bytes from a0 to table(0x18b20) +0x0 (`sd` at 0xb3a1774) with value table(0x14590).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xb3a1778) with value table(0x14590).
  Stores 4 bytes from v0 to [0x1020]:8 +0x18fdc (`sw` at 0xb3a178c) with value ([[0x1020]:8+102364] | 0x116200).
  Stores 4 bytes from at to abs 0x1030 (`sw` at 0xb3a1794) with value 0x2.
  Stores 8 bytes from zero to [0x1020]:8 +0x18b48 (`sd` at 0xb3a182c) with value 0x0.
  Stores 4 bytes from s2 to [0x1020]:8 +0x18fe0 (`sw` at 0xb3a18a8) with value ([[0x1020]:8+102368] | 0x200).
  Stores 4 bytes from s1 to abs 0x1030 (`sw` at 0xb3a18bc) with value 0x2.
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=[0x1020]:8, a1=?, a2=?, a3=? (`jalr` at 0xb3a1730).
  Calls `__glNamesDeleteRange [0xb4207c0]` via register-constant with a0=[0x1020]:8, a1=?, a2=?, a3=? (`jalr` at 0xb3a1808).
  Calls `__glOdysseyTextureDeactivate [0xb39ac40]` via direct with a0=[0x1020]:8, a1=[[0x1020]:8+101192]:8, a2=?, a3=? (`bgezall` at 0xb3a1824).
  Calls `__glNamesDeleteRange [0xb4207c0]` via register-constant with a0=[0x1020]:8, a1=?, a2=?, a3=? (`jalr` at 0xb3a1850).
  Calls `__glNamesDeleteRange [0xb4207c0]` via register-constant with a0=[0x1020]:8, a1=?, a2=?, a3=? (`jalr` at 0xb3a188c).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3a18d8).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3a18f8).
  At `beq` at 0xb3a16c0 (target 0xb3a18f0), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `bltz` at 0xb3a16c8 (target 0xb3a18d4), taken when s5(=a0) < 0 (signed) and falls through when s5(=a0) >= 0 (signed).
  At `blez` at 0xb3a16f0 (target 0xb3a18cc), taken when s5(=a0) <= 0 (signed) and falls through when s5(=a0) > 0 (signed).
  At `bne` at 0xb3a179c (target 0xb3a17f8), taken when a0(?) != s1(?) and falls through when a0(?) == s1(?).
  At `beq` at 0xb3a17a8 (target 0xb3a1868), taken when s0(?) == s8(=((a0 << 0x2) + a1)) and falls through when s0(?) != s8(=((a0 << 0x2) + a1)).
  At `beq` at 0xb3a17b8 (target 0xb3a17cc), taken when a1(=[[0x1020]:8+101192]:8) == 0 and falls through when a1(=[[0x1020]:8+101192]:8) != 0.
  At `beq` at 0xb3a17c4 (target 0xb3a1820), taken when at(=[[[0x1020]:8+101192]:8+16]) == a0(?) and falls through when at(=[[[0x1020]:8+101192]:8+16]) != a0(?).
  At `beq` at 0xb3a17cc (target 0xb3a183c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xb3a17dc (target 0xb3a1730), taken when v0(?) == a0(?) and falls through when v0(?) != a0(?).
  At `bne` at 0xb3a17e8 (target 0xb3a17d4), taken when s7(=0x4) != s6(?) and falls through when s7(=0x4) == s6(?).
  At `bne` at 0xb3a1834 (target 0xb3a17d4), taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns v0 = ret(__glNamesDeleteRange); f0 = ret(__glNamesDeleteRange) (`jr` at 0xb3a18c4).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a1914).
  The instructions from 0xb3a1728 to 0xb3a172c are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1920 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1920-0xb3a19d8 (184 bytes).
  Calls `__glNamesGenNames [0xb420d10]` via register-constant with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8 (`jalr` at 0xb3a1978).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8 (`jalr` at 0xb3a19a4).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1020]:8 (`jalr` at 0xb3a19c0).
  At `beq` at 0xb3a1944 (target 0xb3a199c), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `bltz` at 0xb3a194c (target 0xb3a19bc), taken when a2(=a0) < 0 (signed) and falls through when a2(=a0) >= 0 (signed).
  At `beq` at 0xb3a1954 (target 0xb3a1990), taken when a3(=a1) == 0 and falls through when a3(=a1) != 0.
  At `beq` at 0xb3a195c (target 0xb3a1990), taken when a2(=a0) == 0 and falls through when a2(=a0) != 0.
  Returns v0 = ret(__glNamesGenNames); f0 = ret(__glNamesGenNames) (`jr` at 0xb3a1988).
  Returns v0 = 0x1 (`jr` at 0xb3a1994).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a19b4).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a19d0).
- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1a50 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1a50-0xb3a1c60 (528 bytes).
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0xb3a1b28) with value one of 0x0, 0x1.
  Calls `__glNamesLockData [0xb41f600]` via register-constant with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=? (`jalr` at 0xb3a1ae0).
  Calls `__glOdysseyIsTextureResident [0xb3a19e0]` via direct with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=? (`bgezall` at 0xb3a1af8).
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=one of 0x0, 0x1, a3=?, a4=0x1 (`jalr` at 0xb3a1b24).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xb3a1b78).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x501, a1=?, a2=?, a3=? (`jalr` at 0xb3a1bbc).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3a1c04).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3a1c34).
  At `beq` at 0xb3a1a88 (target 0xb3a1bfc), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `bltz` at 0xb3a1a90 (target 0xb3a1c30), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `blez` at 0xb3a1abc (target 0xb3a1b3c), taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  At `beq` at 0xb3a1ad0 (target 0xb3a1b74), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xb3a1ae8 (target 0xb3a1bb8), taken when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  At `bnel` at 0xb3a1b34 (target 0xb3a1ad0), taken when at(=((a0 << 0x2) + a1)) != s1(?) and falls through when at(=((a0 << 0x2) + a1)) == s1(?).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xb3a1b6c).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xb3a1bb0).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xb3a1bf4).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xb3a1c28).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xb3a1c58).
- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1c90 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1c90-0xb3a1e14 (388 bytes).
  Stores 4 bytes from $f0 to ret(__glNamesLockData) +0x44 (`swc1` at 0xb3a1d2c) with value ret(Clampf).
  Stores 4 bytes from v0 to [0x1020]:8 +0x18fe0 (`sw` at 0xb3a1dac) with value ([[0x1020]:8+102368] | 0x200).
  Stores 4 bytes from at to abs 0x1030 (`sw` at 0xb3a1dc0) with value 0x2.
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xb3a1d28).
  Calls `__glNamesLockData [0xb41f600]` via register-constant with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=?, a3=? (`jalr` at 0xb3a1d4c).
  Calls `Clampf [0xb3a1c60]` via direct with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1020]:8+3892] (`bgezall` at 0xb3a1d6c).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x501, a1=0x130000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3a1dcc).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=0x130000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3a1df0).
  At `beq` at 0xb3a1cc4 (target 0xb3a1de8), taken when at(=[0x1030]) == v1(=0x1) and falls through when at(=[0x1030]) != v1(=0x1).
  At `bltz` at 0xb3a1ccc (target 0xb3a1dc4), taken when s4(=a0) < 0 (signed) and falls through when s4(=a0) >= 0 (signed).
  At `blez` at 0xb3a1cd8 (target 0xb3a1de0), taken when s4(=a0) <= 0 (signed) and falls through when s4(=a0) > 0 (signed).
  At `beq` at 0xb3a1d30 (target 0xb3a1d7c), taken when s1(?) == s3(=((a0 << 0x2) + a1)) and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  At `beq` at 0xb3a1d3c (target 0xb3a1d30), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xb3a1d54 (target 0xb3a1d30), taken when v0(=ret(__glNamesLockData)) == 0 and falls through when v0(=ret(__glNamesLockData)) != 0.
  Returns v0 = ([[0x1020]:8+102368] | 0x200) (`jr` at 0xb3a1dbc).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3a1e0c).
  The instructions from 0xb3a1d1c to 0xb3a1d1c are not reached by any path from the entry, and their branches are not listed.
- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3a1e20 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3a1e20-0xb3a1ef0 (208 bytes).
  Calls `__glNamesLockData [0xb41f600]` via register-constant with a0=[0x1020]:8, a1=[[0x1020]:8+101184]:8, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xb3a1e68).
  Calls `__glNamesUnlockData [0xb420260]` via register-constant with a0=[0x1020]:8, a1=ret(__glNamesLockData), a2=?, a3=? (`jalr` at 0xb3a1e94).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0xb3a1ed0).
  At `beq` at 0xb3a1e44 (target 0xb3a1ec8), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `beq` at 0xb3a1e4c (target 0xb3a1eb4), taken when a2(=a0) == 0 and falls through when a2(=a0) != 0.
  At `bne` at 0xb3a1e70 (target 0xb3a1e8c), taken when v0(=ret(__glNamesLockData)) != 0 and falls through when v0(=ret(__glNamesLockData)) == 0.
  Returns v0 = 0x0; f0 = ret(__glNamesLockData) (`jr` at 0xb3a1e84).
  Returns v0 = 0x1; f0 = ret(__glNamesUnlockData) (`jr` at 0xb3a1eac).
  Returns v0 = 0x0 (`jr` at 0xb3a1ec0).
  Returns v0 = 0x0; f0 = ret(__glSetError) (`jr` at 0xb3a1ee8).
- `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3b70b0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3b70b0-0xb3b719c (236 bytes).
  Stores 4 bytes from $f2 to a2 (arg2 at entry) +0x0 (`swc1` at 0xb3b7168).
  Stores 4 bytes from $f0 to a2 (arg2 at entry) +0x4 (`swc1` at 0xb3b7178).
  Stores 4 bytes from $f5 to a2 (arg2 at entry) +0x0 (`swc1` at 0xb3b7180) with value [a0+3888].
  Stores 4 bytes from $f3 to a2 (arg2 at entry) +0x4 (`swc1` at 0xb3b7188) with value [a0+3888].
  Calls `(unknown callee)` via register with a0=sp-80, a1=a1+108, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3b70d8).
  Calls `Dot [0xb3b7080]` via direct with a0=a1+44, a1=sp-80, a2=?, a3=? (`bgezall` at 0xb3b70ec).
  At `bc3f` at 0xb3b711c (target 0xb3bba00), taken when (condition not decoded) -> outside and falls through when (condition not decoded).
  At `bc1t` at 0xb3b7154 (target 0xb3b717c), taken when f6 == f0(=0x0) (c.eq.s at 0xb3b7148) and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xb3b7148)).
  Returns v0 = ret(Dot) (`jr` at 0xb3b7194).
- `grow_region` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3c0c40 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3c0c40-0xb3c0e60 (544 bytes).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x20 (`sd` at 0xb3c0cd8) with value ret(?).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0xb3c0d30) with value -0x1.
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0xb3c0d60).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0xb3c0d38) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0xb3c0d6c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0xb3c0d84) with value 0x0.
  4 such accesses: Stores 4 bytes from a1 to ? (base unknown) (including `sw` at 0xb3c0d40, 0xb3c0d74, 0xb3c0d78).
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0xb3c0dc8) with value [a0+28].
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0xb3c0de8).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0xb3c0e00).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0xb3c0e0c).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x4 (`sw` at 0xb3c0e14).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x10 (`sw` at 0xb3c0e18).
  Stores 4 bytes from ra to a0 (arg0 at entry) +0x1c (`sw` at 0xb3c0e28) with value [a0+4].
  Stores 8 bytes from at to a0 (arg0 at entry) +0x8 (`sd` at 0xb3c0e30).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0x14 (`sw` at 0xb3c0e3c) with value ([a0+20] + a1).
  Calls `(unknown callee)` via register with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xb3c0c68).
  Calls `(unknown callee)` via register with a0=?, a1=[a0+32]:8, a2=?, a3=?, a4=a1 at entry (arg1), a5=[a0] (`jalr` at 0xb3c0cd0).
  At `bne` at 0xb3c0c70 (target 0xb3c0c8c), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0xb3c0ce0 (target 0xb3c0e4c), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bne` at 0xb3c0d10 (target 0xb3c0dac), taken when a0(?) < a1(=[a0+4]) (signed) and falls through when a0(?) >= a1(=[a0+4]) (signed).
  At `beq` at 0xb3c0d28 (target 0xb3c0d54), taken when (t0(?) & 0x1) == 0 and falls through when (t0(?) & 0x1) != 0.
  At `bltz` at 0xb3c0d34 (target 0xb3c0d44), taken when a5(=-0x1) < 0 (signed) and falls through when a5(=-0x1) >= 0 (signed).
  At `beq` at 0xb3c0d54 (target 0xb3c0dac), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bltz` at 0xb3c0d68 (target 0xb3c0d78), taken when a5(?) < 0 (signed) and falls through when a5(?) >= 0 (signed).
  At `bltz` at 0xb3c0d88 (target 0xb3c0d98), taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  At `bne` at 0xb3c0da4 (target 0xb3c0d60), taken when a6(?) != a1(?) and falls through when a6(?) == a1(?).
  At `beq` at 0xb3c0db4 (target 0xb3c0e10), taken when v1(=[a0+24]) == 0 and falls through when v1(=[a0+24]) != 0.
  Returns v0 = -0x1; f0 = ret(?) (`jr` at 0xb3c0c84).
  Returns v0 = 0x0; f0 = ret(?) (`jr` at 0xb3c0e44).
  Returns v0 = -0x1; f0 = ret(?) (`jr` at 0xb3c0e58).
- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3e76f0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3e76f0-0xb3e78dc (492 bytes).
  Stores 4 bytes from v0 to [0x1020]:8 +0x870 (`sw` at 0xb3e773c) with value one of 0x404, 0x408.
  Stores 4 bytes from a0 to [0x1020]:8 +0x874 (`sw` at 0xb3e7740) with value a0.
  Stores 4 bytes from v0 to abs 0x1030 (`sw` at 0xb3e7748) with value 0x2.
  Stores 4 bytes from at to [0x1020]:8 +0x456c (`sw` at 0xb3e7760) with value ([[0x1020]:8+17772] | 0x1).
  Stores 4 bytes from at to [0x1020]:8 +0x870 (`sw` at 0xb3e779c) with value 0x405.
  Stores 4 bytes from a1 to [0x1020]:8 +0x870 (`sw` at 0xb3e77b8) with value 0x404.
  Stores 4 bytes from a0 to [0x1020]:8 +0x870 (`sw` at 0xb3e77e8) with value a0.
  Stores 4 bytes from zero to [0x1020]:8 +0x870 (`sw` at 0xb3e77f8) with value 0x0.
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x500, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3) (`jalr` at 0xb3e7810).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3) (`jalr` at 0xb3e7864).
  Calls `__glSetError [0xb3f83f0]` via register-constant with a0=0x502, a1=?, a2=[0x1020]:8, a3=a3 at entry (arg3) (`jalr` at 0xb3e78c4).
  At `beq` at 0xb3e7710 (target 0xb3e78bc), taken when at(=[0x1030]) == v0(=0x1) and falls through when at(=[0x1030]) != v0(=0x1).
  At `bne` at 0xb3e7718 (target 0xb3e7764), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0xb3e7728 (target 0xb3e77bc), taken when a0 >= 0x407 (unsigned) and falls through when a0 < 0x407 (unsigned).
  At `bne` at 0xb3e7764 (target 0xb3e77a0), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xb3e776c (target 0xb3e778c), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0xb3e7774 (target 0xb3e787c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xb3e777c (target 0xb3e77b0), taken when v0(?) != 0 -> outside and falls through when v0(?) == 0.
  At `bne` at 0xb3e7784 (target 0xb3e780c), taken when a0 != v1(=0x405) and falls through when a0 == v1(=0x405).
  At `beq` at 0xb3e7790 (target 0xb3e785c), taken when a1(=[[0x1020]:8+3566]:1) == 0 and falls through when a1(=[[0x1020]:8+3566]:1) != 0.
  At `bne` at 0xb3e77a4 (target 0xb3e77ec), taken when a0 < 0x400 (unsigned) and falls through when a0 >= 0x400 (unsigned).
  At `beq` at 0xb3e77ac (target 0xb3e77fc), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0xb3e77c0 (target 0xb3e7828), taken when a0 < 0x40a (unsigned) and falls through when a0 >= 0x40a (unsigned).
  At `beq` at 0xb3e77c8 (target 0xb3e7890), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0xb3e77dc (target 0xb3e7860), taken when v1(=a0-1033) >= a1(=[[0x1020]:8+3640]) (signed) and falls through when v1(=a0-1033) < a1(=[[0x1020]:8+3640]) (signed).
  At `bne` at 0xb3e77ec (target 0xb3e780c), taken when a0 != 0 and falls through when a0 == 0.
  At `beq` at 0xb3e7800 (target 0xb3e785c), taken when a0 == at(=0x401) and falls through when a0 != at(=0x401).
  At `bne` at 0xb3e782c (target 0xb3e7850), taken when a0 < 0x408 (unsigned) and falls through when a0 >= 0x408 (unsigned).
  At `bne` at 0xb3e7834 (target 0xb3e7730), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `bne` at 0xb3e7840 (target 0xb3e780c), taken when a0 != a1(=0x409) and falls through when a0 == a1(=0x409).
  At `bne` at 0xb3e7854 (target 0xb3e7808), taken when a0 != at(=0x407) and falls through when a0 == at(=0x407).
  At `bne` at 0xb3e7880 (target 0xb3e780c), taken when a0 != v0(=0x403) and falls through when a0 == v0(=0x403).
  At `bne` at 0xb3e7890 (target 0xb3e78a8), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0xb3e7898 (target 0xb3e780c), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0xb3e78ac (target 0xb3e780c), taken when a0 != at(=0x40b) and falls through when a0 == at(=0x40b).
  Returns v0 = 0x2 (`jr` at 0xb3e775c).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3e7820).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3e7874).
  Returns v0 = ret(__glSetError); f0 = ret(__glSetError) (`jr` at 0xb3e78d4).
- `StoreGREATER` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fad20 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fad20-0xb3fad94 (116 bytes).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0xb3fad88).
  At `beq` at 0xb3fad78 (target 0xb3fad8c), taken when at(?) >= a5(?) (unsigned) and falls through when at(?) < a5(?) (unsigned).
  Returns v0 = 0x1 (`jr` at 0xb3fad84).
  Returns v0 = 0x0 (`jr` at 0xb3fad8c).
- `StoreGREATER_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fada0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fada0-0xb3fae14 (116 bytes).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0xb3fae08).
  At `beq` at 0xb3fadf8 (target 0xb3fae0c), taken when at(?) >= a5(?) (signed) and falls through when at(?) < a5(?) (signed).
  Returns v0 = 0x1 (`jr` at 0xb3fae04).
  Returns v0 = 0x0 (`jr` at 0xb3fae0c).
- `StoreGEQUAL` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fae90 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fae90-0xb3faf04 (116 bytes).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0xb3faef8).
  At `bne` at 0xb3faee8 (target 0xb3faefc), taken when a5(?) < at(?) (unsigned) and falls through when a5(?) >= at(?) (unsigned).
  Returns v0 = 0x1 (`jr` at 0xb3faef4).
  Returns v0 = 0x0 (`jr` at 0xb3faefc).
- `StoreGEQUAL_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3faf10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3faf10-0xb3faf84 (116 bytes).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0xb3faf78).
  At `bne` at 0xb3faf68 (target 0xb3faf7c), taken when a5(?) < at(?) (signed) and falls through when a5(?) >= at(?) (signed).
  Returns v0 = 0x1 (`jr` at 0xb3faf74).
  Returns v0 = 0x0 (`jr` at 0xb3faf7c).
- `StoreGREATER_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb1d0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb1d0-0xb3fb22c (92 bytes).
  Returns v0 = ? (`jr` at 0xb3fb224).
- `StoreGREATER_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb230 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb230-0xb3fb28c (92 bytes).
  Returns v0 = ? (`jr` at 0xb3fb284).
- `StoreGEQUAL_W` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb2f0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb2f0-0xb3fb350 (96 bytes).
  Returns v0 = ? (`jr` at 0xb3fb348).
- `StoreGEQUAL_W_s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb3fb350 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb3fb350-0xb3fb3b0 (96 bytes).
  Returns v0 = ? (`jr` at 0xb3fb3a8).
- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4438a0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4438a0-0xb4438e8 (72 bytes).
  At `beq` at 0xb4438a8 (target 0xb4438d4), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xb4438b0 (target 0xb4438dc), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xb4438b8 (target 0xb4438c8), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  Returns v0 = 0x0 (`jr` at 0xb4438c0).
  Returns v0 = [a0+2752]:8+448 (`jr` at 0xb4438cc).
  Returns v0 = [a0+2752]:8 (`jr` at 0xb4438d4).
  Returns v0 = [a0+2752]:8+224 (`jr` at 0xb4438e0).
- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb4438f0 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb4438f0-0xb44393c (76 bytes).
  At `beq` at 0xb4438f8 (target 0xb443924), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xb443900 (target 0xb443930), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xb443908 (target 0xb443918), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  Returns v0 = 0x0 (`jr` at 0xb443910).
  Returns v0 = [a0+2752]:8+664 (`jr` at 0xb44391c).
  Returns v0 = [a0+2752]:8+216 (`jr` at 0xb443928).
  Returns v0 = [a0+2752]:8+440 (`jr` at 0xb443934).
- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443940 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443940-0xb4439f8 (184 bytes).
  At `beq` at 0xb44394c (target 0xb443994), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xb443954 (target 0xb4439a8), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xb44395c (target 0xb4439bc), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  At `beq` at 0xb443964 (target 0xb4439d0), taken when a1 == a2(=0x8063) and falls through when a1 != a2(=0x8063).
  At `beq` at 0xb44396c (target 0xb4439e4), taken when a1 == at(=0x8064) and falls through when a1 != at(=0x8064).
  At `beq` at 0xb443974 (target 0xb443984), taken when a1 == v0(=0x8070) and falls through when a1 != v0(=0x8070).
  Returns v0 = 0x0 (`jr` at 0xb44397c).
  Returns v0 = [[a0+36448]:8+40]:8 (`jr` at 0xb44398c).
  Returns v0 = [[a0+36448]:8]:8 (`jr` at 0xb4439a0).
  Returns v0 = [[a0+36448]:8+8]:8 (`jr` at 0xb4439b4).
  Returns v0 = [[a0+36448]:8+16]:8 (`jr` at 0xb4439c8).
  Returns v0 = [[a0+36448]:8+24]:8 (`jr` at 0xb4439dc).
  Returns v0 = [[a0+36448]:8+32]:8 (`jr` at 0xb4439f0).
- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443a00 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443a00-0xb443a60 (96 bytes).
  At `beq` at 0xb443a08 (target 0xb443a3c), taken when a1 == at(=0xde0) and falls through when a1 != at(=0xde0).
  At `beq` at 0xb443a10 (target 0xb443a50), taken when a1 == v0(=0xde1) and falls through when a1 != v0(=0xde1).
  At `beq` at 0xb443a18 (target 0xb443a28), taken when a1 == v1(=0x806f) and falls through when a1 != v1(=0x806f).
  Returns v0 = 0x0 (`jr` at 0xb443a20).
  Returns v0 = [[a0+36456]:8+16]:8 (`jr` at 0xb443a34).
  Returns v0 = [[a0+36456]:8]:8 (`jr` at 0xb443a48).
  Returns v0 = [[a0+36456]:8+8]:8 (`jr` at 0xb443a58).
- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb443b10 (n64).
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xb443b10-0xb443b4c (60 bytes).
  Stores 4 bytes from a2 to a1 (arg1 at entry) +0xf8 (`sw` at 0xb443b10) with value a2.
  Stores 1 byte from zero to a1 (arg1 at entry) +0x14 (`sb` at 0xb443b18) with value 0x0.
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x10 (`sw` at 0xb443b20) with value a3.
  Stores 8 bytes from a0 to a1 (arg1 at entry) +0x128 (`sd` at 0xb443b34) with value 0xb443ad0.
  Stores 8 bytes from v1 to a1 (arg1 at entry) +0x120 (`sd` at 0xb443b38) with value 0xb443a90.
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x8 (`sd` at 0xb443b40) with value 0xb456aa0.
  Stores 4 bytes from $f0 to a1 (arg1 at entry) +0xfc (`swc1` at 0xb443b48) with value 0x3f800000.
  Returns v0 = 0xb456aa0; f0 = 0x3f800000 (`jr` at 0xb443b44).
