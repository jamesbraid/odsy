# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These facts describe software behavior in the named build; they do not establish hardware behavior.

Skipped 44,479 located rows and 5,577 understood rows because those already have facts-only or documented entries, plus 204 named-only or undocumented rows with an exact binary, member, and routine entry in the documentation.

- `_endexceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xd7b0-0xd800.

- `_exceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xd7b0-0xd800.

- `_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xd7b0-0xd800.

- `eutlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd81c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd81c-0xd880 (100 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xd81c-0xd880.

- `elpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd930 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd930-0xd980 (80 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xd930-0xd980.

- `eutlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdba8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdba8-0xdbb0 (8 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0xdba8-0xdbb0.

- `save_err_router_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13274 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13274-0x1340c (408 bytes).
  Loads 8 bytes into a4 from sym(.lit8) +0x40 (`ld` at 0x13274).
  Loads 1 byte into v0 from a1 (arg1 at entry) +0x17 (`lbu` at 0x13298).
  Loads 1 byte into v0 from a1 (arg1 at entry) +0x17 (`lbu` at 0x132f8).
  Loads 1 byte into v0 from a1 (arg1 at entry) +0x17 (`lbu` at 0x133b0).
  Loads 1 byte into v0 from a1 (arg1 at entry) +0x17 (`lbu` at 0x133e8).
  Loads 4 bytes into s5 from ? (base unknown) (`lw` at 0x13310).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0x13390).
  Loads 1 byte into t9 from ? (base unknown) (`lbu` at 0x13320).
  Loads 8 bytes into t9 from (a0 << 0x21) -0x6fffffffcc000000 (`ld` at 0x1332c).
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x13344).
  Loads 4 bytes into v1 from ? (base unknown) (`lw` at 0x13350).
  Loads 4 bytes into s5 from a1 (arg1 at entry) +0x24 (`lw` at 0x13408).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x13368).
  Calls `klcfg_discover_route` via direct with a0=ret(find_lboard), a1=a1 at entry (arg1), a2=0x0, a3=? (`jal` at 0x1337c).
  Calls `save_router_err` via direct with a0=a0 at entry (arg0), a1=ret(klcfg_discover_route), a2=?, a3=? (`jal` at 0x133a4).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x133ec).
  At `blez` at 0x132bc (target 0x133b4), taken when v0(=[a1+23]:1) <= 0 (signed) and falls through when v0(=[a1+23]:1) > 0 (signed).
  At `beq` at 0x13308 (target 0x133b4), taken when s0(?) >= v0(=[a1+23]:1) (signed) and falls through when s0(?) < v0(=[a1+23]:1) (signed).
  At `bne` at 0x13324 (target 0x132fc), taken when s6(=0x9) != t9(?) and falls through when s6(=0x9) == t9(?).
  At `beq` at 0x1333c (target 0x133ec), taken when t8(=0xc000) == t9(?) and falls through when t8(=0xc000) != t9(?).
  At `beq` at 0x1335c (target 0x13368), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x13370 (target 0x132f8), taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  At `beq` at 0x13388 (target 0x133e4), taken when a1(=-0x1) == v0(=ret(klcfg_discover_route)) and falls through when a1(=-0x1) != v0(=ret(klcfg_discover_route)).
  Returns v0 = [a1+23]:1 (`jr` at 0x133dc).

- `save_router_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1340c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1340c-0x13544 (312 bytes).
  Stores 8 bytes from s3 to ? (base unknown)  (`sd` at 0x134dc).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x13540).
  Calls `bzero` via direct with a0=a2 at entry (arg2), a1=0x58, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13430).
  Calls `vector_read_node` via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=0x0, a4=sp-96 (`jal` at 0x1345c).
  Calls `vector_read_node` via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=? (`jal` at 0x1350c).
  At `bltz` at 0x13478 (target 0x134d0), taken when s3(=ret(vector_read_node)) < 0 (signed) and falls through when s3(=ret(vector_read_node)) >= 0 (signed).
  At `beq` at 0x13488 (target 0x134e0), taken when (at(?) & v0(?)) == 0 and falls through when (at(?) & v0(?)) != 0.
  At `bne` at 0x1349c (target 0x13478), taken when s1(?) < 0x9 (signed) and falls through when s1(?) >= 0x9 (signed).
  At `bltz` at 0x13518 (target 0x1353c), taken when v0(=ret(vector_read_node)) < 0 (signed) and falls through when v0(=ret(vector_read_node)) >= 0 (signed).
  At `bne` at 0x1352c (target 0x13478), taken when a0(?) < 0x9 (signed) and falls through when a0(?) >= 0x9 (signed).
  Returns v0 = ? (`jr` at 0x134c8).

- `save_err_xbow_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13544 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13544-0x1362c (232 bytes).
  Loads 1 byte into a4 from a1 (arg1 at entry) +0x17 (`lbu` at 0x13558).
  Loads 4 bytes into a5 from ? (base unknown) (`lw` at 0x135a4).
  Loads 4 bytes into a1 from ? (base unknown) (`lw` at 0x135f4).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x135b4).
  Loads 1 byte into a4 from a1 (arg1 at entry) +0x17 (`lbu` at 0x13610).
  Calls `save_xbow_err` via direct with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?, a4=[a1+23]:1 (`jal` at 0x13608).
  At `blez` at 0x1356c (target 0x135d0), taken when a4(=[a1+23]:1) <= 0 (signed) and falls through when a4(=[a1+23]:1) > 0 (signed).
  At `beq` at 0x135b8 (target 0x135f4), taken when s5(=0x4) == t8(?) and falls through when s5(=0x4) != t8(?).
  At `bne` at 0x135c8 (target 0x135a0), taken when s0(?) < a4(=[a1+23]:1) (signed) and falls through when s0(?) >= a4(=[a1+23]:1) (signed).
  At `bne` at 0x1361c (target 0x135a0), taken when s0(?) < a4(=[a1+23]:1) (signed) and falls through when s0(?) >= a4(=[a1+23]:1) (signed).
  Returns v0 = ? (`jr` at 0x135ec).

- `save_hub_pi_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1362c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1362c-0x13704 (216 bytes).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x400 (`ld` at 0x13650).
  Stores 8 bytes from a1 to a1 (arg1 at entry) +0x10  (`sd` at 0x13654).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x50 (`ld` at 0x13658).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x58 (`ld` at 0x13668).
  Loads 8 bytes into t2 from sym(.lit8) +0x118 (`ld` at 0x13670).
  Loads 8 bytes into v1 from a0 (arg0 at entry) +0x430 (`ld` at 0x13674).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x430 (`ld` at 0x13688).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x28  (`sd` at 0x1368c).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x440 (`ld` at 0x13690).
  Stores 8 bytes from a0 to a1 (arg1 at entry) +0x38  (`sd` at 0x13694).
  Loads 8 bytes into a3 from a0 (arg0 at entry) +0x450 (`ld` at 0x13698).
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x450 (`ld` at 0x136a8).
  Stores 8 bytes from a5 to a1 (arg1 at entry) +0x30  (`sd` at 0x136ac).
  Loads 8 bytes into a4 from a0 (arg0 at entry) +0x460 (`ld` at 0x136b0).
  Stores 8 bytes from a4 to a1 (arg1 at entry) +0x40  (`sd` at 0x136b4).
  Loads 8 bytes into a6 from a0 (arg0 at entry) +0x4c8 (`ld` at 0x136b8).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x4c8 (`ld` at 0x136c8).
  Stores 8 bytes from t0 to a1 (arg1 at entry) +0x48  (`sd` at 0x136cc).
  Loads 8 bytes into a7 from a0 (arg0 at entry) +0x4d0 (`ld` at 0x136d0).
  Stores 8 bytes from a7 to a1 (arg1 at entry) +0x50  (`sd` at 0x136d4).
  Loads 8 bytes into t1 from sym(.lit8) +0x110 (`ld` at 0x136e8).
  Stores 8 bytes from a1 to a1 (arg1 at entry) +0x10 (`sd` at 0x136f4).
  Stores 8 bytes from t2 to a1 (arg1 at entry) +0x10 (`sd` at 0x13700).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x60, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13648).
  At `beq` at 0x13660 (target 0x136e8), taken when at(=[a0+80]:8) == 0 and falls through when at(=[a0+80]:8) != 0.
  At `beq` at 0x1366c (target 0x136f8), taken when v0(=[a0+88]:8) == 0 and falls through when v0(=[a0+88]:8) != 0.
  At `beq` at 0x13680 (target 0x13698), taken when (a1(=0x8000000000000000) & v1(=[a0+1072]:8)) == 0 and falls through when (a1(=0x8000000000000000) & v1(=[a0+1072]:8)) != 0.
  At `beq` at 0x136a0 (target 0x136b8), taken when (a1(=0x8000000000000000) & a3(=[a0+1104]:8)) == 0 and falls through when (a1(=0x8000000000000000) & a3(=[a0+1104]:8)) != 0.
  At `beq` at 0x136c0 (target 0x136d8), taken when (a1(=0x8000000000000000) & a6(=[a0+1224]:8)) == 0 and falls through when (a1(=0x8000000000000000) & a6(=[a0+1224]:8)) != 0.
  Returns v0 = [a0+88]:8 (`jr` at 0x136e0).

- `save_hub_md_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13704 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13704-0x137f0 (236 bytes).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x7c0010 (`ld` at 0x13730).
  Stores 8 bytes from a1 to a1 (arg1 at entry) +0x8  (`sd` at 0x1374c).
  Stores 8 bytes from a1 to a1 (arg1 at entry) +0x8  (`sd` at 0x137c8).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x7e0010 (`ld` at 0x13750).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x18  (`sd` at 0x13768).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x7c0020 (`ld` at 0x1376c).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x28  (`sd` at 0x1377c).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x780040 (`ld` at 0x13780).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x38  (`sd` at 0x1378c).
  Loads 8 bytes into t2 from a0 (arg0 at entry) +0x780048 (`ld` at 0x13790).
  Stores 8 bytes from t2 to a1 (arg1 at entry) +0x40  (`sd` at 0x13794).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x58, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13720).
  At `beq` at 0x13744 (target 0x137a4), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x13760 (target 0x137cc), taken when (t0(?) & 0x3) == 0 and falls through when (t0(?) & 0x3) != 0.
  At `beq` at 0x13774 (target 0x13780), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0x13784 (target 0x13798), taken when a2(=[a0+7864384]:8) == 0 and falls through when a2(=[a0+7864384]:8) != 0.
  At `bltz` at 0x137ac (target 0x1374c), taken when t3(=([a0+8126480]:8 << 0x1)) < 0 (signed) and falls through when t3(=([a0+8126480]:8 << 0x1)) >= 0 (signed).
  At `bltz` at 0x137b4 (target 0x1374c), taken when a2(=([a0+8126480]:8 << 0x2)) < 0 (signed) and falls through when a2(=([a0+8126480]:8 << 0x2)) >= 0 (signed).
  At `bgez` at 0x137bc (target 0x13750), taken when a7(=([a0+8126480]:8 << 0x3)) >= 0 (signed) and falls through when a7(=([a0+8126480]:8 << 0x3)) < 0 (signed).
  At `bne` at 0x137d8 (target 0x13768), taken when (a5(?) & 0x3) != 0 and falls through when (a5(?) & 0x3) == 0.
  At `bne` at 0x137e0 (target 0x13768), taken when a3(?) != 0 and falls through when a3(?) == 0.
  Returns v0 = ret(bzero) (`jr` at 0x1379c).

- `save_hub_io_crb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x137f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x137f0-0x1384c (92 bytes).
  Loads 8 bytes into a7 from ? (base unknown) (`ld` at 0x13814).
  Loads 8 bytes into t3 from ? (base unknown) (`ld` at 0x1381c).
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0x13818).
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0x13840).
  At `bne` at 0x1383c (target 0x13800), taken when a3(?) < 0xf (signed) and falls through when a3(?) >= 0xf (signed).
  Returns v0 = ? (`jr` at 0x13844).

- `save_hub_io_ieph` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1384c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1384c-0x13868 (28 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x400220 (`ld` at 0x13854).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0xb8  (`sd` at 0x13858).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x400228 (`ld` at 0x1385c).
  Stores 8 bytes from at to a1 (arg1 at entry) +0xc0  (`sd` at 0x13864).
  Returns v0 = [a0+4194848]:8 (`jr` at 0x13860).

- `save_hub_io_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13868 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13868-0x1390c (164 bytes).
  Loads 8 bytes into a3 from a0 (arg0 at entry) +0x400008 (`ld` at 0x1389c).
  Stores 8 bytes from a3 to a1 (arg1 at entry) +0x8  (`sd` at 0x138a4).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x410000 (`ld` at 0x138a8).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x88  (`sd` at 0x138ac).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x410008 (`ld` at 0x138b0).
  Stores 8 bytes from a1 to a1 (arg1 at entry) +0x98  (`sd` at 0x138b4).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x410010 (`ld` at 0x138bc).
  Stores 8 bytes from a0 to a1 (arg1 at entry) +0xa8  (`sd` at 0x138c4).
  Loads 8 bytes into v1 from a0 (arg0 at entry) +0x420000 (`ld` at 0x138c8).
  Stores 8 bytes from v1 to a1 (arg1 at entry) +0x90  (`sd` at 0x138cc).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x420008 (`ld` at 0x138d0).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0xa0  (`sd` at 0x138d4).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x420010 (`ld` at 0x138dc).
  Stores 8 bytes from at to a1 (arg1 at entry) +0xb0  (`sd` at 0x138e8).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0xd0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13884).
  Calls `save_hub_io_crb` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+4259840]:8, a3=[a0+4194312]:8 (`jal` at 0x138e4).
  Calls `save_hub_io_ieph` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x138f0).
  Returns v0 = ret(save_hub_io_ieph) (`jr` at 0x13904).

- `save_hub_err_ext` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1390c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1390c-0x139c4 (184 bytes).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x13958).
  Stores 8 bytes from v0 to ? (base unknown) (`sd` at 0x1395c).
  Loads 8 bytes into v1 from ? (base unknown) (`ld` at 0x13980).
  Stores 8 bytes from v1 to ? (base unknown) (`sd` at 0x13988).
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x139a8).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0x139b0).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0xc0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13928).
  At `beq` at 0x13960 (target 0x1398c), taken when a2(?) >= 0xf (signed) and falls through when a2(?) < 0xf (signed).
  At `bne` at 0x13984 (target 0x1393c), taken when a2(?) < 0xf (signed) and falls through when a2(?) >= 0xf (signed).
  At `bne` at 0x139ac (target 0x13990), taken when a2(?) < 0x9 (signed) and falls through when a2(?) >= 0x9 (signed).
  Returns v0 = ? (`jr` at 0x139bc).

- `save_hub_ni_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x139c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x139c4-0x13a28 (100 bytes).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x680100 (`ld` at 0x139f0).
  Stores 8 bytes from at to a1 (arg1 at entry) +0x8  (`sd` at 0x13a00).
  Loads 8 bytes into a4 from a0 (arg0 at entry) +0x680108 (`ld` at 0x13a04).
  Stores 8 bytes from a4 to a1 (arg1 at entry) +0x10  (`sd` at 0x13a08).
  Loads 8 bytes into a3 from a0 (arg0 at entry) +0x680110 (`ld` at 0x13a0c).
  Stores 8 bytes from a3 to a1 (arg1 at entry) +0x18  (`sd` at 0x13a10).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x680118 (`ld` at 0x13a14).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x20  (`sd` at 0x13a18).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x139e0).
  At `beq` at 0x139fc (target 0x13a1c), taken when at(=[a0+6816000]:8) == 0 and falls through when at(=[a0+6816000]:8) != 0.
  Returns v0 = ret(bzero) (`jr` at 0x13a20).

- `save_hub_lb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13a28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13a28-0x13ab0 (136 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x604040 (`ld` at 0x13a54).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x8  (`sd` at 0x13a58).
  Loads 8 bytes into a3 from a0 (arg0 at entry) +0x604050 (`ld` at 0x13a5c).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x60c020 (`ld` at 0x13a78).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x28  (`sd` at 0x13a88).
  Stores 8 bytes from a3 to a1 (arg1 at entry) +0x10  (`sd` at 0x13a98).
  Loads 8 bytes into a7 from a0 (arg0 at entry) +0x604058 (`ld` at 0x13a9c).
  Stores 8 bytes from a7 to a1 (arg1 at entry) +0x18  (`sd` at 0x13aa0).
  Loads 8 bytes into a6 from a0 (arg0 at entry) +0x604060 (`ld` at 0x13aa4).
  Stores 8 bytes from a6 to a1 (arg1 at entry) +0x20  (`sd` at 0x13aac).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x38, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13a44).
  At `bltz` at 0x13a70 (target 0x13a98), taken when at(=([a0+6307920]:8 << 0x13)) < 0 (signed) and falls through when at(=([a0+6307920]:8 << 0x13)) >= 0 (signed).
  At `beq` at 0x13a80 (target 0x13a8c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  Returns v0 = [a0+6307904]:8 (`jr` at 0x13a90).

- `save_hub_xb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13ab0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13ab0-0x13bf8 (328 bytes).
  Loads 8 bytes into a3 from a0 (arg0 at entry) +0x700090 (`ld` at 0x13adc).
  Loads 8 bytes into a4 from sym(.srdata) +0x228 (`ld` at 0x13b00).
  Loads 8 bytes into s0 from sym(.srdata) +0x228 (`ld` at 0x13b30).
  Stores 8 bytes from a3 to a1 (arg1 at entry) +0x8  (`sd` at 0x13b14).
  Loads 8 bytes into a2 from table(sym(.rodata)+7952) +0x0 (`ld` at 0x13b20).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x13acc).
  Calls `printf` via direct with a0=sym(.rodata)+7952, a1=?, a2=?, a3=[a0+7340176]:8, a4=table(sym(.rodata)+7952) (`jal` at 0x13b38).
  Calls `printf` via direct with a0=sym(.rodata)+7952, a1=?, a2=?, a3=? (`jal` at 0x13b40).
  At `bltz` at 0x13ae4 (target 0x13b00), taken when at(=([a0+7340176]:8 << 0x33)) < 0 (signed) and falls through when at(=([a0+7340176]:8 << 0x33)) >= 0 (signed).
  At `beq` at 0x13b18 (target 0x13b2c), taken when a1(?) >= 0x10 (unsigned) and falls through when a1(?) < 0x10 (unsigned).
  At `beq` at 0x13b54 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13b60 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13b6c (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13b78 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13b84 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13b90 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13b9c (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13ba8 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13bb4 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13bc0 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13bcc (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13bd8 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13be4 (target 0x13aec), the condition is not analyzed.
  At `beq` at 0x13bf0 (target 0x13aec), the condition is not analyzed.
  The instructions from 0x13b50 to 0x13bf4 are not reached by any path from the entry, and their branches are not listed.

- `save_hub_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13bf8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13bf8-0x13d98 (416 bytes).
  Loads 8 bytes into a7 from sym(.lit8) +0x60 (`ld` at 0x13bf8).
  Loads 4 bytes into a5 from a2 (arg2 at entry) +0xc (`lw` at 0x13c0c).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x13c68).
  Loads 4 bytes into a1 from a1 (arg1 at entry) +0x4f4 (`lw` at 0x13ce4).
  Loads 8 bytes into s0 from sym(.lit8) +0x120 (`ld` at 0x13d48).
  Calls `save_hub_pi_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13c78).
  Calls `bzero` via direct with a0=?, a1=0x60, a2=?, a3=? (`jal` at 0x13c84).
  Calls `save_hub_md_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13c9c).
  Calls `save_hub_io_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13ca8).
  Calls `save_hub_ni_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13cb8).
  Calls `save_hub_lb_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13cc4).
  Calls `save_hub_xb_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13cd0).
  Calls `save_hub_err_ext` via direct with a0=?, a1=?, a2=0x9600000000000000, a3=0xffffffffff (`jal` at 0x13d04).
  Calls `save_hub_pi_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13d24).
  Calls `save_hub_pi_error` via direct with a0=table(0x200000), a1=?, a2=?, a3=? (`jal` at 0x13d34).
  Calls `bzero` via direct with a0=?, a1=0x60, a2=?, a3=? (`jal` at 0x13d58).
  Calls `save_hub_pi_error` via direct with a0=table(0x200000), a1=?, a2=?, a3=? (`jal` at 0x13d68).
  Calls `clear_hub_pi_error` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=[a2+12], a6=(a0 << 0x21), a7=0x9200000001800000 (`jal` at 0x13d78).
  Calls `clear_hub_pi_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13d80).
  Calls `clear_hub_md_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13d88).
  At `beq` at 0x13c34 (target 0x13d4c), taken when (a5(=[a2+12]) & 0x1) == 0 and falls through when (a5(=[a2+12]) & 0x1) != 0.
  At `beq` at 0x13c44 (target 0x13d44), taken when s5(=a0) == t0(=-0x1) and falls through when s5(=a0) != t0(=-0x1).
  At `beq` at 0x13c58 (target 0x13d78), taken when a5(=[a2+12]) == a4(=0x2) and falls through when a5(=[a2+12]) != a4(=0x2).
  At `bne` at 0x13c60 (target 0x13d24), taken when s5(=a0) != t0(=-0x1) and falls through when s5(=a0) == t0(=-0x1).
  At `bltz` at 0x13c70 (target 0x13d54), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  Returns v0 = ret(save_hub_err_ext) (`jr` at 0x13d1c).

- `save_bridge_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13d98 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13d98-0x13ff4 (604 bytes).
  Loads 4 bytes into t8 from a3 (arg3 at entry) +0xc (`lw` at 0x13dc0).
  23 such loads of 4 bytes through s0 (?) to ? (base unknown), including `lw` at 0x13de0, 0x13de8, 0x13df0.
  Stores 4 bytes from a5 to (a1 + one of 0x8, 0x90) +0x0 (`sw` at 0x13de4).
  Stores 4 bytes from a4 to (a1 + one of 0xc, 0x94) +0x0 (`sw` at 0x13dec).
  Stores 4 bytes from a3 to (a1 + one of 0x10, 0x98) +0x0 (`sw` at 0x13df4).
  Stores 4 bytes from a2 to (a1 + one of 0x14, 0x9c) +0x0 (`sw` at 0x13dfc).
  Stores 4 bytes from a1 to (a1 + one of 0x18, 0xa0) +0x0 (`sw` at 0x13e04).
  Stores 4 bytes from a0 to (a1 + one of 0x1c, 0xa4) +0x0 (`sw` at 0x13e0c).
  Stores 4 bytes from v1 to (a1 + one of 0x20, 0xa8) +0x0 (`sw` at 0x13e14).
  Stores 4 bytes from v0 to (a1 + one of 0x24, 0xac) +0x0 (`sw` at 0x13e1c).
  Stores 4 bytes from at to (a1 + one of 0x28, 0xb0) +0x0 (`sw` at 0x13e24).
  Stores 8 bytes from ra to (a1 + one of 0x30, 0xb8) +0x0 (`sd` at 0x13e34).
  Stores 8 bytes from t8 to (a1 + one of 0x30, 0xb8) +0x0 (`sd` at 0x13f30).
  Stores 4 bytes from a1 to (a1 + one of 0x38, 0xc0) +0x0  (`sw` at 0x13eac).
  Stores 4 bytes from a0 to (a1 + one of 0x3c, 0xc4) +0x0 (`sw` at 0x13ed8).
  Stores 4 bytes from a5 to (a1 + one of 0x40, 0xc8) +0x0 (`sw` at 0x13ee0).
  10 such loads of 8 bytes through s0 (?) to ? (base unknown), including `ld` at 0x13ee4, 0x13eec, 0x13ef4.
  Stores 8 bytes from a4 to (a1 + one of 0x48, 0xd0) +0x0 (`sd` at 0x13ee8).
  Stores 8 bytes from a3 to (a1 + one of 0x50, 0xd8) +0x0 (`sd` at 0x13ef0).
  Stores 8 bytes from a2 to (a1 + one of 0x58, 0xe0) +0x0 (`sd` at 0x13ef8).
  Stores 8 bytes from a1 to (a1 + one of 0x60, 0xe8) +0x0 (`sd` at 0x13f00).
  Stores 8 bytes from v1 to (a1 + one of 0x68, 0xf0) +0x0 (`sd` at 0x13f08).
  Stores 8 bytes from v0 to (a1 + one of 0x70, 0xf8) +0x0 (`sd` at 0x13f10).
  Stores 8 bytes from at to (a1 + one of 0x78, 0x100) +0x0 (`sd` at 0x13f18).
  Stores 8 bytes from ra to (a1 + one of 0x80, 0x108) +0x0 (`sd` at 0x13f20).
  Stores 8 bytes from t9 to (a1 + one of 0x88, 0x110) +0x0 (`sd` at 0x13f28).
  Loads 8 bytes into s0 from sym(.lit8) +0x70 (`ld` at 0x13f48).
  Calls `bzero` via direct with a0=(a1 + one of 0x8, 0x90), a1=0x88, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=(a0 << 0x21), a6=-0x37 (`jal` at 0x13dd8).
  Calls `pcireg_mode_get` via direct with a0=?, a1=one of 0x0, 0x1, a2=0x24, a3=? (`jal` at 0x13fe4).
  At `beq` at 0x13da8 (target 0x13f48), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x13dc8 (target 0x13f54), taken when (t8(=[a3+12]) & 0x1) == 0 and falls through when (t8(=[a3+12]) & 0x1) != 0.
  At `beq` at 0x13e48 (target 0x13f5c), taken when a0(=0xd102) == t9(?) and falls through when a0(=0xd102) != t9(?).
  At `bne` at 0x13e5c (target 0x13f38), taken when a6(?) != a7(=0xd112) and falls through when a6(?) == a7(=0xd112).
  At `bne` at 0x13e74 (target 0x13f38), taken when a2(=0x24) != a7(?) and falls through when a2(=0x24) == a7(?).
  At `beq` at 0x13e90 (target 0x13f7c), taken when a0(=0xd102) == t0(?) and falls through when a0(=0xd102) != t0(?).
  At `beq` at 0x13ea4 (target 0x13f98), taken when t1(?) == t2(=0xd112) and falls through when t1(?) != t2(=0xd112).
  At `beq` at 0x13ebc (target 0x13fb4), taken when a0(=0xd102) == t2(?) and falls through when a0(=0xd102) != t2(?).
  At `beq` at 0x13ed0 (target 0x13fd0), taken when t3(?) == t8(=0xd112) and falls through when t3(?) != t8(=0xd112).
  At `bne` at 0x13f6c (target 0x13e50), taken when a2(=0x24) != t8(?) and falls through when a2(=0x24) == t8(?).
  At `bne` at 0x13f88 (target 0x13e98), taken when a2(=0x24) != t9(?) and falls through when a2(=0x24) == t9(?).
  At `bne` at 0x13fa4 (target 0x13eac), taken when a2(=0x24) != ra(?) and falls through when a2(=0x24) == ra(?).
  At `bne` at 0x13fc0 (target 0x13ec4), taken when a2(=0x24) != at(?) and falls through when a2(=0x24) == at(?).
  At `bne` at 0x13fdc (target 0x13ed8), taken when a2(=0x24) != v0(?) and falls through when a2(=0x24) == v0(?).
  Returns v0 = ? (`jr` at 0x13f40).

- `save_xbow_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13ff4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13ff4-0x140a8 (180 bytes).
  Loads 4 bytes into at from a2 (arg2 at entry) +0xc (`lw` at 0x13ff4).
  Loads 8 bytes into a4 from sym(.lit8) +0x70 (`ld` at 0x14028).
  Loads 4 bytes into a1 from (a0 << 0x21) -0x6dffffff1ffffff4 (`lw` at 0x1403c).
  Stores 4 bytes from a1 to (a1 + one of 0x8, 0x58) +0x0  (`sw` at 0x14040).
  Loads 4 bytes into a0 from (a0 << 0x21) -0x6dffffff1fffffec (`lw` at 0x14044).
  Stores 4 bytes from a0 to (a1 + one of 0xc, 0x5c) +0x0  (`sw` at 0x14048).
  Loads 4 bytes into v1 from (a0 << 0x21) -0x6dffffff1fffffe4 (`lw` at 0x1404c).
  Stores 4 bytes from v1 to (a1 + one of 0x10, 0x60) +0x0  (`sw` at 0x14050).
  Loads 4 bytes into v0 from (a0 << 0x21) -0x6dffffff1fffffbc (`lw` at 0x14054).
  Stores 4 bytes from v0 to (a1 + one of 0x14, 0x64) +0x0  (`sw` at 0x14060).
  Loads 4 bytes into t0 from ? (base unknown) (`lw` at 0x14080).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0x1408c).
  Stores 4 bytes from t0 to ? (base unknown) (`sw` at 0x14088).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x14098).
  Calls `bzero` via direct with a0=(a1 + one of 0x8, 0x58), a1=0x50, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x14020).
  At `beq` at 0x14010 (target 0x1401c), taken when (at(=[a2+12]) & 0x1) == 0 and falls through when (at(=[a2+12]) & 0x1) != 0.
  At `bne` at 0x14094 (target 0x14064), taken when a1(?) < 0x8 (signed) and falls through when a1(?) >= 0x8 (signed).
  Returns v0 = [(a0 << 0x21)-7926335340413976508] (`jr` at 0x140a0).

- `kl_error_show_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x140a8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x140a8-0x142e4 (572 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x140cc).
  Loads 8 bytes into a2 from sym(.lit8) +0x40 (`ld` at 0x140e4).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x140f0).
  Loads 8 bytes into a5 from ? (base unknown) (`ld` at 0x14110).
  Loads 4 bytes into a5 from ? (base unknown) (`lw` at 0x14124).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x1416c).
  Loads 1 byte into t9 from ? (base unknown) (`lbu` at 0x14184).
  Loads 1 byte into a0 from ? (base unknown) (`lbu` at 0x141d4).
  7 such loads of 4 bytes through s0 (?) to ? (base unknown), including `lw` at 0x14194, 0x141b0, 0x1421c.
  Loads 4 bytes into a1 from a1 (arg1 at entry) +0x8 (`lw` at 0x14258).
  Loads 8 bytes into a0 from a1 (arg1 at entry) +0x0 (`ld` at 0x14260).
  Calls `kl_perr` via direct with a0=0x1, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x140dc).
  Calls `kl_perr_dumpbuf` via direct with a0=[a1]:8, a1=[a1+8], a2=?, a3=? (`jal` at 0x1425c).
  Calls `show_err_io_comp` via direct with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40 (`jal` at 0x14278).
  Calls `show_err_node_comp` via direct with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40 (`jal` at 0x1428c).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1429c).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=0xc000 (`jal` at 0x142b0).
  Calls `show_err_router_comp` via direct with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40 (`jal` at 0x142c4).
  Calls `show_err_xbow_comp` via direct with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40 (`jal` at 0x142d4).
  At `beq` at 0x140c0 (target 0x1429c), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  At `beq` at 0x14108 (target 0x142b0), taken when a2(?) == a3(=0xc000) and falls through when a2(?) != a3(=0xc000).
  At `beq` at 0x14130 (target 0x1413c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x14140 (target 0x1424c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x14164 (target 0x1424c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x1417c (target 0x141b0), taken when (t8(?) & 0x1) == 0 and falls through when (t8(?) & 0x1) != 0.
  At `beq` at 0x1418c (target 0x141d4), taken when (t9(?) & 0x4) == 0 and falls through when (t9(?) & 0x4) != 0.
  At `bne` at 0x141a0 (target 0x1415c), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x141bc (target 0x14164), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x141ec (target 0x14288), taken when a0(?) == a1(=0x10) and falls through when a0(?) != a1(=0x10).
  At `beq` at 0x141f4 (target 0x14274), taken when a0(?) == a2(=0x20) and falls through when a0(?) != a2(=0x20).
  At `beq` at 0x141fc (target 0x14274), taken when a0(?) == a3(=0x70) and falls through when a0(?) != a3(=0x70).
  At `beq` at 0x14204 (target 0x14274), taken when a0(?) == a4(=0x80) and falls through when a0(?) != a4(=0x80).
  At `beq` at 0x1420c (target 0x142c0), taken when a0(?) == a5(=0x30) and falls through when a0(?) != a5(=0x30).
  At `beq` at 0x14214 (target 0x142d4), taken when a0(?) == a6(=0x40) and falls through when a0(?) != a6(=0x40).
  At `beq` at 0x14234 (target 0x14164), taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns v0 = ret(kl_perr_dumpbuf) (`jr` at 0x1426c).

- `kl_error_show` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x142e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x142e4-0x14388 (164 bytes).
  Loads 4 bytes into at from sym(numnodes) +0x0 (`lw` at 0x14318).
  Loads 4 bytes into a1 from sym(numnodes) +0x0 (`lw` at 0x14340).
  Loads 8 bytes into s2 from sym(.srdata) +0x220 (`ld` at 0x1431c).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x1433c).
  Loads 4 bytes into a1 from a2 (arg2 at entry) +0x8 (`lw` at 0x1436c).
  Loads 8 bytes into a0 from a2 (arg2 at entry) +0x0 (`ld` at 0x14374).
  Calls `kl_perr_init` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x14304).
  Calls `kl_perr` via direct with a0=0x10, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x14310).
  Calls `kl_error_show_node` via direct with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0x14338).
  Calls `kl_perr` via direct with a0=0x10, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x14360).
  Calls `kl_perr_dumpbuf` via direct with a0=[a2]:8, a1=[a2+8], a2=?, a3=? (`jal` at 0x14370).
  At `blez` at 0x14320 (target 0x14354), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `bne` at 0x1434c (target 0x14330), taken when s0(?) < a1(=[sym(numnodes)]) (signed) and falls through when s0(?) >= a1(=[sym(numnodes)]) (signed).
  Returns v0 = ret(kl_perr_dumpbuf) (`jr` at 0x14380).

- `kl_dump_hw_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14388 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14388-0x143b8 (48 bytes).
  Loads 8 bytes into at from sym(.srdata) +0x230 (`ld` at 0x14388).
  Calls `kl_save_hw_state_all` via direct with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x143a4).
  Returns v0 = ret(kl_save_hw_state_all) (`jr` at 0x143b0).

- `kl_log_hw_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x143b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x143b8-0x143e8 (48 bytes).
  Loads 8 bytes into at from sym(.srdata) +0x230 (`ld` at 0x143b8).
  Calls `kl_save_hw_state_all` via direct with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x143d4).
  Returns v0 = ret(kl_save_hw_state_all) (`jr` at 0x143e0).

- `kl_error_show_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x143e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x143e8-0x1441c (52 bytes).
  Loads 8 bytes into at from sym(.srdata) +0x238 (`ld` at 0x143e8).
  Calls `kl_error_show` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3) (`jal` at 0x14408).
  Returns v0 = ret(kl_error_show) (`jr` at 0x14414).

- `kl_error_show_log` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1441c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1441c-0x1444c (48 bytes).
  Loads 8 bytes into at from sym(.srdata) +0x230 (`ld` at 0x1441c).
  Calls `kl_error_show` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3) (`jal` at 0x14438).
  Returns v0 = ret(kl_error_show) (`jr` at 0x14444).

- `kl_error_show_idbg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1444c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1444c-0x1447c (48 bytes).
  Loads 8 bytes into at from sym(.srdata) +0x240 (`ld` at 0x1444c).
  Calls `kl_error_show` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3) (`jal` at 0x14468).
  Returns v0 = ret(kl_error_show) (`jr` at 0x14474).

- `kl_error_show_reset_ste` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1447c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1447c-0x144a8 (44 bytes).
  Calls `kl_error_show` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3) (`jal` at 0x14494).
  Returns v0 = ret(kl_error_show) (`jr` at 0x144a0).

- `show_err_node_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x144a8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x144a8-0x14628 (384 bytes).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x228, including `ld` at 0x144d0, 0x144e4, 0x14610.
  Loads 2 bytes into a3 from a0 (arg0 at entry) +0xe (`lh` at 0x144f4).
  Loads 1 byte into a5 from a0 (arg0 at entry) +0x17 (`lbu` at 0x1450c).
  Loads 1 byte into a5 from a0 (arg0 at entry) +0x17 (`lbu` at 0x14568).
  Loads 1 byte into a5 from a0 (arg0 at entry) +0x17 (`lbu` at 0x1460c).
  Loads 4 bytes into a0 from ? (base unknown) (`lw` at 0x1454c).
  Loads 4 bytes into a4 from ? (base unknown) (`lw` at 0x14580).
  Loads 4 bytes into a0 from ? (base unknown) (`lw` at 0x145e0).
  Loads 2 bytes into a2 from a0 (arg0 at entry) +0x20 (`lh` at 0x1455c).
  Loads 1 byte into a0 from ? (base unknown) (`lbu` at 0x14590).
  Loads 1 byte into a1 from ? (base unknown) (`lbu` at 0x145fc).
  Loads 4 bytes into a7 from ? (base unknown) (`lw` at 0x145f0).
  Calls `board_serial_number_get` via direct with a0=a0 at entry (arg0), a1=sp-304, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x144c0).
  Calls `sprintf` via direct with a0=sp-200, a1=sym(.rodata)+7952, a2=sp-304, a3=? (`jal` at 0x144dc).
  Calls `kl_perr` via direct with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2, a4=sp-200 (`jal` at 0x144f8).
  Calls `show_hub_err` via direct with a0=?, a1=a1 at entry (arg1), a2=[a0+32]:2, a3=?, a5=[a0+23]:1 (`jal` at 0x14560).
  Calls `show_cache_err` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=[a0+23]:1 (`jal` at 0x14600).
  Calls `sprintf` via direct with a0=sp-200, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14618).
  At `beq` at 0x144cc (target 0x14610), taken when at(?) == 0 and falls through when at(?) != 0.
  At `blez` at 0x14524 (target 0x145b4), taken when a5(=[a0+23]:1) <= 0 (signed) and falls through when a5(=[a0+23]:1) > 0 (signed).
  At `beq` at 0x14574 (target 0x145b4), taken when s0(?) >= a5(=[a0+23]:1) (signed) and falls through when s0(?) < a5(=[a0+23]:1) (signed).
  At `beq` at 0x14594 (target 0x145e0), taken when a0(?) == s5(=0x1) and falls through when a0(?) != s5(=0x1).
  At `beq` at 0x1459c (target 0x1454c), taken when a0(?) == s6(=0x2) and falls through when a0(?) != s6(=0x2).
  At `bne` at 0x145ac (target 0x1457c), taken when s0(?) < a5(=[a0+23]:1) (signed) and falls through when s0(?) >= a5(=[a0+23]:1) (signed).
  At `beq` at 0x145f4 (target 0x145a4), taken when a7(?) == 0 and falls through when a7(?) != 0.
  Returns v0 = ? (`jr` at 0x145d8).

- `show_cache_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14628 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14628-0x14a10 (1000 bytes).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x228, including `ld` at 0x14638, 0x14654, 0x14694.
  Loads 4 bytes into a2 from a2 (arg2 at entry) +0xc (`lw` at 0x14664).
  Loads 8 bytes into s6 from (a0 + one of 0x18, 0x30) +0x0 (`ld` at 0x1468c).
  Loads 8 bytes into s5 from (a0 + one of 0x10, 0x28) +0x0 (`ld` at 0x14690).
  Loads 4 bytes into s0 from (a0 + one of 0x8, 0x20) +0x0 (`lw` at 0x1469c).
  Loads 8 bytes into a5 from a2 (arg2 at entry) +0x0 (`ld` at 0x146ec).
  4 such loads of 8 bytes through gp (gp) to sym(.lit8) +0x128, including `ld` at 0x14714, 0x14744, 0x1491c.
  Loads 8 bytes into s3 from sym(.srdata) +0x248 (`ld` at 0x147b0).
  Loads 8 bytes into s3 from sym(.srdata) +0x248 (`ld` at 0x14810).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x147d4).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x14838).
  4 such loads of 8 bytes through gp (gp) to sym(.lit8) +0x130, including `ld` at 0x14898, 0x148c4, 0x14994.
  Calls `sprintf` via direct with a0=sp-208, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1464c).
  Calls `sprintf` via direct with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1465c).
  Calls `kl_perr` via direct with a0=0x3, a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a4=(a0 + one of 0x8, 0x20) (`jal` at 0x146a4).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x146b4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+7952, a1=?, a2=?, a3=0x40000000, a4=0xffffffff80000000, a5=[a2]:8 (`jalr` at 0x146f4).
  Calls `sprintf` via direct with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=?, a4=0xffffffff80000000 (`jal` at 0x14730).
  Calls `sprintf` via direct with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=?, a4=sp-144 (`jal` at 0x14760).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144 (`jal` at 0x14778).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x147d8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1483c).
  Calls `sprintf` via direct with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x148b4).
  Calls `sprintf` via direct with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x148e0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144 (`jal` at 0x148f8).
  Calls `sprintf` via direct with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=?, a4=0xffffffff80000000 (`jal` at 0x14938).
  Calls `sprintf` via direct with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14964).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144 (`jal` at 0x1497c).
  Calls `sprintf` via direct with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x149b0).
  Calls `sprintf` via direct with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x149dc).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144 (`jal` at 0x149f4).
  At `beq` at 0x14670 (target 0x14888), taken when (a2(=[a2+12]) & 0x1) == 0 and falls through when (a2(=[a2+12]) & 0x1) != 0.
  At `beq` at 0x14684 (target 0x14860), taken when a4(=(a0 + one of 0x8, 0x20)) == 0 and falls through when a4(=(a0 + one of 0x8, 0x20)) != 0.
  At `beq` at 0x146c4 (target 0x14890), taken when (a1(=0xffffffffc0000000) & s0(?)) == 0 and falls through when (a1(=0xffffffffc0000000) & s0(?)) != 0.
  At `beq` at 0x146d0 (target 0x14990), taken when a3(=0x40000000) == s1(?) and falls through when a3(=0x40000000) != s1(?).
  At `beq` at 0x146dc (target 0x14704), taken when s1(?) == a4(=0xffffffff80000000) and falls through when s1(?) != a4(=0xffffffff80000000).
  At `beq` at 0x146e4 (target 0x1490c), taken when a1(=0xffffffffc0000000) == s1(?) and falls through when a1(=0xffffffffc0000000) != s1(?).
  At `bgez` at 0x1470c (target 0x14738), taken when t8(?) >= 0 (signed) and falls through when t8(?) < 0 (signed).
  At `bgez` at 0x1473c (target 0x1476c), taken when a3(?) >= 0 (signed) and falls through when a3(?) < 0 (signed).
  At `beq` at 0x14790 (target 0x14a08), taken when a4(=0x40000000) == s1(?) and falls through when a4(=0x40000000) != s1(?).
  At `beq` at 0x1479c (target 0x14804), taken when s1(?) == a5(=0xffffffff80000000) and falls through when s1(?) != a5(=0xffffffff80000000).
  At `bne` at 0x147a4 (target 0x14860), taken when a6(=0xffffffffc0000000) != s1(?) and falls through when a6(=0xffffffffc0000000) == s1(?).
  At `beq` at 0x147c8 (target 0x147e0), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x147f4 (target 0x147c8), taken when s0(?) < 0x7 (unsigned) and falls through when s0(?) >= 0x7 (unsigned).
  At `beq` at 0x1482c (target 0x14844), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x14858 (target 0x1482c), taken when s0(?) < 0xa (unsigned) and falls through when s0(?) >= 0xa (unsigned).
  At `bgez` at 0x14890 (target 0x148bc), taken when a2(?) >= 0 (signed) and falls through when a2(?) < 0 (signed).
  At `bgez` at 0x148c0 (target 0x148e8), taken when a3(?) >= 0 (signed) and falls through when a3(?) < 0 (signed).
  At `bgez` at 0x14914 (target 0x14940), taken when t8(?) >= 0 (signed) and falls through when t8(?) < 0 (signed).
  At `bgez` at 0x14944 (target 0x1496c), taken when a3(?) >= 0 (signed) and falls through when a3(?) < 0 (signed).
  At `bgez` at 0x14990 (target 0x149b8), taken when a2(?) >= 0 (signed) and falls through when a2(?) < 0 (signed).
  At `bgez` at 0x149bc (target 0x149e4), taken when a3(?) >= 0 (signed) and falls through when a3(?) < 0 (signed).
  Returns v0 = ? (`jr` at 0x14880).

- `show_hub_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14a10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14a10-0x14ac4 (180 bytes).
  Loads 4 bytes into at from a1 (arg1 at entry) +0xc (`lw` at 0x14a18).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x14a48).
  Loads 4 bytes into a1 from a1 (arg1 at entry) +0xc (`lw` at 0x14a84).
  Calls `kl_perr` via direct with a0=0x3, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x14a50).
  Calls `show_hub_pi_err` via direct with a0=?, a1=a2 at entry (arg2), a2=0x0, a3=? (`jal` at 0x14a60).
  Calls `show_hub_pi_err` via direct with a0=?, a1=a2 at entry (arg2), a2=0x1, a3=? (`jal` at 0x14a70).
  Calls `show_hub_md_err` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x14a78).
  Calls `show_hub_io_err` via direct with a0=a0 at entry (arg0), a1=[a1+12], a2=a2 at entry (arg2), a3=? (`jal` at 0x14a88).
  Calls `show_hub_ni_err` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x14a9c).
  Calls `show_hub_lb_err` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x14aa4).
  Calls `show_hub_xb_err` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x14aac).
  At `beq` at 0x14a3c (target 0x14a48), taken when (at(=[a1+12]) & 0x1) == 0 and falls through when (at(=[a1+12]) & 0x1) != 0.
  Returns v0 = ret(show_hub_xb_err) (`jr` at 0x14abc).

- `show_pi_error_spool_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14ac4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14ac4-0x14c10 (332 bytes).
  Loads 8 bytes into s2 from sym(.srdata) +0x228 (`ld` at 0x14ad8).
  Loads 8 bytes into a2 from sym(.srdata) +0x228 (`ld` at 0x14b04).
  Loads 8 bytes into a5 from sym(.srdata) +0x228 (`ld` at 0x14b1c).
  Loads 8 bytes into a4 from sym(.srdata) +0x248 (`ld` at 0x14b38).
  Loads 8 bytes into a4 from table(sym(pi_err_status_cmd)) +0x0 (`ld` at 0x14b5c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0x14aec).
  Calls `decode_crb_stat` via direct with a0=sp-80, a1=?, a2=?, a3=? (`jal` at 0x14afc).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sym(.rodata)+7952, a4=entry(sym(pi_err_status_cmd)), a5=sym(.rodata)+7952, a6=sp-80 (`jal` at 0x14b70).
  Calls `sprintf` via direct with a0=sp-80, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14b88).
  Calls `decode_xrb_err` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x14b9c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=ret(decode_xrb_err), a3=?, a4=sp-80 (`jal` at 0x14bdc).
  At `beq` at 0x14b20 (target 0x14c04), taken when (t2(?) & 0x80) == 0 and falls through when (t2(?) & 0x80) != 0.
  At `bltz` at 0x14b28 (target 0x14bf8), taken when v0(=(a0 << 0x33)) < 0 (signed) and falls through when v0(=(a0 << 0x33)) >= 0 (signed).
  At `beq` at 0x14b7c (target 0x14b98), taken when (s1(?) & 0x200) == 0 and falls through when (s1(?) & 0x200) != 0.
  At `beq` at 0x14bac (target 0x14bc0), taken when s8(?) == 0 and falls through when s8(?) != 0.
  Returns v0 = ret(kl_perr) (`jr` at 0x14bf0).

- `show_hub_pi_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14c10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14c10-0x151d8 (1480 bytes).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x10 (`ld` at 0x14c38).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x228, including `ld` at 0x14c50, 0x14c84, 0x14cc4.
  Loads 8 bytes into s7 from sym(.srdata) +0x248 (`ld` at 0x14c6c).
  Loads 8 bytes into s7 from sym(.srdata) +0x248 (`ld` at 0x14cb8).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x14c8c).
  Loads 8 bytes into a3 from sym(.lit8) +0x60 (`ld` at 0x14ce0).
  Loads 8 bytes into s4 from sym(.lit8) +0x60 (`ld` at 0x14efc).
  Loads 8 bytes into s0 from ? (base unknown) (`ld` at 0x14d0c).
  Loads 8 bytes into s2 from ? (base unknown) (`ld` at 0x14d34).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0x800 (`ld` at 0x14d6c).
  Loads 8 bytes into a4 from table(sym(pi_err_status_cmd)) +0x0 (`ld` at 0x14dd0).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0x14ec4).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0x14ed8).
  Loads 8 bytes into s4 from ? (base unknown) (`ld` at 0x14f18).
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x14f60).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x14f80).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x15114).
  Loads 8 bytes into s0 from a0 (arg0 at entry) +0x48 (`ld` at 0x15000).
  Loads 8 bytes into s0 from a0 (arg0 at entry) +0x50 (`ld` at 0x150b0).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0x840 (`ld` at 0x15198).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=[a0+16]:8 (`jal` at 0x14c5c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14c90).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=one of 0x41, 0x42 (`jal` at 0x14d38).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2048]:8, a3=? (`jal` at 0x14d68).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14d80).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14d98).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sym(.rodata)+7952, a4=entry(sym(pi_err_status_cmd)) (`jal` at 0x14dcc).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14dec).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14e04).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=one of 0x41, 0x42 (`jal` at 0x14e1c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14e38).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14e50).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14e6c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14e8c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14ea4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14eb8).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=one of 0x41, 0x42 (`jal` at 0x14f14).
  Calls `show_pi_error_spool_entry` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x14f64).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14fc4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x14fd8).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=[a0+72]:8 (`jal` at 0x15018).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15030).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1504c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15060).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15080).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15094).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x150a0).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=[a0+80]:8 (`jal` at 0x150bc).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x150cc).
  Calls `memory_present` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15104).
  Calls `memory_present` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15154).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15174).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2112]:8, a3=? (`jal` at 0x15194).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x151b4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x151c8).
  At `beq` at 0x14c48 (target 0x14cb0), taken when s1(=[a0+16]:8) == 0 and falls through when s1(=[a0+16]:8) != 0.
  At `beq` at 0x14c80 (target 0x14c98), taken when (s1(=[a0+16]:8) & a2(?)) == 0 and falls through when (s1(=[a0+16]:8) & a2(?)) != 0.
  At `bne` at 0x14ca4 (target 0x14c78), taken when s0(?) < 0x23 (unsigned) and falls through when s0(?) >= 0x23 (unsigned).
  At `beq` at 0x14d14 (target 0x14fe0), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bltz` at 0x14d48 (target 0x15184), taken when t1(?) < 0 (signed) and falls through when t1(?) >= 0 (signed).
  At `beq` at 0x14d50 (target 0x15148), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `beq` at 0x14d78 (target 0x14d88), taken when (a2(?) & 0x7) == 0 and falls through when (a2(?) & 0x7) != 0.
  At `beq` at 0x14d90 (target 0x14da0), taken when (a2(?) & 0x7ff) == 0 and falls through when (a2(?) & 0x7ff) != 0.
  At `beq` at 0x14dac (target 0x1516c), taken when (a6(?) & 0x80) == 0 and falls through when (a6(?) & 0x80) != 0.
  At `bltz` at 0x14df8 (target 0x15174), taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  At `beq` at 0x14e30 (target 0x14e40), taken when (a2(=0x1fffff) & s2(?)) == 0 and falls through when (a2(=0x1fffff) & s2(?)) != 0.
  At `beq` at 0x14e48 (target 0x14e58), taken when (a2(?) & 0xff) == 0 and falls through when (a2(?) & 0xff) != 0.
  At `beq` at 0x14e60 (target 0x14e78), taken when (a2(?) & 0x3ff) == 0 and falls through when (a2(?) & 0x3ff) != 0.
  At `bltz` at 0x14e7c (target 0x151b0), taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  At `beq` at 0x14e84 (target 0x14e94), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x14e9c (target 0x14eac), taken when (a2(?) & 0x3ff) == 0 and falls through when (a2(?) & 0x3ff) != 0.
  At `beq` at 0x14eb0 (target 0x14ec0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x14ed0 (target 0x15138), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x14ee8 (target 0x15140), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `beq` at 0x14f50 (target 0x14fe0), taken when s0(?) >= s5(?) (unsigned) and falls through when s0(?) < s5(?) (unsigned).
  At `bne` at 0x14f78 (target 0x14fb8), taken when s5(?) < s0(?) (unsigned) and falls through when s5(?) >= s0(?) (unsigned).
  At `bltz` at 0x14f8c (target 0x14f60), taken when ra(?) < 0 (signed) and falls through when ra(?) >= 0 (signed).
  At `beq` at 0x14f94 (target 0x15104), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x14f9c (target 0x14f60), taken when at(=0x4) != a3(?) and falls through when at(=0x4) == a3(?).
  At `beq` at 0x14fac (target 0x14f80), taken when s5(?) >= s0(?) (unsigned) and falls through when s5(?) < s0(?) (unsigned).
  At `beq` at 0x14fb8 (target 0x14fcc), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x14fcc (target 0x14fe0), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x14ff4 (target 0x14d00), taken when s6(?) < 0x2 (signed) and falls through when s6(?) >= 0x2 (signed).
  At `beq` at 0x15008 (target 0x150d4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x15024 (target 0x1503c), taken when (s0(=[a0+72]:8) & 0x1) == 0 and falls through when (s0(=[a0+72]:8) & 0x1) != 0.
  At `bltz` at 0x1503c (target 0x151c4), taken when t9(=([a0+72]:8 << 0x3e)) < 0 (signed) and falls through when t9(=([a0+72]:8 << 0x3e)) >= 0 (signed).
  At `beq` at 0x1510c (target 0x151a4), taken when v0(=ret(memory_present)) == 0 and falls through when v0(=ret(memory_present)) != 0.
  At `bltz` at 0x1511c (target 0x14f60), taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  At `bne` at 0x15128 (target 0x14f60), taken when a3(=0x4) != a1(?) and falls through when a3(=0x4) == a1(?).
  At `bne` at 0x15138 (target 0x14ef0), taken when s3(=a2) != 0 and falls through when s3(=a2) == 0.
  At `bne` at 0x1515c (target 0x14d5c), taken when v0(=ret(memory_present)) != 0 and falls through when v0(=ret(memory_present)) == 0.
  Returns v0 = ? (`jr` at 0x150fc).

- `show_hub_md_misc_error_flags` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x151d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x151d8-0x15350 (376 bytes).
  Loads 8 bytes into s1 from sym(.srdata) +0x248 (`ld` at 0x151e0).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x15220).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x1525c).
  Loads 8 bytes into s0 from sym(.srdata) +0x228 (`ld` at 0x1528c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x15228).
  6 such loads of 8 bytes through a2 (table(sym(pi_err_status_cmd))) to table(sym(pi_err_status_cmd)) +0xac0, including `ld` at 0x1526c, 0x152a4, 0x152c8.
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1522c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x15270).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x152a0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x152c4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x152e8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x1530c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x15330).
  At `beq` at 0x1521c (target 0x15234), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bne` at 0x15248 (target 0x15218), taken when s0(?) < 0x4 (unsigned) and falls through when s0(?) >= 0x4 (unsigned).
  At `beq` at 0x15258 (target 0x15278), taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  At `beq` at 0x15288 (target 0x152a8), taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  At `beq` at 0x152b0 (target 0x152cc), taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  At `beq` at 0x152d4 (target 0x152f0), taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  At `beq` at 0x152f8 (target 0x15314), taken when (a4(?) & 0x3) == 0 and falls through when (a4(?) & 0x3) != 0.
  At `beq` at 0x15318 (target 0x1533c), taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns v0 = ? (`jr` at 0x15348).

- `show_hub_md_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15350 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15350-0x15960 (1552 bytes).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x8 (`ld` at 0x15368).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x228, including `ld` at 0x15398, 0x15458, 0x15824.
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x18 (`ld` at 0x15448).
  Loads 8 bytes into a2 from sym(.srdata) +0x248 (`ld` at 0x154b4).
  Loads 8 bytes into s2 from sym(.srdata) +0x248 (`ld` at 0x154d4).
  Loads 8 bytes into s2 from sym(.srdata) +0x248 (`ld` at 0x15530).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0xac0 (`ld` at 0x154cc).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0xac0 (`ld` at 0x154ec).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0xac0 (`ld` at 0x1550c).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x28 (`ld` at 0x15524).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x28 (`ld` at 0x15840).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0x155ec).
  Loads 8 bytes into a3 from table(sym(pi_err_status_cmd)) +0xa60 (`ld` at 0x15644).
  Loads 8 bytes into a3 from table(sym(pi_err_status_cmd)) +0xa60 (`ld` at 0x156ec).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x38 (`ld` at 0x15654).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x40 (`ld` at 0x15738).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3) (`jal` at 0x153a4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x153c4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15440).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+24]:8, a3=? (`jal` at 0x15474).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15494).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x154a8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x154c8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x154e8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=? (`jal` at 0x15508).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1551c).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+40]:8, a3=? (`jal` at 0x1553c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15550).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=([a0+40]:8 << 0x3e) (`jal` at 0x15568).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15588).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1559c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x155b4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x155e8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15604).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15618).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8 (`jal` at 0x15640).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1564c).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+56]:8, a3=? (`jal` at 0x156b0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x156c0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8 (`jal` at 0x156e8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x156fc).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15710).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15724).
  Calls `show_hub_md_misc_error_flags [0x151d8]` via direct with a0=[a0+56]:8, a1=?, a2=?, a3=? (`jal` at 0x1572c).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+64]:8, a3=? (`jal` at 0x157b8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x157d8).
  Calls `show_hub_md_misc_error_flags [0x151d8]` via direct with a0=[a0+64]:8, a1=?, a2=?, a3=? (`jal` at 0x157e0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1584c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15864).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1587c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=([a0+40]:8 << 0x3e) (`jal` at 0x15894).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a4=0x4 (`jal` at 0x158b0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=0x3 (`jal` at 0x158cc).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x158e0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x158f0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15900).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15910).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15920).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a4=([a0+40]:8 << 0x15) (`jal` at 0x1593c).
  At `beq` at 0x15384 (target 0x15800), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `beq` at 0x153d0 (target 0x158a8), taken when s2(?) == a4(=0x4) and falls through when s2(?) != a4(=0x4).
  At `beq` at 0x153dc (target 0x158a4), taken when s2(?) == a5(=0x2) and falls through when s2(?) != a5(=0x2).
  At `beq` at 0x153e4 (target 0x158c4), taken when s2(?) == a6(=0x3) and falls through when s2(?) != a6(=0x3).
  At `beq` at 0x153f0 (target 0x158c4), taken when s2(?) == a7(=0x1) and falls through when s2(?) != a7(=0x1).
  At `bltz` at 0x153f8 (target 0x15844), taken when s3(=([a0+8]:8 << 0x3)) < 0 (signed) and falls through when s3(=([a0+8]:8 << 0x3)) >= 0 (signed).
  At `bltz` at 0x15400 (target 0x1585c), taken when s4(=([a0+8]:8 << 0x2)) < 0 (signed) and falls through when s4(=([a0+8]:8 << 0x2)) >= 0 (signed).
  At `bltz` at 0x15408 (target 0x15874), taken when s5(=([a0+8]:8 << 0x1)) < 0 (signed) and falls through when s5(=([a0+8]:8 << 0x1)) >= 0 (signed).
  At `beq` at 0x15410 (target 0x15420), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `bltz` at 0x15418 (target 0x15920), taken when t0(=([a0+8]:8 << 0x4)) < 0 (signed) and falls through when t0(=([a0+8]:8 << 0x4)) >= 0 (signed).
  At `bltz` at 0x15420 (target 0x158f0), taken when s3(=([a0+8]:8 << 0x3)) < 0 (signed) and falls through when s3(=([a0+8]:8 << 0x3)) >= 0 (signed).
  At `bltz` at 0x15428 (target 0x15900), taken when s4(=([a0+8]:8 << 0x2)) < 0 (signed) and falls through when s4(=([a0+8]:8 << 0x2)) >= 0 (signed).
  At `bltz` at 0x15430 (target 0x15910), taken when s5(=([a0+8]:8 << 0x1)) < 0 (signed) and falls through when s5(=([a0+8]:8 << 0x1)) >= 0 (signed).
  At `beq` at 0x15438 (target 0x15448), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `beq` at 0x1545c (target 0x15828), taken when (s4(?) & 0x3) == 0 and falls through when (s4(?) & 0x3) != 0.
  At `beq` at 0x154b0 (target 0x154d0), taken when s2(?) == 0 and falls through when s2(?) != 0.
  At `beq` at 0x154d0 (target 0x154f0), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `beq` at 0x154f0 (target 0x15514), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `beq` at 0x15514 (target 0x15524), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x1552c (target 0x15654), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x15548 (target 0x15558), taken when (s1(=[a0+40]:8) & 0x1) == 0 and falls through when (s1(=[a0+40]:8) & 0x1) != 0.
  At `bltz` at 0x1555c (target 0x15894), taken when a6(=([a0+40]:8 << 0x3e)) < 0 (signed) and falls through when a6(=([a0+40]:8 << 0x3e)) >= 0 (signed).
  At `beq` at 0x155c4 (target 0x1588c), taken when a0(=0x1) == s3(?) and falls through when a0(=0x1) != s3(?).
  At `bltz` at 0x155f4 (target 0x15930), taken when a4(=([a0+40]:8 << 0x15)) < 0 (signed) and falls through when a4(=([a0+40]:8 << 0x15)) >= 0 (signed).
  At `bne` at 0x1565c (target 0x156a8), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0x15668 (target 0x156a8), taken when (a5(?) & 0x3) != 0 and falls through when (a5(?) & 0x3) == 0.
  At `bne` at 0x15674 (target 0x156a8), taken when (a6(?) & 0x3) != 0 and falls through when (a6(?) & 0x3) == 0.
  At `bne` at 0x15684 (target 0x156a8), taken when (a1(?) & 0x3) != 0 and falls through when (a1(?) & 0x3) == 0.
  At `bne` at 0x1568c (target 0x156a8), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x15698 (target 0x156a8), taken when (a2(?) & 0x3) != 0 and falls through when (a2(?) & 0x3) == 0.
  At `beq` at 0x156a4 (target 0x15734), taken when (a3(?) & 0xf) == 0 and falls through when (a3(?) & 0xf) != 0.
  At `bne` at 0x1574c (target 0x157b0), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `bne` at 0x1575c (target 0x157b4), taken when (a4(?) & 0x3) != 0 and falls through when (a4(?) & 0x3) == 0.
  At `bne` at 0x1576c (target 0x157b4), taken when (a5(?) & 0x3) != 0 and falls through when (a5(?) & 0x3) == 0.
  At `bne` at 0x1577c (target 0x157b4), taken when (a6(?) & 0x3) != 0 and falls through when (a6(?) & 0x3) == 0.
  At `bne` at 0x15790 (target 0x157b0), taken when (a7(?) & 0x3) != 0 and falls through when (a7(?) & 0x3) == 0.
  At `bne` at 0x157a0 (target 0x157b4), taken when (t0(?) & 0x3) != 0 and falls through when (t0(?) & 0x3) == 0.
  At `beq` at 0x157a8 (target 0x157ec), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bltz` at 0x15800 (target 0x1594c), taken when s5(=([a0+8]:8 << 0x1)) < 0 (signed) and falls through when s5(=([a0+8]:8 << 0x1)) >= 0 (signed).
  At `bltz` at 0x1580c (target 0x15958), taken when s4(=([a0+8]:8 << 0x2)) < 0 (signed) and falls through when s4(=([a0+8]:8 << 0x2)) >= 0 (signed).
  At `beq` at 0x15818 (target 0x15448), taken when s3(=([a0+8]:8 << 0x3)) >= 0x0 (signed) and falls through when s3(=([a0+8]:8 << 0x3)) < 0x0 (signed).
  At `bne` at 0x1582c (target 0x1546c), taken when s3(?) != 0 and falls through when s3(?) == 0.
  At `bne` at 0x15834 (target 0x15470), taken when s2(?) != 0 and falls through when s2(?) == 0.
  At `bgez` at 0x15844 (target 0x15400), taken when t8(=([a0+8]:8 << 0x7)) >= 0 (signed) and falls through when t8(=([a0+8]:8 << 0x7)) < 0 (signed).
  At `bgez` at 0x1585c (target 0x15408), taken when t9(=([a0+8]:8 << 0x6)) >= 0 (signed) and falls through when t9(=([a0+8]:8 << 0x6)) < 0 (signed).
  At `bgez` at 0x15874 (target 0x15410), taken when ra(=([a0+8]:8 << 0x5)) >= 0 (signed) and falls through when ra(=([a0+8]:8 << 0x5)) < 0 (signed).
  Returns v0 = ? (`jr` at 0x157f8).
  The instructions from 0x158c0 to 0x158c0 are not reached by any path from the entry, and their branches are not listed.

- `show_hub_io_ieph` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15960 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15960-0x15ac4 (356 bytes).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0xb8 (`ld` at 0x15968).
  Loads 8 bytes into s0 from sym(.srdata) +0x228 (`ld` at 0x1599c).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0xc0 (`ld` at 0x15a48).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+184]:8, a3=a3 at entry (arg3) (`jal` at 0x159ac).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=0x4, a4=0x5 (`jal` at 0x159f4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15a08).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15a1c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sym(.rodata)+7952 (`jal` at 0x15a30).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+192]:8, a3=? (`jal` at 0x15a54).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15a6c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=([a0+192]:8 << 0x17) (`jal` at 0x15a80).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=([a0+184]:8 << 0x17) (`jal` at 0x15ab4).
  At `bltz` at 0x1597c (target 0x1599c), taken when at(=([a0+184]:8 << 0x13)) < 0 (signed) and falls through when at(=([a0+184]:8 << 0x13)) >= 0 (signed).
  At `beq` at 0x159cc (target 0x15a90), taken when s3(?) == v1(=0x2) and falls through when s3(?) != v1(=0x2).
  At `beq` at 0x159d4 (target 0x15a98), taken when s3(?) == a2(=0x3) and falls through when s3(?) != a2(=0x3).
  At `beq` at 0x159dc (target 0x15aa0), taken when s3(?) == a3(=0x4) and falls through when s3(?) != a3(=0x4).
  At `beq` at 0x159e4 (target 0x15aa8), taken when s3(?) == a4(=0x5) and falls through when s3(?) != a4(=0x5).
  At `bltz` at 0x15a3c (target 0x15ab0), taken when a3(=([a0+184]:8 << 0x17)) < 0 (signed) and falls through when a3(=([a0+184]:8 << 0x17)) >= 0 (signed).
  At `bgez` at 0x15a78 (target 0x15984), taken when a3(=([a0+192]:8 << 0x17)) >= 0 (signed) and falls through when a3(=([a0+192]:8 << 0x17)) < 0 (signed).
  Returns v0 = ? (`jr` at 0x15994).

- `show_hub_io_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15ac4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15ac4-0x15e74 (944 bytes).
  7 such loads of 8 bytes through s3 (?) to ? (base unknown), including `ld` at 0x15af0, 0x15b54, 0x15b94.
  Loads 8 bytes into s1 from sym(.srdata) +0x228 (`ld` at 0x15b20).
  Loads 8 bytes into s1 from sym(.srdata) +0x228 (`ld` at 0x15e0c).
  Loads 8 bytes into s2 from ? (base unknown) (`ld` at 0x15b30).
  Loads 4 bytes into a2 from a0 (arg0 at entry) +0x4f4 (`lw` at 0x15c08).
  Loads 4 bytes into a5 from a0 (arg0 at entry) +0x4f4 (`lw` at 0x15d88).
  Loads 8 bytes into s0 from ? (base unknown) (`ld` at 0x15c34).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0x15db8).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15b6c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15b7c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15b88).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15b98).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15ba8).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15bc4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15bd4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15be0).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15bf0).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15c00).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15c48).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15c84).
  Calls `show_hub_io_ieph` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15cb8).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15cd8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15cf0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15d18).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15d2c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15d40).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15d74).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15d80).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=?, a5=[a0+1268] (`jal` at 0x15db4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15dc4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15dd4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15de8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15dfc).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=a3 at entry (arg3) (`jal` at 0x15e14).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15e20).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15e30).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15e40).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15e50).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15e64).
  At `beq` at 0x15ae4 (target 0x15af0), taken when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  At `bltz` at 0x15b04 (target 0x15e0c), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `bltz` at 0x15b38 (target 0x15cd0), taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  At `bne` at 0x15b4c (target 0x15b30), taken when s0(?) < 0xf (signed) and falls through when s0(?) >= 0xf (signed).
  At `bgez` at 0x15b5c (target 0x15bb0), taken when t9(?) >= 0 (signed) and falls through when t9(?) < 0 (signed).
  At `beq` at 0x15bb8 (target 0x15c08), taken when (s2(=0x10000) & s0(?)) == 0 and falls through when (s2(=0x10000) & s0(?)) != 0.
  At `beq` at 0x15c20 (target 0x15c9c), taken when a2(=[a0+1268]) == a3(=-0x1) and falls through when a2(=[a0+1268]) != a3(=-0x1).
  At `bltz` at 0x15c54 (target 0x15dc4), taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  At `bltz` at 0x15c60 (target 0x15dd4), taken when t9(?) < 0 (signed) and falls through when t9(?) >= 0 (signed).
  At `bltz` at 0x15c6c (target 0x15de4), taken when ra(?) < 0 (signed) and falls through when ra(?) >= 0 (signed).
  At `bltz` at 0x15c74 (target 0x15df8), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `beq` at 0x15c7c (target 0x15c8c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x15c94 (target 0x15c30), taken when s2(?) < 0x9 (signed) and falls through when s2(?) >= 0x9 (signed).
  At `beq` at 0x15ce4 (target 0x15cfc), taken when (s2(?) & 0x1) == 0 and falls through when (s2(?) & 0x1) != 0.
  At `bltz` at 0x15cfc (target 0x15e30), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0x15d4c (target 0x15e40), taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  At `bltz` at 0x15d58 (target 0x15e50), taken when a4(?) < 0 (signed) and falls through when a4(?) >= 0 (signed).
  At `bltz` at 0x15d64 (target 0x15e60), taken when a5(?) < 0 (signed) and falls through when a5(?) >= 0 (signed).
  At `beq` at 0x15d90 (target 0x15b40), taken when a5(=[a0+1268]) == a3(=-0x1) and falls through when a5(=[a0+1268]) != a3(=-0x1).
  Returns v0 = ret(show_hub_io_ieph) (`jr` at 0x15cc8).

- `get_ni_port_error_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15e74 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15e74-0x15e8c (24 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x248 (`ld` at 0x15e74).
  Loads 8 bytes into v0 from (sym(pi_err_status_cmd) + (a0 << 0x3)) +0x0 (`ld` at 0x15e88).
  Returns v0 = [(sym(pi_err_status_cmd) + (a0 << 0x3))]:8 (`jr` at 0x15e84).

- `show_ni_port_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15e8c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15e8c-0x15f28 (156 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x15ec8).
  Calls `get_ni_port_error_bit` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x15ec0).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+7952, a2=ret(get_ni_port_error_bit), a3=? (`jalr` at 0x15ed4).
  At `beq` at 0x15ee4 (target 0x15f08), taken when s0(?) >= 0x1d (unsigned) and falls through when s0(?) < 0x1d (unsigned).
  At `bne` at 0x15ef0 (target 0x15ec0), taken when (s1(?) & a3(?)) != 0 and falls through when (s1(?) & a3(?)) == 0.
  At `bne` at 0x15f00 (target 0x15eec), taken when s0(?) < 0x1d (unsigned) and falls through when s0(?) >= 0x1d (unsigned).
  Returns v0 = ? (`jr` at 0x15f20).

- `show_hub_ni_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15f28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15f28-0x162b0 (904 bytes).
  Loads 8 bytes into s4 from a0 (arg0 at entry) +0x8 (`ld` at 0x15f40).
  Loads 8 bytes into s0 from sym(.srdata) +0x228 (`ld` at 0x15f58).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x15fd4).
  Loads 8 bytes into s3 from sym(.srdata) +0x248 (`ld` at 0x15fb4).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x15fdc).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x10 (`ld` at 0x16004).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0xbc8 (`ld` at 0x160a0).
  Loads 8 bytes into s2 from a0 (arg0 at entry) +0x18 (`ld` at 0x160c0).
  Loads 8 bytes into a3 from table(sym(pi_err_status_cmd)) +0xa60 (`ld` at 0x160f8).
  Loads 8 bytes into a3 from table(sym(pi_err_status_cmd)) +0xa60 (`ld` at 0x16120).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x20 (`ld` at 0x16178).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3) (`jal` at 0x15f64).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15f78).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15f90).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15fa8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x15fe0).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+16]:8, a3=? (`jal` at 0x16014).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1602c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16040).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16054).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16068).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1607c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3016]:8, a3=? (`jal` at 0x1609c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=0x7ffffff (`jal` at 0x160b8).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+24]:8, a3=? (`jal` at 0x160d0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8 (`jal` at 0x160f4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8 (`jal` at 0x1611c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16134).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=0x7ffffff (`jal` at 0x16170).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+32]:8, a3=? (`jal` at 0x1618c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a7=([a0+32]:8 << 0x30) (`jal` at 0x161a4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x161e4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a7=([a0+32]:8 << 0x30) (`jal` at 0x16218).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1622c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1623c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16250).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16264).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16278).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1628c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x162a0).
  At `beq` at 0x15f50 (target 0x161ec), taken when s4(=[a0+8]:8) == 0 and falls through when s4(=[a0+8]:8) != 0.
  At `beq` at 0x15f70 (target 0x15f80), taken when (s4(=[a0+8]:8) & 0xff) == 0 and falls through when (s4(=[a0+8]:8) & 0xff) != 0.
  At `beq` at 0x15f88 (target 0x15f98), taken when (a2(?) & 0xff) == 0 and falls through when (a2(?) & 0xff) != 0.
  At `beq` at 0x15fa0 (target 0x15fb0), taken when (a2(?) & 0xff) == 0 and falls through when (a2(?) & 0xff) != 0.
  At `beq` at 0x15fd0 (target 0x15fe8), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x15ffc (target 0x15fd0), taken when s1(?) < 0x1d (unsigned) and falls through when s1(?) >= 0x1d (unsigned).
  At `beq` at 0x16008 (target 0x160c0), taken when s1(=[a0+16]:8) == 0 and falls through when s1(=[a0+16]:8) != 0.
  At `beq` at 0x16020 (target 0x16038), taken when (s1(=[a0+16]:8) & 0x1) == 0 and falls through when (s1(=[a0+16]:8) & 0x1) != 0.
  At `beq` at 0x160c4 (target 0x16178), taken when s2(=[a0+24]:8) == 0 and falls through when s2(=[a0+24]:8) != 0.
  At `beq` at 0x1617c (target 0x161f0), taken when s1(=[a0+32]:8) == 0 and falls through when s1(=[a0+32]:8) != 0.
  At `bltz` at 0x16198 (target 0x16214), taken when a7(=([a0+32]:8 << 0x30)) < 0 (signed) and falls through when a7(=([a0+32]:8 << 0x30)) >= 0 (signed).
  At `bltz` at 0x161b0 (target 0x16228), taken when t0(=([a0+32]:8 << 0x37)) < 0 (signed) and falls through when t0(=([a0+32]:8 << 0x37)) >= 0 (signed).
  At `bltz` at 0x161b8 (target 0x1623c), taken when t1(=([a0+32]:8 << 0x36)) < 0 (signed) and falls through when t1(=([a0+32]:8 << 0x36)) >= 0 (signed).
  At `bltz` at 0x161c4 (target 0x1624c), taken when t2(=([a0+32]:8 << 0x35)) < 0 (signed) and falls through when t2(=([a0+32]:8 << 0x35)) >= 0 (signed).
  At `bltz` at 0x161cc (target 0x16260), taken when t3(=([a0+32]:8 << 0x34)) < 0 (signed) and falls through when t3(=([a0+32]:8 << 0x34)) >= 0 (signed).
  At `bltz` at 0x161d4 (target 0x16274), taken when t8(=([a0+32]:8 << 0x33)) < 0 (signed) and falls through when t8(=([a0+32]:8 << 0x33)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x1620c).

- `show_hub_lb_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x162b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x162b0-0x164b0 (512 bytes).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x8 (`ld` at 0x162c0).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x162d8).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x1630c).
  Loads 8 bytes into s0 from sym(.srdata) +0x228 (`ld` at 0x16344).
  Loads 8 bytes into s2 from sym(.srdata) +0x248 (`ld` at 0x162f4).
  Loads 8 bytes into s2 from sym(.srdata) +0x248 (`ld` at 0x1633c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x16314).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x10 (`ld` at 0x16334).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x28 (`ld` at 0x16348).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x28 (`ld` at 0x1649c).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0xc48 (`ld` at 0x1638c).
  Loads 8 bytes into a3 from table(sym(pi_err_status_cmd)) +0xa60 (`ld` at 0x163f4).
  Loads 8 bytes into a3 from table(sym(pi_err_status_cmd)) +0xa60 (`ld` at 0x1641c).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0xc68 (`ld` at 0x1643c).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x18 (`ld` at 0x16458).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x20 (`ld` at 0x1648c).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3) (`jal` at 0x162e4).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16318).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+40]:8, a3=? (`jal` at 0x1636c).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3144]:8, a3=? (`jal` at 0x16388).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+16]:8, a3=([a0+16]:8 << 0x13) (`jal` at 0x163b8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x163c8).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8 (`jal` at 0x163f0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8 (`jal` at 0x16418).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3176]:8, a3=? (`jal` at 0x16438).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16450).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+24]:8, a3=? (`jal` at 0x16464).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16480).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[a0+32]:8, a3=? (`jal` at 0x16490).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=([a0+16]:8 << 0x17) (`jal` at 0x164a0).
  At `beq` at 0x162d0 (target 0x16334), taken when s1(=[a0+8]:8) == 0 and falls through when s1(=[a0+8]:8) != 0.
  At `beq` at 0x16308 (target 0x16320), taken when (s1(=[a0+8]:8) & a2(?)) == 0 and falls through when (s1(=[a0+8]:8) & a2(?)) != 0.
  At `bne` at 0x1632c (target 0x16300), taken when s0(?) < 0xb (signed) and falls through when s0(?) >= 0xb (signed).
  At `bltz` at 0x16340 (target 0x163b0), taken when a3(=([a0+16]:8 << 0x13)) < 0 (signed) and falls through when a3(=([a0+16]:8 << 0x13)) >= 0 (signed).
  At `beq` at 0x16358 (target 0x16390), taken when (s1(=[a0+40]:8) & a4(=0x8000000000000000)) == 0 and falls through when (s1(=[a0+40]:8) & a4(=0x8000000000000000)) != 0.
  At `beq` at 0x16360 (target 0x16390), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bltz` at 0x16444 (target 0x164a0), taken when a3(=([a0+16]:8 << 0x17)) < 0 (signed) and falls through when a3(=([a0+16]:8 << 0x17)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x163a8).

- `show_hub_xb_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x164b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x164b0-0x166c4 (532 bytes).
  Loads 8 bytes into s0 from a0 (arg0 at entry) +0x8 (`ld` at 0x164b8).
  Loads 8 bytes into s1 from sym(.srdata) +0x228 (`ld` at 0x164e4).
  Loads 8 bytes into a0 from sym(.srdata) +0x228 (`ld` at 0x1658c).
  Loads 8 bytes into a2 from sym(.srdata) +0x248 (`ld` at 0x164f8).
  Loads 8 bytes into a4 from sym(.srdata) +0x248 (`ld` at 0x16530).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0xce8 (`ld` at 0x16514).
  Loads 8 bytes into a3 from table(sym(pi_err_status_cmd)) +0xd68 (`ld` at 0x1654c).
  Loads 8 bytes into s0 from a0 (arg0 at entry) +0x10 (`ld` at 0x16570).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x1657c).
  Loads 8 bytes into a2 from table(sym(.rodata)+7952) +0x0 (`ld` at 0x165a4).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3) (`jal` at 0x164f0).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3304]:8, a3=? (`jal` at 0x16510).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16524).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+3432]:8, a4=table(sym(pi_err_status_cmd))+3432 (`jal` at 0x16554).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16560).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=[a0+16]:8 (`jal` at 0x16580).
  Calls `printf` via direct with a0=sym(.rodata)+7952, a1=?, a2=?, a3=? (`jal` at 0x165b0).
  Calls `printf` via direct with a0=sym(.rodata)+7952, a1=?, a2=?, a3=? (`jal` at 0x165b8).
  At `bltz` at 0x164c8 (target 0x164e4), taken when at(=([a0+8]:8 << 0x33)) < 0 (signed) and falls through when at(=([a0+8]:8 << 0x33)) >= 0 (signed).
  At `beq` at 0x1659c (target 0x165b0), taken when a1(?) >= 0x10 (unsigned) and falls through when a1(?) < 0x10 (unsigned).
  At `beq` at 0x165e4 (target 0x16600), the condition is not analyzed.
  At `bne` at 0x1660c (target 0x165d4), the condition is not analyzed.
  At `beq` at 0x16614 (target 0x164d4), the condition is not analyzed.
  At `beq` at 0x16638 (target 0x16654), the condition is not analyzed.
  At `bne` at 0x16660 (target 0x16628), the condition is not analyzed.
  At `beq` at 0x16668 (target 0x164d4), the condition is not analyzed.
  At `beq` at 0x1668c (target 0x166a8), the condition is not analyzed.
  At `bne` at 0x166b4 (target 0x1667c), the condition is not analyzed.
  At `beq` at 0x166bc (target 0x164d4), the condition is not analyzed.
  The instructions from 0x165c8 to 0x166c0 are not reached by any path from the entry, and their branches are not listed.

- `show_err_io_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x166c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x166c4-0x16800 (316 bytes).
  Loads 8 bytes into s1 from sym(.srdata) +0x228 (`ld` at 0x166fc).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x167e8).
  Loads 8 bytes into s1 from sym(.srdata) +0x228 (`ld` at 0x167fc).
  Loads 1 byte into a4 from a0 (arg0 at entry) +0xa (`lbu` at 0x16714).
  Loads 2 bytes into a3 from a0 (arg0 at entry) +0xe (`lh` at 0x16720).
  Loads 1 byte into a2 from a0 (arg0 at entry) +0x17 (`lbu` at 0x1672c).
  Loads 1 byte into a2 from a0 (arg0 at entry) +0x17 (`lbu` at 0x167cc).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x16764).
  Loads 4 bytes into a0 from ? (base unknown) (`lw` at 0x167b4).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x16774).
  Calls `board_serial_number_get` via direct with a0=a0 at entry (arg0), a1=sp-288, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x166ec).
  Calls `sprintf` via direct with a0=sp-184, a1=sym(.rodata)+7952, a2=sp-288, a3=? (`jal` at 0x16708).
  Calls `kl_perr` via direct with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2, a4=[a0+10]:1, a5=sp-184 (`jal` at 0x16724).
  Calls `show_bridge_err` via direct with a0=?, a1=a1 at entry (arg1), a2=[a0+23]:1, a3=? (`jal` at 0x167c4).
  Calls `sprintf` via direct with a0=sp-184, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x167f0).
  At `beq` at 0x166f8 (target 0x167e8), taken when at(?) == 0 and falls through when at(?) != 0.
  At `blez` at 0x1673c (target 0x16790), taken when a2(=[a0+23]:1) <= 0 (signed) and falls through when a2(=[a0+23]:1) > 0 (signed).
  At `beq` at 0x16778 (target 0x167b4), taken when s5(=0x5) == t8(?) and falls through when s5(=0x5) != t8(?).
  At `bne` at 0x16788 (target 0x16760), taken when s0(?) < a2(=[a0+23]:1) (signed) and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  At `bne` at 0x167d8 (target 0x16760), taken when s0(?) < a2(=[a0+23]:1) (signed) and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  Returns v0 = ? (`jr` at 0x167ac).

- `show_bridge_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x16800 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x16800-0x16e68 (1640 bytes).
  Loads 4 bytes into at from a1 (arg1 at entry) +0xc (`lw` at 0x16810).
  Loads 8 bytes into v1 from sym(.lit8) +0x138 (`ld` at 0x16834).
  Loads 8 bytes into v0 from (a0 + one of 0x30, 0xb8) +0x0 (`ld` at 0x16838).
  Loads 8 bytes into s4 from (a0 + one of 0x30, 0xb8) +0x0 (`ld` at 0x16870).
  Loads 8 bytes into s6 from sym(.srdata) +0x228 (`ld` at 0x16854).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x16940).
  8 such loads of 4 bytes through s2 ((a0 + one of 0x8, 0x90)) to (a0 + one of 0x38, 0xc0) +0x0, including `lw` at 0x16860, 0x16a1c, 0x16b58.
  Loads 8 bytes into s8 from sym(.srdata) +0x248 (`ld` at 0x168a4).
  Loads 8 bytes into a2 from (a0 + one of 0x68, 0xf0) +0x0 (`ld` at 0x168d4).
  Loads 8 bytes into a2 from (a0 + one of 0x70, 0xf8) +0x0 (`ld` at 0x168e4).
  Loads 8 bytes into a2 from (a0 + one of 0x78, 0x100) +0x0 (`ld` at 0x168f4).
  Loads 8 bytes into a2 from (a0 + one of 0x80, 0x108) +0x0 (`ld` at 0x16904).
  Loads 8 bytes into a2 from (a0 + one of 0x88, 0x110) +0x0 (`ld` at 0x16914).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x16948).
  Loads 4 bytes into a2 from (a0 + one of 0x20, 0xa8) +0x0 (`lw` at 0x16a28).
  Loads 4 bytes into a2 from (a0 + one of 0x20, 0xa8) +0x0 (`lw` at 0x16cac).
  Loads 4 bytes into a2 from (a0 + one of 0x24, 0xac) +0x0 (`lw` at 0x16b00).
  Loads 4 bytes into a2 from (a0 + one of 0x28, 0xb0) +0x0 (`lw` at 0x16b10).
  Loads 4 bytes into a2 from (a0 + one of 0x10, 0x98) +0x0 (`lw` at 0x16b60).
  Loads 4 bytes into a2 from (a0 + one of 0x10, 0x98) +0x0 (`lw` at 0x16d18).
  Loads 4 bytes into a2 from (a0 + one of 0x10, 0x98) +0x0 (`lw` at 0x16e0c).
  Loads 4 bytes into t1 from (a0 + one of 0x3c, 0xc4) +0x0 (`lw` at 0x16b78).
  Loads 4 bytes into a6 from (a0 + one of 0x3c, 0xc4) +0x0 (`lw` at 0x16dc4).
  Loads 8 bytes into a2 from (a0 + one of 0x58, 0xe0) +0x0 (`ld` at 0x16b84).
  Loads 8 bytes into a2 from (a0 + one of 0x58, 0xe0) +0x0 (`ld` at 0x16cd8).
  Loads 8 bytes into a2 from (a0 + one of 0x58, 0xe0) +0x0 (`ld` at 0x16dd0).
  Loads 8 bytes into a2 from (a0 + one of 0x60, 0xe8) +0x0 (`ld` at 0x16b94).
  Loads 8 bytes into a2 from (a0 + one of 0x60, 0xe8) +0x0 (`ld` at 0x16ce8).
  Loads 8 bytes into a2 from (a0 + one of 0x60, 0xe8) +0x0 (`ld` at 0x16de0).
  Loads 8 bytes into a2 from (a0 + one of 0x50, 0xd8) +0x0 (`ld` at 0x16be8).
  Loads 4 bytes into a2 from (a0 + one of 0x14, 0x9c) +0x0 (`lw` at 0x16c4c).
  Loads 4 bytes into a2 from (a0 + one of 0x14, 0x9c) +0x0 (`lw` at 0x16dac).
  Loads 8 bytes into a2 from (a0 + one of 0x48, 0xd0) +0x0 (`ld` at 0x16c5c).
  Loads 8 bytes into a2 from (a0 + one of 0x48, 0xd0) +0x0 (`ld` at 0x16d60).
  Loads 4 bytes into a2 from (a0 + one of 0x18, 0xa0) +0x0 (`lw` at 0x16c80).
  Loads 4 bytes into a2 from (a0 + one of 0x18, 0xa0) +0x0 (`lw` at 0x16e44).
  Loads 4 bytes into a2 from (a0 + one of 0x1c, 0xa4) +0x0 (`lw` at 0x16c90).
  Loads 4 bytes into a2 from (a0 + one of 0x1c, 0xa4) +0x0 (`lw` at 0x16e54).
  Loads 4 bytes into a2 from (a0 + one of 0x8, 0x90) +0x0 (`lw` at 0x16d28).
  Loads 4 bytes into a2 from (a0 + one of 0x8, 0x90) +0x0 (`lw` at 0x16e1c).
  Loads 4 bytes into a2 from (a0 + one of 0xc, 0x94) +0x0 (`lw` at 0x16d38).
  Loads 4 bytes into a2 from (a0 + one of 0xc, 0x94) +0x0 (`lw` at 0x16e2c).
  Loads 4 bytes into a2 from (a0 + one of 0x40, 0xc8) +0x0 (`lw` at 0x16df8).
  Calls `kl_perr` via direct with a0=0x3, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x38, 0xc0)], a3=0x20 (`jal` at 0x16868).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x30, 0xb8)]:8, a3=? (`jal` at 0x16880).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x16890).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x68, 0xf0)]:8, a3=0x80000000000 (`jal` at 0x168d8).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x70, 0xf8)]:8, a3=? (`jal` at 0x168e8).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x78, 0x100)]:8, a3=? (`jal` at 0x168f8).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x80, 0x108)]:8, a3=? (`jal` at 0x16908).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x88, 0x110)]:8, a3=? (`jal` at 0x16918).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1694c).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x20, 0xa8)], a3=?, a7=[(a0 + one of 0x38, 0xc0)] (`jal` at 0x16a2c).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x24, 0xac)], a3=? (`jal` at 0x16b04).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x28, 0xb0)], a3=? (`jal` at 0x16b14).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x98)], a3=?, a4=0x1 (`jal` at 0x16b64).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x58, 0xe0)]:8, a3=? (`jal` at 0x16b88).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x60, 0xe8)]:8, a3=? (`jal` at 0x16b98).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x50, 0xd8)]:8, a3=? (`jal` at 0x16bec).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x14, 0x9c)], a3=? (`jal` at 0x16c50).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x48, 0xd0)]:8, a3=? (`jal` at 0x16c60).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x18, 0xa0)], a3=? (`jal` at 0x16c84).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x1c, 0xa4)], a3=? (`jal` at 0x16c94).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x20, 0xa8)], a3=? (`jal` at 0x16cb0).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x58, 0xe0)]:8, a3=? (`jal` at 0x16cdc).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x60, 0xe8)]:8, a3=? (`jal` at 0x16cec).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x98)], a3=? (`jal` at 0x16d1c).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x8, 0x90)], a3=? (`jal` at 0x16d2c).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0xc, 0x94)], a3=? (`jal` at 0x16d3c).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x48, 0xd0)]:8, a3=? (`jal` at 0x16d64).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x14, 0x9c)], a3=?, a4=0x4000000, a5=[(a0 + one of 0x38, 0xc0)] (`jal` at 0x16db0).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x58, 0xe0)]:8, a3=?, a6=[(a0 + one of 0x3c, 0xc4)] (`jal` at 0x16dd4).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x60, 0xe8)]:8, a3=? (`jal` at 0x16de4).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x40, 0xc8)], a3=? (`jal` at 0x16dfc).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x98)], a3=? (`jal` at 0x16e10).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x8, 0x90)], a3=? (`jal` at 0x16e20).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0xc, 0x94)], a3=? (`jal` at 0x16e30).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x18, 0xa0)], a3=? (`jal` at 0x16e48).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x1c, 0xa4)], a3=? (`jal` at 0x16e58).
  At `beq` at 0x16828 (target 0x16834), taken when (at(=[a1+12]) & 0x1) == 0 and falls through when (at(=[a1+12]) & 0x1) != 0.
  At `beq` at 0x16848 (target 0x16bfc), taken when (v0(=[(a0 + one of 0x30, 0xb8)]:8) & v1(=0xffffffff7fffff00)) == 0 and falls through when (v0(=[(a0 + one of 0x30, 0xb8)]:8) & v1(=0xffffffff7fffff00)) != 0.
  At `beq` at 0x16874 (target 0x16bfc), taken when s4(=[(a0 + one of 0x30, 0xb8)]:8) == 0 and falls through when s4(=[(a0 + one of 0x30, 0xb8)]:8) != 0.
  At `bne` at 0x168a8 (target 0x16bfc), taken when s5(=one of 0x20, 0x2d) < 0x9 (signed) and falls through when s5(=one of 0x20, 0x2d) >= 0x9 (signed).
  At `beq` at 0x168bc (target 0x168d4), taken when t0(=0x100000000000) >= s0(?) (unsigned) and falls through when t0(=0x100000000000) < s0(?) (unsigned).
  At `bne` at 0x168cc (target 0x16920), taken when t1(=0x200000000000) != s0(?) and falls through when t1(=0x200000000000) == s0(?).
  At `beq` at 0x16928 (target 0x16bfc), taken when s1(?) >= s5(=one of 0x20, 0x2d) (signed) and falls through when s1(?) < s5(=one of 0x20, 0x2d) (signed).
  At `beq` at 0x1693c (target 0x16920), taken when (s4(=[(a0 + one of 0x30, 0xb8)]:8) & s0(?)) == 0 and falls through when (s4(=[(a0 + one of 0x30, 0xb8)]:8) & s0(?)) != 0.
  At `bne` at 0x16958 (target 0x169e0), taken when s0(?) < s3(=0x20000000) (unsigned) and falls through when s0(?) >= s3(=0x20000000) (unsigned).
  At `beq` at 0x16960 (target 0x16b5c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x16970 (target 0x16a84), taken when s0(?) < a4(=0x4000000000) (unsigned) and falls through when s0(?) >= a4(=0x4000000000) (unsigned).
  At `beq` at 0x169a0 (target 0x168f0), taken when a1(=0x4000000000) >= s0(?) (unsigned) and falls through when a1(=0x4000000000) < s0(?) (unsigned).
  At `bne` at 0x169bc (target 0x16bcc), taken when s0(?) < a5(=0x40000000000) (unsigned) and falls through when s0(?) >= a5(=0x40000000000) (unsigned).
  At `beq` at 0x169c4 (target 0x168f0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x169cc (target 0x16d84), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `bne` at 0x169e8 (target 0x16a3c), taken when s0(?) < a6(=0x10000) (unsigned) and falls through when s0(?) >= a6(=0x10000) (unsigned).
  At `bne` at 0x16a14 (target 0x16b24), taken when a6(=0x10000) < s0(?) (unsigned) and falls through when a6(=0x10000) >= s0(?) (unsigned).
  At `bne` at 0x16a20 (target 0x16920), taken when a7(=[(a0 + one of 0x38, 0xc0)]) != 0 and falls through when a7(=[(a0 + one of 0x38, 0xc0)]) == 0.
  At `bne` at 0x16a54 (target 0x16ae8), taken when s0(?) < 0x1000 (unsigned) and falls through when s0(?) >= 0x1000 (unsigned).
  At `bne` at 0x16a5c (target 0x16b00), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x16a64 (target 0x16cc0), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `bne` at 0x16a6c (target 0x16afc), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0x16a74 (target 0x16920), taken when t1(=0x8000) != s0(?) and falls through when t1(=0x8000) == s0(?).
  At `bne` at 0x16ab0 (target 0x16ba8), taken when s0(?) < a6(=0x400000000) (unsigned) and falls through when s0(?) >= a6(=0x400000000) (unsigned).
  At `beq` at 0x16ab8 (target 0x168f4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x16ac0 (target 0x16cfc), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x16ac8 (target 0x168f4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x16ad8 (target 0x16920), taken when a5(=0x2000000000) != s0(?) and falls through when a5(=0x2000000000) == s0(?).
  At `bne` at 0x16ae8 (target 0x16c70), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x16af0 (target 0x16afc), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bne` at 0x16af8 (target 0x16920), taken when a6(=0x800) != s0(?) and falls through when a6(=0x800) == s0(?).
  At `bne` at 0x16b2c (target 0x16c2c), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0x16b34 (target 0x16d18), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x16b3c (target 0x16d94), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x16b44 (target 0x16d14), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x16b4c (target 0x16920), taken when a7(=0x10000000) != s0(?) and falls through when a7(=0x10000000) == s0(?).
  At `beq` at 0x16b70 (target 0x16920), taken when t0(=[(a0 + one of 0x38, 0xc0)]) == 0 and falls through when t0(=[(a0 + one of 0x38, 0xc0)]) != 0.
  At `beq` at 0x16b7c (target 0x16920), taken when t1(=[(a0 + one of 0x3c, 0xc4)]) == 0 and falls through when t1(=[(a0 + one of 0x3c, 0xc4)]) != 0.
  At `bne` at 0x16ba8 (target 0x16ca4), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0x16bb0 (target 0x168f0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x16bbc (target 0x16920), taken when t2(=0x200000000) != s0(?) and falls through when t2(=0x200000000) == s0(?).
  At `bne` at 0x16bcc (target 0x16cd0), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0x16bd4 (target 0x16df4), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x16be0 (target 0x16920), taken when t3(=0x20000000000) != s0(?) and falls through when t3(=0x20000000000) == s0(?).
  At `bne` at 0x16c2c (target 0x16d4c), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0x16c34 (target 0x16d10), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x16c40 (target 0x16e0c), taken when t8(=[(a0 + one of 0x38, 0xc0)]) == 0 and falls through when t8(=[(a0 + one of 0x38, 0xc0)]) != 0.
  At `bne` at 0x16c70 (target 0x16d74), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x16c78 (target 0x16920), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x16ca4 (target 0x16920), taken when t9(=0x40000000) != s0(?) and falls through when t9(=0x40000000) == s0(?).
  At `bne` at 0x16cc0 (target 0x16920), taken when ra(=0x2000) != s0(?) and falls through when ra(=0x2000) == s0(?).
  At `bne` at 0x16cd0 (target 0x16920), taken when at(=0x8000000000) != s0(?) and falls through when at(=0x8000000000) == s0(?).
  At `bne` at 0x16d00 (target 0x16920), taken when v0(=0x800000000) != s0(?) and falls through when v0(=0x800000000) == s0(?).
  At `bne` at 0x16d10 (target 0x16920), taken when v1(=0x1000000) != s0(?) and falls through when v1(=0x1000000) == s0(?).
  At `bne` at 0x16d4c (target 0x16920), taken when a0(=0x400000) != s0(?) and falls through when a0(=0x400000) == s0(?).
  At `beq` at 0x16d58 (target 0x16920), taken when a1(=[(a0 + one of 0x38, 0xc0)]) == 0 and falls through when a1(=[(a0 + one of 0x38, 0xc0)]) != 0.
  At `bne` at 0x16d74 (target 0x16920), taken when a2(=0x100) != s0(?) and falls through when a2(=0x100) == s0(?).
  At `bne` at 0x16d84 (target 0x16920), taken when a3(=0x80000000000) != s0(?) and falls through when a3(=0x80000000000) == s0(?).
  At `bne` at 0x16d94 (target 0x16920), taken when a4(=0x4000000) != s0(?) and falls through when a4(=0x4000000) == s0(?).
  At `beq` at 0x16da0 (target 0x16dbc), taken when a5(=[(a0 + one of 0x38, 0xc0)]) == 0 and falls through when a5(=[(a0 + one of 0x38, 0xc0)]) != 0.
  At `beq` at 0x16dbc (target 0x16e44), taken when a0(=[(a0 + one of 0x38, 0xc0)]) == 0 and falls through when a0(=[(a0 + one of 0x38, 0xc0)]) != 0.
  At `beq` at 0x16dc8 (target 0x16e40), taken when a6(=[(a0 + one of 0x3c, 0xc4)]) == 0 and falls through when a6(=[(a0 + one of 0x3c, 0xc4)]) != 0.
  Returns v0 = ? (`jr` at 0x16c24).

- `show_err_xbow_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x16e68 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x16e68-0x16f64 (252 bytes).
  Loads 8 bytes into a2 from sym(.srdata) +0x228 (`ld` at 0x16e7c).
  Loads 2 bytes into a3 from a0 (arg0 at entry) +0xe (`lh` at 0x16e9c).
  Loads 1 byte into a2 from a0 (arg0 at entry) +0x17 (`lbu` at 0x16ea8).
  Loads 1 byte into a2 from a0 (arg0 at entry) +0x17 (`lbu` at 0x16f48).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x16ee0).
  Loads 4 bytes into a0 from ? (base unknown) (`lw` at 0x16f30).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x16ef0).
  Calls `kl_perr` via direct with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2 (`jal` at 0x16ea0).
  Calls `show_xbow_err` via direct with a0=?, a1=a1 at entry (arg1), a2=[a0+23]:1, a3=? (`jal` at 0x16f40).
  At `blez` at 0x16eb8 (target 0x16f0c), taken when a2(=[a0+23]:1) <= 0 (signed) and falls through when a2(=[a0+23]:1) > 0 (signed).
  At `beq` at 0x16ef4 (target 0x16f30), taken when s5(=0x4) == t8(?) and falls through when s5(=0x4) != t8(?).
  At `bne` at 0x16f04 (target 0x16edc), taken when s0(?) < a2(=[a0+23]:1) (signed) and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  At `bne` at 0x16f54 (target 0x16edc), taken when s0(?) < a2(=[a0+23]:1) (signed) and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  Returns v0 = ? (`jr` at 0x16f28).

- `show_xbow_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x16f64 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x16f64-0x17220 (700 bytes).
  Loads 8 bytes into v1 from sym(.lit8) +0x140 (`ld` at 0x16f64).
  Loads 4 bytes into at from a1 (arg1 at entry) +0xc (`lw` at 0x16f80).
  Loads 4 bytes into v0 from (a0 + one of 0x8, 0x58) +0x0 (`lw` at 0x16fa8).
  Loads 4 bytes into s4 from (a0 + one of 0x8, 0x58) +0x0 (`lw` at 0x16fd0).
  Loads 8 bytes into s3 from sym(.srdata) +0x248 (`ld` at 0x16fb0).
  Loads 8 bytes into s3 from sym(.srdata) +0x248 (`ld` at 0x16ff4).
  12 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x228, including `ld` at 0x16fbc, 0x16fcc, 0x17014.
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x1701c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x17080).
  Loads 8 bytes into a2 from table(sym(pi_err_status_cmd)) +0x1178 (`ld` at 0x170c4).
  Loads 4 bytes into a7 from ? (base unknown) (`lw` at 0x17118).
  Loads 4 bytes into s6 from ? (base unknown) (`lw` at 0x17128).
  Loads 4 bytes into a2 from (a0 + one of 0x14, 0x64) +0x0 (`lw` at 0x17170).
  Loads 4 bytes into a2 from (a0 + one of 0xc, 0x5c) +0x0 (`lw` at 0x1719c).
  Loads 4 bytes into a2 from (a0 + one of 0x10, 0x60) +0x0 (`lw` at 0x171b0).
  Loads 4 bytes into a7 from (a0 + one of 0x38, 0x88) +0x0 (`lw` at 0x1721c).
  Calls `kl_perr` via direct with a0=0x3, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x16fc4).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x8, 0x58)], a3=? (`jal` at 0x16fdc).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x17020).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x17058).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x17084).
  Calls `kl_perr` via direct with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+4472]:8, a3=? (`jal` at 0x170c8).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x17158).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x14, 0x64)], a3=? (`jal` at 0x1718c).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0xc, 0x5c)], a3=? (`jal` at 0x171a0).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x60)], a3=? (`jal` at 0x171b4).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x171fc).
  At `beq` at 0x16f9c (target 0x16fa8), taken when (at(=[a1+12]) & 0x1) == 0 and falls through when (at(=[a1+12]) & 0x1) != 0.
  At `beq` at 0x16fb4 (target 0x170a8), taken when (v0(=[(a0 + one of 0x8, 0x58)]) & v1(=0xffffffffff80003f)) == 0 and falls through when (v0(=[(a0 + one of 0x8, 0x58)]) & v1(=0xffffffffff80003f)) != 0.
  At `beq` at 0x17010 (target 0x17028), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x1703c (target 0x17010), taken when s1(?) < 0x6 (signed) and falls through when s1(?) >= 0x6 (signed).
  At `beq` at 0x17074 (target 0x1708c), taken when (s0(?) & a2(?)) == 0 and falls through when (s0(?) & a2(?)) != 0.
  At `bne` at 0x17098 (target 0x1706c), taken when s1(?) < 0x20 (unsigned) and falls through when s1(?) >= 0x20 (unsigned).
  At `beq` at 0x170d8 (target 0x170fc), taken when s0(?) >= 0x13 (unsigned) and falls through when s0(?) < 0x13 (unsigned).
  At `bne` at 0x170e4 (target 0x170b8), taken when (s1(?) & a4(?)) != 0 and falls through when (s1(?) & a4(?)) == 0.
  At `bne` at 0x170f4 (target 0x170e0), taken when s0(?) < 0x13 (unsigned) and falls through when s0(?) >= 0x13 (unsigned).
  At `beq` at 0x17110 (target 0x17170), taken when s4(?) >= 0x8 (signed) and falls through when s4(?) < 0x8 (signed).
  At `beq` at 0x17120 (target 0x170fc), taken when (a7(?) & 0x20) == 0 and falls through when (a7(?) & 0x20) != 0.
  At `beq` at 0x17130 (target 0x170fc), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `beq` at 0x17138 (target 0x17144), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x17144 (target 0x171ec), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x17178 (target 0x17188), taken when (a2(=[(a0 + one of 0x14, 0x64)]) & 0x200) != 0 and falls through when (a2(=[(a0 + one of 0x14, 0x64)]) & 0x200) == 0.
  At `beq` at 0x17180 (target 0x171bc), taken when s8(?) == 0 and falls through when s8(?) != 0.
  Returns v0 = ? (`jr` at 0x171e4).

- `show_rr_error_status` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17220 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17220-0x17410 (496 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x228 (`ld` at 0x17260).
  Loads 8 bytes into s4 from sym(.srdata) +0x228 (`ld` at 0x17284).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=a3 at entry (arg3), a5=0x1 (`jalr` at 0x1726c).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x17290).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a4=0x1 (`jalr` at 0x172b4).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a5=0x1 (`jalr` at 0x172d8).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x172f8).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x17318).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x17338).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a4=0xf000000 (`jalr` at 0x17364).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x17388).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x173ac).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x173d0).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=? (`jalr` at 0x173e8).
  At `beq` at 0x1724c (target 0x173f0), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x1725c (target 0x17274), taken when (a0 & at(=0x4000000000)) == 0 and falls through when (a0 & at(=0x4000000000)) != 0.
  At `beq` at 0x17280 (target 0x17298), taken when (s0(=a0) & a2(=0x2000000000)) == 0 and falls through when (s0(=a0) & a2(=0x2000000000)) != 0.
  At `beq` at 0x172a4 (target 0x172c0), taken when (s0(=a0) & a3(=0x1000000000)) == 0 and falls through when (s0(=a0) & a3(=0x1000000000)) != 0.
  At `beq` at 0x172c8 (target 0x172e4), taken when (s0(=a0) & a4(=0x800000000)) == 0 and falls through when (s0(=a0) & a4(=0x800000000)) != 0.
  At `beq` at 0x172ec (target 0x17300), taken when (s0(=a0) & a5(=0x400000000)) == 0 and falls through when (s0(=a0) & a5(=0x400000000)) != 0.
  At `beq` at 0x1730c (target 0x17320), taken when (s0(=a0) & a6(=0x200000000)) == 0 and falls through when (s0(=a0) & a6(=0x200000000)) != 0.
  At `beq` at 0x1732c (target 0x17340), taken when (s0(=a0) & a7(=0x100000000)) == 0 and falls through when (s0(=a0) & a7(=0x100000000)) != 0.
  At `beq` at 0x1734c (target 0x17370), taken when (s0(=a0) & t0(=0xf0000000)) == 0 and falls through when (s0(=a0) & t0(=0xf0000000)) != 0.
  At `beq` at 0x17374 (target 0x17390), taken when (s0(=a0) & a4(=0xf000000)) == 0 and falls through when (s0(=a0) & a4(=0xf000000)) != 0.
  At `beq` at 0x17398 (target 0x173b4), taken when (s0(=a0) & a4(=0xff0000)) == 0 and falls through when (s0(=a0) & a4(=0xff0000)) != 0.
  At `beq` at 0x173b8 (target 0x173dc), taken when (s0(=a0) & 0xff00) == 0 and falls through when (s0(=a0) & 0xff00) != 0.
  At `beq` at 0x173dc (target 0x173f0), taken when a3(?) == 0 and falls through when a3(?) != 0.
  Returns v0 = ? (`jr` at 0x17408).

- `show_rr_status_rev_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17410 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17410-0x175dc (460 bytes).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x228, including `ld` at 0x1744c, 0x1746c, 0x174e8.
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x17454).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=? (`jalr` at 0x17474).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=? (`jalr` at 0x17490).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=? (`jalr` at 0x174bc).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=? (`jalr` at 0x174f4).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=? (`jalr` at 0x175b0).
  Calls `(unknown callee)` via register with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=? (`jalr` at 0x175cc).
  At `beq` at 0x17444 (target 0x1745c), taken when (a0 & at(=0x100000000)) == 0 and falls through when (a0 & at(=0x100000000)) != 0.
  At `beq` at 0x17468 (target 0x1747c), taken when (s5(=a0) & a2(=0x200000000)) == 0 and falls through when (s5(=a0) & a2(=0x200000000)) != 0.
  At `beq` at 0x17488 (target 0x17498), taken when (s5(=a0) & a3(=0x400000000)) == 0 and falls through when (s5(=a0) & a3(=0x400000000)) != 0.
  At `beq` at 0x174b0 (target 0x174c4), taken when (s5(=a0) & a4(=0x800000000)) == 0 and falls through when (s5(=a0) & a4(=0x800000000)) != 0.
  At `beq` at 0x17514 (target 0x17574), taken when s3(?) >= 0x9 (signed) and falls through when s3(?) < 0x9 (signed).
  At `beq` at 0x17528 (target 0x1755c), taken when (s6(=a1) & a3(?)) == 0 and falls through when (s6(=a1) & a3(?)) != 0.
  At `beq` at 0x1753c (target 0x175a4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x17544 (target 0x175c0), taken when s4(=0x1) == a5(?) and falls through when s4(=0x1) != a5(?).
  At `beq` at 0x1754c (target 0x174e4), taken when a0(=0x2) == a5(?) and falls through when a0(=0x2) != a5(?).
  At `beq` at 0x17554 (target 0x174e4), taken when a1(=0x3) == a5(?) and falls through when a1(=0x3) != a5(?).
  At `bne` at 0x1756c (target 0x1751c), taken when s3(?) < 0x9 (signed) and falls through when s3(?) >= 0x9 (signed).
  Returns v0 = ? (`jr` at 0x1759c).

- `show_err_router_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x175dc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x175dc-0x177ac (464 bytes).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x228, including `ld` at 0x17610, 0x17628, 0x17784.
  Loads 2 bytes into a3 from a0 (arg0 at entry) +0xe (`lh` at 0x17634).
  Loads 1 byte into a0 from a0 (arg0 at entry) +0x17 (`lbu` at 0x1764c).
  Loads 1 byte into a0 from a0 (arg0 at entry) +0x17 (`lbu` at 0x176e4).
  Loads 8 bytes into a3 from sym(.srdata) +0x250 (`ld` at 0x176a8).
  Loads 8 bytes into s1 from ? (base unknown) (`ld` at 0x176c0).
  Loads 4 bytes into a1 from ? (base unknown) (`lw` at 0x176fc).
  Loads 4 bytes into s2 from ? (base unknown) (`lw` at 0x1771c).
  Loads 1 byte into at from ? (base unknown) (`lbu` at 0x1770c).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0x24 (`lw` at 0x177a8).
  Calls `board_serial_number_get` via direct with a0=a0 at entry (arg0), a1=sp-304, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x175ec).
  Calls `sprintf` via direct with a0=sp-200, a1=sym(.rodata)+7952, a2=sp-304, a3=? (`jal` at 0x1761c).
  Calls `kl_perr` via direct with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2, a4=sp-200 (`jal` at 0x17638).
  Calls `kl_perr` via direct with a0=0x3, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x17644).
  Calls `kl_perr` via direct with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1768c).
  Calls `show_rr_error_status` via direct with a0=?, a1=?, a2=0x5, a3=sym(kl_perr), a4=0x1 (`jal` at 0x176a4).
  Calls `net_errmsg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17730).
  Calls `kl_perr` via direct with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=ret(net_errmsg) (`jal` at 0x17744).
  Calls `sprintf` via direct with a0=sp-200, a1=sym(.rodata)+7952, a2=?, a3=? (`jal` at 0x1778c).
  At `beq` at 0x17608 (target 0x17784), taken when at(?) == 0 and falls through when at(?) != 0.
  At `blez` at 0x17668 (target 0x17754), taken when a0(=[a0+23]:1) <= 0 (signed) and falls through when a0(=[a0+23]:1) > 0 (signed).
  At `beq` at 0x176b4 (target 0x176e4), taken when s0(?) >= 0x9 (signed) and falls through when s0(?) < 0x9 (signed).
  At `bltz` at 0x176c4 (target 0x17730), taken when s1(?) < 0 (signed) and falls through when s1(?) >= 0 (signed).
  At `bne` at 0x176cc (target 0x17684), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `bne` at 0x176dc (target 0x176bc), taken when s0(?) < 0x9 (signed) and falls through when s0(?) >= 0x9 (signed).
  At `beq` at 0x176f4 (target 0x17754), taken when s3(?) >= a0(=[a0+23]:1) (signed) and falls through when s3(?) < a0(=[a0+23]:1) (signed).
  At `bne` at 0x17714 (target 0x176e8), taken when ra(=0x9) != at(?) and falls through when ra(=0x9) == at(?).
  Returns v0 = ? (`jr` at 0x1777c).

- `hub_error_clear` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x177ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x177ac-0x17950 (420 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0x150 (`ld` at 0x177ac).
  Loads 8 bytes into t3 from sym(.lit8) +0x60 (`ld` at 0x177b0).
  Loads 8 bytes into a3 from sym(.lit8) +0x20 (`ld` at 0x177b4).
  Loads 8 bytes into t2 from sym(.lit8) +0xc8 (`ld` at 0x177b8).
  Loads 8 bytes into t1 from sym(.lit8) +0xb8 (`ld` at 0x177bc).
  Loads 8 bytes into t0 from sym(.lit8) +0x148 (`ld` at 0x177c4).
  Loads 8 bytes into a4 from sym(.lit8) +0x158 (`ld` at 0x177f4).
  Stores 8 bytes from ra to ((a0 << 0x21) + one of 0x9200000001800400, 0x9200000001a00400) +0x0  (`sd` at 0x17844).
  Stores 8 bytes from ra to ((a0 << 0x21) + one of 0x9200000001800438, 0x9200000001a00438) +0x0  (`sd` at 0x17850).
  Stores 8 bytes from ra to ((a0 << 0x21) + one of 0x9200000001800458, 0x9200000001a00458) +0x0  (`sd` at 0x1785c).
  Stores 8 bytes from zero to ((a0 << 0x21) + one of 0x92000000018004c8, 0x9200000001a004c8) +0x0  (`sd` at 0x17864).
  Stores 8 bytes from zero to ((a0 << 0x21) + one of 0x92000000018004d0, 0x9200000001a004d0) +0x0  (`sd` at 0x1786c).
  Loads 8 bytes into t2 from (a0 << 0x21) -0x6dfffffffe03ffe8 (`ld` at 0x17884).
  Loads 8 bytes into t1 from (a0 << 0x21) -0x6dfffffffe01ffe8 (`ld` at 0x17890).
  Loads 8 bytes into t0 from (a0 << 0x21) -0x6dfffffffe07ffa8 (`ld` at 0x1789c).
  Loads 8 bytes into a7 from (a0 << 0x21) -0x6dfffffffe03ffd8 (`ld` at 0x178a8).
  Loads 8 bytes into t2 from ? (base unknown) (`ld` at 0x178b8).
  Stores 8 bytes from t2 to ? (base unknown) (`sd` at 0x178d8).
  Loads 8 bytes into a4 from sym(.lit8) +0x168 (`ld` at 0x178dc).
  Loads 8 bytes into t9 from sym(.lit8) +0x160 (`ld` at 0x178e0).
  Stores 8 bytes from ra to (a0 << 0x21) -0x6dfffffffe3ffe08  (`sd` at 0x178e8).
  Loads 8 bytes into at from (a0 << 0x21) -0x6dfffffffe3ffec8 (`ld` at 0x178ec).
  Loads 8 bytes into t8 from sym(.lit8) +0x38 (`ld` at 0x178f0).
  Stores 8 bytes from at to (a0 << 0x21) -0x6dfffffffe3ffec8 (`sd` at 0x178fc).
  Loads 8 bytes into t9 from (a0 << 0x21) -0x6dfffffffe17fee0 (`ld` at 0x17904).
  Stores 8 bytes from ra to (a0 << 0x21) -0x6dfffffffe1fbfb8  (`sd` at 0x17908).
  Stores 8 bytes from zero to (a0 << 0x21) -0x6dfffffffe1fbfb0  (`sd` at 0x1790c).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x17928).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x17944).
  At `bne` at 0x17868 (target 0x17800), taken when a6(?) < 0x2 (signed) and falls through when a6(?) >= 0x2 (signed).
  At `bne` at 0x178d4 (target 0x178ac), taken when a1(?) < 0x9 (signed) and falls through when a1(?) >= 0x9 (signed).
  At `beq` at 0x1792c (target 0x17948), taken when a1(?) >= 0x71 (signed) and falls through when a1(?) < 0x71 (signed).
  At `bne` at 0x17940 (target 0x17918), taken when a1(?) < 0x71 (signed) and falls through when a1(?) >= 0x71 (signed).
  Returns v0 = (a0 << 0x21)+0x9200000001c00000 (`jr` at 0x17948).

- `hub_error_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17950 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17950-0x17f08 (1464 bytes).
  Loads 8 bytes into s3 from sym(.srdata) +0x258 (`ld` at 0x17958).
  Loads 2 bytes into s3 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0x17964).
  Loads 8 bytes into s2 from sym(.srdata) +0x268 (`ld` at 0x1798c).
  Loads 8 bytes into s2 from sym(.srdata) +0x268 (`ld` at 0x17da4).
  Loads 8 bytes into v0 from sym(.lit8) +0x60 (`ld` at 0x179b0).
  Loads 8 bytes into v0 from sym(.lit8) +0x60 (`ld` at 0x17afc).
  Stores 8 bytes from zero to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800408, 0x9200000001a00408) +0x0  (`sd` at 0x179e8).
  Stores 8 bytes from zero to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800410, 0x9200000001a00410) +0x0  (`sd` at 0x179f4).
  Loads 8 bytes into t3 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x92000000018000f0, 0x9200000001a000f0) +0x0 (`ld` at 0x179fc).
  Stores 8 bytes from t3 to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x92000000018000f0, 0x9200000001a000f0) +0x0 (`sd` at 0x17a08).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x260, including `ld` at 0x17a20, 0x17a74, 0x17da0.
  Loads 8 bytes into v1 from abs 0xffffffffffffc400 (`ld` at 0x17a2c).
  Stores 4 bytes from at to [-0x3c00]:8 +0x884c  (`sw` at 0x17a50).
  11 such loads of 8 bytes through s1 (((a0 << 0x3) + sym(kl_error_log))) to ((a0 << 0x3) + sym(kl_error_log)) +0x0, including `ld` at 0x17a5c, 0x17a78, 0x17a80.
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x17a6c).
  Stores 4 bytes from zero to [((a0 << 0x3) + sym(kl_error_log))]:8 +0x0  (`sw` at 0x17a7c).
  Loads 8 bytes into at from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800040, 0x9200000001a00040) +0x0 (`ld` at 0x17b40).
  Loads 8 bytes into at from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800040, 0x9200000001a00040) +0x0 (`ld` at 0x17cb8).
  Loads 8 bytes into a1 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800050, 0x9200000001a00050) +0x0 (`ld` at 0x17b54).
  Loads 8 bytes into t8 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800048, 0x9200000001a00048) +0x0 (`ld` at 0x17b64).
  Loads 8 bytes into v1 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800058, 0x9200000001a00058) +0x0 (`ld` at 0x17b74).
  Loads 8 bytes into a1 from sym(pi_fatal_err_cpu_b) +0x0 (`ld` at 0x17b80).
  Loads 8 bytes into a1 from sym(pi_misc_err_cpu_a) +0x0 (`ld` at 0x17b9c).
  Loads 8 bytes into a3 from sym(pi_misc_err_cpu_a) +0x0 (`ld` at 0x17e68).
  Stores 8 bytes from v1 to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800408, 0x9200000001a00408) +0x0  (`sd` at 0x17bbc).
  Stores 8 bytes from a1 to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800408, 0x9200000001a00408) +0x0  (`sd` at 0x17e7c).
  Loads 8 bytes into v1 from sym(pi_misc_err_cpu_b) +0x0 (`ld` at 0x17bc0).
  Loads 8 bytes into a1 from sym(pi_misc_err_cpu_b) +0x0 (`ld` at 0x17e44).
  Loads 8 bytes into t8 from sym(pi_fatal_err_cpu_a) +0x0 (`ld` at 0x17bc4).
  Loads 8 bytes into a1 from sym(pi_fatal_err_cpu_a) +0x0 (`ld` at 0x17e6c).
  Stores 8 bytes from t8 to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800410, 0x9200000001a00410) +0x0  (`sd` at 0x17bd0).
  Loads 8 bytes into a1 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800408, 0x9200000001a00408) +0x0 (`ld` at 0x17c14).
  Stores 8 bytes from a1 to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800408, 0x9200000001a00408) +0x0 (`sd` at 0x17c28).
  Loads 8 bytes into at from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800410, 0x9200000001a00410) +0x0 (`ld` at 0x17c30).
  Stores 8 bytes from at to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800410, 0x9200000001a00410) +0x0 (`sd` at 0x17c3c).
  Stores 8 bytes from zero to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800448, 0x9200000001a00448) +0x0  (`sd` at 0x17c7c).
  Stores 8 bytes from zero to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800468, 0x9200000001a00468) +0x0  (`sd` at 0x17c84).
  Loads 8 bytes into v1 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800418, 0x9200000001a00418) +0x0 (`ld` at 0x17cd8).
  Stores 8 bytes from v1 to ? (base unknown) (`sd` at 0x17ce0).
  Stores 8 bytes from a1 to ? (base unknown) (`sd` at 0x17d3c).
  Stores 8 bytes from v1 to ? (base unknown) (`sd` at 0x17cec).
  Loads 8 bytes into a0 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800048, 0x9200000001a00048) +0x0 (`ld` at 0x17d04).
  Loads 8 bytes into a1 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800420, 0x9200000001a00420) +0x0 (`ld` at 0x17d28).
  Stores 8 bytes from a1 to ? (base unknown) (`sd` at 0x17d30).
  Loads 8 bytes into a3 from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe7ffbd8 (`ld` at 0x17d50).
  Loads 8 bytes into v1 from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe7ffbd8 (`ld` at 0x17d5c).
  Loads 2 bytes into a3 from abs 0xffffffffffffc42a (`lh` at 0x17d70).
  Loads 8 bytes into a3 from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0 (`ld` at 0x17d7c).
  Loads 8 bytes into a1 from sym(.srdata) +0x270 (`ld` at 0x17d84).
  Stores 8 bytes from v0 to [(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 +0x2250 (`sd` at 0x17d90).
  Loads 4 bytes into a4 from sym(numnodes) +0x0 (`lw` at 0x17da8).
  Loads 4 bytes into ra from sym(numnodes) +0x0 (`lw` at 0x17e14).
  Loads 4 bytes into ra from sym(numnodes) +0x0 (`lw` at 0x17eb8).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x17dfc).
  Loads 8 bytes into t9 from ? (base unknown) (`ld` at 0x17e00).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x17e0c).
  Stores 8 bytes from at to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800410, 0x9200000001a00410) +0x0  (`sd` at 0x17e64).
  Stores 2 bytes from a4 to sym(.bss) +0x9f94  (`sh` at 0x17e84).
  Stores 4 bytes from zero to sym(.bss) +0x9f90  (`sw` at 0x17e8c).
  Calls `hub_error_clear` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x17974).
  Calls `get_compact_nodeid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17988).
  Calls `hubii_eint_init` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x17a0c).
  Calls `hubni_eint_init` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x17a14).
  Calls `recover_error_init` via direct with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8208, a1=[((a0 << 0x3) + sym(kl_error_log))]:8, a2=?, a3=? (`jal` at 0x17a84).
  Calls `recover_error_init` via direct with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8336, a1=?, a2=?, a3=? (`jal` at 0x17a90).
  Calls `recover_error_init` via direct with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8464, a1=?, a2=?, a3=? (`jal` at 0x17a9c).
  Calls `recover_error_init` via direct with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8592, a1=?, a2=?, a3=? (`jal` at 0x17aa8).
  Calls `cause_intr_connect` via direct with a0=0x6, a1=sym(hubpi_eint_handler), a2=0x1, a3=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8, a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a7=0x200040 (`jal` at 0x17d8c).
  Calls `kmem_zalloc_node` via direct with a0=0x2258, a1=0x1, a2=?, a3=? (`jal` at 0x17ddc).
  Calls `kmem_zalloc_node` via direct with a0=0x40, a1=0x101, a2=?, a3=? (`jal` at 0x17df8).
  Calls `spinlock_init` via direct with a0=sym(kl_error_log), a1=sym(.rodata)+28464, a2=?, a3=?, a4=-0x1 (`jal` at 0x17e90).
  Calls `assfail` via direct with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x154, a3=? (`jal` at 0x17eac).
  Calls `assfail` via direct with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x162, a3=?, a7=0x0 (`jal` at 0x17ec8).
  Calls `assfail` via direct with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x163, a3=? (`jal` at 0x17ee0).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=? (`jal` at 0x17ef8).
  At `beq` at 0x17980 (target 0x17da4), taken when s0(=a0) == 0 and falls through when s0(=a0) != 0.
  At `beq` at 0x17990 (target 0x17a54), taken when s0(=a0) == v0(=ret(get_compact_nodeid)) and falls through when s0(=a0) != v0(=ret(get_compact_nodeid)).
  At `bne` at 0x17a04 (target 0x179bc), taken when a7(?) < 0x2 (signed) and falls through when a7(?) >= 0x2 (signed).
  At `beq` at 0x17a1c (target 0x17e80), taken when s0(=a0) == 0 and falls through when s0(=a0) != 0.
  At `beq` at 0x17a60 (target 0x17ebc), taken when a0(=[((a0 << 0x3) + sym(kl_error_log))]:8) == 0 and falls through when a0(=[((a0 << 0x3) + sym(kl_error_log))]:8) != 0.
  At `beq` at 0x17a70 (target 0x17ed8), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x17b8c (target 0x17e38), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x17ba4 (target 0x17e68), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x17be0 (target 0x17b0c), taken when a2(?) < 0x2 (signed) and falls through when a2(?) >= 0x2 (signed).
  At `bne` at 0x17c38 (target 0x17bfc), taken when a2(?) < 0x2 (signed) and falls through when a2(?) >= 0x2 (signed).
  At `bne` at 0x17c80 (target 0x17c54), taken when a2(?) < 0x2 (signed) and falls through when a2(?) >= 0x2 (signed).
  At `beq` at 0x17cc8 (target 0x17cf0), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x17d18 (target 0x17d40), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x17d44 (target 0x17ca8), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x17d54 (target 0x17d70), taken when a3(=[([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)-7926335344146906072]:8) == 0 and falls through when a3(=[([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)-7926335344146906072]:8) != 0.
  At `beq` at 0x17d94 (target 0x17a0c), taken when v0(=ret(cause_intr_connect)) == 0 and falls through when v0(=ret(cause_intr_connect)) != 0.
  At `blez` at 0x17db8 (target 0x17e28), taken when a4(=[sym(numnodes)]) <= 0 (signed) and falls through when a4(=[sym(numnodes)]) > 0 (signed).
  At `beq` at 0x17e08 (target 0x17ea0), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x17e10 (target 0x17ea0), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `bne` at 0x17e20 (target 0x17dd0), taken when s1(?) < ra(=[sym(numnodes)]) (signed) and falls through when s1(?) >= ra(=[sym(numnodes)]) (signed).
  At `beq` at 0x17e38 (target 0x17bd8), taken when t8(?) == 0 and falls through when t8(?) != 0.
  Returns v0 = [-0x3c00]:8+34892 (`jr` at 0x17a4c).

- `ni_port_down_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18974 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18974-0x18a24 (176 bytes).
  Loads 8 bytes into t8 from sym(.lit8) +0x160 (`ld` at 0x18990).
  Loads 8 bytes into at from (a0 << 0x21) -0x6dfffffffe180000 (`ld` at 0x1899c).
  Loads 8 bytes into v1 from (a0 << 0x21) -0x6dfffffffe180000 (`ld` at 0x18a04).
  Loads 8 bytes into t9 from sym(.lit8) +0x1a0 (`ld` at 0x189ac).
  Loads 8 bytes into t9 from sym(.lit8) +0x1a0 (`ld` at 0x18a20).
  Loads 8 bytes into t8 from (a0 << 0x21) -0x6dfffffffe17fee0 (`ld` at 0x189b0).
  Loads 8 bytes into ra from (a0 << 0x21) -0x6dfffffffe17fee0 (`ld` at 0x189c4).
  Loads 8 bytes into v0 from (a0 << 0x21) -0x6dfffffffe17fee0 (`ld` at 0x189d4).
  Loads 8 bytes into at from sym(.lit8) +0x1a8 (`ld` at 0x189b8).
  Stores 8 bytes from zero to (a0 << 0x21) -0x6dfffffffe17ff00  (`sd` at 0x189c0).
  Stores 8 bytes from zero to (a0 << 0x21) -0x6dfffffffe17ff00  (`sd` at 0x189d8).
  Calls `part_id` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1897c).
  Calls `us_delay` via direct with a0=0xc8, a1=?, a2=?, a3=? (`jal` at 0x189fc).
  At `blez` at 0x18984 (target 0x189dc), taken when v0(=ret(part_id)) <= 0 (signed) and falls through when v0(=ret(part_id)) > 0 (signed).
  At `beq` at 0x189a8 (target 0x189ec), taken when at(?) == v0(=0x4) and falls through when at(?) != v0(=0x4).
  At `beq` at 0x189bc (target 0x189dc), taken when (t8(=[(a0 << 0x21)-7926335344140091104]:8) & t9(=0xfffffff000000)) == 0 and falls through when (t8(=[(a0 << 0x21)-7926335344140091104]:8) & t9(=0xfffffff000000)) != 0.
  At `beq` at 0x189cc (target 0x189e0), taken when (ra(=[(a0 << 0x21)-7926335344140091104]:8) & at(=0x1fffffff000000)) == 0 and falls through when (ra(=[(a0 << 0x21)-7926335344140091104]:8) & at(=0x1fffffff000000)) != 0.
  At `beq` at 0x189f4 (target 0x18a1c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x18a14 (target 0x189f4), taken when (v1(=[(a0 << 0x21)-7926335344140091392]:8) & 0x2) == 0 and falls through when (v1(=[(a0 << 0x21)-7926335344140091392]:8) & 0x2) != 0.
  Returns v0 = ? (`jr` at 0x189e4).

- `check_ni_errors_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18a24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18a24-0x18d20 (764 bytes).
  Loads 8 bytes into s1 from sym(.lit8) +0x160 (`ld` at 0x18a30).
  Loads 8 bytes into at from sym(.lit8) +0x1a8 (`ld` at 0x18a34).
  Loads 8 bytes into s0 from (a0 << 0x21) -0x6dfffffffe17ff00 (`ld` at 0x18a44).
  Loads 8 bytes into v1 from sym(.lit8) +0x60 (`ld` at 0x18a48).
  Loads 8 bytes into a2 from (a0 << 0x21) -0x6dfffffffe180000 (`ld` at 0x18a58).
  Loads 8 bytes into v0 from (a0 << 0x21) -0x6dfffffffe7fff60 (`ld` at 0x18a64).
  4 such loads of 8 bytes through s1 ((a0 << 0x21)+0x9200000001e80000) to (a0 << 0x21) -0x6dfffffffe17fee0, including `ld` at 0x18a78, 0x18a88, 0x18b08.
  Stores 8 bytes from zero to (a0 << 0x21) -0x6dfffffffe17ff00  (`sd` at 0x18a7c).
  Stores 8 bytes from zero to (a0 << 0x21) -0x6dfffffffe17ff00  (`sd` at 0x18b0c).
  Stores 8 bytes from zero to (a0 << 0x21) -0x6dfffffffe17ff00  (`sd` at 0x18cd4).
  5 such stores of 8 bytes through gp (gp) to sym(p_routertick) +0x20 , including `sd` at 0x18a94, 0x18ae8, 0x18b18.
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x260, including `ld` at 0x18ab0, 0x18aec, 0x18b1c.
  Loads 8 bytes into v1 from (a0 << 0x21) -0x6dfffffffe17fff0 (`ld` at 0x18ae0).
  Loads 8 bytes into a3 from (a0 << 0x21) -0x6dfffffffe17fff0 (`ld` at 0x18cac).
  Loads 8 bytes into a2 from sym(.lit8) +0x1b0 (`ld` at 0x18c40).
  Loads 8 bytes into a2 from sym(.lit8) +0x1b0 (`ld` at 0x18c58).
  Loads 8 bytes into a2 from abs 0x9200000001680108 (`ld` at 0x18c68).
  Loads 8 bytes into a2 from sym(.lit8) +0x1b8 (`ld` at 0x18c6c).
  Loads 8 bytes into a2 from abs 0x9200000001680110 (`ld` at 0x18c7c).
  Loads 8 bytes into a2 from sym(.lit8) +0x1c0 (`ld` at 0x18c80).
  Loads 8 bytes into a2 from abs 0x9200000001680118 (`ld` at 0x18c90).
  Calls `part_id` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[(a0 << 0x21)-7926335344140091392]:8, a3=a3 at entry (arg3) (`jal` at 0x18a68).
  Calls `ni_port_down_reset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x18a80).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=? (`jal` at 0x18af8).
  Calls `ni_port_down_reset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x18b00).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=? (`jal` at 0x18b28).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344140091136]:8, a3=? (`jal` at 0x18b38).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18b58).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18b7c).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18ba0).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18bc4).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18be8).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18c0c).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18c30).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=0x10000000000000, a3=? (`jal` at 0x18c50).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=[0x9200000001680108]:8, a3=? (`jal` at 0x18c64).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=[0x9200000001680110]:8, a3=? (`jal` at 0x18c78).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=[0x9200000001680118]:8, a3=? (`jal` at 0x18c8c).
  Calls `protected_broadcast` via direct with a0=0x67, a1=?, a2=?, a3=? (`jal` at 0x18c94).
  Calls `protected_broadcast` via direct with a0=0x68, a1=?, a2=?, a3=? (`jal` at 0x18c9c).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344140091392]:8, a3=[(a0 << 0x21)-7926335344140091376]:8 (`jal` at 0x18cc0).
  Calls `ni_port_down_reset` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x18cc8).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344140091392]:8, a3=[(a0 << 0x21)-7926335344140091376]:8 (`jal` at 0x18cec).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18cf8).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344146906976]:8, a3=a3 at entry (arg3) (`jal` at 0x18d10).
  At `beq` at 0x18a60 (target 0x18a98), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) != 0.
  At `blez` at 0x18a70 (target 0x18ad0), taken when v0(=ret(part_id)) <= 0 (signed) and falls through when v0(=ret(part_id)) > 0 (signed).
  At `beq` at 0x18a9c (target 0x18cac), taken when (a2(=[(a0 << 0x21)-7926335344140091392]:8) & 0x3) == 0 and falls through when (a2(=[(a0 << 0x21)-7926335344140091392]:8) & 0x3) != 0.
  At `bne` at 0x18aac (target 0x18d08), taken when (v0(=[(a0 << 0x21)-7926335344146906976]:8) & at(=0x18000000000)) != 0 and falls through when (v0(=[(a0 << 0x21)-7926335344146906976]:8) & at(=0x18000000000)) == 0.
  At `beq` at 0x18ad8 (target 0x18b1c), taken when (v0(=0x10000000000000) & s0(=[(a0 << 0x21)-7926335344140091136]:8)) == 0 and falls through when (v0(=0x10000000000000) & s0(=[(a0 << 0x21)-7926335344140091136]:8)) != 0.
  At `bne` at 0x18ae4 (target 0x18b1c), taken when v1(=[(a0 << 0x21)-7926335344140091376]:8) != 0 and falls through when v1(=[(a0 << 0x21)-7926335344140091376]:8) == 0.
  At `beq` at 0x18b48 (target 0x18b60), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000)) != 0.
  At `beq` at 0x18b6c (target 0x18b84), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000)) != 0.
  At `beq` at 0x18b90 (target 0x18ba8), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000)) != 0.
  At `beq` at 0x18bb4 (target 0x18bcc), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000)) != 0.
  At `beq` at 0x18bd8 (target 0x18bf0), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000000)) != 0.
  At `beq` at 0x18bfc (target 0x18c14), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000000)) != 0.
  At `beq` at 0x18c20 (target 0x18c38), taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000000)) == 0 and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000000)) != 0.
  At `beq` at 0x18c3c (target 0x18c5c), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x18cb0 (target 0x18ce4), taken when a3(=[(a0 << 0x21)-7926335344140091376]:8) != 0 and falls through when a3(=[(a0 << 0x21)-7926335344140091376]:8) == 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x18ac8).

- `hubni_error_handler_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18d20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18d20-0x18ec0 (416 bytes).
  Loads 8 bytes into t8 from sym(.lit8) +0x160 (`ld` at 0x18d28).
  Loads 8 bytes into at from sym(.lit8) +0x1a8 (`ld` at 0x18d34).
  Loads 8 bytes into a3 from (a1 << 0x21) -0x6dfffffffe17ff00 (`ld` at 0x18d3c).
  Loads 8 bytes into t9 from (a1 << 0x21) -0x6dfffffffe17fee0 (`ld` at 0x18d74).
  Loads 8 bytes into a2 from (a1 << 0x21) -0x6dfffffffe17fee0 (`ld` at 0x18ea4).
  Loads 8 bytes into a3 from (a1 << 0x21) -0x6dfffffffe17fee0 (`ld` at 0x18eb4).
  4 such stores of 8 bytes through gp (gp) to sym(p_routertick) +0x28 , including `sd` at 0x18d7c, 0x18d9c, 0x18eb0.
  Loads 8 bytes into at from (a1 << 0x21) -0x6dfffffffe17fff0 (`ld` at 0x18d94).
  Loads 8 bytes into a0 from sym(.lit8) +0x98 (`ld` at 0x18dbc).
  Stores 8 bytes from v0 to ((ret(get_slice) << 0x3) + (ret(get_nasid) << 0x21)) -0x6fffffffcfffff40  (`sd` at 0x18dd4).
  Loads 8 bytes into s1 from sym(.srdata) +0x2a8 (`ld` at 0x18ddc).
  Loads 8 bytes into s1 from sym(.srdata) +0x260 (`ld` at 0x18e0c).
  Loads 8 bytes into a1 from sym(.srdata) +0x260 (`ld` at 0x18e60).
  Loads 8 bytes into a1 from sym(.srdata) +0x260 (`ld` at 0x18e94).
  Loads 8 bytes into s1 from sym(.srdata) +0x2b0 (`ld` at 0x18e30).
  Calls `part_id` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a1 << 0x21)-7926335344140091136]:8 (`jal` at 0x18d5c).
  Calls `ni_port_down_reset` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x18d6c).
  Calls `splerr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18da0).
  Calls `get_slice` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18da8).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18db0).
  Calls `set_node_panic_flag` via direct with a0=0x9000000030000000, a1=(ret(get_nasid) << 0x21), a2=?, a3=? (`jal` at 0x18dd0).
  Calls `hubni_print_state` via direct with a0=a1 at entry (arg1), a1=0x0, a2=sym(ip27log_printf), a3=0x2 (`jal` at 0x18de8).
  Calls `enter_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18df0).
  Calls `router_print_state` via direct with a0=0x0, a1=0x0, a2=sym(ip27log_printf), a3=0x2 (`jal` at 0x18e04).
  Calls `ip27log_printf` via direct with a0=0x2, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jal` at 0x18e1c).
  Calls `enter_promlog_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18e24).
  Calls `hubni_print_state` via direct with a0=a1 at entry (arg1), a1=0x16, a2=sym(cmn_err), a3=0x4 (`jal` at 0x18e3c).
  Calls `router_print_state` via direct with a0=0x0, a1=0x16, a2=sym(cmn_err), a3=0x4 (`jal` at 0x18e50).
  Calls `panicspin` via direct with a0=?, a1=sym(.rodata)+28464, a2=a2 at entry (arg2), a3=? (`jal` at 0x18e64).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+28464, a2=a2 at entry (arg2), a3=? (`jal` at 0x18e84).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18e9c).
  Calls `ni_port_down_reset` via direct with a0=a1 at entry (arg1), a1=?, a2=[(a1 << 0x21)-7926335344140091104]:8, a3=? (`jal` at 0x18eac).
  At `beq` at 0x18d54 (target 0x18d80), taken when (a3(=[(a1 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) == 0 and falls through when (a3(=[(a1 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) != 0.
  At `blez` at 0x18d64 (target 0x18d80), taken when v0(=ret(part_id)) <= 0 (signed) and falls through when v0(=ret(part_id)) > 0 (signed).
  At `beq` at 0x18d8c (target 0x18da0), taken when (a3(?) & ra(=0x10000000000000)) == 0 and falls through when (a3(?) & ra(=0x10000000000000)) != 0.
  At `beq` at 0x18d98 (target 0x18e94), taken when at(=[(a1 << 0x21)-7926335344140091376]:8) == 0 and falls through when at(=[(a1 << 0x21)-7926335344140091376]:8) != 0.
  At `bne` at 0x18e5c (target 0x18e80), taken when a2 != 0 and falls through when a2 == 0.
  Returns v0 = ? (`jr` at 0x18e78).

- `check_ni_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18ec0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18ec0-0x18ee4 (36 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18ec8).
  Calls `check_ni_errors_nasid [0x18a24]` via direct with a0=ret(get_nasid), a1=?, a2=?, a3=? (`jal` at 0x18ed0).
  Returns v0 = ret(check_ni_errors_nasid) (`jr` at 0x18edc).

- `hubni_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18ee4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18ee4-0x18f1c (56 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18ef4).
  Calls `hubni_error_handler_nasid [0x18d20]` via direct with a0=a0 at entry (arg0), a1=ret(get_nasid), a2=a1 at entry (arg1), a3=? (`jal` at 0x18f04).
  Returns v0 = ret(hubni_error_handler_nasid) (`jr` at 0x18f14).

- `save_md_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x190d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x190d4-0x19198 (196 bytes).
  Loads 8 bytes into a4 from sym(.srdata) +0x2a0 (`ld` at 0x190d4).
  Loads 2 bytes into a4 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x190e0).
  Loads 8 bytes into v0 from sym(.srdata) +0x268 (`ld` at 0x190e8).
  Loads 8 bytes into v0 from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x190fc).
  Stores 8 bytes from s2 to ret(md_err_log_new) +0x0  (`sd` at 0x1912c).
  Stores 8 bytes from s1 to ret(md_err_log_new) +0x8  (`sd` at 0x19130).
  Stores 4 bytes from s0 to ret(md_err_log_new) +0x18  (`sw` at 0x19134).
  Loads 8 bytes into a1 from sym(.srdata) +0x260 (`ld` at 0x19154).
  Loads 8 bytes into a1 from sym(.srdata) +0x260 (`ld` at 0x19178).
  Calls `md_err_log_new` via direct with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[(sym(nasid_to_compact_node) + (a0 + a0))]:2, a5=(a0 + a0) (`jal` at 0x1911c).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=[(sym(nasid_to_compact_node) + (a0 + a0))]:2, a3=a3 at entry (arg3), a4=[(sym(nasid_to_compact_node) + (a0 + a0))]:2, a5=(a0 + a0) (`jal` at 0x19160).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=a2 at entry (arg2) (`jal` at 0x19188).
  At `beq` at 0x19114 (target 0x19154), taken when v0(=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8) == 0 and falls through when v0(=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8) != 0.
  At `beq` at 0x19124 (target 0x19170), taken when v0(=ret(md_err_log_new)) == 0 and falls through when v0(=ret(md_err_log_new)) != 0.
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x1914c).

- `probe_md_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19198 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19198-0x191c8 (48 bytes).
  Loads 8 bytes into v1 from abs 0xffffffffffffc400 (`ld` at 0x191a8).
  Stores 4 bytes from at to [-0x3c00]:8 +0x884c  (`sw` at 0x191c4).
  Calls `log_md_errors` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x191a0).
  Returns v0 = [-0x3c00]:8+34892 (`jr` at 0x191c0).

- `log_md_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x191c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x191c8-0x194c0 (760 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x148 (`ld` at 0x19208).
  Loads 8 bytes into s4 from sym(.lit8) +0xb8 (`ld` at 0x1920c).
  Loads 8 bytes into t8 from sym(.lit8) +0xc8 (`ld` at 0x19214).
  Loads 8 bytes into at from (a0 << 0x21) -0x6dfffffffe01ffe8 (`ld` at 0x19220).
  Loads 8 bytes into s2 from (a0 << 0x21) -0x6dfffffffe03ffe8 (`ld` at 0x19224).
  Loads 8 bytes into s4 from (a0 << 0x21) -0x6dfffffffe03ffd8 (`ld` at 0x1922c).
  Loads 8 bytes into s0 from (a0 << 0x21) -0x6dfffffffe07ffc0 (`ld` at 0x19230).
  Loads 8 bytes into s6 from (a0 << 0x21) -0x6dfffffffe07ffa8 (`ld` at 0x1923c).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x260, including `ld` at 0x1925c, 0x19284, 0x192ac.
  Calls `splerr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x191f0).
  Calls `save_md_error` via direct with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344138780632]:8, a2=0x0, a3=0x3 (`jal` at 0x19274).
  Calls `save_md_error` via direct with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344138780648]:8, a2=0x0, a3=0x1 (`jal` at 0x192a0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x192c8).
  Calls `klsave_md_registers` via direct with a0=[(a0 << 0x21)-7926335344138780648]:8, a1=0x0, a2=0x1, a3=a0 at entry (arg0) (`jal` at 0x192f8).
  Calls `klsave_md_registers` via direct with a0=[(a0 << 0x21)-7926335344138780632]:8, a1=0x0, a2=0x3, a3=a0 at entry (arg0) (`jal` at 0x19310).
  Calls `klsave_md_registers` via direct with a0=[(a0 << 0x21)-7926335344139042752]:8, a1=[(a0 << 0x21)-7926335344139042728]:8, a2=0x4, a3=a0 at entry (arg0) (`jal` at 0x1937c).
  Calls `kl_panic` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x193a8).
  Calls `save_md_error` via direct with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344139042752]:8, a2=[(a0 << 0x21)-7926335344139042728]:8, a3=0x4 (`jal` at 0x19424).
  Calls `save_md_error` via direct with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344138649576]:8, a2=0x0, a3=0x2 (`jal` at 0x19454).
  Calls `klsave_md_registers` via direct with a0=?, a1=0x0, a2=0x2, a3=a0 at entry (arg0) (`jal` at 0x19488).
  At `bltz` at 0x19240 (target 0x19448), taken when at(=([(a0 << 0x21)-7926335344138649576]:8 << 0x3)) < 0 (signed) and falls through when at(=([(a0 << 0x21)-7926335344138649576]:8 << 0x3)) >= 0 (signed).
  At `bne` at 0x1924c (target 0x19294), taken when s8(?) != 0 and falls through when s8(?) == 0.
  At `bltz` at 0x19254 (target 0x19294), taken when v0(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) < 0 (signed) and falls through when v0(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) >= 0 (signed).
  At `beq` at 0x19264 (target 0x193c0), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `beq` at 0x1927c (target 0x19498), taken when v0(=ret(save_md_error)) == 0 and falls through when v0(=ret(save_md_error)) != 0.
  At `beq` at 0x192a8 (target 0x1943c), taken when v0(=ret(save_md_error)) == 0 and falls through when v0(=ret(save_md_error)) != 0.
  At `beq` at 0x192b8 (target 0x19264), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `bltz` at 0x192d4 (target 0x19480), taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  At `bne` at 0x192dc (target 0x192f0), taken when s8(?) != 0 and falls through when s8(?) == 0.
  At `bgez` at 0x192e8 (target 0x19300), taken when t9(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) >= 0 (signed) and falls through when t9(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) < 0 (signed).
  At `beq` at 0x19300 (target 0x19318), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `bne` at 0x19318 (target 0x19374), taken when s5(?) != 0 and falls through when s5(?) == 0.
  At `bne` at 0x1932c (target 0x19370), taken when (ra(?) & 0x3) != 0 and falls through when (ra(?) & 0x3) == 0.
  At `bne` at 0x19340 (target 0x19370), taken when (v0(?) & 0x3) != 0 and falls through when (v0(?) & 0x3) == 0.
  At `bne` at 0x19348 (target 0x19374), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x19350 (target 0x19370), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `bne` at 0x1935c (target 0x19370), taken when (a1(?) & 0x3) != 0 and falls through when (a1(?) & 0x3) == 0.
  At `beq` at 0x19368 (target 0x19388), taken when (a2(?) & 0xf) == 0 and falls through when (a2(?) & 0xf) != 0.
  At `beq` at 0x193a0 (target 0x193b0), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `bne` at 0x193c8 (target 0x19418), taken when s5(?) != 0 and falls through when s5(?) == 0.
  At `bne` at 0x193d4 (target 0x19418), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x193dc (target 0x19418), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `bne` at 0x193e8 (target 0x19418), taken when (a4(?) & 0x3) != 0 and falls through when (a4(?) & 0x3) == 0.
  At `bne` at 0x193f4 (target 0x1941c), taken when (a5(?) & 0x3) != 0 and falls through when (a5(?) & 0x3) == 0.
  At `bne` at 0x19404 (target 0x1941c), taken when (a6(?) & 0x3) != 0 and falls through when (a6(?) & 0x3) == 0.
  At `beq` at 0x19414 (target 0x192c8), taken when (a7(?) & 0xf) == 0 and falls through when (a7(?) & 0xf) != 0.
  At `beq` at 0x1946c (target 0x19248), taken when 0 >= v0(=ret(save_md_error)) (unsigned) and falls through when 0 < v0(=ret(save_md_error)) (unsigned).
  At `beq` at 0x1949c (target 0x194b0), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `bne` at 0x194b0 (target 0x192c8), taken when t9(?) != 0 and falls through when t9(?) == 0.
  Returns v0 = ? (`jr` at 0x193b8).

- `check_md_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x194c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x194c0-0x1972c (620 bytes).
  Loads 8 bytes into t8 from sym(.srdata) +0x2a0 (`ld` at 0x194d4).
  Loads 2 bytes into t8 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0x194ec).
  Loads 8 bytes into s4 from sym(.srdata) +0x268 (`ld` at 0x194f0).
  Loads 8 bytes into s4 from (sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3)) +0x0 (`ld` at 0x19504).
  Loads 8 bytes into a1 from a3 (arg3 at entry) +0x0 (`ld` at 0x1952c).
  Loads 8 bytes into s5 from sym(.lit8) +0x48 (`ld` at 0x19548).
  Loads 8 bytes into v0 from sym(.lit8) +0xc0 (`ld` at 0x19568).
  Loads 8 bytes into ra from sym(.lit8) +0x1c8 (`ld` at 0x19574).
  Loads 8 bytes into t2 from sym(.lit8) +0x1c8 (`ld` at 0x196bc).
  6 such loads of 8 bytes through s0 (?) to ? (base unknown), including `ld` at 0x1959c, 0x1964c, 0x19670.
  Loads 8 bytes into v0 from abs 0x9200000001030100 (`ld` at 0x195a0).
  Stores 8 bytes from s0 to a3 (arg3 at entry) +0x0 (`sd` at 0x195b4).
  Loads 4 bytes into v0 from ? (base unknown) (`lw` at 0x195b8).
  Loads 4 bytes into a1 from sym(scache_linemask) +0x0 (`lw` at 0x195c8).
  Loads 4 bytes into a6 from sym(scache_linemask) +0x0 (`lw` at 0x19684).
  Loads 4 bytes into t8 from sym(scache_linemask) +0x0 (`lw` at 0x196e4).
  Loads 8 bytes into a0 from sym(.srdata) +0x260 (`ld` at 0x195e0).
  Stores 8 bytes from zero to a3 (arg3 at entry) +0x0  (`sd` at 0x19610).
  4 such stores of 8 bytes through s7 (a1) to a1 (arg1 at entry) +0x0, including `sd` at 0x1967c, 0x196b0, 0x196dc.
  Calls `md_err_log_prev` via direct with a0=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a1=[a3]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19538).
  Calls `kl_panic` via direct with a0=sym(.rodata)+28464, a1=[sym(scache_linemask)], a2=0x1, a3=0x3fffffffff, a4=0x4 (`jal` at 0x195e4).
  Calls `md_err_log_prev` via direct with a0=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a1=?, a2=?, a3=? (`jal` at 0x195f0).
  Calls `md_err_log_last` via direct with a0=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a1=[a3]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19714).
  At `beq` at 0x19524 (target 0x19724), taken when s4(=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8) == 0 and falls through when s4(=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8) != 0.
  At `beq` at 0x19530 (target 0x19714), taken when a1(=[a3]:8) == 0 and falls through when a1(=[a3]:8) != 0.
  At `beq` at 0x19544 (target 0x19614), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x19594 (target 0x195b4), taken when s1(=a2) == a0(=-0x1) and falls through when s1(=a2) != a0(=-0x1).
  At `beq` at 0x195ac (target 0x19610), taken when v0(?) >= s1(=a2) (unsigned) and falls through when v0(?) < s1(=a2) (unsigned).
  At `beq` at 0x195bc (target 0x19680), taken when v0(?) == a1(=0x2) and falls through when v0(?) != a1(=0x2).
  At `beq` at 0x195c4 (target 0x196b4), taken when v0(?) == a2(=0x1) and falls through when v0(?) != a2(=0x1).
  At `beq` at 0x195cc (target 0x196e0), taken when v0(?) == a3(=0x3) and falls through when v0(?) != a3(=0x3).
  At `beq` at 0x195d8 (target 0x19648), taken when v0(?) == a4(=0x4) and falls through when v0(?) != a4(=0x4).
  At `bne` at 0x19600 (target 0x19594), taken when v0(=ret(md_err_log_prev)) != 0 and falls through when v0(=ret(md_err_log_prev)) == 0.
  At `bne` at 0x19668 (target 0x195f0), taken when a1(?) != a2(?) and falls through when a1(?) == a2(?).
  At `bne` at 0x196a4 (target 0x195ec), taken when a6(?) != a7(?) and falls through when a6(?) == a7(?).
  At `bne` at 0x196d0 (target 0x195ec), taken when t1(?) != t2(?) and falls through when t1(?) == t2(?).
  At `bne` at 0x19704 (target 0x195ec), taken when t8(?) != t9(?) and falls through when t8(?) == t9(?).
  Returns v0 = one of 0x0, 0x1, 0x2, 0x3 (`jr` at 0x19640).

- `md_err_log_first` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1972c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1972c-0x19764 (56 bytes).
  Loads 4 bytes into a3 from a0 (arg0 at entry) +0x0 (`lw` at 0x1972c).
  Loads 4 bytes into a4 from ? (base unknown) (`lw` at 0x1973c).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0x20 (`lw` at 0x19758).
  At `beq` at 0x19740 (target 0x19758), taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns v0 = ? (`jr` at 0x19750).

- `md_err_log_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19764 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19764-0x197f8 (148 bytes).
  Loads 4 bytes into a6 from a0 (arg0 at entry) +0x0 (`lw` at 0x197a8).
  Loads 8 bytes into a0 from sym(.srdata) +0x260 (`ld` at 0x197dc).
  Calls `assfail` via direct with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x603, a3=a3 at entry (arg3) (`jal` at 0x197e8).
  At `bltz` at 0x19784 (target 0x197dc), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `beq` at 0x1978c (target 0x197dc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x197c8 (target 0x197d4), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  Returns v0 = ? (`jr` at 0x197d4).

- `md_err_log_last` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x197f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x197f8-0x19824 (44 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`lw` at 0x197f8).
  Loads 4 bytes into at from ? (base unknown) (`lw` at 0x19810).
  Returns v0 = ? (`jr` at 0x1981c).

- `md_err_log_prev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19824 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19824-0x198cc (168 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0x260 (`ld` at 0x19850).
  Loads 8 bytes into a0 from sym(.srdata) +0x260 (`ld` at 0x198b0).
  Loads 4 bytes into a6 from a0 (arg0 at entry) +0x0 (`lw` at 0x19868).
  Loads 4 bytes into a6 from ? (base unknown) (`lw` at 0x19898).
  Calls `assfail` via direct with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x625, a3=a3 at entry (arg3) (`jal` at 0x198bc).
  At `bltz` at 0x19844 (target 0x198b0), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `beq` at 0x1984c (target 0x198b4), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x19890 (target 0x198a8), taken when a5(?) == a6(?) and falls through when a5(?) != a6(?).
  Returns v0 = ? (`jr` at 0x198a8).

- `md_err_log_new` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x198cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x198cc-0x1994c (128 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`ll` at 0x198d0).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x0  (`sc` at 0x198dc).
  Loads 4 bytes into v1 from ? (base unknown) (`lw` at 0x198f8).
  Loads 8 bytes into a3 from sym(.lit8) +0x48 (`ld` at 0x198fc).
  Loads 8 bytes into a3 from abs 0x9200000001030100 (`ld` at 0x19900).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0x19910).
  Stores 8 bytes from a3 to ? (base unknown)  (`sd` at 0x19930).
  At `beql` at 0x198e0 (target 0x198d0), taken when a1(=[a0]+1) == 0 and falls through when a1(=[a0]+1) != 0.
  At `beq` at 0x19904 (target 0x1993c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x19928 (target 0x19934), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x1993c (target 0x19930), taken when v0(?) != 0 and falls through when v0(?) == 0.
  Returns v0 = ? (`jr` at 0x19934).

- `hubpi_spool_get_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19b20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19b20-0x19d50 (560 bytes).
  4 such loads of 2 bytes through zero (0x0) to abs 0xffffffffffffc42a, including `lh` at 0x19b48, 0x19c10, 0x19c90.
  Loads 8 bytes into t9 from sym(.srdata) +0x268 (`ld` at 0x19b4c).
  Loads 8 bytes into a0 from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0 (`ld` at 0x19b58).
  Loads 8 bytes into t1 from sym(.lit8) +0x1d8 (`ld` at 0x19b5c).
  Loads 8 bytes into t2 from sym(.srdata) +0x280 (`ld` at 0x19b64).
  Loads 8 bytes into a4 from sym(.lit8) +0x1d0 (`ld` at 0x19b70).
  5 such loads of 2 bytes through zero (0x0) to abs 0xffffffffffffc428, including `lh` at 0x19b7c, 0x19bc0, 0x19bfc.
  Loads 8 bytes into ra from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8 (`ld` at 0x19b88).
  Loads 1 byte into ra from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528 (`lbu` at 0x19b8c).
  Loads 8 bytes into a5 from ([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)) +0x2210 (`ld` at 0x19b98).
  Loads 8 bytes into v1 from ([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)) +0x2230 (`ld` at 0x19ba4).
  Loads 8 bytes into a1 from sym(.lit8) +0x1e0 (`ld` at 0x19bac).
  Loads 8 bytes into a3 from one of 0x9200000001000430, 0x9200000001000450 +0x0 (`ld` at 0x19bb8).
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x0  (`sd` at 0x19bbc).
  Loads 8 bytes into a2 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8 (`ld` at 0x19bcc).
  Loads 1 byte into a2 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528 (`lbu` at 0x19bd0).
  Loads 8 bytes into a3 from sym(.lit8) +0x1e8 (`ld` at 0x19bd4).
  Loads 8 bytes into a1 from one of 0x9200000001000440, 0x9200000001000460 +0x0 (`ld` at 0x19be4).
  Stores 8 bytes from a1 to a1 (arg1 at entry) +0x0  (`sd` at 0x19be8).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x0 (`ld` at 0x19bec).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x0 (`ld` at 0x19c68).
  Loads 8 bytes into t3 from sym(.lit8) +0x208 (`ld` at 0x19c04).
  Loads 8 bytes into a6 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8 (`ld` at 0x19c0c).
  Loads 1 byte into a6 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528 (`lbu` at 0x19c14).
  Loads 8 bytes into t1 from sym(.lit8) +0x1f8 (`ld` at 0x19c18).
  Loads 8 bytes into a7 from sym(.lit8) +0x1f0 (`ld` at 0x19c20).
  Loads 8 bytes into a4 from sym(.lit8) +0x200 (`ld` at 0x19c2c).
  Loads 8 bytes into a5 from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0 (`ld` at 0x19c38).
  Stores 8 bytes from zero to one of 0x9200000001000448, 0x9200000001000468 +0x0  (`sd` at 0x19c44).
  Loads 8 bytes into a4 from one of 0x9200000001000418, 0x9200000001000420 +0x0 (`ld` at 0x19c4c).
  Stores 8 bytes from a4 to ([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)) +0x2230  (`sd` at 0x19c58).
  Loads 8 bytes into a1 from a1 (arg1 at entry) +0x0 (`ld` at 0x19c5c).
  Loads 8 bytes into v1 from ([([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8 | table(0x9600000000000000)) +0x0 (`ld` at 0x19c80).
  Stores 8 bytes from v1 to a0 (arg0 at entry) +0x0 (`sd` at 0x19c84).
  Loads 8 bytes into at from (([-0x3bd8]:2 << 0x4) + sym(pdaindr)) +0x8 (`ld` at 0x19c98).
  Loads 1 byte into at from [(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8 +0x528 (`lbu` at 0x19ca4).
  Loads 8 bytes into ra from (([-0x3bd6]:2 << 0x3) + sym(kl_error_log)) +0x0 (`ld` at 0x19ca8).
  Loads 8 bytes into t1 from ([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)) +0x2210 (`ld` at 0x19cb4).
  Stores 8 bytes from t1 to ([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)) +0x2210  (`sd` at 0x19cbc).
  Loads 8 bytes into a6 from (([-0x3bd8]:2 << 0x4) + sym(pdaindr)) +0x8 (`ld` at 0x19cd0).
  Loads 1 byte into a6 from [(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8 +0x528 (`lbu` at 0x19cdc).
  Loads 8 bytes into a0 from (([-0x3bd6]:2 << 0x3) + sym(kl_error_log)) +0x0 (`ld` at 0x19ce0).
  Loads 8 bytes into a0 from [(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 +0x2250 (`ld` at 0x19cec).
  Loads 8 bytes into a5 from ([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)) +0x2210 (`ld` at 0x19cf0).
  Stores 8 bytes from a0 to ([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)) +0x2210 (`sd` at 0x19d2c).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19b38).
  Calls `splerr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x19b40).
  Calls `splx` via direct with a0=ret(splerr), a1=[one of 0x9200000001000440, 0x9200000001000460]:8, a2=?, a3=0x9200000001000460, a4=[one of 0x9200000001000418, 0x9200000001000420]:8, a5=([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)), a6=([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3), a7=one of 0x9200000001000448, 0x9200000001000468 (`jal` at 0x19c54).
  Calls `klsave_spool_registers` via direct with a0=[a0]:8, a1=[a1]:8, a2=0x2, a3=? (`jal` at 0x19c64).
  Calls `splx` via direct with a0=ret(splerr), a1=?, a2=?, a3=?, a4=one of 0x9200000001000430, 0x9200000001000450, a5=[([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3))+8720]:8, a6=([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)) (`jal` at 0x19d04).
  Calls `splx` via direct with a0=ret(splerr), a1=[one of 0x9200000001000440, 0x9200000001000460]:8, a2=?, a3=0x9200000001000460, a4=one of 0x9200000001000430, 0x9200000001000450, a5=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8, a6=([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)) (`jal` at 0x19d30).
  Calls `splx` via direct with a0=ret(splerr), a1=?, a2=?, a3=?, a4=0x9200000001000430 (`jal` at 0x19d40).
  At `beq` at 0x19b74 (target 0x19d40), taken when a0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) == 0 and falls through when a0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) != 0.
  At `beq` at 0x19b9c (target 0x19d40), taken when a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8) == 0 and falls through when a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8) != 0.
  At `bne` at 0x19bb0 (target 0x19c74), taken when v1(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8752]:8) != a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8) and falls through when v1(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8752]:8) == a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8).
  At `beq` at 0x19bf4 (target 0x19d30), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x19cfc (target 0x19d28), taken when (a5(=[([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3))+8720]:8) & a1(=[[(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8+8784]:8-1)) == 0 and falls through when (a5(=[([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3))+8720]:8) & a1(=[[(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8+8784]:8-1)) != 0.
  Returns v0 = one of 0x0, 0x1, 0x2 (`jr` at 0x19d20).

- `huberror_process_rrb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19d50 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19d50-0x1a290 (1344 bytes).
  Loads 8 bytes into a5 from sym(.srdata) +0x260 (`ld` at 0x19d58).
  Loads 8 bytes into a0 from (sym(.rodata)+28464 + (a0 << 0x3)) +0x0 (`ld` at 0x19d7c).
  Calls `(unknown callee)` via register with a0=?, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=sym(.rodata)+28464 (`jr` at 0x19d80).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=sym(.rodata)+28464 (`jal` at 0x1a19c).
  At `beq` at 0x19d74 (target 0x1a198), taken when a0 >= 0x8 (unsigned) and falls through when a0 < 0x8 (unsigned).
  At `bne` at 0x19da8 (target 0x1a084), the condition is not analyzed.
  At `beq` at 0x19db8 (target 0x1a1ac), the condition is not analyzed.
  At `beq` at 0x19de0 (target 0x19e44), the condition is not analyzed.
  At `bne` at 0x19e08 (target 0x1a0a0), the condition is not analyzed.
  At `beq` at 0x19e18 (target 0x1a1c4), the condition is not analyzed.
  At `beq` at 0x19e38 (target 0x19e44), the condition is not analyzed.
  At `bne` at 0x19e78 (target 0x1a0c0), the condition is not analyzed.
  At `beq` at 0x19e88 (target 0x1a1e0), the condition is not analyzed.
  At `beq` at 0x19ea8 (target 0x19e44), the condition is not analyzed.
  At `bne` at 0x19ecc (target 0x1a0e0), the condition is not analyzed.
  At `beq` at 0x19edc (target 0x1a1fc), the condition is not analyzed.
  At `beq` at 0x19f00 (target 0x19e44), the condition is not analyzed.
  At `bne` at 0x19f28 (target 0x1a100), the condition is not analyzed.
  At `beq` at 0x19f38 (target 0x19e40), the condition is not analyzed.
  At `beq` at 0x19f58 (target 0x19e44), the condition is not analyzed.
  At `bne` at 0x19f80 (target 0x1a120), the condition is not analyzed.
  At `beq` at 0x19f90 (target 0x1a214), the condition is not analyzed.
  At `beq` at 0x19fa0 (target 0x1a07c), the condition is not analyzed.
  At `beq` at 0x19fc0 (target 0x19e44), the condition is not analyzed.
  At `bne` at 0x19fe8 (target 0x1a140), the condition is not analyzed.
  At `beq` at 0x19ff8 (target 0x1a25c), the condition is not analyzed.
  At `beq` at 0x1a01c (target 0x19e44), the condition is not analyzed.
  At `bne` at 0x1a044 (target 0x1a160), the condition is not analyzed.
  At `beq` at 0x1a054 (target 0x1a180), the condition is not analyzed.
  At `beq` at 0x1a074 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a07c (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a098 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a0b8 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a0d8 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a0f8 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a118 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a138 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a158 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a178 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a188 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a190 (target 0x1a274), the condition is not analyzed.
  At `beq` at 0x1a1bc (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a1d8 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a1f4 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a20c (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a244 (target 0x19f98), the condition is not analyzed.
  At `beq` at 0x1a24c (target 0x19f98), the condition is not analyzed.
  At `beq` at 0x1a254 (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a26c (target 0x19e44), the condition is not analyzed.
  At `beq` at 0x1a288 (target 0x19e44), the condition is not analyzed.
  The instructions from 0x19d88 to 0x19e40 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x19e58 to 0x1a194 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1a1ac to 0x1a28c are not reached by any path from the entry, and their branches are not listed.

- `huberror_process_wrb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a290 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a290-0x1a70c (1148 bytes).
  11 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x260, including `ld` at 0x1a30c, 0x1a4a0, 0x1a5b8.
  Loads 2 bytes into a0 from abs 0xffffffffffffc42a (`lh` at 0x1a62c).
  Loads 2 bytes into a3 from abs 0xffffffffffffc42a (`lh` at 0x1a6dc).
  Loads 2 bytes into a4 from abs 0xffffffffffffc42a (`lh` at 0x1a6f8).
  Calls `nasid_to_partid` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a2e8).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a2f0).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1a300).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x8, a3=? (`jal` at 0x1a318).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x8, a3=? (`jal` at 0x1a350).
  Calls `nasid_to_partid` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a378).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a380).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1a390).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=? (`jal` at 0x1a3a8).
  Calls `nasid_to_partid` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a3d0).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a3d8).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1a3e8).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=? (`jal` at 0x1a3fc).
  Calls `nasid_to_partid` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a424).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a42c).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1a440).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0xa, a3=? (`jal` at 0x1a458).
  Calls `nasid_to_partid` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1a47c).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a484).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1a494).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x7, a3=? (`jal` at 0x1a4ac).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=? (`jal` at 0x1a4cc).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=? (`jal` at 0x1a4ec).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0xa, a3=? (`jal` at 0x1a50c).
  Calls `partition_handle_error` via direct with a0=0x0, a1=a1 at entry (arg1), a2=0x7, a3=? (`jal` at 0x1a52c).
  Calls `error_check_poisoned_state` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x1, a3=? (`jal` at 0x1a54c).
  Calls `error_check_memory_access` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=? (`jal` at 0x1a56c).
  Calls `error_check_memory_access` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=? (`jal` at 0x1a590).
  Calls `kl_ioerror_handler` via direct with a0=[-0x3bd6]:2, a1=[-0x3bd6]:2, a2=-0x1, a3=0x6, a4=a1 at entry (arg1), a5=0x0, a6=0x1, a7=0x0 (`jal` at 0x1a638).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jal` at 0x1a65c).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=? (`jal` at 0x1a674).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=? (`jal` at 0x1a68c).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=? (`jal` at 0x1a6a8).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=? (`jal` at 0x1a6c4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=[-0x3bd6]:2 (`jal` at 0x1a6e0).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=sym(.rodata)+28464, a3=a1 at entry (arg1), a4=[-0x3bd6]:2 (`jal` at 0x1a6fc).
  At `beq` at 0x1a2b0 (target 0x1a36c), taken when a0 == s1(=0x3) and falls through when a0 != s1(=0x3).
  At `beq` at 0x1a2b8 (target 0x1a3c4), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x1a2c0 (target 0x1a418), taken when a0 == at(=0x1) and falls through when a0 != at(=0x1).
  At `beq` at 0x1a2cc (target 0x1a474), taken when a0 == v1(=0x6) and falls through when a0 != v1(=0x6).
  At `bne` at 0x1a2d8 (target 0x1a650), taken when v0(=a0) != a0(=0x7) and falls through when v0(=a0) == a0(=0x7).
  At `bne` at 0x1a2f8 (target 0x1a34c), taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)) and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  At `beq` at 0x1a308 (target 0x1a66c), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `bne` at 0x1a388 (target 0x1a4c8), taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)) and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  At `beq` at 0x1a398 (target 0x1a548), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `bne` at 0x1a3e0 (target 0x1a4e8), taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)) and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  At `beq` at 0x1a3f0 (target 0x1a564), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `bne` at 0x1a438 (target 0x1a508), taken when a1(?) != v0(=ret(part_id)) and falls through when a1(?) == v0(=ret(part_id)).
  At `beq` at 0x1a448 (target 0x1a58c), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `bne` at 0x1a48c (target 0x1a528), taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)) and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  At `beq` at 0x1a49c (target 0x1a684), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `beq` at 0x1a554 (target 0x1a69c), taken when v0(=ret(error_check_poisoned_state)) == s1(=0x3) and falls through when v0(=ret(error_check_poisoned_state)) != s1(=0x3).
  At `beq` at 0x1a574 (target 0x1a6b8), taken when v0(=ret(error_check_memory_access)) == 0 and falls through when v0(=ret(error_check_memory_access)) != 0.
  At `beq` at 0x1a598 (target 0x1a5b0), taken when v0(=ret(error_check_memory_access)) == 0 and falls through when v0(=ret(error_check_memory_access)) != 0.
  At `beq` at 0x1a5b4 (target 0x1a6d4), taken when t0(=a2) == 0 and falls through when t0(=a2) != 0.
  At `beq` at 0x1a5bc (target 0x1a5fc), taken when s2(=a3) == 0 and falls through when s2(=a3) != 0.
  At `beq` at 0x1a5c8 (target 0x1a610), taken when s2(=a3) == t1(=0x2) and falls through when s2(=a3) != t1(=0x2).
  At `beq` at 0x1a5d4 (target 0x1a620), taken when s2(=a3) == t2(=0x1) and falls through when s2(=a3) != t2(=0x1).
  At `beq` at 0x1a5dc (target 0x1a618), taken when s2(=a3) == s1(=0x3) and falls through when s2(=a3) != s1(=0x3).
  At `bne` at 0x1a5ec (target 0x1a6f4), taken when a2(=sym(.rodata)+28464) != 0 and falls through when a2(=sym(.rodata)+28464) == 0.
  At `beq` at 0x1a600 (target 0x1a5f4), taken when a2(=sym(.rodata)+28464) == 0 and falls through when a2(=sym(.rodata)+28464) != 0.
  At `beq` at 0x1a640 (target 0x1a5f4), taken when v0(=ret(kl_ioerror_handler)) == 0 and falls through when v0(=ret(kl_ioerror_handler)) != 0.
  Returns v0 = ? (`jr` at 0x1a344).
  The instructions from 0x1a6f0 to 0x1a6f0 are not reached by any path from the entry, and their branches are not listed.

- `huberror_process_stack_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a70c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a70c-0x1a804 (248 bytes).
  Stores 8 bytes from s0 to a3 (arg3 at entry) +0x0 (`sd` at 0x1a784).
  Loads 8 bytes into a1 from sym(.srdata) +0x260 (`ld` at 0x1a7dc).
  Calls `huberror_process_wrb_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a774).
  Calls `huberror_process_rrb_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a7cc).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a0 at entry (arg0) (`jal` at 0x1a7e4).
  At `beq` at 0x1a728 (target 0x1a79c), taken when a2 == at(=0x1) and falls through when a2 != at(=0x1).
  At `bne` at 0x1a730 (target 0x1a7dc), taken when a2 != v0(=0x2) and falls through when a2 == v0(=0x2).
  At `beq` at 0x1a76c (target 0x1a7cc), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x1a7c4 (target 0x1a774), taken when (v0(?) & 0x1) != 0 and falls through when (v0(?) & 0x1) == 0.
  Returns v0 = ? (`jr` at 0x1a794).

- `process_error_spool` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a804 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a804-0x1a894 (144 bytes).
  Calls `hubpi_spool_get_next` via direct with a0=sp-64, a1=sp-56, a2=?, a3=? (`jal` at 0x1a828).
  Calls `huberror_process_stack_entry` via direct with a0=?, a1=?, a2=ret(hubpi_spool_get_next), a3=sp-48 (`jal` at 0x1a85c).
  Calls `in_dump_mode` via direct with a0=?, a1=sp-56, a2=?, a3=? (`jal` at 0x1a86c).
  At `beq` at 0x1a830 (target 0x1a880), taken when v0(=ret(hubpi_spool_get_next)) == s0(=-0x1) and falls through when v0(=ret(hubpi_spool_get_next)) != s0(=-0x1).
  At `beq` at 0x1a838 (target 0x1a880), taken when v0(=ret(hubpi_spool_get_next)) == 0 and falls through when v0(=ret(hubpi_spool_get_next)) != 0.
  At `beq` at 0x1a840 (target 0x1a854), taken when v0(=ret(hubpi_spool_get_next)) == s1(=0x1) and falls through when v0(=ret(hubpi_spool_get_next)) != s1(=0x1).
  At `bne` at 0x1a848 (target 0x1a828), taken when v0(=ret(hubpi_spool_get_next)) != s2(=0x2) and falls through when v0(=ret(hubpi_spool_get_next)) == s2(=0x2).
  At `beq` at 0x1a864 (target 0x1a828), taken when v0(=ret(huberror_process_stack_entry)) == 0 and falls through when v0(=ret(huberror_process_stack_entry)) != 0.
  Returns v0 = ret(hubpi_spool_get_next) (`jr` at 0x1a88c).
  The instructions from 0x1a87c to 0x1a87c are not reached by any path from the entry, and their branches are not listed.

- `get_matching_spool_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a894 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a894-0x1aab8 (548 bytes).
  Loads 8 bytes into a1 from a1 (arg1 at entry) +0x0 (`ld` at 0x1a908).
  Loads 8 bytes into a3 from a1 (arg1 at entry) +0x0 (`ld` at 0x1a94c).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x0 (`ld` at 0x1a914).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x0 (`ld` at 0x1a948).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x0 (`ld` at 0x1a9f0).
  Loads 8 bytes into a1 from sym(.srdata) +0x260 (`ld` at 0x1a944).
  Calls `huberror_process_stack_entry` via direct with a0=[a0]:8, a1=[a1]:8, a2=ret(hubpi_spool_get_next), a3=sp-96 (`jal` at 0x1a910).
  Calls `hubpi_spool_get_next` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x1a920).
  Calls `in_dump_mode` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1aa34).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=ret(hubpi_spool_get_next), a3=? (`jal` at 0x1aaa8).
  At `beq` at 0x1a8f8 (target 0x1a908), taken when a0(=one of 0x0, 0x1) == 0 and falls through when a0(=one of 0x0, 0x1) != 0.
  At `beq` at 0x1a900 (target 0x1a9bc), taken when s3(=a4) == a1(?) and falls through when s3(=a4) != a1(?).
  At `bne` at 0x1a918 (target 0x1aa34), taken when v0(=ret(huberror_process_stack_entry)) != 0 and falls through when v0(=ret(huberror_process_stack_entry)) == 0.
  At `beq` at 0x1a928 (target 0x1aa90), taken when v0(=ret(hubpi_spool_get_next)) == 0 and falls through when v0(=ret(hubpi_spool_get_next)) != 0.
  At `beq` at 0x1a930 (target 0x1aa98), taken when v0(=ret(hubpi_spool_get_next)) == s8(=-0x1) and falls through when v0(=ret(hubpi_spool_get_next)) != s8(=-0x1).
  At `beq` at 0x1a938 (target 0x1a9f0), taken when v0(=ret(hubpi_spool_get_next)) == t9(=0x1) and falls through when v0(=ret(hubpi_spool_get_next)) != t9(=0x1).
  At `bne` at 0x1a940 (target 0x1aaa0), taken when v0(=ret(hubpi_spool_get_next)) != ra(=0x2) and falls through when v0(=ret(hubpi_spool_get_next)) == ra(=0x2).
  At `beq` at 0x1a968 (target 0x1a994), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `bne` at 0x1a978 (target 0x1a8f8), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x1a980 (target 0x1a8f8), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `bne` at 0x1a9a0 (target 0x1a8f8), taken when s2(=a2) < a0(?) (unsigned) and falls through when s2(=a2) >= a0(?) (unsigned).
  At `bne` at 0x1a9a8 (target 0x1a8f8), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `beq` at 0x1aa04 (target 0x1aa54), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x1aa18 (target 0x1aa44), taken when s7(?) < a0(?) (unsigned) and falls through when s7(?) >= a0(?) (unsigned).
  At `bne` at 0x1aa20 (target 0x1aa44), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x1aa44 (target 0x1aa7c), taken when a0(=one of 0x0, 0x1) != 0 and falls through when a0(=one of 0x0, 0x1) == 0.
  At `bne` at 0x1aa5c (target 0x1aa70), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x1aa64 (target 0x1aa70), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x1aa70 (target 0x1a908), taken when a0(=one of 0x0, 0x1) == 0 and falls through when a0(=one of 0x0, 0x1) != 0.
  At `bne` at 0x1aa80 (target 0x1a908), taken when s3(=a4) != a4(?) and falls through when s3(=a4) == a4(?).
  Returns v0 = one of -0x1, 0x0, 0x1, 0x2 (`jr` at 0x1a9e8).

- `hubiio_crb_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1aab8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1aab8-0x1ab58 (160 bytes).
  Loads 2 bytes into a4 from a0 (arg0 at entry) +0xa (`lh` at 0x1aabc).
  Loads 2 bytes into v1 from a0 (arg0 at entry) +0xa (`lh` at 0x1aae8).
  Loads 2 bytes into at from a0 (arg0 at entry) +0xa (`lh` at 0x1aafc).
  Loads 8 bytes into s0 from sym(.lit8) +0x20 (`ld` at 0x1aac8).
  Loads 8 bytes into a4 from sym(.lit8) +0x210 (`ld` at 0x1aad4).
  Loads 8 bytes into a2 from ((a1 << 0x5) + ([a0+10]:2 << 0x21)) -0x6dfffffffe3ffc00 (`ld` at 0x1aadc).
  Stores 8 bytes from a2 to ((a1 << 0x5) + ([a0+10]:2 << 0x21)) -0x6dfffffffe3ffc00 (`sd` at 0x1aae4).
  Stores 8 bytes from v0 to ([a0+10]:2 << 0x21) -0x6dfffffffe3ffc70  (`sd` at 0x1aaf8).
  Loads 8 bytes into at from ([a0+10]:2 << 0x21) -0x6dfffffffe3ffc70 (`ld` at 0x1ab08).
  Loads 2 bytes into a5 from a0 (arg0 at entry) +0xa (`lh` at 0x1ab28).
  Loads 8 bytes into a5 from ([a0+10]:2 << 0x21) -0x6dfffffffe3ffc70 (`ld` at 0x1ab34).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x1ab20).
  At `beq` at 0x1ab18 (target 0x1ab44), taken when (at(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) == 0 and falls through when (at(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) != 0.
  At `bne` at 0x1ab3c (target 0x1ab20), taken when (a5(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) != 0 and falls through when (a5(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) == 0.
  Returns v0 = ? (`jr` at 0x1ab50).

- `hubiio_crb_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ab58 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ab58-0x1ae80 (808 bytes).
  Loads 2 bytes into s7 from a1 (arg1 at entry) +0xa (`lh` at 0x1ab70).
  Loads 8 bytes into a1 from sym(.srdata) +0x2b8 (`ld` at 0x1ab74).
  Loads 8 bytes into s3 from sym(.srdata) +0x2a0 (`ld` at 0x1ab94).
  Loads 2 bytes into s3 from (sym(nasid_to_compact_node) + ([a1+10]:2 + [a1+10]:2)) +0x0 (`lh` at 0x1abac).
  Loads 8 bytes into s2 from sym(.lit8) +0x20 (`ld` at 0x1abc8).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x260, including `ld` at 0x1ac08, 0x1ac1c, 0x1ad8c.
  Loads 8 bytes into s3 from ? (base unknown) (`ld` at 0x1ac38).
  Loads 8 bytes into a7 from ? (base unknown) (`ld` at 0x1ac54).
  Loads 8 bytes into t2 from ? (base unknown) (`ld` at 0x1ac60).
  Loads 8 bytes into t1 from table(sym(.rodata)+28464) +0x0 (`ld` at 0x1ad54).
  Loads 8 bytes into a2 from sym(.srdata) +0x298 (`ld` at 0x1ad5c).
  Calls `mutex_spinlock_spl` via direct with a0=a1+796, a1=sym(splerr), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1aba8).
  Calls `bte_crb_error_handler` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-224 (`jal` at 0x1acd8).
  Calls `hubiio_crb_free` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1ace4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ad04).
  Calls `sn0_error_dump` via direct with a0=sym(.rodata)+28464, a1=?, a2=?, a3=?, a6=table(sym(.rodata)+28464) (`jal` at 0x1ad90).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x1ada4).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x1ae2c).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x1ae44).
  At `beq` at 0x1abec (target 0x1ac00), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bltz` at 0x1ac04 (target 0x1ad40), taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  At `bltz` at 0x1ac10 (target 0x1ae20), taken when t9(?) < 0 (signed) and falls through when t9(?) >= 0 (signed).
  At `bltz` at 0x1ac18 (target 0x1ae3c), taken when ra(?) < 0 (signed) and falls through when ra(?) >= 0 (signed).
  At `beq` at 0x1ac28 (target 0x1ad00), taken when s1(?) >= 0xf (signed) and falls through when s1(?) < 0xf (signed).
  At `bgez` at 0x1ac40 (target 0x1ac20), taken when v0(?) >= 0 (signed) and falls through when v0(?) < 0 (signed).
  At `bltz` at 0x1ac88 (target 0x1acc8), taken when t2(?) < 0 (signed) and falls through when t2(?) >= 0 (signed).
  At `beq` at 0x1ac98 (target 0x1aca4), taken when at(=0x1) == a6(?) and falls through when at(=0x1) != a6(?).
  At `bne` at 0x1aca0 (target 0x1abe4), taken when at(=0x5) != a6(?) and falls through when at(=0x5) == a6(?).
  At `beq` at 0x1acb0 (target 0x1acbc), taken when v0(=0x1) == a6(?) and falls through when v0(=0x1) != a6(?).
  At `bne` at 0x1acb8 (target 0x1abe4), taken when at(=0x2) != a6(?) and falls through when at(=0x2) == a6(?).
  At `beq` at 0x1ad4c (target 0x1ad8c), taken when s7(?) >= 0x8 (unsigned) and falls through when s7(?) < 0x8 (unsigned).
  At `bne` at 0x1adf4 (target 0x1ae54), the condition is not analyzed.
  At `beq` at 0x1ae18 (target 0x1ac20), the condition is not analyzed.
  At `beq` at 0x1ae78 (target 0x1ae10), the condition is not analyzed.
  The instructions from 0x1ad60 to 0x1ad88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1adb4 to 0x1ae1c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1ae54 to 0x1ae7c are not reached by any path from the entry, and their branches are not listed.

- `hubii_check_widget_disabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ae80 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ae80-0x1aee8 (104 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0x20 (`ld` at 0x1ae90).
  Loads 8 bytes into v0 from table(0x9200000001c00198) +0x0 (`ld` at 0x1aea8).
  Loads 8 bytes into v1 from (a0 << 0x21) -0x6dfffffffe3ffff8 (`ld` at 0x1aecc).
  At `beq` at 0x1ae8c (target 0x1ae98), taken when a1 >= 0x8 (signed) and falls through when a1 < 0x8 (signed).
  At `beq` at 0x1aeb4 (target 0x1aec4), taken when (v0(=entry(0x9200000001c00198)) & v1(=0xf000000000000)) == 0 and falls through when (v0(=entry(0x9200000001c00198)) & v1(=0xf000000000000)) != 0.
  At `beq` at 0x1aed8 (target 0x1aebc), taken when (v1(=[(a0 << 0x21)-7926335344142712824]:8) & a0(=0x100000000)) == 0 and falls through when (v1(=[(a0 << 0x21)-7926335344142712824]:8) & a0(=0x100000000)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x1aebc).
  Returns v0 = 0x1 (`jr` at 0x1aee0).

- `hubii_prb_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1aee8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1aee8-0x1af30 (72 bytes).
  Loads 2 bytes into at from a1 (arg1 at entry) +0xa (`lh` at 0x1aee8).
  Loads 8 bytes into a1 from sym(.srdata) +0x260 (`ld` at 0x1aef4).
  Loads 8 bytes into a4 from sym(.lit8) +0x20 (`ld` at 0x1af00).
  Stores 8 bytes from v0 to ([a1+10]:2 << 0x21) -0x6dfffffffe3ffe08 (`sd` at 0x1af20).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+28464, a2=[a1+10]:2, a3=a2 at entry (arg2), a4=0x9200000001c00000 (`jal` at 0x1af1c).
  Returns v0 = ret(cmn_err) (`jr` at 0x1af28).

- `hubiio_prb_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1af30 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1af30-0x1affc (204 bytes).
  Loads 2 bytes into s3 from a1 (arg1 at entry) +0xa (`lh` at 0x1af3c).
  Loads 8 bytes into s2 from sym(.lit8) +0x20 (`ld` at 0x1af40).
  Loads 8 bytes into at from ([a1+10]:2 << 0x21) -0x6dfffffffe3ffe68 (`ld` at 0x1af54).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0x1af88).
  Calls `hubii_prb_handler [0x1aee8]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x1afd8).
  Calls `hubii_prb_handler [0x1aee8]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x1afec).
  At `bltz` at 0x1af68 (target 0x1afe8), taken when at(=([([a1+10]:2 << 0x21)-7926335344142712424]:8 << 0xf)) < 0 (signed) and falls through when at(=([([a1+10]:2 << 0x21)-7926335344142712424]:8 << 0xf)) >= 0 (signed).
  At `bltz` at 0x1af90 (target 0x1afcc), taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  At `bne` at 0x1afa0 (target 0x1af7c), taken when s1(?) < 0x10 (signed) and falls through when s1(?) >= 0x10 (signed).
  Returns v0 = ? (`jr` at 0x1afc4).

- `ii_llp_error_monitor` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b19c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b19c-0x1b204 (104 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x218 (`ld` at 0x1b19c).
  Loads 8 bytes into a5 from abs 0x9200000001400130 (`ld` at 0x1b1a0).
  Stores 8 bytes from zero to abs 0x9200000001400130  (`sd` at 0x1b1b0).
  Loads 8 bytes into a6 from a0 (arg0 at entry) +0x0 (`ld` at 0x1b1bc).
  Stores 8 bytes from a6 to a0 (arg0 at entry) +0x0 (`sd` at 0x1b1c4).
  Loads 8 bytes into a7 from a0 (arg0 at entry) +0x8 (`ld` at 0x1b1d0).
  Stores 8 bytes from a7 to a0 (arg0 at entry) +0x8 (`sd` at 0x1b1d8).
  Loads 1 byte into t0 from a0 (arg0 at entry) +0x10 (`lbu` at 0x1b1e4).
  Stores 1 byte from t0 to a0 (arg0 at entry) +0x10  (`sb` at 0x1b1f0).
  Loads 1 byte into t1 from a0 (arg0 at entry) +0x11 (`lbu` at 0x1b1f4).
  Stores 1 byte from t1 to a0 (arg0 at entry) +0x11  (`sb` at 0x1b200).
  At `beq` at 0x1b1b4 (target 0x1b1e4), taken when a4(=0xffff) == a3(?) and falls through when a4(=0xffff) != a3(?).
  At `beq` at 0x1b1c8 (target 0x1b1f4), taken when a4(=0xffff) == a2(?) and falls through when a4(=0xffff) != a2(?).
  Returns v0 = ? (`jr` at 0x1b1dc).
  Returns v0 = ? (`jr` at 0x1b1fc).

- `ni_llp_error_monitor` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b204 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b204-0x1b330 (300 bytes).
  Loads 8 bytes into a2 from sym(.lit8) +0x220 (`ld` at 0x1b204).
  Loads 8 bytes into a2 from abs 0x9200000001680120 (`ld` at 0x1b208).
  7 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x260, including `ld` at 0x1b238, 0x1b248, 0x1b258.
  Loads 8 bytes into t9 from a0 (arg0 at entry) +0x0 (`ld` at 0x1b2a4).
  Stores 8 bytes from t9 to a0 (arg0 at entry) +0x0 (`sd` at 0x1b2ac).
  Loads 8 bytes into ra from a0 (arg0 at entry) +0x8 (`ld` at 0x1b2bc).
  Stores 8 bytes from ra to a0 (arg0 at entry) +0x8 (`sd` at 0x1b2c4).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x10 (`ld` at 0x1b2d0).
  Stores 8 bytes from at to a0 (arg0 at entry) +0x10 (`sd` at 0x1b2d8).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x18 (`lbu` at 0x1b2e8).
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x18  (`sb` at 0x1b2f4).
  Loads 1 byte into v1 from a0 (arg0 at entry) +0x19 (`lbu` at 0x1b2f8).
  Stores 1 byte from v1 to a0 (arg0 at entry) +0x19  (`sb` at 0x1b304).
  Loads 1 byte into a1 from a0 (arg0 at entry) +0x1a (`lbu` at 0x1b308).
  Stores 1 byte from a1 to a0 (arg0 at entry) +0x1a  (`sb` at 0x1b314).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+28464, a2=[0x9200000001680120]:8, a3=? (`jal` at 0x1b320).
  At `bltz` at 0x1b224 (target 0x1b318), taken when at(=([0x9200000001680120]:8 << 0xb)) < 0 (signed) and falls through when at(=([0x9200000001680120]:8 << 0xb)) >= 0 (signed).
  At `bne` at 0x1b234 (target 0x1b31c), taken when (a7(?) & 0xf) != 0 and falls through when (a7(?) & 0xf) == 0.
  At `bne` at 0x1b244 (target 0x1b31c), taken when (t0(?) & 0xf) != 0 and falls through when (t0(?) & 0xf) == 0.
  At `bne` at 0x1b254 (target 0x1b31c), taken when (t1(?) & 0xf) != 0 and falls through when (t1(?) & 0xf) == 0.
  At `bne` at 0x1b264 (target 0x1b318), taken when (t2(?) & 0xf) != 0 and falls through when (t2(?) & 0xf) == 0.
  At `bne` at 0x1b270 (target 0x1b31c), taken when (t3(?) & 0xf) != 0 and falls through when (t3(?) & 0xf) == 0.
  At `bne` at 0x1b27c (target 0x1b31c), taken when (a3(?) & 0xf) != 0 and falls through when (a3(?) & 0xf) == 0.
  At `bne` at 0x1b284 (target 0x1b31c), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x1b29c (target 0x1b2e8), taken when a7(=0xff) == a6(?) and falls through when a7(=0xff) != a6(?).
  At `beq` at 0x1b2b4 (target 0x1b2f8), taken when a7(=0xff) == a5(?) and falls through when a7(=0xff) != a5(?).
  At `beq` at 0x1b2c8 (target 0x1b308), taken when a7(=0xff) == a3(?) and falls through when a7(=0xff) != a3(?).
  Returns v0 = ? (`jr` at 0x1b2e0).

- `cleanup_remote_pi` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b330 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b330-0x1b370 (64 bytes).
  Loads 8 bytes into a4 from sym(.lit8) +0x60 (`ld` at 0x1b33c).
  Stores 8 bytes from a1 to ((a0 << 0x21) + one of 0x9200000001800090, 0x9200000001a00090) +0x0  (`sd` at 0x1b364).
  At `bne` at 0x1b360 (target 0x1b348), taken when a3(?) < 0x2 (signed) and falls through when a3(?) >= 0x2 (signed).
  Returns v0 = ? (`jr` at 0x1b368).

- `hub_error_count_update` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b370 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b370-0x1b3e4 (116 bytes).
  Loads 8 bytes into t8 from sym(.srdata) +0x2a0 (`ld` at 0x1b374).
  Loads 8 bytes into s0 from sym(.srdata) +0x268 (`ld` at 0x1b380).
  Loads 2 bytes into t8 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x1b388).
  Loads 8 bytes into a0 from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x1b39c).
  Loads 8 bytes into a0 from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x1b3ac).
  Loads 8 bytes into a1 from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x1b3b8).
  Loads 4 bytes into a1 from [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x0 (`lw` at 0x1b3bc).
  Loads 8 bytes into a0 from sym(.srdata) +0x2c0 (`ld` at 0x1b3d0).
  Calls `ii_llp_error_monitor` via direct with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1b3a4).
  Calls `ni_llp_error_monitor` via direct with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+32, a1=?, a2=?, a3=? (`jal` at 0x1b3b0).
  Calls `timeout` via direct with a0=sym(hub_error_count_update), a1=a0 at entry (arg0), a2=0x64, a3=? (`jal` at 0x1b3cc).
  At `beq` at 0x1b3c0 (target 0x1b3d4), taken when a1(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) == 0 and falls through when a1(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) != 0.
  Returns v0 = ? (`jr` at 0x1b3dc).

- `hub_error_count_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b3e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b3e4-0x1b490 (172 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x268 (`ld` at 0x1b3e4).
  Loads 8 bytes into a5 from sym(.srdata) +0x2a0 (`ld` at 0x1b3ec).
  Loads 2 bytes into a5 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x1b414).
  Loads 8 bytes into a0 from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x1b42c).
  Loads 4 bytes into a6 from [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x0 (`lw` at 0x1b430).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0x1b468).
  Loads 8 bytes into a0 from sym(.srdata) +0x2c0 (`ld` at 0x1b474).
  Stores 4 bytes from a3 to ? (base unknown)  (`sw` at 0x1b480).
  Calls `bzero` via direct with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(sym(nasid_to_compact_node) + (a0 + a0)), a5=([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3), a6=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8] (`jal` at 0x1b45c).
  Calls `timeout` via direct with a0=sym(hub_error_count_update), a1=a0 at entry (arg0), a2=0x64, a3=0x1 (`jal` at 0x1b47c).
  At `bltz` at 0x1b3fc (target 0x1b44c), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x1b40c (target 0x1b44c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x1b418 (target 0x1b454), taken when a5(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == a0(=-0x1) and falls through when a5(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != a0(=-0x1).
  At `beq` at 0x1b438 (target 0x1b45c), taken when a6(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) == 0 and falls through when a6(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) != 0.
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x1b444).

- `hub_error_count_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b490 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b490-0x1b4e4 (84 bytes).
  Loads 8 bytes into a4 from sym(.srdata) +0x268 (`ld` at 0x1b490).
  Loads 8 bytes into a5 from sym(.srdata) +0x2a0 (`ld` at 0x1b49c).
  Loads 2 bytes into a0 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x1b4b0).
  Loads 8 bytes into a1 from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x1b4c8).
  Stores 4 bytes from zero to [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x0  (`sw` at 0x1b4d0).
  At `bltz` at 0x1b498 (target 0x1b4dc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x1b4a8 (target 0x1b4dc), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x1b4b8 (target 0x1b4d4), taken when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == a3(=-0x1) and falls through when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != a3(=-0x1).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x1b4d4).
  Returns v0 = -0x1 (`jr` at 0x1b4dc).

- `hub_error_count_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b4e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b4e4-0x1b53c (88 bytes).
  Loads 8 bytes into a5 from sym(.srdata) +0x268 (`ld` at 0x1b4e4).
  Loads 8 bytes into a6 from sym(.srdata) +0x2a0 (`ld` at 0x1b4f0).
  Loads 2 bytes into a0 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x1b508).
  Stores 4 bytes from v1 to a1 (arg1 at entry) +0x0  (`sw` at 0x1b518).
  Loads 8 bytes into v0 from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x1b520).
  At `bltz` at 0x1b4ec (target 0x1b52c), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x1b500 (target 0x1b52c), taken when a0 >= 0x80 (signed) and falls through when a0 < 0x80 (signed).
  At `beq` at 0x1b50c (target 0x1b534), taken when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == v0(=-0x1) and falls through when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != v0(=-0x1).
  Returns v0 = [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 (`jr` at 0x1b524).
  Returns v0 = 0x0 (`jr` at 0x1b52c).
  Returns v0 = 0x0 (`jr` at 0x1b534).

- `decode_xrb_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b53c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b53c-0x1b570 (52 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x2d0 (`ld` at 0x1b54c).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x1b554).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x1b56c).
  Loads 8 bytes into v0 from sym(.srdata) +0x2c8 (`ld` at 0x1b560).
  At `bltz` at 0x1b544 (target 0x1b560), taken when a4(=(a0 << 0x33)) < 0 (signed) and falls through when a4(=(a0 << 0x33)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x1b558).
  Returns v0 = ? (`jr` at 0x1b568).

- `decode_crb_stat` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b570 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b570-0x1b624 (180 bytes).
  Loads 8 bytes into a6 from sym(.srdata) +0x298 (`ld` at 0x1b584).
  Loads 8 bytes into a4 from sym(.srdata) +0x298 (`ld` at 0x1b608).
  Stores 1 byte from a7 to a0 (arg0 at entry) +0x9  (`sb` at 0x1b594).
  Stores 1 byte from a7 to a0 (arg0 at entry) +0x8  (`sb` at 0x1b598).
  Stores 1 byte from a7 to a0 (arg0 at entry) +0x8  (`sb` at 0x1b610).
  Loads 1 byte into v0 from ? (base unknown) (`lbu` at 0x1b5a4).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x1b5a8).
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0x1b5c8).
  Loads 1 byte into a2 from ? (base unknown) (`lbu` at 0x1b5c4).
  Stores 1 byte from t1 to ? (base unknown)  (`sb` at 0x1b5f0).
  Stores 1 byte from t1 to ? (base unknown)  (`sb` at 0x1b5f8).
  Stores 1 byte from zero to a0 (arg0 at entry) +0xa  (`sb` at 0x1b600).
  Stores 1 byte from a6 to a0 (arg0 at entry) +0x9 (`sb` at 0x1b618).
  At `beq` at 0x1b588 (target 0x1b604), taken when (a1 & 0x200) == 0 and falls through when (a1 & 0x200) != 0.
  At `bltz` at 0x1b5ac (target 0x1b5fc), taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  At `beq` at 0x1b5bc (target 0x1b5f4), taken when (a5(?) & v1(?)) == 0 and falls through when (a5(?) & v1(?)) != 0.
  At `bltz` at 0x1b5d8 (target 0x1b5fc), taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  At `bne` at 0x1b5e4 (target 0x1b5a4), taken when (a5(?) & a6(?)) != 0 and falls through when (a5(?) & a6(?)) == 0.
  Returns v0 = ? (`jr` at 0x1b5fc).

- `dump_error_spool` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b76c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b76c-0x1b93c (464 bytes).
  Loads 8 bytes into s1 from sym(.srdata) +0x280 (`ld` at 0x1b774).
  Loads 8 bytes into s1 from (sym(pdaindr) + (a0 << 0x4)) +0x8 (`ld` at 0x1b780).
  Loads 1 byte into a6 from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528 (`lbu` at 0x1b788).
  Loads 2 bytes into s1 from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x42c (`lh` at 0x1b794).
  Loads 4 bytes into a0 from sym(filter_error_spool) +0x0 (`lw` at 0x1b798).
  Loads 4 bytes into ra from sym(filter_error_spool) +0x0 (`lw` at 0x1b884).
  Loads 4 bytes into ra from sym(filter_error_spool) +0x0 (`lw` at 0x1b8a8).
  Loads 8 bytes into a7 from sym(.lit8) +0x60 (`ld` at 0x1b7b0).
  Loads 8 bytes into at from (([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428) +0x0 (`ld` at 0x1b7c8).
  Loads 8 bytes into t8 from (([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428) +0x0 (`ld` at 0x1b7e8).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x260, including `ld` at 0x1b814, 0x1b828, 0x1b8ec.
  Loads 8 bytes into s5 from ? (base unknown) (`ld` at 0x1b824).
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x1b88c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x1b8b4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+28464, a1=a0 at entry (arg0), a2=sym(.rodata)+28464, a3=0x428, a4=sym(.rodata)+28464, a5=a0 at entry (arg0), a7=0x9200000001800000 (`jalr` at 0x1b834).
  Calls `print_spool_entry` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0x1b890).
  Calls `memory_present` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b8d0).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+28464, a1=?, a2=?, a3=? (`jalr` at 0x1b8f4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+28464, a1=?, a2=?, a3=? (`jalr` at 0x1b914).
  At `beq` at 0x1b7e0 (target 0x1b7fc), taken when at(=[(([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428)]:8) == 0 and falls through when at(=[(([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428)]:8) != 0.
  At `beq` at 0x1b7fc (target 0x1b92c), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x1b820 (target 0x1b830), taken when a0(=[sym(filter_error_spool)]) == 0 and falls through when a0(=[sym(filter_error_spool)]) != 0.
  At `beq` at 0x1b878 (target 0x1b8fc), taken when s0(?) >= s3(?) (unsigned) and falls through when s0(?) < s3(?) (unsigned).
  At `bne` at 0x1b8a4 (target 0x1b8e8), taken when s3(?) < s0(?) (unsigned) and falls through when s3(?) >= s0(?) (unsigned).
  At `beq` at 0x1b8ac (target 0x1b88c), taken when ra(=[sym(filter_error_spool)]) == 0 and falls through when ra(=[sym(filter_error_spool)]) != 0.
  At `bltz` at 0x1b8bc (target 0x1b888), taken when at(?) < 0 (signed) and falls through when at(?) >= 0 (signed).
  At `bne` at 0x1b8c4 (target 0x1b88c), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `bne` at 0x1b8d8 (target 0x1b88c), taken when v0(=ret(memory_present)) != 0 and falls through when v0(=ret(memory_present)) == 0.
  At `beq` at 0x1b8e8 (target 0x1b8fc), taken when s4(?) == 0 and falls through when s4(?) != 0.
  Returns v0 = ret(?) (`jr` at 0x1b924).

- `recover_error_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ba60 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ba60-0x1bacc (108 bytes).
  Stores 8 bytes from zero to sym(p_routertick) +0x30  (`sd` at 0x1ba60).
  Loads 8 bytes into a3 from sym(.srdata) +0x2e0 (`ld` at 0x1ba68).
  Loads 8 bytes into t1 from ? (base unknown) (`ld` at 0x1ba74).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0x1ba80).
  Loads 8 bytes into at from ? (base unknown) (`ld` at 0x1bab8).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0x1ba7c).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x1ba84).
  Stores 8 bytes from at to ? (base unknown) (`sd` at 0x1bac0).
  4 such loads of 1 bytes through at (?) to ? (base unknown), including `lbu` at 0x1ba88, 0x1ba90, 0x1ba98.
  4 such stores of 1 bytes through v0 (?) to ? (base unknown), including `sb` at 0x1ba8c, 0x1ba94, 0x1ba9c.
  Loads 4 bytes into a1 from ? (base unknown) (`lw` at 0x1baac).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x1bab4).
  At `bne` at 0x1babc (target 0x1ba6c), taken when a2(?) < 0x4 (signed) and falls through when a2(?) >= 0x4 (signed).
  Returns v0 = ? (`jr` at 0x1bac4).

- `klerror_global_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bacc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bacc-0x1bb38 (108 bytes).
  Loads 8 bytes into v0 from sym(_prom_cleared) +0xd8 (`ld` at 0x1bacc).
  Loads 8 bytes into a2 from sym(.lit8) +0x48 (`ld` at 0x1bad4).
  Loads 8 bytes into at from abs 0x9200000001030100 (`ld` at 0x1bae4).
  Loads 8 bytes into a1 from abs 0x9200000001030100 (`ld` at 0x1bb24).
  Loads 4 bytes into v1 from sym(_prom_cleared) +0xe0 (`ll` at 0x1baf8).
  Stores 4 bytes from a0 to sym(_prom_cleared) +0xe0  (`sc` at 0x1bb04).
  Stores 4 bytes from zero to sym(_prom_cleared) +0xe0  (`sw` at 0x1bb28).
  Stores 8 bytes from a1 to sym(_prom_cleared) +0xd8  (`sd` at 0x1bb34).
  At `beq` at 0x1bad8 (target 0x1bb24), taken when v0(=[sym(.sdata)+216]:8) == 0 and falls through when v0(=[sym(.sdata)+216]:8) != 0.
  At `beq` at 0x1baf0 (target 0x1bb24), taken when at(?) >= v1(=0x1000000) (unsigned) and falls through when at(?) < v1(=0x1000000) (unsigned).
  At `beql` at 0x1bb08 (target 0x1baf8), taken when a0(=[sym(.sdata)+224]+1) == 0 and falls through when a0(=[sym(.sdata)+224]+1) != 0.
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x1bb1c).
  Returns v0 = 0x0 (`jr` at 0x1bb30).

- `klerror_check_recoverable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bb38 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bb38-0x1bcd8 (416 bytes).
  Loads 2 bytes into v0 from abs 0xffffffffffffc42a (`lh` at 0x1bb38).
  Loads 2 bytes into v1 from abs 0xffffffffffffc42a (`lh` at 0x1bcc0).
  Loads 8 bytes into a3 from sym(.srdata) +0x2e8 (`ld` at 0x1bb40).
  Loads 8 bytes into v0 from sym(.srdata) +0x2e8 (`ld` at 0x1bcc4).
  Loads 8 bytes into v0 from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0 (`ld` at 0x1bb54).
  Loads 8 bytes into v0 from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0 (`ld` at 0x1bcd4).
  Loads 8 bytes into a1 from abs 0xffffffffffffc018 (`ld` at 0x1bb78).
  Loads 8 bytes into s3 from [-0x3fe8]:8 +0x308 (`ld` at 0x1bb84).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1bb8c).
  Loads 8 bytes into a2 from sym(.srdata) +0x2f0 (`ld` at 0x1bc98).
  Loads 2 bytes into t8 from abs 0xffffffffffffc428 (`lh` at 0x1bb90).
  Loads 8 bytes into s0 from sym(.srdata) +0x2f8 (`ld` at 0x1bb94).
  Loads 8 bytes into s0 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8 (`ld` at 0x1bba0).
  Loads 1 byte into s0 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528 (`lbu` at 0x1bba4).
  Loads 1 byte into t8 from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2012 (`lbu` at 0x1bbb8).
  Loads 8 bytes into v0 from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2018 (`ld` at 0x1bbf0).
  Loads 8 bytes into a1 from sym(.lit8) +0x48 (`ld` at 0x1bbf8).
  Loads 8 bytes into t9 from abs 0x9200000001030100 (`ld` at 0x1bbfc).
  Loads 8 bytes into a2 from abs 0x9200000001030100 (`ld` at 0x1bc6c).
  Loads 4 bytes into ra from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2014 (`lwu` at 0x1bc00).
  Loads 1 byte into ra from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2013 (`lbu` at 0x1bc14).
  Loads 8 bytes into at from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2020 (`ld` at 0x1bc20).
  Loads 8 bytes into v0 from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2028 (`ld` at 0x1bc2c).
  Loads 1 byte into a0 from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2010 (`lbu` at 0x1bc38).
  Loads 1 byte into v1 from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2011 (`lbu` at 0x1bc3c).
  Stores 1 byte from v1 to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2011 (`sb` at 0x1bc50).
  Stores 8 bytes from s2 to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2020  (`sd` at 0x1bc70).
  Stores 1 byte from zero to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2011  (`sb` at 0x1bc74).
  Stores 8 bytes from s3 to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2028 (`sd` at 0x1bc78).
  Stores 8 bytes from a2 to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2018  (`sd` at 0x1bc84).
  Calls `klerror_global_check` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bbc4).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=0x9200000001030100, a2=?, a3=? (`jal` at 0x1bc54).
  Calls `cmn_err_tag` via direct with a0=0xb54, a1=0x14, a2=sym(.rodata)+36904, a3=a1 at entry (arg1) (`jal` at 0x1bca4).
  Calls `assfail` via direct with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0xbe, a3=sym(kl_error_log) (`jal` at 0x1bcb8).
  At `beq` at 0x1bb70 (target 0x1bc90), taken when v0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) == 0 and falls through when v0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) != 0.
  At `beq` at 0x1bb7c (target 0x1bb88), taken when a1(=[-0x3fe8]:8) == 0 and falls through when a1(=[-0x3fe8]:8) != 0.
  At `beq` at 0x1bb88 (target 0x1bcb4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x1bbbc (target 0x1bbf0), taken when t8(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8210]:1) == 0 and falls through when t8(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8210]:1) != 0.
  At `beq` at 0x1bbcc (target 0x1bbf0), taken when v0(=ret(klerror_global_check)) == 0 and falls through when v0(=ret(klerror_global_check)) != 0.
  At `beq` at 0x1bbf4 (target 0x1bc6c), taken when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8216]:8) == 0 and falls through when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8216]:8) != 0.
  At `beq` at 0x1bc0c (target 0x1bc6c), taken when t9(?) >= ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8212]) (unsigned) and falls through when t9(?) < ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8212]) (unsigned).
  At `beq` at 0x1bc18 (target 0x1bc38), taken when ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8211]:1) == 0 and falls through when ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8211]:1) != 0.
  At `bne` at 0x1bc24 (target 0x1bc6c), taken when at(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8224]:8) != s2(=a1) and falls through when at(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8224]:8) == s2(=a1).
  At `bne` at 0x1bc30 (target 0x1bc6c), taken when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8232]:8) != s3(?) and falls through when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8232]:8) == s3(?).
  At `bne` at 0x1bc4c (target 0x1bc88), taken when v1(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8209]:1) < a0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8208]:1) (signed) and falls through when v1(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8209]:1) >= a0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8208]:1) (signed).
  At `beq` at 0x1bc5c (target 0x1bc98), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x1bbe8).

- `sn0_skip_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bcd8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bcd8-0x1bcf0 (24 bytes).
  Loads 2 bytes into a0 from abs 0xffffffffffffc428 (`lh` at 0x1bce4).
  Calls `dumptlb` via direct with a0=[-0x3bd8]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1bce0).

- `stop_all_cpus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bcf0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bcf0-0x1bf2c (572 bytes).
  Loads 8 bytes into t1 from sym(.lit8) +0x228 (`ld` at 0x1bcf0).
  Loads 8 bytes into t3 from sym(.lit8) +0x60 (`ld` at 0x1bcf4).
  Loads 8 bytes into a1 from sym(.lit8) +0x180 (`ld` at 0x1bcf8).
  Loads 8 bytes into a5 from sym(.lit8) +0x178 (`ld` at 0x1bcfc).
  Loads 8 bytes into a4 from sym(.lit8) +0x238 (`ld` at 0x1bd00).
  Loads 8 bytes into s8 from sym(.lit8) +0xa8 (`ld` at 0x1bd0c).
  Loads 8 bytes into a7 from sym(.lit8) +0x30 (`ld` at 0x1bd20).
  Loads 8 bytes into at from abs 0x9200000001000020 (`ld` at 0x1bd38).
  Loads 8 bytes into at from abs 0x9200000001000020 (`ld` at 0x1be80).
  Loads 8 bytes into v0 from abs 0x9200000001000020 (`ld` at 0x1beb8).
  Loads 8 bytes into ra from sym(.lit8) +0x230 (`ld` at 0x1bd60).
  Stores 8 bytes from zero to abs 0x9200000001000410  (`sd` at 0x1bd6c).
  Loads 8 bytes into t8 from sym(.lit8) +0x28 (`ld` at 0x1bd70).
  Loads 8 bytes into a1 from abs 0x9200000001600000 (`ld` at 0x1bd74).
  Loads 8 bytes into t0 from abs 0x9200000001600000 (`ld` at 0x1bda4).
  Loads 8 bytes into s4 from abs 0x9200000001604020 (`ld` at 0x1bd98).
  Loads 8 bytes into ra from abs 0x9200000001780000 (`ld` at 0x1bd9c).
  Loads 8 bytes into a5 from abs 0x9200000001604028 (`ld` at 0x1bda0).
  Stores 8 bytes from s3 to table(0x9200000001fa0038) +0x0  (`sd` at 0x1be64).
  Stores 8 bytes from s0 to table(0x9200000001800000) +0x0  (`sd` at 0x1be7c).
  Stores 8 bytes from s1 to ? (base unknown)  (`sd` at 0x1be98).
  Stores 8 bytes from zero to abs 0x9200000001000408  (`sd` at 0x1bf00).
  At `beq` at 0x1bd64 (target 0x1befc), taken when (at(=[0x9200000001000020]:8) & 0x1) == 0 and falls through when (at(=[0x9200000001000020]:8) & 0x1) != 0.
  At `beq` at 0x1bd80 (target 0x1bf04), taken when (a1(?) & 0x3) == 0 and falls through when (a1(?) & 0x3) != 0.
  At `beq` at 0x1bd88 (target 0x1bd98), taken when a1(?) == a2(=0x1) and falls through when a1(?) != a2(=0x1).
  At `beq` at 0x1bd90 (target 0x1bf0c), taken when a1(?) == a3(=0x2) and falls through when a1(?) != a3(=0x2).
  At `beq` at 0x1bdc0 (target 0x1becc), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x1bddc (target 0x1becc), taken when s5(?) < a4(?) (unsigned) and falls through when s5(?) >= a4(?) (unsigned).
  At `bne` at 0x1be08 (target 0x1bf18), taken when (s4(?) & v0(?)) != 0 and falls through when (s4(?) & v0(?)) == 0.
  At `beq` at 0x1be18 (target 0x1be48), taken when a4(?) == a3(?) and falls through when a4(?) != a3(?).
  At `beq` at 0x1be30 (target 0x1be48), taken when a2(?) >= 0x4 (signed) and falls through when a2(?) < 0x4 (signed).
  At `bne` at 0x1be38 (target 0x1be18), taken when t1(?) != 0 and falls through when t1(?) == 0.
  At `bnel` at 0x1be40 (target 0x1be24), taken when a4(?) != a6(=-0x1) and falls through when a4(?) == a6(=-0x1).
  At `bne` at 0x1be48 (target 0x1bdd4), taken when a2(?) != s7(=0x4) and falls through when a2(?) == s7(=0x4).
  At `bne` at 0x1be78 (target 0x1be98), taken when t0(?) != a4(?) and falls through when t0(?) == a4(?).
  At `beq` at 0x1be90 (target 0x1be9c), taken when a2(?) == at(=[0x9200000001000020]:8) and falls through when a2(?) != at(=[0x9200000001000020]:8).
  At `beq` at 0x1bea8 (target 0x1bdd4), taken when a1(?) >= 0x2 (signed) and falls through when a1(?) < 0x2 (signed).
  At `bne` at 0x1beb0 (target 0x1be6c), taken when t0(?) != a4(?) and falls through when t0(?) == a4(?).
  At `beq` at 0x1bebc (target 0x1be80), taken when a3(?) == v0(=[0x9200000001000020]:8) and falls through when a3(?) != v0(=[0x9200000001000020]:8).
  Returns v0 = ? (`jr` at 0x1bef4).
  The instructions from 0x1be68 to 0x1be68 are not reached by any path from the entry, and their branches are not listed.

- `sn0_error_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bf2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bf2c-0x1c0f4 (456 bytes).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x2f0, including `ld` at 0x1bf44, 0x1bfe0, 0x1bfec.
  Loads 8 bytes into s0 from sym(.srdata) +0x300 (`ld` at 0x1bf50).
  Loads 2 bytes into a5 from sym(error_consistency_check) +0x4 (`lh` at 0x1bf60).
  Loads 2 bytes into a4 from abs 0xffffffffffffc428 (`lh` at 0x1bf70).
  Stores 2 bytes from a4 to sym(error_consistency_check) +0x4  (`sh` at 0x1bf94).
  6 such loads of 4 bytes through s0 (sym(error_consistency_check)) to sym(error_consistency_check) +0x0, including `lw` at 0x1bfcc, 0x1bff8, 0x1c048.
  Loads 4 bytes into t0 from sym(sn_fru_enabled) +0x0 (`lw` at 0x1c030).
  Stores 4 bytes from a4 to sym(error_consistency_check) +0x0 (`sw` at 0x1c03c).
  Stores 4 bytes from t1 to sym(error_consistency_check) +0x0 (`sw` at 0x1c054).
  Stores 4 bytes from a5 to sym(error_consistency_check) +0x0 (`sw` at 0x1c0b0).
  Loads 8 bytes into a0 from sym(.srdata) +0x308 (`ld` at 0x1c044).
  Stores 4 bytes from a3 to sym(error_consistency_check) +0x0  (`sw` at 0x1c094).
  Stores 4 bytes from a4 to sym(error_consistency_check) +0x0  (`sw` at 0x1c0a4).
  Stores 4 bytes from a4 to sym(error_consistency_check) +0x0  (`sw` at 0x1c0c8).
  Calls `probe_routers` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1bf34).
  Calls `printf` via direct with a0=sym(.rodata)+36904, a1=?, a2=?, a3=? (`jal` at 0x1bf48).
  Calls `mutex_spinlock` via direct with a0=sym(error_consistency_check), a1=?, a2=?, a3=? (`jal` at 0x1bf58).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[-0x3bd8]:2, a5=[sym(error_consistency_check)+4]:2 (`jal` at 0x1bf7c).
  Calls `sn0_skip_dump` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bf84).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[-0x3bd8]:2, a5=[sym(error_consistency_check)+4]:2 (`jal` at 0x1bf98).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bfa0).
  Calls `enter_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bfa8).
  Calls `stop_all_cpus [0x1bcf0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bfb0).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1bfb8).
  Calls `kf_hint_set` via direct with a0=ret(get_nasid), a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x1bfc4).
  Calls `exit_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c010).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c018).
  Calls `sn_fru_entry` via direct with a0=sym(printf), a1=?, a2=?, a3=? (`jal` at 0x1c040).
  Calls `cmn_err_tag` via direct with a0=0xb56, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=[sym(error_consistency_check)] (`jal` at 0x1c064).
  Calls `cmn_err_tag` via direct with a0=0xb57, a1=0x14, a2=sym(.rodata)+36904, a3=? (`jal` at 0x1c07c).
  Calls `kl_dump_hw_state` via direct with a0=?, a1=?, a2=?, a3=([sym(error_consistency_check)] | 0x1), a4=[sym(error_consistency_check)] (`jal` at 0x1c090).
  Calls `kl_error_show_dump` via direct with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=?, a3=? (`jal` at 0x1c0b4).
  Calls `cmn_err_tag` via direct with a0=0xb55, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=[sym(error_consistency_check)] (`jal` at 0x1c0d4).
  Calls `exit_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c0dc).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c0e4).
  At `beq` at 0x1bf3c (target 0x1bf50), taken when v0(=ret(probe_routers)) == 0 and falls through when v0(=ret(probe_routers)) != 0.
  At `beq` at 0x1bf6c (target 0x1bf94), taken when a5(=[sym(error_consistency_check)+4]:2) == a1(=-0x1) and falls through when a5(=[sym(error_consistency_check)+4]:2) != a1(=-0x1).
  At `beq` at 0x1bf74 (target 0x1bf94), taken when a4(=[-0x3bd8]:2) == a5(=[sym(error_consistency_check)+4]:2) and falls through when a4(=[-0x3bd8]:2) != a5(=[sym(error_consistency_check)+4]:2).
  At `beq` at 0x1bfd4 (target 0x1c08c), taken when (a4(=[sym(error_consistency_check)]) & 0x1) == 0 and falls through when (a4(=[sym(error_consistency_check)]) & 0x1) != 0.
  At `beq` at 0x1bfdc (target 0x1c0cc), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x1bfe8 (target 0x1c0a8), taken when (a4(?) & 0x10) == 0 and falls through when (a4(?) & 0x10) != 0.
  At `beq` at 0x1bff4 (target 0x1c058), taken when (a4(?) & 0x20) == 0 and falls through when (a4(?) & 0x20) != 0.
  At `beq` at 0x1c000 (target 0x1c030), taken when (a4(?) & 0x4) == 0 and falls through when (a4(?) & 0x4) != 0.
  At `beq` at 0x1c008 (target 0x1c074), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x1c038 (target 0x1c04c), taken when t0(=[sym(sn_fru_enabled)]) == 0 and falls through when t0(=[sym(sn_fru_enabled)]) != 0.
  Returns v0 = ? (`jr` at 0x1c028).

- `sn0_error_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c0f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c0f4-0x1c120 (44 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1c104).
  Calls `kl_dump_hw_state` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1c0fc).
  Calls `kl_error_show_dump` via direct with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=?, a3=? (`jal` at 0x1c10c).
  Returns v0 = ret(kl_error_show_dump) (`jr` at 0x1c118).

- `error_lookup_inst_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c668 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c668-0x1c738 (208 bytes).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x118 (`ld` at 0x1c66c).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x120 (`ld` at 0x1c6a0).
  Loads 8 bytes into a1 from sym(.srdata) +0x2f0 (`ld` at 0x1c714).
  Calls `fuiword` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=0x80000000, a4=0x1 (`jal` at 0x1c6b8).
  Calls `fkiword` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=0x80000000, a4=0x1 (`jal` at 0x1c6c8).
  Calls `is_store` via direct with a0=?, a1=?, a2=?, a3=?, a6=-0x1 (`jal` at 0x1c6e0).
  Calls `is_load` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c708).
  Calls `cmn_err` via direct with a0=0x10, a1=sym(.rodata)+36904, a2=?, a3=? (`jal` at 0x1c728).
  At `beq` at 0x1c690 (target 0x1c6f0), taken when at(?) == v1(=0x18) and falls through when at(?) != v1(=0x18).
  At `beq` at 0x1c69c (target 0x1c6a8), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x1c6b0 (target 0x1c6c8), taken when a0(?) >= a5(=0x100000000000) (unsigned) and falls through when a0(?) < a5(=0x100000000000) (unsigned).
  At `beq` at 0x1c6d8 (target 0x1c700), taken when s0(?) == a6(=-0x1) and falls through when s0(?) != a6(=-0x1).
  At `beq` at 0x1c6e8 (target 0x1c708), taken when v0(=ret(is_store)) == 0 and falls through when v0(=ret(is_store)) != 0.
  At `beq` at 0x1c710 (target 0x1c720), taken when v0(=ret(is_load)) == 0 and falls through when v0(=ret(is_load)) != 0.
  Returns v0 = one of -0x1, 0x0, 0x1 (`jr` at 0x1c6f8).

- `error_check_memory_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c738 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c738-0x1c824 (236 bytes).
  Loads 8 bytes into a2 from sym(.srdata) +0x2f0 (`ld` at 0x1c788).
  Loads 8 bytes into a2 from sym(.srdata) +0x2f0 (`ld` at 0x1c7c4).
  Loads 8 bytes into a2 from sym(.srdata) +0x2f0 (`ld` at 0x1c808).
  Calls `memory_present` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1c754).
  Calls `memory_read_accessible` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1c770).
  Calls `cmn_err_tag` via direct with a0=0xb5f, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0) (`jal` at 0x1c794).
  Calls `cmn_err_tag` via direct with a0=0xb5d, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a4=0x3 (`jal` at 0x1c7d0).
  Calls `memory_write_accessible` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1c7f0).
  Calls `cmn_err_tag` via direct with a0=0xb5e, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0) (`jal` at 0x1c814).
  At `beq` at 0x1c760 (target 0x1c7b8), taken when v0(=ret(memory_present)) == 0 and falls through when v0(=ret(memory_present)) != 0.
  At `beq` at 0x1c768 (target 0x1c7f0), taken when at(=a1) == s2(=0x1) and falls through when at(=a1) != s2(=0x1).
  At `bne` at 0x1c778 (target 0x1c7a0), taken when v0(=ret(memory_read_accessible)) != 0 and falls through when v0(=ret(memory_read_accessible)) == 0.
  At `beq` at 0x1c780 (target 0x1c79c), taken when s1(=a2) == s2(=0x1) and falls through when s1(=a2) != s2(=0x1).
  At `beq` at 0x1c7b8 (target 0x1c7dc), taken when s1(=a2) == s2(=0x1) and falls through when s1(=a2) != s2(=0x1).
  At `bne` at 0x1c7f8 (target 0x1c7a0), taken when v0(=ret(memory_write_accessible)) != 0 and falls through when v0(=ret(memory_write_accessible)) == 0.
  At `beq` at 0x1c800 (target 0x1c81c), taken when s1(=a2) == s2(=0x1) and falls through when s1(=a2) != s2(=0x1).
  Returns v0 = one of 0x0, 0x2, 0x3 (`jr` at 0x1c7b0).

- `error_check_poisoned_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c824 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c824-0x1ca64 (576 bytes).
  Loads 8 bytes into s1 from sym(.srdata) +0x2f0 (`ld` at 0x1c868).
  Loads 8 bytes into s1 from sym(.srdata) +0x2f0 (`ld` at 0x1c86c).
  Calls `nasid_to_partid` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1c854).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c85c).
  Calls `get_dir_ent` via direct with a0=a0 at entry (arg0), a1=sp-88, a2=sp-80, a3=sp-72 (`jal` at 0x1c87c).
  Calls `migr_check_migr_poisoned` via direct with a0=a0 at entry (arg0), a1=?, a2=0x7, a3=? (`jal` at 0x1c8a8).
  Calls `migr_page_unmap_tlb` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a2 at entry (arg2), a4=0x1 (`jal` at 0x1c8c4).
  Calls `klerror_check_recoverable` via direct with a0=0x0, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x1c8d0).
  Calls `cmn_err_tag` via direct with a0=0xb60, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a4=0x1 (`jal` at 0x1c8f8).
  Calls `page_ispoison` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=a2 at entry (arg2) (`jal` at 0x1c908).
  Calls `cmn_err_tag` via direct with a0=0xb61, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a5=-0x1 (`jal` at 0x1c928).
  Calls `log_md_errors` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1c938).
  Calls `page_isdiscarded` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1c940).
  Calls `check_md_errors` via direct with a0=a0 at entry (arg0), a1=sp-64, a2=0x11e1a300, a3=sp-96 (`jal` at 0x1c964).
  Calls `check_md_errors` via direct with a0=a0 at entry (arg0), a1=sp-64, a2=0x11e1a300, a3=sp-96 (`jal` at 0x1c9a4).
  Calls `cmn_err_tag` via direct with a0=0xb63, a1=0x4, a2=sym(.rodata)+36904, a3=a0 at entry (arg0) (`jal` at 0x1c9dc).
  Calls `kl_panic` via direct with a0=sym(.rodata)+36904, a1=0x1, a2=?, a3=0x2, a6=0x3 (`jal` at 0x1c9ec).
  Calls `error_page_discard` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=0x2, a6=0x3 (`jal` at 0x1ca04).
  Calls `cmn_err_tag` via direct with a0=0xb62, a1=0x4, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a4=0x1, a5=0x2 (`jal` at 0x1ca34).
  Calls `assfail` via direct with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0x2ce, a3=? (`jal` at 0x1ca54).
  At `bne` at 0x1c864 (target 0x1ca4c), taken when s1(=ret(nasid_to_partid)) != v0(=ret(part_id)) and falls through when s1(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  At `beq` at 0x1c88c (target 0x1c8a8), taken when a1(?) == a2(=0x7) and falls through when a1(?) != a2(=0x7).
  At `beq` at 0x1c8b0 (target 0x1c908), taken when v0(=ret(migr_check_migr_poisoned)) == 0 and falls through when v0(=ret(migr_check_migr_poisoned)) != 0.
  At `beq` at 0x1c8bc (target 0x1c8ec), taken when a3(=a2) == a4(=0x1) and falls through when a3(=a2) != a4(=0x1).
  At `beq` at 0x1c8dc (target 0x1c920), taken when v0(=ret(klerror_check_recoverable)) == a5(=-0x1) and falls through when v0(=ret(klerror_check_recoverable)) != a5(=-0x1).
  At `beq` at 0x1c910 (target 0x1c938), taken when v0(=ret(page_ispoison)) == 0 and falls through when v0(=ret(page_ispoison)) != 0.
  At `beq` at 0x1c948 (target 0x1c958), taken when v0(=ret(page_isdiscarded)) == 0 and falls through when v0(=ret(page_isdiscarded)) != 0.
  At `beq` at 0x1c96c (target 0x1c9c0), taken when v0(=ret(check_md_errors)) == 0 and falls through when v0(=ret(check_md_errors)) != 0.
  At `beq` at 0x1c980 (target 0x1c9fc), taken when a0(=ret(check_md_errors)) == a1(=0x1) and falls through when a0(=ret(check_md_errors)) != a1(=0x1).
  At `beq` at 0x1c988 (target 0x1c9fc), taken when a0(=ret(check_md_errors)) == a3(=0x2) and falls through when a0(=ret(check_md_errors)) != a3(=0x2).
  At `beq` at 0x1c990 (target 0x1c9ec), taken when a0(=ret(check_md_errors)) == a6(=0x3) and falls through when a0(=ret(check_md_errors)) != a6(=0x3).
  At `bne` at 0x1c9b8 (target 0x1c980), taken when v0(=ret(check_md_errors)) != 0 and falls through when v0(=ret(check_md_errors)) == 0.
  At `bne` at 0x1c9c4 (target 0x1c9d4), taken when a3(=a2) != 0 and falls through when a3(=a2) == 0.
  At `beq` at 0x1ca0c (target 0x1ca44), taken when v0(=ret(error_page_discard)) == 0 and falls through when v0(=ret(error_page_discard)) != 0.
  At `beq` at 0x1ca18 (target 0x1ca44), taken when v0(=ret(error_page_discard)) == a4(=0x1) and falls through when v0(=ret(error_page_discard)) != a4(=0x1).
  At `beq` at 0x1ca20 (target 0x1ca3c), taken when v0(=ret(error_page_discard)) == a5(=0x2) and falls through when v0(=ret(error_page_discard)) != a5(=0x2).
  Returns v0 = ? (`jr` at 0x1c8a0).

- `handle_hspec_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ca64 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ca64-0x1cb9c (312 bytes).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x2e0, including `ld` at 0x1cac8, 0x1cb10, 0x1cb3c.
  4 such loads of 8 bytes through a3 (?) to ? (base unknown), including `ld` at 0x1cad0, 0x1cb18, 0x1cb4c.
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x2f0, including `ld` at 0x1cad4, 0x1cb1c, 0x1cb64.
  Calls `get_matching_spool_addr` via direct with a0=sp-32, a1=sp-24, a2=?, a3=0x8, a4=0x0 (`jal` at 0x1ca88).
  Calls `cmn_err_tag` via direct with a0=0xb67, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1), a5=0x1 (`jal` at 0x1cae4).
  Calls `cmn_err_tag` via direct with a0=0xb66, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1), a5=0x1 (`jal` at 0x1cb2c).
  Calls `cmn_err_tag` via direct with a0=0xb64, a1=0x14, a2=sym(.rodata)+36904, a3=0x2 (`jal` at 0x1cb70).
  Calls `cmn_err_tag` via direct with a0=0xb65, a1=0x14, a2=sym(.rodata)+36904, a3=0x2, a5=0x1 (`jal` at 0x1cb8c).
  At `beq` at 0x1ca94 (target 0x1cb64), taken when v0(=ret(get_matching_spool_addr)) == 0 and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  At `beq` at 0x1ca9c (target 0x1cb80), taken when v0(=ret(get_matching_spool_addr)) == a2(=-0x1) and falls through when v0(=ret(get_matching_spool_addr)) != a2(=-0x1).
  At `beq` at 0x1caa4 (target 0x1cafc), taken when v0(=ret(get_matching_spool_addr)) == a5(=0x1) and falls through when v0(=ret(get_matching_spool_addr)) != a5(=0x1).
  At `bne` at 0x1caac (target 0x1caec), taken when v0(=ret(get_matching_spool_addr)) != a3(=0x2) and falls through when v0(=ret(get_matching_spool_addr)) == a3(=0x2).
  At `bltz` at 0x1cac0 (target 0x1cb3c), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `bltz` at 0x1cb08 (target 0x1cb50), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  Returns v0 = 0x2 (`jr` at 0x1caf4).

- `handle_mspec_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1cb9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1cb9c-0x1cd5c (448 bytes).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x2f0, including `ld` at 0x1cbcc, 0x1cc3c, 0x1ccb4.
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x2e0, including `ld` at 0x1cc04, 0x1cc7c, 0x1ccd8.
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x1cc0c).
  Loads 8 bytes into a2 from abs 0xffffffffffffc018 (`ld` at 0x1cc1c).
  Loads 8 bytes into a2 from abs 0xffffffffffffc018 (`ld` at 0x1cc94).
  Loads 8 bytes into a7 from [-0x3fe8]:8 +0x308 (`ld` at 0x1cc28).
  Loads 8 bytes into a7 from [-0x3fe8]:8 +0x308 (`ld` at 0x1cca0).
  Loads 4 bytes into a6 from [[-0x3fe8]:8+776]:8 +0x10 (`lw` at 0x1cc34).
  Loads 4 bytes into a6 from [[-0x3fe8]:8+776]:8 +0x10 (`lw` at 0x1ccac).
  Loads 8 bytes into v1 from ? (base unknown) (`ld` at 0x1cc84).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0x1cce4).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0x1cd0c).
  Calls `get_matching_spool_addr` via direct with a0=sp-64, a1=sp-56, a2=?, a3=0x8, a4=0x0 (`jal` at 0x1cbc0).
  Calls `get_current_name` via direct with a0=?, a1=?, a2=sym(.rodata)+36904, a3=?, a5=-0x1, a6=0x1, a7=0x2 (`jal` at 0x1cc14).
  Calls `cmn_err_tag` via direct with a0=0xb6b, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1cc50).
  Calls `get_current_name` via direct with a0=?, a1=?, a2=sym(.rodata)+36904, a3=?, a5=-0x1, a6=0x1, a7=0x2 (`jal` at 0x1cc8c).
  Calls `cmn_err_tag` via direct with a0=0xb6a, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1ccc8).
  Calls `kthread_get_pid` via direct with a0=?, a1=?, a2=[-0x3fe8]:8, a3=? (`jal` at 0x1ccf0).
  Calls `cmn_err_tag` via direct with a0=0xb68, a1=0x14, a2=sym(.rodata)+36904, a3=? (`jal` at 0x1cd20).
  Calls `cmn_err_tag` via direct with a0=0xb69, a1=0x14, a2=sym(.rodata)+36904, a3=?, a5=-0x1, a6=0x1 (`jal` at 0x1cd3c).
  Calls `kthread_get_pid` via direct with a0=?, a1=?, a2=[-0x3fe8]:8, a3=? (`jal` at 0x1cd4c).
  At `beq` at 0x1cbc8 (target 0x1cd18), taken when v0(=ret(get_matching_spool_addr)) == 0 and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  At `beq` at 0x1cbd4 (target 0x1cd30), taken when v0(=ret(get_matching_spool_addr)) == a5(=-0x1) and falls through when v0(=ret(get_matching_spool_addr)) != a5(=-0x1).
  At `beq` at 0x1cbdc (target 0x1cc68), taken when v0(=ret(get_matching_spool_addr)) == a6(=0x1) and falls through when v0(=ret(get_matching_spool_addr)) != a6(=0x1).
  At `bne` at 0x1cbe4 (target 0x1cc5c), taken when v0(=ret(get_matching_spool_addr)) != a7(=0x2) and falls through when v0(=ret(get_matching_spool_addr)) == a7(=0x2).
  At `bltz` at 0x1cbfc (target 0x1ccd8), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `beq` at 0x1cc20 (target 0x1ccf0), taken when a2(=[-0x3fe8]:8) == 0 and falls through when a2(=[-0x3fe8]:8) != 0.
  At `beq` at 0x1cc2c (target 0x1ccf0), taken when a7(=[[-0x3fe8]:8+776]:8) == 0 and falls through when a7(=[[-0x3fe8]:8+776]:8) != 0.
  At `bltz` at 0x1cc74 (target 0x1cd00), taken when v1(?) < 0 (signed) and falls through when v1(?) >= 0 (signed).
  At `beq` at 0x1cc98 (target 0x1cd4c), taken when a2(=[-0x3fe8]:8) == 0 and falls through when a2(=[-0x3fe8]:8) != 0.
  At `beq` at 0x1cca4 (target 0x1cd4c), taken when a7(=[[-0x3fe8]:8+776]:8) == 0 and falls through when a7(=[[-0x3fe8]:8+776]:8) != 0.
  Returns v0 = 0x2 (`jr` at 0x1cc60).

- `handle_io_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1cd5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1cd5c-0x1cfac (592 bytes).
  Loads 8 bytes into a4 from sym(.srdata) +0x2f0 (`ld` at 0x1cd5c).
  Loads 8 bytes into a2 from sym(.srdata) +0x2f0 (`ld` at 0x1cdd0).
  Loads 8 bytes into a3 from sym(.srdata) +0x2f0 (`ld` at 0x1cf1c).
  Loads 8 bytes into a5 from sym(.lit8) +0x120 (`ld` at 0x1cde0).
  Loads 8 bytes into v0 from sym(.lit8) +0x60 (`ld` at 0x1ce0c).
  Loads 2 bytes into a1 from abs 0xffffffffffffc42a (`lh` at 0x1ce30).
  Loads 2 bytes into a1 from abs 0xffffffffffffc42a (`lh` at 0x1ce9c).
  Loads 2 bytes into a1 from abs 0xffffffffffffc42a (`lh` at 0x1cf58).
  Loads 8 bytes into a0 from sym(.srdata) +0x310 (`ld` at 0x1ce38).
  Loads 8 bytes into a0 from sym(.srdata) +0x310 (`ld` at 0x1cea8).
  Loads 8 bytes into a0 from sym(.srdata) +0x310 (`ld` at 0x1cf64).
  4 such loads of 2 bytes through zero (0x0) to abs 0xffffffffffffc428, including `lh` at 0x1ce3c, 0x1ceb0, 0x1ced4.
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x110 (`ld` at 0x1ce48).
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x110 (`ld` at 0x1cebc).
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x110 (`ld` at 0x1cf78).
  Loads 2 bytes into a0 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0x1ce5c).
  Loads 2 bytes into a0 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0x1ced0).
  Loads 2 bytes into a0 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0x1cf8c).
  Loads 8 bytes into a5 from sym(.srdata) +0x2f8 (`ld` at 0x1ced8).
  Loads 8 bytes into a5 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8 (`ld` at 0x1cee4).
  Loads 1 byte into a5 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528 (`lbu` at 0x1cee8).
  Loads 8 bytes into a0 from sym(.lit8) +0x188 (`ld` at 0x1ceec).
  Loads 8 bytes into a4 from sym(.lit8) +0x188 (`ld` at 0x1cf18).
  Loads 8 bytes into a4 from sym(.lit8) +0x188 (`ld` at 0x1cf34).
  Loads 8 bytes into a4 from abs 0x9200000001000400 (`ld` at 0x1cef8).
  Stores 8 bytes from s3 to abs 0x9200000001000400  (`sd` at 0x1cf3c).
  Calls `get_matching_spool_addr` via direct with a0=sp-80, a1=sp-72, a2=?, a3=0x8, a4=0x0, a6=0x2 (`jal` at 0x1cdb8).
  Calls `kl_ioerror_handler` via direct with a0=entry(sym(nasid_to_compact_node)), a1=[-0x3bd6]:2, a2=[-0x3bd8]:2, a3=0x5, a4=a1 at entry (arg1), a5=[a0+272]:8, a6=one of 0x0, 0x1, 0x2, a7=a0 at entry (arg0) (`jal` at 0x1ce58).
  Calls `kl_ioerror_handler` via direct with a0=entry(sym(nasid_to_compact_node)), a1=[-0x3bd6]:2, a2=[-0x3bd8]:2, a3=0x5, a4=a1 at entry (arg1), a5=[a0+272]:8, a6=one of 0x0, 0x1, 0x2, a7=a0 at entry (arg0) (`jal` at 0x1cecc).
  Calls `cmn_err_tag` via direct with a0=0xb6c, a1=0x14, a2=?, a3=sym(.rodata)+36904, a4=0x9200000001000400, a6=0x100000 (`jal` at 0x1cf2c).
  Calls `cmn_err_tag` via direct with a0=0xb6d, a1=0x14, a2=sym(.rodata)+36904, a3=-0x1 (`jal` at 0x1cf48).
  Calls `kl_ioerror_handler` via direct with a0=entry(sym(nasid_to_compact_node)), a1=[-0x3bd6]:2, a2=[-0x3bd8]:2, a3=0x5, a4=a1 at entry (arg1), a5=[a0+272]:8, a6=one of 0x0, 0x1, 0x2, a7=a0 at entry (arg0) (`jal` at 0x1cf88).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=sym(.rodata)+36904, a3=-0x1 (`jal` at 0x1cf98).
  At `beq` at 0x1cd8c (target 0x1ce8c), taken when s2(=0x1) == a2 and falls through when s2(=0x1) != a2.
  At `beq` at 0x1cdc0 (target 0x1ce9c), taken when v0(=ret(get_matching_spool_addr)) == 0 and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  At `beq` at 0x1cdcc (target 0x1cf40), taken when v0(=ret(get_matching_spool_addr)) == a3(=-0x1) and falls through when v0(=ret(get_matching_spool_addr)) != a3(=-0x1).
  At `beq` at 0x1cdd4 (target 0x1cf58), taken when v0(=ret(get_matching_spool_addr)) == s2(=0x1) and falls through when v0(=ret(get_matching_spool_addr)) != s2(=0x1).
  At `beq` at 0x1cddc (target 0x1ce08), taken when v0(=ret(get_matching_spool_addr)) == a4(=0x2) and falls through when v0(=ret(get_matching_spool_addr)) != a4(=0x2).
  At `beq` at 0x1cde4 (target 0x1ce6c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x1ce20 (target 0x1ce30), taken when s0(=a1) < a5(=0x9200000001000000) (unsigned) and falls through when s0(=a1) >= a5(=0x9200000001000000) (unsigned).
  At `bne` at 0x1ce28 (target 0x1cf98), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x1ce64 (target 0x1cdec), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x1ce7c (target 0x1cde8), taken when s1(=one of 0x0, 0x1, 0x2) == a1(=0x2) and falls through when s1(=one of 0x0, 0x1, 0x2) != a1(=0x2).
  At `beq` at 0x1cf0c (target 0x1ce64), taken when (s3(=one of 0x100000, 0x200000) & a4(=[0x9200000001000400]:8)) == 0 and falls through when (s3(=one of 0x100000, 0x200000) & a4(=[0x9200000001000400]:8)) != 0.
  At `beq` at 0x1cf14 (target 0x1cf38), taken when s1(=one of 0x0, 0x1, 0x2) == 0 and falls through when s1(=one of 0x0, 0x1, 0x2) != 0.
  Returns v0 = one of 0x1, 0x2 (`jr` at 0x1ce00).

- `handle_uncac_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1cfac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1cfac-0x1d8b0 (2308 bytes).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x2f0, including `ld` at 0x1d000, 0x1d024, 0x1d0c8.
  Loads 8 bytes into t8 from table(sym(.rodata)+36904) +0x0 (`ld` at 0x1d044).
  Loads 2 bytes into ra from abs 0xffffffffffffc428 (`lh` at 0x1d050).
  Loads 8 bytes into t9 from sym(.srdata) +0x2f8 (`ld` at 0x1d054).
  Loads 8 bytes into t9 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8 (`ld` at 0x1d060).
  Loads 1 byte into t9 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528 (`lbu` at 0x1d064).
  Loads 8 bytes into s5 from sym(.lit8) +0x188 (`ld` at 0x1d06c).
  Loads 8 bytes into s2 from sym(.lit8) +0x188 (`ld` at 0x1d510).
  Loads 8 bytes into t8 from abs 0x9200000001000400 (`ld` at 0x1d07c).
  Stores 8 bytes from s4 to abs 0x9200000001000400  (`sd` at 0x1d0ec).
  Stores 8 bytes from s4 to abs 0x9200000001000400  (`sd` at 0x1d52c).
  Calls `get_matching_spool_addr` via direct with a0=sp-144, a1=sp-136, a2=?, a3=0x8, a4=0x0 (`jal` at 0x1cfe0).
  Calls `nasid_to_partid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1d098).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1d0a0).
  Calls `cmn_err_tag` via direct with a0=0xb6f, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1d0d4).
  Calls `partition_handle_error` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x9, a3=? (`jal` at 0x1d0e8).
  Calls `cmn_err_tag` via direct with a0=0xb79, a1=0x14, a2=sym(.rodata)+36904, a3=?, a5=a1 at entry (arg1) (`jal` at 0x1d4b0).
  Calls `nasid_to_partid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1d4c0).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1d4c8).
  Calls `cmn_err_tag` via direct with a0=0xb72, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1d4f0).
  Calls `cmn_err_tag` via direct with a0=0xb6e, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1d514).
  Calls `error_page_discard` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x1, a3=? (`jal` at 0x1d528).
  Calls `cmn_err_tag` via direct with a0=0xb70, a1=0x4, a2=sym(.rodata)+36904, a3=a1 at entry (arg1), a4=0x2 (`jal` at 0x1d554).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1d55c).
  Calls `cmn_err_tag` via direct with a0=0xb71, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1d578).
  Calls `partition_handle_error` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x9, a3=? (`jal` at 0x1d588).
  Calls `cmn_err_tag` via direct with a0=0xb73, a1=0x14, a2=sym(.rodata)+36904, a3=-0x1 (`jal` at 0x1d7bc).
  At `beq` at 0x1cff0 (target 0x1d050), taken when v0(=ret(get_matching_spool_addr)) == 0 and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  At `beq` at 0x1cffc (target 0x1d7b4), taken when v0(=ret(get_matching_spool_addr)) == a3(=-0x1) and falls through when v0(=ret(get_matching_spool_addr)) != a3(=-0x1).
  At `beq` at 0x1d008 (target 0x1d11c), taken when v0(=ret(get_matching_spool_addr)) == s4(=0x1) and falls through when v0(=ret(get_matching_spool_addr)) != s4(=0x1).
  At `beq` at 0x1d014 (target 0x1d124), taken when v0(=ret(get_matching_spool_addr)) == a4(=0x2) and falls through when v0(=ret(get_matching_spool_addr)) != a4(=0x2).
  At `beq` at 0x1d03c (target 0x1d4a0), taken when a1(?) >= 0x8 (unsigned) and falls through when a1(?) < 0x8 (unsigned).
  At `beq` at 0x1d090 (target 0x1d4c0), taken when (s4(=one of 0x100000, 0x200000) & t8(=[0x9200000001000400]:8)) == 0 and falls through when (s4(=one of 0x100000, 0x200000) & t8(=[0x9200000001000400]:8)) != 0.
  At `beq` at 0x1d0ac (target 0x1d500), taken when v0(=ret(part_id)) == at(?) and falls through when v0(=ret(part_id)) != at(?).
  At `beq` at 0x1d0b8 (target 0x1d0e0), taken when s2(=a2) == v0(=0x1) and falls through when s2(=a2) != v0(=0x1).
  At `beq` at 0x1d130 (target 0x1d154), the condition is not analyzed.
  At `beq` at 0x1d164 (target 0x1d598), the condition is not analyzed.
  At `beq` at 0x1d16c (target 0x1d188), the condition is not analyzed.
  At `beq` at 0x1d194 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d19c (target 0x1d1b8), the condition is not analyzed.
  At `beq` at 0x1d1d0 (target 0x1d5d8), the condition is not analyzed.
  At `beq` at 0x1d1d8 (target 0x1d1f4), the condition is not analyzed.
  At `beq` at 0x1d204 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d20c (target 0x1d228), the condition is not analyzed.
  At `beq` at 0x1d240 (target 0x1d61c), the condition is not analyzed.
  At `beq` at 0x1d248 (target 0x1d26c), the condition is not analyzed.
  At `beq` at 0x1d278 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d280 (target 0x1d2a4), the condition is not analyzed.
  At `beq` at 0x1d2b8 (target 0x1d660), the condition is not analyzed.
  At `beq` at 0x1d2c0 (target 0x1d2dc), the condition is not analyzed.
  At `beq` at 0x1d2ec (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d2f4 (target 0x1d318), the condition is not analyzed.
  At `beq` at 0x1d32c (target 0x1d6a4), the condition is not analyzed.
  At `beq` at 0x1d334 (target 0x1d350), the condition is not analyzed.
  At `beq` at 0x1d360 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d368 (target 0x1d384), the condition is not analyzed.
  At `beq` at 0x1d39c (target 0x1d6ec), the condition is not analyzed.
  At `beq` at 0x1d3a4 (target 0x1d3c0), the condition is not analyzed.
  At `beq` at 0x1d3d0 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d3e8 (target 0x1d734), the condition is not analyzed.
  At `beq` at 0x1d3f0 (target 0x1d410), the condition is not analyzed.
  At `beq` at 0x1d420 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d428 (target 0x1d44c), the condition is not analyzed.
  At `beq` at 0x1d460 (target 0x1d76c), the condition is not analyzed.
  At `beq` at 0x1d468 (target 0x1d48c), the condition is not analyzed.
  At `beq` at 0x1d498 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d4d0 (target 0x1d7d4), taken when s3(=ret(nasid_to_partid)) == v0(=ret(part_id)) and falls through when s3(=ret(nasid_to_partid)) != v0(=ret(part_id)).
  At `beq` at 0x1d4d8 (target 0x1d4f8), taken when s2(=a2) == a4(=0x1) and falls through when s2(=a2) != a4(=0x1).
  At `beq` at 0x1d530 (target 0x1d7e4), taken when v0(=ret(error_page_discard)) == 0 and falls through when v0(=ret(error_page_discard)) != 0.
  At `beq` at 0x1d53c (target 0x1d7e4), taken when v0(=ret(error_page_discard)) == a3(=0x1) and falls through when v0(=ret(error_page_discard)) != a3(=0x1).
  At `beq` at 0x1d544 (target 0x1d55c), taken when v0(=ret(error_page_discard)) == a4(=0x2) and falls through when v0(=ret(error_page_discard)) != a4(=0x2).
  At `beq` at 0x1d564 (target 0x1d7cc), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `beq` at 0x1d5a0 (target 0x1d828), the condition is not analyzed.
  At `beq` at 0x1d5a8 (target 0x1d5c4), the condition is not analyzed.
  At `beq` at 0x1d5d0 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d5e0 (target 0x1d830), the condition is not analyzed.
  At `beq` at 0x1d5e8 (target 0x1d604), the condition is not analyzed.
  At `beq` at 0x1d614 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d624 (target 0x1d838), the condition is not analyzed.
  At `beq` at 0x1d62c (target 0x1d648), the condition is not analyzed.
  At `beq` at 0x1d658 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d668 (target 0x1d840), the condition is not analyzed.
  At `beq` at 0x1d670 (target 0x1d68c), the condition is not analyzed.
  At `beq` at 0x1d69c (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d6ac (target 0x1d848), the condition is not analyzed.
  At `beq` at 0x1d6b4 (target 0x1d6d8), the condition is not analyzed.
  At `beq` at 0x1d6e4 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d6f4 (target 0x1d850), the condition is not analyzed.
  At `beq` at 0x1d6fc (target 0x1d720), the condition is not analyzed.
  At `beq` at 0x1d72c (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d740 (target 0x1d7ec), the condition is not analyzed.
  At `beq` at 0x1d750 (target 0x1d7dc), the condition is not analyzed.
  At `beq` at 0x1d764 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d774 (target 0x1d858), the condition is not analyzed.
  At `beq` at 0x1d77c (target 0x1d7a0), the condition is not analyzed.
  At `beq` at 0x1d7ac (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d7dc (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d7fc (target 0x1d868), the condition is not analyzed.
  At `beq` at 0x1d80c (target 0x1d860), the condition is not analyzed.
  At `beq` at 0x1d820 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d828 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d830 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d838 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d840 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d848 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d850 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d858 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d860 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d870 (target 0x1d890), the condition is not analyzed.
  At `beq` at 0x1d888 (target 0x1d0f4), the condition is not analyzed.
  At `beq` at 0x1d8a8 (target 0x1d0f4), the condition is not analyzed.
  The instructions from 0x1d130 to 0x1d49c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1d598 to 0x1d7b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1d7dc to 0x1d7e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1d7ec to 0x1d8ac are not reached by any path from the entry, and their branches are not listed.

- `handle_cac_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1d8b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1d8b0-0x1e224 (2420 bytes).
  Loads 4 bytes into a3 from sym(scache_linemask) +0x0 (`lw` at 0x1d8cc).
  6 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x2f0, including `ld` at 0x1d928, 0x1d938, 0x1d9a0.
  Loads 8 bytes into t8 from table(sym(.rodata)+36904) +0x0 (`ld` at 0x1d958).
  Loads 8 bytes into t8 from sym(.lit8) +0x248 (`ld` at 0x1d9b0).
  Loads 8 bytes into t8 from abs 0x9200000001000018 (`ld` at 0x1d9b4).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x110 (`ld` at 0x1dd84).
  Loads 4 bytes into a1 from sym(debug_error_message) +0x0 (`lw` at 0x1e168).
  Loads 8 bytes into a3 from sym(.lit8) +0xb8 (`ld` at 0x1e1b8).
  Loads 8 bytes into a2 from table(0x9200000001fc0000) +0x0 (`ld` at 0x1e1c4).
  Loads 8 bytes into a5 from sym(.lit8) +0xc0 (`ld` at 0x1e1ec).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0x1e210).
  Calls `get_matching_spool_addr` via direct with a0=sp-96, a1=sp-88, a2=?, a3=[sym(scache_linemask)]+1, a4=0x0 (`jal` at 0x1d8e8).
  Calls `kl_panic` via direct with a0=sym(.rodata)+36904, a1=?, a2=?, a3=? (`jal` at 0x1d964).
  Calls `nasid_to_region` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1d9a8).
  Calls `nasid_to_region` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1d9d4).
  Calls `cmn_err_tag` via direct with a0=0xb7b, a1=0x14, a2=sym(.rodata)+36904, a3=ret(nasid_to_region), a5=a1 at entry (arg1) (`jal` at 0x1d9f0).
  Calls `nasid_to_partid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1da00).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1da08).
  Calls `error_lookup_inst_type` via direct with a0=a0 at entry (arg0), a1=?, a2=sym(.rodata)+36904, a3=? (`jal` at 0x1da1c).
  Calls `error_check_memory_access` via direct with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=? (`jal` at 0x1da34).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1da44).
  Calls `partition_handle_error` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x6, a3=? (`jal` at 0x1da58).
  Calls `cmn_err_tag` via direct with a0=0xb8c, a1=0x14, a2=sym(.rodata)+36904, a3=?, a5=a1 at entry (arg1) (`jal` at 0x1da90).
  Calls `cmn_err_tag` via direct with a0=0xb7a, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1dd3c).
  Calls `cmn_err_tag` via direct with a0=0xb7c, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1dd58).
  Calls `partition_handle_error` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x9, a3=? (`jal` at 0x1dd68).
  Calls `error_check_poisoned_state` via direct with a0=a1 at entry (arg1), a1=[a0+272]:8, a2=0x0, a3=? (`jal` at 0x1dd88).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1dd98).
  Calls `partition_handle_error` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x5, a3=? (`jal` at 0x1ddac).
  Calls `cmn_err_tag` via direct with a0=0xb7d, a1=0x14, a2=sym(.rodata)+36904, a3=? (`jal` at 0x1e018).
  Calls `memory_iscalias` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1e028).
  Calls `klerror_check_recoverable` via direct with a0=0x3, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x1e04c).
  Calls `error_check_part_page` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=-0x1 (`jal` at 0x1e158).
  Calls `cmn_err_tag` via direct with a0=0xb7f, a1=0x4, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1e184).
  Calls `partition_handle_error` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=? (`jal` at 0x1e194).
  Calls `cmn_err_tag` via direct with a0=0xb80, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1) (`jal` at 0x1e1b0).
  Calls `cmn_err_tag` via direct with a0=0xb82, a1=0x14, a2=sym(.rodata)+36904, a3=sym(.rodata)+36904, a5=0x90000001c0000000, a7=0x3ffffff0 (`jal` at 0x1e20c).
  At `beq` at 0x1d8fc (target 0x1dd1c), taken when v0(=ret(get_matching_spool_addr)) == a0(=-0x1) and falls through when v0(=ret(get_matching_spool_addr)) != a0(=-0x1).
  At `beq` at 0x1d904 (target 0x1d998), taken when v0(=ret(get_matching_spool_addr)) == 0 and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  At `beq` at 0x1d90c (target 0x1da68), taken when v0(=ret(get_matching_spool_addr)) == s4(=0x1) and falls through when v0(=ret(get_matching_spool_addr)) != s4(=0x1).
  At `beq` at 0x1d918 (target 0x1daa0), taken when v0(=ret(get_matching_spool_addr)) == a4(=0x2) and falls through when v0(=ret(get_matching_spool_addr)) != a4(=0x2).
  At `bne` at 0x1d924 (target 0x1d964), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x1d950 (target 0x1da7c), taken when v1(?) >= 0x8 (unsigned) and falls through when v1(?) < 0x8 (unsigned).
  At `bne` at 0x1d9c4 (target 0x1da00), taken when (t8(=[0x9200000001000018]:8) & t9(?)) != 0 and falls through when (t8(=[0x9200000001000018]:8) & t9(?)) == 0.
  At `beq` at 0x1d9cc (target 0x1d9f8), taken when a0(=0x1) == s5(=a2) and falls through when a0(=0x1) != s5(=a2).
  At `bne` at 0x1da14 (target 0x1dd4c), taken when v0(=ret(part_id)) != t9(?) and falls through when v0(=ret(part_id)) == t9(?).
  At `beq` at 0x1da28 (target 0x1e010), taken when v0(=ret(error_lookup_inst_type)) == ra(=-0x1) and falls through when v0(=ret(error_lookup_inst_type)) != ra(=-0x1).
  At `beq` at 0x1da3c (target 0x1dd80), taken when v0(=ret(error_check_memory_access)) == 0 and falls through when v0(=ret(error_check_memory_access)) != 0.
  At `beq` at 0x1da4c (target 0x1dd78), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `beq` at 0x1dac8 (target 0x1ddbc), the condition is not analyzed.
  At `beq` at 0x1dad0 (target 0x1daf8), the condition is not analyzed.
  At `beq` at 0x1db04 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1db1c (target 0x1de08), the condition is not analyzed.
  At `beq` at 0x1db24 (target 0x1db44), the condition is not analyzed.
  At `beq` at 0x1db54 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1db6c (target 0x1de54), the condition is not analyzed.
  At `beq` at 0x1db74 (target 0x1db94), the condition is not analyzed.
  At `beq` at 0x1dba4 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1dbbc (target 0x1dea4), the condition is not analyzed.
  At `beq` at 0x1dbc4 (target 0x1dbec), the condition is not analyzed.
  At `beq` at 0x1dbf8 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1dc10 (target 0x1def0), the condition is not analyzed.
  At `beq` at 0x1dc18 (target 0x1dc38), the condition is not analyzed.
  At `beq` at 0x1dc48 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1dc5c (target 0x1dc7c), the condition is not analyzed.
  At `beq` at 0x1dc90 (target 0x1df38), the condition is not analyzed.
  At `beq` at 0x1dc98 (target 0x1dcb4), the condition is not analyzed.
  At `beq` at 0x1dcc4 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1dcdc (target 0x1df74), the condition is not analyzed.
  At `beq` at 0x1dce4 (target 0x1dd04), the condition is not analyzed.
  At `beq` at 0x1dd14 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1dd90 (target 0x1e028), taken when v0(=ret(error_check_poisoned_state)) == 0 and falls through when v0(=ret(error_check_poisoned_state)) != 0.
  At `beq` at 0x1dda0 (target 0x1dfc4), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `beq` at 0x1ddc4 (target 0x1e070), the condition is not analyzed.
  At `beq` at 0x1ddcc (target 0x1ddf4), the condition is not analyzed.
  At `beq` at 0x1de00 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1de10 (target 0x1e094), the condition is not analyzed.
  At `beq` at 0x1de1c (target 0x1de3c), the condition is not analyzed.
  At `beq` at 0x1de4c (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1de5c (target 0x1e0b4), the condition is not analyzed.
  At `beq` at 0x1de68 (target 0x1de90), the condition is not analyzed.
  At `beq` at 0x1de9c (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1deac (target 0x1e0d4), the condition is not analyzed.
  At `beq` at 0x1deb8 (target 0x1ded8), the condition is not analyzed.
  At `beq` at 0x1dee8 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1def8 (target 0x1e0f4), the condition is not analyzed.
  At `beq` at 0x1df00 (target 0x1df20), the condition is not analyzed.
  At `beq` at 0x1df30 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1df48 (target 0x1dfcc), the condition is not analyzed.
  At `beq` at 0x1df50 (target 0x1dfcc), the condition is not analyzed.
  At `beq` at 0x1df6c (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1df7c (target 0x1e128), the condition is not analyzed.
  At `beq` at 0x1df88 (target 0x1dfb0), the condition is not analyzed.
  At `beq` at 0x1dfbc (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1dfd4 (target 0x1e068), the condition is not analyzed.
  At `beq` at 0x1dfdc (target 0x1dff8), the condition is not analyzed.
  At `beq` at 0x1e008 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e030 (target 0x1e048), taken when v0(=ret(memory_iscalias)) == 0 and falls through when v0(=ret(memory_iscalias)) != 0.
  At `beq` at 0x1e038 (target 0x1e04c), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x1e058 (target 0x1e158), taken when v0(=ret(klerror_check_recoverable)) == a5(=-0x1) and falls through when v0(=ret(klerror_check_recoverable)) != a5(=-0x1).
  At `beq` at 0x1e068 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e08c (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e0ac (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e0cc (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e0ec (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e120 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e150 (target 0x1d970), the condition is not analyzed.
  At `beq` at 0x1e160 (target 0x1e1a4), taken when v0(=ret(error_check_part_page)) == 0 and falls through when v0(=ret(error_check_part_page)) != 0.
  At `beq` at 0x1e16c (target 0x1e190), taken when a1(=[sym(debug_error_message)]) == 0 and falls through when a1(=[sym(debug_error_message)]) != 0.
  At `beq` at 0x1e1cc (target 0x1e21c), taken when (a2(=entry(0x9200000001fc0000)) & 0x1) == 0 and falls through when (a2(=entry(0x9200000001fc0000)) & 0x1) != 0.
  The instructions from 0x1dab8 to 0x1dd18 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1ddbc to 0x1dfc0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1dfcc to 0x1e00c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1e068 to 0x1e154 are not reached by any path from the entry, and their branches are not listed.

- `dump_crb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e224 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e224-0x1e35c (312 bytes).
  Loads 8 bytes into a3 from sym(.srdata) +0x310 (`ld` at 0x1e224).
  Loads 4 bytes into a2 from sym(scache_linemask) +0x0 (`lw` at 0x1e228).
  Loads 4 bytes into a1 from sym(scache_linemask) +0x0 (`lw` at 0x1e298).
  Loads 4 bytes into a1 from sym(scache_linemask) +0x0 (`lw` at 0x1e348).
  Loads 2 bytes into a3 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x1e278).
  Loads 8 bytes into s3 from sym(.lit8) +0x20 (`ld` at 0x1e28c).
  4 such loads of 8 bytes through t1 (?) to ? (base unknown), including `ld` at 0x1e2a8, 0x1e304, 0x1e310.
  Loads 8 bytes into a1 from sym(.srdata) +0x2f0 (`ld` at 0x1e30c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+36904, a2=a0 at entry (arg0), a3=? (`jal` at 0x1e338).
  At `bltz` at 0x1e25c (target 0x1e2dc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x1e26c (target 0x1e2dc), taken when a0 >= 0x81 (signed) and falls through when a0 < 0x81 (signed).
  At `beq` at 0x1e27c (target 0x1e2dc), taken when a3(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == a4(=-0x1) and falls through when a3(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != a4(=-0x1).
  At `beq` at 0x1e2c8 (target 0x1e304), taken when s2(?) == a2(?) and falls through when s2(?) != a2(?).
  At `bne` at 0x1e2d4 (target 0x1e2a0), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0x1e34c (target 0x1e29c), taken when s1(?) < 0xf (signed) and falls through when s1(?) >= 0xf (signed).
  Returns v0 = ? (`jr` at 0x1e2fc).

- `kl_ioerror_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e35c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e35c-0x1e4e0 (388 bytes).
  Loads 8 bytes into at from a7 (arg7 at entry) +0x120 (`ld` at 0x1e398).
  Loads 8 bytes into a1 from abs 0xffffffffffffc400 (`ld` at 0x1e40c).
  Loads 8 bytes into a1 from abs 0xffffffffffffc400 (`ld` at 0x1e4dc).
  Loads 8 bytes into a1 from [-0x3c00]:8 +0x0 (`ld` at 0x1e410).
  Loads 8 bytes into a1 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0x1e41c).
  Loads 4 bytes into a0 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8c80 (`lw` at 0x1e438).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1e460).
  Calls `hub_ioerror_handler` via direct with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=a3 at entry (arg3), a2=a6 at entry (arg6), a3=sp-128 (`jal` at 0x1e434).
  Calls `ioerror_dump` via direct with a0=sym(.rodata)+36904, a1=a3 at entry (arg3), a2=0x1, a3=sp-128 (`jal` at 0x1e46c).
  At `beq` at 0x1e390 (target 0x1e3ac), taken when a7 == 0 and falls through when a7 != 0.
  At `beq` at 0x1e3ac (target 0x1e490), taken when a1 == t8(=-0x1) and falls through when a1 != t8(=-0x1).
  At `beq` at 0x1e3bc (target 0x1e3d0), taken when a2 == t8(=-0x1) and falls through when a2 != t8(=-0x1).
  At `beq` at 0x1e3e4 (target 0x1e3f8), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x1e3f0 (target 0x1e4a8), taken when (a1(?) & 0x7) == 0 and falls through when (a1(?) & 0x7) != 0.
  At `beq` at 0x1e3f8 (target 0x1e40c), taken when a5 == 0 and falls through when a5 != 0.
  At `beq` at 0x1e440 (target 0x1e4a0), taken when s0(=a6) == 0 and falls through when s0(=a6) != 0.
  At `beq` at 0x1e448 (target 0x1e4a0), taken when s0(=a6) == a0(=0x2) and falls through when s0(=a6) != a0(=0x2).
  At `bne` at 0x1e450 (target 0x1e460), taken when v0(=ret(hub_ioerror_handler)) != 0 and falls through when v0(=ret(hub_ioerror_handler)) == 0.
  At `bne` at 0x1e490 (target 0x1e3c4), taken when a2 != t8(=-0x1) and falls through when a2 == t8(=-0x1).
  At `bne` at 0x1e4d0 (target 0x1e400), taken when a5 != 0 and falls through when a5 == 0.
  Returns v0 = ret(hub_ioerror_handler) (`jr` at 0x1e488).

- `kl_panic_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e4e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e4e0-0x1e528 (72 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1e4fc).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1e500).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1e510).
  Calls `enter_panic_mode` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1e4e8).
  Calls `check_ni_errors` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e4f0).
  Calls `hubni_error_handler` via direct with a0=sym(.rodata)+36904, a1=0x1, a2=?, a3=? (`jal` at 0x1e508).
  Calls `sn0_error_dump` via direct with a0=sym(.rodata)+36904, a1=?, a2=?, a3=? (`jal` at 0x1e514).
  At `beq` at 0x1e4f8 (target 0x1e514), taken when v0(=ret(check_ni_errors)) == 0 and falls through when v0(=ret(check_ni_errors)) != 0.
  Returns v0 = ret(sn0_error_dump) (`jr` at 0x1e520).

- `kl_panic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e528 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e528-0x1e558 (48 bytes).
  Calls `kl_panic_setup` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1e534).
  Calls `cmn_err` via direct with a0=0x12, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x1e540).
  Returns v0 = ret(cmn_err) (`jr` at 0x1e550).

- `vphys_get_pattr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e558 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e558-0x1e618 (192 bytes).
  Stores 4 bytes from v0 to a2 (arg2 at entry) +0x0  (`sw` at 0x1e5a8).
  Stores 4 bytes from t0 to a2 (arg2 at entry) +0x0  (`sw` at 0x1e5c8).
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x0  (`sw` at 0x1e5b0).
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x0  (`sw` at 0x1e5cc).
  Stores 4 bytes from a3 to a2 (arg2 at entry) +0x0 (`sw` at 0x1e600).
  Stores 4 bytes from v1 to a1 (arg1 at entry) +0x0 (`sw` at 0x1e60c).
  At `bne` at 0x1e580 (target 0x1e58c), taken when a0 < v1(=0x8000000000000000) (unsigned) and falls through when a0 >= v1(=0x8000000000000000) (unsigned).
  At `bne` at 0x1e588 (target 0x1e5f0), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x1e594 (target 0x1e5b4), taken when a0 < a3(=0xffffffff80000000) (unsigned) and falls through when a0 >= a3(=0xffffffff80000000) (unsigned).
  At `beq` at 0x1e5a0 (target 0x1e5bc), taken when a0 >= a5(=0xffffffffa0000000) (unsigned) and falls through when a0 < a5(=0xffffffffa0000000) (unsigned).
  At `bne` at 0x1e5b8 (target 0x1e5e8), taken when a0 < a5(=0xffffffffa0000000) (unsigned) and falls through when a0 >= a5(=0xffffffffa0000000) (unsigned).
  At `beq` at 0x1e5c0 (target 0x1e5e0), taken when t2(?) == 0 and falls through when t2(?) != 0.
  Returns v0 = ? (`jr` at 0x1e5d8).

- `pde_get_pattr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e618 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e618-0x1e694 (124 bytes).
  Loads 8 bytes into t0 from a3 (arg3 at entry) +0x0 (`ld` at 0x1e618).
  Loads 8 bytes into a7 from a3 (arg3 at entry) +0x0 (`ld` at 0x1e624).
  Loads 8 bytes into a5 from a3 (arg3 at entry) +0x0 (`ld` at 0x1e634).
  Stores 4 bytes from t0 to a1 (arg1 at entry) +0x0 (`sw` at 0x1e620).
  Stores 4 bytes from a7 to a2 (arg2 at entry) +0x0 (`sw` at 0x1e630).
  At `beq` at 0x1e650 (target 0x1e660), taken when (a6(?) & 0xf) == 0 and falls through when (a6(?) & 0xf) != 0.
  Returns v0 = ? (`jr` at 0x1e68c).

- `vtop_attr_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e694 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e694-0x1e7d0 (316 bytes).
  Stores 4 bytes from zero to a2 (arg2 at entry) +0x0  (`sw` at 0x1e6c0).
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x0  (`sw` at 0x1e6cc).
  Loads 8 bytes into v0 from abs 0xffffffffffffc018 (`ld` at 0x1e774).
  Loads 8 bytes into a3 from [-0x3fe8]:8 +0x308 (`ld` at 0x1e780).
  Calls `vphys_get_pattr [0x1e558]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xffffffff80000000, a7=0xffffffffc0000000 (`jal` at 0x1e724).
  Calls `tlbgetpid` via direct with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xffffffff80000000, a7=0xffffffffc0000000 (`jal` at 0x1e74c).
  Calls `tlb_vaddr_to_pde` via direct with a0=ret(tlbgetpid), a1=a0 at entry (arg0), a2=sp-48, a3=? (`jal` at 0x1e75c).
  Calls `vaddr_to_pde` via direct with a0=a0 at entry (arg0), a1=sp-48, a2=?, a3=[[-0x3fe8]:8+776]:8 (`jal` at 0x1e78c).
  Calls `pde_get_pattr [0x1e618]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-48 (`jal` at 0x1e7c0).
  At `bne` at 0x1e6dc (target 0x1e6ec), taken when a0 < at(=0x8000000000000000) (unsigned) and falls through when a0 >= at(=0x8000000000000000) (unsigned).
  At `bne` at 0x1e6e4 (target 0x1e720), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x1e6f8 (target 0x1e710), taken when s0(=a0) < a5(=0xffffffff80000000) (unsigned) and falls through when s0(=a0) >= a5(=0xffffffff80000000) (unsigned).
  At `beq` at 0x1e700 (target 0x1e718), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x1e710 (target 0x1e74c), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x1e718 (target 0x1e74c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bltz` at 0x1e76c (target 0x1e7b8), taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  At `beq` at 0x1e778 (target 0x1e7ac), taken when v0(=[-0x3fe8]:8) == 0 and falls through when v0(=[-0x3fe8]:8) != 0.
  At `beq` at 0x1e784 (target 0x1e7ac), taken when a3(=[[-0x3fe8]:8+776]:8) == 0 and falls through when a3(=[[-0x3fe8]:8+776]:8) != 0.
  At `bltz` at 0x1e79c (target 0x1e7b4), taken when a4(?) < 0 (signed) and falls through when a4(?) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x1e744).

- `error_clean_cache_line` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e7d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e7d0-0x1e84c (124 bytes).
  Loads 4 bytes into s0 from sym(scache_linemask) +0x0 (`lw` at 0x1e7d8).
  Loads 4 bytes into t8 from sym(scache_linemask) +0x0 (`lw` at 0x1e81c).
  Calls `ecc_cacheop_get` via direct with a0=0x13, a1=?, a2=sp-64, a3=? (`jal` at 0x1e814).
  At `beq` at 0x1e804 (target 0x1e834), taken when s0(?) >= s2(?) (unsigned) and falls through when s0(?) < s2(?) (unsigned).
  At `bne` at 0x1e82c (target 0x1e810), taken when s0(?) < s2(?) (unsigned) and falls through when s0(?) >= s2(?) (unsigned).
  Returns v0 = ? (`jr` at 0x1e844).

- `initiator_to_cpunum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e84c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e84c-0x1e8b0 (100 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0x310 (`ld` at 0x1e87c).
  Loads 2 bytes into a0 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0x1e89c).
  Calls `cnode_slice_to_cpuid` via direct with a0=entry(sym(nasid_to_compact_node)), a1=?, a2=?, a3=? (`jal` at 0x1e898).
  At `beq` at 0x1e85c (target 0x1e870), taken when (a0 & 0x2) == 0 and falls through when (a0 & 0x2) != 0.
  Returns v0 = ? (`jr` at 0x1e868).

- `poison_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e8b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e8b0-0x1ea3c (396 bytes).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x1e8f4).
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x1e990).
  Loads 2 bytes into t8 from abs 0xffffffffffffc428 (`lh` at 0x1e9a4).
  Loads 4 bytes into a6 from sym(maxcpus) +0x0 (`lw` at 0x1e9a8).
  Stores 8 bytes from t9 to ? (base unknown) (`sd` at 0x1e9b0).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1e9c0).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1e9c8).
  Loads 8 bytes into a0 from sym(.srdata) +0x2f0 (`ld` at 0x1ea20).
  Loads 8 bytes into a1 from sym(.srdata) +0x318 (`ld` at 0x1e9e0).
  Calls `get_dir_ent` via direct with a0=?, a1=sp-80, a2=sp-72, a3=sp-64 (`jal` at 0x1e914).
  Calls `set_dir_state_POISONED` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e91c).
  Calls `initiator_to_cpunum` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e968).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1e9cc).
  Calls `cpuaction` via direct with a0=?, a1=sym(error_clean_cache_line), a2=0x1, a3=? (`jal` at 0x1e9e4).
  Calls `error_clean_cache_line` via direct with a0=?, a1=?, a2=?, a3=?, a6=[sym(maxcpus)] (`jal` at 0x1e9f4).
  Calls `assfail` via direct with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0x7dd, a3=?, a6=[sym(maxcpus)] (`jal` at 0x1ea10).
  Calls `assfail` via direct with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0x7de, a3=? (`jal` at 0x1ea2c).
  At `bne` at 0x1e8f0 (target 0x1e8e0), taken when v0(?) < 0x8 (signed) and falls through when v0(?) >= 0x8 (signed).
  At `beq` at 0x1e928 (target 0x1e968), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x1e930 (target 0x1e968), taken when v0(?) == s3(=0x5) and falls through when v0(?) != s3(=0x5).
  At `bne` at 0x1e940 (target 0x1e908), taken when s1(?) < 0x4000 (unsigned) and falls through when s1(?) >= 0x4000 (unsigned).
  At `beq` at 0x1e97c (target 0x1e938), taken when v0(=ret(initiator_to_cpunum)) == at(=-0x1) and falls through when v0(=ret(initiator_to_cpunum)) != at(=-0x1).
  At `bne` at 0x1e99c (target 0x1e938), taken when (a0(?) & a3(?)) != 0 and falls through when (a0(?) & a3(?)) == 0.
  At `beq` at 0x1e9b4 (target 0x1e9f4), taken when t8(=[-0x3bd8]:2) == s4(?) and falls through when t8(=[-0x3bd8]:2) != s4(?).
  At `bltz` at 0x1e9bc (target 0x1ea08), taken when s4(?) < 0 (signed) and falls through when s4(?) >= 0 (signed).
  At `bne` at 0x1e9c4 (target 0x1ea08), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x1e9d4 (target 0x1ea20), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  Returns v0 = ? (`jr` at 0x1e960).
  The instructions from 0x1ea04 to 0x1ea04 are not reached by any path from the entry, and their branches are not listed.

- `error_page_discard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ea3c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ea3c-0x1ea80 (68 bytes).
  Calls `page_discard` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ea48).
  At `beq` at 0x1ea54 (target 0x1ea6c), taken when v0(=ret(page_discard)) == 0 and falls through when v0(=ret(page_discard)) != 0.
  At `beq` at 0x1ea60 (target 0x1ea78), taken when v0(=ret(page_discard)) == v1(=0x1) and falls through when v0(=ret(page_discard)) != v1(=0x1).
  Returns v0 = one of 0x1, 0x2, 0x3 (`jr` at 0x1ea70).

- `sn0_error_mark_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ea80 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ea80-0x1ea9c (28 bytes).
  Calls `poison_page` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ea88).
  Returns v0 = ret(poison_page) (`jr` at 0x1ea94).

- `sn0_error_reclaim_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ea9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ea9c-0x1eaf4 (88 bytes).
  Calls `set_dir_state_UNOWNED` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1ead4).
  At `beq` at 0x1eaa8 (target 0x1eac8), taken when a1 == 0 and falls through when a1 != 0.
  At `bne` at 0x1eae4 (target 0x1ead4), taken when s0(?) < 0x4000 (unsigned) and falls through when s0(?) >= 0x4000 (unsigned).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x1eac0).

- `error_reg_partition_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eaf4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eaf4-0x1eafc (8 bytes).
  Stores 8 bytes from a0 to sym(p_routertick) +0x30  (`sd` at 0x1eaf8).
  Returns v0 = ? (`jr` at 0x1eaf4).

- `error_check_part_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eafc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eafc-0x1eb7c (128 bytes).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x1eb50).
  Calls `page_validate_pfdat` via direct with a0=?, a1=(table(0x2000000) | 0xa800000000000000), a2=0xa800000000000000, a3=0x2000000 (`jal` at 0x1eb3c).
  At `beq` at 0x1eb44 (target 0x1eb74), taken when v0(=ret(page_validate_pfdat)) == 0 and falls through when v0(=ret(page_validate_pfdat)) != 0.
  At `bgez` at 0x1eb58 (target 0x1eb6c), taken when a3(?) >= 0 (signed) and falls through when a3(?) < 0 (signed).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x1eb64).

- `partition_handle_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eb7c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eb7c-0x1ebc4 (72 bytes).
  Loads 8 bytes into v0 from sym(p_routertick) +0x30 (`ld` at 0x1eb7c).
  Loads 8 bytes into a2 from sym(.srdata) +0x2f0 (`ld` at 0x1eba8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1eb8c).
  Calls `cmn_err_tag` via direct with a0=0xb8d, a1=0x4, a2=sym(.rodata)+36904, a3=a3 at entry (arg3) (`jal` at 0x1ebb4).
  At `beq` at 0x1eb84 (target 0x1eba8), taken when v0(=[sym(.sbss)+48]:8) == 0 and falls through when v0(=[sym(.sbss)+48]:8) != 0.
  Returns v0 = ? (`jr` at 0x1eba0).

- `errste_prfunc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ebc4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ebc4-0x1ec30 (108 bytes).
  Loads 8 bytes into a0 from sym(sneb_buf) +0x0 (`ld` at 0x1ebd0).
  Loads 8 bytes into a0 from sym(sneb_buf) +0x0 (`ld` at 0x1ec18).
  Loads 4 bytes into at from sym(sneb_size) +0x0 (`lw` at 0x1ebf0).
  Calls `strlen` via direct with a0=[sym(sneb_buf)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ebd8).
  Calls `strlen` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1ebe4).
  Calls `sprintf` via direct with a0=((ret(strlen) << 0x0) + [sym(sneb_buf)]:8), a1=a0 at entry (arg0), a2=?, a3=?, a4=(ret(strlen) << 0x0) (`jal` at 0x1ec20).
  At `beq` at 0x1ec00 (target 0x1ec18), taken when at(=[sym(sneb_size)]) >= v0(=((ret(strlen) << 0x0) + (ret(strlen) << 0x0))) (signed) and falls through when at(=[sym(sneb_size)]) < v0(=((ret(strlen) << 0x0) + (ret(strlen) << 0x0))) (signed).
  Returns v0 = ? (`jr` at 0x1ec10).

- `errorste_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ec30 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ec30-0x1ec58 (40 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x2f0 (`ld` at 0x1ec30).
  Loads 8 bytes into a2 from sym(.srdata) +0x320 (`ld` at 0x1ec34).
  Calls `kl_error_show_reset_ste` via direct with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=sym(errste_prfunc), a3=a3 at entry (arg3) (`jal` at 0x1ec44).
  Returns v0 = ret(kl_error_show_reset_ste) (`jr` at 0x1ec50).

- `ms1bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ec58 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ec58-0x1eccc (116 bytes).
  At `beq` at 0x1ec5c (target 0x1ec6c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x1ec70 (target 0x1ec80), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x1ec84 (target 0x1ec94), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x1ec98 (target 0x1eca8), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x1ecac (target 0x1ecc0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  Returns v0 = ? (`jr` at 0x1ecc4).

- `subnodevertex_to_subnode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f9e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f9e8-0x1fa60 (120 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x328 (`ld` at 0x1f9f4).
  Stores 4 bytes from a0 to a2 (arg2 at entry) +0x0 (`sw` at 0x1fa48).
  Stores 2 bytes from v0 to a1 (arg1 at entry) +0x0  (`sh` at 0x1fa4c).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0x1fa04).
  Calls `master_node_get` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1fa20).
  At `beq` at 0x1fa0c (target 0x1fa20), taken when v0(=ret(hwgraph_info_get_LBL)) == 0 and falls through when v0(=ret(hwgraph_info_get_LBL)) != 0.
  At `beq` at 0x1fa3c (target 0x1fa58), taken when a2(?) == a4(=-0x1) and falls through when a2(?) != a4(=-0x1).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x1fa18).

- `mark_subnodevertex_as_subnode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fa60 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fa60-0x1fae4 (132 bytes).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x328, including `ld` at 0x1fa68, 0x1fa84, 0x1fa88.
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0x1fa78).
  Calls `hwgraph_info_export_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=0x8, a3=? (`jal` at 0x1fa94).
  Calls `assfail` via direct with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=0x339, a3=? (`jal` at 0x1fab8).
  Calls `assfail` via direct with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=0x33c, a3=? (`jal` at 0x1fad4).
  At `bne` at 0x1fa80 (target 0x1fab0), taken when v0(=ret(hwgraph_info_add_LBL)) != 0 and falls through when v0(=ret(hwgraph_info_add_LBL)) == 0.
  At `bne` at 0x1fa9c (target 0x1fac8), taken when v0(=ret(hwgraph_info_export_LBL)) != 0 and falls through when v0(=ret(hwgraph_info_export_LBL)) == 0.
  Returns v0 = ? (`jr` at 0x1faa8).

- `intpend0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x200f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x200f0-0x20250 (352 bytes).
  Loads 8 bytes into s3 from sym(.lit8) +0x258 (`ld` at 0x200f8).
  Loads 8 bytes into s2 from sym(.lit8) +0x250 (`ld` at 0x20108).
  Loads 8 bytes into at from abs 0xffffffffffffc5a0 (`ld` at 0x2010c).
  Loads 8 bytes into a2 from abs 0xffffffffffffc5a0 (`ld` at 0x201f0).
  Loads 8 bytes into v0 from abs 0x9200000001000098 (`ld` at 0x20110).
  Loads 8 bytes into a1 from abs 0x9200000001000098 (`ld` at 0x20198).
  Loads 8 bytes into a3 from abs 0x9200000001000098 (`ld` at 0x201ec).
  Loads 8 bytes into a1 from abs 0xffffffffffffc510 (`ld` at 0x2013c).
  Loads 8 bytes into a1 from abs 0xffffffffffffc510 (`ld` at 0x20158).
  Loads 8 bytes into a5 from abs 0xffffffffffffc510 (`ld` at 0x20218).
  Loads 4 bytes into a0 from [-0x3af0]:8 +0xd0 (`lw` at 0x2015c).
  Stores 4 bytes from a0 to [-0x3af0]:8 +0xd0  (`sw` at 0x20164).
  Stores 8 bytes from v0 to abs 0x9200000001000090  (`sd` at 0x20170).
  Loads 8 bytes into a4 from abs 0xffffffffffffc5b0 (`ld` at 0x20178).
  Loads 8 bytes into a4 from abs 0xffffffffffffc5b0 (`ld` at 0x201b4).
  Loads 8 bytes into a0 from abs 0xffffffffffffc5b0 (`ld` at 0x201c8).
  Loads 4 bytes into a2 from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x18 (`lw` at 0x20188).
  Loads 8 bytes into v0 from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x8 (`ld` at 0x2019c).
  Loads 8 bytes into a0 from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x10 (`ld` at 0x201a8).
  Loads 8 bytes into a0 from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x10 (`ld` at 0x20244).
  Loads 4 bytes into a1 from sym(hub_intr_wakeup_cnt) +0x0 (`lw` at 0x201c4).
  Loads 4 bytes into a4 from [-0x3af0]:8 +0xd0 (`lw` at 0x20220).
  Stores 4 bytes from a4 to [-0x3af0]:8 +0xd0  (`sw` at 0x20234).
  Loads 8 bytes into a5 from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x0 (`ld` at 0x20238).
  Calls `cvsema` via direct with a0=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+32, a1=?, a2=?, a3=? (`jal` at 0x20140).
  Calls `ms1bit` via direct with a0=?, a1=[-0x3af0]:8, a2=?, a3=? (`jal` at 0x20168).
  Calls `(unknown callee)` via register with a0=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+16]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) (`jalr` at 0x201ac).
  Calls `valusema` via direct with a0=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+32, a1=?, a2=?, a3=?, a4=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) (`jal` at 0x201bc).
  Calls `vsema` via direct with a0=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+32, a1=?, a2=?, a3=? (`jal` at 0x201dc).
  Calls `(unknown callee)` via register with a0=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+16]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)), a5=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8 (`jalr` at 0x20240).
  At `beq` at 0x20130 (target 0x20200), taken when (at(=[-0x3a60]:8) & v0(=[0x9200000001000098]:8)) == 0 and falls through when (at(=[-0x3a60]:8) & v0(=[0x9200000001000098]:8)) != 0.
  At `beq` at 0x20150 (target 0x201ec), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x20194 (target 0x20238), taken when (a2(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+24]) & 0x1000) == 0 and falls through when (a2(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+24]) & 0x1000) != 0.
  At `beq` at 0x201a0 (target 0x201bc), taken when v0(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+8]:8) == 0 and falls through when v0(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+8]:8) != 0.
  At `beq` at 0x201d4 (target 0x20140), taken when v0(=ret(valusema)) >= a1(=[sym(hub_intr_wakeup_cnt)]) (signed) and falls through when v0(=ret(valusema)) < a1(=[sym(hub_intr_wakeup_cnt)]) (signed).
  At `bne` at 0x201f8 (target 0x20158), taken when (a2(=[-0x3a60]:8) & a3(=[0x9200000001000098]:8)) != 0 and falls through when (a2(=[-0x3a60]:8) & a3(=[0x9200000001000098]:8)) == 0.
  Returns v0 = ? (`jr` at 0x20230).

- `intpend1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20250 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20250-0x2033c (236 bytes).
  Loads 8 bytes into s0 from sym(.lit8) +0x250 (`ld` at 0x20258).
  Loads 8 bytes into t8 from sym(.lit8) +0x260 (`ld` at 0x20264).
  Loads 8 bytes into s2 from abs 0xffffffffffffc5a8 (`ld` at 0x20268).
  Loads 8 bytes into t8 from abs 0x92000000010000a0 (`ld` at 0x2026c).
  Loads 8 bytes into s1 from sym(.lit8) +0x258 (`ld` at 0x20270).
  Loads 8 bytes into ra from abs 0xffffffffffffc510 (`ld` at 0x2028c).
  Loads 8 bytes into t2 from abs 0xffffffffffffc510 (`ld` at 0x20300).
  Loads 4 bytes into t9 from [-0x3af0]:8 +0xd0 (`lw` at 0x20290).
  Stores 4 bytes from t9 to [-0x3af0]:8 +0xd0  (`sw` at 0x20298).
  Stores 8 bytes from a7 to abs 0x9200000001000090  (`sd` at 0x202a8).
  Loads 8 bytes into a5 from abs 0xffffffffffffc5b8 (`ld` at 0x202b0).
  Loads 8 bytes into a6 from ([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x0 (`ld` at 0x202c0).
  Loads 8 bytes into ra from abs 0x9200000001000098 (`ld` at 0x202cc).
  Loads 8 bytes into a0 from ([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x10 (`ld` at 0x202d0).
  Loads 4 bytes into t1 from [-0x3af0]:8 +0xd0 (`lw` at 0x20308).
  Stores 4 bytes from t1 to [-0x3af0]:8 +0xd0  (`sw` at 0x2031c).
  Loads 8 bytes into a1 from sym(.srdata) +0x328 (`ld` at 0x20320).
  Calls `ms1bit` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2029c).
  Calls `(unknown callee)` via register with a0=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+16]:8, a1=a0 at entry (arg0), a2=?, a3=?, a5=([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)), a6=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8, a7=ret(ms1bit)+64 (`jalr` at 0x202d4).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=ret(ms1bit), a3=?, a5=([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)), a6=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8, a7=ret(ms1bit)+64 (`jal` at 0x2032c).
  At `beq` at 0x20284 (target 0x202f0), taken when (s2(=[-0x3a58]:8) & t8(=[0x92000000010000a0]:8)) == 0 and falls through when (s2(=[-0x3a58]:8) & t8(=[0x92000000010000a0]:8)) != 0.
  At `beq` at 0x202c8 (target 0x20320), taken when a6(=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8) == 0 and falls through when a6(=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8) != 0.
  At `bne` at 0x202e8 (target 0x2028c), taken when s2(?) != 0 and falls through when s2(?) == 0.
  Returns v0 = ? (`jr` at 0x20318).

- `setrtvector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x205b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x205b8-0x205dc (36 bytes).
  Calls `cause_intr_connect` via direct with a0=0x7, a1=a0 at entry (arg0), a2=0x6801, a3=a3 at entry (arg3) (`jal` at 0x205c8).
  Returns v0 = ret(cause_intr_connect) (`jr` at 0x205d4).

- `setkgvector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x205dc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x205dc-0x20600 (36 bytes).
  Calls `cause_intr_connect` via direct with a0=0x5, a1=a0 at entry (arg0), a2=0x4801, a3=a3 at entry (arg3) (`jal` at 0x205ec).
  Returns v0 = ret(cause_intr_connect) (`jr` at 0x205f8).

- `protected_broadcast` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20a84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20a84-0x20bb4 (304 bytes).
  Loads 8 bytes into s6 from sym(.lit8) +0x60 (`ld` at 0x20aa4).
  Loads 8 bytes into t9 from abs 0xffffffffffffc400 (`ld` at 0x20ab4).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x20afc).
  Calls `_wbadaddr_val` via direct with a0=table(0x9200000001800000), a1=0x8, a2=sp-16, a3=? (`jal` at 0x20b34).
  At `beq` at 0x20b18 (target 0x20b4c), taken when (t8(?) & t9(?)) == 0 and falls through when (t8(?) & t9(?)) != 0.
  At `bne` at 0x20b44 (target 0x20b20), taken when s0(?) < 0x2 (signed) and falls through when s0(?) >= 0x2 (signed).
  At `bne` at 0x20b54 (target 0x20afc), taken when s3(?) < 0x8 (signed) and falls through when s3(?) >= 0x8 (signed).
  At `bne` at 0x20b78 (target 0x20ae4), taken when a3(?) < 0x10 (signed) and falls through when a3(?) >= 0x10 (signed).
  Returns v0 = ? (`jr` at 0x20bac).

- `chkdebug` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20bb4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20bb4-0x20c08 (84 bytes).
  Loads 2 bytes into a0 from abs 0xffffffffffffc428 (`lh` at 0x20bb4).
  Loads 8 bytes into v1 from sym(.srdata) +0x348 (`ld` at 0x20bb8).
  Loads 8 bytes into v1 from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8 (`ld` at 0x20bc4).
  Loads 1 byte into v1 from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528 (`lbu` at 0x20bc8).
  Loads 8 bytes into at from sym(.lit8) +0x260 (`ld` at 0x20bcc).
  Loads 8 bytes into at from abs 0x92000000010000a0 (`ld` at 0x20bd8).
  Calls `dbgintr [0x20884]` via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x20bf4).
  At `beq` at 0x20bec (target 0x20bfc), taken when (at(=[0x92000000010000a0]:8) & v0(?)) == 0 and falls through when (at(=[0x92000000010000a0]:8) & v0(?)) != 0.
  Returns v0 = ? (`jr` at 0x20c00).

- `dump_vector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21094 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21094-0x21254 (448 bytes).
  Loads 8 bytes into a3 from a1 (arg1 at entry) +0x0 (`ld` at 0x210ac).
  17 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x328, including `ld` at 0x210d8, 0x210f8, 0x210fc.
  Loads 8 bytes into a4 from a1 (arg1 at entry) +0x10 (`ld` at 0x210e4).
  Loads 8 bytes into a5 from a1 (arg1 at entry) +0x8 (`ld` at 0x210e8).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0x2c (`lw` at 0x210f4).
  Loads 4 bytes into t0 from a0 (arg0 at entry) +0x2c (`lw` at 0x21184).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0x2c (`lw` at 0x2122c).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0x10 (`lw` at 0x2112c).
  Loads 4 bytes into a2 from a1 (arg1 at entry) +0x18 (`lw` at 0x211a0).
  Loads 4 bytes into a1 from a1 (arg1 at entry) +0x18 (`lw` at 0x211c0).
  Loads 2 bytes into a2 from a1 (arg1 at entry) +0x38 (`lh` at 0x211d0).
  Loads 2 bytes into a1 from a1 (arg1 at entry) +0x40 (`lh` at 0x211d4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=a2 at entry (arg2), a2=a0+20, a3=[a1]:8, a4=[a1+16]:8, a5=[a1+8]:8 (`jalr` at 0x210ec).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=[a0+16], a2=sym(.rodata)+43384, a3=sym(.rodata)+43384, a4=sym(.rodata)+43384, a5=sym(.rodata)+43384 (`jalr` at 0x21128).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=sym(.rodata)+43384, a3=sym(.rodata)+43384, a4=sym(.rodata)+43384, a5=sym(.rodata)+43384, a6=sym(.rodata)+43384, a7=sym(.rodata)+43384 (`jalr` at 0x21198).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=?, a3=? (`jalr` at 0x211b8).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=[a1+64]:2, a2=[a1+56]:2, a3=? (`jalr` at 0x211d8).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=?, a2=?, a3=? (`jalr` at 0x211fc).
  At `beq` at 0x21108 (target 0x21114), taken when (a1(=[a0+44]) & 0x1) == 0 and falls through when (a1(=[a0+44]) & 0x1) != 0.
  At `beq` at 0x2111c (target 0x21214), taken when (a1(=[a0+44]) & 0x2) == 0 and falls through when (a1(=[a0+44]) & 0x2) != 0.
  At `beq` at 0x21148 (target 0x21154), taken when (a3(?) & s8(=a3)) == 0 and falls through when (a3(?) & s8(=a3)) != 0.
  At `beq` at 0x21160 (target 0x2116c), taken when (a3(?) & s5(=a4)) == 0 and falls through when (a3(?) & s5(=a4)) != 0.
  At `beq` at 0x21178 (target 0x2121c), taken when (a3(?) & a4(=a5)) == 0 and falls through when (a3(?) & a4(=a5)) != 0.
  At `beq` at 0x2118c (target 0x21224), taken when (t0(=[a0+44]) & 0x4) == 0 and falls through when (t0(=[a0+44]) & 0x4) != 0.
  At `beq` at 0x211ac (target 0x2122c), taken when (a2(=[a1+24]) & 0x1000) == 0 and falls through when (a2(=[a1+24]) & 0x1000) != 0.
  At `beq` at 0x211c8 (target 0x211e0), taken when (a1(=[a1+24]) & 0x1000) == 0 and falls through when (a1(=[a1+24]) & 0x1000) != 0.
  At `beq` at 0x21238 (target 0x2124c), taken when (a1(=[a0+44]) & 0x8) == 0 and falls through when (a1(=[a0+44]) & 0x8) != 0.
  Returns v0 = ret(?) (`jr` at 0x2120c).

- `enable_ithreads` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x215a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x215a0-0x216ec (332 bytes).
  Loads 4 bytes into at from sym(maxnodes) +0x0 (`lw` at 0x215bc).
  Loads 4 bytes into a3 from sym(maxnodes) +0x0 (`lw` at 0x21644).
  Loads 4 bytes into a3 from sym(default_intr_pri) +0x0 (`lw` at 0x215e4).
  Loads 4 bytes into v1 from ? (base unknown) (`lw` at 0x21604).
  Loads 8 bytes into a1 from abs 0xffffffffffffc400 (`ld` at 0x21660).
  Loads 8 bytes into a1 from [-0x3c00]:8 +0x0 (`ld` at 0x2166c).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x21680).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x21698).
  Stores 4 bytes from s7 to ? (base unknown)  (`sw` at 0x216a8).
  Calls `intr_thread_setup [0x2179c]` via direct with a0=?, a1=?, a2=?, a3=[sym(default_intr_pri)] (`jal` at 0x215e0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x21628).
  Calls `mutex_spinlock_spl` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2169c).
  At `blez` at 0x215c8 (target 0x216b4), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x215f0 (target 0x21624), taken when s0(?) >= 0x40 (signed) and falls through when s0(?) < 0x40 (signed).
  At `bne` at 0x2160c (target 0x215dc), taken when (v1(?) & 0x200) != 0 and falls through when (v1(?) & 0x200) == 0.
  At `bne` at 0x2161c (target 0x215f8), taken when s0(?) < 0x40 (signed) and falls through when s0(?) >= 0x40 (signed).
  At `bne` at 0x21638 (target 0x21660), taken when s3(?) < 0x2 (signed) and falls through when s3(?) >= 0x2 (signed).
  At `beq` at 0x21654 (target 0x216b4), taken when s2(?) >= a3(=[sym(maxnodes)]) (signed) and falls through when s2(?) < a3(=[sym(maxnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x216d8).

- `ip26_enable_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dc4 (8 bytes).
  Returns v0 = ? (`jr` at 0x21dbc).

- `ip26_return_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dd0 (20 bytes).
  Returns v0 = ? (`jr` at 0x21dbc).
  The instructions from 0x21dc4 to 0x21dcc are not reached by any path from the entry, and their branches are not listed.

- `ip28_enable_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dd0 (20 bytes).
  Returns v0 = ? (`jr` at 0x21dbc).
  The instructions from 0x21dc4 to 0x21dcc are not reached by any path from the entry, and their branches are not listed.

- `ip28_return_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dd0 (20 bytes).
  Returns v0 = ? (`jr` at 0x21dbc).
  The instructions from 0x21dc4 to 0x21dcc are not reached by any path from the entry, and their branches are not listed.

- `spl0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dd0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dd0-0x21dec (28 bytes).
  Returns v0 = ? (`jr` at 0x21de4).

- `spl1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `spl3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `spl5` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `spl6` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splgio0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splgio1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splgio2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splhi` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splhi_relnet` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splimp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splnet` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splretr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `spltty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `splvme` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `spl65` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e84-0x21e9c (24 bytes).
  Returns v0 = ? (`jr` at 0x21e94).

- `splprof` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e84-0x21e9c (24 bytes).
  Returns v0 = ? (`jr` at 0x21e94).

- `spl7` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e9c-0x21eb4 (24 bytes).
  Returns v0 = ? (`jr` at 0x21eac).

- `splerr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e9c-0x21eb4 (24 bytes).
  Returns v0 = ? (`jr` at 0x21eac).

- `splx` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ed4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21ed4-0x21ef0 (28 bytes).
  Returns v0 = ? (`jr` at 0x21ee8).

- `splxecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ed4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21ed4-0x21ef0 (28 bytes).
  Returns v0 = ? (`jr` at 0x21ee8).

- `hubio_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21f18 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21f18-0x21f34 (28 bytes).
  Calls `early_brl1_port_init` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x21f20).
  Returns v0 = ret(early_brl1_port_init) (`jr` at 0x21f2c).

- `hub_pio_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21f34 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21f34-0x22094 (352 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x21f34).
  Loads 8 bytes into a2 from sym(.srdata) +0x390 (`ld` at 0x2203c).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x2205c).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x21f6c).
  Loads 8 bytes into s1 from sym(.lit8) +0x70 (`ld` at 0x21f78).
  Loads 8 bytes into t3 from sym(.lit8) +0x20 (`ld` at 0x21f84).
  Stores 4 bytes from t2 to ? (base unknown)  (`sw` at 0x21f94).
  Stores 4 bytes from s0 to ? (base unknown)  (`sw` at 0x21f9c).
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0x21fa8).
  Stores 8 bytes from a7 to ? (base unknown)  (`sd` at 0x21fc8).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x21fd0).
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0x21fdc).
  Stores 8 bytes from t8 to ? (base unknown)  (`sd` at 0x22004).
  Stores 4 bytes from s0 to ? (base unknown)  (`sw` at 0x2200c).
  Stores 4 bytes from t9 to ? (base unknown)  (`sw` at 0x22020).
  Stores 2 bytes from zero to ? (base unknown)  (`sh` at 0x22018).
  Stores 8 bytes from ra to table(0x9200000001c00160) +0x0  (`sd` at 0x2202c).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+45112, a2=sp-32, a3=a3 at entry (arg3) (`jal` at 0x21f4c).
  Calls `hub_set_piomode` via direct with a0=?, a1=0x1, a2=?, a3=?, a5=table(0x9200000001c00000) (`jal` at 0x22034).
  Calls `init_sv` via direct with a0=?, a1=0x0, a2=sym(.rodata)+45112, a3=-0x1 (`jal` at 0x22054).
  Calls `spinlock_init` via direct with a0=?, a1=sym(.rodata)+45112, a2=?, a3=? (`jal` at 0x22068).
  At `beq` at 0x21fb4 (target 0x21fe8), taken when a2(?) >= 0x10 (signed) and falls through when a2(?) < 0x10 (signed).
  At `bne` at 0x21fd8 (target 0x21f90), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x22028 (target 0x21ff0), taken when a3(?) < 0x6 (signed) and falls through when a3(?) >= 0x6 (signed).
  Returns v0 = ret(spinlock_init) (`jr` at 0x22074).

- `hub_piomap_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22094 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22094-0x223ac (792 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x22120).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x22174).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x2217c).
  Loads 4 bytes into t0 from ? (base unknown) (`lw` at 0x221f4).
  Loads 8 bytes into a5 from ? (base unknown) (`ld` at 0x22210).
  Loads 1 byte into a6 from ? (base unknown) (`lbu` at 0x2221c).
  Loads 2 bytes into a1 from ? (base unknown) (`lh` at 0x22228).
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x22230).
  Loads 4 bytes into a0 from ? (base unknown) (`lw` at 0x22270).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x22284).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x222b8).
  Loads 8 bytes into v1 from sym(.lit8) +0x20 (`ld` at 0x222c4).
  Loads 8 bytes into a1 from sym(.lit8) +0x270 (`ld` at 0x222d4).
  Stores 8 bytes from ra to ? (base unknown) (`sd` at 0x222e4).
  Loads 8 bytes into t9 from ? (base unknown) (`ld` at 0x222ec).
  Stores 8 bytes from s1 to ? (base unknown) (`sd` at 0x22310).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0x22344).
  Stores 1 byte from s5 to ? (base unknown)  (`sb` at 0x2231c).
  Stores 4 bytes from t9 to ? (base unknown)  (`sw` at 0x22320).
  Loads 4 bytes into a1 from ? (base unknown) (`lw` at 0x22338).
  Stores 1 byte from t2 to ? (base unknown) (`sb` at 0x2233c).
  Loads 2 bytes into v1 from ? (base unknown) (`lh` at 0x22340).
  Stores 2 bytes from v1 to ? (base unknown) (`sh` at 0x22350).
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x2235c).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x22398).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x220c4).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x220d4).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x220e0).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-112, a3=? (`jal` at 0x22124).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x221bc).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2223c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x222a0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x22368).
  Calls `sv_wait` via direct with a0=?, a1=0x19, a2=?, a3=ret(mutex_spinlock) (`jal` at 0x22380).
  At `beq` at 0x220ec (target 0x22120), taken when s0(=a3) >= s1(=a4) (unsigned) and falls through when s0(=a3) < s1(=a4) (unsigned).
  At `bne` at 0x22144 (target 0x22188), taken when a2(=0x1000000) < a3(=(a2 + a3)) (unsigned) and falls through when a2(=0x1000000) >= a3(=(a2 + a3)) (unsigned).
  At `beq` at 0x22168 (target 0x22180), taken when (s3(=a5) & 0x8) == 0 and falls through when (s3(=a5) & 0x8) != 0.
  At `beq` at 0x221a0 (target 0x221b0), taken when v0(=0x20000000) >= t8(?) (unsigned) and falls through when v0(=0x20000000) < t8(?) (unsigned).
  At `beq` at 0x221e4 (target 0x2224c), taken when a0(?) >= 0x6 (signed) and falls through when a0(?) < 0x6 (signed).
  At `beq` at 0x22200 (target 0x221d4), taken when (t0(?) & 0x1) == 0 and falls through when (t0(?) & 0x1) != 0.
  At `beq` at 0x22208 (target 0x221d8), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x22214 (target 0x221d8), taken when a5(?) != s1(?) and falls through when a5(?) == s1(?).
  At `bne` at 0x22220 (target 0x221dc), taken when a6(?) != s2(?) and falls through when a6(?) == s2(?).
  At `bgez` at 0x2224c (target 0x22268), taken when t2(?) >= 0 (signed) and falls through when t2(?) < 0 (signed).
  At `beq` at 0x22258 (target 0x22360), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x22268 (target 0x222b4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x22278 (target 0x22288), taken when a0(?) >= 0x5 (signed) and falls through when a0(?) < 0x5 (signed).
  At `beq` at 0x22294 (target 0x222b0), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x22324 (target 0x22338), taken when (s3(=a5) & 0x8) == 0 and falls through when (s3(=a5) & 0x8) != 0.
  At `beq` at 0x2234c (target 0x22390), taken when a2(?) == 0 and falls through when a2(?) != 0.
  Returns v0 = ? (`jr` at 0x22118).

- `hub_piomap_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x223ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x223ac-0x22498 (236 bytes).
  Loads 4 bytes into at from a0 (arg0 at entry) +0x28 (`lw` at 0x223ac).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x223c8).
  Loads 4 bytes into a0 from a0 (arg0 at entry) +0x20 (`lw` at 0x223d4).
  Loads 2 bytes into v0 from ? (base unknown) (`lh` at 0x223e0).
  Loads 2 bytes into v1 from a0 (arg0 at entry) +0x24 (`lh` at 0x223ec).
  Stores 2 bytes from v1 to a0 (arg0 at entry) +0x24 (`sh` at 0x22400).
  Loads 1 byte into a2 from a0 (arg0 at entry) +0x26 (`lbu` at 0x22428).
  Loads 8 bytes into a3 from sym(.lit8) +0x20 (`ld` at 0x22430).
  Stores 8 bytes from a1 to table(0x9200000001c00160) +0x0  (`sd` at 0x22444).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0x28 (`lw` at 0x22448).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x28 (`sw` at 0x22460).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x28 (`sw` at 0x22494).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x22468).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x22470).
  Calls `hwgraph_info_get_LBL` via direct with a0=[a0+32], a1=sym(.rodata)+45112, a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0x223d0).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x223e4).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2240c).
  Calls `sv_signal` via direct with a0=?, a1=?, a2=table(0x9200000001c00000), a3=? (`jal` at 0x22478).
  At `beq` at 0x223c0 (target 0x22414), taken when (at(=[a0+40]) & 0x2) == 0 and falls through when (at(=[a0+40]) & 0x2) != 0.
  At `beq` at 0x223fc (target 0x22424), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x22458 (target 0x22488), taken when (a4(=[a0+40]) & 0x4) == 0 and falls through when (a4(=[a0+40]) & 0x4) != 0.
  Returns v0 = ? (`jr` at 0x2241c).

- `hub_piomap_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22498 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22498-0x224f8 (96 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x8 (`ld` at 0x22498).
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x10 (`ld` at 0x224a8).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0x28 (`lw` at 0x224bc).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x18 (`ld` at 0x224d0).
  At `bne` at 0x224a0 (target 0x224e8), taken when a1 < v0(=[a0+8]:8) (unsigned) and falls through when a1 >= v0(=[a0+8]:8) (unsigned).
  At `bne` at 0x224b4 (target 0x224f0), taken when v1(=([a0+8]:8 + [a0+16]:8)) < a3(=(a1 + a2)) (unsigned) and falls through when v1(=([a0+8]:8 + [a0+16]:8)) >= a3(=(a1 + a2)) (unsigned).
  At `beq` at 0x224c4 (target 0x224e0), taken when (a4(=[a0+40]) & 0x1) == 0 and falls through when (a4(=[a0+40]) & 0x1) != 0.
  Returns v0 = ? (`jr` at 0x224e0).
  Returns v0 = 0x0 (`jr` at 0x224e8).
  Returns v0 = 0x0 (`jr` at 0x224f0).

- `hub_piomap_done` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x224f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x224f8-0x22500 (8 bytes).
  Returns v0 = ? (`jr` at 0x224f8).

- `hub_piotrans_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22500 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22500-0x225c4 (196 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x22540).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2251c).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x22528).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x22534).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-64, a3=? (`jal` at 0x22544).
  Calls `hub_piomap_addr` via direct with a0=?, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=? (`jal` at 0x22588).
  At `bne` at 0x22558 (target 0x225ac), taken when at(=0x1000000) < v0(=(a2 + a3)) (unsigned) and falls through when at(=0x1000000) >= v0(=(a2 + a3)) (unsigned).
  At `beq` at 0x2259c (target 0x225a8), taken when (s2(=a4) & 0x8) == 0 and falls through when (s2(=a4) & 0x8) != 0.
  Returns v0 = ? (`jr` at 0x225bc).

- `hub_device_desc_update` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x227ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x227ac-0x22800 (84 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x227c4).
  Calls `device_desc_intr_swlevel_set` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x227bc).
  Calls `sprintf` via direct with a0=sp-64, a1=sym(.rodata)+45112, a2=a2 at entry (arg2), a3=? (`jal` at 0x227d0).
  Calls `hwgraph_path_to_dev` via direct with a0=sp-64, a1=?, a2=?, a3=? (`jal` at 0x227dc).
  Calls `device_desc_intr_target_set` via direct with a0=a0 at entry (arg0), a1=ret(hwgraph_path_to_dev), a2=?, a3=? (`jal` at 0x227e8).
  Returns v0 = ret(device_desc_intr_target_set) (`jr` at 0x227f8).

- `hub_provider_startup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22bc8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22bc8-0x22bfc (52 bytes).
  Calls `hub_pio_init [0x21f34]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22bd4).
  Calls `hub_dma_init [0x225c4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x22bdc).
  Calls `hub_intr_init [0x227a4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x22be4).
  Returns v0 = ret(hub_intr_init) (`jr` at 0x22bf4).

- `hub_provider_shutdown` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22bfc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22bfc-0x22c18 (28 bytes).
  Calls `xtalk_provider_unregister` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22c04).
  Returns v0 = ret(xtalk_provider_unregister) (`jr` at 0x22c10).

- `hub_check_is_widget0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22c18 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22c18-0x22c6c (84 bytes).
  Loads 8 bytes into a1 from sym(.lit8) +0x120 (`ld` at 0x22c34).
  At `bne` at 0x22c48 (target 0x22c60), taken when a0 < a2(=table(0x9200000000000000)) (unsigned) and falls through when a0 >= a2(=table(0x9200000000000000)) (unsigned).
  At `beq` at 0x22c50 (target 0x22c64), taken when v0(?) == 0 and falls through when v0(?) != 0.
  Returns v0 = 0x1 (`jr` at 0x22c58).
  Returns v0 = 0x0 (`jr` at 0x22c64).

- `hub_check_pci_equiv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22cd4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22cd4-0x22d5c (136 bytes).
  Calls `hub_check_window_equiv` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22ce8).
  Calls `check_nasid_equiv` via direct with a0=?, a1=?, a2=0x0, a3=? (`jal` at 0x22d40).
  At `beq` at 0x22cf0 (target 0x22d50), taken when v0(=ret(hub_check_window_equiv)) == 0 and falls through when v0(=ret(hub_check_window_equiv)) != 0.
  At `beq` at 0x22d08 (target 0x22d28), taken when at(?) == v0(?) and falls through when at(?) != v0(?).
  Returns v0 = ? (`jr` at 0x22d20).

- `hub_setup_prb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22d5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22d5c-0x22df0 (148 bytes).
  Loads 4 bytes into at from sym(force_fire_and_forget) +0x0 (`lw` at 0x22d5c).
  Loads 4 bytes into v0 from sym(ignore_conveyor_override) +0x0 (`lw` at 0x22d78).
  Loads 8 bytes into t0 from sym(.lit8) +0x20 (`ld` at 0x22d98).
  Loads 8 bytes into t3 from sym(.lit8) +0x150 (`ld` at 0x22da4).
  Loads 8 bytes into t2 from table(0x9200000001c00198) +0x0 (`ld` at 0x22dac).
  Loads 8 bytes into t1 from sym(.lit8) +0x280 (`ld` at 0x22db8).
  Stores 8 bytes from a5 to table(0x9200000001c00198) +0x0 (`sd` at 0x22dec).
  At `beq` at 0x22d64 (target 0x22d88), taken when at(=[sym(force_fire_and_forget)]) == 0 and falls through when at(=[sym(force_fire_and_forget)]) != 0.
  At `beq` at 0x22d88 (target 0x22d94), taken when a5(?) == 0 and falls through when a5(?) != 0.
  Returns v0 = ? (`jr` at 0x22de8).

- `hub_set_piomode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22df0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22df0-0x22ee0 (240 bytes).
  Loads 8 bytes into ra from sym(.lit8) +0x20 (`ld` at 0x22e20).
  Loads 8 bytes into v0 from (a0 << 0x21) -0x6dfffffffe3ffef0 (`ld` at 0x22e2c).
  Loads 8 bytes into v0 from (a0 << 0x21) -0x6dfffffffe3ffef0 (`ld` at 0x22e88).
  Stores 8 bytes from zero to (a0 << 0x21) -0x6dfffffffe3ffef0  (`sd` at 0x22e30).
  Loads 8 bytes into at from (a0 << 0x21) -0x6dfffffffe3fffe0 (`ld` at 0x22e34).
  Stores 8 bytes from v1 to (a0 << 0x21) -0x6dfffffffe3ffef0 (`sd` at 0x22e80).
  Calls `get_console_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22e04).
  Calls `hub_setup_prb` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a1 at entry (arg1) (`jal` at 0x22e50).
  Calls `hub_setup_prb` via direct with a0=a0 at entry (arg0), a1=?, a2=0x3, a3=a1 at entry (arg1) (`jal` at 0x22e68).
  Calls `putbuf_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22e8c).
  Calls `putbuf_lock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22eb4).
  Calls `hub_setup_prb` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x3, a3=a1 at entry (arg1) (`jal` at 0x22ed0).
  At `beq` at 0x22e18 (target 0x22eb4), taken when s1(=a0) == v0(=ret(get_console_nasid)) and falls through when s1(=a0) != v0(=ret(get_console_nasid)).
  At `bltz` at 0x22e3c (target 0x22ec4), taken when at(=([(a0 << 0x21)-7926335344142712800]:8 << 0x2e)) < 0 (signed) and falls through when at(=([(a0 << 0x21)-7926335344142712800]:8 << 0x2e)) >= 0 (signed).
  At `bne` at 0x22e78 (target 0x22e5c), taken when s0(?) < 0x10 (signed) and falls through when s0(?) >= 0x10 (signed).
  At `beq` at 0x22e84 (target 0x22e94), taken when s3(=one of 0x0, 0x1) == 0 and falls through when s3(=one of 0x0, 0x1) != 0.
  Returns v0 = ? (`jr` at 0x22eac).

- `hub_widget_flags_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22ee0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22ee0-0x22f28 (72 bytes).
  Calls `hub_setup_prb` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x1 (`jal` at 0x22ef8).
  Calls `hub_setup_prb` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x2 (`jal` at 0x22f10).
  At `beq` at 0x22eec (target 0x22f08), taken when (a2 & 0x1) == 0 and falls through when (a2 & 0x1) != 0.
  At `beq` at 0x22f08 (target 0x22f18), taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns v0 = 0x1 (`jr` at 0x22f20).

- `hub_device_flags_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22f28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22f28-0x22fbc (148 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x22f5c).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x22f90).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22f34).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x22f40).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x22f4c).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-48, a3=? (`jal` at 0x22f60).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22f70).
  Calls `hub_widget_flags_set` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0x22f8c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22fa0).
  Returns v0 = ret(hub_widget_flags_set) (`jr` at 0x22fb4).

- `hubii_ixtt_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22fbc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22fbc-0x23038 (124 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x22fe0).
  Loads 2 bytes into a3 from ? (base unknown) (`lh` at 0x22ffc).
  Loads 8 bytes into a4 from sym(.lit8) +0x288 (`ld` at 0x23000).
  Loads 8 bytes into a2 from a1 (arg1 at entry) +0x0 (`ld` at 0x23008).
  Stores 8 bytes from a2 to ? (base unknown)  (`sd` at 0x23010).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22fc8).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x22fd0).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-32, a3=? (`jal` at 0x22fe4).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22ff0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=[a1]:8, a3=?, a4=0x6dfffffffe400000 (`jal` at 0x2301c).
  Returns v0 = 0x0 (`jr` at 0x23030).

- `hubii_ixtt_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23038 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23038-0x230b4 (124 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x390 (`ld` at 0x2305c).
  Loads 2 bytes into a2 from ? (base unknown) (`lh` at 0x23078).
  Loads 8 bytes into a3 from sym(.lit8) +0x288 (`ld` at 0x2307c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x23088).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x0 (`sd` at 0x2308c).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x23044).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x2304c).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-32, a3=? (`jal` at 0x23060).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2306c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=0x6dfffffffe400000 (`jal` at 0x23098).
  Returns v0 = 0x0 (`jr` at 0x230ac).

- `hub_device_inquiry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x230b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x230b4-0x23268 (436 bytes).
  9 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x390, including `ld` at 0x230c0, 0x23118, 0x23140.
  Loads 2 bytes into a3 from ? (base unknown) (`lh` at 0x23130).
  Loads 8 bytes into a4 from sym(.lit8) +0x20 (`ld` at 0x23134).
  Loads 8 bytes into a5 from table(0x9200000001c00120) +0x0 (`ld` at 0x23148).
  Loads 8 bytes into a4 from table(0x9200000001c00118) +0x0 (`ld` at 0x2314c).
  Loads 8 bytes into a3 from table(0x9200000001c00110) +0x0 (`ld` at 0x23150).
  Calls `sprintf` via direct with a0=sp-96, a1=sym(.rodata)+45112, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0x230d4).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-96, a2=sp-88, a3=? (`jal` at 0x230e4).
  Calls `device_master_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x23100).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(device_master_get), a1=sym(.rodata)+45112, a2=sp-80, a3=? (`jal` at 0x2311c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=entry(0x9200000001c00110), a4=entry(0x9200000001c00118), a5=entry(0x9200000001c00120) (`jal` at 0x23164).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=? (`jal` at 0x23178).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=? (`jal` at 0x231b0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=? (`jal` at 0x231f0).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+45112, a2=sym(.rodata)+45112, a3=? (`jal` at 0x23228).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+45112, a2=sym(.rodata)+45112, a3=? (`jal` at 0x23250).
  At `beq` at 0x230ec (target 0x23100), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `beq` at 0x2310c (target 0x230f4), taken when v0(=ret(device_master_get)) == a2(=-0x1) and falls through when v0(=ret(device_master_get)) != a2(=-0x1).
  At `beq` at 0x23128 (target 0x230f4), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x231a0 (target 0x231d4), taken when (t8(?) & t9(?)) != 0 and falls through when (t8(?) & t9(?)) == 0.
  At `bne` at 0x231c4 (target 0x23194), taken when s1(?) < 0x8 (signed) and falls through when s1(?) >= 0x8 (signed).
  At `bne` at 0x231dc (target 0x23194), taken when s1(?) < 0x8 (signed) and falls through when s1(?) >= 0x8 (signed).
  At `beq` at 0x23208 (target 0x2321c), taken when (s1(?) & a2(?)) == 0 and falls through when (s1(?) & a2(?)) != 0.
  At `beq` at 0x23234 (target 0x23260), taken when (s1(?) & s0(?)) == 0 and falls through when (s1(?) & s0(?)) != 0.
  Returns v0 = ? (`jr` at 0x230f8).

- `read_branch_diag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23270 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23270-0x2327c (12 bytes).
  Returns v0 = ? (`jr` at 0x23274).

- `write_branch_diag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2327c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2327c-0x23288 (12 bytes).
  Returns v0 = ? (`jr` at 0x23280).

- `branch_prediction_off` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23288 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23288-0x232ac (36 bytes).
  Returns v0 = ? (`jr` at 0x232a4).

- `branch_prediction_on` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x232ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x232ac-0x232c8 (28 bytes).
  Returns v0 = ? (`jr` at 0x232c0).

- `branch_prediction_taken` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x232c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x232c8-0x232ec (36 bytes).
  Returns v0 = ? (`jr` at 0x232e4).

- `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x232ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x232ec-0x23304 (24 bytes).
  Returns v0 = ? (`jr` at 0x232fc).

- `get_r10k_config` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2352c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2352c-0x23538 (12 bytes).
  Returns v0 = ? (`jr` at 0x23530).

- `exception_endfast` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2381c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2381c-0x23868 (76 bytes).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0x2381c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x23860).
  At `beq` at 0x23858 (target 0x238b0), taken when k0(?) == 0 and falls through when k0(?) != 0.

- `get_fpc_csr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x242a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x242a0-0x242c8 (40 bytes).
  Returns v0 = ? (`jr` at 0x242c0).

- `set_fpc_csr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x242c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x242c8-0x242f8 (48 bytes).
  Returns v0 = ? (`jr` at 0x242f0).

- `get_cpu_irr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x242f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x242f8-0x24304 (12 bytes).
  Returns v0 = ? (`jr` at 0x242fc).

- `reviderror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24338 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24338-0x24348 (16 bytes).
  Returns v0 = 0x0 (`jr` at 0x24340).

- `get_cpu_cnf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24348 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24348-0x24354 (12 bytes).
  Returns v0 = ? (`jr` at 0x2434c).

- `clear_sline` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24354 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24354-0x2436c (24 bytes).
  Returns v0 = ? (`jr` at 0x24364).

- `dCacheSize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x243f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x243f4-0x24414 (32 bytes).
  Returns v0 = ? (`jr` at 0x2440c).

- `iCacheSize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24484 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24484-0x244a8 (36 bytes).
  Returns v0 = ? (`jr` at 0x244a0).

- `sCacheSize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24530 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24530-0x24550 (32 bytes).
  Returns v0 = ? (`jr` at 0x24548).

- `encode_str_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x249f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x249f8-0x24a74 (124 bytes).
  Loads 1 byte into at from ? (base unknown) (`lbu` at 0x24a10).
  Stores 1 byte from at to ? (base unknown) (`sb` at 0x24a20).
  At `beq` at 0x24a24 (target 0x24a54), taken when a3(?) >= 0xa (signed) and falls through when a3(?) < 0xa (signed).
  At `bne` at 0x24a44 (target 0x24a00), taken when a7(?) != 0 and falls through when a7(?) == 0.
  Returns v0 = ? (`jr` at 0x24a54).

- `decode_str_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24a74 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24a74-0x24af0 (124 bytes).
  Stores 1 byte from at to ? (base unknown) (`sb` at 0x24a8c).
  Loads 1 byte into at from ? (base unknown) (`lbu` at 0x24ab4).
  At `beq` at 0x24a94 (target 0x24ad0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x24ac0 (target 0x24a7c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  Returns v0 = ? (`jr` at 0x24ad0).

- `module_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24af0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24af0-0x24b38 (72 bytes).
  Loads 4 bytes into a4 from sym(nummodules) +0x0 (`lw` at 0x24af0).
  Loads 8 bytes into a5 from sym(.srdata) +0x3b8 (`ld` at 0x24afc).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x24b0c).
  Loads 2 bytes into at from ? (base unknown) (`lh` at 0x24b10).
  At `blez` at 0x24af8 (target 0x24b2c), taken when a4(=[sym(nummodules)]) <= 0 (signed) and falls through when a4(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x24b14 (target 0x24b30), taken when at(?) == a0 and falls through when at(?) != a0.
  At `bne` at 0x24b24 (target 0x24b0c), taken when v1(?) != 0 and falls through when v1(?) == 0.
  Returns v0 = ? (`jr` at 0x24b30).

- `cmoduleid_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24b38 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24b38-0x24ba4 (108 bytes).
  Loads 4 bytes into a7 from sym(nummodules) +0x0 (`lw` at 0x24b38).
  Loads 8 bytes into t0 from sym(.srdata) +0x3b8 (`ld` at 0x24b44).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0x24b5c).
  Loads 2 bytes into t1 from ? (base unknown) (`lh` at 0x24b68).
  At `blez` at 0x24b40 (target 0x24b94), taken when a7(=[sym(nummodules)]) <= 0 (signed) and falls through when a7(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x24b6c (target 0x24b9c), taken when t1(?) == a0 and falls through when t1(?) != a0.
  At `blez` at 0x24b74 (target 0x24b64), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `bne` at 0x24b8c (target 0x24b54), taken when v0(?) < a7(=[sym(nummodules)]) (signed) and falls through when v0(?) >= a7(=[sym(nummodules)]) (signed).
  Returns v0 = -0x1 (`jr` at 0x24b94).
  Returns v0 = ? (`jr` at 0x24b9c).

- `cnodemodule_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24ba4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24ba4-0x24c10 (108 bytes).
  Loads 4 bytes into a7 from sym(nummodules) +0x0 (`lw` at 0x24ba4).
  Loads 8 bytes into t0 from sym(.srdata) +0x3b8 (`ld` at 0x24bb0).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x24bc8).
  Loads 2 bytes into v1 from ? (base unknown) (`lh` at 0x24bd8).
  At `blez` at 0x24bac (target 0x24c00), taken when a7(=[sym(nummodules)]) <= 0 (signed) and falls through when a7(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x24bdc (target 0x24c08), taken when v1(?) == a0 and falls through when v1(?) != a0.
  At `blez` at 0x24be4 (target 0x24bd4), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `bne` at 0x24bf8 (target 0x24bc0), taken when a4(?) < a7(=[sym(nummodules)]) (signed) and falls through when a4(?) >= a7(=[sym(nummodules)]) (signed).
  Returns v0 = 0x0 (`jr` at 0x24c00).
  Returns v0 = ? (`jr` at 0x24c08).

- `module_add_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24c10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24c10-0x24d60 (336 bytes).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x3c0, including `ld` at 0x24c50, 0x24c68, 0x24c94.
  Stores 2 bytes from s0 to ret(kmem_zalloc_node) +0x0  (`sh` at 0x24c58).
  Loads 8 bytes into a1 from sym(.srdata) +0x3c8 (`ld` at 0x24c7c).
  Loads 2 bytes into a1 from (sym(compact_to_nasid_node) + (a1 + a1)) +0x0 (`lh` at 0x24c90).
  Loads 4 bytes into a2 from sym(nummodules) +0x0 (`lw` at 0x24ca4).
  Loads 8 bytes into v0 from sym(.srdata) +0x3b8 (`ld` at 0x24ca8).
  Loads 8 bytes into a6 from (sym(modules) + ([sym(nummodules)] << 0x3)) -0x8 (`ld` at 0x24cbc).
  Loads 2 bytes into a7 from [(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8 +0x0 (`lh` at 0x24cc0).
  Stores 8 bytes from a6 to ? (base unknown) (`sd` at 0x24cd4).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0x24ce0).
  Loads 2 bytes into a3 from ? (base unknown) (`lh` at 0x24ce4).
  Stores 8 bytes from s1 to ? (base unknown)  (`sd` at 0x24cf8).
  Stores 4 bytes from a5 to sym(nummodules) +0x0  (`sw` at 0x24d00).
  Loads 4 bytes into a7 from ? (base unknown) (`lw` at 0x24d04).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x24d10).
  Stores 2 bytes from s2 to ? (base unknown)  (`sh` at 0x24d28).
  Calls `module_lookup` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x24c28).
  Calls `kmem_zalloc_node` via direct with a0=0xa00, a1=0x1, a2=a1 at entry (arg1), a3=? (`jal` at 0x24c40).
  Calls `spinlock_init` via direct with a0=ret(kmem_zalloc_node)+4, a1=sym(.rodata)+45504, a2=?, a3=? (`jal` at 0x24c5c).
  Calls `init_sema` via direct with a0=ret(kmem_zalloc_node)+24, a1=0x0, a2=sym(.rodata)+45504, a3=-0x1 (`jal` at 0x24c74).
  Calls `elsc_init` via direct with a0=ret(kmem_zalloc_node)+40, a1=[(sym(compact_to_nasid_node) + (a1 + a1))]:2, a2=(a1 + a1), a3=? (`jal` at 0x24c8c).
  Calls `spinlock_init` via direct with a0=ret(kmem_zalloc_node)+2424, a1=sym(.rodata)+45504, a2=?, a3=? (`jal` at 0x24c9c).
  Calls `assfail` via direct with a0=sym(.rodata)+45504, a1=sym(.rodata)+45504, a2=0xad, a3=? (`jal` at 0x24d50).
  At `bne` at 0x24c30 (target 0x24d04), taken when v0(=ret(module_lookup)) != 0 and falls through when v0(=ret(module_lookup)) == 0.
  At `beq` at 0x24c48 (target 0x24d44), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `blez` at 0x24cb4 (target 0x24cf8), taken when a2(=[sym(nummodules)]) <= 0 (signed) and falls through when a2(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x24cc8 (target 0x24cf8), taken when s0(=a0) >= a7(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed) and falls through when s0(=a0) < a7(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed).
  At `blez` at 0x24cd8 (target 0x24d38), taken when a5(?) <= 0 (signed) and falls through when a5(?) > 0 (signed).
  At `bne` at 0x24cf0 (target 0x24cd0), taken when s0(=a0) < a3(?) (signed) and falls through when s0(=a0) >= a3(?) (signed).
  Returns v0 = ? (`jr` at 0x24d30).

- `module_probe_snum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24d60 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24d60-0x24f5c (508 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0x24d60).
  Loads 8 bytes into at from (a1 << 0x21) -0x6fffffffcc000000 (`ld` at 0x24d78).
  Loads 8 bytes into a7 from ((a1 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0x24dac).
  Loads 4 bytes into a4 from ? (base unknown) (`lw` at 0x24dbc).
  Loads 1 byte into a1 from ret(find_lboard) +0x9 (`lbu` at 0x24de0).
  Loads 1 byte into a2 from ret(find_lboard) +0x9 (`lbu` at 0x24e90).
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0x9e0  (`sw` at 0x24e30).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0x24e3c).
  Loads 8 bytes into a3 from ((a1 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0x24e60).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x24e6c).
  Loads 1 byte into a5 from ret(find_lboard) +0x17 (`lbu` at 0x24eb8).
  Loads 4 bytes into a5 from (ret(find_lboard) + ([ret(find_lboard)+23]:1 << 0x2)) +0x24 (`lw` at 0x24ed4).
  Loads 1 byte into a6 from ? (base unknown) (`lbu` at 0x24ef8).
  Stores 4 bytes from a7 to a0 (arg0 at entry) +0x9f8  (`sw` at 0x24f14).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x9f8 (`lw` at 0x24f20).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x9f8 (`lw` at 0x24f40).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x24dd0).
  Calls `board_serial_number_get` via direct with a0=ret(find_lboard), a1=sp-64, a2=?, a3=? (`jal` at 0x24e10).
  Calls `encode_str_serial` via direct with a0=sp-64, a1=a0+2512, a2=?, a3=? (`jal` at 0x24e24).
  Calls `find_lboard` via direct with a0=?, a1=0x42, a2=?, a3=? (`jal` at 0x24e80).
  Calls `chk_for_pebrick` via direct with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xc000 (`jal` at 0x24ea8).
  Calls `bcopy` via direct with a0=?, a1=a0+2540, a2=0xa, a3=?, a7=0xffffffffff (`jal` at 0x24f08).
  Calls `chk_for_pebrick` via direct with a0=a1 at entry (arg1), a1=0xffffffffff, a2=?, a3=?, a4=((a1 << 0x21)+0x9600000000000000 | 0x2000), a5=(a1 << 0x21)+0x9600000000000000 (`jal` at 0x24f44).
  At `beq` at 0x24d90 (target 0x24ea8), taken when a6(=0xc000) == at(?) and falls through when a6(=0xc000) != at(?).
  At `beq` at 0x24dc0 (target 0x24e08), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x24dd8 (target 0x24df0), taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  At `beq` at 0x24de8 (target 0x24e10), taken when (a1(=[ret(find_lboard)+9]:1) & 0x4) == 0 and falls through when (a1(=[ret(find_lboard)+9]:1) & 0x4) != 0.
  At `beq` at 0x24e1c (target 0x24e34), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x24e58 (target 0x24f44), taken when a4(=0xc000) == a6(?) and falls through when a4(=0xc000) != a6(?).
  At `beq` at 0x24e74 (target 0x24f34), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x24e88 (target 0x24ea0), taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  At `beq` at 0x24e98 (target 0x24eb8), taken when (a2(=[ret(find_lboard)+9]:1) & 0x4) == 0 and falls through when (a2(=[ret(find_lboard)+9]:1) & 0x4) != 0.
  At `beq` at 0x24ef0 (target 0x24f20), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x24efc (target 0x24f3c), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x24f24 (target 0x24f54), taken when v0(=[a0+2552]) == 0 and falls through when v0(=[a0+2552]) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x24e00).

- `module_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24f5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24f5c-0x250c0 (356 bytes).
  Loads 8 bytes into s2 from sym(.lit8) +0x40 (`ld` at 0x24f64).
  Loads 4 bytes into at from sym(numnodes) +0x0 (`lw` at 0x24f7c).
  Loads 4 bytes into a0 from sym(numnodes) +0x0 (`lw` at 0x24fdc).
  Loads 8 bytes into s6 from sym(.srdata) +0x3c8 (`ld` at 0x24fb0).
  Loads 2 bytes into a0 from ret(find_lboard) +0xe (`lh` at 0x24fc0).
  Loads 4 bytes into v1 from ret(module_add_node) +0x9e0 (`lw` at 0x24fcc).
  Loads 2 bytes into s5 from ? (base unknown) (`lh` at 0x24ff8).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0x25004).
  Loads 8 bytes into a7 from ? (base unknown) (`ld` at 0x2501c).
  Loads 4 bytes into a7 from ? (base unknown) (`lw` at 0x25028).
  Loads 8 bytes into a1 from sym(.srdata) +0x3c0 (`ld` at 0x25098).
  Loads 2 bytes into s5 from sym(compact_to_nasid_node) +0x0 (`lh` at 0x250bc).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x24fb8).
  Calls `module_add_node` via direct with a0=[ret(find_lboard)+14]:2, a1=?, a2=?, a3=? (`jal` at 0x24fc4).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25070).
  Calls `module_probe_snum` via direct with a0=ret(module_add_node), a1=?, a2=?, a3=? (`jal` at 0x25080).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+45504, a2=?, a3=? (`jal` at 0x250a0).
  At `blez` at 0x24f94 (target 0x25098), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `beq` at 0x24fd0 (target 0x25080), taken when v1(=[ret(module_add_node)+2528]) == 0 and falls through when v1(=[ret(module_add_node)+2528]) != 0.
  At `beq` at 0x24ff0 (target 0x25040), taken when s0(?) >= a0(=[sym(numnodes)]) (signed) and falls through when s0(?) < a0(=[sym(numnodes)]) (signed).
  At `beq` at 0x25014 (target 0x25070), taken when s3(=0xc000) == t8(?) and falls through when s3(=0xc000) != t8(?).
  At `bne` at 0x25030 (target 0x24fb4), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x25040 (target 0x25098), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `beq` at 0x25088 (target 0x24fd8), taken when v0(=ret(module_probe_snum)) == 0 and falls through when v0(=ret(module_probe_snum)) != 0.
  Returns v0 = ? (`jr` at 0x25068).

- `get_elsc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x250c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x250c0-0x250ec (44 bytes).
  Loads 8 bytes into v1 from abs 0xffffffffffffc400 (`ld` at 0x250c0).
  Loads 2 bytes into a0 from abs 0xffffffffffffc42a (`lh` at 0x250c4).
  Loads 8 bytes into v1 from [-0x3c00]:8 +0x0 (`ld` at 0x250c8).
  Loads 8 bytes into v1 from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0 (`ld` at 0x250d4).
  Loads 8 bytes into v0 from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8620 (`ld` at 0x250e0).
  Returns v0 = [[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34336]:8+40 (`jr` at 0x250e4).

- `get_kmod_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x250ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x250ec-0x251e4 (248 bytes).
  Loads 8 bytes into a5 from sym(.srdata) +0x3b8 (`ld` at 0x250ec).
  Loads 4 bytes into a6 from sym(nummodules) +0x0 (`lw` at 0x25104).
  Loads 8 bytes into a5 from (sym(modules) + (a0 << 0x3)) +0x0 (`ld` at 0x25118).
  Loads 8 bytes into a0 from (sym(modules) + (a0 << 0x3)) +0x0 (`ld` at 0x25130).
  Loads 4 bytes into a7 from [(sym(modules) + (a0 << 0x3))]:8 +0x9e0 (`lw` at 0x2511c).
  Loads 2 bytes into a1 from [(sym(modules) + (a0 << 0x3))]:8 +0x0 (`lh` at 0x25128).
  Stores 4 bytes from a1 to a1 (arg1 at entry) +0x8  (`sw` at 0x2512c).
  Stores 8 bytes from zero to a1 (arg1 at entry) +0x0  (`sd` at 0x25170).
  Stores 8 bytes from t0 to a1 (arg1 at entry) +0x0  (`sd` at 0x25194).
  Loads 8 bytes into t0 from a1 (arg1 at entry) +0x0 (`ld` at 0x2518c).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x25198).
  Loads 1 byte into a5 from ? (base unknown) (`lbu` at 0x251b0).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x251c0).
  Stores 8 bytes from t0 to a1 (arg1 at entry) +0x0 (`sd` at 0x251ac).
  Stores 1 byte from a5 to ? (base unknown) (`sb` at 0x251bc).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0x251d8).
  Calls `decode_str_serial` via direct with a0=[(sym(modules) + (a0 << 0x3))]:8+2512, a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(sym(modules) + (a0 << 0x3)), a5=[(sym(modules) + (a0 << 0x3))]:8, a7=[[(sym(modules) + (a0 << 0x3))]:8+2528] (`jal` at 0x25138).
  At `bltz` at 0x250f8 (target 0x25160), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x2510c (target 0x25160), taken when a0 >= a6(=[sym(nummodules)]) (signed) and falls through when a0 < a6(=[sym(nummodules)]) (signed).
  At `beq` at 0x25120 (target 0x25168), taken when a7(=[[(sym(modules) + (a0 << 0x3))]:8+2528]) == 0 and falls through when a7(=[[(sym(modules) + (a0 << 0x3))]:8+2528]) != 0.
  At `beq` at 0x2514c (target 0x25170), taken when a2(?) == a3(=0x4b) and falls through when a2(?) != a3(=0x4b).
  At `beq` at 0x25180 (target 0x251dc), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x251b8 (target 0x251cc), taken when a0(?) >= 0xa (signed) and falls through when a0(?) < 0xa (signed).
  At `bne` at 0x251c4 (target 0x2518c), taken when t1(?) != 0 and falls through when t1(?) == 0.
  Returns v0 = one of 0x0, 0x6, 0x16 (`jr` at 0x25158).

- `get_kmod_sys_snum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x251e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x251e4-0x252dc (248 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0x68 (`ld` at 0x251e4).
  Loads 4 bytes into v0 from sym(nummodules) +0x0 (`lw` at 0x251e8).
  Loads 8 bytes into s1 from sym(.srdata) +0x3b8 (`ld` at 0x25214).
  Loads 8 bytes into a4 from (sym(modules) + (a0 << 0x3)) +0x0 (`ld` at 0x2521c).
  Loads 4 bytes into v1 from [(sym(modules) + (a0 << 0x3))]:8 +0x9f8 (`lw` at 0x25220).
  Loads 1 byte into a0 from sym(.bss) +0xa7a0 (`lbu` at 0x25228).
  Loads 8 bytes into a6 from abs 0x9000000014000000 (`ld` at 0x25230).
  Loads 1 byte into t0 from ? (base unknown) (`lbu` at 0x2526c).
  Stores 1 byte from t0 to ? (base unknown) (`sb` at 0x25270).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x25288).
  Stores 1 byte from t1 to ? (base unknown) (`sb` at 0x25290).
  Stores 1 byte from zero to a1 (arg1 at entry) +0x0  (`sb` at 0x252b4).
  Stores 1 byte from zero to a1 (arg1 at entry) +0x0  (`sb` at 0x252bc).
  Calls `decode_str_serial` via direct with a0=[(sym(modules) + (a0 << 0x3))]:8+2540, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[(sym(modules) + (a0 << 0x3))]:8, a5=0x9000000014000000, a7=0x4000 (`jal` at 0x25244).
  Calls `get_elsc` via direct with a0=[sym(.bss)+42912]:1, a1=(a0 << 0x3), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[(sym(modules) + (a0 << 0x3))]:8, a5=0x9000000014000000, a7=0x4000 (`jal` at 0x252c0).
  Calls `iobrick_get_sys_snum` via direct with a0=ret(get_elsc), a1=sym(modules), a2=?, a3=? (`jal` at 0x252cc).
  At `bltz` at 0x251fc (target 0x252ac), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x2520c (target 0x252ac), taken when a0 >= v0(=[sym(nummodules)]) (signed) and falls through when a0 < v0(=[sym(nummodules)]) (signed).
  At `beq` at 0x25224 (target 0x252b8), taken when v1(=[[(sym(modules) + (a0 << 0x3))]:8+2552]) == 0 and falls through when v1(=[[(sym(modules) + (a0 << 0x3))]:8+2552]) != 0.
  At `beq` at 0x25238 (target 0x25254), taken when a6(?) == a7(=0x4000) and falls through when a6(?) != a7(=0x4000).
  At `beq` at 0x25254 (target 0x252c0), taken when a0(=[sym(.bss)+42912]:1) == 0 and falls through when a0(=[sym(.bss)+42912]:1) != 0.
  At `beq` at 0x25274 (target 0x25294), taken when v0(?) >= 0xc (signed) and falls through when v0(?) < 0xc (signed).
  At `bne` at 0x2528c (target 0x2525c), taken when v0(?) < 0xc (signed) and falls through when v0(?) >= 0xc (signed).
  Returns v0 = one of 0x0, 0x6, 0x16 (`jr` at 0x252a4).

- `dcache_wb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  Returns v0 = ? (`jr` at 0x252e0).

- `dcache_wbinval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  Returns v0 = ? (`jr` at 0x252e0).

- `dki_dcache_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  Returns v0 = ? (`jr` at 0x252e0).

- `dki_dcache_wb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  Returns v0 = ? (`jr` at 0x252e0).

- `dki_dcache_wbinval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  Returns v0 = ? (`jr` at 0x252e0).

- `dummy_func` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  Returns v0 = ? (`jr` at 0x252e0).

- `mapped_kernel_setup_tlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x253b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x253b8-0x25460 (168 bytes).
  Returns v0 = ? (`jr` at 0x25450).
  The instructions from 0x25458 to 0x2545c are not reached by any path from the entry, and their branches are not listed.

- `VEC_trap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x256d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x256d0-0x25704 (52 bytes).
  Calls `trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3) (`jal` at 0x256ec).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x256fc).

- `soft_trap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x256d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x256d0-0x25710 (64 bytes).
  Calls `trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3) (`jal` at 0x256ec).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x256fc).
  The instructions from 0x25704 to 0x2570c are not reached by any path from the entry, and their branches are not listed.

- `uli_getasids` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25710 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25710-0x2571c (12 bytes).
  Returns v0 = ? (`jr` at 0x25714).

- `uli_setasids` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2571c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2571c-0x25728 (12 bytes).
  Returns v0 = ? (`jr` at 0x25720).

- `uli_eret` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25728 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25728-0x25754 (44 bytes).
  Loads 8 bytes into t1 from a0 (arg0 at entry) +0xa0 (`ld` at 0x25728).
  Loads 8 bytes into t9 from a0 (arg0 at entry) +0x78 (`ld` at 0x25730).
  Loads 8 bytes into sp from a0 (arg0 at entry) +0x70 (`ld` at 0x25738).
  Loads 8 bytes into gp from a0 (arg0 at entry) +0x68 (`ld` at 0x25740).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x80 (`ld` at 0x2574c).

- `add_sidcache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25754 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25754-0x25888 (308 bytes).
  Loads 2 bytes into s2 from sym(master_procid) +0x0 (`lh` at 0x25760).
  Loads 8 bytes into s1 from sym(.srdata) +0x3d8 (`ld` at 0x25764).
  7 such loads of 4 bytes through gp (gp) to sym(maxcpus) +0x0, including `lw` at 0x25770, 0x25794, 0x257b8.
  Loads 8 bytes into s2 from (sym(pdaindr) + ([sym(master_procid)]:2 << 0x4)) +0x8 (`ld` at 0x25778).
  Loads 4 bytes into s2 from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x6ac (`lw` at 0x25784).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0x257c4).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x257d0).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0x257d4).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0x25828).
  Loads 2 bytes into a2 from ? (base unknown) (`lh` at 0x2582c).
  Loads 4 bytes into a4 from ? (base unknown) (`lw` at 0x2583c).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x257ac).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25810).
  Calls `add_to_inventory` via direct with a0=0x3, a1=0x8, a2=?, a3=0x0 (`jal` at 0x25840).
  Calls `add_to_inventory` via direct with a0=0x3, a1=0x8, a2=0x0, a3=-0x1, a4=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1708] (`jal` at 0x25878).
  At `blez` at 0x25780 (target 0x25868), taken when at(=[sym(maxcpus)]) <= 0 (signed) and falls through when at(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x257a0 (target 0x257e4), taken when s0(?) >= a1(=[sym(maxcpus)]) (signed) and falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  At `beq` at 0x257b4 (target 0x25798), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x257c8 (target 0x25794), taken when a2(?) != s0(?) and falls through when a2(?) == s0(?).
  At `beq` at 0x257d8 (target 0x25794), taken when a2(?) == s2(=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1708]) and falls through when a2(?) != s2(=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1708]).
  At `beq` at 0x257e4 (target 0x25868), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `blez` at 0x257ec (target 0x25854), taken when a1(=[sym(maxcpus)]) <= 0 (signed) and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x25808 (target 0x25850), taken when s0(?) >= a4(=[sym(maxcpus)]) (signed) and falls through when s0(?) < a4(=[sym(maxcpus)]) (signed).
  At `beq` at 0x25818 (target 0x25800), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x25830 (target 0x257fc), taken when a2(?) != s0(?) and falls through when a2(?) == s0(?).
  Returns v0 = ? (`jr` at 0x25860).

- `get_cpu_freq` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25888 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25888-0x258cc (68 bytes).
  Loads 4 bytes into a0 from a0 (arg0 at entry) +0x73c (`lw` at 0x25890).
  Loads 8 bytes into a1 from sym(.srdata) +0x3e0 (`ld` at 0x258a4).
  Loads 4 bytes into v0 from ? (base unknown) (`lw` at 0x258b8).
  Calls `hwgraph_info_get_LBL` via direct with a0=[a0+1852], a1=sym(.rodata)+45648, a2=sp-32, a3=a3 at entry (arg3) (`jal` at 0x258a0).
  At `beq` at 0x258b0 (target 0x258c4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  Returns v0 = ? (`jr` at 0x258bc).

- `sn_mp_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25d8c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25d8c-0x25eb4 (296 bytes).
  Loads 8 bytes into s2 from sym(.srdata) +0x400 (`ld` at 0x25d94).
  Loads 8 bytes into s1 from sym(.srdata) +0x3f8 (`ld` at 0x25d9c).
  Loads 4 bytes into at from sym(maxnodes) +0x0 (`lw` at 0x25da0).
  Loads 4 bytes into a1 from sym(maxnodes) +0x0 (`lw` at 0x25de0).
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x25dc8).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x25dd8).
  Loads 4 bytes into a1 from sym(maxcpus) +0x0 (`lw` at 0x25df8).
  Loads 4 bytes into a1 from sym(maxcpus) +0x0 (`lw` at 0x25e2c).
  Loads 8 bytes into s2 from sym(.srdata) +0x408 (`ld` at 0x25dfc).
  Loads 8 bytes into s3 from sym(.srdata) +0x3f0 (`ld` at 0x25e0c).
  Loads 8 bytes into a0 from table(sym(pdaindr)) +0x8 (`ld` at 0x25e24).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0x25e4c).
  Loads 4 bytes into a0 from sym(hwgraph_root) +0x0 (`lw` at 0x25e94).
  Loads 4 bytes into a0 from sym(hwgraph_root) +0x0 (`lw` at 0x25e9c).
  Calls `init_platform_nodepda` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25dc4).
  Calls `intr_clear_all` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25dd4).
  Calls `init_platform_pda` via direct with a0=[table(sym(pdaindr))+8]:8, a1=?, a2=?, a3=? (`jal` at 0x25e20).
  Calls `module_init` via direct with a0=?, a1=[sym(maxcpus)], a2=?, a3=? (`jal` at 0x25e78).
  Calls `klhwg_add_all_modules` via direct with a0=[sym(hwgraph_root)], a1=?, a2=?, a3=? (`jal` at 0x25e90).
  Calls `klhwg_add_all_nodes` via direct with a0=[sym(hwgraph_root)], a1=?, a2=?, a3=? (`jal` at 0x25e98).
  Calls `full_nodemask_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x25ea0).
  At `blez` at 0x25dac (target 0x25df8), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `bne` at 0x25df0 (target 0x25dbc), taken when s0(?) < a1(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  At `blez` at 0x25e08 (target 0x25e78), taken when a1(=[sym(maxcpus)]) <= 0 (signed) and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x25e3c (target 0x25e78), taken when s0(?) >= a1(=[sym(maxcpus)]) (signed) and falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  At `bne` at 0x25e58 (target 0x25e18), taken when (t8(?) & t9(?)) != 0 and falls through when (t8(?) & t9(?)) == 0.
  At `bne` at 0x25e70 (target 0x25e44), taken when s0(?) < a1(=[sym(maxcpus)]) (signed) and falls through when s0(?) >= a1(=[sym(maxcpus)]) (signed).
  Returns v0 = ret(full_nodemask_init) (`jr` at 0x25eac).

- `is_prom_downrev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25eb4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25eb4-0x25ebc (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x25eb4).

- `cpu_io_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2656c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2656c-0x26648 (220 bytes).
  Loads 8 bytes into s2 from sym(.srdata) +0x430 (`ld` at 0x26574).
  Loads 4 bytes into a1 from sym(bdevcnt) +0x0 (`lw` at 0x26578).
  Loads 4 bytes into a0 from table(sym(bdevsw)) +0x8 (`lw` at 0x265c0).
  Loads 8 bytes into t8 from sym(masterpda) +0x0 (`ld` at 0x265c8).
  Loads 8 bytes into t8 from sym(masterpda) +0x0 (`ld` at 0x26620).
  Loads 2 bytes into t8 from [sym(masterpda)]:8 +0x428 (`lh` at 0x265cc).
  Loads 2 bytes into t8 from [sym(masterpda)]:8 +0x428 (`lh` at 0x26624).
  Stores 4 bytes from t8 to table(sym(bdevsw)) +0x8  (`sw` at 0x265d4).
  Loads 4 bytes into a1 from sym(cdevcnt) +0x0 (`lw` at 0x265d8).
  Loads 8 bytes into s2 from sym(.srdata) +0x438 (`ld` at 0x265dc).
  Loads 4 bytes into a0 from table(sym(cdevsw)) +0x8 (`lw` at 0x26618).
  Stores 4 bytes from t8 to table(sym(cdevsw)) +0x8  (`sw` at 0x2662c).
  Calls `cpu_isvalid` via direct with a0=[table(sym(bdevsw))+8], a1=?, a2=?, a3=? (`jal` at 0x265bc).
  Calls `cpu_isvalid` via direct with a0=[table(sym(cdevsw))+8], a1=?, a2=?, a3=? (`jal` at 0x26614).
  At `blez` at 0x26584 (target 0x265d8), taken when a1(=[sym(bdevcnt)]) <= 0 (signed) and falls through when a1(=[sym(bdevcnt)]) > 0 (signed).
  At `bltz` at 0x2659c (target 0x265d8), taken when s0(?) < 0 (signed) and falls through when s0(?) >= 0 (signed).
  At `bne` at 0x265c4 (target 0x26598), taken when v0(=ret(cpu_isvalid)) != 0 and falls through when v0(=ret(cpu_isvalid)) == 0.
  At `blez` at 0x265e0 (target 0x26630), taken when a1(=[sym(cdevcnt)]) <= 0 (signed) and falls through when a1(=[sym(cdevcnt)]) > 0 (signed).
  At `bltz` at 0x265f4 (target 0x26630), taken when s0(?) < 0 (signed) and falls through when s0(?) >= 0 (signed).
  At `bne` at 0x2661c (target 0x265f0), taken when v0(=ret(cpu_isvalid)) != 0 and falls through when v0(=ret(cpu_isvalid)) == 0.
  Returns v0 = ? (`jr` at 0x26640).

- `install_cpu_nmi_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26648 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26648-0x26708 (192 bytes).
  Loads 8 bytes into a6 from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xa8 (`ld` at 0x26680).
  Loads 8 bytes into a5 from (table(0x9600000000000000) | 0x2000) +0x88 (`ld` at 0x266a4).
  Loads 4 bytes into a6 from sym(dbgmon_nmiprom) +0x0 (`lw` at 0x266ac).
  Loads 8 bytes into v0 from sym(.srdata) +0x440 (`ld` at 0x266c0).
  4 such stores of 8 bytes through a3 (?) to ? (base unknown) , including `sd` at 0x266d8, 0x266f0, 0x266f4.
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0x266e4).
  Loads 8 bytes into a5 from sym(.lit8) +0x2a0 (`ld` at 0x266ec).
  Stores 8 bytes from a6 to ? (base unknown) (`sd` at 0x266fc).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x26654).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2665c).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26664).
  At `beq` at 0x266d0 (target 0x266e4), taken when a6(=[sym(dbgmon_nmiprom)]) == 0 and falls through when a6(=[sym(dbgmon_nmiprom)]) != 0.
  At `bne` at 0x266e8 (target 0x266dc), taken when a4(?) != 0 and falls through when a4(?) == 0.
  Returns v0 = sym(nmi_dump) (`jr` at 0x266dc).

- `nmi_cpu_eframe_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26708 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26708-0x26798 (144 bytes).
  Loads 8 bytes into a6 from sym(.srdata) +0x448 (`ld` at 0x26740).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x2675c).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0x26774).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x26778).
  At `beq` at 0x26768 (target 0x2677c), taken when a3(?) == a7(=-0x1) and falls through when a3(?) != a7(=-0x1).
  At `bne` at 0x26788 (target 0x2675c), taken when a4(?) < 0x27 (signed) and falls through when a4(?) >= 0x27 (signed).
  Returns v0 = ? (`jr` at 0x26790).

- `nmi_node_eframe_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26798 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26798-0x26848 (176 bytes).
  Loads 8 bytes into a3 from sym(.srdata) +0x400 (`ld` at 0x26798).
  Loads 2 bytes into s2 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0x267cc).
  Loads 8 bytes into t8 from abs 0xffffffffffffc400 (`ld` at 0x267d8).
  Loads 8 bytes into t9 from abs 0xffffffffffffc400 (`ld` at 0x26804).
  Loads 8 bytes into t8 from [-0x3c00]:8 +0x0 (`ld` at 0x267dc).
  Loads 8 bytes into t8 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0x267e4).
  Loads 2 bytes into t8 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598 (`lhu` at 0x267ec).
  Loads 8 bytes into t9 from [-0x3c00]:8 +0x0 (`ld` at 0x26808).
  Loads 8 bytes into t9 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0x26810).
  Loads 2 bytes into t9 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598 (`lhu` at 0x26818).
  Calls `nmi_cpu_eframe_save` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=?, a2=?, a3=? (`jal` at 0x267fc).
  At `beq` at 0x267c0 (target 0x2682c), taken when a0 == a4(=-0x1) and falls through when a0 != a4(=-0x1).
  At `beq` at 0x267d0 (target 0x2682c), taken when s2(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) == a4(=-0x1) and falls through when s2(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) != a4(=-0x1).
  At `blez` at 0x267f0 (target 0x2682c), taken when t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) <= 0 (signed) and falls through when t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) > 0 (signed).
  At `bne` at 0x26824 (target 0x267fc), taken when s0(?) < t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed) and falls through when s0(?) >= t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  Returns v0 = ? (`jr` at 0x26840).

- `nmi_eframes_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26848 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26848-0x26894 (76 bytes).
  Loads 4 bytes into at from sym(numnodes) +0x0 (`lw` at 0x26848).
  Loads 4 bytes into v0 from sym(numnodes) +0x0 (`lw` at 0x2686c).
  Calls `nmi_node_eframe_save` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26860).
  At `blez` at 0x26854 (target 0x26884), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `bne` at 0x2687c (target 0x26860), taken when s0(?) < v0(=[sym(numnodes)]) (signed) and falls through when s0(?) >= v0(=[sym(numnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x2688c).

- `adjust_nmi_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26b04 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26b04-0x26ea4 (928 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x450 (`ld` at 0x26b30).
  Loads 8 bytes into s5 from sym(.srdata) +0x450 (`ld` at 0x26bf0).
  Loads 8 bytes into s5 from sym(.srdata) +0x450 (`ld` at 0x26c20).
  Loads 2 bytes into t0 from ? (base unknown) (`lh` at 0x26b40).
  Loads 2 bytes into t0 from ? (base unknown) (`lh` at 0x26b5c).
  Loads 8 bytes into a5 from sym(.srdata) +0x400 (`ld` at 0x26b44).
  Loads 8 bytes into s4 from sym(.srdata) +0x400 (`ld` at 0x26c30).
  Loads 8 bytes into a4 from sym(.srdata) +0x3f0 (`ld` at 0x26b4c).
  Loads 8 bytes into t9 from sym(.srdata) +0x3f0 (`ld` at 0x26c38).
  Loads 8 bytes into t1 from ? (base unknown) (`ld` at 0x26b68).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x26b74).
  Loads 8 bytes into t2 from (table(0x9600000000000000) | 0x2000) +0xa8 (`ld` at 0x26b7c).
  Loads 8 bytes into s8 from sym(.lit8) +0xb8 (`ld` at 0x26b84).
  Loads 8 bytes into s6 from sym(.lit8) +0xd0 (`ld` at 0x26b88).
  Loads 4 bytes into a0 from sym(maxcpus) +0x0 (`lw` at 0x26b8c).
  Loads 4 bytes into ra from sym(maxcpus) +0x0 (`lw` at 0x26c0c).
  Loads 8 bytes into t0 from (table(0x9600000000000000) | 0x2000) +0x88 (`ld` at 0x26ba0).
  Loads 8 bytes into at from sym(_prom_cleared) +0x120 (`ld` at 0x26ba4).
  Loads 8 bytes into v0 from sym(_prom_cleared) +0x120 (`ld` at 0x26d6c).
  Loads 8 bytes into t2 from ? (base unknown) (`ld` at 0x26bd4).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0x26e74).
  Stores 8 bytes from t2 to sym(_prom_cleared) +0x120 (`sd` at 0x26bd8).
  Loads 8 bytes into a4 from sym(.srdata) +0x440 (`ld` at 0x26be0).
  Loads 8 bytes into t8 from sym(.srdata) +0x440 (`ld` at 0x26d74).
  Stores 8 bytes from t8 to ? (base unknown)  (`sd` at 0x26bf4).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x26d7c).
  Stores 8 bytes from t9 to ? (base unknown) (`sd` at 0x26c04).
  Loads 2 bytes into s5 from ? (base unknown) (`lh` at 0x26c2c).
  Loads 2 bytes into s4 from ? (base unknown) (`lh` at 0x26c48).
  Loads 8 bytes into t9 from ? (base unknown) (`ld` at 0x26c54).
  Loads 1 byte into t9 from ? (base unknown) (`lbu` at 0x26c60).
  Loads 8 bytes into ra from ? (base unknown) (`ld` at 0x26c68).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0x26c70).
  Loads 8 bytes into t9 from table(0x9200000001fc0000) +0x0 (`ld` at 0x26ca0).
  Loads 8 bytes into v0 from sym(.lit8) +0xf0 (`ld` at 0x26cb4).
  Loads 8 bytes into t9 from sym(.lit8) +0xf0 (`ld` at 0x26dcc).
  Loads 8 bytes into a2 from sym(.lit8) +0xf0 (`ld` at 0x26e28).
  Loads 8 bytes into at from sym(.lit8) +0xe0 (`ld` at 0x26cc0).
  Loads 8 bytes into v1 from sym(.lit8) +0xe8 (`ld` at 0x26cc8).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x26d38).
  Loads 8 bytes into a0 from sym(.srdata) +0x3e8 (`ld` at 0x26d3c).
  Loads 8 bytes into a0 from sym(.srdata) +0x3e8 (`ld` at 0x26e7c).
  Loads 8 bytes into a0 from sym(.srdata) +0x3e8 (`ld` at 0x26e80).
  4 such stores of 8 bytes through a2 (?) to ? (base unknown), including `sd` at 0x26d4c, 0x26d50, 0x26d54.
  Loads 8 bytes into s5 from ? (base unknown) (`ld` at 0x26d60).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0x26da4).
  Loads 8 bytes into at from sym(.lit8) +0x2a8 (`ld` at 0x26db8).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x26de0).
  4 such stores of 8 bytes through a4 (?) to ? (base unknown), including `sd` at 0x26df0, 0x26df4, 0x26df8.
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x26b10).
  Calls `getcpuid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26b24).
  Calls `is_fine_dirmode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26c84).
  Calls `qprintf` via direct with a0=sym(.rodata)+45664, a1=?, a2=?, a3=? (`jal` at 0x26d64).
  Calls `is_fine_dirmode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26d80).
  Calls `qprintf` via direct with a0=sym(.rodata)+45664, a1=sym(cpuid_to_compact_node), a2=?, a3=?, a4=sym(nmi_dump), a5=sym(compact_to_nasid_node) (`jal` at 0x26e84).
  Calls `qprintf` via direct with a0=sym(.rodata)+45664, a1=sym(cpuid_to_compact_node), a2=?, a3=?, a4=sym(nmi_dump), a5=sym(compact_to_nasid_node) (`jal` at 0x26e94).
  At `bne` at 0x26bcc (target 0x26bdc), taken when at(=[sym(.sdata)+288]:8) != 0 and falls through when at(=[sym(.sdata)+288]:8) == 0.
  At `bltz` at 0x26bdc (target 0x26e74), taken when s0(=a0) < 0 (signed) and falls through when s0(=a0) >= 0 (signed).
  At `blez` at 0x26be4 (target 0x26e44), taken when a0(=[sym(maxcpus)]) <= 0 (signed) and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  At `bne` at 0x26c00 (target 0x26d80), taken when s4(?) != s3(?) and falls through when s4(?) == s3(?).
  At `beq` at 0x26c1c (target 0x26e44), taken when s0(?) >= ra(=[sym(maxcpus)]) (signed) and falls through when s0(?) < ra(=[sym(maxcpus)]) (signed).
  At `beq` at 0x26ccc (target 0x26e04), taken when 0 >= t9(?) (unsigned) and falls through when 0 < t9(?) (unsigned).
  At `beq` at 0x26cd4 (target 0x26e14), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x26ce8 (target 0x26e20), taken when (a5(?) & 0x20) == 0 and falls through when (a5(?) & 0x20) != 0.
  At `beq` at 0x26d70 (target 0x26bf4), taken when v0(=[sym(.sdata)+288]:8) == s5(?) and falls through when v0(=[sym(.sdata)+288]:8) != s5(?).
  At `beq` at 0x26ddc (target 0x26e28), taken when 0 >= a3(?) (unsigned) and falls through when 0 < a3(?) (unsigned).
  At `beq` at 0x26e04 (target 0x26e38), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x26e78 (target 0x26e94), taken when a3(?) != a4(=sym(nmi_dump)) and falls through when a3(?) == a4(=sym(nmi_dump)).
  Returns v0 = ? (`jr` at 0x26e6c).

- `atomicAddInt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299b0-0x299cc (28 bytes).
  Loads 4 bytes into t2 from a0 (arg0 at entry) +0x0 (`ll` at 0x299b0).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x0  (`sc` at 0x299b8).
  At `beq` at 0x299bc (target 0x299b0), taken when t1(=([a0] + a1)) == 0 and falls through when t1(=([a0] + a1)) != 0.
  Returns v0 = ([a0] + a1) (`jr` at 0x299c4).

- `atomicAddUint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299b0-0x299cc (28 bytes).
  Loads 4 bytes into t2 from a0 (arg0 at entry) +0x0 (`ll` at 0x299b0).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x0  (`sc` at 0x299b8).
  At `beq` at 0x299bc (target 0x299b0), taken when t1(=([a0] + a1)) == 0 and falls through when t1(=([a0] + a1)) != 0.
  Returns v0 = ([a0] + a1) (`jr` at 0x299c4).

- `atomicAddIntHot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299cc-0x299ec (32 bytes).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x299cc).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x299e0).
  Loads 4 bytes into t2 from a0 (arg0 at entry) +0x0 (`ll` at 0x299d0).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x0  (`sc` at 0x299d8).
  At `beq` at 0x299dc (target 0x299d0), taken when t1(=([a0] + a1)) == 0 and falls through when t1(=([a0] + a1)) != 0.
  Returns v0 = ([a0] + a1) (`jr` at 0x299e4).

- `atomicAddUintHot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299cc-0x299ec (32 bytes).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x299cc).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x299e0).
  Loads 4 bytes into t2 from a0 (arg0 at entry) +0x0 (`ll` at 0x299d0).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x0  (`sc` at 0x299d8).
  At `beq` at 0x299dc (target 0x299d0), taken when t1(=([a0] + a1)) == 0 and falls through when t1(=([a0] + a1)) != 0.
  Returns v0 = ([a0] + a1) (`jr` at 0x299e4).

- `atomicClearInt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a0c-0x29a2c (32 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`ll` at 0x29a10).
  Stores 4 bytes from t2 to a0 (arg0 at entry) +0x0 (`sc` at 0x29a18).
  At `beq` at 0x29a1c (target 0x29a10), taken when (v0(=[a0]) & a1(?)) == 0 and falls through when (v0(=[a0]) & a1(?)) != 0.
  Returns v0 = [a0] (`jr` at 0x29a24).

- `atomicClearUint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a0c-0x29a2c (32 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`ll` at 0x29a10).
  Stores 4 bytes from t2 to a0 (arg0 at entry) +0x0 (`sc` at 0x29a18).
  At `beq` at 0x29a1c (target 0x29a10), taken when (v0(=[a0]) & a1(?)) == 0 and falls through when (v0(=[a0]) & a1(?)) != 0.
  Returns v0 = [a0] (`jr` at 0x29a24).

- `bitlock_release_32bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a0c-0x29a2c (32 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`ll` at 0x29a10).
  Stores 4 bytes from t2 to a0 (arg0 at entry) +0x0 (`sc` at 0x29a18).
  At `beq` at 0x29a1c (target 0x29a10), taken when (v0(=[a0]) & a1(?)) == 0 and falls through when (v0(=[a0]) & a1(?)) != 0.
  Returns v0 = [a0] (`jr` at 0x29a24).

- `atomicClearInt64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29a30).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0 (`scd` at 0x29a38).
  At `beq` at 0x29a3c (target 0x29a30), taken when (v0(=[a0]:8) & a1(?)) == 0 and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29a44).

- `atomicClearLong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29a30).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0 (`scd` at 0x29a38).
  At `beq` at 0x29a3c (target 0x29a30), taken when (v0(=[a0]:8) & a1(?)) == 0 and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29a44).

- `atomicClearUint64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29a30).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0 (`scd` at 0x29a38).
  At `beq` at 0x29a3c (target 0x29a30), taken when (v0(=[a0]:8) & a1(?)) == 0 and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29a44).

- `atomicClearUlong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29a30).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0 (`scd` at 0x29a38).
  At `beq` at 0x29a3c (target 0x29a30), taken when (v0(=[a0]:8) & a1(?)) == 0 and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29a44).

- `bitlock_release` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29a30).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0 (`scd` at 0x29a38).
  At `beq` at 0x29a3c (target 0x29a30), taken when (v0(=[a0]:8) & a1(?)) == 0 and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29a44).

- `atomicAddInt64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ab8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ab8-0x29ad4 (28 bytes).
  Loads 8 bytes into t2 from a0 (arg0 at entry) +0x0 (`lld` at 0x29ab8).
  Stores 8 bytes from t1 to a0 (arg0 at entry) +0x0  (`scd` at 0x29ac0).
  At `beq` at 0x29ac4 (target 0x29ab8), taken when t1(=([a0]:8 + a1)) == 0 and falls through when t1(=([a0]:8 + a1)) != 0.
  Returns v0 = ([a0]:8 + a1) (`jr` at 0x29acc).

- `atomicAddUint64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ab8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ab8-0x29ad4 (28 bytes).
  Loads 8 bytes into t2 from a0 (arg0 at entry) +0x0 (`lld` at 0x29ab8).
  Stores 8 bytes from t1 to a0 (arg0 at entry) +0x0  (`scd` at 0x29ac0).
  At `beq` at 0x29ac4 (target 0x29ab8), taken when t1(=([a0]:8 + a1)) == 0 and falls through when t1(=([a0]:8 + a1)) != 0.
  Returns v0 = ([a0]:8 + a1) (`jr` at 0x29acc).

- `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ad4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ad4-0x29af4 (32 bytes).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x29ad4).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x29ae8).
  Loads 8 bytes into t2 from a0 (arg0 at entry) +0x0 (`lld` at 0x29ad8).
  Stores 8 bytes from t1 to a0 (arg0 at entry) +0x0  (`scd` at 0x29ae0).
  At `beq` at 0x29ae4 (target 0x29ad8), taken when t1(=([a0]:8 + a1)) == 0 and falls through when t1(=([a0]:8 + a1)) != 0.
  Returns v0 = ([a0]:8 + a1) (`jr` at 0x29aec).

- `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ad4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ad4-0x29af4 (32 bytes).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x29ad4).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x29ae8).
  Loads 8 bytes into t2 from a0 (arg0 at entry) +0x0 (`lld` at 0x29ad8).
  Stores 8 bytes from t1 to a0 (arg0 at entry) +0x0  (`scd` at 0x29ae0).
  At `beq` at 0x29ae4 (target 0x29ad8), taken when t1(=([a0]:8 + a1)) == 0 and falls through when t1(=([a0]:8 + a1)) != 0.
  Returns v0 = ([a0]:8 + a1) (`jr` at 0x29aec).

- `test_and_set_int64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29d20-0x29d3c (28 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29d20).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0  (`scd` at 0x29d28).
  At `beq` at 0x29d2c (target 0x29d20), taken when t2(=a1) == 0 and falls through when t2(=a1) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29d34).

- `test_and_set_long` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29d20-0x29d3c (28 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29d20).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0  (`scd` at 0x29d28).
  At `beq` at 0x29d2c (target 0x29d20), taken when t2(=a1) == 0 and falls through when t2(=a1) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29d34).

- `test_and_set_ptr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29d20-0x29d3c (28 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29d20).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x0  (`scd` at 0x29d28).
  At `beq` at 0x29d2c (target 0x29d20), taken when t2(=a1) == 0 and falls through when t2(=a1) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29d34).

- `swap_int64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e08-0x29e24 (28 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29e08).
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x0  (`scd` at 0x29e10).
  At `beq` at 0x29e14 (target 0x29e08), taken when t0(=a1) == 0 and falls through when t0(=a1) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29e1c).

- `swap_long` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e08-0x29e24 (28 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29e08).
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x0  (`scd` at 0x29e10).
  At `beq` at 0x29e14 (target 0x29e08), taken when t0(=a1) == 0 and falls through when t0(=a1) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29e1c).

- `swap_ptr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e08-0x29e24 (28 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29e08).
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x0  (`scd` at 0x29e10).
  At `beq` at 0x29e14 (target 0x29e08), taken when t0(=a1) == 0 and falls through when t0(=a1) != 0.
  Returns v0 = [a0]:8 (`jr` at 0x29e1c).

- `compare_and_swap_int64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29e24).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x0  (`scd` at 0x29e30).
  At `bne` at 0x29e28 (target 0x29e44), taken when t0(=[a0]:8) != a1 and falls through when t0(=[a0]:8) == a1.
  At `beq` at 0x29e34 (target 0x29e24), taken when v0(=a2) == 0 and falls through when v0(=a2) != 0.
  Returns v0 = a2 (`jr` at 0x29e3c).
  Returns v0 = 0x0 (`jr` at 0x29e44).

- `compare_and_swap_kt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29e24).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x0  (`scd` at 0x29e30).
  At `bne` at 0x29e28 (target 0x29e44), taken when t0(=[a0]:8) != a1 and falls through when t0(=[a0]:8) == a1.
  At `beq` at 0x29e34 (target 0x29e24), taken when v0(=a2) == 0 and falls through when v0(=a2) != 0.
  Returns v0 = a2 (`jr` at 0x29e3c).
  Returns v0 = 0x0 (`jr` at 0x29e44).

- `compare_and_swap_long` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x0 (`lld` at 0x29e24).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x0  (`scd` at 0x29e30).
  At `bne` at 0x29e28 (target 0x29e44), taken when t0(=[a0]:8) != a1 and falls through when t0(=[a0]:8) == a1.
  At `beq` at 0x29e34 (target 0x29e24), taken when v0(=a2) == 0 and falls through when v0(=a2) != 0.
  Returns v0 = a2 (`jr` at 0x29e3c).
  Returns v0 = 0x0 (`jr` at 0x29e44).
