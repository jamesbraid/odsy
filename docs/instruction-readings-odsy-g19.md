# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These facts describe software behavior in the named build; they do not establish hardware behavior.

Skipped 44,479 located rows and 5,577 understood rows because those already have facts-only or documented entries, plus 204 named-only or undocumented rows with an exact binary, member, and routine entry in the documentation.

- `_endexceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  It occupies 80 bytes.
- `_exceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  It occupies 80 bytes.
- `_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  It occupies 80 bytes.
- `eutlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd81c-0xd880 (100 bytes).
  It occupies 100 bytes.
- `elpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd930 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd930-0xd980 (80 bytes).
  It occupies 80 bytes.
- `eutlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdba8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdba8-0xdbb0 (8 bytes).
  It occupies 8 bytes.
- `save_err_router_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13274 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13274-0x1340c (408 bytes).
  It occupies 408 bytes.
  4 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x17, including `lbu` at 0x13298, `lbu` at 0x132f8, `lbu` at 0x133b0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x13310, `lw` at 0x13350, `lw` at 0x13390.
  The `lbu` at 0x13320 loads 1 byte from ?.
  The `ld` at 0x1332c loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x13344 loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x13408 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `jal` at 0x13368 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x1337c calls klcfg_discover_route with a0=ret(find_lboard), a1=a1 at entry (arg1), a2=0x0, a3=?.
  The `jal` at 0x133a4 calls save_router_err with a0=a0 at entry (arg0), a1=ret(klcfg_discover_route), a2=?, a3=?.
  The `jal` at 0x133ec calls chk_for_pebrick with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x132bc targets 0x133b4, is taken when v0(=[a1+23]:1) <= 0 (signed), and falls through when v0(=[a1+23]:1) > 0 (signed).
  The `beq` branch at 0x132f0 targets 0x133fc and is always taken.
  The `beq` branch at 0x13308 targets 0x133b4, is taken when s0(?) >= v0(=[a1+23]:1) (signed), and falls through when s0(?) < v0(=[a1+23]:1) (signed).
  The `bne` branch at 0x13324 targets 0x132fc, is taken when s6(=0x9) != t9(?), and falls through when s6(=0x9) == t9(?).
  The `beq` branch at 0x1333c targets 0x133ec, is taken when t8(=0xc000) == t9(?), and falls through when t8(=0xc000) != t9(?).
  The `beq` branch at 0x1335c targets 0x13368, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x13370 targets 0x132f8, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x13388 targets 0x133e4, is taken when a1(=-0x1) == v0(=ret(klcfg_discover_route)), and falls through when a1(=-0x1) != v0(=ret(klcfg_discover_route)).
  The `beq` branch at 0x133ac targets 0x132fc and is always taken.
  The `beq` branch at 0x133e4 targets 0x132fc and is always taken.
  The `beq` branch at 0x133f4 targets 0x13368 and is always taken.
  The `beq` branch at 0x13404 targets 0x13314 and is always taken.
  The return at 0x133dc has v0 = [a1+23]:1.
- `save_router_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1340c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1340c-0x13544 (312 bytes).
  It occupies 312 bytes.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x134dc, `sd` at 0x13540.
  The `jal` at 0x13430 calls bzero with a0=a2 at entry (arg2), a1=0x58, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1345c calls vector_read_node with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=0x0, a4=sp-96.
  The `jal` at 0x1350c calls vector_read_node with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=?.
  The `bltz` branch at 0x13478 targets 0x134d0, is taken when s3(=ret(vector_read_node)) < 0 (signed), and falls through when s3(=ret(vector_read_node)) >= 0 (signed).
  The `beq` branch at 0x13488 targets 0x134e0, is taken when (at(?) & v0(?)) == 0, and falls through when (at(?) & v0(?)) != 0.
  The `bne` branch at 0x1349c targets 0x13478, is taken when s1(?) < 0x9 (signed), and falls through when s1(?) >= 0x9 (signed).
  The `beq` branch at 0x134d8 targets 0x13490 and is always taken.
  The `bltz` branch at 0x13518 targets 0x1353c, is taken when v0(=ret(vector_read_node)) < 0 (signed), and falls through when v0(=ret(vector_read_node)) >= 0 (signed).
  The `bne` branch at 0x1352c targets 0x13478, is taken when a0(?) < 0x9 (signed), and falls through when a0(?) >= 0x9 (signed).
  The `beq` branch at 0x13534 targets 0x134a8 and is always taken.
  The `beq` branch at 0x1353c targets 0x13520 and is always taken.
  The return at 0x134c8 has v0 = one of ?, ret(vector_read_node).
- `save_err_xbow_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13544 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13544-0x1362c (232 bytes).
  It occupies 232 bytes.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x17, including `lbu` at 0x13558, `lbu` at 0x13610.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x135a4, `lw` at 0x135f4.
  The `lbu` at 0x135b4 loads 1 byte from ?.
  The `jal` at 0x13608 calls save_xbow_err with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?, a4=[a1+23]:1.
  The `blez` branch at 0x1356c targets 0x135d0, is taken when a4(=[a1+23]:1) <= 0 (signed), and falls through when a4(=[a1+23]:1) > 0 (signed).
  The `beq` branch at 0x135b8 targets 0x135f4, is taken when s5(=0x4) == t8(?), and falls through when s5(=0x4) != t8(?).
  The `bne` branch at 0x135c8 targets 0x135a0, is taken when s0(?) < a4(=[a1+23]:1) (signed), and falls through when s0(?) >= a4(=[a1+23]:1) (signed).
  The `bne` branch at 0x1361c targets 0x135a0, is taken when s0(?) < a4(=[a1+23]:1) (signed), and falls through when s0(?) >= a4(=[a1+23]:1) (signed).
  The `beq` branch at 0x13624 targets 0x135d4 and is always taken.
  The return at 0x135ec has v0 = one of ?, ret(save_xbow_err).
- `save_hub_pi_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1362c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1362c-0x13704 (216 bytes).
  It occupies 216 bytes.
  The `ld` at 0x13650 loads 8 bytes from a0 (arg0 at entry) +0x400.
  3 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x10, including `sd` at 0x13654, `sd` at 0x136f4, `sd` at 0x13700.
  The `ld` at 0x13658 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x13668 loads 8 bytes from a0 (arg0 at entry) +0x58.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x430, including `ld` at 0x13674, `ld` at 0x13688.
  The `sd` at 0x1368c stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `ld` at 0x13690 loads 8 bytes from a0 (arg0 at entry) +0x440.
  The `sd` at 0x13694 stores 8 bytes to a1 (arg1 at entry) +0x38.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x450, including `ld` at 0x13698, `ld` at 0x136a8.
  The `sd` at 0x136ac stores 8 bytes to a1 (arg1 at entry) +0x30.
  The `ld` at 0x136b0 loads 8 bytes from a0 (arg0 at entry) +0x460.
  The `sd` at 0x136b4 stores 8 bytes to a1 (arg1 at entry) +0x40.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x4c8, including `ld` at 0x136b8, `ld` at 0x136c8.
  The `sd` at 0x136cc stores 8 bytes to a1 (arg1 at entry) +0x48.
  The `ld` at 0x136d0 loads 8 bytes from a0 (arg0 at entry) +0x4d0.
  The `sd` at 0x136d4 stores 8 bytes to a1 (arg1 at entry) +0x50.
  The `jal` at 0x13648 calls bzero with a0=a1 at entry (arg1), a1=0x60, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x13660 targets 0x136e8, is taken when at(=[a0+80]:8) == 0, and falls through when at(=[a0+80]:8) != 0.
  The `beq` branch at 0x1366c targets 0x136f8, is taken when v0(=[a0+88]:8) == 0, and falls through when v0(=[a0+88]:8) != 0.
  The `beq` branch at 0x13680 targets 0x13698, is taken when (a1(=0x8000000000000000) & v1(=[a0+1072]:8)) == 0, and falls through when (a1(=0x8000000000000000) & v1(=[a0+1072]:8)) != 0.
  The `beq` branch at 0x136a0 targets 0x136b8, is taken when (a1(=0x8000000000000000) & a3(=[a0+1104]:8)) == 0, and falls through when (a1(=0x8000000000000000) & a3(=[a0+1104]:8)) != 0.
  The `beq` branch at 0x136c0 targets 0x136d8, is taken when (a1(=0x8000000000000000) & a6(=[a0+1224]:8)) == 0, and falls through when (a1(=0x8000000000000000) & a6(=[a0+1224]:8)) != 0.
  The `beq` branch at 0x136f0 targets 0x13668 and is always taken.
  The `beq` branch at 0x136fc targets 0x13674 and is always taken.
  The return at 0x136e0 has v0 = [a0+88]:8.
- `save_hub_md_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13704 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13704-0x137f0 (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0x13730 loads 8 bytes from a0 (arg0 at entry) +0x7c0010.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x8, including `sd` at 0x1374c, `sd` at 0x137c8.
  The `ld` at 0x13750 loads 8 bytes from a0 (arg0 at entry) +0x7e0010.
  The `sd` at 0x13768 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `ld` at 0x1376c loads 8 bytes from a0 (arg0 at entry) +0x7c0020.
  The `sd` at 0x1377c stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `ld` at 0x13780 loads 8 bytes from a0 (arg0 at entry) +0x780040.
  The `sd` at 0x1378c stores 8 bytes to a1 (arg1 at entry) +0x38.
  The `ld` at 0x13790 loads 8 bytes from a0 (arg0 at entry) +0x780048.
  The `sd` at 0x13794 stores 8 bytes to a1 (arg1 at entry) +0x40.
  The `jal` at 0x13720 calls bzero with a0=a1 at entry (arg1), a1=0x58, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x13744 targets 0x137a4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x13760 targets 0x137cc, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `beq` branch at 0x13774 targets 0x13780, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x13784 targets 0x13798, is taken when a2(=[a0+7864384]:8) == 0, and falls through when a2(=[a0+7864384]:8) != 0.
  The `bltz` branch at 0x137ac targets 0x1374c, is taken when t3(=([a0+8126480]:8 << 0x1)) < 0 (signed), and falls through when t3(=([a0+8126480]:8 << 0x1)) >= 0 (signed).
  The `bltz` branch at 0x137b4 targets 0x1374c, is taken when a2(=([a0+8126480]:8 << 0x2)) < 0 (signed), and falls through when a2(=([a0+8126480]:8 << 0x2)) >= 0 (signed).
  The `bgez` branch at 0x137bc targets 0x13750, is taken when a7(=([a0+8126480]:8 << 0x3)) >= 0 (signed), and falls through when a7(=([a0+8126480]:8 << 0x3)) < 0 (signed).
  The `beq` branch at 0x137c4 targets 0x13750 and is always taken.
  The `bne` branch at 0x137d8 targets 0x13768, is taken when (a5(?) & 0x3) != 0, and falls through when (a5(?) & 0x3) == 0.
  The `bne` branch at 0x137e0 targets 0x13768, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x137e8 targets 0x1376c and is always taken.
  The return at 0x1379c has v0 = ret(bzero).
- `save_hub_io_crb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x137f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x137f0-0x1384c (92 bytes).
  It occupies 92 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x13814, `ld` at 0x1381c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x13818, `sd` at 0x13840.
  The `bne` branch at 0x1383c targets 0x13800, is taken when a3(?) < 0xf (signed), and falls through when a3(?) >= 0xf (signed).
  The return at 0x13844 has v0 = ?.
- `save_hub_io_ieph` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1384c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1384c-0x13868 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x13854 loads 8 bytes from a0 (arg0 at entry) +0x400220.
  The `sd` at 0x13858 stores 8 bytes to a1 (arg1 at entry) +0xb8.
  The `ld` at 0x1385c loads 8 bytes from a0 (arg0 at entry) +0x400228.
  The `sd` at 0x13864 stores 8 bytes to a1 (arg1 at entry) +0xc0.
  The return at 0x13860 has v0 = [a0+4194848]:8.
- `save_hub_io_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13868 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13868-0x1390c (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x1389c loads 8 bytes from a0 (arg0 at entry) +0x400008.
  The `sd` at 0x138a4 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x138a8 loads 8 bytes from a0 (arg0 at entry) +0x410000.
  The `sd` at 0x138ac stores 8 bytes to a1 (arg1 at entry) +0x88.
  The `ld` at 0x138b0 loads 8 bytes from a0 (arg0 at entry) +0x410008.
  The `sd` at 0x138b4 stores 8 bytes to a1 (arg1 at entry) +0x98.
  The `ld` at 0x138bc loads 8 bytes from a0 (arg0 at entry) +0x410010.
  The `sd` at 0x138c4 stores 8 bytes to a1 (arg1 at entry) +0xa8.
  The `ld` at 0x138c8 loads 8 bytes from a0 (arg0 at entry) +0x420000.
  The `sd` at 0x138cc stores 8 bytes to a1 (arg1 at entry) +0x90.
  The `ld` at 0x138d0 loads 8 bytes from a0 (arg0 at entry) +0x420008.
  The `sd` at 0x138d4 stores 8 bytes to a1 (arg1 at entry) +0xa0.
  The `ld` at 0x138dc loads 8 bytes from a0 (arg0 at entry) +0x420010.
  The `sd` at 0x138e8 stores 8 bytes to a1 (arg1 at entry) +0xb0.
  The `jal` at 0x13884 calls bzero with a0=a1 at entry (arg1), a1=0xd0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x138e4 calls save_hub_io_crb with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+4259840]:8, a3=[a0+4194312]:8.
  The `jal` at 0x138f0 calls save_hub_io_ieph with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x13904 has v0 = ret(save_hub_io_ieph).
- `save_hub_err_ext` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1390c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1390c-0x139c4 (184 bytes).
  It occupies 184 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x13958, `ld` at 0x13980, `ld` at 0x139a8.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1395c, `sd` at 0x13988, `sd` at 0x139b0.
  The `jal` at 0x13928 calls bzero with a0=a1 at entry (arg1), a1=0xc0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x13960 targets 0x1398c, is taken when a2(?) >= 0xf (signed), and falls through when a2(?) < 0xf (signed).
  The `bne` branch at 0x13984 targets 0x1393c, is taken when a2(?) < 0xf (signed), and falls through when a2(?) >= 0xf (signed).
  The `bne` branch at 0x139ac targets 0x13990, is taken when a2(?) < 0x9 (signed), and falls through when a2(?) >= 0x9 (signed).
  The return at 0x139bc has v0 = ?.
- `save_hub_ni_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x139c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x139c4-0x13a28 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0x139f0 loads 8 bytes from a0 (arg0 at entry) +0x680100.
  The `sd` at 0x13a00 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x13a04 loads 8 bytes from a0 (arg0 at entry) +0x680108.
  The `sd` at 0x13a08 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x13a0c loads 8 bytes from a0 (arg0 at entry) +0x680110.
  The `sd` at 0x13a10 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `ld` at 0x13a14 loads 8 bytes from a0 (arg0 at entry) +0x680118.
  The `sd` at 0x13a18 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `jal` at 0x139e0 calls bzero with a0=a1 at entry (arg1), a1=0x30, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x139fc targets 0x13a1c, is taken when at(=[a0+6816000]:8) == 0, and falls through when at(=[a0+6816000]:8) != 0.
  The return at 0x13a20 has v0 = ret(bzero).
- `save_hub_lb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13a28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13a28-0x13ab0 (136 bytes).
  It occupies 136 bytes.
  The `ld` at 0x13a54 loads 8 bytes from a0 (arg0 at entry) +0x604040.
  The `sd` at 0x13a58 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x13a5c loads 8 bytes from a0 (arg0 at entry) +0x604050.
  The `ld` at 0x13a78 loads 8 bytes from a0 (arg0 at entry) +0x60c020.
  The `sd` at 0x13a88 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `sd` at 0x13a98 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x13a9c loads 8 bytes from a0 (arg0 at entry) +0x604058.
  The `sd` at 0x13aa0 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `ld` at 0x13aa4 loads 8 bytes from a0 (arg0 at entry) +0x604060.
  The `sd` at 0x13aac stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `jal` at 0x13a44 calls bzero with a0=a1 at entry (arg1), a1=0x38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x13a70 targets 0x13a98, is taken when at(=([a0+6307920]:8 << 0x13)) < 0 (signed), and falls through when at(=([a0+6307920]:8 << 0x13)) >= 0 (signed).
  The `beq` branch at 0x13a80 targets 0x13a8c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x13aa8 targets 0x13a78 and is always taken.
  The return at 0x13a90 has v0 = [a0+6307904]:8.
- `save_hub_xb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13ab0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13ab0-0x13bf8 (328 bytes).
  It occupies 328 bytes.
  The `ld` at 0x13adc loads 8 bytes from a0 (arg0 at entry) +0x700090.
  The `sd` at 0x13b14 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x13b20 loads 8 bytes from table(sym(.rodata)+7952) +0x0.
  The `jal` at 0x13acc calls bzero with a0=a1 at entry (arg1), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13b38 calls printf with a0=sym(.rodata)+7952, a1=?, a2=?, a3=[a0+7340176]:8, a4=table(sym(.rodata)+7952).
  The `jal` at 0x13b40 calls printf with a0=sym(.rodata)+7952, a1=?, a2=?, a3=?.
  The `bltz` branch at 0x13ae4 targets 0x13b00, is taken when at(=([a0+7340176]:8 << 0x33)) < 0 (signed), and falls through when at(=([a0+7340176]:8 << 0x33)) >= 0 (signed).
  The `beq` branch at 0x13b18 targets 0x13b2c, is taken when a1(?) >= 0x10 (unsigned), and falls through when a1(?) < 0x10 (unsigned).
  The `beq` branch at 0x13b48 targets 0x13af0 and is always taken.
  The return at 0x13af8 has v0 = one of ret(bzero), ret(printf).
  The instructions from 0x13b50 to 0x13bf4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x13b24 uses a jump table whose successors are unresolved.
- `save_hub_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13bf8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13bf8-0x13d98 (416 bytes).
  It occupies 416 bytes.
  The `lw` at 0x13c0c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x13c68 loads 8 bytes from ?.
  The `lw` at 0x13ce4 loads 4 bytes from a1 (arg1 at entry) +0x4f4.
  The `jal` at 0x13c78 calls save_hub_pi_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13c84 calls bzero with a0=?, a1=0x60, a2=?, a3=?.
  The `jal` at 0x13c9c calls save_hub_md_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13ca8 calls save_hub_io_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13cb8 calls save_hub_ni_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13cc4 calls save_hub_lb_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13cd0 calls save_hub_xb_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13d04 calls save_hub_err_ext with a0=?, a1=?, a2=0x9600000000000000, a3=0xffffffffff.
  The `jal` at 0x13d24 calls save_hub_pi_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13d34 calls save_hub_pi_error with a0=table(0x200000), a1=?, a2=?, a3=?.
  The `jal` at 0x13d58 calls bzero with a0=?, a1=0x60, a2=?, a3=?.
  The `jal` at 0x13d68 calls save_hub_pi_error with a0=table(0x200000), a1=?, a2=?, a3=?.
  The `jal` at 0x13d78 calls clear_hub_pi_error with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=[a2+12], a6=(a0 << 0x21), a7=0x9200000001800000.
  The `jal` at 0x13d80 calls clear_hub_pi_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13d88 calls clear_hub_md_error with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x13c34 targets 0x13d4c, is taken when (a5(=[a2+12]) & 0x1) == 0, and falls through when (a5(=[a2+12]) & 0x1) != 0.
  The `beq` branch at 0x13c44 targets 0x13d44, is taken when s5(=a0) == t0(=-0x1), and falls through when s5(=a0) != t0(=-0x1).
  The `beq` branch at 0x13c58 targets 0x13d78, is taken when a5(=[a2+12]) == a4(=0x2), and falls through when a5(=[a2+12]) != a4(=0x2).
  The `bne` branch at 0x13c60 targets 0x13d24, is taken when s5(=a0) != t0(=-0x1), and falls through when s5(=a0) == t0(=-0x1).
  The `bltz` branch at 0x13c70 targets 0x13d54, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x13d3c targets 0x13c90 and is always taken.
  The `beq` branch at 0x13d44 targets 0x13c50 and is always taken.
  The `beq` branch at 0x13d4c targets 0x13c40 and is always taken.
  The `beq` branch at 0x13d70 targets 0x13c90 and is always taken.
  The `beq` branch at 0x13d90 targets 0x13c60 and is always taken.
  The return at 0x13d1c has v0 = ret(save_hub_err_ext).
- `save_bridge_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13d98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13d98-0x13ff4 (604 bytes).
  It occupies 604 bytes.
  The `lw` at 0x13dc0 loads 4 bytes from a3 (arg3 at entry) +0xc.
  23 such `lw` accesses load 4 bytes from ?, including `lw` at 0x13de0, `lw` at 0x13de8, `lw` at 0x13df0.
  The `sw` at 0x13de4 stores 4 bytes to (a1 + one of 0x8, 0x90) +0x0.
  The `sw` at 0x13dec stores 4 bytes to (a1 + one of 0xc, 0x94) +0x0.
  The `sw` at 0x13df4 stores 4 bytes to (a1 + one of 0x10, 0x98) +0x0.
  The `sw` at 0x13dfc stores 4 bytes to (a1 + one of 0x14, 0x9c) +0x0.
  The `sw` at 0x13e04 stores 4 bytes to (a1 + one of 0x18, 0xa0) +0x0.
  The `sw` at 0x13e0c stores 4 bytes to (a1 + one of 0x1c, 0xa4) +0x0.
  The `sw` at 0x13e14 stores 4 bytes to (a1 + one of 0x20, 0xa8) +0x0.
  The `sw` at 0x13e1c stores 4 bytes to (a1 + one of 0x24, 0xac) +0x0.
  The `sw` at 0x13e24 stores 4 bytes to (a1 + one of 0x28, 0xb0) +0x0.
  2 such `sd` accesses store 8 bytes to (a1 + one of 0x30, 0xb8) +0x0, including `sd` at 0x13e34, `sd` at 0x13f30.
  The `sw` at 0x13eac stores 4 bytes to (a1 + one of 0x38, 0xc0) +0x0.
  The `sw` at 0x13ed8 stores 4 bytes to (a1 + one of 0x3c, 0xc4) +0x0.
  The `sw` at 0x13ee0 stores 4 bytes to (a1 + one of 0x40, 0xc8) +0x0.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x13ee4, `ld` at 0x13eec, `ld` at 0x13ef4.
  The `sd` at 0x13ee8 stores 8 bytes to (a1 + one of 0x48, 0xd0) +0x0.
  The `sd` at 0x13ef0 stores 8 bytes to (a1 + one of 0x50, 0xd8) +0x0.
  The `sd` at 0x13ef8 stores 8 bytes to (a1 + one of 0x58, 0xe0) +0x0.
  The `sd` at 0x13f00 stores 8 bytes to (a1 + one of 0x60, 0xe8) +0x0.
  The `sd` at 0x13f08 stores 8 bytes to (a1 + one of 0x68, 0xf0) +0x0.
  The `sd` at 0x13f10 stores 8 bytes to (a1 + one of 0x70, 0xf8) +0x0.
  The `sd` at 0x13f18 stores 8 bytes to (a1 + one of 0x78, 0x100) +0x0.
  The `sd` at 0x13f20 stores 8 bytes to (a1 + one of 0x80, 0x108) +0x0.
  The `sd` at 0x13f28 stores 8 bytes to (a1 + one of 0x88, 0x110) +0x0.
  The `jal` at 0x13dd8 calls bzero with a0=(a1 + one of 0x8, 0x90), a1=0x88, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=(a0 << 0x21), a6=-0x37.
  The `jal` at 0x13fe4 calls pcireg_mode_get with a0=?, a1=one of 0x0, 0x1, a2=0x24, a3=?.
  The `beq` branch at 0x13da8 targets 0x13f48, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x13dc8 targets 0x13f54, is taken when (t8(=[a3+12]) & 0x1) == 0, and falls through when (t8(=[a3+12]) & 0x1) != 0.
  The `beq` branch at 0x13e48 targets 0x13f5c, is taken when a0(=0xd102) == t9(?), and falls through when a0(=0xd102) != t9(?).
  The `bne` branch at 0x13e5c targets 0x13f38, is taken when a6(?) != a7(=0xd112), and falls through when a6(?) == a7(=0xd112).
  The `bne` branch at 0x13e74 targets 0x13f38, is taken when a2(=0x24) != a7(?), and falls through when a2(=0x24) == a7(?).
  The `beq` branch at 0x13e90 targets 0x13f7c, is taken when a0(=0xd102) == t0(?), and falls through when a0(=0xd102) != t0(?).
  The `beq` branch at 0x13ea4 targets 0x13f98, is taken when t1(?) == t2(=0xd112), and falls through when t1(?) != t2(=0xd112).
  The `beq` branch at 0x13ebc targets 0x13fb4, is taken when a0(=0xd102) == t2(?), and falls through when a0(=0xd102) != t2(?).
  The `beq` branch at 0x13ed0 targets 0x13fd0, is taken when t3(?) == t8(=0xd112), and falls through when t3(?) != t8(=0xd112).
  The `beq` branch at 0x13f4c targets 0x13dc0 and is always taken.
  The `beq` branch at 0x13f54 targets 0x13dd4 and is always taken.
  The `bne` branch at 0x13f6c targets 0x13e50, is taken when a2(=0x24) != t8(?), and falls through when a2(=0x24) == t8(?).
  The `beq` branch at 0x13f74 targets 0x13e7c and is always taken.
  The `bne` branch at 0x13f88 targets 0x13e98, is taken when a2(=0x24) != t9(?), and falls through when a2(=0x24) == t9(?).
  The `beq` branch at 0x13f90 targets 0x13fac and is always taken.
  The `bne` branch at 0x13fa4 targets 0x13eac, is taken when a2(=0x24) != ra(?), and falls through when a2(=0x24) == ra(?).
  The `beq` branch at 0x13fac targets 0x13eac and is always taken.
  The `bne` branch at 0x13fc0 targets 0x13ec4, is taken when a2(=0x24) != at(?), and falls through when a2(=0x24) == at(?).
  The `beq` branch at 0x13fc8 targets 0x13fe4 and is always taken.
  The `bne` branch at 0x13fdc targets 0x13ed8, is taken when a2(=0x24) != v0(?), and falls through when a2(=0x24) == v0(?).
  The `beq` branch at 0x13fec targets 0x13ed8 and is always taken.
  The return at 0x13f40 has v0 = ?.
- `save_xbow_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13ff4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13ff4-0x140a8 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x13ff4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lw` at 0x1403c loads 4 bytes from (a0 << 0x21) -0x6dffffff1ffffff4.
  The `sw` at 0x14040 stores 4 bytes to (a1 + one of 0x8, 0x58) +0x0.
  The `lw` at 0x14044 loads 4 bytes from (a0 << 0x21) -0x6dffffff1fffffec.
  The `sw` at 0x14048 stores 4 bytes to (a1 + one of 0xc, 0x5c) +0x0.
  The `lw` at 0x1404c loads 4 bytes from (a0 << 0x21) -0x6dffffff1fffffe4.
  The `sw` at 0x14050 stores 4 bytes to (a1 + one of 0x10, 0x60) +0x0.
  The `lw` at 0x14054 loads 4 bytes from (a0 << 0x21) -0x6dffffff1fffffbc.
  The `sw` at 0x14060 stores 4 bytes to (a1 + one of 0x14, 0x64) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x14080, `lw` at 0x1408c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x14088, `sw` at 0x14098.
  The `jal` at 0x14020 calls bzero with a0=(a1 + one of 0x8, 0x58), a1=0x50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x14010 targets 0x1401c, is taken when (at(=[a2+12]) & 0x1) == 0, and falls through when (at(=[a2+12]) & 0x1) != 0.
  The `bne` branch at 0x14094 targets 0x14064, is taken when a1(?) < 0x8 (signed), and falls through when a1(?) >= 0x8 (signed).
  The return at 0x140a0 has v0 = [(a0 << 0x21)-7926335340413976508].
- `kl_error_show_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x140a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x140a8-0x142e4 (572 bytes).
  It occupies 572 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x140f0, `ld` at 0x14110.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x14124, `lw` at 0x14194, `lw` at 0x141b0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1416c, `lbu` at 0x14184, `lbu` at 0x141d4.
  The `lw` at 0x14258 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x14260 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `jal` at 0x140dc calls kl_perr with a0=0x1, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1425c calls kl_perr_dumpbuf with a0=[a1]:8, a1=[a1+8], a2=?, a3=?.
  The `jal` at 0x14278 calls show_err_io_comp with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40.
  The `jal` at 0x1428c calls show_err_node_comp with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40.
  The `jal` at 0x1429c calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x142b0 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=0xc000.
  The `jal` at 0x142c4 calls show_err_router_comp with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40.
  The `jal` at 0x142d4 calls show_err_xbow_comp with a0=?, a1=a1 at entry (arg1), a2=0x20, a3=0x70, a4=0x80, a5=0x30, a6=0x40.
  The `beq` branch at 0x140c0 targets 0x1429c, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x14108 targets 0x142b0, is taken when a2(?) == a3(=0xc000), and falls through when a2(?) != a3(=0xc000).
  The `beq` branch at 0x14130 targets 0x1413c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x14140 targets 0x1424c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x14154 targets 0x1416c and is always taken.
  The `beq` branch at 0x14164 targets 0x1424c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1417c targets 0x141b0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x1418c targets 0x141d4, is taken when (t9(?) & 0x4) == 0, and falls through when (t9(?) & 0x4) != 0.
  The `bne` branch at 0x141a0 targets 0x1415c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x141a8 targets 0x14160 and is always taken.
  The `beq` branch at 0x141bc targets 0x14164, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x141cc targets 0x14164 and is always taken.
  The `beq` branch at 0x141ec targets 0x14288, is taken when a0(?) == a1(=0x10), and falls through when a0(?) != a1(=0x10).
  The `beq` branch at 0x141f4 targets 0x14274, is taken when a0(?) == a2(=0x20), and falls through when a0(?) != a2(=0x20).
  The `beq` branch at 0x141fc targets 0x14274, is taken when a0(?) == a3(=0x70), and falls through when a0(?) != a3(=0x70).
  The `beq` branch at 0x14204 targets 0x14274, is taken when a0(?) == a4(=0x80), and falls through when a0(?) != a4(=0x80).
  The `beq` branch at 0x1420c targets 0x142c0, is taken when a0(?) == a5(=0x30), and falls through when a0(?) != a5(=0x30).
  The `beq` branch at 0x14214 targets 0x142d4, is taken when a0(?) == a6(=0x40), and falls through when a0(?) != a6(=0x40).
  The `beq` branch at 0x14234 targets 0x14164, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x14244 targets 0x14164 and is always taken.
  The `beq` branch at 0x14280 targets 0x14220 and is always taken.
  The `beq` branch at 0x14294 targets 0x14220 and is always taken.
  The `beq` branch at 0x142a8 targets 0x140c8 and is always taken.
  The `beq` branch at 0x142b8 targets 0x1413c and is always taken.
  The `beq` branch at 0x142cc targets 0x14220 and is always taken.
  The `beq` branch at 0x142dc targets 0x14220 and is always taken.
  The return at 0x1426c has v0 = ret(kl_perr_dumpbuf).
- `kl_error_show` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x142e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x142e4-0x14388 (164 bytes).
  It occupies 164 bytes.
  The `lh` at 0x1433c loads 2 bytes from ?.
  The `lw` at 0x1436c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `ld` at 0x14374 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `jal` at 0x14304 calls kl_perr_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14310 calls kl_perr with a0=0x10, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x14338 calls kl_error_show_node with a0=?, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x14360 calls kl_perr with a0=0x10, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x14370 calls kl_perr_dumpbuf with a0=[a2]:8, a1=[a2+8], a2=?, a3=?.
  The `blez` branch at 0x14320 targets 0x14354, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `bne` branch at 0x1434c targets 0x14330, is taken when s0(?) < a1(=[sym(numnodes)]) (signed), and falls through when s0(?) >= a1(=[sym(numnodes)]) (signed).
  The return at 0x14380 has v0 = ret(kl_perr_dumpbuf).
- `kl_dump_hw_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14388 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14388-0x143b8 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x143a4 calls kl_save_hw_state_all with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x143b0 has v0 = ret(kl_save_hw_state_all).
- `kl_log_hw_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x143b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x143b8-0x143e8 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x143d4 calls kl_save_hw_state_all with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x143e0 has v0 = ret(kl_save_hw_state_all).
- `kl_error_show_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x143e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x143e8-0x1441c (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x14408 calls kl_error_show with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x14414 has v0 = ret(kl_error_show).
- `kl_error_show_log` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1441c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1441c-0x1444c (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x14438 calls kl_error_show with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x14444 has v0 = ret(kl_error_show).
- `kl_error_show_idbg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1444c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1444c-0x1447c (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x14468 calls kl_error_show with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x14474 has v0 = ret(kl_error_show).
- `kl_error_show_reset_ste` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1447c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1447c-0x144a8 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x14494 calls kl_error_show with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x144a0 has v0 = ret(kl_error_show).
- `show_err_node_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x144a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x144a8-0x14628 (384 bytes).
  It occupies 384 bytes.
  The `lh` at 0x144f4 loads 2 bytes from a0 (arg0 at entry) +0xe.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x17, including `lbu` at 0x1450c, `lbu` at 0x14568, `lbu` at 0x1460c.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1454c, `lw` at 0x14580, `lw` at 0x145e0.
  The `lh` at 0x1455c loads 2 bytes from a0 (arg0 at entry) +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x14590, `lbu` at 0x145fc.
  The `jal` at 0x144c0 calls board_serial_number_get with a0=a0 at entry (arg0), a1=sp-304, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x144dc calls sprintf with a0=sp-200, a1=sym(.rodata)+7952, a2=sp-304, a3=?.
  The `jal` at 0x144f8 calls kl_perr with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2, a4=sp-200.
  The `jal` at 0x14560 calls show_hub_err with a0=?, a1=a1 at entry (arg1), a2=[a0+32]:2, a3=?, a5=[a0+23]:1.
  The `jal` at 0x14600 calls show_cache_err with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=[a0+23]:1.
  The `jal` at 0x14618 calls sprintf with a0=sp-200, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x144cc targets 0x14610, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `blez` branch at 0x14524 targets 0x145b4, is taken when a5(=[a0+23]:1) <= 0 (signed), and falls through when a5(=[a0+23]:1) > 0 (signed).
  The `beq` branch at 0x14544 targets 0x14578 and is always taken.
  The `beq` branch at 0x14574 targets 0x145b4, is taken when s0(?) >= a5(=[a0+23]:1) (signed), and falls through when s0(?) < a5(=[a0+23]:1) (signed).
  The `beq` branch at 0x14594 targets 0x145e0, is taken when a0(?) == s5(=0x1), and falls through when a0(?) != s5(=0x1).
  The `beq` branch at 0x1459c targets 0x1454c, is taken when a0(?) == s6(=0x2), and falls through when a0(?) != s6(=0x2).
  The `bne` branch at 0x145ac targets 0x1457c, is taken when s0(?) < a5(=[a0+23]:1) (signed), and falls through when s0(?) >= a5(=[a0+23]:1) (signed).
  The `beq` branch at 0x145f4 targets 0x145a4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x14608 targets 0x1456c and is always taken.
  The `beq` branch at 0x14620 targets 0x144e8 and is always taken.
  The return at 0x145d8 has v0 = one of ret(kl_perr), ?.
- `show_cache_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14628 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14628-0x14a10 (1000 bytes).
  It occupies 1000 bytes.
  The `lw` at 0x14664 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `ld` at 0x1468c loads 8 bytes from (a0 + one of 0x18, 0x30) +0x0.
  The `ld` at 0x14690 loads 8 bytes from (a0 + one of 0x10, 0x28) +0x0.
  The `lw` at 0x1469c loads 4 bytes from (a0 + one of 0x8, 0x20) +0x0.
  The `ld` at 0x146ec loads 8 bytes from a2 (arg2 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x147d4, `ld` at 0x14838.
  The `jal` at 0x1464c calls sprintf with a0=sp-208, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1465c calls sprintf with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x146a4 calls kl_perr with a0=0x3, a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a4=(a0 + one of 0x8, 0x20).
  The `jal` at 0x146b4 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jalr` at 0x146f4 calls (unknown callee) with a0=sym(.rodata)+7952, a1=?, a2=?, a3=0x40000000, a4=0xffffffff80000000, a5=[a2]:8.
  The `jal` at 0x14730 calls sprintf with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=?, a4=0xffffffff80000000.
  The `jal` at 0x14760 calls sprintf with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=?, a4=sp-144.
  The `jal` at 0x14778 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144.
  The `jal` at 0x147d8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1483c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x148b4 calls sprintf with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x148e0 calls sprintf with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x148f8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144.
  The `jal` at 0x14938 calls sprintf with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=?, a4=0xffffffff80000000.
  The `jal` at 0x14964 calls sprintf with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1497c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144.
  The `jal` at 0x149b0 calls sprintf with a0=sp-208, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x149dc calls sprintf with a0=sp-144, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x149f4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sp-208, a4=sp-144.
  The `beq` branch at 0x14670 targets 0x14888, is taken when (a2(=[a2+12]) & 0x1) == 0, and falls through when (a2(=[a2+12]) & 0x1) != 0.
  The `beq` branch at 0x14684 targets 0x14860, is taken when a4(=(a0 + one of 0x8, 0x20)) == 0, and falls through when a4(=(a0 + one of 0x8, 0x20)) != 0.
  The `beq` branch at 0x146c4 targets 0x14890, is taken when (a1(=0xffffffffc0000000) & s0(?)) == 0, and falls through when (a1(=0xffffffffc0000000) & s0(?)) != 0.
  The `beq` branch at 0x146d0 targets 0x14990, is taken when a3(=0x40000000) == s1(?), and falls through when a3(=0x40000000) != s1(?).
  The `beq` branch at 0x146dc targets 0x14704, is taken when s1(?) == a4(=0xffffffff80000000), and falls through when s1(?) != a4(=0xffffffff80000000).
  The `beq` branch at 0x146e4 targets 0x1490c, is taken when a1(=0xffffffffc0000000) == s1(?), and falls through when a1(=0xffffffffc0000000) != s1(?).
  The `beq` branch at 0x146fc targets 0x14790 and is always taken.
  The `bgez` branch at 0x1470c targets 0x14738, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0x1473c targets 0x1476c, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x14790 targets 0x14a08, is taken when a4(=0x40000000) == s1(?), and falls through when a4(=0x40000000) != s1(?).
  The `beq` branch at 0x1479c targets 0x14804, is taken when s1(?) == a5(=0xffffffff80000000), and falls through when s1(?) != a5(=0xffffffff80000000).
  The `bne` branch at 0x147a4 targets 0x14860, is taken when a6(=0xffffffffc0000000) != s1(?), and falls through when a6(=0xffffffffc0000000) == s1(?).
  The `beq` branch at 0x147c8 targets 0x147e0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x147f4 targets 0x147c8, is taken when s0(?) < 0x7 (unsigned), and falls through when s0(?) >= 0x7 (unsigned).
  The `beq` branch at 0x147fc targets 0x14864 and is always taken.
  The `beq` branch at 0x1482c targets 0x14844, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x14858 targets 0x1482c, is taken when s0(?) < 0xa (unsigned), and falls through when s0(?) >= 0xa (unsigned).
  The `beq` branch at 0x14888 targets 0x1467c and is always taken.
  The `bgez` branch at 0x14890 targets 0x148bc, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x148c0 targets 0x148e8, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x14904 targets 0x14808 and is always taken.
  The `bgez` branch at 0x14914 targets 0x14940, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0x14944 targets 0x1496c, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x14988 targets 0x1478c and is always taken.
  The `bgez` branch at 0x14990 targets 0x149b8, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x149bc targets 0x149e4, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x14a00 targets 0x1478c and is always taken.
  The `beq` branch at 0x14a08 targets 0x1480c and is always taken.
  The return at 0x14880 has v0 = ?.
- `show_hub_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14a10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14a10-0x14ac4 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x14a18, `lw` at 0x14a84.
  The `jal` at 0x14a50 calls kl_perr with a0=0x3, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14a60 calls show_hub_pi_err with a0=?, a1=a2 at entry (arg2), a2=0x0, a3=?.
  The `jal` at 0x14a70 calls show_hub_pi_err with a0=?, a1=a2 at entry (arg2), a2=0x1, a3=?.
  The `jal` at 0x14a78 calls show_hub_md_err with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14a88 calls show_hub_io_err with a0=a0 at entry (arg0), a1=[a1+12], a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x14a9c calls show_hub_ni_err with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14aa4 calls show_hub_lb_err with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14aac calls show_hub_xb_err with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x14a3c targets 0x14a48, is taken when (at(=[a1+12]) & 0x1) == 0, and falls through when (at(=[a1+12]) & 0x1) != 0.
  The return at 0x14abc has v0 = ret(show_hub_xb_err).
- `show_pi_error_spool_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14ac4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14ac4-0x14c10 (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0x14b5c loads 8 bytes from table(sym(pi_err_status_cmd)) +0x0.
  The `jal` at 0x14aec calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0x14afc calls decode_crb_stat with a0=sp-80, a1=?, a2=?, a3=?.
  The `jal` at 0x14b70 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sym(.rodata)+7952, a4=entry(sym(pi_err_status_cmd)), a5=sym(.rodata)+7952, a6=sp-80.
  The `jal` at 0x14b88 calls sprintf with a0=sp-80, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14b9c calls decode_xrb_err with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x14bdc calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=ret(decode_xrb_err), a3=?, a4=sp-80.
  The `beq` branch at 0x14b20 targets 0x14c04, is taken when (t2(?) & 0x80) == 0, and falls through when (t2(?) & 0x80) != 0.
  The `bltz` branch at 0x14b28 targets 0x14bf8, is taken when v0(=(a0 << 0x33)) < 0 (signed), and falls through when v0(=(a0 << 0x33)) >= 0 (signed).
  The `beq` branch at 0x14b7c targets 0x14b98, is taken when (s1(?) & 0x200) == 0, and falls through when (s1(?) & 0x200) != 0.
  The `beq` branch at 0x14b90 targets 0x14b9c and is always taken.
  The `beq` branch at 0x14bac targets 0x14bc0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x14bfc targets 0x14b30 and is always taken.
  The `beq` branch at 0x14c08 targets 0x14b28 and is always taken.
  The return at 0x14bf0 has v0 = ret(kl_perr).
- `show_hub_pi_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x14c10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x14c10-0x151d8 (1480 bytes).
  It occupies 1480 bytes.
  The `ld` at 0x14c38 loads 8 bytes from a0 (arg0 at entry) +0x10.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x14c8c, `ld` at 0x14d0c, `ld` at 0x14d34.
  The `ld` at 0x14d6c loads 8 bytes from table(sym(pi_err_status_cmd)) +0x800.
  The `ld` at 0x14dd0 loads 8 bytes from table(sym(pi_err_status_cmd)) +0x0.
  2 such `ld` accesses load 8 bytes from ((a1 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428) +0x0, including `ld` at 0x14ec4, `ld` at 0x14ed8.
  The `ld` at 0x15000 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x150b0 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x15198 loads 8 bytes from table(sym(pi_err_status_cmd)) +0x840.
  The `jal` at 0x14c5c calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=[a0+16]:8.
  The `jal` at 0x14c90 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14d38 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=one of 0x41, 0x42.
  The `jal` at 0x14d68 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2048]:8, a3=?.
  The `jal` at 0x14d80 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14d98 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14dcc calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sym(.rodata)+7952, a4=entry(sym(pi_err_status_cmd)).
  The `jal` at 0x14dec calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14e04 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14e1c calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=one of 0x41, 0x42.
  The `jal` at 0x14e38 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14e50 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14e6c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14e8c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14ea4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14eb8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14f14 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=one of 0x41, 0x42.
  The `jal` at 0x14f64 calls show_pi_error_spool_entry with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14fc4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x14fd8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15018 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=[a0+72]:8.
  The `jal` at 0x15030 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1504c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15060 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15080 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15094 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x150a0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x150bc calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=[a0+80]:8.
  The `jal` at 0x150cc calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15104 calls memory_present with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15154 calls memory_present with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15174 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15194 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2112]:8, a3=?.
  The `jal` at 0x151b4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x151c8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x14c48 targets 0x14cb0, is taken when s1(=[a0+16]:8) == 0, and falls through when s1(=[a0+16]:8) != 0.
  The `beq` branch at 0x14c80 targets 0x14c98, is taken when (s1(=[a0+16]:8) & a2(?)) == 0, and falls through when (s1(=[a0+16]:8) & a2(?)) != 0.
  The `bne` branch at 0x14ca4 targets 0x14c78, is taken when s0(?) < 0x23 (unsigned), and falls through when s0(?) >= 0x23 (unsigned).
  The `beq` branch at 0x14d14 targets 0x14fe0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bltz` branch at 0x14d48 targets 0x15184, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beq` branch at 0x14d50 targets 0x15148, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x14d78 targets 0x14d88, is taken when (a2(?) & 0x7) == 0, and falls through when (a2(?) & 0x7) != 0.
  The `beq` branch at 0x14d90 targets 0x14da0, is taken when (a2(?) & 0x7ff) == 0, and falls through when (a2(?) & 0x7ff) != 0.
  The `beq` branch at 0x14dac targets 0x1516c, is taken when (a6(?) & 0x80) == 0, and falls through when (a6(?) & 0x80) != 0.
  The `bltz` branch at 0x14df8 targets 0x15174, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0x14e30 targets 0x14e40, is taken when (a2(=0x1fffff) & s2(?)) == 0, and falls through when (a2(=0x1fffff) & s2(?)) != 0.
  The `beq` branch at 0x14e48 targets 0x14e58, is taken when (a2(?) & 0xff) == 0, and falls through when (a2(?) & 0xff) != 0.
  The `beq` branch at 0x14e60 targets 0x14e78, is taken when (a2(?) & 0x3ff) == 0, and falls through when (a2(?) & 0x3ff) != 0.
  The `bltz` branch at 0x14e7c targets 0x151b0, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x14e84 targets 0x14e94, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x14e9c targets 0x14eac, is taken when (a2(?) & 0x3ff) == 0, and falls through when (a2(?) & 0x3ff) != 0.
  The `beq` branch at 0x14eb0 targets 0x14ec0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x14ed0 targets 0x15138, is taken when a3(=[((a1 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428)]:8) == 0, and falls through when a3(=[((a1 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428)]:8) != 0.
  The `beq` branch at 0x14ee8 targets 0x15140, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x14f50 targets 0x14fe0, is taken when s0(?) >= s5(?) (unsigned), and falls through when s0(?) < s5(?) (unsigned).
  The `beq` branch at 0x14f58 targets 0x14f80 and is always taken.
  The `bne` branch at 0x14f78 targets 0x14fb8, is taken when s5(?) < s0(?) (unsigned), and falls through when s5(?) >= s0(?) (unsigned).
  The `bltz` branch at 0x14f8c targets 0x14f60, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x14f94 targets 0x15104, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x14f9c targets 0x14f60, is taken when at(=0x4) != a3(?), and falls through when at(=0x4) == a3(?).
  The `beq` branch at 0x14fac targets 0x14f80, is taken when s5(?) >= s0(?) (unsigned), and falls through when s5(?) < s0(?) (unsigned).
  The `beq` branch at 0x14fb8 targets 0x14fcc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x14fcc targets 0x14fe0, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x14ff4 targets 0x14d00, is taken when s6(?) < 0x2 (signed), and falls through when s6(?) >= 0x2 (signed).
  The `beq` branch at 0x15008 targets 0x150d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15024 targets 0x1503c, is taken when (s0(=[a0+72]:8) & 0x1) == 0, and falls through when (s0(=[a0+72]:8) & 0x1) != 0.
  The `bltz` branch at 0x1503c targets 0x151c4, is taken when t9(=([a0+72]:8 << 0x3e)) < 0 (signed), and falls through when t9(=([a0+72]:8 << 0x3e)) >= 0 (signed).
  The `beq` branch at 0x1510c targets 0x151a4, is taken when v0(=ret(memory_present)) == 0, and falls through when v0(=ret(memory_present)) != 0.
  The `bltz` branch at 0x1511c targets 0x14f60, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x15128 targets 0x14f60, is taken when a3(=0x4) != a1(?), and falls through when a3(=0x4) == a1(?).
  The `beq` branch at 0x15130 targets 0x14f70 and is always taken.
  The `bne` branch at 0x15138 targets 0x14ef0, is taken when s3(=a2) != 0, and falls through when s3(=a2) == 0.
  The `beq` branch at 0x15140 targets 0x14ef8 and is always taken.
  The `bne` branch at 0x1515c targets 0x14d5c, is taken when v0(=ret(memory_present)) != 0, and falls through when v0(=ret(memory_present)) == 0.
  The `beq` branch at 0x15164 targets 0x14ec4 and is always taken.
  The `beq` branch at 0x1516c targets 0x14db8 and is always taken.
  The `beq` branch at 0x1517c targets 0x14e0c and is always taken.
  The `beq` branch at 0x1519c targets 0x14d8c and is always taken.
  The `beq` branch at 0x151a8 targets 0x14f70 and is always taken.
  The `beq` branch at 0x151bc targets 0x14e98 and is always taken.
  The `beq` branch at 0x151d0 targets 0x15044 and is always taken.
  The return at 0x150fc has v0 = one of ?, ret(kl_perr).
- `show_hub_md_misc_error_flags` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x151d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x151d8-0x15350 (376 bytes).
  It occupies 376 bytes.
  The `ld` at 0x15228 loads 8 bytes from ?.
  6 such `ld` accesses load 8 bytes from table(sym(pi_err_status_cmd)) +0xac0, including `ld` at 0x1526c, `ld` at 0x152a4, `ld` at 0x152c8.
  The `jal` at 0x1522c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15270 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x152a0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x152c4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x152e8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x1530c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x15330 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `beq` branch at 0x1521c targets 0x15234, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x15248 targets 0x15218, is taken when s0(?) < 0x4 (unsigned), and falls through when s0(?) >= 0x4 (unsigned).
  The `beq` branch at 0x15258 targets 0x15278, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x15288 targets 0x152a8, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x152b0 targets 0x152cc, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x152d4 targets 0x152f0, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x152f8 targets 0x15314, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `beq` branch at 0x15318 targets 0x1533c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The return at 0x15348 has v0 = one of ?, ret(kl_perr).
- `show_hub_md_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15350-0x15960 (1552 bytes).
  It occupies 1552 bytes.
  The `ld` at 0x15368 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x15448 loads 8 bytes from a0 (arg0 at entry) +0x18.
  3 such `ld` accesses load 8 bytes from table(sym(pi_err_status_cmd)) +0xac0, including `ld` at 0x154cc, `ld` at 0x154ec, `ld` at 0x1550c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x15524, `ld` at 0x15840.
  The `ld` at 0x155ec loads 8 bytes from ?.
  2 such `ld` accesses load 8 bytes from table(sym(pi_err_status_cmd)) +0xa60, including `ld` at 0x15644, `ld` at 0x156ec.
  The `ld` at 0x15654 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ld` at 0x15738 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x153a4 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3).
  The `jal` at 0x153c4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15440 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15474 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+24]:8, a3=?.
  The `jal` at 0x15494 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x154a8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x154c8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x154e8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x15508 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+2752]:8, a3=?.
  The `jal` at 0x1551c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1553c calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+40]:8, a3=?.
  The `jal` at 0x15550 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15568 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=([a0+40]:8 << 0x3e).
  The `jal` at 0x15588 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1559c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x155b4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x155e8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15604 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15618 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15640 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8.
  The `jal` at 0x1564c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x156b0 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+56]:8, a3=?.
  The `jal` at 0x156c0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x156e8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8.
  The `jal` at 0x156fc calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15710 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15724 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1572c calls show_hub_md_misc_error_flags [0x151d8] with a0=[a0+56]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x157b8 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+64]:8, a3=?.
  The `jal` at 0x157d8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x157e0 calls show_hub_md_misc_error_flags [0x151d8] with a0=[a0+64]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1584c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15864 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1587c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15894 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=([a0+40]:8 << 0x3e).
  The `jal` at 0x158b0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a4=0x4.
  The `jal` at 0x158cc calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=0x3.
  The `jal` at 0x158e0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x158f0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15900 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15910 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15920 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1593c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a4=([a0+40]:8 << 0x15).
  The `beq` branch at 0x15384 targets 0x15800, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x153d0 targets 0x158a8, is taken when s2(?) == a4(=0x4), and falls through when s2(?) != a4(=0x4).
  The `beq` branch at 0x153dc targets 0x158a4, is taken when s2(?) == a5(=0x2), and falls through when s2(?) != a5(=0x2).
  The `beq` branch at 0x153e4 targets 0x158c4, is taken when s2(?) == a6(=0x3), and falls through when s2(?) != a6(=0x3).
  The `beq` branch at 0x153f0 targets 0x158c4, is taken when s2(?) == a7(=0x1), and falls through when s2(?) != a7(=0x1).
  The `bltz` branch at 0x153f8 targets 0x15844, is taken when s3(=([a0+8]:8 << 0x3)) < 0 (signed), and falls through when s3(=([a0+8]:8 << 0x3)) >= 0 (signed).
  The `bltz` branch at 0x15400 targets 0x1585c, is taken when s4(=([a0+8]:8 << 0x2)) < 0 (signed), and falls through when s4(=([a0+8]:8 << 0x2)) >= 0 (signed).
  The `bltz` branch at 0x15408 targets 0x15874, is taken when s5(=([a0+8]:8 << 0x1)) < 0 (signed), and falls through when s5(=([a0+8]:8 << 0x1)) >= 0 (signed).
  The `beq` branch at 0x15410 targets 0x15420, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bltz` branch at 0x15418 targets 0x15920, is taken when t0(=([a0+8]:8 << 0x4)) < 0 (signed), and falls through when t0(=([a0+8]:8 << 0x4)) >= 0 (signed).
  The `bltz` branch at 0x15420 targets 0x158f0, is taken when s3(=([a0+8]:8 << 0x3)) < 0 (signed), and falls through when s3(=([a0+8]:8 << 0x3)) >= 0 (signed).
  The `bltz` branch at 0x15428 targets 0x15900, is taken when s4(=([a0+8]:8 << 0x2)) < 0 (signed), and falls through when s4(=([a0+8]:8 << 0x2)) >= 0 (signed).
  The `bltz` branch at 0x15430 targets 0x15910, is taken when s5(=([a0+8]:8 << 0x1)) < 0 (signed), and falls through when s5(=([a0+8]:8 << 0x1)) >= 0 (signed).
  The `beq` branch at 0x15438 targets 0x15448, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x1545c targets 0x15828, is taken when (s4(?) & 0x3) == 0, and falls through when (s4(?) & 0x3) != 0.
  The `beq` branch at 0x154b0 targets 0x154d0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x154d0 targets 0x154f0, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x154f0 targets 0x15514, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x15514 targets 0x15524, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1552c targets 0x15654, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15548 targets 0x15558, is taken when (s1(=[a0+40]:8) & 0x1) == 0, and falls through when (s1(=[a0+40]:8) & 0x1) != 0.
  The `bltz` branch at 0x1555c targets 0x15894, is taken when a6(=([a0+40]:8 << 0x3e)) < 0 (signed), and falls through when a6(=([a0+40]:8 << 0x3e)) >= 0 (signed).
  The `beq` branch at 0x155c4 targets 0x1588c, is taken when a0(=0x1) == s3(?), and falls through when a0(=0x1) != s3(?).
  The `bltz` branch at 0x155f4 targets 0x15930, is taken when a4(=([a0+40]:8 << 0x15)) < 0 (signed), and falls through when a4(=([a0+40]:8 << 0x15)) >= 0 (signed).
  The `bne` branch at 0x1565c targets 0x156a8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x15668 targets 0x156a8, is taken when (a5(?) & 0x3) != 0, and falls through when (a5(?) & 0x3) == 0.
  The `bne` branch at 0x15674 targets 0x156a8, is taken when (a6(?) & 0x3) != 0, and falls through when (a6(?) & 0x3) == 0.
  The `bne` branch at 0x15684 targets 0x156a8, is taken when (a1(?) & 0x3) != 0, and falls through when (a1(?) & 0x3) == 0.
  The `bne` branch at 0x1568c targets 0x156a8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x15698 targets 0x156a8, is taken when (a2(?) & 0x3) != 0, and falls through when (a2(?) & 0x3) == 0.
  The `beq` branch at 0x156a4 targets 0x15734, is taken when (a3(?) & 0xf) == 0, and falls through when (a3(?) & 0xf) != 0.
  The `bne` branch at 0x1574c targets 0x157b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1575c targets 0x157b4, is taken when (a4(?) & 0x3) != 0, and falls through when (a4(?) & 0x3) == 0.
  The `bne` branch at 0x1576c targets 0x157b4, is taken when (a5(?) & 0x3) != 0, and falls through when (a5(?) & 0x3) == 0.
  The `bne` branch at 0x1577c targets 0x157b4, is taken when (a6(?) & 0x3) != 0, and falls through when (a6(?) & 0x3) == 0.
  The `bne` branch at 0x15790 targets 0x157b0, is taken when (a7(?) & 0x3) != 0, and falls through when (a7(?) & 0x3) == 0.
  The `bne` branch at 0x157a0 targets 0x157b4, is taken when (t0(?) & 0x3) != 0, and falls through when (t0(?) & 0x3) == 0.
  The `beq` branch at 0x157a8 targets 0x157ec, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bltz` branch at 0x15800 targets 0x1594c, is taken when s5(=([a0+8]:8 << 0x1)) < 0 (signed), and falls through when s5(=([a0+8]:8 << 0x1)) >= 0 (signed).
  The `bltz` branch at 0x1580c targets 0x15958, is taken when s4(=([a0+8]:8 << 0x2)) < 0 (signed), and falls through when s4(=([a0+8]:8 << 0x2)) >= 0 (signed).
  The `beq` branch at 0x15818 targets 0x15448, is taken when s3(=([a0+8]:8 << 0x3)) >= 0x0 (signed), and falls through when s3(=([a0+8]:8 << 0x3)) < 0x0 (signed).
  The `beq` branch at 0x15820 targets 0x1539c and is always taken.
  The `bne` branch at 0x1582c targets 0x1546c, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x15834 targets 0x15470, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x1583c targets 0x15528 and is always taken.
  The `bgez` branch at 0x15844 targets 0x15400, is taken when t8(=([a0+8]:8 << 0x7)) >= 0 (signed), and falls through when t8(=([a0+8]:8 << 0x7)) < 0 (signed).
  The `beq` branch at 0x15854 targets 0x15400 and is always taken.
  The `bgez` branch at 0x1585c targets 0x15408, is taken when t9(=([a0+8]:8 << 0x6)) >= 0 (signed), and falls through when t9(=([a0+8]:8 << 0x6)) < 0 (signed).
  The `beq` branch at 0x1586c targets 0x15408 and is always taken.
  The `bgez` branch at 0x15874 targets 0x15410, is taken when ra(=([a0+8]:8 << 0x5)) >= 0 (signed), and falls through when ra(=([a0+8]:8 << 0x5)) < 0 (signed).
  The `beq` branch at 0x15884 targets 0x15410 and is always taken.
  The `beq` branch at 0x1588c targets 0x155d8 and is always taken.
  The `beq` branch at 0x1589c targets 0x15574 and is always taken.
  The `beq` branch at 0x158b8 targets 0x153e4 and is always taken.
  The `beq` branch at 0x158e8 targets 0x153f8 and is always taken.
  The `beq` branch at 0x158f8 targets 0x15428 and is always taken.
  The `beq` branch at 0x15908 targets 0x15430 and is always taken.
  The `beq` branch at 0x15918 targets 0x15438 and is always taken.
  The `beq` branch at 0x15928 targets 0x15420 and is always taken.
  The `beq` branch at 0x15944 targets 0x155fc and is always taken.
  The `beq` branch at 0x15950 targets 0x15398 and is always taken.
  The `beq` branch at 0x15958 targets 0x1539c and is always taken.
  The return at 0x157f8 has v0 = one of ?, ret(show_hub_md_misc_error_flags).
  The instructions from 0x158c0 to 0x158c0 are not reached by any path from the entry, and their branches are not listed.
- `show_hub_io_ieph` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15960 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15960-0x15ac4 (356 bytes).
  It occupies 356 bytes.
  The `ld` at 0x15968 loads 8 bytes from a0 (arg0 at entry) +0xb8.
  The `ld` at 0x15a48 loads 8 bytes from a0 (arg0 at entry) +0xc0.
  The `jal` at 0x159ac calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+184]:8, a3=a3 at entry (arg3).
  The `jal` at 0x159f4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=0x4, a4=0x5.
  The `jal` at 0x15a08 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15a1c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15a30 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=sym(.rodata)+7952.
  The `jal` at 0x15a54 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+192]:8, a3=?.
  The `jal` at 0x15a6c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15a80 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=([a0+192]:8 << 0x17).
  The `jal` at 0x15ab4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=([a0+184]:8 << 0x17).
  The `bltz` branch at 0x1597c targets 0x1599c, is taken when at(=([a0+184]:8 << 0x13)) < 0 (signed), and falls through when at(=([a0+184]:8 << 0x13)) >= 0 (signed).
  The `beq` branch at 0x159cc targets 0x15a90, is taken when s3(?) == v1(=0x2), and falls through when s3(?) != v1(=0x2).
  The `beq` branch at 0x159d4 targets 0x15a98, is taken when s3(?) == a2(=0x3), and falls through when s3(?) != a2(=0x3).
  The `beq` branch at 0x159dc targets 0x15aa0, is taken when s3(?) == a3(=0x4), and falls through when s3(?) != a3(=0x4).
  The `beq` branch at 0x159e4 targets 0x15aa8, is taken when s3(?) == a4(=0x5), and falls through when s3(?) != a4(=0x5).
  The `bltz` branch at 0x15a3c targets 0x15ab0, is taken when a3(=([a0+184]:8 << 0x17)) < 0 (signed), and falls through when a3(=([a0+184]:8 << 0x17)) >= 0 (signed).
  The `bgez` branch at 0x15a78 targets 0x15984, is taken when a3(=([a0+192]:8 << 0x17)) >= 0 (signed), and falls through when a3(=([a0+192]:8 << 0x17)) < 0 (signed).
  The `beq` branch at 0x15a88 targets 0x15988 and is always taken.
  The `beq` branch at 0x15a90 targets 0x159ec and is always taken.
  The `beq` branch at 0x15a98 targets 0x159ec and is always taken.
  The `beq` branch at 0x15aa0 targets 0x159ec and is always taken.
  The `beq` branch at 0x15aa8 targets 0x159ec and is always taken.
  The `beq` branch at 0x15abc targets 0x15a48 and is always taken.
  The return at 0x15994 has v0 = one of ?, ret(kl_perr).
- `show_hub_io_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15ac4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15ac4-0x15e74 (944 bytes).
  It occupies 944 bytes.
  10 such `ld` accesses load 8 bytes from ?, including `ld` at 0x15af0, `ld` at 0x15b30, `ld` at 0x15b54.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4f4, including `lw` at 0x15c08, `lw` at 0x15d88.
  The `jal` at 0x15b6c calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15b7c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15b88 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15b98 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15ba8 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15bc4 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15bd4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15be0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15bf0 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15c00 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15c48 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15c84 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15cb8 calls show_hub_io_ieph with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15cd8 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15cf0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15d18 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15d2c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15d40 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15d74 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15d80 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15db4 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=?, a5=[a0+1268].
  The `jal` at 0x15dc4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15dd4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15de8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15dfc calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15e14 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x15e20 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15e30 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15e40 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15e50 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15e64 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x15ae4 targets 0x15af0, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `bltz` branch at 0x15b04 targets 0x15e0c, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bltz` branch at 0x15b38 targets 0x15cd0, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `bne` branch at 0x15b4c targets 0x15b30, is taken when s0(?) < 0xf (signed), and falls through when s0(?) >= 0xf (signed).
  The `bgez` branch at 0x15b5c targets 0x15bb0, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x15bb8 targets 0x15c08, is taken when (s2(=0x10000) & s0(?)) == 0, and falls through when (s2(=0x10000) & s0(?)) != 0.
  The `beq` branch at 0x15c20 targets 0x15c9c, is taken when a2(=[a0+1268]) == a3(=-0x1), and falls through when a2(=[a0+1268]) != a3(=-0x1).
  The `bltz` branch at 0x15c54 targets 0x15dc4, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `bltz` branch at 0x15c60 targets 0x15dd4, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `bltz` branch at 0x15c6c targets 0x15de4, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bltz` branch at 0x15c74 targets 0x15df8, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `beq` branch at 0x15c7c targets 0x15c8c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x15c94 targets 0x15c30, is taken when s2(?) < 0x9 (signed), and falls through when s2(?) >= 0x9 (signed).
  The `beq` branch at 0x15ce4 targets 0x15cfc, is taken when (s2(?) & 0x1) == 0, and falls through when (s2(?) & 0x1) != 0.
  The `bltz` branch at 0x15cfc targets 0x15e30, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bltz` branch at 0x15d4c targets 0x15e40, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bltz` branch at 0x15d58 targets 0x15e50, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bltz` branch at 0x15d64 targets 0x15e60, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0x15d90 targets 0x15b40, is taken when a5(=[a0+1268]) == a3(=-0x1), and falls through when a5(=[a0+1268]) != a3(=-0x1).
  The `beq` branch at 0x15dbc targets 0x15b44 and is always taken.
  The `beq` branch at 0x15dcc targets 0x15c60 and is always taken.
  The `beq` branch at 0x15ddc targets 0x15c6c and is always taken.
  The `beq` branch at 0x15df0 targets 0x15c74 and is always taken.
  The `beq` branch at 0x15e04 targets 0x15c7c and is always taken.
  The `beq` branch at 0x15e28 targets 0x15b10 and is always taken.
  The `beq` branch at 0x15e38 targets 0x15d08 and is always taken.
  The `beq` branch at 0x15e48 targets 0x15d58 and is always taken.
  The `beq` branch at 0x15e58 targets 0x15d64 and is always taken.
  The `beq` branch at 0x15e6c targets 0x15d6c and is always taken.
  The return at 0x15cc8 has v0 = ret(show_hub_io_ieph).
- `get_ni_port_error_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15e74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15e74-0x15e8c (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x15e88 loads 8 bytes from (sym(pi_err_status_cmd) + (a0 << 0x3)) +0x0.
  The return at 0x15e84 has v0 = [(sym(pi_err_status_cmd) + (a0 << 0x3))]:8.
- `show_ni_port_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15e8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15e8c-0x15f28 (156 bytes).
  It occupies 156 bytes.
  The `jal` at 0x15ec0 calls get_ni_port_error_bit with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x15ed4 calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+7952, a2=ret(get_ni_port_error_bit), a3=?.
  The `beq` branch at 0x15eb8 targets 0x15ee8 and is always taken.
  The `beq` branch at 0x15ee4 targets 0x15f08, is taken when s0(?) >= 0x1d (unsigned), and falls through when s0(?) < 0x1d (unsigned).
  The `bne` branch at 0x15ef0 targets 0x15ec0, is taken when (s1(?) & a3(?)) != 0, and falls through when (s1(?) & a3(?)) == 0.
  The `bne` branch at 0x15f00 targets 0x15eec, is taken when s0(?) < 0x1d (unsigned), and falls through when s0(?) >= 0x1d (unsigned).
  The return at 0x15f20 has v0 = one of ret(?), ?.
- `show_hub_ni_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x15f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x15f28-0x162b0 (904 bytes).
  It occupies 904 bytes.
  The `ld` at 0x15f40 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x15fdc loads 8 bytes from ?.
  The `ld` at 0x16004 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x160a0 loads 8 bytes from table(sym(pi_err_status_cmd)) +0xbc8.
  The `ld` at 0x160c0 loads 8 bytes from a0 (arg0 at entry) +0x18.
  2 such `ld` accesses load 8 bytes from table(sym(pi_err_status_cmd)) +0xa60, including `ld` at 0x160f8, `ld` at 0x16120.
  The `ld` at 0x16178 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x15f64 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3).
  The `jal` at 0x15f78 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15f90 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15fa8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x15fe0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16014 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+16]:8, a3=?.
  The `jal` at 0x1602c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16040 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16054 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16068 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1607c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1609c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3016]:8, a3=?.
  The `jal` at 0x160b8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=0x7ffffff.
  The `jal` at 0x160d0 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+24]:8, a3=?.
  The `jal` at 0x160f4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8.
  The `jal` at 0x1611c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8.
  The `jal` at 0x16134 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16170 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a6=0x7ffffff.
  The `jal` at 0x1618c calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+32]:8, a3=?.
  The `jal` at 0x161a4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a7=([a0+32]:8 << 0x30).
  The `jal` at 0x161e4 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16218 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?, a7=([a0+32]:8 << 0x30).
  The `jal` at 0x1622c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1623c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16250 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16264 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16278 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1628c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x162a0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x15f50 targets 0x161ec, is taken when s4(=[a0+8]:8) == 0, and falls through when s4(=[a0+8]:8) != 0.
  The `beq` branch at 0x15f70 targets 0x15f80, is taken when (s4(=[a0+8]:8) & 0xff) == 0, and falls through when (s4(=[a0+8]:8) & 0xff) != 0.
  The `beq` branch at 0x15f88 targets 0x15f98, is taken when (a2(?) & 0xff) == 0, and falls through when (a2(?) & 0xff) != 0.
  The `beq` branch at 0x15fa0 targets 0x15fb0, is taken when (a2(?) & 0xff) == 0, and falls through when (a2(?) & 0xff) != 0.
  The `beq` branch at 0x15fd0 targets 0x15fe8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x15ffc targets 0x15fd0, is taken when s1(?) < 0x1d (unsigned), and falls through when s1(?) >= 0x1d (unsigned).
  The `beq` branch at 0x16008 targets 0x160c0, is taken when s1(=[a0+16]:8) == 0, and falls through when s1(=[a0+16]:8) != 0.
  The `beq` branch at 0x16020 targets 0x16038, is taken when (s1(=[a0+16]:8) & 0x1) == 0, and falls through when (s1(=[a0+16]:8) & 0x1) != 0.
  The `beq` branch at 0x160c4 targets 0x16178, is taken when s2(=[a0+24]:8) == 0, and falls through when s2(=[a0+24]:8) != 0.
  The `beq` branch at 0x1617c targets 0x161f0, is taken when s1(=[a0+32]:8) == 0, and falls through when s1(=[a0+32]:8) != 0.
  The `bltz` branch at 0x16198 targets 0x16214, is taken when a7(=([a0+32]:8 << 0x30)) < 0 (signed), and falls through when a7(=([a0+32]:8 << 0x30)) >= 0 (signed).
  The `bltz` branch at 0x161b0 targets 0x16228, is taken when t0(=([a0+32]:8 << 0x37)) < 0 (signed), and falls through when t0(=([a0+32]:8 << 0x37)) >= 0 (signed).
  The `bltz` branch at 0x161b8 targets 0x1623c, is taken when t1(=([a0+32]:8 << 0x36)) < 0 (signed), and falls through when t1(=([a0+32]:8 << 0x36)) >= 0 (signed).
  The `bltz` branch at 0x161c4 targets 0x1624c, is taken when t2(=([a0+32]:8 << 0x35)) < 0 (signed), and falls through when t2(=([a0+32]:8 << 0x35)) >= 0 (signed).
  The `bltz` branch at 0x161cc targets 0x16260, is taken when t3(=([a0+32]:8 << 0x34)) < 0 (signed), and falls through when t3(=([a0+32]:8 << 0x34)) >= 0 (signed).
  The `bltz` branch at 0x161d4 targets 0x16274, is taken when t8(=([a0+32]:8 << 0x33)) < 0 (signed), and falls through when t8(=([a0+32]:8 << 0x33)) >= 0 (signed).
  The `beq` branch at 0x16220 targets 0x161f0 and is always taken.
  The `beq` branch at 0x16234 targets 0x161b8 and is always taken.
  The `beq` branch at 0x16244 targets 0x161c4 and is always taken.
  The `beq` branch at 0x16258 targets 0x161cc and is always taken.
  The `beq` branch at 0x1626c targets 0x161d4 and is always taken.
  The `beq` branch at 0x162a8 targets 0x161dc and is always taken.
  The return at 0x1620c has v0 = one of ret(kl_perr), ?.
- `show_hub_lb_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x162b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x162b0-0x164b0 (512 bytes).
  It occupies 512 bytes.
  The `ld` at 0x162c0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x16314 loads 8 bytes from ?.
  The `ld` at 0x16334 loads 8 bytes from a0 (arg0 at entry) +0x10.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x16348, `ld` at 0x1649c.
  The `ld` at 0x1638c loads 8 bytes from table(sym(pi_err_status_cmd)) +0xc48.
  2 such `ld` accesses load 8 bytes from table(sym(pi_err_status_cmd)) +0xa60, including `ld` at 0x163f4, `ld` at 0x1641c.
  The `ld` at 0x1643c loads 8 bytes from table(sym(pi_err_status_cmd)) +0xc68.
  The `ld` at 0x16458 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1648c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x162e4 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3).
  The `jal` at 0x16318 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1636c calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+40]:8, a3=?.
  The `jal` at 0x16388 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3144]:8, a3=?.
  The `jal` at 0x163b8 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+16]:8, a3=([a0+16]:8 << 0x13).
  The `jal` at 0x163c8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x163f0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8.
  The `jal` at 0x16418 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+2656]:8.
  The `jal` at 0x16438 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3176]:8, a3=?.
  The `jal` at 0x16450 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16464 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+24]:8, a3=?.
  The `jal` at 0x16480 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16490 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[a0+32]:8, a3=?.
  The `jal` at 0x164a0 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=([a0+16]:8 << 0x17).
  The `beq` branch at 0x162d0 targets 0x16334, is taken when s1(=[a0+8]:8) == 0, and falls through when s1(=[a0+8]:8) != 0.
  The `beq` branch at 0x16308 targets 0x16320, is taken when (s1(=[a0+8]:8) & a2(?)) == 0, and falls through when (s1(=[a0+8]:8) & a2(?)) != 0.
  The `bne` branch at 0x1632c targets 0x16300, is taken when s0(?) < 0xb (signed), and falls through when s0(?) >= 0xb (signed).
  The `bltz` branch at 0x16340 targets 0x163b0, is taken when a3(=([a0+16]:8 << 0x13)) < 0 (signed), and falls through when a3(=([a0+16]:8 << 0x13)) >= 0 (signed).
  The `beq` branch at 0x16358 targets 0x16390, is taken when (s1(=[a0+40]:8) & a4(=0x8000000000000000)) == 0, and falls through when (s1(=[a0+40]:8) & a4(=0x8000000000000000)) != 0.
  The `beq` branch at 0x16360 targets 0x16390, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bltz` branch at 0x16444 targets 0x164a0, is taken when a3(=([a0+16]:8 << 0x17)) < 0 (signed), and falls through when a3(=([a0+16]:8 << 0x17)) >= 0 (signed).
  The `beq` branch at 0x16498 targets 0x1634c and is always taken.
  The `beq` branch at 0x164a8 targets 0x16450 and is always taken.
  The return at 0x163a8 has v0 = one of ?, ret(kl_perr).
- `show_hub_xb_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x164b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x164b0-0x166c4 (532 bytes).
  It occupies 532 bytes.
  The `ld` at 0x164b8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x16514 loads 8 bytes from table(sym(pi_err_status_cmd)) +0xce8.
  2 such `ld` accesses load 8 bytes from table(sym(pi_err_status_cmd)) +0xd68, including `ld` at 0x1654c, `ld` at 0x1657c.
  The `ld` at 0x16570 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x165a4 loads 8 bytes from table(sym(.rodata)+7952) +0x0.
  The `jal` at 0x164f0 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[a0+8]:8, a3=a3 at entry (arg3).
  The `jal` at 0x16510 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3304]:8, a3=?.
  The `jal` at 0x16524 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16554 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=[table(sym(pi_err_status_cmd))+3432]:8, a4=table(sym(pi_err_status_cmd))+3432.
  The `jal` at 0x16560 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16580 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+3432]:8, a3=[a0+16]:8.
  The `jal` at 0x165b0 calls printf with a0=sym(.rodata)+7952, a1=?, a2=?, a3=?.
  The `jal` at 0x165b8 calls printf with a0=sym(.rodata)+7952, a1=?, a2=?, a3=?.
  The `bltz` branch at 0x164c8 targets 0x164e4, is taken when at(=([a0+8]:8 << 0x33)) < 0 (signed), and falls through when at(=([a0+8]:8 << 0x33)) >= 0 (signed).
  The `beq` branch at 0x1659c targets 0x165b0, is taken when a1(?) >= 0x10 (unsigned), and falls through when a1(?) < 0x10 (unsigned).
  The `beq` branch at 0x165c0 targets 0x164d4 and is always taken.
  The return at 0x164dc has v0 = one of ?, ret(printf).
  The instructions from 0x165c8 to 0x166c0 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x165a8 uses a jump table whose successors are unresolved.
- `show_err_io_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x166c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x166c4-0x16800 (316 bytes).
  It occupies 316 bytes.
  The `lbu` at 0x16714 loads 1 byte from a0 (arg0 at entry) +0xa.
  The `lh` at 0x16720 loads 2 bytes from a0 (arg0 at entry) +0xe.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x17, including `lbu` at 0x1672c, `lbu` at 0x167cc.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x16764, `lw` at 0x167b4.
  The `lbu` at 0x16774 loads 1 byte from ?.
  The `jal` at 0x166ec calls board_serial_number_get with a0=a0 at entry (arg0), a1=sp-288, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x16708 calls sprintf with a0=sp-184, a1=sym(.rodata)+7952, a2=sp-288, a3=?.
  The `jal` at 0x16724 calls kl_perr with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2, a4=[a0+10]:1, a5=sp-184.
  The `jal` at 0x167c4 calls show_bridge_err with a0=?, a1=a1 at entry (arg1), a2=[a0+23]:1, a3=?.
  The `jal` at 0x167f0 calls sprintf with a0=sp-184, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x166f8 targets 0x167e8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `blez` branch at 0x1673c targets 0x16790, is taken when a2(=[a0+23]:1) <= 0 (signed), and falls through when a2(=[a0+23]:1) > 0 (signed).
  The `beq` branch at 0x16778 targets 0x167b4, is taken when s5(=0x5) == t8(?), and falls through when s5(=0x5) != t8(?).
  The `bne` branch at 0x16788 targets 0x16760, is taken when s0(?) < a2(=[a0+23]:1) (signed), and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  The `bne` branch at 0x167d8 targets 0x16760, is taken when s0(?) < a2(=[a0+23]:1) (signed), and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  The `beq` branch at 0x167e0 targets 0x16794 and is always taken.
  The `beq` branch at 0x167f8 targets 0x16710 and is always taken.
  The return at 0x167ac has v0 = one of ?, ret(show_bridge_err).
- `show_bridge_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x16800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x16800-0x16e68 (1640 bytes).
  It occupies 1640 bytes.
  The `lw` at 0x16810 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `ld` accesses load 8 bytes from (a0 + one of 0x30, 0xb8) +0x0, including `ld` at 0x16838, `ld` at 0x16870.
  8 such `lw` accesses load 4 bytes from (a0 + one of 0x38, 0xc0) +0x0, including `lw` at 0x16860, `lw` at 0x16a1c, `lw` at 0x16b58.
  The `ld` at 0x168d4 loads 8 bytes from (a0 + one of 0x68, 0xf0) +0x0.
  The `ld` at 0x168e4 loads 8 bytes from (a0 + one of 0x70, 0xf8) +0x0.
  The `ld` at 0x168f4 loads 8 bytes from (a0 + one of 0x78, 0x100) +0x0.
  The `ld` at 0x16904 loads 8 bytes from (a0 + one of 0x80, 0x108) +0x0.
  The `ld` at 0x16914 loads 8 bytes from (a0 + one of 0x88, 0x110) +0x0.
  The `ld` at 0x16948 loads 8 bytes from ?.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x20, 0xa8) +0x0, including `lw` at 0x16a28, `lw` at 0x16cac.
  The `lw` at 0x16b00 loads 4 bytes from (a0 + one of 0x24, 0xac) +0x0.
  The `lw` at 0x16b10 loads 4 bytes from (a0 + one of 0x28, 0xb0) +0x0.
  3 such `lw` accesses load 4 bytes from (a0 + one of 0x10, 0x98) +0x0, including `lw` at 0x16b60, `lw` at 0x16d18, `lw` at 0x16e0c.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x3c, 0xc4) +0x0, including `lw` at 0x16b78, `lw` at 0x16dc4.
  3 such `ld` accesses load 8 bytes from (a0 + one of 0x58, 0xe0) +0x0, including `ld` at 0x16b84, `ld` at 0x16cd8, `ld` at 0x16dd0.
  3 such `ld` accesses load 8 bytes from (a0 + one of 0x60, 0xe8) +0x0, including `ld` at 0x16b94, `ld` at 0x16ce8, `ld` at 0x16de0.
  The `ld` at 0x16be8 loads 8 bytes from (a0 + one of 0x50, 0xd8) +0x0.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x14, 0x9c) +0x0, including `lw` at 0x16c4c, `lw` at 0x16dac.
  2 such `ld` accesses load 8 bytes from (a0 + one of 0x48, 0xd0) +0x0, including `ld` at 0x16c5c, `ld` at 0x16d60.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x18, 0xa0) +0x0, including `lw` at 0x16c80, `lw` at 0x16e44.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x1c, 0xa4) +0x0, including `lw` at 0x16c90, `lw` at 0x16e54.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x8, 0x90) +0x0, including `lw` at 0x16d28, `lw` at 0x16e1c.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0xc, 0x94) +0x0, including `lw` at 0x16d38, `lw` at 0x16e2c.
  The `lw` at 0x16df8 loads 4 bytes from (a0 + one of 0x40, 0xc8) +0x0.
  The `jal` at 0x16868 calls kl_perr with a0=0x3, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x38, 0xc0)], a3=0x20.
  The `jal` at 0x16880 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x30, 0xb8)]:8, a3=?.
  The `jal` at 0x16890 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x168d8 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x68, 0xf0)]:8, a3=0x80000000000.
  The `jal` at 0x168e8 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x70, 0xf8)]:8, a3=?.
  The `jal` at 0x168f8 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x78, 0x100)]:8, a3=?.
  The `jal` at 0x16908 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x80, 0x108)]:8, a3=?.
  The `jal` at 0x16918 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x88, 0x110)]:8, a3=?.
  The `jal` at 0x1694c calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x16a2c calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x20, 0xa8)], a3=?, a7=[(a0 + one of 0x38, 0xc0)].
  The `jal` at 0x16b04 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x24, 0xac)], a3=?.
  The `jal` at 0x16b14 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x28, 0xb0)], a3=?.
  The `jal` at 0x16b64 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x98)], a3=?, a4=0x1.
  The `jal` at 0x16b88 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x58, 0xe0)]:8, a3=?.
  The `jal` at 0x16b98 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x60, 0xe8)]:8, a3=?.
  The `jal` at 0x16bec calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x50, 0xd8)]:8, a3=?.
  The `jal` at 0x16c50 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x14, 0x9c)], a3=?.
  The `jal` at 0x16c60 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x48, 0xd0)]:8, a3=?.
  The `jal` at 0x16c84 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x18, 0xa0)], a3=?.
  The `jal` at 0x16c94 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x1c, 0xa4)], a3=?.
  The `jal` at 0x16cb0 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x20, 0xa8)], a3=?.
  The `jal` at 0x16cdc calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x58, 0xe0)]:8, a3=?.
  The `jal` at 0x16cec calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x60, 0xe8)]:8, a3=?.
  The `jal` at 0x16d1c calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x98)], a3=?.
  The `jal` at 0x16d2c calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x8, 0x90)], a3=?.
  The `jal` at 0x16d3c calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0xc, 0x94)], a3=?.
  The `jal` at 0x16d64 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x48, 0xd0)]:8, a3=?.
  The `jal` at 0x16db0 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x14, 0x9c)], a3=?, a4=0x4000000, a5=[(a0 + one of 0x38, 0xc0)].
  The `jal` at 0x16dd4 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x58, 0xe0)]:8, a3=?, a6=[(a0 + one of 0x3c, 0xc4)].
  The `jal` at 0x16de4 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x60, 0xe8)]:8, a3=?.
  The `jal` at 0x16dfc calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x40, 0xc8)], a3=?.
  The `jal` at 0x16e10 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x98)], a3=?.
  The `jal` at 0x16e20 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x8, 0x90)], a3=?.
  The `jal` at 0x16e30 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0xc, 0x94)], a3=?.
  The `jal` at 0x16e48 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x18, 0xa0)], a3=?.
  The `jal` at 0x16e58 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x1c, 0xa4)], a3=?.
  The `beq` branch at 0x16828 targets 0x16834, is taken when (at(=[a1+12]) & 0x1) == 0, and falls through when (at(=[a1+12]) & 0x1) != 0.
  The `beq` branch at 0x16848 targets 0x16bfc, is taken when (v0(=[(a0 + one of 0x30, 0xb8)]:8) & v1(=0xffffffff7fffff00)) == 0, and falls through when (v0(=[(a0 + one of 0x30, 0xb8)]:8) & v1(=0xffffffff7fffff00)) != 0.
  The `beq` branch at 0x16874 targets 0x16bfc, is taken when s4(=[(a0 + one of 0x30, 0xb8)]:8) == 0, and falls through when s4(=[(a0 + one of 0x30, 0xb8)]:8) != 0.
  The `bne` branch at 0x168a8 targets 0x16bfc, is taken when s5(=one of 0x20, 0x2d) < 0x9 (signed), and falls through when s5(=one of 0x20, 0x2d) >= 0x9 (signed).
  The `beq` branch at 0x168b0 targets 0x16930 and is always taken.
  The `beq` branch at 0x168bc targets 0x168d4, is taken when t0(=0x100000000000) >= s0(?) (unsigned), and falls through when t0(=0x100000000000) < s0(?) (unsigned).
  The `bne` branch at 0x168cc targets 0x16920, is taken when t1(=0x200000000000) != s0(?), and falls through when t1(=0x200000000000) == s0(?).
  The `beq` branch at 0x16928 targets 0x16bfc, is taken when s1(?) >= s5(=one of 0x20, 0x2d) (signed), and falls through when s1(?) < s5(=one of 0x20, 0x2d) (signed).
  The `beq` branch at 0x1693c targets 0x16920, is taken when (s4(=[(a0 + one of 0x30, 0xb8)]:8) & s0(?)) == 0, and falls through when (s4(=[(a0 + one of 0x30, 0xb8)]:8) & s0(?)) != 0.
  The `bne` branch at 0x16958 targets 0x169e0, is taken when s0(?) < s3(=0x20000000) (unsigned), and falls through when s0(?) >= s3(=0x20000000) (unsigned).
  The `beq` branch at 0x16960 targets 0x16b5c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x16970 targets 0x16a84, is taken when s0(?) < a4(=0x4000000000) (unsigned), and falls through when s0(?) >= a4(=0x4000000000) (unsigned).
  The `beq` branch at 0x169a0 targets 0x168f0, is taken when a1(=0x4000000000) >= s0(?) (unsigned), and falls through when a1(=0x4000000000) < s0(?) (unsigned).
  The `bne` branch at 0x169bc targets 0x16bcc, is taken when s0(?) < a5(=0x40000000000) (unsigned), and falls through when s0(?) >= a5(=0x40000000000) (unsigned).
  The `beq` branch at 0x169c4 targets 0x168f0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x169cc targets 0x16d84, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x169d8 targets 0x168b8 and is always taken.
  The `bne` branch at 0x169e8 targets 0x16a3c, is taken when s0(?) < a6(=0x10000) (unsigned), and falls through when s0(?) >= a6(=0x10000) (unsigned).
  The `bne` branch at 0x16a14 targets 0x16b24, is taken when a6(=0x10000) < s0(?) (unsigned), and falls through when a6(=0x10000) >= s0(?) (unsigned).
  The `bne` branch at 0x16a20 targets 0x16920, is taken when a7(=[(a0 + one of 0x38, 0xc0)]) != 0, and falls through when a7(=[(a0 + one of 0x38, 0xc0)]) == 0.
  The `beq` branch at 0x16a34 targets 0x16924 and is always taken.
  The `bne` branch at 0x16a54 targets 0x16ae8, is taken when s0(?) < 0x1000 (unsigned), and falls through when s0(?) >= 0x1000 (unsigned).
  The `bne` branch at 0x16a5c targets 0x16b00, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x16a64 targets 0x16cc0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x16a6c targets 0x16afc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x16a74 targets 0x16920, is taken when t1(=0x8000) != s0(?), and falls through when t1(=0x8000) == s0(?).
  The `beq` branch at 0x16a7c targets 0x16b00 and is always taken.
  The `bne` branch at 0x16ab0 targets 0x16ba8, is taken when s0(?) < a6(=0x400000000) (unsigned), and falls through when s0(?) >= a6(=0x400000000) (unsigned).
  The `beq` branch at 0x16ab8 targets 0x168f4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x16ac0 targets 0x16cfc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x16ac8 targets 0x168f4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x16ad8 targets 0x16920, is taken when a5(=0x2000000000) != s0(?), and falls through when a5(=0x2000000000) == s0(?).
  The `beq` branch at 0x16ae0 targets 0x168f4 and is always taken.
  The `bne` branch at 0x16ae8 targets 0x16c70, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x16af0 targets 0x16afc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x16af8 targets 0x16920, is taken when a6(=0x800) != s0(?), and falls through when a6(=0x800) == s0(?).
  The `beq` branch at 0x16b1c targets 0x16924 and is always taken.
  The `bne` branch at 0x16b2c targets 0x16c2c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x16b34 targets 0x16d18, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x16b3c targets 0x16d94, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x16b44 targets 0x16d14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x16b4c targets 0x16920, is taken when a7(=0x10000000) != s0(?), and falls through when a7(=0x10000000) == s0(?).
  The `beq` branch at 0x16b54 targets 0x16da0 and is always taken.
  The `beq` branch at 0x16b70 targets 0x16920, is taken when t0(=[(a0 + one of 0x38, 0xc0)]) == 0, and falls through when t0(=[(a0 + one of 0x38, 0xc0)]) != 0.
  The `beq` branch at 0x16b7c targets 0x16920, is taken when t1(=[(a0 + one of 0x3c, 0xc4)]) == 0, and falls through when t1(=[(a0 + one of 0x3c, 0xc4)]) != 0.
  The `beq` branch at 0x16ba0 targets 0x16924 and is always taken.
  The `bne` branch at 0x16ba8 targets 0x16ca4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x16bb0 targets 0x168f0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x16bbc targets 0x16920, is taken when t2(=0x200000000) != s0(?), and falls through when t2(=0x200000000) == s0(?).
  The `beq` branch at 0x16bc4 targets 0x168f4 and is always taken.
  The `bne` branch at 0x16bcc targets 0x16cd0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x16bd4 targets 0x16df4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x16be0 targets 0x16920, is taken when t3(=0x20000000000) != s0(?), and falls through when t3(=0x20000000000) == s0(?).
  The `beq` branch at 0x16bf4 targets 0x16924 and is always taken.
  The `bne` branch at 0x16c2c targets 0x16d4c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x16c34 targets 0x16d10, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x16c40 targets 0x16e0c, is taken when t8(=[(a0 + one of 0x38, 0xc0)]) == 0, and falls through when t8(=[(a0 + one of 0x38, 0xc0)]) != 0.
  The `beq` branch at 0x16c68 targets 0x16924 and is always taken.
  The `bne` branch at 0x16c70 targets 0x16d74, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x16c78 targets 0x16920, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x16c9c targets 0x16924 and is always taken.
  The `bne` branch at 0x16ca4 targets 0x16920, is taken when t9(=0x40000000) != s0(?), and falls through when t9(=0x40000000) == s0(?).
  The `beq` branch at 0x16cb8 targets 0x16924 and is always taken.
  The `bne` branch at 0x16cc0 targets 0x16920, is taken when ra(=0x2000) != s0(?), and falls through when ra(=0x2000) == s0(?).
  The `beq` branch at 0x16cc8 targets 0x16b00 and is always taken.
  The `bne` branch at 0x16cd0 targets 0x16920, is taken when at(=0x8000000000) != s0(?), and falls through when at(=0x8000000000) == s0(?).
  The `beq` branch at 0x16cf4 targets 0x16924 and is always taken.
  The `bne` branch at 0x16d00 targets 0x16920, is taken when v0(=0x800000000) != s0(?), and falls through when v0(=0x800000000) == s0(?).
  The `beq` branch at 0x16d08 targets 0x168f4 and is always taken.
  The `bne` branch at 0x16d10 targets 0x16920, is taken when v1(=0x1000000) != s0(?), and falls through when v1(=0x1000000) == s0(?).
  The `beq` branch at 0x16d44 targets 0x16924 and is always taken.
  The `bne` branch at 0x16d4c targets 0x16920, is taken when a0(=0x400000) != s0(?), and falls through when a0(=0x400000) == s0(?).
  The `beq` branch at 0x16d58 targets 0x16920, is taken when a1(=[(a0 + one of 0x38, 0xc0)]) == 0, and falls through when a1(=[(a0 + one of 0x38, 0xc0)]) != 0.
  The `beq` branch at 0x16d6c targets 0x16924 and is always taken.
  The `bne` branch at 0x16d74 targets 0x16920, is taken when a2(=0x100) != s0(?), and falls through when a2(=0x100) == s0(?).
  The `beq` branch at 0x16d7c targets 0x16b00 and is always taken.
  The `bne` branch at 0x16d84 targets 0x16920, is taken when a3(=0x80000000000) != s0(?), and falls through when a3(=0x80000000000) == s0(?).
  The `beq` branch at 0x16d8c targets 0x168d4 and is always taken.
  The `bne` branch at 0x16d94 targets 0x16920, is taken when a4(=0x4000000) != s0(?), and falls through when a4(=0x4000000) == s0(?).
  The `beq` branch at 0x16da0 targets 0x16dbc, is taken when a5(=[(a0 + one of 0x38, 0xc0)]) == 0, and falls through when a5(=[(a0 + one of 0x38, 0xc0)]) != 0.
  The `beq` branch at 0x16dbc targets 0x16e44, is taken when a0(=[(a0 + one of 0x38, 0xc0)]) == 0, and falls through when a0(=[(a0 + one of 0x38, 0xc0)]) != 0.
  The `beq` branch at 0x16dc8 targets 0x16e40, is taken when a6(=[(a0 + one of 0x3c, 0xc4)]) == 0, and falls through when a6(=[(a0 + one of 0x3c, 0xc4)]) != 0.
  The `beq` branch at 0x16dec targets 0x16924 and is always taken.
  The `beq` branch at 0x16e04 targets 0x16924 and is always taken.
  The `beq` branch at 0x16e38 targets 0x16924 and is always taken.
  The `beq` branch at 0x16e60 targets 0x16924 and is always taken.
  The return at 0x16c24 has v0 = one of ?, ret(kl_perr).
- `show_err_xbow_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x16e68 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x16e68-0x16f64 (252 bytes).
  It occupies 252 bytes.
  The `lh` at 0x16e9c loads 2 bytes from a0 (arg0 at entry) +0xe.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x17, including `lbu` at 0x16ea8, `lbu` at 0x16f48.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x16ee0, `lw` at 0x16f30.
  The `lbu` at 0x16ef0 loads 1 byte from ?.
  The `jal` at 0x16ea0 calls kl_perr with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2.
  The `jal` at 0x16f40 calls show_xbow_err with a0=?, a1=a1 at entry (arg1), a2=[a0+23]:1, a3=?.
  The `blez` branch at 0x16eb8 targets 0x16f0c, is taken when a2(=[a0+23]:1) <= 0 (signed), and falls through when a2(=[a0+23]:1) > 0 (signed).
  The `beq` branch at 0x16ef4 targets 0x16f30, is taken when s5(=0x4) == t8(?), and falls through when s5(=0x4) != t8(?).
  The `bne` branch at 0x16f04 targets 0x16edc, is taken when s0(?) < a2(=[a0+23]:1) (signed), and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  The `bne` branch at 0x16f54 targets 0x16edc, is taken when s0(?) < a2(=[a0+23]:1) (signed), and falls through when s0(?) >= a2(=[a0+23]:1) (signed).
  The `beq` branch at 0x16f5c targets 0x16f10 and is always taken.
  The return at 0x16f28 has v0 = one of ?, ret(show_xbow_err).
- `show_xbow_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x16f64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x16f64-0x17220 (700 bytes).
  It occupies 700 bytes.
  The `lw` at 0x16f80 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x8, 0x58) +0x0, including `lw` at 0x16fa8, `lw` at 0x16fd0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1701c, `ld` at 0x17080.
  The `ld` at 0x170c4 loads 8 bytes from table(sym(pi_err_status_cmd)) +0x1178.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x17118, `lw` at 0x17128.
  The `lw` at 0x17170 loads 4 bytes from (a0 + one of 0x14, 0x64) +0x0.
  The `lw` at 0x1719c loads 4 bytes from (a0 + one of 0xc, 0x5c) +0x0.
  The `lw` at 0x171b0 loads 4 bytes from (a0 + one of 0x10, 0x60) +0x0.
  The `lw` at 0x1721c loads 4 bytes from (a0 + one of 0x38, 0x88) +0x0.
  The `jal` at 0x16fc4 calls kl_perr with a0=0x3, a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x16fdc calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x8, 0x58)], a3=?.
  The `jal` at 0x17020 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x17058 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x17084 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x170c8 calls kl_perr with a0=0x5, a1=sym(.rodata)+7952, a2=[table(sym(pi_err_status_cmd))+4472]:8, a3=?.
  The `jal` at 0x17158 calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1718c calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x14, 0x64)], a3=?.
  The `jal` at 0x171a0 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0xc, 0x5c)], a3=?.
  The `jal` at 0x171b4 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=[(a0 + one of 0x10, 0x60)], a3=?.
  The `jal` at 0x171fc calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x16f9c targets 0x16fa8, is taken when (at(=[a1+12]) & 0x1) == 0, and falls through when (at(=[a1+12]) & 0x1) != 0.
  The `beq` branch at 0x16fb4 targets 0x170a8, is taken when (v0(=[(a0 + one of 0x8, 0x58)]) & v1(=0xffffffffff80003f)) == 0, and falls through when (v0(=[(a0 + one of 0x8, 0x58)]) & v1(=0xffffffffff80003f)) != 0.
  The `beq` branch at 0x17010 targets 0x17028, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x1703c targets 0x17010, is taken when s1(?) < 0x6 (signed), and falls through when s1(?) >= 0x6 (signed).
  The `beq` branch at 0x17074 targets 0x1708c, is taken when (s0(?) & a2(?)) == 0, and falls through when (s0(?) & a2(?)) != 0.
  The `bne` branch at 0x17098 targets 0x1706c, is taken when s1(?) < 0x20 (unsigned), and falls through when s1(?) >= 0x20 (unsigned).
  The `beq` branch at 0x170a0 targets 0x170ac and is always taken.
  The `beq` branch at 0x170b0 targets 0x1720c and is always taken.
  The `beq` branch at 0x170d8 targets 0x170fc, is taken when s0(?) >= 0x13 (unsigned), and falls through when s0(?) < 0x13 (unsigned).
  The `bne` branch at 0x170e4 targets 0x170b8, is taken when (s1(?) & a4(?)) != 0, and falls through when (s1(?) & a4(?)) == 0.
  The `bne` branch at 0x170f4 targets 0x170e0, is taken when s0(?) < 0x13 (unsigned), and falls through when s0(?) >= 0x13 (unsigned).
  The `beq` branch at 0x17110 targets 0x17170, is taken when s4(?) >= 0x8 (signed), and falls through when s4(?) < 0x8 (signed).
  The `beq` branch at 0x17120 targets 0x170fc, is taken when (a7(?) & 0x20) == 0, and falls through when (a7(?) & 0x20) != 0.
  The `beq` branch at 0x17130 targets 0x170fc, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x17138 targets 0x17144, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x17144 targets 0x171ec, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x17168 targets 0x170dc and is always taken.
  The `bne` branch at 0x17178 targets 0x17188, is taken when (a2(=[(a0 + one of 0x14, 0x64)]) & 0x200) != 0, and falls through when (a2(=[(a0 + one of 0x14, 0x64)]) & 0x200) == 0.
  The `beq` branch at 0x17180 targets 0x171bc, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x17204 targets 0x17100 and is always taken.
  The `beq` branch at 0x17218 targets 0x1711c and is always taken.
  The return at 0x171e4 has v0 = one of ?, ret(kl_perr).
- `show_rr_error_status` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17220 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17220-0x17410 (496 bytes).
  It occupies 496 bytes.
  The `jalr` at 0x1726c calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=a3 at entry (arg3), a5=0x1.
  The `jalr` at 0x17290 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x172b4 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a4=0x1.
  The `jalr` at 0x172d8 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a5=0x1.
  The `jalr` at 0x172f8 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x17318 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x17338 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x17364 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?, a4=0xf000000.
  The `jalr` at 0x17388 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x173ac calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x173d0 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x173e8 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x1724c targets 0x173f0, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1725c targets 0x17274, is taken when (a0 & at(=0x4000000000)) == 0, and falls through when (a0 & at(=0x4000000000)) != 0.
  The `beq` branch at 0x17280 targets 0x17298, is taken when (s0(=a0) & a2(=0x2000000000)) == 0, and falls through when (s0(=a0) & a2(=0x2000000000)) != 0.
  The `beq` branch at 0x172a4 targets 0x172c0, is taken when (s0(=a0) & a3(=0x1000000000)) == 0, and falls through when (s0(=a0) & a3(=0x1000000000)) != 0.
  The `beq` branch at 0x172c8 targets 0x172e4, is taken when (s0(=a0) & a4(=0x800000000)) == 0, and falls through when (s0(=a0) & a4(=0x800000000)) != 0.
  The `beq` branch at 0x172ec targets 0x17300, is taken when (s0(=a0) & a5(=0x400000000)) == 0, and falls through when (s0(=a0) & a5(=0x400000000)) != 0.
  The `beq` branch at 0x1730c targets 0x17320, is taken when (s0(=a0) & a6(=0x200000000)) == 0, and falls through when (s0(=a0) & a6(=0x200000000)) != 0.
  The `beq` branch at 0x1732c targets 0x17340, is taken when (s0(=a0) & a7(=0x100000000)) == 0, and falls through when (s0(=a0) & a7(=0x100000000)) != 0.
  The `beq` branch at 0x1734c targets 0x17370, is taken when (s0(=a0) & t0(=0xf0000000)) == 0, and falls through when (s0(=a0) & t0(=0xf0000000)) != 0.
  The `beq` branch at 0x17374 targets 0x17390, is taken when (s0(=a0) & a4(=0xf000000)) == 0, and falls through when (s0(=a0) & a4(=0xf000000)) != 0.
  The `beq` branch at 0x17398 targets 0x173b4, is taken when (s0(=a0) & a4(=0xff0000)) == 0, and falls through when (s0(=a0) & a4(=0xff0000)) != 0.
  The `beq` branch at 0x173b8 targets 0x173dc, is taken when (s0(=a0) & 0xff00) == 0, and falls through when (s0(=a0) & 0xff00) != 0.
  The `beq` branch at 0x173dc targets 0x173f0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The return at 0x17408 has v0 = one of ?, ret(?).
- `show_rr_status_rev_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17410 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17410-0x175dc (460 bytes).
  It occupies 460 bytes.
  The `jalr` at 0x17454 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x17474 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jalr` at 0x17490 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jalr` at 0x174bc calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jalr` at 0x174f4 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jalr` at 0x175b0 calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jalr` at 0x175cc calls (unknown callee) with a0=a2 at entry (arg2), a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x17444 targets 0x1745c, is taken when (a0 & at(=0x100000000)) == 0, and falls through when (a0 & at(=0x100000000)) != 0.
  The `beq` branch at 0x17468 targets 0x1747c, is taken when (s5(=a0) & a2(=0x200000000)) == 0, and falls through when (s5(=a0) & a2(=0x200000000)) != 0.
  The `beq` branch at 0x17488 targets 0x17498, is taken when (s5(=a0) & a3(=0x400000000)) == 0, and falls through when (s5(=a0) & a3(=0x400000000)) != 0.
  The `beq` branch at 0x174b0 targets 0x174c4, is taken when (s5(=a0) & a4(=0x800000000)) == 0, and falls through when (s5(=a0) & a4(=0x800000000)) != 0.
  The `beq` branch at 0x174dc targets 0x1751c and is always taken.
  The `beq` branch at 0x17514 targets 0x17574, is taken when s3(?) >= 0x9 (signed), and falls through when s3(?) < 0x9 (signed).
  The `beq` branch at 0x17528 targets 0x1755c, is taken when (s6(=a1) & a3(?)) == 0, and falls through when (s6(=a1) & a3(?)) != 0.
  The `beq` branch at 0x1753c targets 0x175a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x17544 targets 0x175c0, is taken when s4(=0x1) == a5(?), and falls through when s4(=0x1) != a5(?).
  The `beq` branch at 0x1754c targets 0x174e4, is taken when a0(=0x2) == a5(?), and falls through when a0(=0x2) != a5(?).
  The `beq` branch at 0x17554 targets 0x174e4, is taken when a1(=0x3) == a5(?), and falls through when a1(=0x3) != a5(?).
  The `bne` branch at 0x1756c targets 0x1751c, is taken when s3(?) < 0x9 (signed), and falls through when s3(?) >= 0x9 (signed).
  The `beq` branch at 0x175b8 targets 0x17500 and is always taken.
  The `beq` branch at 0x175d4 targets 0x17500 and is always taken.
  The return at 0x1759c has v0 = one of ret(?), ?.
- `show_err_router_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x175dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x175dc-0x177ac (464 bytes).
  It occupies 464 bytes.
  The `lh` at 0x17634 loads 2 bytes from a0 (arg0 at entry) +0xe.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x17, including `lbu` at 0x1764c, `lbu` at 0x176e4.
  The `ld` at 0x176c0 loads 8 bytes from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x176fc, `lw` at 0x1771c.
  The `lbu` at 0x1770c loads 1 byte from ?.
  The `lw` at 0x177a8 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `jal` at 0x175ec calls board_serial_number_get with a0=a0 at entry (arg0), a1=sp-304, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1761c calls sprintf with a0=sp-200, a1=sym(.rodata)+7952, a2=sp-304, a3=?.
  The `jal` at 0x17638 calls kl_perr with a0=0x2, a1=sym(.rodata)+7952, a2=sym(.rodata)+7952, a3=[a0+14]:2, a4=sp-200.
  The `jal` at 0x17644 calls kl_perr with a0=0x3, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x1768c calls kl_perr with a0=0x4, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `jal` at 0x176a4 calls show_rr_error_status with a0=?, a1=?, a2=0x5, a3=sym(kl_perr), a4=0x1.
  The `jal` at 0x17730 calls net_errmsg with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17744 calls kl_perr with a0=0x14, a1=sym(.rodata)+7952, a2=?, a3=ret(net_errmsg).
  The `jal` at 0x1778c calls sprintf with a0=sp-200, a1=sym(.rodata)+7952, a2=?, a3=?.
  The `beq` branch at 0x17608 targets 0x17784, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `blez` branch at 0x17668 targets 0x17754, is taken when a0(=[a0+23]:1) <= 0 (signed), and falls through when a0(=[a0+23]:1) > 0 (signed).
  The `beq` branch at 0x1767c targets 0x1779c and is always taken.
  The `beq` branch at 0x176b4 targets 0x176e4, is taken when s0(?) >= 0x9 (signed), and falls through when s0(?) < 0x9 (signed).
  The `bltz` branch at 0x176c4 targets 0x17730, is taken when s1(?) < 0 (signed), and falls through when s1(?) >= 0 (signed).
  The `bne` branch at 0x176cc targets 0x17684, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bne` branch at 0x176dc targets 0x176bc, is taken when s0(?) < 0x9 (signed), and falls through when s0(?) >= 0x9 (signed).
  The `beq` branch at 0x176f4 targets 0x17754, is taken when s3(?) >= a0(=[a0+23]:1) (signed), and falls through when s3(?) < a0(=[a0+23]:1) (signed).
  The `bne` branch at 0x17714 targets 0x176e8, is taken when ra(=0x9) != at(?), and falls through when ra(=0x9) == at(?).
  The `beq` branch at 0x17728 targets 0x176b8 and is always taken.
  The `beq` branch at 0x1774c targets 0x176b0 and is always taken.
  The `beq` branch at 0x17794 targets 0x17624 and is always taken.
  The `beq` branch at 0x177a4 targets 0x17700 and is always taken.
  The return at 0x1777c has v0 = one of ret(kl_perr), ?.
- `hub_error_clear` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x177ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x177ac-0x17950 (420 bytes).
  It occupies 420 bytes.
  The `sd` at 0x17844 stores 8 bytes to ((a0 << 0x21) + one of 0x9200000001800400, 0x9200000001a00400) +0x0.
  The `sd` at 0x17850 stores 8 bytes to ((a0 << 0x21) + one of 0x9200000001800438, 0x9200000001a00438) +0x0.
  The `sd` at 0x1785c stores 8 bytes to ((a0 << 0x21) + one of 0x9200000001800458, 0x9200000001a00458) +0x0.
  The `sd` at 0x17864 stores 8 bytes to ((a0 << 0x21) + one of 0x92000000018004c8, 0x9200000001a004c8) +0x0.
  The `sd` at 0x1786c stores 8 bytes to ((a0 << 0x21) + one of 0x92000000018004d0, 0x9200000001a004d0) +0x0.
  The `ld` at 0x17884 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe03ffe8.
  The `ld` at 0x17890 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe01ffe8.
  The `ld` at 0x1789c loads 8 bytes from (a0 << 0x21) -0x6dfffffffe07ffa8.
  The `ld` at 0x178a8 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe03ffd8.
  The `ld` at 0x178b8 loads 8 bytes from ?.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x178d8, `sd` at 0x17928, `sd` at 0x17944.
  The `sd` at 0x178e8 stores 8 bytes to (a0 << 0x21) -0x6dfffffffe3ffe08.
  The `ld` at 0x178ec loads 8 bytes from (a0 << 0x21) -0x6dfffffffe3ffec8.
  The `sd` at 0x178fc stores 8 bytes to (a0 << 0x21) -0x6dfffffffe3ffec8.
  The `ld` at 0x17904 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe17fee0.
  The `sd` at 0x17908 stores 8 bytes to (a0 << 0x21) -0x6dfffffffe1fbfb8.
  The `sd` at 0x1790c stores 8 bytes to (a0 << 0x21) -0x6dfffffffe1fbfb0.
  The `bne` branch at 0x17868 targets 0x17800, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `bne` branch at 0x178d4 targets 0x178ac, is taken when a1(?) < 0x9 (signed), and falls through when a1(?) >= 0x9 (signed).
  The `beq` branch at 0x1792c targets 0x17948, is taken when a1(?) >= 0x71 (signed), and falls through when a1(?) < 0x71 (signed).
  The `bne` branch at 0x17940 targets 0x17918, is taken when a1(?) < 0x71 (signed), and falls through when a1(?) >= 0x71 (signed).
  The return at 0x17948 has v0 = (a0 << 0x21)+0x9200000001c00000.
- `hub_error_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17950-0x17f08 (1464 bytes).
  It occupies 1464 bytes.
  The `lh` at 0x17964 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  4 such `sd` accesses store 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800408, 0x9200000001a00408) +0x0, including `sd` at 0x179e8, `sd` at 0x17bbc, `sd` at 0x17c28.
  4 such `sd` accesses store 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800410, 0x9200000001a00410) +0x0, including `sd` at 0x179f4, `sd` at 0x17bd0, `sd` at 0x17c3c.
  The `ld` at 0x179fc loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x92000000018000f0, 0x9200000001a000f0) +0x0.
  The `sd` at 0x17a08 stores 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x92000000018000f0, 0x9200000001a000f0) +0x0.
  The `ld` at 0x17a2c loads 8 bytes from abs 0xffffffffffffc400.
  The `sw` at 0x17a50 stores 4 bytes to [-0x3c00]:8 +0x884c.
  11 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(kl_error_log)) +0x0, including `ld` at 0x17a5c, `ld` at 0x17a78, `ld` at 0x17a80.
  The `ld` at 0x17a6c loads 8 bytes from ((a0 << 0x3) + sym(kl_error_log)) +0x400.
  The `sw` at 0x17a7c stores 4 bytes to [((a0 << 0x3) + sym(kl_error_log))]:8 +0x0.
  2 such `ld` accesses load 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800040, 0x9200000001a00040) +0x0, including `ld` at 0x17b40, `ld` at 0x17cb8.
  The `ld` at 0x17b54 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800050, 0x9200000001a00050) +0x0.
  2 such `ld` accesses load 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800048, 0x9200000001a00048) +0x0, including `ld` at 0x17b64, `ld` at 0x17d04.
  The `ld` at 0x17b74 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800058, 0x9200000001a00058) +0x0.
  The `ld` at 0x17c14 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800408, 0x9200000001a00408) +0x0.
  The `ld` at 0x17c30 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800410, 0x9200000001a00410) +0x0.
  The `sd` at 0x17c7c stores 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800448, 0x9200000001a00448) +0x0.
  The `sd` at 0x17c84 stores 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800468, 0x9200000001a00468) +0x0.
  The `ld` at 0x17cd8 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800418, 0x9200000001a00418) +0x0.
  6 such `sd` accesses store 8 bytes to ?, including `sd` at 0x17ce0, `sd` at 0x17cec, `sd` at 0x17d30.
  The `ld` at 0x17d28 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800420, 0x9200000001a00420) +0x0.
  2 such `ld` accesses load 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe7ffbd8, including `ld` at 0x17d50, `ld` at 0x17d5c.
  The `lh` at 0x17d70 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0x17d7c loads 8 bytes from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0.
  The `sd` at 0x17d90 stores 8 bytes to [(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 +0x2250.
  The `ld` at 0x17e00 loads 8 bytes from ?.
  The `sh` at 0x17e84 stores 2 bytes to sym(.bss) +0x9f94.
  The `sw` at 0x17e8c stores 4 bytes to sym(.bss) +0x9f90.
  The `jal` at 0x17974 calls hub_error_clear with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17988 calls get_compact_nodeid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17a0c calls hubii_eint_init with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x17a14 calls hubni_eint_init with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x17a84 calls recover_error_init with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8208, a1=[((a0 << 0x3) + sym(kl_error_log))]:8, a2=?, a3=?.
  The `jal` at 0x17a90 calls recover_error_init with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8336, a1=?, a2=?, a3=?.
  The `jal` at 0x17a9c calls recover_error_init with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8464, a1=?, a2=?, a3=?.
  The `jal` at 0x17aa8 calls recover_error_init with a0=[((a0 << 0x3) + sym(kl_error_log))]:8+8592, a1=?, a2=?, a3=?.
  The `jal` at 0x17d8c calls cause_intr_connect with a0=0x6, a1=sym(hubpi_eint_handler), a2=0x1, a3=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8, a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a7=0x200040.
  The `jal` at 0x17ddc calls kmem_zalloc_node with a0=0x2258, a1=0x1, a2=?, a3=?.
  The `jal` at 0x17df8 calls kmem_zalloc_node with a0=0x40, a1=0x101, a2=?, a3=?.
  The `jal` at 0x17e90 calls spinlock_init with a0=sym(kl_error_log), a1=sym(.rodata)+28464, a2=?, a3=?, a4=-0x1.
  The `jal` at 0x17eac calls assfail with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x154, a3=?.
  The `jal` at 0x17ec8 calls assfail with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x162, a3=?, a7=0x0.
  The `jal` at 0x17ee0 calls assfail with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x163, a3=?.
  The `jal` at 0x17ef8 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=?.
  The `beq` branch at 0x17980 targets 0x17da4, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x17990 targets 0x17a54, is taken when s0(=a0) == v0(=ret(get_compact_nodeid)), and falls through when s0(=a0) != v0(=ret(get_compact_nodeid)).
  The `bne` branch at 0x17a04 targets 0x179bc, is taken when a7(?) < 0x2 (signed), and falls through when a7(?) >= 0x2 (signed).
  The `beq` branch at 0x17a1c targets 0x17e80, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x17a60 targets 0x17ebc, is taken when a0(=[((a0 << 0x3) + sym(kl_error_log))]:8) == 0, and falls through when a0(=[((a0 << 0x3) + sym(kl_error_log))]:8) != 0.
  The `beq` branch at 0x17a70 targets 0x17ed8, is taken when a1(=[((a0 << 0x3) + sym(kl_error_log))+1024]:8) == 0, and falls through when a1(=[((a0 << 0x3) + sym(kl_error_log))+1024]:8) != 0.
  The `beq` branch at 0x17b8c targets 0x17e38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x17ba4 targets 0x17e68, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x17be0 targets 0x17b0c, is taken when a2(?) < 0x2 (signed), and falls through when a2(?) >= 0x2 (signed).
  The `bne` branch at 0x17c38 targets 0x17bfc, is taken when a2(?) < 0x2 (signed), and falls through when a2(?) >= 0x2 (signed).
  The `bne` branch at 0x17c80 targets 0x17c54, is taken when a2(?) < 0x2 (signed), and falls through when a2(?) >= 0x2 (signed).
  The `beq` branch at 0x17cc8 targets 0x17cf0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x17d18 targets 0x17d40, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x17d44 targets 0x17ca8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x17d54 targets 0x17d70, is taken when a3(=[([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)-7926335344146906072]:8) == 0, and falls through when a3(=[([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)-7926335344146906072]:8) != 0.
  The `beq` branch at 0x17d94 targets 0x17a0c, is taken when v0(=ret(cause_intr_connect)) == 0, and falls through when v0(=ret(cause_intr_connect)) != 0.
  The `beq` branch at 0x17d9c targets 0x17ef0 and is always taken.
  The `blez` branch at 0x17db8 targets 0x17e28, is taken when a4(=[sym(numnodes)]) <= 0 (signed), and falls through when a4(=[sym(numnodes)]) > 0 (signed).
  The `beq` branch at 0x17e08 targets 0x17ea0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x17e10 targets 0x17ea0, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `bne` branch at 0x17e20 targets 0x17dd0, is taken when s1(?) < ra(=[sym(numnodes)]) (signed), and falls through when s1(?) >= ra(=[sym(numnodes)]) (signed).
  The `beq` branch at 0x17e30 targets 0x17988 and is always taken.
  The `beq` branch at 0x17e38 targets 0x17bd8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x17e60 targets 0x17bd8 and is always taken.
  The `beq` branch at 0x17e78 targets 0x17bd4 and is always taken.
  The `beq` branch at 0x17e98 targets 0x17a28 and is always taken.
  The `beq` branch at 0x17eb4 targets 0x17e18 and is always taken.
  The `beq` branch at 0x17ed0 targets 0x17a68 and is always taken.
  The `beq` branch at 0x17ee8 targets 0x17a7c and is always taken.
  The `beq` branch at 0x17f00 targets 0x17a0c and is always taken.
  The return at 0x17a4c has v0 = [-0x3c00]:8+34892.
- `ni_port_down_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18974 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18974-0x18a24 (176 bytes).
  It occupies 176 bytes.
  2 such `ld` accesses load 8 bytes from (a0 << 0x21) -0x6dfffffffe180000, including `ld` at 0x1899c, `ld` at 0x18a04.
  3 such `ld` accesses load 8 bytes from (a0 << 0x21) -0x6dfffffffe17fee0, including `ld` at 0x189b0, `ld` at 0x189c4, `ld` at 0x189d4.
  2 such `sd` accesses store 8 bytes to (a0 << 0x21) -0x6dfffffffe17ff00, including `sd` at 0x189c0, `sd` at 0x189d8.
  The `jal` at 0x1897c calls part_id with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x189fc calls us_delay with a0=0xc8, a1=?, a2=?, a3=?.
  The `blez` branch at 0x18984 targets 0x189dc, is taken when v0(=ret(part_id)) <= 0 (signed), and falls through when v0(=ret(part_id)) > 0 (signed).
  The `beq` branch at 0x189a8 targets 0x189ec, is taken when at(?) == v0(=0x4), and falls through when at(?) != v0(=0x4).
  The `beq` branch at 0x189bc targets 0x189dc, is taken when (t8(=[(a0 << 0x21)-7926335344140091104]:8) & t9(=0xfffffff000000)) == 0, and falls through when (t8(=[(a0 << 0x21)-7926335344140091104]:8) & t9(=0xfffffff000000)) != 0.
  The `beq` branch at 0x189cc targets 0x189e0, is taken when (ra(=[(a0 << 0x21)-7926335344140091104]:8) & at(=0x1fffffff000000)) == 0, and falls through when (ra(=[(a0 << 0x21)-7926335344140091104]:8) & at(=0x1fffffff000000)) != 0.
  The `beq` branch at 0x189ec targets 0x189fc and is always taken.
  The `beq` branch at 0x189f4 targets 0x18a1c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x18a14 targets 0x189f4, is taken when (v1(=[(a0 << 0x21)-7926335344140091392]:8) & 0x2) == 0, and falls through when (v1(=[(a0 << 0x21)-7926335344140091392]:8) & 0x2) != 0.
  The `beq` branch at 0x18a1c targets 0x189b0 and is always taken.
  The return at 0x189e4 has v0 = ?.
- `check_ni_errors_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18a24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18a24-0x18d20 (764 bytes).
  It occupies 764 bytes.
  The `ld` at 0x18a44 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe17ff00.
  The `ld` at 0x18a58 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe180000.
  The `ld` at 0x18a64 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe7fff60.
  4 such `ld` accesses load 8 bytes from (a0 << 0x21) -0x6dfffffffe17fee0, including `ld` at 0x18a78, `ld` at 0x18a88, `ld` at 0x18b08.
  3 such `sd` accesses store 8 bytes to (a0 << 0x21) -0x6dfffffffe17ff00, including `sd` at 0x18a7c, `sd` at 0x18b0c, `sd` at 0x18cd4.
  2 such `ld` accesses load 8 bytes from (a0 << 0x21) -0x6dfffffffe17fff0, including `ld` at 0x18ae0, `ld` at 0x18cac.
  The `ld` at 0x18c68 loads 8 bytes from abs 0x9200000001680108.
  The `ld` at 0x18c7c loads 8 bytes from abs 0x9200000001680110.
  The `ld` at 0x18c90 loads 8 bytes from abs 0x9200000001680118.
  The `jal` at 0x18a68 calls part_id with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[(a0 << 0x21)-7926335344140091392]:8, a3=a3 at entry (arg3).
  The `jal` at 0x18a80 calls ni_port_down_reset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x18af8 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x18b00 calls ni_port_down_reset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x18b28 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x18b38 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344140091136]:8, a3=?.
  The `jal` at 0x18b58 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18b7c calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18ba0 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18bc4 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18be8 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18c0c calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18c30 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18c50 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=0x10000000000000, a3=?.
  The `jal` at 0x18c64 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[0x9200000001680108]:8, a3=?.
  The `jal` at 0x18c78 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[0x9200000001680110]:8, a3=?.
  The `jal` at 0x18c8c calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[0x9200000001680118]:8, a3=?.
  The `jal` at 0x18c94 calls protected_broadcast with a0=0x67, a1=?, a2=?, a3=?.
  The `jal` at 0x18c9c calls protected_broadcast with a0=0x68, a1=?, a2=?, a3=?.
  The `jal` at 0x18cc0 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344140091392]:8, a3=[(a0 << 0x21)-7926335344140091376]:8.
  The `jal` at 0x18cc8 calls ni_port_down_reset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x18cec calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344140091392]:8, a3=[(a0 << 0x21)-7926335344140091376]:8.
  The `jal` at 0x18cf8 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18d10 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[(a0 << 0x21)-7926335344146906976]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x18a60 targets 0x18a98, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) != 0.
  The `blez` branch at 0x18a70 targets 0x18ad0, is taken when v0(=ret(part_id)) <= 0 (signed), and falls through when v0(=ret(part_id)) > 0 (signed).
  The `beq` branch at 0x18a90 targets 0x18ab8 and is always taken.
  The `beq` branch at 0x18a9c targets 0x18cac, is taken when (a2(=[(a0 << 0x21)-7926335344140091392]:8) & 0x3) == 0, and falls through when (a2(=[(a0 << 0x21)-7926335344140091392]:8) & 0x3) != 0.
  The `bne` branch at 0x18aac targets 0x18d08, is taken when (v0(=[(a0 << 0x21)-7926335344146906976]:8) & at(=0x18000000000)) != 0, and falls through when (v0(=[(a0 << 0x21)-7926335344146906976]:8) & at(=0x18000000000)) == 0.
  The `beq` branch at 0x18ad8 targets 0x18b1c, is taken when (v0(=0x10000000000000) & s0(=[(a0 << 0x21)-7926335344140091136]:8)) == 0, and falls through when (v0(=0x10000000000000) & s0(=[(a0 << 0x21)-7926335344140091136]:8)) != 0.
  The `bne` branch at 0x18ae4 targets 0x18b1c, is taken when v1(=[(a0 << 0x21)-7926335344140091376]:8) != 0, and falls through when v1(=[(a0 << 0x21)-7926335344140091376]:8) == 0.
  The `beq` branch at 0x18b14 targets 0x18ab8 and is always taken.
  The `beq` branch at 0x18b48 targets 0x18b60, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000)) != 0.
  The `beq` branch at 0x18b6c targets 0x18b84, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000)) != 0.
  The `beq` branch at 0x18b90 targets 0x18ba8, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000)) != 0.
  The `beq` branch at 0x18bb4 targets 0x18bcc, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000)) != 0.
  The `beq` branch at 0x18bd8 targets 0x18bf0, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf0000000000)) != 0.
  The `beq` branch at 0x18bfc targets 0x18c14, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf00000000000)) != 0.
  The `beq` branch at 0x18c20 targets 0x18c38, is taken when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000000)) == 0, and falls through when (s0(=[(a0 << 0x21)-7926335344140091136]:8) & a2(=0xf000000000000)) != 0.
  The `beq` branch at 0x18c3c targets 0x18c5c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x18ca4 targets 0x18ab8 and is always taken.
  The `bne` branch at 0x18cb0 targets 0x18ce4, is taken when a3(=[(a0 << 0x21)-7926335344140091376]:8) != 0, and falls through when a3(=[(a0 << 0x21)-7926335344140091376]:8) == 0.
  The `beq` branch at 0x18cdc targets 0x18ab8 and is always taken.
  The `beq` branch at 0x18d00 targets 0x18ab8 and is always taken.
  The `beq` branch at 0x18d18 targets 0x18ab8 and is always taken.
  The return at 0x18ac8 has v0 = one of 0x0, 0x1.
- `hubni_error_handler_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18d20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18d20-0x18ec0 (416 bytes).
  It occupies 416 bytes.
  The `ld` at 0x18d3c loads 8 bytes from (a1 << 0x21) -0x6dfffffffe17ff00.
  3 such `ld` accesses load 8 bytes from (a1 << 0x21) -0x6dfffffffe17fee0, including `ld` at 0x18d74, `ld` at 0x18ea4, `ld` at 0x18eb4.
  The `ld` at 0x18d94 loads 8 bytes from (a1 << 0x21) -0x6dfffffffe17fff0.
  The `sd` at 0x18dd4 stores 8 bytes to ((ret(get_slice) << 0x3) + (ret(get_nasid) << 0x21)) -0x6fffffffcfffff40.
  The `jal` at 0x18d5c calls part_id with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[(a1 << 0x21)-7926335344140091136]:8.
  The `jal` at 0x18d6c calls ni_port_down_reset with a0=a1 at entry (arg1), a1=?, a2=?, a3=[(a1 << 0x21)-7926335344140091136]:8.
  The `jal` at 0x18da0 calls splerr with a0=?, a1=?, a2=?, a3=[(a1 << 0x21)-7926335344140091136]:8.
  The `jal` at 0x18da8 calls get_slice with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18db0 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18dd0 calls set_node_panic_flag with a0=0x9000000030000000, a1=(ret(get_nasid) << 0x21), a2=?, a3=?.
  The `jal` at 0x18de8 calls hubni_print_state with a0=a1 at entry (arg1), a1=0x0, a2=sym(ip27log_printf), a3=0x2.
  The `jal` at 0x18df0 calls enter_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18e04 calls router_print_state with a0=0x0, a1=0x0, a2=sym(ip27log_printf), a3=0x2.
  The `jal` at 0x18e1c calls ip27log_printf with a0=0x2, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jal` at 0x18e24 calls enter_promlog_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18e3c calls hubni_print_state with a0=a1 at entry (arg1), a1=0x16, a2=sym(cmn_err), a3=0x4.
  The `jal` at 0x18e50 calls router_print_state with a0=0x0, a1=0x16, a2=sym(cmn_err), a3=0x4.
  The `jal` at 0x18e64 calls panicspin with a0=?, a1=sym(.rodata)+28464, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x18e84 calls cmn_err with a0=0x0, a1=sym(.rodata)+28464, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x18e9c calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=[(a1 << 0x21)-7926335344140091136]:8.
  The `jal` at 0x18eac calls ni_port_down_reset with a0=a1 at entry (arg1), a1=?, a2=[(a1 << 0x21)-7926335344140091104]:8, a3=?.
  The `beq` branch at 0x18d54 targets 0x18d80, is taken when (a3(=[(a1 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) == 0, and falls through when (a3(=[(a1 << 0x21)-7926335344140091136]:8) & at(=0x1fffffff000000)) != 0.
  The `blez` branch at 0x18d64 targets 0x18d80, is taken when v0(=ret(part_id)) <= 0 (signed), and falls through when v0(=ret(part_id)) > 0 (signed).
  The `beq` branch at 0x18d78 targets 0x18e6c and is always taken.
  The `beq` branch at 0x18d8c targets 0x18da0, is taken when (a3(=[(a1 << 0x21)-7926335344140091136]:8) & ra(=0x10000000000000)) == 0, and falls through when (a3(=[(a1 << 0x21)-7926335344140091136]:8) & ra(=0x10000000000000)) != 0.
  The `beq` branch at 0x18d98 targets 0x18e94, is taken when at(=[(a1 << 0x21)-7926335344140091376]:8) == 0, and falls through when at(=[(a1 << 0x21)-7926335344140091376]:8) != 0.
  The `bne` branch at 0x18e5c targets 0x18e80, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0x18e8c targets 0x18e70 and is always taken.
  The `beq` branch at 0x18eb8 targets 0x18e6c and is always taken.
  The return at 0x18e78 has v0 = one of ?, ret(cmn_err).
- `check_ni_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18ec0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18ec0-0x18ee4 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x18ec8 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x18ed0 calls check_ni_errors_nasid [0x18a24] with a0=ret(get_nasid), a1=?, a2=?, a3=?.
  The return at 0x18edc has v0 = ret(check_ni_errors_nasid).
- `hubni_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18ee4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18ee4-0x18f1c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x18ef4 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x18f04 calls hubni_error_handler_nasid [0x18d20] with a0=a0 at entry (arg0), a1=ret(get_nasid), a2=a1 at entry (arg1), a3=?.
  The return at 0x18f14 has v0 = ret(hubni_error_handler_nasid).
- `save_md_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x190d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x190d4-0x19198 (196 bytes).
  It occupies 196 bytes.
  The `lh` at 0x190e0 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `ld` at 0x190fc loads 8 bytes from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0.
  The `sd` at 0x1912c stores 8 bytes to ret(md_err_log_new) +0x0.
  The `sd` at 0x19130 stores 8 bytes to ret(md_err_log_new) +0x8.
  The `sw` at 0x19134 stores 4 bytes to ret(md_err_log_new) +0x18.
  The `jal` at 0x1911c calls md_err_log_new with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[(sym(nasid_to_compact_node) + (a0 + a0))]:2, a5=(a0 + a0).
  The `jal` at 0x19160 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[(sym(nasid_to_compact_node) + (a0 + a0))]:2, a3=a3 at entry (arg3), a4=[(sym(nasid_to_compact_node) + (a0 + a0))]:2, a5=(a0 + a0).
  The `jal` at 0x19188 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=[(sym(nasid_to_compact_node) + (a0 + a0))]:2, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=a2 at entry (arg2).
  The `beq` branch at 0x19114 targets 0x19154, is taken when v0(=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8) == 0, and falls through when v0(=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8) != 0.
  The `beq` branch at 0x19124 targets 0x19170, is taken when v0(=ret(md_err_log_new)) == 0, and falls through when v0(=ret(md_err_log_new)) != 0.
  The `beq` branch at 0x19168 targets 0x1913c and is always taken.
  The `beq` branch at 0x19190 targets 0x1913c and is always taken.
  The return at 0x1914c has v0 = one of -0x1, 0x0.
- `probe_md_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19198 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19198-0x191c8 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x191a8 loads 8 bytes from abs 0xffffffffffffc400.
  The `sw` at 0x191c4 stores 4 bytes to [-0x3c00]:8 +0x884c.
  The `jal` at 0x191a0 calls log_md_errors with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x191c0 has v0 = [-0x3c00]:8+34892.
- `log_md_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x191c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x191c8-0x194c0 (760 bytes).
  It occupies 760 bytes.
  The `ld` at 0x19220 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe01ffe8.
  The `ld` at 0x19224 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe03ffe8.
  The `ld` at 0x1922c loads 8 bytes from (a0 << 0x21) -0x6dfffffffe03ffd8.
  The `ld` at 0x19230 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe07ffc0.
  The `ld` at 0x1923c loads 8 bytes from (a0 << 0x21) -0x6dfffffffe07ffa8.
  The `jal` at 0x191f0 calls splerr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19274 calls save_md_error with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344138780632]:8, a2=0x0, a3=0x3.
  The `jal` at 0x192a0 calls save_md_error with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344138780648]:8, a2=0x0, a3=0x1.
  The `jal` at 0x192c8 calls splx with a0=ret(splerr), a1=?, a2=?, a3=?.
  The `jal` at 0x192f8 calls klsave_md_registers with a0=[(a0 << 0x21)-7926335344138780648]:8, a1=0x0, a2=0x1, a3=a0 at entry (arg0).
  The `jal` at 0x19310 calls klsave_md_registers with a0=[(a0 << 0x21)-7926335344138780632]:8, a1=0x0, a2=0x3, a3=a0 at entry (arg0).
  The `jal` at 0x1937c calls klsave_md_registers with a0=[(a0 << 0x21)-7926335344139042752]:8, a1=[(a0 << 0x21)-7926335344139042728]:8, a2=0x4, a3=a0 at entry (arg0).
  The `jal` at 0x193a8 calls kl_panic with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19424 calls save_md_error with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344139042752]:8, a2=[(a0 << 0x21)-7926335344139042728]:8, a3=0x4.
  The `jal` at 0x19454 calls save_md_error with a0=a0 at entry (arg0), a1=[(a0 << 0x21)-7926335344138649576]:8, a2=0x0, a3=0x2.
  The `jal` at 0x19488 calls klsave_md_registers with a0=[(a0 << 0x21)-7926335344138649576]:8, a1=0x0, a2=0x2, a3=a0 at entry (arg0).
  The `bltz` branch at 0x19240 targets 0x19448, is taken when at(=([(a0 << 0x21)-7926335344138649576]:8 << 0x3)) < 0 (signed), and falls through when at(=([(a0 << 0x21)-7926335344138649576]:8 << 0x3)) >= 0 (signed).
  The `bne` branch at 0x1924c targets 0x19294, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bltz` branch at 0x19254 targets 0x19294, is taken when v0(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) < 0 (signed), and falls through when v0(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) >= 0 (signed).
  The `beq` branch at 0x19264 targets 0x193c0, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x1927c targets 0x19498, is taken when v0(=ret(save_md_error)) == 0, and falls through when v0(=ret(save_md_error)) != 0.
  The `beq` branch at 0x1928c targets 0x192c8 and is always taken.
  The `beq` branch at 0x192a8 targets 0x1943c, is taken when v0(=ret(save_md_error)) == 0, and falls through when v0(=ret(save_md_error)) != 0.
  The `beq` branch at 0x192b8 targets 0x19264, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `bltz` branch at 0x192d4 targets 0x19480, is taken when t8(=([(a0 << 0x21)-7926335344138649576]:8 << 0x3)) < 0 (signed), and falls through when t8(=([(a0 << 0x21)-7926335344138649576]:8 << 0x3)) >= 0 (signed).
  The `bne` branch at 0x192dc targets 0x192f0, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bgez` branch at 0x192e8 targets 0x19300, is taken when t9(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) >= 0 (signed), and falls through when t9(=([(a0 << 0x21)-7926335344138780648]:8 << 0x1)) < 0 (signed).
  The `beq` branch at 0x19300 targets 0x19318, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x19318 targets 0x19374, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0x1932c targets 0x19370, is taken when (ra(?) & 0x3) != 0, and falls through when (ra(?) & 0x3) == 0.
  The `bne` branch at 0x19340 targets 0x19370, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `bne` branch at 0x19348 targets 0x19374, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x19350 targets 0x19370, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x1935c targets 0x19370, is taken when (a1(?) & 0x3) != 0, and falls through when (a1(?) & 0x3) == 0.
  The `beq` branch at 0x19368 targets 0x19388, is taken when (a2(?) & 0xf) == 0, and falls through when (a2(?) & 0xf) != 0.
  The `beq` branch at 0x193a0 targets 0x193b0, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x193c8 targets 0x19418, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0x193d4 targets 0x19418, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x193dc targets 0x19418, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x193e8 targets 0x19418, is taken when (a4(?) & 0x3) != 0, and falls through when (a4(?) & 0x3) == 0.
  The `bne` branch at 0x193f4 targets 0x1941c, is taken when (a5(?) & 0x3) != 0, and falls through when (a5(?) & 0x3) == 0.
  The `bne` branch at 0x19404 targets 0x1941c, is taken when (a6(?) & 0x3) != 0, and falls through when (a6(?) & 0x3) == 0.
  The `beq` branch at 0x19414 targets 0x192c8, is taken when (a7(?) & 0xf) == 0, and falls through when (a7(?) & 0xf) != 0.
  The `beq` branch at 0x19434 targets 0x192c8 and is always taken.
  The `beq` branch at 0x19440 targets 0x192b8 and is always taken.
  The `beq` branch at 0x1946c targets 0x19248, is taken when 0 >= v0(=ret(save_md_error)) (unsigned), and falls through when 0 < v0(=ret(save_md_error)) (unsigned).
  The `beq` branch at 0x19478 targets 0x192c8 and is always taken.
  The `beq` branch at 0x19490 targets 0x192dc and is always taken.
  The `beq` branch at 0x1949c targets 0x194b0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x194b0 targets 0x192c8, is taken when t9(=one of 0x0, 0x1) != 0, and falls through when t9(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x194b8 targets 0x193c0 and is always taken.
  The return at 0x193b8 has v0 = one of ?, ret(kl_panic).
- `check_md_errors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x194c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x194c0-0x1972c (620 bytes).
  It occupies 620 bytes.
  The `lh` at 0x194ec loads 2 bytes from table(sym(nasid_to_compact_node)) +0x0.
  The `ld` at 0x19504 loads 8 bytes from (sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3)) +0x0.
  The `ld` at 0x1952c loads 8 bytes from a3 (arg3 at entry) +0x0.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1959c, `ld` at 0x1964c, `ld` at 0x19670.
  The `ld` at 0x195a0 loads 8 bytes from abs 0x9200000001030100.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sd` at 0x195b4, `sd` at 0x19610.
  The `lw` at 0x195b8 loads 4 bytes from ?.
  4 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x1967c, `sd` at 0x196b0, `sd` at 0x196dc.
  The `jal` at 0x19538 calls md_err_log_prev with a0=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a1=[a3]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x195e4 calls kl_panic with a0=sym(.rodata)+28464, a1=[sym(scache_linemask)], a2=0x1, a3=0x3fffffffff, a4=0x4.
  The `jal` at 0x195f0 calls md_err_log_prev with a0=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x19714 calls md_err_log_last with a0=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a1=[a3]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x19524 targets 0x19724, is taken when s4(=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8) == 0, and falls through when s4(=[(sym(kl_error_log) + (entry(sym(nasid_to_compact_node)) << 0x3))]:8) != 0.
  The `beq` branch at 0x19530 targets 0x19714, is taken when a1(=[a3]:8) == 0, and falls through when a1(=[a3]:8) != 0.
  The `beq` branch at 0x19544 targets 0x19614, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x19594 targets 0x195b4, is taken when s1(=a2) == a0(=-0x1), and falls through when s1(=a2) != a0(=-0x1).
  The `beq` branch at 0x195ac targets 0x19610, is taken when v0(?) >= s1(=a2) (unsigned), and falls through when v0(?) < s1(=a2) (unsigned).
  The `beq` branch at 0x195bc targets 0x19680, is taken when v0(?) == a1(=0x2), and falls through when v0(?) != a1(=0x2).
  The `beq` branch at 0x195c4 targets 0x196b4, is taken when v0(?) == a2(=0x1), and falls through when v0(?) != a2(=0x1).
  The `beq` branch at 0x195cc targets 0x196e0, is taken when v0(?) == a3(=0x3), and falls through when v0(?) != a3(=0x3).
  The `beq` branch at 0x195d8 targets 0x19648, is taken when v0(?) == a4(=0x4), and falls through when v0(?) != a4(=0x4).
  The `bne` branch at 0x19600 targets 0x19594, is taken when v0(=ret(md_err_log_prev)) != 0, and falls through when v0(=ret(md_err_log_prev)) == 0.
  The `beq` branch at 0x19608 targets 0x19618 and is always taken.
  The `bne` branch at 0x19668 targets 0x195f0, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x19678 targets 0x19618 and is always taken.
  The `bne` branch at 0x196a4 targets 0x195ec, is taken when a6(?) != a7(?), and falls through when a6(?) == a7(?).
  The `beq` branch at 0x196ac targets 0x19618 and is always taken.
  The `bne` branch at 0x196d0 targets 0x195ec, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?).
  The `beq` branch at 0x196d8 targets 0x19618 and is always taken.
  The `bne` branch at 0x19704 targets 0x195ec, is taken when t8(?) != t9(?), and falls through when t8(?) == t9(?).
  The `beq` branch at 0x1970c targets 0x19618 and is always taken.
  The `beq` branch at 0x1971c targets 0x19544 and is always taken.
  The `beq` branch at 0x19724 targets 0x1961c and is always taken.
  The return at 0x19640 has v0 = one of 0x0, 0x1, 0x2, 0x3.
- `md_err_log_first` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1972c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1972c-0x19764 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x1972c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1973c loads 4 bytes from ?.
  The `lw` at 0x19758 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `beq` branch at 0x19740 targets 0x19758, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1975c targets 0x19748 and is always taken.
  The return at 0x19750 has v0 = ?.
- `md_err_log_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19764 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19764-0x197f8 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x197a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x197e8 calls assfail with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x603, a3=a3 at entry (arg3).
  The `bltz` branch at 0x19784 targets 0x197dc, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `beq` branch at 0x1978c targets 0x197dc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x197c8 targets 0x197d4, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `beq` branch at 0x197f0 targets 0x19794 and is always taken.
  The return at 0x197d4 has v0 = one of 0x0, ?.
- `md_err_log_last` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x197f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x197f8-0x19824 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x197f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x19810 loads 4 bytes from ?.
  The return at 0x1981c has v0 = ?.
- `md_err_log_prev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19824 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19824-0x198cc (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x19868 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x19898 loads 4 bytes from ?.
  The `jal` at 0x198bc calls assfail with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x625, a3=a3 at entry (arg3).
  The `bltz` branch at 0x19844 targets 0x198b0, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `beq` branch at 0x1984c targets 0x198b4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x19890 targets 0x198a8, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `beq` branch at 0x198c4 targets 0x19858 and is always taken.
  The return at 0x198a8 has v0 = one of 0x0, ?.
- `md_err_log_new` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x198cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x198cc-0x1994c (128 bytes).
  It occupies 128 bytes.
  The `ll` at 0x198d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x198dc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x198f8 loads 4 bytes from ?.
  The `ld` at 0x19900 loads 8 bytes from abs 0x9200000001030100.
  The `ld` at 0x19910 loads 8 bytes from ?.
  The `sd` at 0x19930 stores 8 bytes to ?.
  The `beql` branch at 0x198e0 targets 0x198d0, is taken when a1(=[a0]+1) == 0, and falls through when a1(=[a0]+1) != 0; its branch-likely delay slot `nop` at 0x198e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x19904 targets 0x1993c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x19928 targets 0x19934, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1993c targets 0x19930, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x19944 targets 0x19934 and is always taken.
  The return at 0x19934 has v0 = ?.
- `hubpi_spool_get_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19b20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19b20-0x19d50 (560 bytes).
  It occupies 560 bytes.
  4 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0x19b48, `lh` at 0x19c10, `lh` at 0x19c90.
  2 such `ld` accesses load 8 bytes from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0, including `ld` at 0x19b58, `ld` at 0x19c38.
  5 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x19b7c, `lh` at 0x19bc0, `lh` at 0x19bfc.
  3 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8, including `ld` at 0x19b88, `ld` at 0x19bcc, `ld` at 0x19c0c.
  3 such `lbu` accesses load 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528, including `lbu` at 0x19b8c, `lbu` at 0x19bd0, `lbu` at 0x19c14.
  The `ld` at 0x19b98 loads 8 bytes from ([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)) +0x2210.
  The `ld` at 0x19ba4 loads 8 bytes from ([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)) +0x2230.
  The `ld` at 0x19bb8 loads 8 bytes from one of 0x9200000001000430, 0x9200000001000450 +0x0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x19bbc, `sd` at 0x19c84.
  The `ld` at 0x19be4 loads 8 bytes from one of 0x9200000001000440, 0x9200000001000460 +0x0.
  The `sd` at 0x19be8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x19bec, `ld` at 0x19c68.
  The `sd` at 0x19c44 stores 8 bytes to one of 0x9200000001000448, 0x9200000001000468 +0x0.
  The `ld` at 0x19c4c loads 8 bytes from one of 0x9200000001000418, 0x9200000001000420 +0x0.
  The `sd` at 0x19c58 stores 8 bytes to ([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)) +0x2230.
  The `ld` at 0x19c5c loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x19c80 loads 8 bytes from ([([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8 | table(0x9600000000000000)) +0x0.
  2 such `ld` accesses load 8 bytes from (([-0x3bd8]:2 << 0x4) + sym(pdaindr)) +0x8, including `ld` at 0x19c98, `ld` at 0x19cd0.
  2 such `lbu` accesses load 1 byte from [(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8 +0x528, including `lbu` at 0x19ca4, `lbu` at 0x19cdc.
  2 such `ld` accesses load 8 bytes from (([-0x3bd6]:2 << 0x3) + sym(kl_error_log)) +0x0, including `ld` at 0x19ca8, `ld` at 0x19ce0.
  2 such `ld` accesses load 8 bytes from ([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)) +0x2210, including `ld` at 0x19cb4, `ld` at 0x19cf0.
  2 such `sd` accesses store 8 bytes to ([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)) +0x2210, including `sd` at 0x19cbc, `sd` at 0x19d2c.
  The `ld` at 0x19cec loads 8 bytes from [(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 +0x2250.
  The `jal` at 0x19b38 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19b40 calls splerr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19c54 calls splx with a0=ret(splerr), a1=[one of 0x9200000001000440, 0x9200000001000460]:8, a2=?, a3=0x9200000001000460, a4=[one of 0x9200000001000418, 0x9200000001000420]:8, a5=([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)), a6=([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3), a7=one of 0x9200000001000448, 0x9200000001000468.
  The `jal` at 0x19c64 calls klsave_spool_registers with a0=[a0]:8, a1=[a1]:8, a2=0x2, a3=?.
  The `jal` at 0x19d04 calls splx with a0=ret(splerr), a1=?, a2=?, a3=?, a4=one of 0x9200000001000430, 0x9200000001000450, a5=[([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3))+8720]:8, a6=([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3)).
  The `jal` at 0x19d30 calls splx with a0=ret(splerr), a1=[one of 0x9200000001000440, 0x9200000001000460]:8, a2=?, a3=0x9200000001000460, a4=one of 0x9200000001000430, 0x9200000001000450, a5=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8, a6=([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3)).
  The `jal` at 0x19d40 calls splx with a0=ret(splerr), a1=?, a2=?, a3=?, a4=0x9200000001000430.
  The `beq` branch at 0x19b74 targets 0x19d40, is taken when a0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) == 0, and falls through when a0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) != 0.
  The `beq` branch at 0x19b9c targets 0x19d40, is taken when a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8) == 0, and falls through when a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8) != 0.
  The `bne` branch at 0x19bb0 targets 0x19c74, is taken when v1(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8752]:8) != a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8), and falls through when v1(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8752]:8) == a5(=[([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x3))+8720]:8).
  The `beq` branch at 0x19bf4 targets 0x19d30, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x19c6c targets 0x19d10 and is always taken.
  The `beq` branch at 0x19cfc targets 0x19d28, is taken when (a5(=[([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3))+8720]:8) & a1(=[[(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8+8784]:8-1)) == 0, and falls through when (a5(=[([(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8 + ([[(([-0x3bd8]:2 << 0x4) + sym(pdaindr))+8]:8+1320]:1 << 0x3))+8720]:8) & a1(=[[(([-0x3bd6]:2 << 0x3) + sym(kl_error_log))]:8+8784]:8-1)) != 0.
  The `beq` branch at 0x19d28 targets 0x19d04 and is always taken.
  The `beq` branch at 0x19d38 targets 0x19d10 and is always taken.
  The `beq` branch at 0x19d48 targets 0x19d10 and is always taken.
  The return at 0x19d20 has v0 = one of 0x0, 0x1, 0x2.
- `huberror_process_rrb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x19d50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x19d50-0x1a290 (1344 bytes).
  It occupies 1344 bytes.
  The `ld` at 0x19d7c loads 8 bytes from (sym(.rodata)+28464 + (a0 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=?, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=sym(.rodata)+28464 (`jr` at 0x19d80).
  The `jal` at 0x1a19c calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=a3 at entry (arg3), a5=sym(.rodata)+28464.
  The `beq` branch at 0x19d74 targets 0x1a198, is taken when a0 >= 0x8 (unsigned), and falls through when a0 < 0x8 (unsigned).
  The `beq` branch at 0x1a1a4 targets 0x19e44 and is always taken.
  The return at 0x19e50 has v0 = 0x19.
  The instructions from 0x19d88 to 0x19e40 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x19e58 to 0x1a194 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1a1ac to 0x1a28c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x19d80 uses a jump table whose successors are unresolved.
- `huberror_process_wrb_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a290 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a290-0x1a70c (1148 bytes).
  It occupies 1148 bytes.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0x1a62c, `lh` at 0x1a6dc, `lh` at 0x1a6f8.
  The `jal` at 0x1a2e8 calls nasid_to_partid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a2f0 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a300 calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1a318 calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x8, a3=?.
  The `jal` at 0x1a350 calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x8, a3=?.
  The `jal` at 0x1a378 calls nasid_to_partid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a380 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a390 calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1a3a8 calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=?.
  The `jal` at 0x1a3d0 calls nasid_to_partid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a3d8 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a3e8 calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1a3fc calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=?.
  The `jal` at 0x1a424 calls nasid_to_partid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a42c calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a440 calls error_check_part_page with a0=a1 at entry (arg1), a1=ret(nasid_to_partid), a2=?, a3=?.
  The `jal` at 0x1a458 calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0xa, a3=?.
  The `jal` at 0x1a47c calls nasid_to_partid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a484 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a494 calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1a4ac calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x7, a3=?.
  The `jal` at 0x1a4cc calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=?.
  The `jal` at 0x1a4ec calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x3, a3=?.
  The `jal` at 0x1a50c calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0xa, a3=?.
  The `jal` at 0x1a52c calls partition_handle_error with a0=0x0, a1=a1 at entry (arg1), a2=0x7, a3=?.
  The `jal` at 0x1a54c calls error_check_poisoned_state with a0=a1 at entry (arg1), a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1a56c calls error_check_memory_access with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x1a590 calls error_check_memory_access with a0=a1 at entry (arg1), a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x1a638 calls kl_ioerror_handler with a0=[-0x3bd6]:2, a1=[-0x3bd6]:2, a2=-0x1, a3=0x6, a4=a1 at entry (arg1), a5=0x0, a6=0x1, a7=0x0.
  The `jal` at 0x1a65c calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0x1a674 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1a68c calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1a6a8 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1a6c4 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1a6e0 calls cmn_err with a0=0x4, a1=sym(.rodata)+28464, a2=a1 at entry (arg1), a3=[-0x3bd6]:2.
  The `jal` at 0x1a6fc calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=sym(.rodata)+28464, a3=a1 at entry (arg1), a4=[-0x3bd6]:2.
  The `beq` branch at 0x1a2b0 targets 0x1a36c, is taken when a0 == s1(=0x3), and falls through when a0 != s1(=0x3).
  The `beq` branch at 0x1a2b8 targets 0x1a3c4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1a2c0 targets 0x1a418, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0x1a2cc targets 0x1a474, is taken when a0 == v1(=0x6), and falls through when a0 != v1(=0x6).
  The `bne` branch at 0x1a2d8 targets 0x1a650, is taken when v0(=a0) != a0(=0x7), and falls through when v0(=a0) == a0(=0x7).
  The `bne` branch at 0x1a2f8 targets 0x1a34c, is taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)), and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  The `beq` branch at 0x1a308 targets 0x1a66c, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1a364 targets 0x1a330 and is always taken.
  The `bne` branch at 0x1a388 targets 0x1a4c8, is taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)), and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  The `beq` branch at 0x1a398 targets 0x1a548, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1a3bc targets 0x1a330 and is always taken.
  The `bne` branch at 0x1a3e0 targets 0x1a4e8, is taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)), and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  The `beq` branch at 0x1a3f0 targets 0x1a564, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1a410 targets 0x1a330 and is always taken.
  The `bne` branch at 0x1a438 targets 0x1a508, is taken when a1(=ret(nasid_to_partid)) != v0(=ret(part_id)), and falls through when a1(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  The `beq` branch at 0x1a448 targets 0x1a58c, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1a46c targets 0x1a330 and is always taken.
  The `bne` branch at 0x1a48c targets 0x1a528, is taken when s2(=ret(nasid_to_partid)) != v0(=ret(part_id)), and falls through when s2(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  The `beq` branch at 0x1a49c targets 0x1a684, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1a4c0 targets 0x1a330 and is always taken.
  The `beq` branch at 0x1a4e0 targets 0x1a330 and is always taken.
  The `beq` branch at 0x1a500 targets 0x1a330 and is always taken.
  The `beq` branch at 0x1a520 targets 0x1a330 and is always taken.
  The `beq` branch at 0x1a540 targets 0x1a330 and is always taken.
  The `beq` branch at 0x1a554 targets 0x1a69c, is taken when v0(=ret(error_check_poisoned_state)) == s1(=0x3), and falls through when v0(=ret(error_check_poisoned_state)) != s1(=0x3).
  The `beq` branch at 0x1a55c targets 0x1a334 and is always taken.
  The `beq` branch at 0x1a574 targets 0x1a6b8, is taken when v0(=ret(error_check_memory_access)) == 0, and falls through when v0(=ret(error_check_memory_access)) != 0.
  The `beq` branch at 0x1a584 targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a598 targets 0x1a5b0, is taken when v0(=ret(error_check_memory_access)) == 0, and falls through when v0(=ret(error_check_memory_access)) != 0.
  The `beq` branch at 0x1a5a8 targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a5b4 targets 0x1a6d4, is taken when t0(=a2) == 0, and falls through when t0(=a2) != 0.
  The `beq` branch at 0x1a5bc targets 0x1a5fc, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x1a5c8 targets 0x1a610, is taken when s2(=a3) == t1(=0x2), and falls through when s2(=a3) != t1(=0x2).
  The `beq` branch at 0x1a5d4 targets 0x1a620, is taken when s2(=a3) == t2(=0x1), and falls through when s2(=a3) != t2(=0x1).
  The `beq` branch at 0x1a5dc targets 0x1a618, is taken when s2(=a3) == s1(=0x3), and falls through when s2(=a3) != s1(=0x3).
  The `bne` branch at 0x1a5ec targets 0x1a6f4, is taken when a2(=sym(.rodata)+28464) != 0, and falls through when a2(=sym(.rodata)+28464) == 0.
  The `beq` branch at 0x1a5f4 targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a600 targets 0x1a5f4, is taken when a2(=sym(.rodata)+28464) == 0, and falls through when a2(=sym(.rodata)+28464) != 0.
  The `beq` branch at 0x1a608 targets 0x1a6f4 and is always taken.
  The `beq` branch at 0x1a610 targets 0x1a600 and is always taken.
  The `beq` branch at 0x1a618 targets 0x1a600 and is always taken.
  The `beq` branch at 0x1a640 targets 0x1a5f4, is taken when v0(=ret(kl_ioerror_handler)) == 0, and falls through when v0(=ret(kl_ioerror_handler)) != 0.
  The `beq` branch at 0x1a648 targets 0x1a600 and is always taken.
  The `beq` branch at 0x1a664 targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a67c targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a694 targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a6b0 targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a6cc targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a6e8 targets 0x1a55c and is always taken.
  The `beq` branch at 0x1a704 targets 0x1a55c and is always taken.
  The return at 0x1a344 has v0 = ?.
  The instructions from 0x1a6f0 to 0x1a6f0 are not reached by any path from the entry, and their branches are not listed.
- `huberror_process_stack_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a70c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a70c-0x1a804 (248 bytes).
  It occupies 248 bytes.
  The `sd` at 0x1a784 stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x1a774 calls huberror_process_wrb_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a7cc calls huberror_process_rrb_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a7e4 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a0 at entry (arg0).
  The `beq` branch at 0x1a728 targets 0x1a79c, is taken when a2 == at(=0x1), and falls through when a2 != at(=0x1).
  The `bne` branch at 0x1a730 targets 0x1a7dc, is taken when a2 != v0(=0x2), and falls through when a2 == v0(=0x2).
  The `beq` branch at 0x1a76c targets 0x1a7cc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1a7c4 targets 0x1a774, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0.
  The `beq` branch at 0x1a7d4 targets 0x1a780 and is always taken.
  The `beq` branch at 0x1a7fc targets 0x1a76c and is always taken.
  The return at 0x1a794 has v0 = one of ret(huberror_process_wrb_error), ret(huberror_process_rrb_error).
- `process_error_spool` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a804 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a804-0x1a894 (144 bytes).
  It occupies 144 bytes.
  The `jal` at 0x1a828 calls hubpi_spool_get_next with a0=sp-64, a1=sp-56, a2=?, a3=?.
  The `jal` at 0x1a85c calls huberror_process_stack_entry with a0=?, a1=?, a2=ret(hubpi_spool_get_next), a3=sp-48.
  The `jal` at 0x1a86c calls in_dump_mode with a0=?, a1=sp-56, a2=?, a3=?.
  The `beq` branch at 0x1a830 targets 0x1a880, is taken when v0(=ret(hubpi_spool_get_next)) == s0(=-0x1), and falls through when v0(=ret(hubpi_spool_get_next)) != s0(=-0x1).
  The `beq` branch at 0x1a838 targets 0x1a880, is taken when v0(=ret(hubpi_spool_get_next)) == 0, and falls through when v0(=ret(hubpi_spool_get_next)) != 0.
  The `beq` branch at 0x1a840 targets 0x1a854, is taken when v0(=ret(hubpi_spool_get_next)) == s1(=0x1), and falls through when v0(=ret(hubpi_spool_get_next)) != s1(=0x1).
  The `bne` branch at 0x1a848 targets 0x1a828, is taken when v0(=ret(hubpi_spool_get_next)) != s2(=0x2), and falls through when v0(=ret(hubpi_spool_get_next)) == s2(=0x2).
  The `beq` branch at 0x1a864 targets 0x1a828, is taken when v0(=ret(huberror_process_stack_entry)) == 0, and falls through when v0(=ret(huberror_process_stack_entry)) != 0.
  The `beq` branch at 0x1a874 targets 0x1a828 and is always taken.
  The return at 0x1a88c has v0 = ret(hubpi_spool_get_next).
  The instructions from 0x1a87c to 0x1a87c are not reached by any path from the entry, and their branches are not listed.
- `get_matching_spool_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1a894 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1a894-0x1aab8 (548 bytes).
  It occupies 548 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0x1a908, `ld` at 0x1a94c.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x1a914, `ld` at 0x1a948, `ld` at 0x1a9f0.
  The `jal` at 0x1a910 calls huberror_process_stack_entry with a0=[a0]:8, a1=[a1]:8, a2=ret(hubpi_spool_get_next), a3=sp-96.
  The `jal` at 0x1a920 calls hubpi_spool_get_next with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1aa34 calls in_dump_mode with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1aaa8 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=ret(hubpi_spool_get_next), a3=?.
  The `beq` branch at 0x1a8f0 targets 0x1a91c and is always taken.
  The `beq` branch at 0x1a8f8 targets 0x1a908, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1a900 targets 0x1a9bc, is taken when s3(=a4) == a1(?), and falls through when s3(=a4) != a1(?).
  The `bne` branch at 0x1a918 targets 0x1aa34, is taken when v0(=ret(huberror_process_stack_entry)) != 0, and falls through when v0(=ret(huberror_process_stack_entry)) == 0.
  The `beq` branch at 0x1a928 targets 0x1aa90, is taken when v0(=ret(hubpi_spool_get_next)) == 0, and falls through when v0(=ret(hubpi_spool_get_next)) != 0.
  The `beq` branch at 0x1a930 targets 0x1aa98, is taken when v0(=ret(hubpi_spool_get_next)) == s8(=-0x1), and falls through when v0(=ret(hubpi_spool_get_next)) != s8(=-0x1).
  The `beq` branch at 0x1a938 targets 0x1a9f0, is taken when v0(=ret(hubpi_spool_get_next)) == t9(=0x1), and falls through when v0(=ret(hubpi_spool_get_next)) != t9(=0x1).
  The `bne` branch at 0x1a940 targets 0x1aaa0, is taken when v0(=ret(hubpi_spool_get_next)) != ra(=0x2), and falls through when v0(=ret(hubpi_spool_get_next)) == ra(=0x2).
  The `beq` branch at 0x1a968 targets 0x1a994, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x1a978 targets 0x1a8f8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1a980 targets 0x1a8f8, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x1a98c targets 0x1a8f8 and is always taken.
  The `bne` branch at 0x1a9a0 targets 0x1a8f8, is taken when s2(=a2) < a0(?) (unsigned), and falls through when s2(=a2) >= a0(?) (unsigned).
  The `bne` branch at 0x1a9a8 targets 0x1a8f8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1a9b4 targets 0x1a8f8 and is always taken.
  The `beq` branch at 0x1aa04 targets 0x1aa54, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1aa18 targets 0x1aa44, is taken when s7(?) < a0(?) (unsigned), and falls through when s7(?) >= a0(?) (unsigned).
  The `bne` branch at 0x1aa20 targets 0x1aa44, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1aa2c targets 0x1aa44 and is always taken.
  The `beq` branch at 0x1aa3c targets 0x1a920 and is always taken.
  The `bne` branch at 0x1aa44 targets 0x1aa7c, is taken when a0(=one of 0x0, 0x1) != 0, and falls through when a0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x1aa4c targets 0x1a908 and is always taken.
  The `bne` branch at 0x1aa5c targets 0x1aa70, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1aa64 targets 0x1aa70, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1aa70 targets 0x1a908, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x1aa80 targets 0x1a908, is taken when s3(=a4) != a4(?), and falls through when s3(=a4) == a4(?).
  The `beq` branch at 0x1aa88 targets 0x1a9c0 and is always taken.
  The `beq` branch at 0x1aa90 targets 0x1a9c0 and is always taken.
  The `beq` branch at 0x1aa98 targets 0x1a9c0 and is always taken.
  The `beq` branch at 0x1aab0 targets 0x1a9c0 and is always taken.
  The return at 0x1a9e8 has v0 = one of -0x1, 0x0, 0x1, 0x2.
- `hubiio_crb_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1aab8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1aab8-0x1ab58 (160 bytes).
  It occupies 160 bytes.
  4 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0xa, including `lh` at 0x1aabc, `lh` at 0x1aae8, `lh` at 0x1aafc.
  The `ld` at 0x1aadc loads 8 bytes from ((a1 << 0x5) + ([a0+10]:2 << 0x21)) -0x6dfffffffe3ffc00.
  The `sd` at 0x1aae4 stores 8 bytes to ((a1 << 0x5) + ([a0+10]:2 << 0x21)) -0x6dfffffffe3ffc00.
  The `sd` at 0x1aaf8 stores 8 bytes to ([a0+10]:2 << 0x21) -0x6dfffffffe3ffc70.
  2 such `ld` accesses load 8 bytes from ([a0+10]:2 << 0x21) -0x6dfffffffe3ffc70, including `ld` at 0x1ab08, `ld` at 0x1ab34.
  The `jal` at 0x1ab20 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1ab18 targets 0x1ab44, is taken when (at(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) == 0, and falls through when (at(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) != 0.
  The `bne` branch at 0x1ab3c targets 0x1ab20, is taken when (a5(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) != 0, and falls through when (a5(=[([a0+10]:2 << 0x21)-7926335344142711920]:8) & 0x10) == 0.
  The return at 0x1ab50 has v0 = one of (a1 | 0x10), ret(us_delay).
- `hubiio_crb_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ab58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ab58-0x1ae80 (808 bytes).
  It occupies 808 bytes.
  The `lh` at 0x1ab70 loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `lh` at 0x1abac loads 2 bytes from (sym(nasid_to_compact_node) + ([a1+10]:2 + [a1+10]:2)) +0x0.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1ac38, `ld` at 0x1ac54, `ld` at 0x1ac60.
  The `ld` at 0x1ad54 loads 8 bytes from table(sym(.rodata)+28464) +0x0.
  The `jal` at 0x1aba8 calls mutex_spinlock_spl with a0=a1+796, a1=sym(splerr), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1acd8 calls bte_crb_error_handler with a0=a0 at entry (arg0), a1=?, a2=?, a3=sp-224.
  The `jal` at 0x1ace4 calls hubiio_crb_free with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1ad04 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ad90 calls sn0_error_dump with a0=sym(.rodata)+28464, a1=?, a2=?, a3=?, a6=table(sym(.rodata)+28464).
  The `jal` at 0x1ada4 calls cmn_err with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x1ae2c calls cmn_err with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x1ae44 calls cmn_err with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `beq` branch at 0x1abdc targets 0x1ac30 and is always taken.
  The `beq` branch at 0x1abec targets 0x1ac00, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bltz` branch at 0x1ac04 targets 0x1ad40, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `bltz` branch at 0x1ac10 targets 0x1ae20, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `bltz` branch at 0x1ac18 targets 0x1ae3c, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x1ac28 targets 0x1ad00, is taken when s1(?) >= 0xf (signed), and falls through when s1(?) < 0xf (signed).
  The `bgez` branch at 0x1ac40 targets 0x1ac20, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `bltz` branch at 0x1ac88 targets 0x1acc8, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x1ac98 targets 0x1aca4, is taken when at(=0x1) == a6(?), and falls through when at(=0x1) != a6(?).
  The `bne` branch at 0x1aca0 targets 0x1abe4, is taken when at(=0x5) != a6(?), and falls through when at(=0x5) == a6(?).
  The `beq` branch at 0x1acb0 targets 0x1acbc, is taken when v0(=0x1) == a6(?), and falls through when v0(=0x1) != a6(?).
  The `bne` branch at 0x1acb8 targets 0x1abe4, is taken when at(=0x2) != a6(?), and falls through when at(=0x2) == a6(?).
  The `beq` branch at 0x1acc0 targets 0x1acd0 and is always taken.
  The `beq` branch at 0x1acf8 targets 0x1ac20 and is always taken.
  The `beq` branch at 0x1ad4c targets 0x1ad8c, is taken when s7(?) >= 0x8 (unsigned), and falls through when s7(?) < 0x8 (unsigned).
  The `beq` branch at 0x1adac targets 0x1ac0c and is always taken.
  The `beq` branch at 0x1ae34 targets 0x1ac14 and is always taken.
  The `beq` branch at 0x1ae4c targets 0x1ac20 and is always taken.
  The return at 0x1ad38 has v0 = ?.
  The instructions from 0x1ad60 to 0x1ad88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1adb4 to 0x1ae1c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1ae54 to 0x1ae7c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1ad58 uses a jump table whose successors are unresolved.
- `hubii_check_widget_disabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ae80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ae80-0x1aee8 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x1aea8 loads 8 bytes from table(0x9200000001c00198) +0x0.
  The `ld` at 0x1aecc loads 8 bytes from (a0 << 0x21) -0x6dfffffffe3ffff8.
  The `beq` branch at 0x1ae8c targets 0x1ae98, is taken when a1 >= 0x8 (signed), and falls through when a1 < 0x8 (signed).
  The `beq` branch at 0x1aeb4 targets 0x1aec4, is taken when (v0(=entry(0x9200000001c00198)) & v1(=0xf000000000000)) == 0, and falls through when (v0(=entry(0x9200000001c00198)) & v1(=0xf000000000000)) != 0.
  The `beq` branch at 0x1aed8 targets 0x1aebc, is taken when (v1(=[(a0 << 0x21)-7926335344142712824]:8) & a0(=0x100000000)) == 0, and falls through when (v1(=[(a0 << 0x21)-7926335344142712824]:8) & a0(=0x100000000)) != 0.
  The return at 0x1aebc has v0 = one of 0x0, 0x1.
  The return at 0x1aee0 has v0 = 0x1.
- `hubii_prb_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1aee8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1aee8-0x1af30 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x1aee8 loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `sd` at 0x1af20 stores 8 bytes to ([a1+10]:2 << 0x21) -0x6dfffffffe3ffe08.
  The `jal` at 0x1af1c calls cmn_err with a0=0x4, a1=sym(.rodata)+28464, a2=[a1+10]:2, a3=a2 at entry (arg2), a4=0x9200000001c00000.
  The return at 0x1af28 has v0 = ret(cmn_err).
- `hubiio_prb_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1af30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1af30-0x1affc (204 bytes).
  It occupies 204 bytes.
  The `lh` at 0x1af3c loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `ld` at 0x1af54 loads 8 bytes from ([a1+10]:2 << 0x21) -0x6dfffffffe3ffe68.
  The `ld` at 0x1af88 loads 8 bytes from ?.
  The `jal` at 0x1afd8 calls hubii_prb_handler [0x1aee8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1afec calls hubii_prb_handler [0x1aee8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The `bltz` branch at 0x1af68 targets 0x1afe8, is taken when at(=([([a1+10]:2 << 0x21)-7926335344142712424]:8 << 0xf)) < 0 (signed), and falls through when at(=([([a1+10]:2 << 0x21)-7926335344142712424]:8 << 0xf)) >= 0 (signed).
  The `bltz` branch at 0x1af90 targets 0x1afcc, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `bne` branch at 0x1afa0 targets 0x1af7c, is taken when s1(?) < 0x10 (signed), and falls through when s1(?) >= 0x10 (signed).
  The `beq` branch at 0x1afe0 targets 0x1af9c and is always taken.
  The `beq` branch at 0x1aff4 targets 0x1af74 and is always taken.
  The return at 0x1afc4 has v0 = ?.
- `ii_llp_error_monitor` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b19c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b19c-0x1b204 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x1b1a0 loads 8 bytes from abs 0x9200000001400130.
  The `sd` at 0x1b1b0 stores 8 bytes to abs 0x9200000001400130.
  The `ld` at 0x1b1bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x1b1c4 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `ld` at 0x1b1d0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sd` at 0x1b1d8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1b1e4 loads 1 byte from a0 (arg0 at entry) +0x10.
  The `sb` at 0x1b1f0 stores 1 byte to a0 (arg0 at entry) +0x10.
  The `lbu` at 0x1b1f4 loads 1 byte from a0 (arg0 at entry) +0x11.
  The `sb` at 0x1b200 stores 1 byte to a0 (arg0 at entry) +0x11.
  The `beq` branch at 0x1b1b4 targets 0x1b1e4, is taken when a4(=0xffff) == a3(?), and falls through when a4(=0xffff) != a3(?).
  The `beq` branch at 0x1b1c8 targets 0x1b1f4, is taken when a4(=0xffff) == a2(?), and falls through when a4(=0xffff) != a2(?).
  The `beq` branch at 0x1b1ec targets 0x1b1c8 and is always taken.
  The return at 0x1b1dc has v0 = ?.
  The return at 0x1b1fc has v0 = ?.
- `ni_llp_error_monitor` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b204 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b204-0x1b330 (300 bytes).
  It occupies 300 bytes.
  The `ld` at 0x1b208 loads 8 bytes from abs 0x9200000001680120.
  The `ld` at 0x1b2a4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x1b2ac stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `ld` at 0x1b2bc loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sd` at 0x1b2c4 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `ld` at 0x1b2d0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sd` at 0x1b2d8 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `lbu` at 0x1b2e8 loads 1 byte from a0 (arg0 at entry) +0x18.
  The `sb` at 0x1b2f4 stores 1 byte to a0 (arg0 at entry) +0x18.
  The `lbu` at 0x1b2f8 loads 1 byte from a0 (arg0 at entry) +0x19.
  The `sb` at 0x1b304 stores 1 byte to a0 (arg0 at entry) +0x19.
  The `lbu` at 0x1b308 loads 1 byte from a0 (arg0 at entry) +0x1a.
  The `sb` at 0x1b314 stores 1 byte to a0 (arg0 at entry) +0x1a.
  The `jal` at 0x1b320 calls cmn_err with a0=0x4, a1=sym(.rodata)+28464, a2=[0x9200000001680120]:8, a3=?.
  The `bltz` branch at 0x1b224 targets 0x1b318, is taken when at(=([0x9200000001680120]:8 << 0xb)) < 0 (signed), and falls through when at(=([0x9200000001680120]:8 << 0xb)) >= 0 (signed).
  The `bne` branch at 0x1b234 targets 0x1b31c, is taken when (a7(?) & 0xf) != 0, and falls through when (a7(?) & 0xf) == 0.
  The `bne` branch at 0x1b244 targets 0x1b31c, is taken when (t0(?) & 0xf) != 0, and falls through when (t0(?) & 0xf) == 0.
  The `bne` branch at 0x1b254 targets 0x1b31c, is taken when (t1(?) & 0xf) != 0, and falls through when (t1(?) & 0xf) == 0.
  The `bne` branch at 0x1b264 targets 0x1b318, is taken when (t2(?) & 0xf) != 0, and falls through when (t2(?) & 0xf) == 0.
  The `bne` branch at 0x1b270 targets 0x1b31c, is taken when (t3(?) & 0xf) != 0, and falls through when (t3(?) & 0xf) == 0.
  The `bne` branch at 0x1b27c targets 0x1b31c, is taken when (a3(?) & 0xf) != 0, and falls through when (a3(?) & 0xf) == 0.
  The `bne` branch at 0x1b284 targets 0x1b31c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1b29c targets 0x1b2e8, is taken when a7(=0xff) == a6(?), and falls through when a7(=0xff) != a6(?).
  The `beq` branch at 0x1b2b4 targets 0x1b2f8, is taken when a7(=0xff) == a5(?), and falls through when a7(=0xff) != a5(?).
  The `beq` branch at 0x1b2c8 targets 0x1b308, is taken when a7(=0xff) == a3(?), and falls through when a7(=0xff) != a3(?).
  The `beq` branch at 0x1b2f0 targets 0x1b2b0 and is always taken.
  The `beq` branch at 0x1b300 targets 0x1b2c8 and is always taken.
  The `beq` branch at 0x1b310 targets 0x1b2dc and is always taken.
  The `beq` branch at 0x1b328 targets 0x1b2e0 and is always taken.
  The return at 0x1b2e0 has v0 = one of ?, ret(cmn_err).
- `cleanup_remote_pi` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b330 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b330-0x1b370 (64 bytes).
  It occupies 64 bytes.
  The `sd` at 0x1b364 stores 8 bytes to ((a0 << 0x21) + one of 0x9200000001800090, 0x9200000001a00090) +0x0.
  The `bne` branch at 0x1b360 targets 0x1b348, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The return at 0x1b368 has v0 = ?.
- `hub_error_count_update` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b370-0x1b3e4 (116 bytes).
  It occupies 116 bytes.
  The `lh` at 0x1b388 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  3 such `ld` accesses load 8 bytes from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0, including `ld` at 0x1b39c, `ld` at 0x1b3ac, `ld` at 0x1b3b8.
  The `lw` at 0x1b3bc loads 4 bytes from [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x0.
  The `jal` at 0x1b3a4 calls ii_llp_error_monitor with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b3b0 calls ni_llp_error_monitor with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+32, a1=?, a2=?, a3=?.
  The `jal` at 0x1b3cc calls timeout with a0=sym(hub_error_count_update), a1=a0 at entry (arg0), a2=0x64, a3=?.
  The `beq` branch at 0x1b3c0 targets 0x1b3d4, is taken when a1(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) == 0, and falls through when a1(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) != 0.
  The return at 0x1b3dc has v0 = one of ret(ni_llp_error_monitor), ret(timeout).
- `hub_error_count_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b3e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b3e4-0x1b490 (172 bytes).
  It occupies 172 bytes.
  The `lh` at 0x1b414 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0, including `ld` at 0x1b42c, `ld` at 0x1b468.
  The `lw` at 0x1b430 loads 4 bytes from [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x0.
  The `sw` at 0x1b480 stores 4 bytes to [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x0.
  The `jal` at 0x1b45c calls bzero with a0=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(sym(nasid_to_compact_node) + (a0 + a0)), a5=([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3), a6=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8].
  The `jal` at 0x1b47c calls timeout with a0=sym(hub_error_count_update), a1=a0 at entry (arg0), a2=0x64, a3=0x1, a4=[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8.
  The `bltz` branch at 0x1b3fc targets 0x1b44c, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x1b40c targets 0x1b44c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1b418 targets 0x1b454, is taken when a5(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == a0(=-0x1), and falls through when a5(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != a0(=-0x1).
  The `beq` branch at 0x1b438 targets 0x1b45c, is taken when a6(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) == 0, and falls through when a6(=[[(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8]) != 0.
  The `beq` branch at 0x1b44c targets 0x1b440 and is always taken.
  The `beq` branch at 0x1b454 targets 0x1b444 and is always taken.
  The `beq` branch at 0x1b488 targets 0x1b440 and is always taken.
  The return at 0x1b444 has v0 = one of -0x1, 0x0.
- `hub_error_count_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b490 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b490-0x1b4e4 (84 bytes).
  It occupies 84 bytes.
  The `lh` at 0x1b4b0 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `ld` at 0x1b4c8 loads 8 bytes from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0.
  The `sw` at 0x1b4d0 stores 4 bytes to [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x0.
  The `bltz` branch at 0x1b498 targets 0x1b4dc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x1b4a8 targets 0x1b4dc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1b4b8 targets 0x1b4d4, is taken when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == a3(=-0x1), and falls through when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != a3(=-0x1).
  The return at 0x1b4d4 has v0 = one of -0x1, 0x0.
  The return at 0x1b4dc has v0 = -0x1.
- `hub_error_count_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b4e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b4e4-0x1b53c (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0x1b508 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `sw` at 0x1b518 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x1b520 loads 8 bytes from (sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0.
  The `bltz` branch at 0x1b4ec targets 0x1b52c, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x1b500 targets 0x1b52c, is taken when a0 >= 0x80 (signed), and falls through when a0 < 0x80 (signed).
  The `beq` branch at 0x1b50c targets 0x1b534, is taken when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == v0(=-0x1), and falls through when a0(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != v0(=-0x1).
  The return at 0x1b524 has v0 = [(sym(kl_error_log) + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8.
  The return at 0x1b52c has v0 = 0x0.
  The return at 0x1b534 has v0 = 0x0.
- `decode_xrb_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b53c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b53c-0x1b570 (52 bytes).
  It occupies 52 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1b554, `ld` at 0x1b56c.
  The `bltz` branch at 0x1b544 targets 0x1b560, is taken when a4(=(a0 << 0x33)) < 0 (signed), and falls through when a4(=(a0 << 0x33)) >= 0 (signed).
  The return at 0x1b558 has v0 = ?.
  The return at 0x1b568 has v0 = ?.
- `decode_crb_stat` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b570 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b570-0x1b624 (180 bytes).
  It occupies 180 bytes.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x9, including `sb` at 0x1b594, `sb` at 0x1b618.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x8, including `sb` at 0x1b598, `sb` at 0x1b610.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1b5a4, `lbu` at 0x1b5c4.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x1b5a8, `sb` at 0x1b5c8, `sb` at 0x1b5f0.
  The `sb` at 0x1b600 stores 1 byte to a0 (arg0 at entry) +0xa.
  The `beq` branch at 0x1b588 targets 0x1b604, is taken when (a1 & 0x200) == 0, and falls through when (a1 & 0x200) != 0.
  The `beq` branch at 0x1b59c targets 0x1b5b4 and is always taken.
  The `bltz` branch at 0x1b5ac targets 0x1b5fc, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1b5bc targets 0x1b5f4, is taken when (a5(?) & v1(?)) == 0, and falls through when (a5(?) & v1(?)) != 0.
  The `bltz` branch at 0x1b5d8 targets 0x1b5fc, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x1b5e4 targets 0x1b5a4, is taken when (a5(?) & a6(?)) != 0, and falls through when (a5(?) & a6(?)) == 0.
  The `beq` branch at 0x1b5ec targets 0x1b5ac and is always taken.
  The `beq` branch at 0x1b5f4 targets 0x1b5cc and is always taken.
  The `beq` branch at 0x1b61c targets 0x1b59c and is always taken.
  The return at 0x1b5fc has v0 = ?.
- `dump_error_spool` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b76c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b76c-0x1b93c (464 bytes).
  It occupies 464 bytes.
  The `ld` at 0x1b780 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `lbu` at 0x1b788 loads 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528.
  The `lh` at 0x1b794 loads 2 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x42c.
  2 such `ld` accesses load 8 bytes from (([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428) +0x0, including `ld` at 0x1b7c8, `ld` at 0x1b7e8.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1b824, `ld` at 0x1b88c, `ld` at 0x1b8b4.
  The `jalr` at 0x1b834 calls (unknown callee) with a0=sym(.rodata)+28464, a1=a0 at entry (arg0), a2=sym(.rodata)+28464, a3=0x428, a4=sym(.rodata)+28464, a5=a0 at entry (arg0), a7=0x9200000001800000.
  The `jal` at 0x1b890 calls print_spool_entry with a0=?, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1b8d0 calls memory_present with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1b8f4 calls (unknown callee) with a0=sym(.rodata)+28464, a1=?, a2=?, a3=?.
  The `jalr` at 0x1b914 calls (unknown callee) with a0=sym(.rodata)+28464, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1b7e0 targets 0x1b7fc, is taken when at(=[(([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428)]:8) == 0, and falls through when at(=[(([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2 << 0x21) + one of 0x9200000001800428, 0x9200000001a00428)]:8) != 0.
  The `beq` branch at 0x1b7fc targets 0x1b92c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1b820 targets 0x1b830, is taken when a0(=[sym(filter_error_spool)]) == 0, and falls through when a0(=[sym(filter_error_spool)]) != 0.
  The `beq` branch at 0x1b878 targets 0x1b8fc, is taken when s0(?) >= s3(?) (unsigned), and falls through when s0(?) < s3(?) (unsigned).
  The `beq` branch at 0x1b880 targets 0x1b934 and is always taken.
  The `bne` branch at 0x1b8a4 targets 0x1b8e8, is taken when s3(?) < s0(?) (unsigned), and falls through when s3(?) >= s0(?) (unsigned).
  The `beq` branch at 0x1b8ac targets 0x1b88c, is taken when ra(=[sym(filter_error_spool)]) == 0, and falls through when ra(=[sym(filter_error_spool)]) != 0.
  The `bltz` branch at 0x1b8bc targets 0x1b888, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `bne` branch at 0x1b8c4 targets 0x1b88c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x1b8d8 targets 0x1b88c, is taken when v0(=ret(memory_present)) != 0, and falls through when v0(=ret(memory_present)) == 0.
  The `beq` branch at 0x1b8e0 targets 0x1b89c and is always taken.
  The `beq` branch at 0x1b8e8 targets 0x1b8fc, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x1b92c targets 0x1b810 and is always taken.
  The `beq` branch at 0x1b934 targets 0x1b8ac and is always taken.
  The return at 0x1b924 has v0 = ret(?).
- `recover_error_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ba60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ba60-0x1bacc (108 bytes).
  It occupies 108 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1ba74, `ld` at 0x1ba80, `ld` at 0x1bab8.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1ba7c, `sd` at 0x1ba84, `sd` at 0x1bac0.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1ba88, `lbu` at 0x1ba90, `lbu` at 0x1ba98.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x1ba8c, `sb` at 0x1ba94, `sb` at 0x1ba9c.
  The `lw` at 0x1baac loads 4 bytes from ?.
  The `sw` at 0x1bab4 stores 4 bytes to ?.
  The `bne` branch at 0x1babc targets 0x1ba6c, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The return at 0x1bac4 has v0 = ?.
- `klerror_global_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bacc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bacc-0x1bb38 (108 bytes).
  It occupies 108 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x1bae4, `ld` at 0x1bb24.
  The `ll` at 0x1baf8 loads 4 bytes from sym(_prom_cleared) +0xe0.
  The `sc` at 0x1bb04 stores 4 bytes to sym(_prom_cleared) +0xe0.
  The `beq` branch at 0x1bad8 targets 0x1bb24, is taken when v0(=[sym(.sdata)+216]:8) == 0, and falls through when v0(=[sym(.sdata)+216]:8) != 0.
  The `beq` branch at 0x1baf0 targets 0x1bb24, is taken when at(?) >= v1(=0x1000000) (unsigned), and falls through when at(?) < v1(=0x1000000) (unsigned).
  The `beql` branch at 0x1bb08 targets 0x1baf8, is taken when a0(=[sym(.sdata)+224]+1) == 0, and falls through when a0(=[sym(.sdata)+224]+1) != 0; its branch-likely delay slot `nop` at 0x1bb0c runs only when taken and is annulled on fall-through.
  The return at 0x1bb1c has v0 = one of -0x1, 0x0.
  The return at 0x1bb30 has v0 = 0x0.
- `klerror_check_recoverable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bb38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bb38-0x1bcd8 (416 bytes).
  It occupies 416 bytes.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0x1bb38, `lh` at 0x1bcc0.
  2 such `ld` accesses load 8 bytes from (sym(kl_error_log) + ([-0x3bd6]:2 << 0x3)) +0x0, including `ld` at 0x1bb54, `ld` at 0x1bcd4.
  The `ld` at 0x1bb78 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x1bb84 loads 8 bytes from [-0x3fe8]:8 +0x308.
  The `lh` at 0x1bb90 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x1bba0 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x1bba4 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `lbu` at 0x1bbb8 loads 1 byte from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2012.
  The `ld` at 0x1bbf0 loads 8 bytes from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2018.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x1bbfc, `ld` at 0x1bc6c.
  The `lwu` at 0x1bc00 loads 4 bytes from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2014.
  The `lbu` at 0x1bc14 loads 1 byte from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2013.
  The `ld` at 0x1bc20 loads 8 bytes from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2020.
  The `ld` at 0x1bc2c loads 8 bytes from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2028.
  The `lbu` at 0x1bc38 loads 1 byte from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2010.
  The `lbu` at 0x1bc3c loads 1 byte from (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2011.
  2 such `sb` accesses store 1 byte to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2011, including `sb` at 0x1bc50, `sb` at 0x1bc74.
  The `sd` at 0x1bc70 stores 8 bytes to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2020.
  The `sd` at 0x1bc78 stores 8 bytes to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2028.
  The `sd` at 0x1bc84 stores 8 bytes to (([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5)) +0x2018.
  The `jal` at 0x1bbc4 calls klerror_global_check with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bc54 calls error_check_part_page with a0=a1 at entry (arg1), a1=0x9200000001030100, a2=?, a3=?.
  The `jal` at 0x1bca4 calls cmn_err_tag with a0=0xb54, a1=0x14, a2=sym(.rodata)+36904, a3=a1 at entry (arg1).
  The `jal` at 0x1bcb8 calls assfail with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0xbe, a3=sym(kl_error_log).
  The `beq` branch at 0x1bb70 targets 0x1bc90, is taken when v0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) == 0, and falls through when v0(=[(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8) != 0.
  The `beq` branch at 0x1bb7c targets 0x1bb88, is taken when a1(=[-0x3fe8]:8) == 0, and falls through when a1(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1bb88 targets 0x1bcb4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1bbbc targets 0x1bbf0, is taken when t8(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8210]:1) == 0, and falls through when t8(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8210]:1) != 0.
  The `beq` branch at 0x1bbcc targets 0x1bbf0, is taken when v0(=ret(klerror_global_check)) == 0, and falls through when v0(=ret(klerror_global_check)) != 0.
  The `beq` branch at 0x1bbf4 targets 0x1bc6c, is taken when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8216]:8) == 0, and falls through when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8216]:8) != 0.
  The `beq` branch at 0x1bc0c targets 0x1bc6c, is taken when t9(?) >= ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8212]) (unsigned), and falls through when t9(?) < ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8212]) (unsigned).
  The `beq` branch at 0x1bc18 targets 0x1bc38, is taken when ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8211]:1) == 0, and falls through when ra(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8211]:1) != 0.
  The `bne` branch at 0x1bc24 targets 0x1bc6c, is taken when at(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8224]:8) != s2(=a1), and falls through when at(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8224]:8) == s2(=a1).
  The `bne` branch at 0x1bc30 targets 0x1bc6c, is taken when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8232]:8) != s3(?), and falls through when v0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8232]:8) == s3(?).
  The `bne` branch at 0x1bc4c targets 0x1bc88, is taken when v1(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8209]:1) < a0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8208]:1) (signed), and falls through when v1(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8209]:1) >= a0(=[(([(sym(kl_error_log) + ([-0x3bd6]:2 << 0x3))]:8 + ([[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1 << 0x7)) + (a0 << 0x5))+8208]:1) (signed).
  The `beq` branch at 0x1bc5c targets 0x1bc98, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1bc64 targets 0x1bbd4 and is always taken.
  The `beq` branch at 0x1bc80 targets 0x1bbd4 and is always taken.
  The `beq` branch at 0x1bc88 targets 0x1bbd8 and is always taken.
  The `beq` branch at 0x1bc90 targets 0x1bbd4 and is always taken.
  The `beq` branch at 0x1bcac targets 0x1bc64 and is always taken.
  The `beq` branch at 0x1bcd0 targets 0x1bb90 and is always taken.
  The return at 0x1bbe8 has v0 = one of -0x1, 0x0.
- `sn0_skip_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bcd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bcd8-0x1bcf0 (24 bytes).
  It occupies 24 bytes.
  The `lh` at 0x1bce4 loads 2 bytes from abs 0xffffffffffffc428.
  The `jal` at 0x1bce0 calls dumptlb with a0=[-0x3bd8]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1bce8 targets 0x1bce8 and is always taken.
- `stop_all_cpus` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bcf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bcf0-0x1bf2c (572 bytes).
  It occupies 572 bytes.
  3 such `ld` accesses load 8 bytes from abs 0x9200000001000020, including `ld` at 0x1bd38, `ld` at 0x1be80, `ld` at 0x1beb8.
  The `sd` at 0x1bd6c stores 8 bytes to abs 0x9200000001000410.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001600000, including `ld` at 0x1bd74, `ld` at 0x1bda4.
  The `ld` at 0x1bd98 loads 8 bytes from abs 0x9200000001604020.
  The `ld` at 0x1bd9c loads 8 bytes from abs 0x9200000001780000.
  The `ld` at 0x1bda0 loads 8 bytes from abs 0x9200000001604028.
  The `sd` at 0x1be64 stores 8 bytes to table(0x9200000001fa0038) +0x0.
  The `sd` at 0x1be7c stores 8 bytes to table(0x9200000001800000) +0x0.
  The `sd` at 0x1be98 stores 8 bytes to ?.
  The `sd` at 0x1bf00 stores 8 bytes to abs 0x9200000001000408.
  The `beq` branch at 0x1bd64 targets 0x1befc, is taken when (at(=[0x9200000001000020]:8) & 0x1) == 0, and falls through when (at(=[0x9200000001000020]:8) & 0x1) != 0.
  The `beq` branch at 0x1bd80 targets 0x1bf04, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0x1bd88 targets 0x1bd98, is taken when a1(?) == a2(=0x1), and falls through when a1(?) != a2(=0x1).
  The `beq` branch at 0x1bd90 targets 0x1bf0c, is taken when a1(?) == a3(=0x2), and falls through when a1(?) != a3(=0x2).
  The `beq` branch at 0x1bdc0 targets 0x1becc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1bdcc targets 0x1bf20 and is always taken.
  The `bne` branch at 0x1bddc targets 0x1becc, is taken when s5(?) < a4(?) (unsigned), and falls through when s5(?) >= a4(?) (unsigned).
  The `bne` branch at 0x1be08 targets 0x1bf18, is taken when (s4(?) & v0(?)) != 0, and falls through when (s4(?) & v0(?)) == 0.
  The `beq` branch at 0x1be10 targets 0x1bdd4 and is always taken.
  The `beq` branch at 0x1be18 targets 0x1be48, is taken when a4(?) == a3(?), and falls through when a4(?) != a3(?).
  The `beq` branch at 0x1be30 targets 0x1be48, is taken when a2(?) >= 0x4 (signed), and falls through when a2(?) < 0x4 (signed).
  The `bne` branch at 0x1be38 targets 0x1be18, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bnel` branch at 0x1be40 targets 0x1be24, is taken when a4(?) != a6(=-0x1), and falls through when a4(?) == a6(=-0x1); its branch-likely delay slot `addiu a2,a2,1` at 0x1be44 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1be48 targets 0x1bdd4, is taken when a2(?) != s7(=0x4), and falls through when a2(?) == s7(=0x4).
  The `beq` branch at 0x1be60 targets 0x1beb0 and is always taken.
  The `bne` branch at 0x1be78 targets 0x1be98, is taken when t0(?) != a4(?), and falls through when t0(?) == a4(?).
  The `beq` branch at 0x1be90 targets 0x1be9c, is taken when a2(?) == at(=[0x9200000001000020]:8), and falls through when a2(?) != at(=[0x9200000001000020]:8).
  The `beq` branch at 0x1bea8 targets 0x1bdd4, is taken when a1(?) >= 0x2 (signed), and falls through when a1(?) < 0x2 (signed).
  The `bne` branch at 0x1beb0 targets 0x1be6c, is taken when t0(?) != a4(?), and falls through when t0(?) == a4(?).
  The `beq` branch at 0x1bebc targets 0x1be80, is taken when a3(?) == v0(=[0x9200000001000020]:8), and falls through when a3(?) != v0(=[0x9200000001000020]:8).
  The `beq` branch at 0x1bec4 targets 0x1be6c and is always taken.
  The `beq` branch at 0x1befc targets 0x1bd70 and is always taken.
  The `beq` branch at 0x1bf04 targets 0x1bd98 and is always taken.
  The `beq` branch at 0x1bf10 targets 0x1bd98 and is always taken.
  The `beq` branch at 0x1bf18 targets 0x1be38 and is always taken.
  The `beq` branch at 0x1bf24 targets 0x1bde8 and is always taken.
  The return at 0x1bef4 has v0 = ?.
  The instructions from 0x1be68 to 0x1be68 are not reached by any path from the entry, and their branches are not listed.
- `sn0_error_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1bf2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1bf2c-0x1c0f4 (456 bytes).
  It occupies 456 bytes.
  The `lh` at 0x1bf60 loads 2 bytes from sym(error_consistency_check) +0x4.
  The `lh` at 0x1bf70 loads 2 bytes from abs 0xffffffffffffc428.
  The `sh` at 0x1bf94 stores 2 bytes to sym(error_consistency_check) +0x4.
  6 such `lw` accesses load 4 bytes from sym(error_consistency_check) +0x0, including `lw` at 0x1bfcc, `lw` at 0x1bff8, `lw` at 0x1c048.
  6 such `sw` accesses store 4 bytes to sym(error_consistency_check) +0x0, including `sw` at 0x1c03c, `sw` at 0x1c054, `sw` at 0x1c094.
  The `jal` at 0x1bf34 calls probe_routers with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1bf48 calls printf with a0=sym(.rodata)+36904, a1=?, a2=?, a3=?.
  The `jal` at 0x1bf58 calls mutex_spinlock with a0=sym(error_consistency_check), a1=?, a2=?, a3=?.
  The `jal` at 0x1bf7c calls mutex_spinunlock with a0=sym(error_consistency_check), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[-0x3bd8]:2, a5=[sym(error_consistency_check)+4]:2.
  The `jal` at 0x1bf84 calls sn0_skip_dump with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bf98 calls mutex_spinunlock with a0=sym(error_consistency_check), a1=ret(mutex_spinlock), a2=?, a3=?, a4=[-0x3bd8]:2, a5=[sym(error_consistency_check)+4]:2.
  The `jal` at 0x1bfa0 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bfa8 calls enter_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bfb0 calls stop_all_cpus [0x1bcf0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bfb8 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bfc4 calls kf_hint_set with a0=ret(get_nasid), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1c010 calls exit_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c018 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1c040 calls sn_fru_entry with a0=sym(printf), a1=?, a2=?, a3=?.
  The `jal` at 0x1c064 calls cmn_err_tag with a0=0xb56, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=[sym(error_consistency_check)].
  The `jal` at 0x1c07c calls cmn_err_tag with a0=0xb57, a1=0x14, a2=sym(.rodata)+36904, a3=?.
  The `jal` at 0x1c090 calls kl_dump_hw_state with a0=?, a1=?, a2=?, a3=([sym(error_consistency_check)] | 0x1), a4=[sym(error_consistency_check)].
  The `jal` at 0x1c0b4 calls kl_error_show_dump with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=?, a3=?.
  The `jal` at 0x1c0d4 calls cmn_err_tag with a0=0xb55, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=[sym(error_consistency_check)].
  The `jal` at 0x1c0dc calls exit_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c0e4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1bf3c targets 0x1bf50, is taken when v0(=ret(probe_routers)) == 0, and falls through when v0(=ret(probe_routers)) != 0.
  The `beq` branch at 0x1bf6c targets 0x1bf94, is taken when a5(=[sym(error_consistency_check)+4]:2) == a1(=-0x1), and falls through when a5(=[sym(error_consistency_check)+4]:2) != a1(=-0x1).
  The `beq` branch at 0x1bf74 targets 0x1bf94, is taken when a4(=[-0x3bd8]:2) == a5(=[sym(error_consistency_check)+4]:2), and falls through when a4(=[-0x3bd8]:2) != a5(=[sym(error_consistency_check)+4]:2).
  The `beq` branch at 0x1bf8c targets 0x1c024 and is always taken.
  The `beq` branch at 0x1bfd4 targets 0x1c08c, is taken when (a4(=[sym(error_consistency_check)]) & 0x1) == 0, and falls through when (a4(=[sym(error_consistency_check)]) & 0x1) != 0.
  The `beq` branch at 0x1bfdc targets 0x1c0cc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1bfe8 targets 0x1c0a8, is taken when (a4(?) & 0x10) == 0, and falls through when (a4(?) & 0x10) != 0.
  The `beq` branch at 0x1bff4 targets 0x1c058, is taken when (a4(?) & 0x20) == 0, and falls through when (a4(?) & 0x20) != 0.
  The `beq` branch at 0x1c000 targets 0x1c030, is taken when (a4(?) & 0x4) == 0, and falls through when (a4(?) & 0x4) != 0.
  The `beq` branch at 0x1c008 targets 0x1c074, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1c038 targets 0x1c04c, is taken when t0(=[sym(sn_fru_enabled)]) == 0, and falls through when t0(=[sym(sn_fru_enabled)]) != 0.
  The `beq` branch at 0x1c050 targets 0x1c010 and is always taken.
  The `beq` branch at 0x1c06c targets 0x1bffc and is always taken.
  The `beq` branch at 0x1c084 targets 0x1c010 and is always taken.
  The `beq` branch at 0x1c0a0 targets 0x1bfe4 and is always taken.
  The `beq` branch at 0x1c0c4 targets 0x1bffc and is always taken.
  The `beq` branch at 0x1c0ec targets 0x1c024 and is always taken.
  The return at 0x1c028 has v0 = one of ret(sn0_skip_dump), ret(splx).
- `sn0_error_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c0f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c0f4-0x1c120 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x1c0fc calls kl_dump_hw_state with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c10c calls kl_error_show_dump with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=?, a3=?.
  The return at 0x1c118 has v0 = ret(kl_error_show_dump).
- `error_lookup_inst_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c668 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c668-0x1c738 (208 bytes).
  It occupies 208 bytes.
  The `ld` at 0x1c66c loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `ld` at 0x1c6a0 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `jal` at 0x1c6b8 calls fuiword with a0=?, a1=a1 at entry (arg1), a2=?, a3=0x80000000, a4=0x1.
  The `jal` at 0x1c6c8 calls fkiword with a0=?, a1=a1 at entry (arg1), a2=?, a3=0x80000000, a4=0x1.
  The `jal` at 0x1c6e0 calls is_store with a0=?, a1=?, a2=?, a3=?, a6=-0x1.
  The `jal` at 0x1c708 calls is_load with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c728 calls cmn_err with a0=0x10, a1=sym(.rodata)+36904, a2=?, a3=?.
  The `beq` branch at 0x1c690 targets 0x1c6f0, is taken when at(?) == v1(=0x18), and falls through when at(?) != v1(=0x18).
  The `beq` branch at 0x1c69c targets 0x1c6a8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1c6b0 targets 0x1c6c8, is taken when a0(?) >= a5(=0x100000000000) (unsigned), and falls through when a0(?) < a5(=0x100000000000) (unsigned).
  The `beq` branch at 0x1c6c0 targets 0x1c6d4 and is always taken.
  The `beq` branch at 0x1c6d8 targets 0x1c700, is taken when s0(?) == a6(=-0x1), and falls through when s0(?) != a6(=-0x1).
  The `beq` branch at 0x1c6e8 targets 0x1c708, is taken when v0(=ret(is_store)) == 0, and falls through when v0(=ret(is_store)) != 0.
  The `beq` branch at 0x1c700 targets 0x1c6f4 and is always taken.
  The `beq` branch at 0x1c710 targets 0x1c720, is taken when v0(=ret(is_load)) == 0, and falls through when v0(=ret(is_load)) != 0.
  The `beq` branch at 0x1c718 targets 0x1c6f0 and is always taken.
  The `beq` branch at 0x1c730 targets 0x1c6f0 and is always taken.
  The return at 0x1c6f8 has v0 = one of -0x1, 0x0, 0x1.
- `error_check_memory_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c738 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c738-0x1c824 (236 bytes).
  It occupies 236 bytes.
  The `jal` at 0x1c754 calls memory_present with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c770 calls memory_read_accessible with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c794 calls cmn_err_tag with a0=0xb5f, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0).
  The `jal` at 0x1c7d0 calls cmn_err_tag with a0=0xb5d, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a4=0x3.
  The `jal` at 0x1c7f0 calls memory_write_accessible with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c814 calls cmn_err_tag with a0=0xb5e, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0).
  The `beq` branch at 0x1c760 targets 0x1c7b8, is taken when v0(=ret(memory_present)) == 0, and falls through when v0(=ret(memory_present)) != 0.
  The `beq` branch at 0x1c768 targets 0x1c7f0, is taken when at(=a1) == s2(=0x1), and falls through when at(=a1) != s2(=0x1).
  The `bne` branch at 0x1c778 targets 0x1c7a0, is taken when v0(=ret(memory_read_accessible)) != 0, and falls through when v0(=ret(memory_read_accessible)) == 0.
  The `beq` branch at 0x1c780 targets 0x1c79c, is taken when s1(=a2) == s2(=0x1), and falls through when s1(=a2) != s2(=0x1).
  The `beq` branch at 0x1c7b8 targets 0x1c7dc, is taken when s1(=a2) == s2(=0x1), and falls through when s1(=a2) != s2(=0x1).
  The `beq` branch at 0x1c7e8 targets 0x1c7a0 and is always taken.
  The `bne` branch at 0x1c7f8 targets 0x1c7a0, is taken when v0(=ret(memory_write_accessible)) != 0, and falls through when v0(=ret(memory_write_accessible)) == 0.
  The `beq` branch at 0x1c800 targets 0x1c81c, is taken when s1(=a2) == s2(=0x1), and falls through when s1(=a2) != s2(=0x1).
  The `beq` branch at 0x1c81c targets 0x1c7a0 and is always taken.
  The return at 0x1c7b0 has v0 = one of 0x0, 0x2, 0x3.
- `error_check_poisoned_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1c824 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1c824-0x1ca64 (576 bytes).
  It occupies 576 bytes.
  The `jal` at 0x1c854 calls nasid_to_partid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c85c calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c87c calls get_dir_ent with a0=a0 at entry (arg0), a1=sp-88, a2=sp-80, a3=sp-72.
  The `jal` at 0x1c8a8 calls migr_check_migr_poisoned with a0=a0 at entry (arg0), a1=?, a2=0x7, a3=?.
  The `jal` at 0x1c8c4 calls migr_page_unmap_tlb with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a2 at entry (arg2), a4=0x1.
  The `jal` at 0x1c8d0 calls klerror_check_recoverable with a0=0x0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1c8f8 calls cmn_err_tag with a0=0xb60, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a4=0x1.
  The `jal` at 0x1c908 calls page_ispoison with a0=a0 at entry (arg0), a1=?, a2=?, a3=a2 at entry (arg2).
  The `jal` at 0x1c928 calls cmn_err_tag with a0=0xb61, a1=0x14, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a5=-0x1.
  The `jal` at 0x1c938 calls log_md_errors with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c940 calls page_isdiscarded with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1c964 calls check_md_errors with a0=a0 at entry (arg0), a1=sp-64, a2=0x11e1a300, a3=sp-96.
  The `jal` at 0x1c9a4 calls check_md_errors with a0=a0 at entry (arg0), a1=sp-64, a2=0x11e1a300, a3=sp-96.
  The `jal` at 0x1c9dc calls cmn_err_tag with a0=0xb63, a1=0x4, a2=sym(.rodata)+36904, a3=a0 at entry (arg0).
  The `jal` at 0x1c9ec calls kl_panic with a0=sym(.rodata)+36904, a1=0x1, a2=?, a3=0x2, a6=0x3.
  The `jal` at 0x1ca04 calls error_page_discard with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=0x2, a6=0x3.
  The `jal` at 0x1ca34 calls cmn_err_tag with a0=0xb62, a1=0x4, a2=sym(.rodata)+36904, a3=a0 at entry (arg0), a4=0x1, a5=0x2.
  The `jal` at 0x1ca54 calls assfail with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0x2ce, a3=?.
  The `bne` branch at 0x1c864 targets 0x1ca4c, is taken when s1(=ret(nasid_to_partid)) != v0(=ret(part_id)), and falls through when s1(=ret(nasid_to_partid)) == v0(=ret(part_id)).
  The `beq` branch at 0x1c88c targets 0x1c8a8, is taken when a1(?) == a2(=0x7), and falls through when a1(?) != a2(=0x7).
  The `beq` branch at 0x1c8b0 targets 0x1c908, is taken when v0(=ret(migr_check_migr_poisoned)) == 0, and falls through when v0(=ret(migr_check_migr_poisoned)) != 0.
  The `beq` branch at 0x1c8bc targets 0x1c8ec, is taken when a3(=a2) == a4(=0x1), and falls through when a3(=a2) != a4(=0x1).
  The `beq` branch at 0x1c8dc targets 0x1c920, is taken when v0(=ret(klerror_check_recoverable)) == a5(=-0x1), and falls through when v0(=ret(klerror_check_recoverable)) != a5(=-0x1).
  The `beq` branch at 0x1c8e4 targets 0x1c894 and is always taken.
  The `beq` branch at 0x1c900 targets 0x1c894 and is always taken.
  The `beq` branch at 0x1c910 targets 0x1c938, is taken when v0(=ret(page_ispoison)) == 0, and falls through when v0(=ret(page_ispoison)) != 0.
  The `beq` branch at 0x1c918 targets 0x1c894 and is always taken.
  The `beq` branch at 0x1c930 targets 0x1c894 and is always taken.
  The `beq` branch at 0x1c948 targets 0x1c958, is taken when v0(=ret(page_isdiscarded)) == 0, and falls through when v0(=ret(page_isdiscarded)) != 0.
  The `beq` branch at 0x1c950 targets 0x1c894 and is always taken.
  The `beq` branch at 0x1c96c targets 0x1c9c0, is taken when v0(=ret(check_md_errors)) == 0, and falls through when v0(=ret(check_md_errors)) != 0.
  The `beq` branch at 0x1c980 targets 0x1c9fc, is taken when a0(=ret(check_md_errors)) == a1(=0x1), and falls through when a0(=ret(check_md_errors)) != a1(=0x1).
  The `beq` branch at 0x1c988 targets 0x1c9fc, is taken when a0(=ret(check_md_errors)) == a3(=0x2), and falls through when a0(=ret(check_md_errors)) != a3(=0x2).
  The `beq` branch at 0x1c990 targets 0x1c9ec, is taken when a0(=ret(check_md_errors)) == a6(=0x3), and falls through when a0(=ret(check_md_errors)) != a6(=0x3).
  The `bne` branch at 0x1c9b8 targets 0x1c980, is taken when v0(=ret(check_md_errors)) != 0, and falls through when v0(=ret(check_md_errors)) == 0.
  The `bne` branch at 0x1c9c4 targets 0x1c9d4, is taken when a3(=a2) != 0, and falls through when a3(=a2) == 0.
  The `beq` branch at 0x1c9cc targets 0x1c894 and is always taken.
  The `beq` branch at 0x1c9e4 targets 0x1c894 and is always taken.
  The `beq` branch at 0x1c9f4 targets 0x1c998 and is always taken.
  The `beq` branch at 0x1ca0c targets 0x1ca44, is taken when v0(=ret(error_page_discard)) == 0, and falls through when v0(=ret(error_page_discard)) != 0.
  The `beq` branch at 0x1ca18 targets 0x1ca44, is taken when v0(=ret(error_page_discard)) == a4(=0x1), and falls through when v0(=ret(error_page_discard)) != a4(=0x1).
  The `beq` branch at 0x1ca20 targets 0x1ca3c, is taken when v0(=ret(error_page_discard)) == a5(=0x2), and falls through when v0(=ret(error_page_discard)) != a5(=0x2).
  The `beq` branch at 0x1ca3c targets 0x1c894 and is always taken.
  The `beq` branch at 0x1ca44 targets 0x1c894 and is always taken.
  The `beq` branch at 0x1ca5c targets 0x1c874 and is always taken.
  The return at 0x1c8a0 has v0 = one of 0x0, 0x1, 0x3, 0x2, ?.
- `handle_hspec_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ca64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ca64-0x1cb9c (312 bytes).
  It occupies 312 bytes.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1cad0, `ld` at 0x1cb18, `ld` at 0x1cb4c.
  The `jal` at 0x1ca88 calls get_matching_spool_addr with a0=sp-32, a1=sp-24, a2=?, a3=0x8, a4=0x0.
  The `jal` at 0x1cae4 calls cmn_err_tag with a0=0xb67, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1), a5=0x1.
  The `jal` at 0x1cb2c calls cmn_err_tag with a0=0xb66, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1), a5=0x1.
  The `jal` at 0x1cb70 calls cmn_err_tag with a0=0xb64, a1=0x14, a2=sym(.rodata)+36904, a3=0x2.
  The `jal` at 0x1cb8c calls cmn_err_tag with a0=0xb65, a1=0x14, a2=sym(.rodata)+36904, a3=0x2, a5=0x1.
  The `beq` branch at 0x1ca94 targets 0x1cb64, is taken when v0(=ret(get_matching_spool_addr)) == 0, and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  The `beq` branch at 0x1ca9c targets 0x1cb80, is taken when v0(=ret(get_matching_spool_addr)) == a2(=-0x1), and falls through when v0(=ret(get_matching_spool_addr)) != a2(=-0x1).
  The `beq` branch at 0x1caa4 targets 0x1cafc, is taken when v0(=ret(get_matching_spool_addr)) == a5(=0x1), and falls through when v0(=ret(get_matching_spool_addr)) != a5(=0x1).
  The `bne` branch at 0x1caac targets 0x1caec, is taken when v0(=ret(get_matching_spool_addr)) != a3(=0x2), and falls through when v0(=ret(get_matching_spool_addr)) == a3(=0x2).
  The `bltz` branch at 0x1cac0 targets 0x1cb3c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0x1cb08 targets 0x1cb50, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x1cb34 targets 0x1caf0 and is always taken.
  The `beq` branch at 0x1cb48 targets 0x1cad4 and is always taken.
  The `beq` branch at 0x1cb5c targets 0x1cb1c and is always taken.
  The `beq` branch at 0x1cb78 targets 0x1caf0 and is always taken.
  The `beq` branch at 0x1cb94 targets 0x1caf0 and is always taken.
  The return at 0x1caf4 has v0 = 0x2.
- `handle_mspec_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1cb9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1cb9c-0x1cd5c (448 bytes).
  It occupies 448 bytes.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1cc0c, `ld` at 0x1cc84, `ld` at 0x1cce4.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x1cc1c, `ld` at 0x1cc94.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x308, including `ld` at 0x1cc28, `ld` at 0x1cca0.
  2 such `lw` accesses load 4 bytes from [[-0x3fe8]:8+776]:8 +0x10, including `lw` at 0x1cc34, `lw` at 0x1ccac.
  The `jal` at 0x1cbc0 calls get_matching_spool_addr with a0=sp-64, a1=sp-56, a2=?, a3=0x8, a4=0x0.
  The `jal` at 0x1cc14 calls get_current_name with a0=?, a1=?, a2=sym(.rodata)+36904, a3=?, a5=-0x1, a6=0x1, a7=0x2.
  The `jal` at 0x1cc50 calls cmn_err_tag with a0=0xb6b, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1cc8c calls get_current_name with a0=?, a1=?, a2=sym(.rodata)+36904, a3=?, a5=-0x1, a6=0x1, a7=0x2.
  The `jal` at 0x1ccc8 calls cmn_err_tag with a0=0xb6a, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1ccf0 calls kthread_get_pid with a0=?, a1=?, a2=[-0x3fe8]:8, a3=?.
  The `jal` at 0x1cd20 calls cmn_err_tag with a0=0xb68, a1=0x14, a2=sym(.rodata)+36904, a3=?.
  The `jal` at 0x1cd3c calls cmn_err_tag with a0=0xb69, a1=0x14, a2=sym(.rodata)+36904, a3=?, a5=-0x1, a6=0x1.
  The `jal` at 0x1cd4c calls kthread_get_pid with a0=?, a1=?, a2=[-0x3fe8]:8, a3=?.
  The `beq` branch at 0x1cbc8 targets 0x1cd18, is taken when v0(=ret(get_matching_spool_addr)) == 0, and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  The `beq` branch at 0x1cbd4 targets 0x1cd30, is taken when v0(=ret(get_matching_spool_addr)) == a5(=-0x1), and falls through when v0(=ret(get_matching_spool_addr)) != a5(=-0x1).
  The `beq` branch at 0x1cbdc targets 0x1cc68, is taken when v0(=ret(get_matching_spool_addr)) == a6(=0x1), and falls through when v0(=ret(get_matching_spool_addr)) != a6(=0x1).
  The `bne` branch at 0x1cbe4 targets 0x1cc5c, is taken when v0(=ret(get_matching_spool_addr)) != a7(=0x2), and falls through when v0(=ret(get_matching_spool_addr)) == a7(=0x2).
  The `bltz` branch at 0x1cbfc targets 0x1ccd8, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x1cc20 targets 0x1ccf0, is taken when a2(=[-0x3fe8]:8) == 0, and falls through when a2(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1cc2c targets 0x1ccf0, is taken when a7(=[[-0x3fe8]:8+776]:8) == 0, and falls through when a7(=[[-0x3fe8]:8+776]:8) != 0.
  The `bltz` branch at 0x1cc74 targets 0x1cd00, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x1cc98 targets 0x1cd4c, is taken when a2(=[-0x3fe8]:8) == 0, and falls through when a2(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1cca4 targets 0x1cd4c, is taken when a7(=[[-0x3fe8]:8+776]:8) == 0, and falls through when a7(=[[-0x3fe8]:8+776]:8) != 0.
  The `beq` branch at 0x1ccd0 targets 0x1cc5c and is always taken.
  The `beq` branch at 0x1cce8 targets 0x1cc14 and is always taken.
  The `beq` branch at 0x1ccf8 targets 0x1cc38 and is always taken.
  The `beq` branch at 0x1cd10 targets 0x1cc8c and is always taken.
  The `beq` branch at 0x1cd28 targets 0x1cc5c and is always taken.
  The `beq` branch at 0x1cd44 targets 0x1cc5c and is always taken.
  The `beq` branch at 0x1cd54 targets 0x1ccb0 and is always taken.
  The return at 0x1cc60 has v0 = 0x2.
- `handle_io_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1cd5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1cd5c-0x1cfac (592 bytes).
  It occupies 592 bytes.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0x1ce30, `lh` at 0x1ce9c, `lh` at 0x1cf58.
  4 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x1ce3c, `lh` at 0x1ceb0, `lh` at 0x1ced4.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x110, including `ld` at 0x1ce48, `ld` at 0x1cebc, `ld` at 0x1cf78.
  3 such `lh` accesses load 2 bytes from table(sym(nasid_to_compact_node)) +0x0, including `lh` at 0x1ce5c, `lh` at 0x1ced0, `lh` at 0x1cf8c.
  The `ld` at 0x1cee4 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x1cee8 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x1cef8 loads 8 bytes from abs 0x9200000001000400.
  The `sd` at 0x1cf3c stores 8 bytes to abs 0x9200000001000400.
  The `jal` at 0x1cdb8 calls get_matching_spool_addr with a0=sp-80, a1=sp-72, a2=?, a3=0x8, a4=0x0, a6=0x2.
  The `jal` at 0x1ce58 calls kl_ioerror_handler with a0=entry(sym(nasid_to_compact_node)), a1=[-0x3bd6]:2, a2=[-0x3bd8]:2, a3=0x5, a4=a1 at entry (arg1), a5=[a0+272]:8, a6=one of 0x0, 0x1, 0x2, a7=a0 at entry (arg0).
  The `jal` at 0x1cecc calls kl_ioerror_handler with a0=entry(sym(nasid_to_compact_node)), a1=[-0x3bd6]:2, a2=[-0x3bd8]:2, a3=0x5, a4=a1 at entry (arg1), a5=[a0+272]:8, a6=one of 0x0, 0x1, 0x2, a7=a0 at entry (arg0).
  The `jal` at 0x1cf2c calls cmn_err_tag with a0=0xb6c, a1=0x14, a2=?, a3=sym(.rodata)+36904, a4=0x9200000001000400, a6=0x100000.
  The `jal` at 0x1cf48 calls cmn_err_tag with a0=0xb6d, a1=0x14, a2=sym(.rodata)+36904, a3=-0x1.
  The `jal` at 0x1cf88 calls kl_ioerror_handler with a0=entry(sym(nasid_to_compact_node)), a1=[-0x3bd6]:2, a2=[-0x3bd8]:2, a3=0x5, a4=a1 at entry (arg1), a5=[a0+272]:8, a6=one of 0x0, 0x1, 0x2, a7=a0 at entry (arg0).
  The `jal` at 0x1cf98 calls get_nasid with a0=?, a1=?, a2=sym(.rodata)+36904, a3=-0x1.
  The `beq` branch at 0x1cd8c targets 0x1ce8c, is taken when s2(=0x1) == a2, and falls through when s2(=0x1) != a2.
  The `beq` branch at 0x1cdc0 targets 0x1ce9c, is taken when v0(=ret(get_matching_spool_addr)) == 0, and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  The `beq` branch at 0x1cdcc targets 0x1cf40, is taken when v0(=ret(get_matching_spool_addr)) == a3(=-0x1), and falls through when v0(=ret(get_matching_spool_addr)) != a3(=-0x1).
  The `beq` branch at 0x1cdd4 targets 0x1cf58, is taken when v0(=ret(get_matching_spool_addr)) == s2(=0x1), and falls through when v0(=ret(get_matching_spool_addr)) != s2(=0x1).
  The `beq` branch at 0x1cddc targets 0x1ce08, is taken when v0(=ret(get_matching_spool_addr)) == a4(=0x2), and falls through when v0(=ret(get_matching_spool_addr)) != a4(=0x2).
  The `beq` branch at 0x1cde4 targets 0x1ce6c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1ce20 targets 0x1ce30, is taken when s0(=a1) < a5(=0x9200000001000000) (unsigned), and falls through when s0(=a1) >= a5(=0x9200000001000000) (unsigned).
  The `bne` branch at 0x1ce28 targets 0x1cf98, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1ce64 targets 0x1cdec, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1ce7c targets 0x1cde8, is taken when s1(=one of 0x0, 0x1, 0x2) == a1(=0x2), and falls through when s1(=one of 0x0, 0x1, 0x2) != a1(=0x2).
  The `beq` branch at 0x1ce84 targets 0x1cdec and is always taken.
  The `beq` branch at 0x1ce94 targets 0x1cda4 and is always taken.
  The `beq` branch at 0x1cf0c targets 0x1ce64, is taken when (s3(=one of 0x100000, 0x200000) & a4(=[0x9200000001000400]:8)) == 0, and falls through when (s3(=one of 0x100000, 0x200000) & a4(=[0x9200000001000400]:8)) != 0.
  The `beq` branch at 0x1cf14 targets 0x1cf38, is taken when s1(=one of 0x0, 0x1, 0x2) == 0, and falls through when s1(=one of 0x0, 0x1, 0x2) != 0.
  The `beq` branch at 0x1cf38 targets 0x1ce64 and is always taken.
  The `beq` branch at 0x1cf50 targets 0x1ce64 and is always taken.
  The `beq` branch at 0x1cf90 targets 0x1ce64 and is always taken.
  The `beq` branch at 0x1cfa4 targets 0x1ce30 and is always taken.
  The return at 0x1ce00 has v0 = one of 0x1, 0x2.
- `handle_uncac_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1cfac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1cfac-0x1d8b0 (2308 bytes).
  It occupies 2308 bytes.
  The `ld` at 0x1d044 loads 8 bytes from table(sym(.rodata)+36904) +0x0.
  The `lh` at 0x1d050 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x1d060 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x1d064 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x1d07c loads 8 bytes from abs 0x9200000001000400.
  2 such `sd` accesses store 8 bytes to abs 0x9200000001000400, including `sd` at 0x1d0ec, `sd` at 0x1d52c.
  The `jal` at 0x1cfe0 calls get_matching_spool_addr with a0=sp-144, a1=sp-136, a2=?, a3=0x8, a4=0x0.
  The `jal` at 0x1d098 calls nasid_to_partid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d0a0 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d0d4 calls cmn_err_tag with a0=0xb6f, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1d0e8 calls partition_handle_error with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x9, a3=?.
  The `jal` at 0x1d4b0 calls cmn_err_tag with a0=0xb79, a1=0x14, a2=sym(.rodata)+36904, a3=?, a5=a1 at entry (arg1).
  The `jal` at 0x1d4c0 calls nasid_to_partid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d4c8 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d4f0 calls cmn_err_tag with a0=0xb72, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1d514 calls cmn_err_tag with a0=0xb6e, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1d528 calls error_page_discard with a0=a1 at entry (arg1), a1=0x1, a2=0x1, a3=?.
  The `jal` at 0x1d554 calls cmn_err_tag with a0=0xb70, a1=0x4, a2=sym(.rodata)+36904, a3=a1 at entry (arg1), a4=0x2.
  The `jal` at 0x1d55c calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1d578 calls cmn_err_tag with a0=0xb71, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1d588 calls partition_handle_error with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x9, a3=?.
  The `jal` at 0x1d7bc calls cmn_err_tag with a0=0xb73, a1=0x14, a2=sym(.rodata)+36904, a3=-0x1.
  The `beq` branch at 0x1cff0 targets 0x1d050, is taken when v0(=ret(get_matching_spool_addr)) == 0, and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  The `beq` branch at 0x1cffc targets 0x1d7b4, is taken when v0(=ret(get_matching_spool_addr)) == a3(=-0x1), and falls through when v0(=ret(get_matching_spool_addr)) != a3(=-0x1).
  The `beq` branch at 0x1d008 targets 0x1d11c, is taken when v0(=ret(get_matching_spool_addr)) == s4(=0x1), and falls through when v0(=ret(get_matching_spool_addr)) != s4(=0x1).
  The `beq` branch at 0x1d014 targets 0x1d124, is taken when v0(=ret(get_matching_spool_addr)) == a4(=0x2), and falls through when v0(=ret(get_matching_spool_addr)) != a4(=0x2).
  The `beq` branch at 0x1d03c targets 0x1d4a0, is taken when a1(?) >= 0x8 (unsigned), and falls through when a1(?) < 0x8 (unsigned).
  The `beq` branch at 0x1d090 targets 0x1d4c0, is taken when (s4(=one of 0x100000, 0x200000) & t8(=[0x9200000001000400]:8)) == 0, and falls through when (s4(=one of 0x100000, 0x200000) & t8(=[0x9200000001000400]:8)) != 0.
  The `beq` branch at 0x1d0ac targets 0x1d500, is taken when v0(=ret(part_id)) == at(?), and falls through when v0(=ret(part_id)) != at(?).
  The `beq` branch at 0x1d0b8 targets 0x1d0e0, is taken when s2(=a2) == v0(=0x1), and falls through when s2(=a2) != v0(=0x1).
  The `beq` branch at 0x1d11c targets 0x1d01c and is always taken.
  The `beq` branch at 0x1d128 targets 0x1d01c and is always taken.
  The `beq` branch at 0x1d4b8 targets 0x1d0f4 and is always taken.
  The `beq` branch at 0x1d4d0 targets 0x1d7d4, is taken when s3(=ret(nasid_to_partid)) == v0(=ret(part_id)), and falls through when s3(=ret(nasid_to_partid)) != v0(=ret(part_id)).
  The `beq` branch at 0x1d4d8 targets 0x1d4f8, is taken when s2(=a2) == a4(=0x1), and falls through when s2(=a2) != a4(=0x1).
  The `beq` branch at 0x1d4f8 targets 0x1d0f4 and is always taken.
  The `beq` branch at 0x1d530 targets 0x1d7e4, is taken when v0(=ret(error_page_discard)) == 0, and falls through when v0(=ret(error_page_discard)) != 0.
  The `beq` branch at 0x1d53c targets 0x1d7e4, is taken when v0(=ret(error_page_discard)) == a3(=0x1), and falls through when v0(=ret(error_page_discard)) != a3(=0x1).
  The `beq` branch at 0x1d544 targets 0x1d55c, is taken when v0(=ret(error_page_discard)) == a4(=0x2), and falls through when v0(=ret(error_page_discard)) != a4(=0x2).
  The `beq` branch at 0x1d564 targets 0x1d7cc, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1d590 targets 0x1d0f4 and is always taken.
  The `beq` branch at 0x1d7c4 targets 0x1d0f4 and is always taken.
  The `beq` branch at 0x1d7cc targets 0x1d0f4 and is always taken.
  The `beq` branch at 0x1d7d4 targets 0x1d0f4 and is always taken.
  The `beq` branch at 0x1d7e4 targets 0x1d0f4 and is always taken.
  The return at 0x1d114 has v0 = one of ret(partition_handle_error), 0x3, 0x2, ret(error_page_discard), 0x0.
  The instructions from 0x1d130 to 0x1d49c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1d598 to 0x1d7b0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1d7dc to 0x1d7e0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1d7ec to 0x1d8ac are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1d048 uses a jump table whose successors are unresolved.
- `handle_cac_buserr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1d8b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1d8b0-0x1e224 (2420 bytes).
  It occupies 2420 bytes.
  The `ld` at 0x1d958 loads 8 bytes from table(sym(.rodata)+36904) +0x0.
  The `ld` at 0x1d9b4 loads 8 bytes from abs 0x9200000001000018.
  The `ld` at 0x1dd84 loads 8 bytes from a0 (arg0 at entry) +0x110.
  The `ld` at 0x1e1c4 loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `ld` at 0x1e210 loads 8 bytes from ?.
  The `jal` at 0x1d8e8 calls get_matching_spool_addr with a0=sp-96, a1=sp-88, a2=?, a3=[sym(scache_linemask)]+1, a4=0x0.
  The `jal` at 0x1d964 calls kl_panic with a0=sym(.rodata)+36904, a1=?, a2=?, a3=?.
  The `jal` at 0x1d9a8 calls nasid_to_region with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d9d4 calls nasid_to_region with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1d9f0 calls cmn_err_tag with a0=0xb7b, a1=0x14, a2=sym(.rodata)+36904, a3=ret(nasid_to_region), a5=a1 at entry (arg1).
  The `jal` at 0x1da00 calls nasid_to_partid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1da08 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1da1c calls error_lookup_inst_type with a0=a0 at entry (arg0), a1=?, a2=sym(.rodata)+36904, a3=?.
  The `jal` at 0x1da34 calls error_check_memory_access with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x1da44 calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1da58 calls partition_handle_error with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x6, a3=?.
  The `jal` at 0x1da90 calls cmn_err_tag with a0=0xb8c, a1=0x14, a2=sym(.rodata)+36904, a3=?, a5=a1 at entry (arg1).
  The `jal` at 0x1dd3c calls cmn_err_tag with a0=0xb7a, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1dd58 calls cmn_err_tag with a0=0xb7c, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1dd68 calls partition_handle_error with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x9, a3=?.
  The `jal` at 0x1dd88 calls error_check_poisoned_state with a0=a1 at entry (arg1), a1=[a0+272]:8, a2=0x0, a3=?.
  The `jal` at 0x1dd98 calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1ddac calls partition_handle_error with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x5, a3=?.
  The `jal` at 0x1e018 calls cmn_err_tag with a0=0xb7d, a1=0x14, a2=sym(.rodata)+36904, a3=?.
  The `jal` at 0x1e028 calls memory_iscalias with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1e04c calls klerror_check_recoverable with a0=0x3, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1e158 calls error_check_part_page with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a5=-0x1.
  The `jal` at 0x1e184 calls cmn_err_tag with a0=0xb7f, a1=0x4, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1e194 calls partition_handle_error with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x2, a3=?.
  The `jal` at 0x1e1b0 calls cmn_err_tag with a0=0xb80, a1=0x14, a2=sym(.rodata)+36904, a3=?, a4=a1 at entry (arg1).
  The `jal` at 0x1e20c calls cmn_err_tag with a0=0xb82, a1=0x14, a2=sym(.rodata)+36904, a3=sym(.rodata)+36904, a5=0x90000001c0000000, a7=0x3ffffff0.
  The `beq` branch at 0x1d8fc targets 0x1dd1c, is taken when v0(=ret(get_matching_spool_addr)) == a0(=-0x1), and falls through when v0(=ret(get_matching_spool_addr)) != a0(=-0x1).
  The `beq` branch at 0x1d904 targets 0x1d998, is taken when v0(=ret(get_matching_spool_addr)) == 0, and falls through when v0(=ret(get_matching_spool_addr)) != 0.
  The `beq` branch at 0x1d90c targets 0x1da68, is taken when v0(=ret(get_matching_spool_addr)) == s4(=0x1), and falls through when v0(=ret(get_matching_spool_addr)) != s4(=0x1).
  The `beq` branch at 0x1d918 targets 0x1daa0, is taken when v0(=ret(get_matching_spool_addr)) == a4(=0x2), and falls through when v0(=ret(get_matching_spool_addr)) != a4(=0x2).
  The `bne` branch at 0x1d924 targets 0x1d964, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1d950 targets 0x1da7c, is taken when v1(?) >= 0x8 (unsigned), and falls through when v1(?) < 0x8 (unsigned).
  The `bne` branch at 0x1d9c4 targets 0x1da00, is taken when (t8(=[0x9200000001000018]:8) & t9(?)) != 0, and falls through when (t8(=[0x9200000001000018]:8) & t9(?)) == 0.
  The `beq` branch at 0x1d9cc targets 0x1d9f8, is taken when a0(=0x1) == s5(=a2), and falls through when a0(=0x1) != s5(=a2).
  The `beq` branch at 0x1d9f8 targets 0x1d970 and is always taken.
  The `bne` branch at 0x1da14 targets 0x1dd4c, is taken when v0(=ret(part_id)) != t9(?), and falls through when v0(=ret(part_id)) == t9(?).
  The `beq` branch at 0x1da28 targets 0x1e010, is taken when v0(=ret(error_lookup_inst_type)) == ra(=-0x1), and falls through when v0(=ret(error_lookup_inst_type)) != ra(=-0x1).
  The `beq` branch at 0x1da3c targets 0x1dd80, is taken when v0(=ret(error_check_memory_access)) == 0, and falls through when v0(=ret(error_check_memory_access)) != 0.
  The `beq` branch at 0x1da4c targets 0x1dd78, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1da60 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1da74 targets 0x1d924 and is always taken.
  The `beq` branch at 0x1da98 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1dab0 targets 0x1d924 and is always taken.
  The `beq` branch at 0x1dd44 targets 0x1d9a8 and is always taken.
  The `beq` branch at 0x1dd70 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1dd78 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1dd90 targets 0x1e028, is taken when v0(=ret(error_check_poisoned_state)) == 0, and falls through when v0(=ret(error_check_poisoned_state)) != 0.
  The `beq` branch at 0x1dda0 targets 0x1dfc4, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1ddb4 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1dfc4 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1e020 targets 0x1da30 and is always taken.
  The `beq` branch at 0x1e030 targets 0x1e048, is taken when v0(=ret(memory_iscalias)) == 0, and falls through when v0(=ret(memory_iscalias)) != 0.
  The `beq` branch at 0x1e038 targets 0x1e04c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1e040 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1e058 targets 0x1e158, is taken when v0(=ret(klerror_check_recoverable)) == a5(=-0x1), and falls through when v0(=ret(klerror_check_recoverable)) != a5(=-0x1).
  The `beq` branch at 0x1e060 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1e160 targets 0x1e1a4, is taken when v0(=ret(error_check_part_page)) == 0, and falls through when v0(=ret(error_check_part_page)) != 0.
  The `beq` branch at 0x1e16c targets 0x1e190, is taken when a1(=[sym(debug_error_message)]) == 0, and falls through when a1(=[sym(debug_error_message)]) != 0.
  The `beq` branch at 0x1e19c targets 0x1d970 and is always taken.
  The `beq` branch at 0x1e1cc targets 0x1e21c, is taken when (a2(=entry(0x9200000001fc0000)) & 0x1) == 0, and falls through when (a2(=entry(0x9200000001fc0000)) & 0x1) != 0.
  The `beq` branch at 0x1e214 targets 0x1d970 and is always taken.
  The `beq` branch at 0x1e21c targets 0x1e1d8 and is always taken.
  The return at 0x1d990 has v0 = one of 0x3, ret(partition_handle_error), ret(error_check_memory_access), ret(error_check_poisoned_state), 0x2, 0x0.
  The instructions from 0x1dab8 to 0x1dd18 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1ddbc to 0x1dfc0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1dfcc to 0x1e00c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1e068 to 0x1e154 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1d95c uses a jump table whose successors are unresolved.
- `dump_crb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e224 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e224-0x1e35c (312 bytes).
  It occupies 312 bytes.
  The `lh` at 0x1e278 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1e2a8, `ld` at 0x1e304, `ld` at 0x1e310.
  The `jal` at 0x1e338 calls cmn_err with a0=0x4, a1=sym(.rodata)+36904, a2=a0 at entry (arg0), a3=?.
  The `bltz` branch at 0x1e25c targets 0x1e2dc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x1e26c targets 0x1e2dc, is taken when a0 >= 0x81 (signed), and falls through when a0 < 0x81 (signed).
  The `beq` branch at 0x1e27c targets 0x1e2dc, is taken when a3(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) == a4(=-0x1), and falls through when a3(=[(sym(nasid_to_compact_node) + (a0 + a0))]:2) != a4(=-0x1).
  The `beq` branch at 0x1e2c8 targets 0x1e304, is taken when s2(?) == a2(?), and falls through when s2(?) != a2(?).
  The `bne` branch at 0x1e2d4 targets 0x1e2a0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1e34c targets 0x1e29c, is taken when s1(?) < 0xf (signed), and falls through when s1(?) >= 0xf (signed).
  The `beq` branch at 0x1e354 targets 0x1e2e0 and is always taken.
  The return at 0x1e2fc has v0 = one of ?, ret(cmn_err).
- `kl_ioerror_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e35c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e35c-0x1e4e0 (388 bytes).
  It occupies 388 bytes.
  The `ld` at 0x1e398 loads 8 bytes from a7 (arg7 at entry) +0x120.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x1e40c, `ld` at 0x1e4dc.
  The `ld` at 0x1e410 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x1e41c loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lw` at 0x1e438 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8c80.
  The `jal` at 0x1e434 calls hub_ioerror_handler with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=a3 at entry (arg3), a2=a6 at entry (arg6), a3=sp-128.
  The `jal` at 0x1e46c calls ioerror_dump with a0=sym(.rodata)+36904, a1=a3 at entry (arg3), a2=0x1, a3=sp-128.
  The `beq` branch at 0x1e390 targets 0x1e3ac, is taken when a7 == 0, and falls through when a7 != 0.
  The `beq` branch at 0x1e3ac targets 0x1e490, is taken when a1 == t8(=-0x1), and falls through when a1 != t8(=-0x1).
  The `beq` branch at 0x1e3bc targets 0x1e3d0, is taken when a2 == t8(=-0x1), and falls through when a2 != t8(=-0x1).
  The `beq` branch at 0x1e3e4 targets 0x1e3f8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1e3f0 targets 0x1e4a8, is taken when (a1(?) & 0x7) == 0, and falls through when (a1(?) & 0x7) != 0.
  The `beq` branch at 0x1e3f8 targets 0x1e40c, is taken when a5 == 0, and falls through when a5 != 0.
  The `beq` branch at 0x1e440 targets 0x1e4a0, is taken when s0(=a6) == 0, and falls through when s0(=a6) != 0.
  The `beq` branch at 0x1e448 targets 0x1e4a0, is taken when s0(=a6) == a0(=0x2), and falls through when s0(=a6) != a0(=0x2).
  The `bne` branch at 0x1e450 targets 0x1e460, is taken when v0(=ret(hub_ioerror_handler)) != 0, and falls through when v0(=ret(hub_ioerror_handler)) == 0.
  The `beq` branch at 0x1e458 targets 0x1e478 and is always taken.
  The `bne` branch at 0x1e490 targets 0x1e3c4, is taken when a2 != t8(=-0x1), and falls through when a2 == t8(=-0x1).
  The `beq` branch at 0x1e498 targets 0x1e3d4 and is always taken.
  The `beq` branch at 0x1e4a0 targets 0x1e478 and is always taken.
  The `bne` branch at 0x1e4d0 targets 0x1e400, is taken when a5 != 0, and falls through when a5 == 0.
  The `beq` branch at 0x1e4d8 targets 0x1e410 and is always taken.
  The return at 0x1e488 has v0 = ret(hub_ioerror_handler).
- `kl_panic_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e4e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e4e0-0x1e528 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x1e4e8 calls enter_panic_mode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e4f0 calls check_ni_errors with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e508 calls hubni_error_handler with a0=sym(.rodata)+36904, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1e514 calls sn0_error_dump with a0=sym(.rodata)+36904, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e4f8 targets 0x1e514, is taken when v0(=ret(check_ni_errors)) == 0, and falls through when v0(=ret(check_ni_errors)) != 0.
  The return at 0x1e520 has v0 = ret(sn0_error_dump).
- `kl_panic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e528 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e528-0x1e558 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x1e534 calls kl_panic_setup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e540 calls cmn_err with a0=0x12, a1=a0 at entry (arg0), a2=?, a3=?.
  The return at 0x1e550 has v0 = ret(cmn_err).
- `vphys_get_pattr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e558 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e558-0x1e618 (192 bytes).
  It occupies 192 bytes.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x1e5a8, `sw` at 0x1e5c8, `sw` at 0x1e600.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x1e5b0, `sw` at 0x1e5cc, `sw` at 0x1e60c.
  The `bne` branch at 0x1e580 targets 0x1e58c, is taken when a0 < v1(=0x8000000000000000) (unsigned), and falls through when a0 >= v1(=0x8000000000000000) (unsigned).
  The `bne` branch at 0x1e588 targets 0x1e5f0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1e594 targets 0x1e5b4, is taken when a0 < a3(=0xffffffff80000000) (unsigned), and falls through when a0 >= a3(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0x1e5a0 targets 0x1e5bc, is taken when a0 >= a5(=0xffffffffa0000000) (unsigned), and falls through when a0 < a5(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0x1e5ac targets 0x1e5d0 and is always taken.
  The `bne` branch at 0x1e5b8 targets 0x1e5e8, is taken when a0 < a5(=0xffffffffa0000000) (unsigned), and falls through when a0 >= a5(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0x1e5c0 targets 0x1e5e0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1e5e0 targets 0x1e5d8 and is always taken.
  The `beq` branch at 0x1e5e8 targets 0x1e5d8 and is always taken.
  The `beq` branch at 0x1e610 targets 0x1e5d8 and is always taken.
  The return at 0x1e5d8 has v0 = ?.
- `pde_get_pattr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e618 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e618-0x1e694 (124 bytes).
  It occupies 124 bytes.
  3 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x0, including `ld` at 0x1e618, `ld` at 0x1e624, `ld` at 0x1e634.
  The `sw` at 0x1e620 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x1e630 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `beq` branch at 0x1e650 targets 0x1e660, is taken when (a6(?) & 0xf) == 0, and falls through when (a6(?) & 0xf) != 0.
  The return at 0x1e68c has v0 = ?.
- `vtop_attr_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e694 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e694-0x1e7d0 (316 bytes).
  It occupies 316 bytes.
  The `sw` at 0x1e6c0 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x1e6cc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x1e774 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x1e780 loads 8 bytes from [-0x3fe8]:8 +0x308.
  The `jal` at 0x1e724 calls vphys_get_pattr [0x1e558] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xffffffff80000000, a7=0xffffffffc0000000.
  The `jal` at 0x1e74c calls tlbgetpid with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xffffffff80000000, a7=0xffffffffc0000000.
  The `jal` at 0x1e75c calls tlb_vaddr_to_pde with a0=ret(tlbgetpid), a1=a0 at entry (arg0), a2=sp-48, a3=?.
  The `jal` at 0x1e78c calls vaddr_to_pde with a0=a0 at entry (arg0), a1=sp-48, a2=?, a3=[[-0x3fe8]:8+776]:8.
  The `jal` at 0x1e7c0 calls pde_get_pattr [0x1e618] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-48.
  The `bne` branch at 0x1e6dc targets 0x1e6ec, is taken when a0 < at(=0x8000000000000000) (unsigned), and falls through when a0 >= at(=0x8000000000000000) (unsigned).
  The `bne` branch at 0x1e6e4 targets 0x1e720, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1e6f8 targets 0x1e710, is taken when s0(=a0) < a5(=0xffffffff80000000) (unsigned), and falls through when s0(=a0) >= a5(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0x1e700 targets 0x1e718, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1e708 targets 0x1e720 and is always taken.
  The `bne` branch at 0x1e710 targets 0x1e74c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1e718 targets 0x1e74c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bltz` branch at 0x1e76c targets 0x1e7b8, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1e778 targets 0x1e7ac, is taken when v0(=[-0x3fe8]:8) == 0, and falls through when v0(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1e784 targets 0x1e7ac, is taken when a3(=[[-0x3fe8]:8+776]:8) == 0, and falls through when a3(=[[-0x3fe8]:8+776]:8) != 0.
  The `bltz` branch at 0x1e79c targets 0x1e7b4, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x1e7a4 targets 0x1e738 and is always taken.
  The `beq` branch at 0x1e7ac targets 0x1e734 and is always taken.
  The `beq` branch at 0x1e7c8 targets 0x1e730 and is always taken.
  The return at 0x1e744 has v0 = one of ?, 0x0.
- `error_clean_cache_line` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e7d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e7d0-0x1e84c (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0x1e814 calls ecc_cacheop_get with a0=0x13, a1=?, a2=sp-64, a3=?.
  The `beq` branch at 0x1e804 targets 0x1e834, is taken when s0(?) >= s2(?) (unsigned), and falls through when s0(?) < s2(?) (unsigned).
  The `bne` branch at 0x1e82c targets 0x1e810, is taken when s0(?) < s2(?) (unsigned), and falls through when s0(?) >= s2(?) (unsigned).
  The return at 0x1e844 has v0 = one of ?, ret(ecc_cacheop_get).
- `initiator_to_cpunum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e84c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e84c-0x1e8b0 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0x1e89c loads 2 bytes from table(sym(nasid_to_compact_node)) +0x0.
  The `jal` at 0x1e898 calls cnode_slice_to_cpuid with a0=entry(sym(nasid_to_compact_node)), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1e85c targets 0x1e870, is taken when (a0 & 0x2) == 0, and falls through when (a0 & 0x2) != 0.
  The `beq` branch at 0x1e8a8 targets 0x1e864 and is always taken.
  The return at 0x1e868 has v0 = one of -0x1, ?.
- `poison_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1e8b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1e8b0-0x1ea3c (396 bytes).
  It occupies 396 bytes.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1e8f4, `sd` at 0x1e9b0.
  The `ld` at 0x1e990 loads 8 bytes from ?.
  The `lh` at 0x1e9a4 loads 2 bytes from abs 0xffffffffffffc428.
  The `jal` at 0x1e914 calls get_dir_ent with a0=?, a1=sp-80, a2=sp-72, a3=sp-64.
  The `jal` at 0x1e91c calls set_dir_state_POISONED with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e968 calls initiator_to_cpunum with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e9cc calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1e9e4 calls cpuaction with a0=?, a1=sym(error_clean_cache_line), a2=0x1, a3=?.
  The `jal` at 0x1e9f4 calls error_clean_cache_line with a0=?, a1=?, a2=?, a3=?, a6=[sym(maxcpus)].
  The `jal` at 0x1ea10 calls assfail with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0x7dd, a3=?, a6=[sym(maxcpus)].
  The `jal` at 0x1ea2c calls assfail with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=0x7de, a3=?.
  The `bne` branch at 0x1e8f0 targets 0x1e8e0, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0x1e928 targets 0x1e968, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1e930 targets 0x1e968, is taken when v0(?) == s3(=0x5), and falls through when v0(?) != s3(=0x5).
  The `bne` branch at 0x1e940 targets 0x1e908, is taken when s1(?) < 0x4000 (unsigned), and falls through when s1(?) >= 0x4000 (unsigned).
  The `beq` branch at 0x1e97c targets 0x1e938, is taken when v0(=ret(initiator_to_cpunum)) == at(=-0x1), and falls through when v0(=ret(initiator_to_cpunum)) != at(=-0x1).
  The `bne` branch at 0x1e99c targets 0x1e938, is taken when (a0(?) & a3(?)) != 0, and falls through when (a0(?) & a3(?)) == 0.
  The `beq` branch at 0x1e9b4 targets 0x1e9f4, is taken when t8(=[-0x3bd8]:2) == s4(?), and falls through when t8(=[-0x3bd8]:2) != s4(?).
  The `bltz` branch at 0x1e9bc targets 0x1ea08, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `bne` branch at 0x1e9c4 targets 0x1ea08, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1e9d4 targets 0x1ea20, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x1e9ec targets 0x1e93c and is always taken.
  The `beq` branch at 0x1e9fc targets 0x1e93c and is always taken.
  The `beq` branch at 0x1ea18 targets 0x1e9cc and is always taken.
  The `beq` branch at 0x1ea34 targets 0x1e9dc and is always taken.
  The return at 0x1e960 has v0 = ?.
  The instructions from 0x1ea04 to 0x1ea04 are not reached by any path from the entry, and their branches are not listed.
- `error_page_discard` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ea3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ea3c-0x1ea80 (68 bytes).
  It occupies 68 bytes.
  The `jal` at 0x1ea48 calls page_discard with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1ea54 targets 0x1ea6c, is taken when v0(=ret(page_discard)) == 0, and falls through when v0(=ret(page_discard)) != 0.
  The `beq` branch at 0x1ea60 targets 0x1ea78, is taken when v0(=ret(page_discard)) == v1(=0x1), and falls through when v0(=ret(page_discard)) != v1(=0x1).
  The `beq` branch at 0x1ea78 targets 0x1ea70 and is always taken.
  The return at 0x1ea70 has v0 = one of 0x1, 0x2, 0x3.
- `sn0_error_mark_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ea80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ea80-0x1ea9c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1ea88 calls poison_page with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1ea94 has v0 = ret(poison_page).
- `sn0_error_reclaim_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ea9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ea9c-0x1eaf4 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x1ead4 calls set_dir_state_UNOWNED with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1eaa8 targets 0x1eac8, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0x1eae4 targets 0x1ead4, is taken when s0(?) < 0x4000 (unsigned), and falls through when s0(?) >= 0x4000 (unsigned).
  The `beq` branch at 0x1eaec targets 0x1eab4 and is always taken.
  The return at 0x1eac0 has v0 = one of 0x0, 0x1.
- `error_reg_partition_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eaf4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eaf4-0x1eafc (8 bytes).
  It occupies 8 bytes.
  The return at 0x1eaf4 has v0 = ?.
- `error_check_part_page` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eafc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eafc-0x1eb7c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x1eb50 loads 4 bytes from ?.
  The `jal` at 0x1eb3c calls page_validate_pfdat with a0=?, a1=(table(0x2000000) | 0xa800000000000000), a2=0xa800000000000000, a3=0x2000000.
  The `beq` branch at 0x1eb44 targets 0x1eb74, is taken when v0(=ret(page_validate_pfdat)) == 0, and falls through when v0(=ret(page_validate_pfdat)) != 0.
  The `bgez` branch at 0x1eb58 targets 0x1eb6c, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x1eb6c targets 0x1eb64 and is always taken.
  The `beq` branch at 0x1eb74 targets 0x1eb64 and is always taken.
  The return at 0x1eb64 has v0 = one of 0x0, 0x1.
- `partition_handle_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eb7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eb7c-0x1ebc4 (72 bytes).
  It occupies 72 bytes.
  The `jalr` at 0x1eb8c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ebb4 calls cmn_err_tag with a0=0xb8d, a1=0x4, a2=sym(.rodata)+36904, a3=a3 at entry (arg3).
  The `beq` branch at 0x1eb84 targets 0x1eba8, is taken when v0(=[sym(.sbss)+48]:8) == 0, and falls through when v0(=[sym(.sbss)+48]:8) != 0.
  The `beq` branch at 0x1ebbc targets 0x1eb98 and is always taken.
  The return at 0x1eba0 has v0 = one of ret(?), 0x3.
- `errste_prfunc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ebc4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ebc4-0x1ec30 (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0x1ebd8 calls strlen with a0=[sym(sneb_buf)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ebe4 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ec20 calls sprintf with a0=((ret(strlen) << 0x0) + [sym(sneb_buf)]:8), a1=a0 at entry (arg0), a2=?, a3=?, a4=(ret(strlen) << 0x0).
  The `beq` branch at 0x1ec00 targets 0x1ec18, is taken when at(=[sym(sneb_size)]) >= v0(=((ret(strlen) << 0x0) + (ret(strlen) << 0x0))) (signed), and falls through when at(=[sym(sneb_size)]) < v0(=((ret(strlen) << 0x0) + (ret(strlen) << 0x0))) (signed).
  The `beq` branch at 0x1ec28 targets 0x1ec08 and is always taken.
  The return at 0x1ec10 has v0 = one of ((ret(strlen) << 0x0) + (ret(strlen) << 0x0)), ret(sprintf).
- `errorste_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ec30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ec30-0x1ec58 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x1ec44 calls kl_error_show_reset_ste with a0=sym(.rodata)+36904, a1=sym(.rodata)+36904, a2=sym(errste_prfunc), a3=a3 at entry (arg3).
  The return at 0x1ec50 has v0 = ret(kl_error_show_reset_ste).
- `ms1bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ec58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ec58-0x1eccc (116 bytes).
  It occupies 116 bytes.
  The `beq` branch at 0x1ec5c targets 0x1ec6c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1ec70 targets 0x1ec80, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1ec84 targets 0x1ec94, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1ec98 targets 0x1eca8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1ecac targets 0x1ecc0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The return at 0x1ecc4 has v0 = ?.
- `subnodevertex_to_subnode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f9e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f9e8-0x1fa60 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0x1fa48 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sh` at 0x1fa4c stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1fa04 calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0x1fa20 calls master_node_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1fa0c targets 0x1fa20, is taken when v0(=ret(hwgraph_info_get_LBL)) == 0, and falls through when v0(=ret(hwgraph_info_get_LBL)) != 0.
  The `beq` branch at 0x1fa3c targets 0x1fa58, is taken when a2(?) == a4(=-0x1), and falls through when a2(?) != a4(=-0x1).
  The `beq` branch at 0x1fa50 targets 0x1fa14 and is always taken.
  The `beq` branch at 0x1fa58 targets 0x1fa14 and is always taken.
  The return at 0x1fa18 has v0 = one of -0x1, 0x0.
- `mark_subnodevertex_as_subnode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fa60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fa60-0x1fae4 (132 bytes).
  It occupies 132 bytes.
  The `jal` at 0x1fa78 calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0x1fa94 calls hwgraph_info_export_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=0x8, a3=?.
  The `jal` at 0x1fab8 calls assfail with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=0x339, a3=?.
  The `jal` at 0x1fad4 calls assfail with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=0x33c, a3=?.
  The `bne` branch at 0x1fa80 targets 0x1fab0, is taken when v0(=ret(hwgraph_info_add_LBL)) != 0, and falls through when v0(=ret(hwgraph_info_add_LBL)) == 0.
  The `bne` branch at 0x1fa9c targets 0x1fac8, is taken when v0(=ret(hwgraph_info_export_LBL)) != 0, and falls through when v0(=ret(hwgraph_info_export_LBL)) == 0.
  The `beq` branch at 0x1fac0 targets 0x1fa8c and is always taken.
  The `beq` branch at 0x1fadc targets 0x1faa8 and is always taken.
  The return at 0x1faa8 has v0 = one of ret(hwgraph_info_export_LBL), ret(assfail).
- `intpend0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x200f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x200f0-0x20250 (352 bytes).
  It occupies 352 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc5a0, including `ld` at 0x2010c, `ld` at 0x201f0.
  3 such `ld` accesses load 8 bytes from abs 0x9200000001000098, including `ld` at 0x20110, `ld` at 0x20198, `ld` at 0x201ec.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc510, including `ld` at 0x2013c, `ld` at 0x20158, `ld` at 0x20218.
  2 such `lw` accesses load 4 bytes from [-0x3af0]:8 +0xd0, including `lw` at 0x2015c, `lw` at 0x20220.
  2 such `sw` accesses store 4 bytes to [-0x3af0]:8 +0xd0, including `sw` at 0x20164, `sw` at 0x20234.
  The `sd` at 0x20170 stores 8 bytes to abs 0x9200000001000090.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc5b0, including `ld` at 0x20178, `ld` at 0x201b4, `ld` at 0x201c8.
  The `lw` at 0x20188 loads 4 bytes from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x18.
  The `ld` at 0x2019c loads 8 bytes from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x8.
  2 such `ld` accesses load 8 bytes from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x10, including `ld` at 0x201a8, `ld` at 0x20244.
  The `ld` at 0x20238 loads 8 bytes from ([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x0.
  The `jal` at 0x20140 calls cvsema with a0=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+32, a1=?, a2=?, a3=?.
  The `jal` at 0x20168 calls ms1bit with a0=?, a1=[-0x3af0]:8, a2=?, a3=?.
  The `jalr` at 0x201ac calls (unknown callee) with a0=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+16]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)).
  The `jal` at 0x201bc calls valusema with a0=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+32, a1=?, a2=?, a3=?, a4=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)).
  The `jal` at 0x201dc calls vsema with a0=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+32, a1=?, a2=?, a3=?.
  The `jalr` at 0x20240 calls (unknown callee) with a0=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+16]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)), a5=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8.
  The `beq` branch at 0x20130 targets 0x20200, is taken when (at(=[-0x3a60]:8) & v0(=[0x9200000001000098]:8)) == 0, and falls through when (at(=[-0x3a60]:8) & v0(=[0x9200000001000098]:8)) != 0.
  The `beq` branch at 0x20138 targets 0x2015c and is always taken.
  The `beq` branch at 0x20150 targets 0x201ec, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x20194 targets 0x20238, is taken when (a2(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+24]) & 0x1000) == 0, and falls through when (a2(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+24]) & 0x1000) != 0.
  The `beq` branch at 0x201a0 targets 0x201bc, is taken when v0(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+8]:8) == 0, and falls through when v0(=[([-0x3a50]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+8]:8) != 0.
  The `beq` branch at 0x201d4 targets 0x20140, is taken when v0(=ret(valusema)) >= a1(=[sym(hub_intr_wakeup_cnt)]) (signed), and falls through when v0(=ret(valusema)) < a1(=[sym(hub_intr_wakeup_cnt)]) (signed).
  The `beq` branch at 0x201e4 targets 0x2014c and is always taken.
  The `bne` branch at 0x201f8 targets 0x20158, is taken when (a2(=[-0x3a60]:8) & a3(=[0x9200000001000098]:8)) != 0, and falls through when (a2(=[-0x3a60]:8) & a3(=[0x9200000001000098]:8)) == 0.
  The `beq` branch at 0x20248 targets 0x2014c and is always taken.
  The return at 0x20230 has v0 = one of [0x9200000001000098]:8, ?.
- `intpend1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20250 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20250-0x2033c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0x20268 loads 8 bytes from abs 0xffffffffffffc5a8.
  The `ld` at 0x2026c loads 8 bytes from abs 0x92000000010000a0.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc510, including `ld` at 0x2028c, `ld` at 0x20300.
  2 such `lw` accesses load 4 bytes from [-0x3af0]:8 +0xd0, including `lw` at 0x20290, `lw` at 0x20308.
  2 such `sw` accesses store 4 bytes to [-0x3af0]:8 +0xd0, including `sw` at 0x20298, `sw` at 0x2031c.
  The `sd` at 0x202a8 stores 8 bytes to abs 0x9200000001000090.
  The `ld` at 0x202b0 loads 8 bytes from abs 0xffffffffffffc5b8.
  The `ld` at 0x202c0 loads 8 bytes from ([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x0.
  The `ld` at 0x202cc loads 8 bytes from abs 0x9200000001000098.
  The `ld` at 0x202d0 loads 8 bytes from ([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)) +0x10.
  The `jal` at 0x2029c calls ms1bit with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x202d4 calls (unknown callee) with a0=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))+16]:8, a1=a0 at entry (arg0), a2=?, a3=?, a5=([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)), a6=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8, a7=ret(ms1bit)+64.
  The `jal` at 0x2032c calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=ret(ms1bit), a3=?, a5=([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3)), a6=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8, a7=ret(ms1bit)+64.
  The `beq` branch at 0x20284 targets 0x202f0, is taken when (s2(=[-0x3a58]:8) & t8(=[0x92000000010000a0]:8)) == 0, and falls through when (s2(=[-0x3a58]:8) & t8(=[0x92000000010000a0]:8)) != 0.
  The `beq` branch at 0x202c8 targets 0x20320, is taken when a6(=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8) == 0, and falls through when a6(=[([-0x3a48]:8 + (((ret(ms1bit) << 0x3) + ret(ms1bit)) << 0x3))]:8) != 0.
  The `bne` branch at 0x202e8 targets 0x2028c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x20334 targets 0x202e0 and is always taken.
  The return at 0x20318 has v0 = ?.
- `setrtvector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x205b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x205b8-0x205dc (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x205c8 calls cause_intr_connect with a0=0x7, a1=a0 at entry (arg0), a2=0x6801, a3=a3 at entry (arg3).
  The return at 0x205d4 has v0 = ret(cause_intr_connect).
- `setkgvector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x205dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x205dc-0x20600 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x205ec calls cause_intr_connect with a0=0x5, a1=a0 at entry (arg0), a2=0x4801, a3=a3 at entry (arg3).
  The return at 0x205f8 has v0 = ret(cause_intr_connect).
- `protected_broadcast` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20a84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20a84-0x20bb4 (304 bytes).
  It occupies 304 bytes.
  The `ld` at 0x20ab4 loads 8 bytes from abs 0xffffffffffffc400.
  The `lbu` at 0x20afc loads 1 byte from ?.
  The `jal` at 0x20b34 calls _wbadaddr_val with a0=table(0x9200000001800000), a1=0x8, a2=sp-16, a3=?.
  The `beq` branch at 0x20b18 targets 0x20b4c, is taken when (t8(?) & t9(?)) == 0, and falls through when (t8(?) & t9(?)) != 0.
  The `bne` branch at 0x20b44 targets 0x20b20, is taken when s0(?) < 0x2 (signed), and falls through when s0(?) >= 0x2 (signed).
  The `bne` branch at 0x20b54 targets 0x20afc, is taken when s3(?) < 0x8 (signed), and falls through when s3(?) >= 0x8 (signed).
  The `bne` branch at 0x20b78 targets 0x20ae4, is taken when a3(?) < 0x10 (signed), and falls through when a3(?) >= 0x10 (signed).
  The return at 0x20bac has v0 = ?.
- `chkdebug` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20bb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20bb4-0x20c08 (84 bytes).
  It occupies 84 bytes.
  The `lh` at 0x20bb4 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x20bc4 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x20bc8 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x20bd8 loads 8 bytes from abs 0x92000000010000a0.
  The `jal` at 0x20bf4 calls dbgintr [0x20884] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x20bec targets 0x20bfc, is taken when (at(=[0x92000000010000a0]:8) & v0(?)) == 0, and falls through when (at(=[0x92000000010000a0]:8) & v0(?)) != 0.
  The return at 0x20c00 has v0 = one of ?, ret(dbgintr).
- `dump_vector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21094 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21094-0x21254 (448 bytes).
  It occupies 448 bytes.
  The `ld` at 0x210ac loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x210e4 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `ld` at 0x210e8 loads 8 bytes from a1 (arg1 at entry) +0x8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x210f4, `lw` at 0x21184, `lw` at 0x2122c.
  The `lw` at 0x2112c loads 4 bytes from a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x18, including `lw` at 0x211a0, `lw` at 0x211c0.
  The `lh` at 0x211d0 loads 2 bytes from a1 (arg1 at entry) +0x38.
  The `lh` at 0x211d4 loads 2 bytes from a1 (arg1 at entry) +0x40.
  The `jalr` at 0x210ec calls (unknown callee) with a0=sym(.rodata)+43384, a1=a2 at entry (arg2), a2=a0+20, a3=[a1]:8, a4=[a1+16]:8, a5=[a1+8]:8.
  The `jalr` at 0x21128 calls (unknown callee) with a0=sym(.rodata)+43384, a1=[a0+16], a2=sym(.rodata)+43384, a3=sym(.rodata)+43384, a4=sym(.rodata)+43384, a5=sym(.rodata)+43384.
  The `jalr` at 0x21198 calls (unknown callee) with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=sym(.rodata)+43384, a3=sym(.rodata)+43384, a4=sym(.rodata)+43384, a5=sym(.rodata)+43384, a6=sym(.rodata)+43384, a7=sym(.rodata)+43384.
  The `jalr` at 0x211b8 calls (unknown callee) with a0=sym(.rodata)+43384, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `jalr` at 0x211d8 calls (unknown callee) with a0=sym(.rodata)+43384, a1=[a1+64]:2, a2=[a1+56]:2, a3=?.
  The `jalr` at 0x211fc calls (unknown callee) with a0=sym(.rodata)+43384, a1=?, a2=?, a3=?.
  The `beq` branch at 0x21108 targets 0x21114, is taken when (a1(=[a0+44]) & 0x1) == 0, and falls through when (a1(=[a0+44]) & 0x1) != 0.
  The `beq` branch at 0x2111c targets 0x21214, is taken when (a1(=[a0+44]) & 0x2) == 0, and falls through when (a1(=[a0+44]) & 0x2) != 0.
  The `beq` branch at 0x21148 targets 0x21154, is taken when (a3(?) & s8(=a3)) == 0, and falls through when (a3(?) & s8(=a3)) != 0.
  The `beq` branch at 0x21160 targets 0x2116c, is taken when (a3(?) & s5(=a4)) == 0, and falls through when (a3(?) & s5(=a4)) != 0.
  The `beq` branch at 0x21178 targets 0x2121c, is taken when (a3(?) & a4(=a5)) == 0, and falls through when (a3(?) & a4(=a5)) != 0.
  The `beq` branch at 0x2118c targets 0x21224, is taken when (t0(=[a0+44]) & 0x4) == 0, and falls through when (t0(=[a0+44]) & 0x4) != 0.
  The `beq` branch at 0x211ac targets 0x2122c, is taken when (a2(=[a1+24]) & 0x1000) == 0, and falls through when (a2(=[a1+24]) & 0x1000) != 0.
  The `beq` branch at 0x211c8 targets 0x211e0, is taken when (a1(=[a1+24]) & 0x1000) == 0, and falls through when (a1(=[a1+24]) & 0x1000) != 0.
  The `beq` branch at 0x21214 targets 0x21124 and is always taken.
  The `beq` branch at 0x2121c targets 0x21184 and is always taken.
  The `beq` branch at 0x21224 targets 0x21198 and is always taken.
  The `beq` branch at 0x21238 targets 0x2124c, is taken when (a1(=[a0+44]) & 0x8) == 0, and falls through when (a1(=[a0+44]) & 0x8) != 0.
  The `beq` branch at 0x21244 targets 0x211b8 and is always taken.
  The `beq` branch at 0x2124c targets 0x21244 and is always taken.
  The return at 0x2120c has v0 = ret(?).
- `enable_ithreads` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x215a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x215a0-0x216ec (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0x21604 loads 4 bytes from ?.
  The `ld` at 0x21660 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x2166c loads 8 bytes from [-0x3c00]:8 +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x21680, `ld` at 0x21698.
  The `sw` at 0x216a8 stores 4 bytes to ?.
  The `jal` at 0x215e0 calls intr_thread_setup [0x2179c] with a0=?, a1=?, a2=?, a3=[sym(default_intr_pri)].
  The `jal` at 0x21628 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x2169c calls mutex_spinlock_spl with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x215c8 targets 0x216b4, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x215d4 targets 0x216e0 and is always taken.
  The `beq` branch at 0x215f0 targets 0x21624, is taken when s0(?) >= 0x40 (signed), and falls through when s0(?) < 0x40 (signed).
  The `bne` branch at 0x2160c targets 0x215dc, is taken when (v1(?) & 0x200) != 0, and falls through when (v1(?) & 0x200) == 0.
  The `bne` branch at 0x2161c targets 0x215f8, is taken when s0(?) < 0x40 (signed), and falls through when s0(?) >= 0x40 (signed).
  The `bne` branch at 0x21638 targets 0x21660, is taken when s3(?) < 0x2 (signed), and falls through when s3(?) >= 0x2 (signed).
  The `beq` branch at 0x21654 targets 0x216b4, is taken when s2(?) >= a3(=[sym(maxnodes)]) (signed), and falls through when s2(?) < a3(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x216ac targets 0x215f4 and is always taken.
  The `beq` branch at 0x216e4 targets 0x21660 and is always taken.
  The return at 0x216d8 has v0 = one of ?, ret(mutex_spinunlock).
- `ip26_enable_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dc4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x21dbc has v0 = ?.
- `ip26_return_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dd0 (20 bytes).
  It occupies 20 bytes.
  The return at 0x21dbc has v0 = ?.
  The instructions from 0x21dc4 to 0x21dcc are not reached by any path from the entry, and their branches are not listed.
- `ip28_enable_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dd0 (20 bytes).
  It occupies 20 bytes.
  The return at 0x21dbc has v0 = ?.
  The instructions from 0x21dc4 to 0x21dcc are not reached by any path from the entry, and their branches are not listed.
- `ip28_return_ucmem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dbc-0x21dd0 (20 bytes).
  It occupies 20 bytes.
  The return at 0x21dbc has v0 = ?.
  The instructions from 0x21dc4 to 0x21dcc are not reached by any path from the entry, and their branches are not listed.
- `spl0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dd0-0x21dec (28 bytes).
  It occupies 28 bytes.
  The return at 0x21de4 has v0 = ?.
- `spl1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `spl3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `spl5` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `spl6` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splgio0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splgio1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splgio2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splhi` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splhi_relnet` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splimp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splnet` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splretr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `spltty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `splvme` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `spl65` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e84-0x21e9c (24 bytes).
  It occupies 24 bytes.
  The return at 0x21e94 has v0 = ?.
- `splprof` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e84-0x21e9c (24 bytes).
  It occupies 24 bytes.
  The return at 0x21e94 has v0 = ?.
- `spl7` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e9c-0x21eb4 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21eac has v0 = ?.
- `splerr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21e9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21e9c-0x21eb4 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21eac has v0 = ?.
- `splx` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ed4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21ed4-0x21ef0 (28 bytes).
  It occupies 28 bytes.
  The return at 0x21ee8 has v0 = ?.
- `splxecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21ed4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21ed4-0x21ef0 (28 bytes).
  It occupies 28 bytes.
  The return at 0x21ee8 has v0 = ?.
- `hubio_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21f18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21f18-0x21f34 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x21f20 calls early_brl1_port_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x21f2c has v0 = ret(early_brl1_port_init).
- `hub_pio_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21f34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21f34-0x22094 (352 bytes).
  It occupies 352 bytes.
  The `lh` at 0x21f6c loads 2 bytes from ?.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x21f94, `sw` at 0x21f9c, `sw` at 0x2200c.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x21fa8, `sd` at 0x21fc8, `sd` at 0x21fd0.
  The `sb` at 0x21fdc stores 1 byte to ?.
  The `sh` at 0x22018 stores 2 bytes to ?.
  The `sd` at 0x2202c stores 8 bytes to table(0x9200000001c00160) +0x0.
  The `jal` at 0x21f4c calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+45112, a2=sp-32, a3=a3 at entry (arg3).
  The `jal` at 0x22034 calls hub_set_piomode with a0=?, a1=0x1, a2=?, a3=?, a5=table(0x9200000001c00000).
  The `jal` at 0x22054 calls init_sv with a0=?, a1=0x0, a2=sym(.rodata)+45112, a3=-0x1.
  The `jal` at 0x22068 calls spinlock_init with a0=?, a1=sym(.rodata)+45112, a2=?, a3=?.
  The `beq` branch at 0x21f88 targets 0x2207c and is always taken.
  The `beq` branch at 0x21fb4 targets 0x21fe8, is taken when a2(?) >= 0x10 (signed), and falls through when a2(?) < 0x10 (signed).
  The `bne` branch at 0x21fd8 targets 0x21f90, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x21fe0 targets 0x21f94 and is always taken.
  The `bne` branch at 0x22028 targets 0x21ff0, is taken when a3(?) < 0x6 (signed), and falls through when a3(?) >= 0x6 (signed).
  The `beq` branch at 0x2208c targets 0x21fc0 and is always taken.
  The return at 0x22074 has v0 = ret(spinlock_init).
- `hub_piomap_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22094 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22094-0x223ac (792 bytes).
  It occupies 792 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x22174, `ld` at 0x22210, `ld` at 0x222ec.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2217c, `sd` at 0x222e4, `sd` at 0x22310.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x221f4, `lw` at 0x22270, `lw` at 0x22338.
  The `lbu` at 0x2221c loads 1 byte from ?.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x22228, `lh` at 0x222b8, `lh` at 0x22340.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x22230, `sh` at 0x22350.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x22284, `sw` at 0x22320, `sw` at 0x2235c.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2231c, `sb` at 0x2233c.
  The `jal` at 0x220c4 calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x220d4 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x220e0 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22124 calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-112, a3=?.
  The `jal` at 0x221bc calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2223c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x222a0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x22368 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x22380 calls sv_wait with a0=?, a1=0x19, a2=?, a3=ret(mutex_spinlock).
  The `beq` branch at 0x220ec targets 0x22120, is taken when s0(=a3) >= s1(=a4) (unsigned), and falls through when s0(=a3) < s1(=a4) (unsigned).
  The `bne` branch at 0x22144 targets 0x22188, is taken when a2(=0x1000000) < a3(=(a2 + a3)) (unsigned), and falls through when a2(=0x1000000) >= a3(=(a2 + a3)) (unsigned).
  The `beq` branch at 0x22168 targets 0x22180, is taken when (s3(=a5) & 0x8) == 0, and falls through when (s3(=a5) & 0x8) != 0.
  The `beq` branch at 0x22180 targets 0x220fc and is always taken.
  The `beq` branch at 0x221a0 targets 0x221b0, is taken when v0(=0x20000000) >= t8(?) (unsigned), and falls through when v0(=0x20000000) < t8(?) (unsigned).
  The `beq` branch at 0x221a8 targets 0x220fc and is always taken.
  The `beq` branch at 0x221cc targets 0x2239c and is always taken.
  The `beq` branch at 0x221e4 targets 0x2224c, is taken when a0(?) >= 0x6 (signed), and falls through when a0(?) < 0x6 (signed).
  The `beq` branch at 0x22200 targets 0x221d4, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x22208 targets 0x221d8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x22214 targets 0x221d8, is taken when a5(?) != s1(?), and falls through when a5(?) == s1(?).
  The `bne` branch at 0x22220 targets 0x221dc, is taken when a6(?) != s2(?), and falls through when a6(?) == s2(?).
  The `beq` branch at 0x22244 targets 0x220fc and is always taken.
  The `bgez` branch at 0x2224c targets 0x22268, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The `beq` branch at 0x22258 targets 0x22360, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x22260 targets 0x2229c and is always taken.
  The `beq` branch at 0x22268 targets 0x222b4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x22278 targets 0x22288, is taken when a0(?) >= 0x5 (signed), and falls through when a0(?) < 0x5 (signed).
  The `beq` branch at 0x22280 targets 0x22290 and is always taken.
  The `beq` branch at 0x22294 targets 0x222b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x222a8 targets 0x220fc and is always taken.
  The `beq` branch at 0x22324 targets 0x22338, is taken when (s3(=a5) & 0x8) == 0, and falls through when (s3(=a5) & 0x8) != 0.
  The `beq` branch at 0x2234c targets 0x22390, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x22358 targets 0x22298 and is always taken.
  The `beq` branch at 0x22388 targets 0x221bc and is always taken.
  The `beq` branch at 0x22394 targets 0x22298 and is always taken.
  The `beq` branch at 0x223a4 targets 0x221f0 and is always taken.
  The return at 0x22118 has v0 = one of 0x0, ?.
- `hub_piomap_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x223ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x223ac-0x22498 (236 bytes).
  It occupies 236 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x223ac, `lw` at 0x22448.
  The `lw` at 0x223d4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lh` at 0x223e0 loads 2 bytes from ?.
  The `lh` at 0x223ec loads 2 bytes from a0 (arg0 at entry) +0x24.
  The `sh` at 0x22400 stores 2 bytes to a0 (arg0 at entry) +0x24.
  The `lbu` at 0x22428 loads 1 byte from a0 (arg0 at entry) +0x26.
  The `sd` at 0x22444 stores 8 bytes to table(0x9200000001c00160) +0x0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x28, including `sw` at 0x22460, `sw` at 0x22494.
  The `lw` at 0x22468 loads 4 bytes from ?.
  The `sw` at 0x22470 stores 4 bytes to ?.
  The `jal` at 0x223d0 calls hwgraph_info_get_LBL with a0=[a0+32], a1=sym(.rodata)+45112, a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0x223e4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2240c calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22478 calls sv_signal with a0=?, a1=?, a2=table(0x9200000001c00000), a3=?.
  The `beq` branch at 0x223c0 targets 0x22414, is taken when (at(=[a0+40]) & 0x2) == 0, and falls through when (at(=[a0+40]) & 0x2) != 0.
  The `beq` branch at 0x223fc targets 0x22424, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x22458 targets 0x22488, is taken when (a4(=[a0+40]) & 0x4) == 0, and falls through when (a4(=[a0+40]) & 0x4) != 0.
  The `beq` branch at 0x22480 targets 0x22404 and is always taken.
  The `beq` branch at 0x22490 targets 0x22474 and is always taken.
  The return at 0x2241c has v0 = one of ?, ret(mutex_spinunlock).
- `hub_piomap_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22498 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22498-0x224f8 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x22498 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x224a8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x224bc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x224d0 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `bne` branch at 0x224a0 targets 0x224e8, is taken when a1 < v0(=[a0+8]:8) (unsigned), and falls through when a1 >= v0(=[a0+8]:8) (unsigned).
  The `bne` branch at 0x224b4 targets 0x224f0, is taken when v1(=([a0+8]:8 + [a0+16]:8)) < a3(=(a1 + a2)) (unsigned), and falls through when v1(=([a0+8]:8 + [a0+16]:8)) >= a3(=(a1 + a2)) (unsigned).
  The `beq` branch at 0x224c4 targets 0x224e0, is taken when (a4(=[a0+40]) & 0x1) == 0, and falls through when (a4(=[a0+40]) & 0x1) != 0.
  The return at 0x224e0 has v0 = one of 0x0, ?.
  The return at 0x224e8 has v0 = 0x0.
  The return at 0x224f0 has v0 = 0x0.
- `hub_piomap_done` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x224f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x224f8-0x22500 (8 bytes).
  It occupies 8 bytes.
  The return at 0x224f8 has v0 = ?.
- `hub_piotrans_addr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22500-0x225c4 (196 bytes).
  It occupies 196 bytes.
  The `jal` at 0x2251c calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22528 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22534 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22544 calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-64, a3=?.
  The `jal` at 0x22588 calls hub_piomap_addr with a0=?, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `bne` branch at 0x22558 targets 0x225ac, is taken when at(=0x1000000) < v0(=(a2 + a3)) (unsigned), and falls through when at(=0x1000000) >= v0(=(a2 + a3)) (unsigned).
  The `beq` branch at 0x2259c targets 0x225a8, is taken when (s2(=a4) & 0x8) == 0, and falls through when (s2(=a4) & 0x8) != 0.
  The return at 0x225bc has v0 = one of 0x0, ?.
- `hub_device_desc_update` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x227ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x227ac-0x22800 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x227bc calls device_desc_intr_swlevel_set with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x227d0 calls sprintf with a0=sp-64, a1=sym(.rodata)+45112, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x227dc calls hwgraph_path_to_dev with a0=sp-64, a1=?, a2=?, a3=?.
  The `jal` at 0x227e8 calls device_desc_intr_target_set with a0=a0 at entry (arg0), a1=ret(hwgraph_path_to_dev), a2=?, a3=?.
  The return at 0x227f8 has v0 = ret(device_desc_intr_target_set).
- `hub_provider_startup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22bc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22bc8-0x22bfc (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x22bd4 calls hub_pio_init [0x21f34] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22bdc calls hub_dma_init [0x225c4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x22be4 calls hub_intr_init [0x227a4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x22bf4 has v0 = ret(hub_intr_init).
- `hub_provider_shutdown` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22bfc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22bfc-0x22c18 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x22c04 calls xtalk_provider_unregister with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22c10 has v0 = ret(xtalk_provider_unregister).
- `hub_check_is_widget0` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22c18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22c18-0x22c6c (84 bytes).
  It occupies 84 bytes.
  The `bne` branch at 0x22c48 targets 0x22c60, is taken when a0 < a2(=table(0x9200000000000000)) (unsigned), and falls through when a0 >= a2(=table(0x9200000000000000)) (unsigned).
  The `beq` branch at 0x22c50 targets 0x22c64, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0x22c58 has v0 = 0x1.
  The return at 0x22c64 has v0 = 0x0.
- `hub_check_pci_equiv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22cd4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22cd4-0x22d5c (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x22ce8 calls hub_check_window_equiv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22d40 calls check_nasid_equiv with a0=?, a1=?, a2=0x0, a3=?.
  The `beq` branch at 0x22cf0 targets 0x22d50, is taken when v0(=ret(hub_check_window_equiv)) == 0, and falls through when v0(=ret(hub_check_window_equiv)) != 0.
  The `beq` branch at 0x22d08 targets 0x22d28, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `beq` branch at 0x22d48 targets 0x22d10 and is always taken.
  The `beq` branch at 0x22d54 targets 0x22d10 and is always taken.
  The return at 0x22d20 has v0 = one of 0x0, ret(check_nasid_equiv).
- `hub_setup_prb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22d5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22d5c-0x22df0 (148 bytes).
  It occupies 148 bytes.
  The `ld` at 0x22dac loads 8 bytes from table(0x9200000001c00198) +0x0.
  The `sd` at 0x22dec stores 8 bytes to table(0x9200000001c00198) +0x0.
  The `beq` branch at 0x22d64 targets 0x22d88, is taken when at(=[sym(force_fire_and_forget)]) == 0, and falls through when at(=[sym(force_fire_and_forget)]) != 0.
  The `beq` branch at 0x22d88 targets 0x22d94, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The return at 0x22de8 has v0 = ?.
- `hub_set_piomode` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22df0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22df0-0x22ee0 (240 bytes).
  It occupies 240 bytes.
  2 such `ld` accesses load 8 bytes from (a0 << 0x21) -0x6dfffffffe3ffef0, including `ld` at 0x22e2c, `ld` at 0x22e88.
  2 such `sd` accesses store 8 bytes to (a0 << 0x21) -0x6dfffffffe3ffef0, including `sd` at 0x22e30, `sd` at 0x22e80.
  The `ld` at 0x22e34 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe3fffe0.
  The `jal` at 0x22e04 calls get_console_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22e50 calls hub_setup_prb with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a1 at entry (arg1).
  The `jal` at 0x22e68 calls hub_setup_prb with a0=a0 at entry (arg0), a1=?, a2=0x3, a3=a1 at entry (arg1).
  The `jal` at 0x22e8c calls putbuf_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22eb4 calls putbuf_lock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22ed0 calls hub_setup_prb with a0=a0 at entry (arg0), a1=0x0, a2=0x3, a3=a1 at entry (arg1).
  The `beq` branch at 0x22e18 targets 0x22eb4, is taken when s1(=a0) == v0(=ret(get_console_nasid)), and falls through when s1(=a0) != v0(=ret(get_console_nasid)).
  The `bltz` branch at 0x22e3c targets 0x22ec4, is taken when at(=([(a0 << 0x21)-7926335344142712800]:8 << 0x2e)) < 0 (signed), and falls through when at(=([(a0 << 0x21)-7926335344142712800]:8 << 0x2e)) >= 0 (signed).
  The `bne` branch at 0x22e78 targets 0x22e5c, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The `beq` branch at 0x22e84 targets 0x22e94, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x22ebc targets 0x22e20 and is always taken.
  The `beq` branch at 0x22ed8 targets 0x22e5c and is always taken.
  The return at 0x22eac has v0 = one of [(a0 << 0x21)-7926335344142712560]:8, ret(putbuf_unlock).
- `hub_widget_flags_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22ee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22ee0-0x22f28 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x22ef8 calls hub_setup_prb with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x1.
  The `jal` at 0x22f10 calls hub_setup_prb with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x3, a3=0x2.
  The `beq` branch at 0x22eec targets 0x22f08, is taken when (a2 & 0x1) == 0, and falls through when (a2 & 0x1) != 0.
  The `beq` branch at 0x22f00 targets 0x22f1c and is always taken.
  The `beq` branch at 0x22f08 targets 0x22f18, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The return at 0x22f20 has v0 = 0x1.
- `hub_device_flags_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22f28-0x22fbc (148 bytes).
  It occupies 148 bytes.
  The `lh` at 0x22f90 loads 2 bytes from ?.
  The `jal` at 0x22f34 calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22f40 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22f4c calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22f60 calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-48, a3=?.
  The `jal` at 0x22f70 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x22f8c calls hub_widget_flags_set with a0=?, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x22fa0 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The return at 0x22fb4 has v0 = ret(hub_widget_flags_set).
- `hubii_ixtt_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22fbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22fbc-0x23038 (124 bytes).
  It occupies 124 bytes.
  The `lh` at 0x22ffc loads 2 bytes from ?.
  The `ld` at 0x23008 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sd` at 0x23010 stores 8 bytes to ?.
  The `jal` at 0x22fc8 calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22fd0 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22fe4 calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-32, a3=?.
  The `jal` at 0x22ff0 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2301c calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=[a1]:8, a3=?, a4=0x6dfffffffe400000.
  The return at 0x23030 has v0 = 0x0.
- `hubii_ixtt_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23038 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23038-0x230b4 (124 bytes).
  It occupies 124 bytes.
  The `lh` at 0x23078 loads 2 bytes from ?.
  The `ld` at 0x23088 loads 8 bytes from ?.
  The `sd` at 0x2308c stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x23044 calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2304c calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x23060 calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+45112, a2=sp-32, a3=?.
  The `jal` at 0x2306c calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23098 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=0x6dfffffffe400000.
  The return at 0x230ac has v0 = 0x0.
- `hub_device_inquiry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x230b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x230b4-0x23268 (436 bytes).
  It occupies 436 bytes.
  The `lh` at 0x23130 loads 2 bytes from ?.
  The `ld` at 0x23148 loads 8 bytes from table(0x9200000001c00120) +0x0.
  The `ld` at 0x2314c loads 8 bytes from table(0x9200000001c00118) +0x0.
  The `ld` at 0x23150 loads 8 bytes from table(0x9200000001c00110) +0x0.
  The `jal` at 0x230d4 calls sprintf with a0=sp-96, a1=sym(.rodata)+45112, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0x230e4 calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-96, a2=sp-88, a3=?.
  The `jal` at 0x23100 calls device_master_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2311c calls hwgraph_info_get_LBL with a0=ret(device_master_get), a1=sym(.rodata)+45112, a2=sp-80, a3=?.
  The `jal` at 0x23164 calls cmn_err with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=entry(0x9200000001c00110), a4=entry(0x9200000001c00118), a5=entry(0x9200000001c00120).
  The `jal` at 0x23178 calls cmn_err with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=?.
  The `jal` at 0x231b0 calls cmn_err with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=?.
  The `jal` at 0x231f0 calls cmn_err with a0=0x6, a1=sym(.rodata)+45112, a2=?, a3=?.
  The `jal` at 0x23228 calls cmn_err with a0=0x6, a1=sym(.rodata)+45112, a2=sym(.rodata)+45112, a3=?.
  The `jal` at 0x23250 calls cmn_err with a0=0x6, a1=sym(.rodata)+45112, a2=sym(.rodata)+45112, a3=?.
  The `beq` branch at 0x230ec targets 0x23100, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0x2310c targets 0x230f4, is taken when v0(=ret(device_master_get)) == a2(=-0x1), and falls through when v0(=ret(device_master_get)) != a2(=-0x1).
  The `beq` branch at 0x23128 targets 0x230f4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x231a0 targets 0x231d4, is taken when (t8(?) & t9(?)) != 0, and falls through when (t8(?) & t9(?)) == 0.
  The `bne` branch at 0x231c4 targets 0x23194, is taken when s1(?) < 0x8 (signed), and falls through when s1(?) >= 0x8 (signed).
  The `beq` branch at 0x231cc targets 0x231e4 and is always taken.
  The `bne` branch at 0x231dc targets 0x23194, is taken when s1(?) < 0x8 (signed), and falls through when s1(?) >= 0x8 (signed).
  The `beq` branch at 0x23208 targets 0x2321c, is taken when (s1(?) & a2(?)) == 0, and falls through when (s1(?) & a2(?)) != 0.
  The `beq` branch at 0x23214 targets 0x23220 and is always taken.
  The `beq` branch at 0x23234 targets 0x23260, is taken when (s1(?) & s0(?)) == 0, and falls through when (s1(?) & s0(?)) != 0.
  The `beq` branch at 0x23258 targets 0x230f4 and is always taken.
  The `beq` branch at 0x23260 targets 0x23244 and is always taken.
  The return at 0x230f8 has v0 = one of ret(hwgraph_traverse), ret(device_master_get), ?, ret(cmn_err).
- `read_branch_diag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23270 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23270-0x2327c (12 bytes).
  It occupies 12 bytes.
  The return at 0x23274 has v0 = ?.
- `write_branch_diag` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2327c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2327c-0x23288 (12 bytes).
  It occupies 12 bytes.
  The return at 0x23280 has v0 = ?.
- `branch_prediction_off` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23288 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23288-0x232ac (36 bytes).
  It occupies 36 bytes.
  The return at 0x232a4 has v0 = ?.
- `branch_prediction_on` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x232ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x232ac-0x232c8 (28 bytes).
  It occupies 28 bytes.
  The return at 0x232c0 has v0 = ?.
- `branch_prediction_taken` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x232c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x232c8-0x232ec (36 bytes).
  It occupies 36 bytes.
  The return at 0x232e4 has v0 = ?.
- `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x232ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x232ec-0x23304 (24 bytes).
  It occupies 24 bytes.
  The return at 0x232fc has v0 = ?.
- `get_r10k_config` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2352c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2352c-0x23538 (12 bytes).
  It occupies 12 bytes.
  The return at 0x23530 has v0 = ?.
- `exception_endfast` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2381c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2381c-0x23868 (76 bytes).
  It occupies 76 bytes.
  The `sd` at 0x2381c stores 8 bytes to abs 0xffffffffffffc038.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x23860).
  The `beq` branch at 0x23858 targets 0x238b0, is taken when k0(?) == 0, and falls through when k0(?) != 0.
- `get_fpc_csr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x242a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x242a0-0x242c8 (40 bytes).
  It occupies 40 bytes.
  The return at 0x242c0 has v0 = ?.
- `set_fpc_csr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x242c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x242c8-0x242f8 (48 bytes).
  It occupies 48 bytes.
  The return at 0x242f0 has v0 = ?.
- `get_cpu_irr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x242f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x242f8-0x24304 (12 bytes).
  It occupies 12 bytes.
  The return at 0x242fc has v0 = ?.
- `reviderror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24338 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24338-0x24348 (16 bytes).
  It occupies 16 bytes.
  The return at 0x24340 has v0 = 0x0.
- `get_cpu_cnf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24348 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24348-0x24354 (12 bytes).
  It occupies 12 bytes.
  The return at 0x2434c has v0 = ?.
- `clear_sline` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24354 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24354-0x2436c (24 bytes).
  It occupies 24 bytes.
  The return at 0x24364 has v0 = ?.
- `dCacheSize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x243f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x243f4-0x24414 (32 bytes).
  It occupies 32 bytes.
  The return at 0x2440c has v0 = ?.
- `iCacheSize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24484 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24484-0x244a8 (36 bytes).
  It occupies 36 bytes.
  The return at 0x244a0 has v0 = ?.
- `sCacheSize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24530 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24530-0x24550 (32 bytes).
  It occupies 32 bytes.
  The return at 0x24548 has v0 = ?.
- `encode_str_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x249f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x249f8-0x24a74 (124 bytes).
  It occupies 124 bytes.
  The `lbu` at 0x24a10 loads 1 byte from ?.
  The `sb` at 0x24a20 stores 1 byte to ?.
  The `beq` branch at 0x249f8 targets 0x24a5c and is always taken.
  The `beq` branch at 0x24a24 targets 0x24a54, is taken when a3(?) >= 0xa (signed), and falls through when a3(?) < 0xa (signed).
  The `bne` branch at 0x24a44 targets 0x24a00, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x24a4c targets 0x24a04 and is always taken.
  The `beq` branch at 0x24a6c targets 0x24a30 and is always taken.
  The return at 0x24a54 has v0 = ?.
- `decode_str_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24a74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24a74-0x24af0 (124 bytes).
  It occupies 124 bytes.
  The `sb` at 0x24a8c stores 1 byte to ?.
  The `lbu` at 0x24ab4 loads 1 byte from ?.
  The `beq` branch at 0x24a74 targets 0x24ad8 and is always taken.
  The `beq` branch at 0x24a94 targets 0x24ad0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x24ac0 targets 0x24a7c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x24ac8 targets 0x24a80 and is always taken.
  The `beq` branch at 0x24ae8 targets 0x24aa0 and is always taken.
  The return at 0x24ad0 has v0 = ?.
- `module_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24af0-0x24b38 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x24b0c loads 8 bytes from ?.
  The `lh` at 0x24b10 loads 2 bytes from ?.
  The `blez` branch at 0x24af8 targets 0x24b2c, is taken when a4(=[sym(nummodules)]) <= 0 (signed), and falls through when a4(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x24b14 targets 0x24b30, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0x24b24 targets 0x24b0c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x24b30 has v0 = one of ?, 0x0.
- `cmoduleid_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24b38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24b38-0x24ba4 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x24b5c loads 8 bytes from ?.
  The `lh` at 0x24b68 loads 2 bytes from ?.
  The `blez` branch at 0x24b40 targets 0x24b94, is taken when a7(=[sym(nummodules)]) <= 0 (signed), and falls through when a7(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x24b6c targets 0x24b9c, is taken when t1(?) == a0, and falls through when t1(?) != a0.
  The `blez` branch at 0x24b74 targets 0x24b64, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `bne` branch at 0x24b8c targets 0x24b54, is taken when v0(?) < a7(=[sym(nummodules)]) (signed), and falls through when v0(?) >= a7(=[sym(nummodules)]) (signed).
  The return at 0x24b94 has v0 = -0x1.
  The return at 0x24b9c has v0 = ?.
- `cnodemodule_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24ba4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24ba4-0x24c10 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x24bc8 loads 8 bytes from ?.
  The `lh` at 0x24bd8 loads 2 bytes from ?.
  The `blez` branch at 0x24bac targets 0x24c00, is taken when a7(=[sym(nummodules)]) <= 0 (signed), and falls through when a7(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x24bdc targets 0x24c08, is taken when v1(?) == a0, and falls through when v1(?) != a0.
  The `blez` branch at 0x24be4 targets 0x24bd4, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `bne` branch at 0x24bf8 targets 0x24bc0, is taken when a4(?) < a7(=[sym(nummodules)]) (signed), and falls through when a4(?) >= a7(=[sym(nummodules)]) (signed).
  The return at 0x24c00 has v0 = 0x0.
  The return at 0x24c08 has v0 = ?.
- `module_add_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24c10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24c10-0x24d60 (336 bytes).
  It occupies 336 bytes.
  The `sh` at 0x24c58 stores 2 bytes to ret(kmem_zalloc_node) +0x0.
  The `lh` at 0x24c90 loads 2 bytes from (sym(compact_to_nasid_node) + (a1 + a1)) +0x0.
  The `ld` at 0x24cbc loads 8 bytes from (sym(modules) + ([sym(nummodules)] << 0x3)) -0x8.
  The `lh` at 0x24cc0 loads 2 bytes from [(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8 +0x0.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x24cd4, `sd` at 0x24cf8.
  The `ld` at 0x24ce0 loads 8 bytes from ?.
  The `lh` at 0x24ce4 loads 2 bytes from ?.
  The `lw` at 0x24d04 loads 4 bytes from ?.
  The `sw` at 0x24d10 stores 4 bytes to ?.
  The `sh` at 0x24d28 stores 2 bytes to ?.
  The `jal` at 0x24c28 calls module_lookup with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x24c40 calls kmem_zalloc_node with a0=0xa00, a1=0x1, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x24c5c calls spinlock_init with a0=ret(kmem_zalloc_node)+4, a1=sym(.rodata)+45504, a2=?, a3=?.
  The `jal` at 0x24c74 calls init_sema with a0=ret(kmem_zalloc_node)+24, a1=0x0, a2=sym(.rodata)+45504, a3=-0x1.
  The `jal` at 0x24c8c calls elsc_init with a0=ret(kmem_zalloc_node)+40, a1=[(sym(compact_to_nasid_node) + (a1 + a1))]:2, a2=(a1 + a1), a3=?.
  The `jal` at 0x24c9c calls spinlock_init with a0=ret(kmem_zalloc_node)+2424, a1=sym(.rodata)+45504, a2=?, a3=?.
  The `jal` at 0x24d50 calls assfail with a0=sym(.rodata)+45504, a1=sym(.rodata)+45504, a2=0xad, a3=?.
  The `bne` branch at 0x24c30 targets 0x24d04, is taken when v0(=ret(module_lookup)) != 0, and falls through when v0(=ret(module_lookup)) == 0.
  The `beq` branch at 0x24c48 targets 0x24d44, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `blez` branch at 0x24cb4 targets 0x24cf8, is taken when a2(=[sym(nummodules)]) <= 0 (signed), and falls through when a2(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x24cc8 targets 0x24cf8, is taken when s0(=a0) >= a7(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed), and falls through when s0(=a0) < a7(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed).
  The `blez` branch at 0x24cd8 targets 0x24d38, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `bne` branch at 0x24cf0 targets 0x24cd0, is taken when s0(=a0) < a3(?) (signed), and falls through when s0(=a0) >= a3(?) (signed).
  The `beq` branch at 0x24d3c targets 0x24cf8 and is always taken.
  The `beq` branch at 0x24d58 targets 0x24c54 and is always taken.
  The return at 0x24d30 has v0 = one of ret(module_lookup), ret(kmem_zalloc_node).
- `module_probe_snum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24d60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24d60-0x24f5c (508 bytes).
  It occupies 508 bytes.
  The `ld` at 0x24d78 loads 8 bytes from (a1 << 0x21) -0x6fffffffcc000000.
  2 such `ld` accesses load 8 bytes from ((a1 << 0x21)+0x9600000000000000 | 0x2000) +0x48, including `ld` at 0x24dac, `ld` at 0x24e60.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x24dbc, `lw` at 0x24e6c.
  2 such `lbu` accesses load 1 byte from ret(find_lboard) +0x9, including `lbu` at 0x24de0, `lbu` at 0x24e90.
  The `sw` at 0x24e30 stores 4 bytes to a0 (arg0 at entry) +0x9e0.
  The `ld` at 0x24e3c loads 8 bytes from ?.
  The `lbu` at 0x24eb8 loads 1 byte from ret(find_lboard) +0x17.
  The `lw` at 0x24ed4 loads 4 bytes from (ret(find_lboard) + ([ret(find_lboard)+23]:1 << 0x2)) +0x24.
  The `lbu` at 0x24ef8 loads 1 byte from ?.
  The `sw` at 0x24f14 stores 4 bytes to a0 (arg0 at entry) +0x9f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9f8, including `lw` at 0x24f20, `lw` at 0x24f40.
  The `jal` at 0x24dd0 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x24e10 calls board_serial_number_get with a0=ret(find_lboard), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x24e24 calls encode_str_serial with a0=sp-64, a1=a0+2512, a2=?, a3=?.
  The `jal` at 0x24e80 calls find_lboard with a0=?, a1=0x42, a2=?, a3=?.
  The `jal` at 0x24ea8 calls chk_for_pebrick with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xc000.
  The `jal` at 0x24f08 calls bcopy with a0=?, a1=a0+2540, a2=0xa, a3=?, a7=0xffffffffff.
  The `jal` at 0x24f44 calls chk_for_pebrick with a0=a1 at entry (arg1), a1=0xffffffffff, a2=?, a3=?, a4=((a1 << 0x21)+0x9600000000000000 | 0x2000), a5=(a1 << 0x21)+0x9600000000000000.
  The `beq` branch at 0x24d90 targets 0x24ea8, is taken when a6(=0xc000) == at(?), and falls through when a6(=0xc000) != at(?).
  The `beq` branch at 0x24dc0 targets 0x24e08, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x24dd8 targets 0x24df0, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x24de8 targets 0x24e10, is taken when (a1(=[ret(find_lboard)+9]:1) & 0x4) == 0, and falls through when (a1(=[ret(find_lboard)+9]:1) & 0x4) != 0.
  The `beq` branch at 0x24e08 targets 0x24dd0 and is always taken.
  The `beq` branch at 0x24e1c targets 0x24e34, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x24e58 targets 0x24f44, is taken when a4(=0xc000) == a6(?), and falls through when a4(=0xc000) != a6(?).
  The `beq` branch at 0x24e74 targets 0x24f34, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x24e88 targets 0x24ea0, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x24e98 targets 0x24eb8, is taken when (a2(=[ret(find_lboard)+9]:1) & 0x4) == 0, and falls through when (a2(=[ret(find_lboard)+9]:1) & 0x4) != 0.
  The `beq` branch at 0x24ea0 targets 0x24df4 and is always taken.
  The `beq` branch at 0x24eb0 targets 0x24dd0 and is always taken.
  The `beq` branch at 0x24ef0 targets 0x24f20, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x24efc targets 0x24f3c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x24f18 targets 0x24f2c and is always taken.
  The `beq` branch at 0x24f24 targets 0x24f54, is taken when v0(=[a0+2552]) == 0, and falls through when v0(=[a0+2552]) != 0.
  The `beq` branch at 0x24f2c targets 0x24df4 and is always taken.
  The `beq` branch at 0x24f34 targets 0x24e80 and is always taken.
  The `beq` branch at 0x24f3c targets 0x24f24 and is always taken.
  The `beq` branch at 0x24f4c targets 0x24e80 and is always taken.
  The `beq` branch at 0x24f54 targets 0x24df4 and is always taken.
  The return at 0x24e00 has v0 = one of 0x0, 0x1.
- `module_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24f5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24f5c-0x250c0 (356 bytes).
  It occupies 356 bytes.
  The `lh` at 0x24fc0 loads 2 bytes from ret(find_lboard) +0xe.
  The `lw` at 0x24fcc loads 4 bytes from ret(module_add_node) +0x9e0.
  The `lh` at 0x24ff8 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x25004, `ld` at 0x2501c.
  The `lw` at 0x25028 loads 4 bytes from ?.
  The `lh` at 0x250bc loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0x24fb8 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x24fc4 calls module_add_node with a0=[ret(find_lboard)+14]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x25070 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25080 calls module_probe_snum with a0=ret(module_add_node), a1=?, a2=?, a3=?.
  The `jal` at 0x250a0 calls cmn_err with a0=0x4, a1=sym(.rodata)+45504, a2=?, a3=?.
  The `blez` branch at 0x24f94 targets 0x25098, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `beq` branch at 0x24fac targets 0x250b0 and is always taken.
  The `beq` branch at 0x24fd0 targets 0x25080, is taken when v1(=[ret(module_add_node)+2528]) == 0, and falls through when v1(=[ret(module_add_node)+2528]) != 0.
  The `beq` branch at 0x24ff0 targets 0x25040, is taken when s0(?) >= a0(=[sym(numnodes)]) (signed), and falls through when s0(?) < a0(=[sym(numnodes)]) (signed).
  The `beq` branch at 0x25014 targets 0x25070, is taken when s3(=0xc000) == t8(?), and falls through when s3(=0xc000) != t8(?).
  The `bne` branch at 0x25030 targets 0x24fb4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x25038 targets 0x24fb8 and is always taken.
  The `beq` branch at 0x25040 targets 0x25098, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x25078 targets 0x24fb8 and is always taken.
  The `beq` branch at 0x25088 targets 0x24fd8, is taken when v0(=ret(module_probe_snum)) == 0, and falls through when v0(=ret(module_probe_snum)) != 0.
  The `beq` branch at 0x25090 targets 0x24fd8 and is always taken.
  The `beq` branch at 0x250a8 targets 0x25048 and is always taken.
  The `beq` branch at 0x250b8 targets 0x24ffc and is always taken.
  The return at 0x25068 has v0 = one of ?, ret(cmn_err).
- `get_elsc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x250c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x250c0-0x250ec (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x250c0 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x250c4 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0x250c8 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x250d4 loads 8 bytes from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0.
  The `ld` at 0x250e0 loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8620.
  The return at 0x250e4 has v0 = [[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34336]:8+40.
- `get_kmod_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x250ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x250ec-0x251e4 (248 bytes).
  It occupies 248 bytes.
  2 such `ld` accesses load 8 bytes from (sym(modules) + (a0 << 0x3)) +0x0, including `ld` at 0x25118, `ld` at 0x25130.
  The `lw` at 0x2511c loads 4 bytes from [(sym(modules) + (a0 << 0x3))]:8 +0x9e0.
  The `lh` at 0x25128 loads 2 bytes from [(sym(modules) + (a0 << 0x3))]:8 +0x0.
  The `sw` at 0x2512c stores 4 bytes to a1 (arg1 at entry) +0x8.
  3 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x25170, `sd` at 0x25194, `sd` at 0x251ac.
  The `ld` at 0x2518c loads 8 bytes from a1 (arg1 at entry) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x25198, `lbu` at 0x251b0, `lbu` at 0x251c0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x251bc, `sb` at 0x251d8.
  The `jal` at 0x25138 calls decode_str_serial with a0=[(sym(modules) + (a0 << 0x3))]:8+2512, a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=(sym(modules) + (a0 << 0x3)), a5=[(sym(modules) + (a0 << 0x3))]:8, a7=[[(sym(modules) + (a0 << 0x3))]:8+2528].
  The `bltz` branch at 0x250f8 targets 0x25160, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x2510c targets 0x25160, is taken when a0 >= a6(=[sym(nummodules)]) (signed), and falls through when a0 < a6(=[sym(nummodules)]) (signed).
  The `beq` branch at 0x25120 targets 0x25168, is taken when a7(=[[(sym(modules) + (a0 << 0x3))]:8+2528]) == 0, and falls through when a7(=[[(sym(modules) + (a0 << 0x3))]:8+2528]) != 0.
  The `beq` branch at 0x2514c targets 0x25170, is taken when a2(?) == a3(=0x4b), and falls through when a2(?) != a3(=0x4b).
  The `beq` branch at 0x25160 targets 0x25154 and is always taken.
  The `beq` branch at 0x25168 targets 0x25158 and is always taken.
  The `beq` branch at 0x25180 targets 0x251dc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x251b8 targets 0x251cc, is taken when a0(?) >= 0xa (signed), and falls through when a0(?) < 0xa (signed).
  The `bne` branch at 0x251c4 targets 0x2518c, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x251d4 targets 0x25154 and is always taken.
  The `beq` branch at 0x251dc targets 0x251cc and is always taken.
  The return at 0x25158 has v0 = one of 0x0, 0x6, 0x16.
- `get_kmod_sys_snum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x251e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x251e4-0x252dc (248 bytes).
  It occupies 248 bytes.
  The `ld` at 0x2521c loads 8 bytes from (sym(modules) + (a0 << 0x3)) +0x0.
  The `lw` at 0x25220 loads 4 bytes from [(sym(modules) + (a0 << 0x3))]:8 +0x9f8.
  The `lbu` at 0x25228 loads 1 byte from sym(.bss) +0xa7a0.
  The `ld` at 0x25230 loads 8 bytes from abs 0x9000000014000000.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2526c, `lbu` at 0x25288.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x25270, `sb` at 0x25290.
  2 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x0, including `sb` at 0x252b4, `sb` at 0x252bc.
  The `jal` at 0x25244 calls decode_str_serial with a0=[(sym(modules) + (a0 << 0x3))]:8+2540, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[(sym(modules) + (a0 << 0x3))]:8, a5=0x9000000014000000, a7=0x4000.
  The `jal` at 0x252c0 calls get_elsc with a0=[sym(.bss)+42912]:1, a1=(a0 << 0x3), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[(sym(modules) + (a0 << 0x3))]:8, a5=0x9000000014000000, a7=0x4000.
  The `jal` at 0x252cc calls iobrick_get_sys_snum with a0=ret(get_elsc), a1=sym(modules), a2=?, a3=?.
  The `bltz` branch at 0x251fc targets 0x252ac, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x2520c targets 0x252ac, is taken when a0 >= v0(=[sym(nummodules)]) (signed), and falls through when a0 < v0(=[sym(nummodules)]) (signed).
  The `beq` branch at 0x25224 targets 0x252b8, is taken when v1(=[[(sym(modules) + (a0 << 0x3))]:8+2552]) == 0, and falls through when v1(=[[(sym(modules) + (a0 << 0x3))]:8+2552]) != 0.
  The `beq` branch at 0x25238 targets 0x25254, is taken when a6(?) == a7(=0x4000), and falls through when a6(?) != a7(=0x4000).
  The `beq` branch at 0x2524c targets 0x25298 and is always taken.
  The `beq` branch at 0x25254 targets 0x252c0, is taken when a0(=[sym(.bss)+42912]:1) == 0, and falls through when a0(=[sym(.bss)+42912]:1) != 0.
  The `beq` branch at 0x25274 targets 0x25294, is taken when v0(?) >= 0xc (signed), and falls through when v0(?) < 0xc (signed).
  The `bne` branch at 0x2528c targets 0x2525c, is taken when v0(?) < 0xc (signed), and falls through when v0(?) >= 0xc (signed).
  The `beq` branch at 0x252b0 targets 0x25298 and is always taken.
  The `beq` branch at 0x252b8 targets 0x25298 and is always taken.
  The `beq` branch at 0x252d4 targets 0x2525c and is always taken.
  The return at 0x252a4 has v0 = one of 0x0, 0x6, 0x16.
- `dcache_wb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x252e0 has v0 = ?.
- `dcache_wbinval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x252e0 has v0 = ?.
- `dki_dcache_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x252e0 has v0 = ?.
- `dki_dcache_wb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x252e0 has v0 = ?.
- `dki_dcache_wbinval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x252e0 has v0 = ?.
- `dummy_func` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x252e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x252e0-0x252e8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x252e0 has v0 = ?.
- `mapped_kernel_setup_tlb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x253b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x253b8-0x25460 (168 bytes).
  It occupies 168 bytes.
  The return at 0x25450 has v0 = ?.
  The instructions from 0x25458 to 0x2545c are not reached by any path from the entry, and their branches are not listed.
- `VEC_trap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x256d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x256d0-0x25704 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x256ec calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x256fc).
- `soft_trap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x256d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x256d0-0x25710 (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0x256ec calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x256fc).
  The instructions from 0x25704 to 0x2570c are not reached by any path from the entry, and their branches are not listed.
- `uli_getasids` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25710 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25710-0x2571c (12 bytes).
  It occupies 12 bytes.
  The return at 0x25714 has v0 = ?.
- `uli_setasids` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2571c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2571c-0x25728 (12 bytes).
  It occupies 12 bytes.
  The return at 0x25720 has v0 = ?.
- `uli_eret` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25728 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25728-0x25754 (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x25728 loads 8 bytes from a0 (arg0 at entry) +0xa0.
  The `ld` at 0x25730 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x25738 loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `ld` at 0x25740 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `ld` at 0x2574c loads 8 bytes from a0 (arg0 at entry) +0x80.
- `add_sidcache` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25754 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25754-0x25888 (308 bytes).
  It occupies 308 bytes.
  The `ld` at 0x25778 loads 8 bytes from (sym(pdaindr) + ([sym(master_procid)]:2 << 0x4)) +0x8.
  The `lw` at 0x25784 loads 4 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x6ac.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x257c4, `lw` at 0x257d4, `lw` at 0x2583c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x257d0, `ld` at 0x25828.
  The `lh` at 0x2582c loads 2 bytes from ?.
  The `jal` at 0x257ac calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25810 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25840 calls add_to_inventory with a0=0x3, a1=0x8, a2=?, a3=0x0.
  The `jal` at 0x25878 calls add_to_inventory with a0=0x3, a1=0x8, a2=0x0, a3=-0x1, a4=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1708].
  The `blez` branch at 0x25780 targets 0x25868, is taken when at(=[sym(maxcpus)]) <= 0 (signed), and falls through when at(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x2578c targets 0x257ac and is always taken.
  The `beq` branch at 0x257a0 targets 0x257e4, is taken when s0(?) >= a1(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x257b4 targets 0x25798, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x257c8 targets 0x25794, is taken when a2(?) != s0(?), and falls through when a2(?) == s0(?).
  The `beq` branch at 0x257d8 targets 0x25794, is taken when a2(?) == s2(=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1708]), and falls through when a2(?) != s2(=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1708]).
  The `beq` branch at 0x257e4 targets 0x25868, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `blez` branch at 0x257ec targets 0x25854, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x257f4 targets 0x25810 and is always taken.
  The `beq` branch at 0x25808 targets 0x25850, is taken when s0(?) >= a4(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a4(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x25818 targets 0x25800, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x25830 targets 0x257fc, is taken when a2(?) != s0(?), and falls through when a2(?) == s0(?).
  The `beq` branch at 0x25848 targets 0x25800 and is always taken.
  The `beq` branch at 0x25880 targets 0x25854 and is always taken.
  The return at 0x25860 has v0 = one of ret(cpu_enabled), ?, ret(add_to_inventory).
- `get_cpu_freq` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25888 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25888-0x258cc (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0x25890 loads 4 bytes from a0 (arg0 at entry) +0x73c.
  The `lw` at 0x258b8 loads 4 bytes from ?.
  The `jal` at 0x258a0 calls hwgraph_info_get_LBL with a0=[a0+1852], a1=sym(.rodata)+45648, a2=sp-32, a3=a3 at entry (arg3).
  The `beq` branch at 0x258b0 targets 0x258c4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x258c4 targets 0x258bc and is always taken.
  The return at 0x258bc has v0 = one of ?, a1.
- `sn_mp_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25d8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25d8c-0x25eb4 (296 bytes).
  It occupies 296 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x25dc8, `ld` at 0x25e4c.
  The `lh` at 0x25dd8 loads 2 bytes from ?.
  The `ld` at 0x25e24 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `jal` at 0x25dc4 calls init_platform_nodepda with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25dd4 calls intr_clear_all with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x25e20 calls init_platform_pda with a0=[table(sym(pdaindr))+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x25e78 calls module_init with a0=?, a1=[sym(maxcpus)], a2=?, a3=?.
  The `jal` at 0x25e90 calls klhwg_add_all_modules with a0=[sym(hwgraph_root)], a1=?, a2=?, a3=?.
  The `jal` at 0x25e98 calls klhwg_add_all_nodes with a0=[sym(hwgraph_root)], a1=?, a2=?, a3=?.
  The `jal` at 0x25ea0 calls full_nodemask_init with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x25dac targets 0x25df8, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0x25df0 targets 0x25dbc, is taken when s0(?) < a1(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= a1(=[sym(maxnodes)]) (signed).
  The `blez` branch at 0x25e08 targets 0x25e78, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x25e10 targets 0x25e44 and is always taken.
  The `beq` branch at 0x25e3c targets 0x25e78, is taken when s0(?) >= a1(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  The `bne` branch at 0x25e58 targets 0x25e18, is taken when (t8(?) & t9(?)) != 0, and falls through when (t8(?) & t9(?)) == 0.
  The `bne` branch at 0x25e70 targets 0x25e44, is taken when s0(?) < a1(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a1(=[sym(maxcpus)]) (signed).
  The return at 0x25eac has v0 = ret(full_nodemask_init).
- `is_prom_downrev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x25eb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x25eb4-0x25ebc (8 bytes).
  It occupies 8 bytes.
  The return at 0x25eb4 has v0 = 0x0.
- `cpu_io_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2656c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2656c-0x26648 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x265c0 loads 4 bytes from table(sym(bdevsw)) +0x8.
  2 such `lh` accesses load 2 bytes from [sym(masterpda)]:8 +0x428, including `lh` at 0x265cc, `lh` at 0x26624.
  The `sw` at 0x265d4 stores 4 bytes to table(sym(bdevsw)) +0x8.
  The `lw` at 0x26618 loads 4 bytes from table(sym(cdevsw)) +0x8.
  The `sw` at 0x2662c stores 4 bytes to table(sym(cdevsw)) +0x8.
  The `jal` at 0x265bc calls cpu_isvalid with a0=[table(sym(bdevsw))+8], a1=?, a2=?, a3=?.
  The `jal` at 0x26614 calls cpu_isvalid with a0=[table(sym(cdevsw))+8], a1=?, a2=?, a3=?.
  The `blez` branch at 0x26584 targets 0x265d8, is taken when a1(=[sym(bdevcnt)]) <= 0 (signed), and falls through when a1(=[sym(bdevcnt)]) > 0 (signed).
  The `beq` branch at 0x26590 targets 0x265a4 and is always taken.
  The `bltz` branch at 0x2659c targets 0x265d8, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bne` branch at 0x265c4 targets 0x26598, is taken when v0(=ret(cpu_isvalid)) != 0, and falls through when v0(=ret(cpu_isvalid)) == 0.
  The `beq` branch at 0x265d0 targets 0x26598 and is always taken.
  The `blez` branch at 0x265e0 targets 0x26630, is taken when a1(=[sym(cdevcnt)]) <= 0 (signed), and falls through when a1(=[sym(cdevcnt)]) > 0 (signed).
  The `beq` branch at 0x265e8 targets 0x265fc and is always taken.
  The `bltz` branch at 0x265f4 targets 0x26630, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bne` branch at 0x2661c targets 0x265f0, is taken when v0(=ret(cpu_isvalid)) != 0, and falls through when v0(=ret(cpu_isvalid)) == 0.
  The `beq` branch at 0x26628 targets 0x265f0 and is always taken.
  The return at 0x26640 has v0 = one of ?, ret(cpu_isvalid).
- `install_cpu_nmi_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26648 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26648-0x26708 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x26680 loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xa8.
  The `ld` at 0x266a4 loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0x88.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x266d8, `sd` at 0x266f0, `sd` at 0x266f4.
  The `ld` at 0x266e4 loads 8 bytes from ?.
  The `jal` at 0x26654 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2665c calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26664 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x266d0 targets 0x266e4, is taken when a6(=[sym(dbgmon_nmiprom)]) == 0, and falls through when a6(=[sym(dbgmon_nmiprom)]) != 0.
  The `bne` branch at 0x266e8 targets 0x266dc, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x26700 targets 0x266dc and is always taken.
  The return at 0x266dc has v0 = sym(nmi_dump).
- `nmi_cpu_eframe_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26708 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26708-0x26798 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0x2675c loads 4 bytes from ?.
  The `ld` at 0x26774 loads 8 bytes from ?.
  The `sd` at 0x26778 stores 8 bytes to ?.
  The `beq` branch at 0x26768 targets 0x2677c, is taken when a3(?) == a7(=-0x1), and falls through when a3(?) != a7(=-0x1).
  The `bne` branch at 0x26788 targets 0x2675c, is taken when a4(?) < 0x27 (signed), and falls through when a4(?) >= 0x27 (signed).
  The return at 0x26790 has v0 = ?.
- `nmi_node_eframe_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26798 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26798-0x26848 (176 bytes).
  It occupies 176 bytes.
  The `lh` at 0x267cc loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x267d8, `ld` at 0x26804.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x267dc, `ld` at 0x26808.
  2 such `ld` accesses load 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0, including `ld` at 0x267e4, `ld` at 0x26810.
  2 such `lhu` accesses load 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598, including `lhu` at 0x267ec, `lhu` at 0x26818.
  The `jal` at 0x267fc calls nmi_cpu_eframe_save with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=?, a2=?, a3=?.
  The `beq` branch at 0x267c0 targets 0x2682c, is taken when a0 == a4(=-0x1), and falls through when a0 != a4(=-0x1).
  The `beq` branch at 0x267d0 targets 0x2682c, is taken when s2(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) == a4(=-0x1), and falls through when s2(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) != a4(=-0x1).
  The `blez` branch at 0x267f0 targets 0x2682c, is taken when t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) <= 0 (signed), and falls through when t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) > 0 (signed).
  The `bne` branch at 0x26824 targets 0x267fc, is taken when s0(?) < t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed), and falls through when s0(?) >= t9(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  The return at 0x26840 has v0 = one of ?, ret(nmi_cpu_eframe_save).
- `nmi_eframes_save` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26848 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26848-0x26894 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x26860 calls nmi_node_eframe_save with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x26854 targets 0x26884, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `bne` branch at 0x2687c targets 0x26860, is taken when s0(?) < v0(=[sym(numnodes)]) (signed), and falls through when s0(?) >= v0(=[sym(numnodes)]) (signed).
  The return at 0x2688c has v0 = ?.
- `adjust_nmi_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x26b04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x26b04-0x26ea4 (928 bytes).
  It occupies 928 bytes.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x26b40, `lh` at 0x26b5c, `lh` at 0x26c2c.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x26b68, `ld` at 0x26bd4, `ld` at 0x26c54.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x26b74, `lbu` at 0x26c60.
  The `ld` at 0x26b7c loads 8 bytes from (table(0x9600000000000000) | 0x2000) +0xa8.
  The `ld` at 0x26ba0 loads 8 bytes from (table(0x9600000000000000) | 0x2000) +0x88.
  11 such `sd` accesses store 8 bytes to ?, including `sd` at 0x26bf4, `sd` at 0x26c04, `sd` at 0x26d4c.
  2 such `ld` accesses load 8 bytes from table(0x9200000001fc0000) +0x0, including `ld` at 0x26ca0, `ld` at 0x26da4.
  The `jal` at 0x26b10 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x26b24 calls getcpuid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26c84 calls is_fine_dirmode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26d64 calls qprintf with a0=sym(.rodata)+45664, a1=?, a2=?, a3=?.
  The `jal` at 0x26d80 calls is_fine_dirmode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x26e84 calls qprintf with a0=sym(.rodata)+45664, a1=sym(cpuid_to_compact_node), a2=?, a3=?, a4=sym(nmi_dump), a5=sym(compact_to_nasid_node).
  The `jal` at 0x26e94 calls qprintf with a0=sym(.rodata)+45664, a1=sym(cpuid_to_compact_node), a2=?, a3=?, a4=sym(nmi_dump), a5=sym(compact_to_nasid_node).
  The `bne` branch at 0x26bcc targets 0x26bdc, is taken when at(=[sym(.sdata)+288]:8) != 0, and falls through when at(=[sym(.sdata)+288]:8) == 0.
  The `bltz` branch at 0x26bdc targets 0x26e74, is taken when s0(=a0) < 0 (signed), and falls through when s0(=a0) >= 0 (signed).
  The `blez` branch at 0x26be4 targets 0x26e44, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x26bec targets 0x26c24 and is always taken.
  The `bne` branch at 0x26c00 targets 0x26d80, is taken when s4(?) != s3(?), and falls through when s4(?) == s3(?).
  The `beq` branch at 0x26c1c targets 0x26e44, is taken when s0(?) >= ra(=[sym(maxcpus)]) (signed), and falls through when s0(?) < ra(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x26ccc targets 0x26e04, is taken when 0 >= t9(?) (unsigned), and falls through when 0 < t9(?) (unsigned).
  The `beq` branch at 0x26cd4 targets 0x26e14, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x26ce8 targets 0x26e20, is taken when (a5(?) & 0x20) == 0, and falls through when (a5(?) & 0x20) != 0.
  The `beq` branch at 0x26d70 targets 0x26bf4, is taken when v0(=[sym(.sdata)+288]:8) == s5(?), and falls through when v0(=[sym(.sdata)+288]:8) != s5(?).
  The `beq` branch at 0x26d78 targets 0x26bfc and is always taken.
  The `beq` branch at 0x26ddc targets 0x26e28, is taken when 0 >= a3(?) (unsigned), and falls through when 0 < a3(?) (unsigned).
  The `beq` branch at 0x26dfc targets 0x26c08 and is always taken.
  The `beq` branch at 0x26e04 targets 0x26e38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x26e0c targets 0x26cfc and is always taken.
  The `beq` branch at 0x26e18 targets 0x26ce4 and is always taken.
  The `beq` branch at 0x26e20 targets 0x26cf8 and is always taken.
  The `beq` branch at 0x26e30 targets 0x26dec and is always taken.
  The `beq` branch at 0x26e3c targets 0x26cf8 and is always taken.
  The `bne` branch at 0x26e78 targets 0x26e94, is taken when a3(?) != a4(=sym(nmi_dump)), and falls through when a3(?) == a4(=sym(nmi_dump)).
  The `beq` branch at 0x26e8c targets 0x26e48 and is always taken.
  The `beq` branch at 0x26e9c targets 0x26e48 and is always taken.
  The return at 0x26e6c has v0 = one of ?, ret(qprintf).
- `atomicAddInt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299b0-0x299cc (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0x299b0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x299b8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x299bc targets 0x299b0, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0.
  The return at 0x299c4 has v0 = ([a0] + a1).
- `atomicAddUint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299b0-0x299cc (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0x299b0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x299b8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x299bc targets 0x299b0, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0.
  The return at 0x299c4 has v0 = ([a0] + a1).
- `atomicAddIntHot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299cc-0x299ec (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x299cc, `sb` at 0x299e0.
  The `ll` at 0x299d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x299d8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x299dc targets 0x299d0, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0.
  The return at 0x299e4 has v0 = ([a0] + a1).
- `atomicAddUintHot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x299cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x299cc-0x299ec (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x299cc, `sb` at 0x299e0.
  The `ll` at 0x299d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x299d8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x299dc targets 0x299d0, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0.
  The return at 0x299e4 has v0 = ([a0] + a1).
- `atomicClearInt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a0c-0x29a2c (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x29a10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x29a18 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a1c targets 0x29a10, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0.
  The return at 0x29a24 has v0 = [a0].
- `atomicClearUint` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a0c-0x29a2c (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x29a10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x29a18 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a1c targets 0x29a10, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0.
  The return at 0x29a24 has v0 = [a0].
- `bitlock_release_32bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a0c-0x29a2c (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x29a10 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x29a18 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a1c targets 0x29a10, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0.
  The return at 0x29a24 has v0 = [a0].
- `atomicClearInt64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x29a30 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29a38 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a3c targets 0x29a30, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  The return at 0x29a44 has v0 = [a0]:8.
- `atomicClearLong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x29a30 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29a38 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a3c targets 0x29a30, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  The return at 0x29a44 has v0 = [a0]:8.
- `atomicClearUint64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x29a30 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29a38 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a3c targets 0x29a30, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  The return at 0x29a44 has v0 = [a0]:8.
- `atomicClearUlong` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x29a30 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29a38 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a3c targets 0x29a30, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  The return at 0x29a44 has v0 = [a0]:8.
- `bitlock_release` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29a2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29a2c-0x29a4c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x29a30 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29a38 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29a3c targets 0x29a30, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0.
  The return at 0x29a44 has v0 = [a0]:8.
- `atomicAddInt64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ab8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ab8-0x29ad4 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29ab8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29ac0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29ac4 targets 0x29ab8, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0.
  The return at 0x29acc has v0 = ([a0]:8 + a1).
- `atomicAddUint64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ab8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ab8-0x29ad4 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29ab8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29ac0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29ac4 targets 0x29ab8, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0.
  The return at 0x29acc has v0 = ([a0]:8 + a1).
- `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ad4-0x29af4 (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x29ad4, `sb` at 0x29ae8.
  The `lld` at 0x29ad8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29ae0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29ae4 targets 0x29ad8, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0.
  The return at 0x29aec has v0 = ([a0]:8 + a1).
- `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ad4-0x29af4 (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x29ad4, `sb` at 0x29ae8.
  The `lld` at 0x29ad8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29ae0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29ae4 targets 0x29ad8, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0.
  The return at 0x29aec has v0 = ([a0]:8 + a1).
- `test_and_set_int64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29d20-0x29d3c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29d20 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29d28 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29d2c targets 0x29d20, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The return at 0x29d34 has v0 = [a0]:8.
- `test_and_set_long` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29d20-0x29d3c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29d20 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29d28 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29d2c targets 0x29d20, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The return at 0x29d34 has v0 = [a0]:8.
- `test_and_set_ptr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29d20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29d20-0x29d3c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29d20 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29d28 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29d2c targets 0x29d20, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0.
  The return at 0x29d34 has v0 = [a0]:8.
- `swap_int64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e08-0x29e24 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29e08 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29e10 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29e14 targets 0x29e08, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The return at 0x29e1c has v0 = [a0]:8.
- `swap_long` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e08-0x29e24 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29e08 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29e10 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29e14 targets 0x29e08, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The return at 0x29e1c has v0 = [a0]:8.
- `swap_ptr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e08-0x29e24 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x29e08 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29e10 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x29e14 targets 0x29e08, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The return at 0x29e1c has v0 = [a0]:8.
- `compare_and_swap_int64` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  It occupies 40 bytes.
  The `lld` at 0x29e24 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29e30 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x29e28 targets 0x29e44, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beq` branch at 0x29e34 targets 0x29e24, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The return at 0x29e3c has v0 = a2.
  The return at 0x29e44 has v0 = 0x0.
- `compare_and_swap_kt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  It occupies 40 bytes.
  The `lld` at 0x29e24 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29e30 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x29e28 targets 0x29e44, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beq` branch at 0x29e34 targets 0x29e24, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The return at 0x29e3c has v0 = a2.
  The return at 0x29e44 has v0 = 0x0.
- `compare_and_swap_long` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  It occupies 40 bytes.
  The `lld` at 0x29e24 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29e30 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x29e28 targets 0x29e44, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beq` branch at 0x29e34 targets 0x29e24, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The return at 0x29e3c has v0 = a2.
  The return at 0x29e44 has v0 = 0x0.
