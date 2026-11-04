# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These facts describe software behavior in the named build. They do not establish hardware behavior.

Routines with an exact binary/member/routine entry already documented were skipped:
`odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`,
`usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`,
`odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`,
`usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`,
`odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, `usb_comp_update_tiles` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, `odsy_usb_comp_readwrite_register` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, `usb_comp_readwrite_register` in
`usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)`, `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o`,
`cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o`, `_endexceptnorm_prolog` in
`usr/cpu/sysgen/IP30boot/kernel.o`, `_exceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o`,
`_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o`, `eutlbmiss_prolog_up` in
`usr/cpu/sysgen/IP30boot/kernel.o`, `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o`,
`eutlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o`, `elpg_utlbmiss` in
`usr/cpu/sysgen/IP30boot/kernel.o`, `eutlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o`, `utlbmiss_sharedseg1a`
in `usr/cpu/sysgen/IP30boot/kernel.o`, `eutlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o`, `_dummy_proc` in
`usr/cpu/sysgen/IP30boot/kernel.o`, `first_address` in `usr/cpu/sysgen/IP30boot/kernel.o`, `_get_count` in
`usr/cpu/sysgen/IP30boot/kernel.o`, `get_r4k_counter` in `usr/cpu/sysgen/IP30boot/kernel.o`, `getrand` in
`usr/cpu/sysgen/IP35boot/kernel.o`, `tlbgetrand` in `usr/cpu/sysgen/IP35boot/kernel.o`, `silence_all_audio` in
`usr/cpu/sysgen/IP35boot/kernel.o`, `silence_bell` in `usr/cpu/sysgen/IP35boot/kernel.o`.

- `board_to_path` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5078 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5078-0x520c (404 bytes).
  Loads 1 byte into a4 from a0 (arg0 at entry) +0x5 (`lbu` at 0x5078).
  18 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x58, including `ld` at 0x5080, 0x50a8, 0x50c8.
  Loads 2 bytes into a2 from a0 (arg0 at entry) +0xe (`lh` at 0x50e4).
  Loads 4 bytes into a4 from sym(hasmetarouter) +0x0 (`lw` at 0x5194).
  Loads 4 bytes into a4 from sym(hasmetarouter) +0x0 (`lw` at 0x51a8).
  Stores 4 bytes from a4 to sym(hasmetarouter) +0x0  (`sw` at 0x51a4).
  Stores 4 bytes from a4 to sym(hasmetarouter) +0x0  (`sw` at 0x51b8).
  Calls `sprintf` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=[a0+14]:2, a3=sym(.rodata)+1440, a6=a1 at entry (arg1), a7=a0 at entry (arg0) (`jal` at 0x50e8).
  At `beq` at 0x5098 (target 0x50dc), taken when a5(?) == at(=0x10) and falls through when a5(?) != at(=0x10).
  At `beq` at 0x50a4 (target 0x5108), taken when a5(?) == t0(=0x30) and falls through when a5(?) != t0(=0x30).
  At `beq` at 0x50b0 (target 0x5128), taken when a5(?) == t0(=0x40) and falls through when a5(?) != t0(=0x40).
  At `beq` at 0x50bc (target 0x50fc), taken when a5(?) == t1(=0x20) and falls through when a5(?) != t1(=0x20).
  At `beq` at 0x50c4 (target 0x5100), taken when a5(?) == t2(=0x80) and falls through when a5(?) != t2(=0x80).
  At `beq` at 0x50d0 (target 0x5130), taken when a5(?) == t3(=0x70) and falls through when a5(?) != t3(=0x70).
  At `beq` at 0x5110 (target 0x5194), taken when a4(=[a0+5]:1) == a5(=0x33) and falls through when a4(=[a0+5]:1) != a5(=0x33).
  At `beq` at 0x5118 (target 0x51a8), taken when a4(=[a0+5]:1) == a0(=0x34) and falls through when a4(=[a0+5]:1) != a0(=0x34).
  At `beq` at 0x5148 (target 0x51bc), taken when a4(=[a0+5]:1) == t0(=0x72) and falls through when a4(=[a0+5]:1) != t0(=0x72).
  At `beq` at 0x5150 (target 0x51c8), taken when a4(=[a0+5]:1) == a0(=0x71) and falls through when a4(=[a0+5]:1) != a0(=0x71).
  At `beq` at 0x5158 (target 0x51d4), taken when a4(=[a0+5]:1) == a1(=0x73) and falls through when a4(=[a0+5]:1) != a1(=0x73).
  At `beq` at 0x5160 (target 0x51e0), taken when a4(=[a0+5]:1) == a3(=0x74) and falls through when a4(=[a0+5]:1) != a3(=0x74).
  At `beq` at 0x5168 (target 0x51e8), taken when a4(=[a0+5]:1) == a5(=0x75) and falls through when a4(=[a0+5]:1) != a5(=0x75).
  At `beq` at 0x5170 (target 0x51f0), taken when a4(=[a0+5]:1) == t0(=0x76) and falls through when a4(=[a0+5]:1) != t0(=0x76).
  At `beq` at 0x5178 (target 0x51f8), taken when a4(=[a0+5]:1) == t1(=0x77) and falls through when a4(=[a0+5]:1) != t1(=0x77).
  At `beq` at 0x5180 (target 0x5204), taken when a4(=[a0+5]:1) == t1(=0x78) and falls through when a4(=[a0+5]:1) != t1(=0x78).
  Returns v0 = ret(sprintf) (`jr` at 0x50f4).

- `get_module_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x520c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x520c-0x52a4 (152 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0x520c).
  Loads 8 bytes into at from (a0 << 0x21) -0x6fffffffcc000000 (`ld` at 0x5218).
  Loads 8 bytes into t0 from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0x5240).
  Loads 4 bytes into t0 from ? (base unknown) (`lw` at 0x5254).
  Loads 2 bytes into v0 from ret(find_lboard) +0xe (`lh` at 0x5288).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x526c).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a0 << 0x21)+0x9600000000000000, a4=((a0 << 0x21)+0x9600000000000000 | 0x2000), a6=0x9600000000000000 (`jal` at 0x5294).
  At `beq` at 0x5238 (target 0x5294), taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  At `beq` at 0x5260 (target 0x526c), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x5278 (target 0x5288), taken when v0(=ret(find_lboard)) != 0 and falls through when v0(=ret(find_lboard)) == 0.
  Returns v0 = ? (`jr` at 0x528c).

- `get_xbow_peer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x52a4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x52a4-0x52d8 (52 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x68 (`ld` at 0x52a4).
  Loads 8 bytes into v1 from abs 0xffffffffffffc400 (`ld` at 0x52ac).
  Loads 2 bytes into a0 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x52b4).
  Loads 8 bytes into v1 from [-0x3c00]:8 +0x0 (`ld` at 0x52b8).
  Loads 8 bytes into v1 from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0 (`ld` at 0x52c4).
  Loads 2 bytes into v0 from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x8600 (`lh` at 0x52d4).
  Returns v0 = [[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+34304]:2 (`jr` at 0x52d0).

- `cpu_cycles_adjust` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x52d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x52d8-0x5368 (144 bytes).
  Loads 2 bytes into a4 from ret(nasid_slice_to_cpuinfo) +0x3c (`lhu` at 0x5320).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x52e8).
  Calls `get_slice` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x52f0).
  Calls `nasid_slice_to_cpuinfo` via direct with a0=ret(get_nasid), a1=ret(get_slice), a2=?, a3=? (`jal` at 0x52fc).
  At `beq` at 0x530c (target 0x5358), taken when v0(=ret(nasid_slice_to_cpuinfo)) == 0 and falls through when v0(=ret(nasid_slice_to_cpuinfo)) != 0.
  At `bne` at 0x5334 (target 0x5358), taken when a6(?) < a7(=[ret(nasid_slice_to_cpuinfo)+60]:2-2) (unsigned) and falls through when a6(?) >= a7(=[ret(nasid_slice_to_cpuinfo)+60]:2-2) (unsigned).
  At `bne` at 0x533c (target 0x5358), taken when a3(?) != 0 and falls through when a3(?) == 0.
  Returns v0 = ? (`jr` at 0x5360).

- `device_component_canonical_name_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5368 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5368-0x53f8 (144 bytes).
  Loads 2 bytes into a7 from a0 (arg0 at entry) +0xe (`lh` at 0x5368).
  Loads 1 byte into at from a0 (arg0 at entry) +0x6 (`lbu` at 0x5388).
  Loads 8 bytes into v0 from sym(.srdata) +0x58 (`ld` at 0x539c).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x53b0).
  Loads 8 bytes into v0 from sym(.rodata) +0x5d8 (`ld` at 0x53a0).
  Stores 8 bytes from v0 to a2 (arg2 at entry) +0x0  (`sdl` at 0x53a4).
  Stores 8 bytes from v0 to a2 (arg2 at entry) +0x7  (`sdr` at 0x53a8).
  Loads 1 byte into a4 from a1 (arg1 at entry) +0x18 (`lbu` at 0x53bc).
  Calls `sprintf` via direct with a0=a2 at entry (arg2), a1=sym(.rodata)+1440, a2=?, a3=sp-64, a5=-0x11, a6=a1 at entry (arg1) (`jal` at 0x53c8).
  Calls `nic_name_convert` via direct with a0=a0+153, a1=sp-64, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a0 at entry (arg0), a6=a1 at entry (arg1), a7=[a0+14]:2 (`jal` at 0x53e4).
  At `beq` at 0x5380 (target 0x539c), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x5394 (target 0x53e0), taken when at(=[a0+6]:1) >= 0x2 (signed) and falls through when at(=[a0+6]:1) < 0x2 (signed).
  Returns v0 = ret(sprintf) (`jr` at 0x53d8).

- `component_serial_number_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x53f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x53f8-0x5534 (316 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x5440).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x5480).
  Loads 8 bytes into a0 from sym(.srdata) +0x58 (`ld` at 0x54a4).
  Loads 1 byte into a3 from (ret(strstr) + ret(strlen)) +0x0 (`lbu` at 0x54b4).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x54d0).
  Loads 1 byte into v0 from ? (base unknown) (`lbu` at 0x54d8).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x54e8).
  Loads 1 byte into v0 from ? (base unknown) (`lbu` at 0x54f0).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0x5504).
  Calls `strcmp` via direct with a0=a3 at entry (arg3), a1=sym(.rodata)+1440, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x1, a7=a1 at entry (arg1) (`jal` at 0x5454).
  Calls `strstr` via direct with a0=?, a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0x5464).
  Calls `strstr` via direct with a0=?, a1=sym(.rodata)+1440, a2=?, a3=? (`jal` at 0x5488).
  Calls `strlen` via direct with a0=sym(.rodata)+1440, a1=?, a2=?, a3=?, a6=0x1 (`jal` at 0x54a8).
  At `beq` at 0x541c (target 0x5524), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x545c (target 0x5480), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bne` at 0x5470 (target 0x5480), taken when v0(=ret(strstr)) != 0 and falls through when v0(=ret(strstr)) == 0.
  At `bne` at 0x5494 (target 0x54a4), taken when v0(=ret(strstr)) != 0 and falls through when v0(=ret(strstr)) == 0.
  At `beq` at 0x54c0 (target 0x552c), taken when a2(=0x3b) == a3(=[(ret(strstr) + ret(strlen))]:1) and falls through when a2(=0x3b) != a3(=[(ret(strstr) + ret(strlen))]:1).
  At `beq` at 0x54dc (target 0x54fc), taken when a2(=0x3b) == v0(?) and falls through when a2(=0x3b) != v0(?).
  At `bne` at 0x54f4 (target 0x54cc), taken when a2(=0x3b) != v0(?) and falls through when a2(=0x3b) == v0(?).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x551c).

- `board_serial_number_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5534 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5534-0x574c (536 bytes).
  10 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x58, including `ld` at 0x5558, 0x55cc, 0x5604.
  Loads 1 byte into v1 from sym(.rodata) +0x770 (`lbu` at 0x555c).
  Loads 1 byte into a4 from sym(.rodata) +0x770 (`lbu` at 0x5590).
  Stores 1 byte from v1 to a1 (arg1 at entry) +0x0  (`sb` at 0x5560).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x5 (`lbu` at 0x5564).
  Stores 1 byte from a4 to a1 (arg1 at entry) +0x0  (`sb` at 0x5594).
  Loads 4 bytes into a1 from ret(find_first_component) +0x5c (`lw` at 0x5634).
  Loads 4 bytes into a1 from ret(find_first_component) +0x50 (`lw` at 0x565c).
  5 such loads of 4 bytes through s2 (ret(find_first_component)) to ret(find_first_component) +0x50, including `lw` at 0x5678, 0x5694, 0x56b0.
  Loads 4 bytes into a1 from ret(find_first_component) +0x88 (`lw` at 0x570c).
  Loads 4 bytes into a1 from ret(find_first_component) +0x90 (`lw` at 0x5730).
  Calls `find_first_component` via direct with a0=a0 at entry (arg0), a1=0xa, a2=0x30, a3=0x50 (`jal` at 0x55c0).
  Calls `find_first_component` via direct with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x55dc).
  Calls `find_first_component` via direct with a0=a0 at entry (arg0), a1=0x5, a2=0x30, a3=a3 at entry (arg3) (`jal` at 0x55f8).
  Calls `find_first_component` via direct with a0=a0 at entry (arg0), a1=0x9, a2=0x30, a3=0x50 (`jal` at 0x5614).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+92], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x5638).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x5660).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x567c).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x5698).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x56b4).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x56d0).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x56ec).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+136], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x5710).
  Calls `component_serial_number_get [0x53f8]` via direct with a0=a0 at entry (arg0), a1=[ret(find_first_component)+144], a2=a1 at entry (arg1), a3=sym(.rodata)+1440 (`jal` at 0x5734).
  At `beq` at 0x554c (target 0x55b4), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x5554 (target 0x55b4), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x5570 (target 0x55d8), taken when v0(?) == at(=0x10) and falls through when v0(?) != at(=0x10).
  At `beq` at 0x5578 (target 0x55f4), taken when v0(?) == a1(=0x20) and falls through when v0(?) != a1(=0x20).
  At `beq` at 0x5580 (target 0x5610), taken when v0(?) == a2(=0x30) and falls through when v0(?) != a2(=0x30).
  At `beq` at 0x5588 (target 0x55bc), taken when v0(?) == a3(=0x50) and falls through when v0(?) != a3(=0x50).
  At `bne` at 0x55c8 (target 0x562c), taken when v0(=ret(find_first_component)) != 0 and falls through when v0(=ret(find_first_component)) == 0.
  At `bne` at 0x55e4 (target 0x5650), taken when v0(=ret(find_first_component)) != 0 and falls through when v0(=ret(find_first_component)) == 0.
  At `bne` at 0x5600 (target 0x5704), taken when v0(=ret(find_first_component)) != 0 and falls through when v0(=ret(find_first_component)) == 0.
  At `bne` at 0x561c (target 0x5728), taken when v0(=ret(find_first_component)) != 0 and falls through when v0(=ret(find_first_component)) == 0.
  At `beq` at 0x5640 (target 0x559c), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x5668 (target 0x5598), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x5684 (target 0x5598), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x56a0 (target 0x5598), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x56bc (target 0x5598), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x56d8 (target 0x5598), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x56f4 (target 0x559c), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x5718 (target 0x559c), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  At `beq` at 0x573c (target 0x559c), taken when v0(=ret(component_serial_number_get)) == 0 and falls through when v0(=ret(component_serial_number_get)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x55ac).

- `membank_pathname_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x574c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x574c-0x57d8 (140 bytes).
  Loads 8 bytes into a5 from sym(.srdata) +0x68 (`ld` at 0x5754).
  Loads 2 bytes into a5 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0x5774).
  Stores 1 byte from zero to a1 (arg1 at entry) +0x0  (`sb` at 0x577c).
  Loads 4 bytes into t1 from sym(numnodes) +0x0 (`lw` at 0x5780).
  Loads 8 bytes into a4 from abs 0xffffffffffffc400 (`ld` at 0x5798).
  Loads 8 bytes into a4 from [-0x3c00]:8 +0x0 (`ld` at 0x579c).
  Loads 8 bytes into a4 from ([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3)) +0x0 (`ld` at 0x57ac).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x57b4).
  Loads 2 bytes into a2 from [([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8 +0x861a (`lh` at 0x57cc).
  Calls `sprintf` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=?, a4=[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a5=(entry(sym(nasid_to_compact_node)) << 0x3), a6=a1 at entry (arg1), a7=a0 at entry (arg0) (`jal` at 0x57c8).
  At `beq` at 0x5770 (target 0x5790), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x5778 (target 0x5790), taken when a5(=entry(sym(nasid_to_compact_node))) == a3(=-0x1) and falls through when a5(=entry(sym(nasid_to_compact_node))) != a3(=-0x1).
  At `beq` at 0x5788 (target 0x5798), taken when t1(=[sym(numnodes)]) >= a5(=entry(sym(nasid_to_compact_node))) (signed) and falls through when t1(=[sym(numnodes)]) < a5(=entry(sym(nasid_to_compact_node))) (signed).
  Returns v0 = ? (`jr` at 0x5790).

- `membank_check_mixed_hidensity` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x57d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x57d8-0x58b4 (220 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0x57d8).
  Loads 8 bytes into at from (a0 << 0x21) -0x6fffffffcc000000 (`ld` at 0x57e4).
  Loads 8 bytes into t0 from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0x5810).
  Loads 4 bytes into t0 from ? (base unknown) (`lw` at 0x5820).
  Loads 2 bytes into a7 from ? (base unknown) (`lh` at 0x5864).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x5838).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x3, a2=?, a3=? (`jal` at 0x5844).
  Calls `chk_for_pebrick` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a0 << 0x21), a4=(a0 << 0x21)+0x9600000000000000, a6=0x9600000000000000 (`jal` at 0x58a4).
  At `beq` at 0x5804 (target 0x58a4), taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  At `beq` at 0x582c (target 0x5838), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0x587c (target 0x585c), taken when a4(?) < 0x8 (signed) and falls through when a4(?) >= 0x8 (signed).
  At `bne` at 0x5888 (target 0x589c), taken when a0(?) != t0(=0x200) and falls through when a0(?) == t0(=0x200).
  At `beq` at 0x5890 (target 0x589c), taken when a0(?) == a3(?) and falls through when a0(?) != a3(?).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x589c).

- `mem_mixed_hidensity_banks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x58b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x58b4-0x595c (168 bytes).
  Loads 8 bytes into s2 from sym(.srdata) +0x78 (`ld` at 0x58bc).
  Loads 4 bytes into v0 from sym(maxnodes) +0x0 (`lw` at 0x58c0).
  Loads 4 bytes into v0 from sym(maxnodes) +0x0 (`lw` at 0x593c).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x58e4).
  Calls `membank_check_mixed_hidensity` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x58f0).
  At `blez` at 0x58d0 (target 0x5920), taken when v0(=[sym(maxnodes)]) <= 0 (signed) and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x58e8 (target 0x5908), taken when a0(?) == s1(=-0x1) and falls through when a0(?) != s1(=-0x1).
  At `beq` at 0x58f8 (target 0x593c), taken when v0(=ret(membank_check_mixed_hidensity)) == 0 and falls through when v0(=ret(membank_check_mixed_hidensity)) != 0.
  At `bne` at 0x5918 (target 0x58e0), taken when s0(?) < v0(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= v0(=[sym(maxnodes)]) (signed).
  At `bne` at 0x594c (target 0x58e0), taken when s0(?) < v0(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= v0(=[sym(maxnodes)]) (signed).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x5934).

- `nodevertex_widgetnum_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x595c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x595c-0x5988 (44 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x5960).
  Loads 1 byte into v0 from ? (base unknown) (`lbu` at 0x597c).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+1440, a2=sp-16, a3=a3 at entry (arg3) (`jal` at 0x596c).
  Returns v0 = ? (`jr` at 0x5980).

- `nodevertex_xbow_peer_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5988 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5988-0x5a00 (120 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x598c).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0x59a4).
  Loads 2 bytes into a2 from table(0x8600) +0x0 (`lh` at 0x59b0).
  Loads 8 bytes into a4 from sym(.srdata) +0x68 (`ld` at 0x59c4).
  Loads 8 bytes into v0 from abs 0xffffffffffffc400 (`ld` at 0x59cc).
  Loads 2 bytes into v1 from (sym(nasid_to_compact_node) + (entry(0x8600) + entry(0x8600))) +0x0 (`lh` at 0x59d4).
  Loads 8 bytes into v0 from [-0x3c00]:8 +0x0 (`ld` at 0x59d8).
  Loads 8 bytes into v0 from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (entry(0x8600) + entry(0x8600)))]:2 << 0x3)) +0x0 (`ld` at 0x59e4).
  Loads 4 bytes into v0 from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (entry(0x8600) + entry(0x8600)))]:2 << 0x3))]:8 +0x8c80 (`lw` at 0x59ec).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+1440, a2=sp-16, a3=a3 at entry (arg3) (`jal` at 0x5998).
  At `beq` at 0x59c0 (target 0x59f8), taken when a2(=entry(0x8600)) == a5(=-0x1) and falls through when a2(=entry(0x8600)) != a5(=-0x1).
  Returns v0 = ? (`jr` at 0x59f0).

- `get_nic_string` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5a00 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5a00-0x5af8 (248 bytes).
  Loads 1 byte into t0 from a0 (arg0 at entry) +0x17 (`lbu` at 0x5a00).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x5a34).
  Loads 1 byte into t2 from ? (base unknown) (`lbu` at 0x5a44).
  Loads 8 bytes into a4 from sym(.srdata) +0x58 (`ld` at 0x5a50).
  Loads 8 bytes into t2 from table(sym(.rodata)+1440) +0x0 (`ld` at 0x5a70).
  At `blez` at 0x5a08 (target 0x5ac0), taken when t0(=[a0+23]:1) <= 0 (signed) and falls through when t0(=[a0+23]:1) > 0 (signed).
  At `beq` at 0x5a68 (target 0x5a7c), taken when t3(?) >= 0x20 (unsigned) and falls through when t3(?) < 0x20 (unsigned).
  At `bne` at 0x5a80 (target 0x5a2c), taken when a7(?) != 0 and falls through when a7(?) == 0.
  At `beq` at 0x5a9c (target 0x5a80), the condition is not analyzed.
  At `beq` at 0x5aa4 (target 0x5ac0), the condition is not analyzed.
  At `beq` at 0x5ac8 (target 0x5a9c), the condition is not analyzed.
  At `beq` at 0x5ad0 (target 0x5a9c), the condition is not analyzed.
  At `beq` at 0x5ad8 (target 0x5a9c), the condition is not analyzed.
  At `beq` at 0x5ae0 (target 0x5a9c), the condition is not analyzed.
  At `beq` at 0x5ae8 (target 0x5a9c), the condition is not analyzed.
  At `beq` at 0x5af0 (target 0x5a9c), the condition is not analyzed.

- `get_first_string` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5af8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5af8-0x5ba0 (168 bytes).
  Loads 8 bytes into s1 from a0 (arg0 at entry) +0x0 (`ld` at 0x5b2c).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0x5b50).
  Loads 8 bytes into s1 from ? (base unknown) (`ld` at 0x5b5c).
  Calls `strcmp` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5b4c).
  At `beq` at 0x5b18 (target 0x5b90), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x5b20 (target 0x5b90), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x5b28 (target 0x5b98), taken when a1 == v0(=0x1) and falls through when a1 != v0(=0x1).
  At `blez` at 0x5b30 (target 0x5b6c), taken when a1 <= 0 (signed) and falls through when a1 > 0 (signed).
  At `blez` at 0x5b54 (target 0x5b60), taken when v0(=ret(strcmp)) <= 0 (signed) and falls through when v0(=ret(strcmp)) > 0 (signed).
  At `bne` at 0x5b64 (target 0x5b40), taken when s0(?) < s2(=a1) (signed) and falls through when s0(?) >= s2(=a1) (signed).
  Returns v0 = ? (`jr` at 0x5b88).

- `get_ptrs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5ba0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5ba0-0x5c9c (252 bytes).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x5c24).
  Stores 8 bytes from s0 to ? (base unknown)  (`sd` at 0x5c50).
  Loads 1 byte into a1 from (ret(strlen) + ret(strstr)) +0x0 (`lbu` at 0x5c80).
  Calls `strstr` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5be4).
  Calls `strstr` via direct with a0=(ret(strlen) + ret(strstr)), a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0x5c58).
  Calls `strlen` via direct with a0=a3 at entry (arg3), a1=?, a2=?, a3=? (`jal` at 0x5c68).
  At `beq` at 0x5bc0 (target 0x5c04), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x5bc8 (target 0x5c04), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x5bd0 (target 0x5c04), taken when a3 == 0 and falls through when a3 != 0.
  At `beq` at 0x5bd8 (target 0x5c04), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x5bf0 (target 0x5c0c), taken when v0(=ret(strstr)) == 0 and falls through when v0(=ret(strstr)) != 0.
  At `beq` at 0x5c60 (target 0x5c94), taken when v0(=ret(strstr)) == 0 and falls through when v0(=ret(strstr)) != 0.
  At `beq` at 0x5c78 (target 0x5c54), taken when s2(?) >= s5(=a2-1) (signed) and falls through when s2(?) < s5(=a2-1) (signed).
  At `bne` at 0x5c84 (target 0x5c44), taken when a0(=0x3b) != a1(=[(ret(strlen) + ret(strstr))]:1) and falls through when a0(=0x3b) == a1(=[(ret(strlen) + ret(strstr))]:1).
  Returns v0 = ? (`jr` at 0x5c3c).

- `sort_nic_names` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5c9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5c9c-0x5d4c (176 bytes).
  Loads 8 bytes into a3 from sym(.srdata) +0x58 (`ld` at 0x5cbc).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0x5d14).
  Calls `get_nic_string [0x5a00]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5ca8).
  Calls `get_ptrs` via direct with a0=ret(get_nic_string), a1=sp-288, a2=0x20, a3=sym(.rodata)+1440 (`jal` at 0x5cc8).
  Calls `get_first_string` via direct with a0=sp-288, a1=ret(get_ptrs), a2=?, a3=? (`jal` at 0x5cd4).
  Calls `strchr` via direct with a0=ret(get_first_string), a1=0x3b, a2=?, a3=? (`jal` at 0x5ce8).
  Calls `strncpy` via direct with a0=sp-320, a1=ret(get_first_string), a2=?, a3=? (`jal` at 0x5d00).
  Calls `strncpy` via direct with a0=sp-320, a1=ret(get_first_string), a2=0x1f, a3=? (`jal` at 0x5d20).
  Calls `strcpy` via direct with a0=a0+153, a1=sp-320, a2=?, a3=? (`jal` at 0x5d34).
  At `beq` at 0x5cb0 (target 0x5d3c), taken when v0(=ret(get_nic_string)) == 0 and falls through when v0(=ret(get_nic_string)) != 0.
  At `beq` at 0x5cdc (target 0x5d3c), taken when v0(=ret(get_first_string)) == 0 and falls through when v0(=ret(get_first_string)) != 0.
  At `beq` at 0x5cf0 (target 0x5d18), taken when v0(=ret(strchr)) == 0 and falls through when v0(=ret(strchr)) != 0.
  Returns v0 = ? (`jr` at 0x5d44).

- `format_module_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5d4c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5d4c-0x5eec (416 bytes).
  Loads 8 bytes into a5 from sym(.srdata) +0x80 (`ld` at 0x5d5c).
  Loads 1 byte into a4 from ? (base unknown) (`lbu` at 0x5d84).
  Loads 8 bytes into a7 from sym(.srdata) +0x58 (`ld` at 0x5d8c).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x5dac).
  Loads 8 bytes into t2 from sym(.srdata) +0x58 (`ld` at 0x5e70).
  Stores 1 byte from a0 to ? (base unknown)  (`sb` at 0x5da4).
  Stores 1 byte from a4 to a0 (arg0 at entry) +0x3 (`sb` at 0x5e08).
  Stores 1 byte from t0 to a0 (arg0 at entry) +0x0 (`sb` at 0x5e14).
  Stores 1 byte from a2 to a0 (arg0 at entry) +0x2 (`sb` at 0x5e24).
  Stores 1 byte from a5 to a0 (arg0 at entry) +0x1 (`sb` at 0x5e34).
  Loads 1 byte into t0 from sym(.rodata) +0x8ec (`lbu` at 0x5e38).
  Loads 4 bytes into t1 from sym(.rodata) +0x8e8 (`lw` at 0x5e3c).
  Loads 1 byte into a7 from sym(.rodata) +0x8ed (`lbu` at 0x5e40).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x0  (`swl` at 0x5e44).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x3  (`swr` at 0x5e48).
  Stores 1 byte from t0 to a0 (arg0 at entry) +0x4  (`sb` at 0x5e4c).
  Stores 1 byte from a7 to a0 (arg0 at entry) +0x5  (`sb` at 0x5e54).
  Loads 1 byte into t3 from sym(.rodata) +0x8f5 (`lbu` at 0x5e84).
  Loads 4 bytes into t8 from sym(.rodata) +0x8f0 (`lw` at 0x5e90).
  Loads 1 byte into t2 from sym(.rodata) +0x8f4 (`lbu` at 0x5e9c).
  Stores 1 byte from a1 to (ret(strlen) + a0) +0x0 (`sb` at 0x5ea8).
  Stores 1 byte from t9 to (ret(strlen) + a0) +0x2 (`sb` at 0x5eb8).
  Stores 1 byte from at to (ret(strlen) + a0) +0x1 (`sb` at 0x5ec4).
  Stores 4 bytes from t8 to (ret(strlen) + a0) +0x3  (`swl` at 0x5ec8).
  Stores 4 bytes from t8 to (ret(strlen) + a0) +0x6  (`swr` at 0x5ecc).
  Stores 1 byte from t3 to (ret(strlen) + a0) +0x8  (`sb` at 0x5ed0).
  Stores 1 byte from t2 to (ret(strlen) + a0) +0x7  (`sb` at 0x5edc).
  Calls `sprintf` via direct with a0=?, a1=sym(.rodata)+1440, a2=?, a3=? (`jal` at 0x5db8).
  Calls `strlen` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=sym(brick_types), a7=0x0 (`jal` at 0x5e50).
  Calls `strlen` via direct with a0=(ret(strlen) + a0)+3, a1=?, a2=?, a3=? (`jal` at 0x5ed8).
  At `beq` at 0x5d80 (target 0x5dd0), taken when a2 == at(=0x1) and falls through when a2 != at(=0x1).
  At `beq` at 0x5d88 (target 0x5e38), taken when a2 == s2(=0x2) and falls through when a2 != s2(=0x2).
  At `beq` at 0x5d9c (target 0x5dac), taken when a2(?) >= 0xa (signed) and falls through when a2(?) < 0xa (signed).
  Returns v0 = ret(sprintf) (`jr` at 0x5dc8).

- `parse_module_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5eec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5eec-0x6204 (792 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x5ef0).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x6180).
  Loads 8 bytes into s2 from sym(.srdata) +0x60 (`ld` at 0x5f24).
  Loads 8 bytes into s2 from sym(.srdata) +0x60 (`ld` at 0x5f60).
  Loads 1 byte into a0 from a0 (arg0 at entry) +0x0 (`lbu` at 0x5f5c).
  Loads 1 byte into a4 from ([a0]:1 + sym(__ctype)) +0x1 (`lbu` at 0x5f68).
  Loads 1 byte into a1 from a0 (arg0 at entry) +0x1 (`lbu` at 0x5f78).
  Loads 1 byte into a5 from ([a0+1]:1 + sym(__ctype)) +0x1 (`lbu` at 0x5f80).
  Loads 1 byte into a6 from a0 (arg0 at entry) +0x2 (`lbu` at 0x5f90).
  Loads 1 byte into a7 from ([a0+2]:1 + sym(__ctype)) +0x1 (`lbu` at 0x5f98).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x3 (`lbu` at 0x6020).
  Loads 1 byte into a0 from ([a0+3]:1 + sym(__ctype)) +0x1 (`lbu` at 0x6028).
  Loads 8 bytes into a0 from sym(.srdata) +0x80 (`ld` at 0x6048).
  Loads 8 bytes into a4 from sym(.srdata) +0x80 (`ld` at 0x604c).
  Loads 1 byte into a0 from (a0 + one of 0x4, 0xd) +0x0 (`lbu` at 0x6064).
  Loads 1 byte into a5 from ? (base unknown) (`lbu` at 0x606c).
  Loads 1 byte into a1 from (a0 + one of 0x5, 0xe) +0x0 (`lbu` at 0x607c).
  Loads 1 byte into a6 from ? (base unknown) (`lbu` at 0x6084).
  Loads 1 byte into a7 from (a0 + one of 0x6, 0xf) +0x0 (`lbu` at 0x6094).
  Loads 1 byte into a1 from a0 (arg0 at entry) +0x5 (`lbu` at 0x60a8).
  Loads 1 byte into t0 from ([a0+5]:1 + sym(__ctype)) +0x1 (`lbu` at 0x60b0).
  Loads 1 byte into a4 from a0 (arg0 at entry) +0x6 (`lbu` at 0x60c0).
  Loads 1 byte into t1 from ([a0+6]:1 + sym(__ctype)) +0x1 (`lbu` at 0x60c8).
  Loads 1 byte into a6 from a0 (arg0 at entry) +0x7 (`lbu` at 0x60d8).
  Loads 1 byte into t2 from ([a0+7]:1 + sym(__ctype)) +0x1 (`lbu` at 0x60e0).
  Calls `strstr` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+1440, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x5f00).
  Calls `strlen` via direct with a0=a0+5, a1=?, a2=?, a3=? (`jal` at 0x5f14).
  Calls `strlen` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x5f30).
  Calls `strchr` via direct with a0=sym(brick_types), a1=?, a2=?, a3=0x6, a4=[a0+2]:1-49, a5=one of 0x3, 0x7, a6=[a0+2]:1, a7=one of 0x3, 0x7 (`jal` at 0x6044).
  Calls `strstr` via direct with a0=a0+8, a1=sym(.rodata)+1440, a2=?, a3=?, a4=[a0+7]:1-49, a5=one of 0x3, 0x7, a6=[a0+7]:1 (`jal` at 0x6190).
  At `bne` at 0x5f0c (target 0x5f30), taken when v0(=ret(strstr)) != s0(=a0) and falls through when v0(=ret(strstr)) == s0(=a0).
  At `beq` at 0x5f20 (target 0x60a8), taken when v0(=ret(strlen)) == a2(=0xa) and falls through when v0(=ret(strlen)) != a2(=0xa).
  At `beq` at 0x5f3c (target 0x5f5c), taken when v0(=ret(strlen)) == a3(=0x6) and falls through when v0(=ret(strlen)) != a3(=0x6).
  At `beq` at 0x5f70 (target 0x6170), taken when (a4(=[([a0]:1 + sym(__ctype))+1]:1) & 0x4) == 0 and falls through when (a4(=[([a0]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  At `beq` at 0x5f88 (target 0x6170), taken when (a5(=[([a0+1]:1 + sym(__ctype))+1]:1) & 0x4) == 0 and falls through when (a5(=[([a0+1]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  At `beq` at 0x5fa0 (target 0x6170), taken when (a7(=[([a0+2]:1 + sym(__ctype))+1]:1) & 0x4) == 0 and falls through when (a7(=[([a0+2]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  At `beq` at 0x5fac (target 0x6168), taken when v0(=[a0]:1-48) >= 0x2 (unsigned) and falls through when v0(=[a0]:1-48) < 0x2 (unsigned).
  At `bne` at 0x5fec (target 0x6178), taken when t2(?) < v0(=[a0+1]:1-48) (unsigned) and falls through when t2(?) >= v0(=[a0+1]:1-48) (unsigned).
  At `bne` at 0x6018 (target 0x6160), taken when a5(=one of 0x3, 0x7) < a4(=[a0+2]:1-49) (unsigned) and falls through when a5(=one of 0x3, 0x7) >= a4(=[a0+2]:1-49) (unsigned).
  At `beq` at 0x6034 (target 0x61fc), taken when (a0(=[([a0+3]:1 + sym(__ctype))+1]:1) & 0x4003) == 0 and falls through when (a0(=[([a0+3]:1 + sym(__ctype))+1]:1) & 0x4003) != 0.
  At `beq` at 0x603c (target 0x61e0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x605c (target 0x61d0), taken when a4(?) >= 0x10 (unsigned) and falls through when a4(?) < 0x10 (unsigned).
  At `beq` at 0x6074 (target 0x60a0), taken when (a5(?) & 0x4) == 0 and falls through when (a5(?) & 0x4) != 0.
  At `beq` at 0x608c (target 0x60a0), taken when (a6(?) & 0x4) == 0 and falls through when (a6(?) & 0x4) != 0.
  At `beq` at 0x6098 (target 0x61ac), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x60b8 (target 0x6170), taken when (t0(=[([a0+5]:1 + sym(__ctype))+1]:1) & 0x4) == 0 and falls through when (t0(=[([a0+5]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  At `beq` at 0x60d0 (target 0x6170), taken when (t1(=[([a0+6]:1 + sym(__ctype))+1]:1) & 0x4) == 0 and falls through when (t1(=[([a0+6]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  At `beq` at 0x60ec (target 0x6170), taken when (t2(=[([a0+7]:1 + sym(__ctype))+1]:1) & 0x4) == 0 and falls through when (t2(=[([a0+7]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  At `beq` at 0x6100 (target 0x6168), taken when v0(=[a0+5]:1-48) >= 0x2 (unsigned) and falls through when v0(=[a0+5]:1-48) < 0x2 (unsigned).
  At `bne` at 0x6140 (target 0x6178), taken when t9(?) < v0(=[a0+6]:1-48) (unsigned) and falls through when t9(?) >= v0(=[a0+6]:1-48) (unsigned).
  At `beq` at 0x6158 (target 0x6180), taken when a5(=one of 0x3, 0x7) >= a4(=[a0+7]:1-49) (unsigned) and falls through when a5(=one of 0x3, 0x7) < a4(=[a0+7]:1-49) (unsigned).
  At `beq` at 0x619c (target 0x61d8), taken when v0(=ret(strstr)) == a3(?) and falls through when v0(=ret(strstr)) != a3(?).
  At `bne` at 0x61c0 (target 0x61e8), taken when a5(?) < 0x40 (unsigned) and falls through when a5(?) >= 0x40 (unsigned).
  Returns v0 = ? (`jr` at 0x5f54).

- `chk_for_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6204 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6204-0x630c (264 bytes).
  Loads 4 bytes into t2 from sym(num_pebricks) +0x0 (`lw` at 0x6204).
  Loads 8 bytes into t3 from sym(.srdata) +0x80 (`ld` at 0x620c).
  Loads 2 bytes into t0 from ? (base unknown) (`lh` at 0x6244).
  Loads 2 bytes into a5 from ? (base unknown) (`lh` at 0x6250).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0x6260).
  Loads 4 bytes into a7 from ? (base unknown) (`lw` at 0x626c).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x6290).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x62a0).
  Loads 4 bytes into t8 from ? (base unknown) (`lw` at 0x62b8).
  Loads 8 bytes into a1 from sym(.srdata) +0x58 (`ld` at 0x62e0).
  Loads 2 bytes into t0 from sym(.data) +0x11c (`lh` at 0x6308).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+1440, a2=a2 at entry (arg2), a3=?, a4=0xffffffffff (`jal` at 0x62e8).
  At `blez` at 0x621c (target 0x62e0), taken when t2(=[sym(num_pebricks)]) <= 0 (signed) and falls through when t2(=[sym(num_pebricks)]) > 0 (signed).
  At `beq` at 0x623c (target 0x62e0), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x6248 (target 0x6234), taken when t0(?) != a0 and falls through when t0(?) == a0.
  At `beq` at 0x6278 (target 0x6284), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x6284 (target 0x6234), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x6298 (target 0x6230), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x62b0 (target 0x62d4), taken when (t8(?) & 0x1) == 0 and falls through when (t8(?) & 0x1) != 0.
  At `bne` at 0x62c4 (target 0x6294), taken when t8(?) != 0 and falls through when t8(?) == 0.
  Returns v0 = ? (`jr` at 0x62d8).

- `cpu_node_probe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x630c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x630c-0x660c (768 bytes).
  Loads 8 bytes into s2 from sym(.srdata) +0x88 (`ld` at 0x6334).
  Stores 2 bytes from s1 to ? (base unknown)  (`sh` at 0x6348).
  Stores 2 bytes from s1 to ? (base unknown)  (`sh` at 0x634c).
  Stores 2 bytes from s1 to ? (base unknown)  (`sh` at 0x6364).
  Stores 2 bytes from s1 to ? (base unknown)  (`sh` at 0x636c).
  Stores 2 bytes from s1 to ? (base unknown)  (`sh` at 0x6388).
  Stores 2 bytes from s1 to ? (base unknown)  (`sh` at 0x63a4).
  Loads 8 bytes into s3 from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0 (`ld` at 0x63d0).
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x0  (`sw` at 0x63d8).
  Stores 4 bytes from a4 to a1 (arg1 at entry) +0x0  (`sw` at 0x641c).
  Loads 2 bytes into a1 from ? (base unknown) (`lh` at 0x63e4).
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x63f4).
  Stores 2 bytes from s0 to ? (base unknown) (`sh` at 0x63fc).
  4 such loads of 4 bytes through s4 (a1) to a1 (arg1 at entry) +0x0, including `lw` at 0x6408, 0x6490, 0x64a8.
  Loads 4 bytes into a5 from [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x184 (`lw` at 0x6434).
  Loads 8 bytes into s7 from sym(.srdata) +0x90 (`ld` at 0x6444).
  Loads 4 bytes into a6 from sym(num_pebricks) +0x0 (`lw` at 0x6450).
  Loads 4 bytes into a6 from sym(num_pebricks) +0x0 (`lw` at 0x65b8).
  Loads 2 bytes into a1 from ? (base unknown) (`lh` at 0x6460).
  Loads 2 bytes into a5 from ? (base unknown) (`lh` at 0x6470).
  Loads 2 bytes into a4 from ? (base unknown) (`lh` at 0x64fc).
  Stores 4 bytes from a6 to sym(num_pebricks) +0x0 (`sw` at 0x6480).
  Stores 2 bytes from a5 to ? (base unknown) (`sh` at 0x6484).
  Stores 4 bytes from s6 to ? (base unknown)  (`sw` at 0x6488).
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x648c).
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x64a0).
  Stores 2 bytes from a7 to ? (base unknown) (`sh` at 0x64c4).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0x6530).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x98, including `ld` at 0x6548, 0x6598, 0x65a8.
  Loads 8 bytes into v1 from sym(.lit8) +0x68 (`ld` at 0x6584).
  Loads 8 bytes into v1 from abs 0x9000000014000000 (`ld` at 0x6588).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x63ac).
  Calls `do_cpumask` via direct with a0=?, a1=?, a2=a0 at entry (arg0), a3=sp-80, a4=[a1]+1 (`jal` at 0x6418).
  Calls `printf` via direct with a0=sym(.rodata)+2344, a1=?, a2=?, a3=? (`jal` at 0x65a4).
  Calls `printf` via direct with a0=sym(.rodata)+2344, a1=?, a2=?, a3=?, a5=[[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8+388], a6=[sym(num_pebricks)] (`jal` at 0x65c4).
  Calls `printf` via direct with a0=sym(.rodata)+2344, a1=?, a2=?, a3=? (`jal` at 0x65d0).
  Calls `assfail` via direct with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xb9, a3=? (`jal` at 0x65e8).
  At `beq` at 0x6350 (target 0x6370), taken when a4(?) >= 0x80 (signed) and falls through when a4(?) < 0x80 (signed).
  At `bne` at 0x6368 (target 0x6338), taken when a4(?) < 0x80 (signed) and falls through when a4(?) >= 0x80 (signed).
  At `beq` at 0x638c (target 0x63a8), taken when a4(?) >= 0x200 (signed) and falls through when a4(?) < 0x200 (signed).
  At `bne` at 0x63a0 (target 0x6378), taken when a4(?) < 0x200 (signed) and falls through when a4(?) >= 0x200 (signed).
  At `beq` at 0x63e8 (target 0x6434), taken when a1(?) == s1(=-0x1) and falls through when a1(?) != s1(=-0x1).
  At `bne` at 0x642c (target 0x63e4), taken when s0(?) < 0x80 (signed) and falls through when s0(?) >= 0x80 (signed).
  At `bne` at 0x644c (target 0x6584), taken when a5(=[[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8+388]) != a6(=0x5045626b) and falls through when a5(=[[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8+388]) == a6(=0x5045626b).
  At `beq` at 0x6468 (target 0x64c8), taken when a1(?) == s1(=-0x1) and falls through when a1(?) != s1(=-0x1).
  At `beq` at 0x6478 (target 0x65a4), taken when a5(?) == s1(=-0x1) and falls through when a5(?) != s1(=-0x1).
  At `bne` at 0x64c0 (target 0x6454), taken when s0(?) < 0x3 (signed) and falls through when s0(?) >= 0x3 (signed).
  At `bltz` at 0x64d4 (target 0x654c), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bne` at 0x64f0 (target 0x654c), taken when a1(?) < s0(?) (signed) and falls through when a1(?) >= s0(?) (signed).
  At `bne` at 0x6504 (target 0x64e4), taken when s3(?) < a4(?) (signed) and falls through when s3(?) >= a4(?) (signed).
  At `beq` at 0x650c (target 0x64e8), taken when a4(?) == s1(=-0x1) and falls through when a4(?) != s1(=-0x1).
  At `beq` at 0x6514 (target 0x64e8), taken when a4(?) == s3(?) and falls through when a4(?) != s3(?).
  At `beq` at 0x6528 (target 0x64e8), taken when a3(=[a1]) == a4(?) and falls through when a3(=[a1]) != a4(?).
  At `beql` at 0x653c (target 0x64ec), taken when (a3(?) & a4(?)) == 0 and falls through when (a3(?) & a4(?)) != 0.
  At `beq` at 0x6594 (target 0x65c4), taken when v1(?) == a0(=0x8000) and falls through when v1(?) != a0(=0x8000).
  At `bne` at 0x65b4 (target 0x6454), taken when s0(?) < 0x4 (signed) and falls through when s0(?) >= 0x4 (signed).
  At `beq` at 0x65fc (target 0x64f8), taken when a1(?) >= s0(?) (signed) and falls through when a1(?) < s0(?) (signed).
  Returns v0 = ? (`jr` at 0x657c).

- `do_cpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x660c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x660c-0x6838 (556 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0x6624).
  Loads 8 bytes into at from (a1 << 0x21) -0x6fffffffcc000000 (`ld` at 0x6638).
  Loads 8 bytes into a4 from ((a1 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0x6678).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x6688).
  Loads 2 bytes into s2 from ? (base unknown) (`lh` at 0x66d0).
  Loads 8 bytes into a0 from sym(.srdata) +0x98 (`ld` at 0x66dc).
  Loads 8 bytes into a0 from sym(.srdata) +0x98 (`ld` at 0x6740).
  Loads 8 bytes into s0 from sym(.srdata) +0x98 (`ld` at 0x681c).
  Loads 2 bytes into a3 from ret(find_lboard) +0x20 (`lh` at 0x66e8).
  Loads 8 bytes into a1 from sym(.srdata) +0x88 (`ld` at 0x66ec).
  Stores 2 bytes from a4 to ? (base unknown)  (`sh` at 0x6704).
  Loads 4 bytes into a5 from a3 (arg3 at entry) +0x0 (`lw` at 0x6708).
  Stores 4 bytes from s2 to a3 (arg3 at entry) +0x0 (`sw` at 0x6720).
  Loads 1 byte into a6 from ? (base unknown) (`lbu` at 0x6724).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x6734).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x6818).
  Stores 8 bytes from t0 to ? (base unknown) (`sd` at 0x674c).
  Loads 4 bytes into v0 from ret(find_lboard) +0x0 (`lw` at 0x6768).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x66a4).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x1, a2=?, a3=? (`jal` at 0x66c0).
  Calls `get_actual_nasid` via direct with a0=ret(find_lboard), a1=?, a2=?, a3=? (`jal` at 0x66e0).
  Calls `find_component` via direct with a0=ret(find_lboard), a1=?, a2=0x1, a3=? (`jal` at 0x6758).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x6798).
  Calls `chk_for_pebrick` via direct with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x67dc).
  Calls `assfail` via direct with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xec, a3=? (`jal` at 0x67f4).
  Calls `assfail` via direct with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xfa, a3=[ret(find_lboard)+32]:2, a4=a0 at entry (arg0) (`jal` at 0x680c).
  Calls `assfail` via direct with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xe3, a3=? (`jal` at 0x6828).
  At `beq` at 0x6658 (target 0x67dc), taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  At `beq` at 0x6690 (target 0x66a4), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x66ac (target 0x681c), taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  At `beq` at 0x66c8 (target 0x6768), taken when v0(=ret(find_first_component)) == 0 and falls through when v0(=ret(find_first_component)) != 0.
  At `beq` at 0x66d8 (target 0x67ec), taken when s2(?) >= 0x200 (signed) and falls through when s2(?) < 0x200 (signed).
  At `bne` at 0x66fc (target 0x6708), taken when a3(=[ret(find_lboard)+32]:2) != v0(=ret(get_actual_nasid)) and falls through when a3(=[ret(find_lboard)+32]:2) == v0(=ret(get_actual_nasid)).
  At `beq` at 0x6718 (target 0x6724), taken when a5(=[a3]) >= s2(?) (signed) and falls through when a5(=[a3]) < s2(?) (signed).
  At `beq` at 0x672c (target 0x6754), taken when (a6(?) & 0x1) == 0 and falls through when (a6(?) & 0x1) != 0.
  At `bne` at 0x673c (target 0x6804), taken when (v0(?) & s4(?)) != 0 and falls through when (v0(?) & s4(?)) == 0.
  At `bne` at 0x6760 (target 0x66d0), taken when v0(=ret(find_component)) != 0 and falls through when v0(=ret(find_component)) == 0.
  At `beq` at 0x676c (target 0x67a8), taken when v0(=[ret(find_lboard)]) == 0 and falls through when v0(=[ret(find_lboard)]) != 0.
  At `bne` at 0x67a0 (target 0x66bc), taken when v0(=ret(find_lboard)) != 0 and falls through when v0(=ret(find_lboard)) == 0.
  Returns v0 = ? (`jr` at 0x67d4).

- `slurp_inventory` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6838 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6838-0x6840 (8 bytes).
  Returns v0 = ? (`jr` at 0x6838).

- `nasid_to_compact_nodeid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6840 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6840-0x6854 (20 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x88 (`ld` at 0x6840).
  Loads 2 bytes into v0 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x6850).
  Returns v0 = [(sym(nasid_to_compact_node) + (a0 + a0))]:2 (`jr` at 0x684c).

- `compact_to_nasid_nodeid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6854 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6854-0x686c (24 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x88 (`ld` at 0x6854).
  Loads 2 bytes into v0 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x6868).
  Returns v0 = [(sym(nasid_to_compact_node) + (a0 + a0))]:2 (`jr` at 0x6864).

- `get_lowest_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x686c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x686c-0x68cc (96 bytes).
  Loads 4 bytes into a6 from sym(maxnodes) +0x0 (`lw` at 0x686c).
  Loads 8 bytes into a7 from sym(.srdata) +0x88 (`ld` at 0x6870).
  Loads 2 bytes into v0 from sym(.bss) +0x200 (`lh` at 0x6880).
  Loads 2 bytes into a3 from ? (base unknown) (`lh` at 0x6898).
  At `bne` at 0x687c (target 0x68c4), taken when a6(=[sym(maxnodes)]) < 0x2 (signed) and falls through when a6(=[sym(maxnodes)]) >= 0x2 (signed).
  At `beq` at 0x68a8 (target 0x68b4), taken when a3(?) >= v0(?) (signed) and falls through when a3(?) < v0(?) (signed).
  At `bne` at 0x68bc (target 0x6898), taken when t0(?) != 0 and falls through when t0(?) == 0.
  Returns v0 = ? (`jr` at 0x68c4).
- `cnode_exists` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x68cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x68cc-0x690c (64 bytes).
  Loads 8 bytes into a3 from sym(.srdata) +0x88 (`ld` at 0x68d4).
  Loads 2 bytes into v0 from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0 (`lh` at 0x68f0).
  At `bltz` at 0x68d0 (target 0x6900), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x68e0 (target 0x6904), taken when a0 >= 0x80 (signed) and falls through when a0 < 0x80 (signed).
  Returns v0 = ? (`jr` at 0x68f8).
  Returns v0 = 0x0 (`jr` at 0x6904).

- `getsysid_snum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6978 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6978-0x6a28 (176 bytes).
  Loads 1 byte into a2 from ? (base unknown) (`lbu` at 0x69e4).
  Calls `getsysid` via direct with a0=sp-80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6980).
  At `bne` at 0x69b4 (target 0x69c8), taken when a2(?) < 0x61 (signed) and falls through when a2(?) >= 0x61 (signed).
  At `beq` at 0x69bc (target 0x69c8), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x69c8 (target 0x69dc), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x69d0 (target 0x69dc), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x69dc (target 0x6a14), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x69f4 (target 0x699c), taken when a2(?) < 0x30 (signed) and falls through when a2(?) >= 0x30 (signed).
  At `beq` at 0x6a04 (target 0x69a0), taken when a2(?) >= 0x3a (signed) and falls through when a2(?) < 0x3a (signed).
  Returns v0 = ? (`jr` at 0x6a14).

- `set_master_bridge_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6a28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6a28-0x6ab0 (136 bytes).
  Loads 2 bytes into a3 from sym(master_nasid) +0x0 (`lh` at 0x6a2c).
  Loads 8 bytes into a4 from (([sym(master_nasid)]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0x6a44).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0x6a54).
  Loads 8 bytes into a5 from sym(.lit8) +0x70 (`ld` at 0x6a58).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0x6a60).
  Loads 2 bytes into a1 from ? (base unknown) (`lh` at 0x6a64).
  Loads 1 byte into a2 from ? (base unknown) (`lbu` at 0x6a68).
  Stores 1 byte from a2 to sym(p_routertick) +0xb (`sb` at 0x6a70).
  Stores 2 bytes from a1 to sym(p_routertick) +0x8 (`sh` at 0x6a7c).
  Stores 1 byte from a4 to sym(p_routertick) +0xa (`sb` at 0x6a8c).
  Stores 8 bytes from a2 to sym(_prom_cleared) +0x30 (`sd` at 0x6aa4).
  At `beq` at 0x6a88 (target 0x6aa8), taken when (a4(?) & 0xff) == 0 and falls through when (a4(?) & 0xff) != 0.
  Returns v0 = ? (`jr` at 0x6aa0).

- `get_console_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6ab0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6ab0-0x6ab8 (8 bytes).
  Loads 2 bytes into v0 from sym(p_routertick) +0x8 (`lh` at 0x6ab4).
  Returns v0 = [sym(.sbss)+8]:2 (`jr` at 0x6ab0).

- `get_console_pcislot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6ab8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6ab8-0x6ac0 (8 bytes).
  Loads 1 byte into v0 from sym(p_routertick) +0xb (`lbu` at 0x6abc).
  Returns v0 = [sym(.sbss)+11]:1 (`jr` at 0x6ab8).

- `check_nasid_equiv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6ac0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6ac0-0x6b08 (72 bytes).
  Loads 8 bytes into a4 from sym(.srdata) +0x88 (`ld` at 0x6ac8).
  Loads 8 bytes into v0 from abs 0xffffffffffffc400 (`ld` at 0x6ad0).
  Loads 2 bytes into v1 from (sym(nasid_to_compact_node) + (a1 + a1)) +0x0 (`lh` at 0x6ad8).
  Loads 8 bytes into v0 from [-0x3c00]:8 +0x0 (`ld` at 0x6adc).
  Loads 8 bytes into v0 from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3)) +0x0 (`ld` at 0x6ae8).
  Loads 2 bytes into at from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8 +0x8600 (`lh` at 0x6af0).
  At `beq` at 0x6ac4 (target 0x6afc), taken when a0 == a1 and falls through when a0 != a1.
  At `bne` at 0x6af4 (target 0x6b00), taken when at(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+34304]:2) != a0 and falls through when at(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+34304]:2) == a0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x6b00).

- `is_master_nasid_widget` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6b08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6b08-0x6b44 (60 bytes).
  Loads 1 byte into at from sym(p_routertick) +0xa (`lbu` at 0x6b08).
  Loads 2 bytes into a1 from sym(p_routertick) +0x8 (`lh` at 0x6b28).
  Calls `check_nasid_equiv` via direct with a0=a0 at entry (arg0), a1=[sym(.sbss)+8]:2, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6b24).
  At `beq` at 0x6b14 (target 0x6b24), taken when at(=[sym(.sbss)+10]:1) == a1 and falls through when at(=[sym(.sbss)+10]:1) != a1.
  At `beq` at 0x6b2c (target 0x6b3c), taken when v0(=ret(check_nasid_equiv)) == 0 and falls through when v0(=ret(check_nasid_equiv)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x6b1c).

- `get_master_bridge_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6b44 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6b44-0x6b4c (8 bytes).
  Loads 8 bytes into v0 from sym(_prom_cleared) +0x30 (`ld` at 0x6b48).
  Returns v0 = [sym(.sdata)+48]:8 (`jr` at 0x6b44).

- `vector_write_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6b4c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6b4c-0x6db4 (616 bytes).
  Loads 8 bytes into s4 from sym(.lit8) +0x8 (`ld` at 0x6ba4).
  Loads 8 bytes into t8 from sym(.lit8) +0x78 (`ld` at 0x6bac).
  Loads 8 bytes into s4 from (a1 << 0x21) -0x6dfffffffe1f3fe0 (`ld` at 0x6be8).
  Loads 8 bytes into v1 from (a1 << 0x21) -0x6dfffffffe1f3fe0 (`ld` at 0x6c24).
  4 such loads of 4 bytes through gp (gp) to sym(vec_polls_w) +0x0, including `lw` at 0x6bf4, 0x6bf8, 0x6c2c.
  Loads 8 bytes into a0 from (a1 << 0x21) -0x6dfffffffe1f3fc8 (`ld` at 0x6c20).
  Loads 8 bytes into a1 from (a1 << 0x21) -0x6dfffffffe1f4000 (`ld` at 0x6c40).
  Loads 8 bytes into a3 from (a1 << 0x21) -0x6dfffffffe1f4000 (`ld` at 0x6c60).
  Stores 8 bytes from s6 to (a1 << 0x21) -0x6dfffffffe1f3ff0  (`sd` at 0x6c88).
  Stores 8 bytes from s5 to (a1 << 0x21) -0x6dfffffffe1f3ff8  (`sd` at 0x6c8c).
  Stores 8 bytes from s7 to (a1 << 0x21) -0x6dfffffffe1f4000 (`sd` at 0x6c90).
  Calls `us_delay` via direct with a0=0x64, a1=?, a2=?, a3=? (`jal` at 0x6be0).
  Calls `us_delay` via direct with a0=0x64, a1=?, a2=?, a3=? (`jal` at 0x6cb0).
  At `beq` at 0x6bd8 (target 0x6bfc), taken when s0(?) >= v0(=[sym(vec_polls_w)]) (signed) and falls through when s0(?) < v0(=[sym(vec_polls_w)]) (signed).
  At `beq` at 0x6bf0 (target 0x6bd0), taken when (s1(=0x8000000000000000) & s4(=[(a1 << 0x21)-7926335344140566496]:8)) == 0 and falls through when (s1(=0x8000000000000000) & s4(=[(a1 << 0x21)-7926335344140566496]:8)) != 0.
  At `beq` at 0x6bfc (target 0x6c10), taken when v0(=[sym(vec_polls_w)]) == s0(?) and falls through when v0(=[sym(vec_polls_w)]) != s0(?).
  At `beq` at 0x6c04 (target 0x6d4c), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `beq` at 0x6c18 (target 0x6d34), taken when s3(?) >= 0x8 (signed) and falls through when s3(?) < 0x8 (signed).
  At `bne` at 0x6c30 (target 0x6cd0), taken when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566496]:8)) != 0 and falls through when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566496]:8)) == 0.
  At `blez` at 0x6c38 (target 0x6ca8), taken when v0(=[sym(vec_polls_w)]) <= 0 (signed) and falls through when v0(=[sym(vec_polls_w)]) > 0 (signed).
  At `beq` at 0x6c48 (target 0x6c80), taken when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) == 0 and falls through when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  At `beq` at 0x6c58 (target 0x6c80), taken when s0(?) >= v0(=[sym(vec_polls_w)]) (signed) and falls through when s0(?) < v0(=[sym(vec_polls_w)]) (signed).
  At `beq` at 0x6c68 (target 0x6c80), taken when (s1(=0x8000000000000000) & a3(=[(a1 << 0x21)-7926335344140566528]:8)) == 0 and falls through when (s1(=0x8000000000000000) & a3(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  At `bne` at 0x6c78 (target 0x6c40), taken when s0(?) < v0(=[sym(vec_polls_w)]) (signed) and falls through when s0(?) >= v0(=[sym(vec_polls_w)]) (signed).
  At `beq` at 0x6c80 (target 0x6cb0), taken when v0(=[sym(vec_polls_w)]) == s0(?) and falls through when v0(=[sym(vec_polls_w)]) != s0(?).
  At `bgtz` at 0x6c98 (target 0x6be0), taken when v0(=[sym(vec_polls_w)]) > 0 (signed) and falls through when v0(=[sym(vec_polls_w)]) <= 0 (signed).
  At `bne` at 0x6ca8 (target 0x6c88), taken when v0(=[sym(vec_polls_w)]) != 0 and falls through when v0(=[sym(vec_polls_w)]) == 0.
  At `bne` at 0x6cc0 (target 0x6c04), taken when v0(=[sym(vec_polls_w)]) != 0 and falls through when v0(=[sym(vec_polls_w)]) == 0.
  At `bne` at 0x6d18 (target 0x6d90), taken when a6(=a2) != a7(?) and falls through when a6(=a2) == a7(?).
  At `bne` at 0x6d2c (target 0x6d90), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0x6d5c (target 0x6d9c), taken when a0(?) == t8(=0x4) and falls through when a0(?) != t8(=0x4).
  At `beq` at 0x6d64 (target 0x6da4), taken when a0(?) == v0(=0x5) and falls through when a0(?) != v0(=0x5).
  At `beq` at 0x6d6c (target 0x6dac), taken when a0(?) == a4(=0x6) and falls through when a0(?) != a4(=0x6).
  At `beq` at 0x6d74 (target 0x6d84), taken when a0(?) == a5(=0x1) and falls through when a0(?) != a5(=0x1).
  At `beq` at 0x6d8c (target 0x6d0c), taken when t9(?) == ra(=0x7b) and falls through when t9(?) != ra(=0x7b).
  Returns v0 = ? (`jr` at 0x6d04).

- `vector_read_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6db4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6db4-0x7008 (596 bytes).
  Loads 8 bytes into s4 from sym(.lit8) +0x8 (`ld` at 0x6e04).
  Loads 8 bytes into s4 from sym(.lit8) +0x80 (`ld` at 0x6e24).
  Loads 8 bytes into s5 from (a1 << 0x21) -0x6dfffffffe1f3fe0 (`ld` at 0x6e48).
  Loads 8 bytes into at from (a1 << 0x21) -0x6dfffffffe1f3fe0 (`ld` at 0x6e78).
  4 such loads of 4 bytes through gp (gp) to sym(vec_polls_r) +0x0, including `lw` at 0x6e54, 0x6e58, 0x6e80.
  Loads 8 bytes into v0 from (a1 << 0x21) -0x6dfffffffe1f3fc8 (`ld` at 0x6e74).
  Loads 8 bytes into v1 from (a1 << 0x21) -0x6dfffffffe1f4000 (`ld` at 0x6e94).
  Loads 8 bytes into a1 from (a1 << 0x21) -0x6dfffffffe1f4000 (`ld` at 0x6eb4).
  Stores 8 bytes from s4 to (a1 << 0x21) -0x6dfffffffe1f3fd0  (`sd` at 0x6edc).
  Stores 8 bytes from s7 to (a1 << 0x21) -0x6dfffffffe1f3ff8  (`sd` at 0x6ee0).
  Stores 8 bytes from s6 to (a1 << 0x21) -0x6dfffffffe1f4000 (`sd` at 0x6ee4).
  Loads 8 bytes into t0 from (a1 << 0x21) -0x6dfffffffe1f3fd0 (`ld` at 0x6f88).
  Stores 8 bytes from t0 to a4 (arg4 at entry) +0x0  (`sd` at 0x6f8c).
  Calls `us_delay` via direct with a0=0x64, a1=?, a2=?, a3=? (`jal` at 0x6e40).
  Calls `us_delay` via direct with a0=0x64, a1=?, a2=?, a3=? (`jal` at 0x6f04).
  At `beq` at 0x6e38 (target 0x6e5c), taken when s0(?) >= v0(=[sym(vec_polls_r)]) (signed) and falls through when s0(?) < v0(=[sym(vec_polls_r)]) (signed).
  At `beq` at 0x6e50 (target 0x6e30), taken when (s1(=0x8000000000000000) & s5(=[(a1 << 0x21)-7926335344140566496]:8)) == 0 and falls through when (s1(=0x8000000000000000) & s5(=[(a1 << 0x21)-7926335344140566496]:8)) != 0.
  At `bne` at 0x6e5c (target 0x6f1c), taken when v0(=[sym(vec_polls_r)]) != s0(?) and falls through when v0(=[sym(vec_polls_r)]) == s0(?).
  At `beq` at 0x6e6c (target 0x6f94), taken when s3(?) >= 0x8 (signed) and falls through when s3(?) < 0x8 (signed).
  At `bne` at 0x6e84 (target 0x6f34), taken when (s1(=0x8000000000000000) & at(=[(a1 << 0x21)-7926335344140566496]:8)) != 0 and falls through when (s1(=0x8000000000000000) & at(=[(a1 << 0x21)-7926335344140566496]:8)) == 0.
  At `blez` at 0x6e8c (target 0x6efc), taken when v0(=[sym(vec_polls_r)]) <= 0 (signed) and falls through when v0(=[sym(vec_polls_r)]) > 0 (signed).
  At `beq` at 0x6e9c (target 0x6ed4), taken when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566528]:8)) == 0 and falls through when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  At `beq` at 0x6eac (target 0x6ed4), taken when s0(?) >= v0(=[sym(vec_polls_r)]) (signed) and falls through when s0(?) < v0(=[sym(vec_polls_r)]) (signed).
  At `beq` at 0x6ebc (target 0x6ed4), taken when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) == 0 and falls through when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  At `bne` at 0x6ecc (target 0x6e94), taken when s0(?) < v0(=[sym(vec_polls_r)]) (signed) and falls through when s0(?) >= v0(=[sym(vec_polls_r)]) (signed).
  At `beq` at 0x6ed4 (target 0x6f04), taken when v0(=[sym(vec_polls_r)]) == s0(?) and falls through when v0(=[sym(vec_polls_r)]) != s0(?).
  At `bgtz` at 0x6eec (target 0x6e40), taken when v0(=[sym(vec_polls_r)]) > 0 (signed) and falls through when v0(=[sym(vec_polls_r)]) <= 0 (signed).
  At `bne` at 0x6efc (target 0x6edc), taken when v0(=[sym(vec_polls_r)]) != 0 and falls through when v0(=[sym(vec_polls_r)]) == 0.
  At `beq` at 0x6f14 (target 0x6e64), taken when v0(=[sym(vec_polls_r)]) == 0 and falls through when v0(=[sym(vec_polls_r)]) != 0.
  At `bne` at 0x6f24 (target 0x6f38), taken when (s5(?) & a3(=0x4000000000000000)) != 0 and falls through when (s5(?) & a3(=0x4000000000000000)) == 0.
  At `bne` at 0x6f6c (target 0x6fe8), taken when a4(=a2) != a5(?) and falls through when a4(=a2) == a5(?).
  At `bne` at 0x6f80 (target 0x6fe8), taken when a6(?) != a7(?) and falls through when a6(?) == a7(?).
  At `beq` at 0x6fb0 (target 0x6ff0), taken when v0(?) == t3(=0x4) and falls through when v0(?) != t3(=0x4).
  At `beq` at 0x6fb8 (target 0x6ff8), taken when v0(?) == a0(=0x5) and falls through when v0(?) != a0(=0x5).
  At `beq` at 0x6fc0 (target 0x7000), taken when v0(?) == a5(=0x6) and falls through when v0(?) != a5(=0x6).
  At `beq` at 0x6fc8 (target 0x6fd8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x6fe0 (target 0x6f64), taken when t8(?) == t9(=0x1c8) and falls through when t8(?) != t9(=0x1c8).
  Returns v0 = ? (`jr` at 0x6f5c).

- `vector_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7008 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7008-0x7050 (72 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7020).
  Calls `vector_read_node` via direct with a0=a0 at entry (arg0), a1=ret(get_nasid), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3) (`jal` at 0x7038).
  Returns v0 = ret(vector_read_node) (`jr` at 0x7048).

- `vector_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7050 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7050-0x7098 (72 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7068).
  Calls `vector_write_node` via direct with a0=a0 at entry (arg0), a1=ret(get_nasid), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3) (`jal` at 0x7080).
  Returns v0 = ret(vector_write_node) (`jr` at 0x7090).

- `vector_length` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7098 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7098-0x70e0 (72 bytes).
  At `beq` at 0x70a0 (target 0x70d8), taken when (a0 & 0xf) == 0 and falls through when (a0 & 0xf) != 0.
  At `beq` at 0x70c0 (target 0x70d8), taken when (a0 & v1(?)) == 0 and falls through when (a0 & v1(?)) != 0.
  At `bne` at 0x70d0 (target 0x70b0), taken when (a0 & a1(?)) != 0 and falls through when (a0 & a1(?)) == 0.
  Returns v0 = ? (`jr` at 0x70d8).

- `vector_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x70e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x70e0-0x70f0 (16 bytes).
  Returns v0 = ? (`jr` at 0x70e8).

- `vector_prefix` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x70f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x70f0-0x7120 (48 bytes).
  At `beq` at 0x70f0 (target 0x7114), taken when a1 == 0 and falls through when a1 != 0.
  Returns v0 = ? (`jr` at 0x710c).
  Returns v0 = 0x0 (`jr` at 0x7118).

- `vector_modify` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7120 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7120-0x7140 (32 bytes).
  Returns v0 = ? (`jr` at 0x7138).

- `vector_reverse` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7140 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7140-0x7184 (68 bytes).
  At `beq` at 0x7140 (target 0x7178), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x7158 (target 0x7170), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x7168 (target 0x7148), taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns v0 = ? (`jr` at 0x7170).
  Returns v0 = 0x0 (`jr` at 0x717c).

- `vector_concat` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7184 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7184-0x71bc (56 bytes).
  Calls `vector_length` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7194).
  Returns v0 = ? (`jr` at 0x71b4).

- `net_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x71bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x71bc-0x7240 (132 bytes).
  Loads 8 bytes into a3 from sym(.srdata) +0xa0 (`ld` at 0x71bc).
  Loads 8 bytes into a0 from (sym(.rodata)+2744 + (a0+10 << 0x3)) +0x0 (`ld` at 0x71d8).
  Calls `(unknown callee)` via register with a0=[(sym(.rodata)+2744 + (a0+10 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+2744 (`jr` at 0x71dc).
  At `beq` at 0x71d0 (target 0x71e4), taken when v1(=a0+10) >= 0xb (unsigned) and falls through when v1(=a0+10) < 0xb (unsigned).

- `hub_vector_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7240 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7240-0x7330 (240 bytes).
  Loads 8 bytes into t9 from sym(.srdata) +0xa8 (`ld` at 0x7258).
  Loads 8 bytes into s1 from abs 0xffffffffffffc400 (`ld` at 0x7260).
  Loads 8 bytes into s1 from [-0x3c00]:8 +0x0 (`ld` at 0x7270).
  Loads 2 bytes into t9 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0x7278).
  Loads 8 bytes into s1 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0x7290).
  Loads 2 bytes into t8 from abs 0xffffffffffffc42a (`lh` at 0x729c).
  Stores 1 byte from t9 to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8594  (`sb` at 0x72f8).
  Stores 1 byte from zero to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8594  (`sb` at 0x7304).
  Calls `in_panic_mode` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x728c).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x72a8).
  Calls `vector_read_node` via direct with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x72f4).
  Calls `mutex_spinunlock` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=? (`jal` at 0x730c).
  Calls `mutex_spinlock` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=? (`jal` at 0x7320).
  At `beq` at 0x7294 (target 0x731c), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  At `beq` at 0x72a0 (target 0x72d4), taken when t8(=[-0x3bd6]:2) == s3(=a0) and falls through when t8(=[-0x3bd6]:2) != s3(=a0).
  At `beq` at 0x72b0 (target 0x7308), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  Returns v0 = ? (`jr` at 0x72cc).

- `hub_vector_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7330 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7330-0x7420 (240 bytes).
  Loads 8 bytes into t9 from sym(.srdata) +0xa8 (`ld` at 0x7348).
  Loads 8 bytes into s1 from abs 0xffffffffffffc400 (`ld` at 0x7350).
  Loads 8 bytes into s1 from [-0x3c00]:8 +0x0 (`ld` at 0x7360).
  Loads 2 bytes into t9 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0x7368).
  Loads 8 bytes into s1 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0x7380).
  Loads 2 bytes into t8 from abs 0xffffffffffffc42a (`lh` at 0x738c).
  Stores 1 byte from t9 to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8594  (`sb` at 0x73e4).
  Stores 1 byte from zero to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8594  (`sb` at 0x73f0).
  Calls `in_panic_mode` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x737c).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x7398).
  Calls `vector_write_node` via direct with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x73e0).
  Calls `mutex_spinunlock` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=? (`jal` at 0x73fc).
  Calls `mutex_spinlock` via direct with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=? (`jal` at 0x7410).
  At `beq` at 0x7384 (target 0x740c), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  At `beq` at 0x7390 (target 0x73c0), taken when t8(=[-0x3bd6]:2) == s3(=a0) and falls through when t8(=[-0x3bd6]:2) != s3(=a0).
  At `beq` at 0x73a0 (target 0x73f4), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  Returns v0 = ? (`jr` at 0x73b8).

- `cerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7674 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7674-0x7688 (20 bytes).
  Returns v0 = -0x1 (`jr` at 0x7680).

- `blkclr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x779c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x779c-0x77d8 (60 bytes).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x0  (`sdl` at 0x77a8).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x77cc).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x77d0).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x77d4).
  At `bne` at 0x77a0 (target 0x7820), taken when a1 < 0x8 (signed) and falls through when a1 >= 0x8 (signed).
  At `beq` at 0x77c0 (target 0x77e4), taken when (a1(?) & at(=-0x20)) == 0 and falls through when (a1(?) & at(=-0x20)) != 0.

- `bzero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x779c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x779c-0x7840 (164 bytes).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x0  (`sdl` at 0x77a8).
  7 such stores of 8 bytes through a0 (?) to ? (base unknown) , including `sd` at 0x77cc, 0x77d0, 0x77d4.
  Stores 8 bytes from zero to ? (base unknown)  (`sdr` at 0x781c).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0x782c).
  At `bne` at 0x77a0 (target 0x7820), taken when a1 < 0x8 (signed) and falls through when a1 >= 0x8 (signed).
  At `beq` at 0x77c0 (target 0x77e4), taken when (a1(?) & at(=-0x20)) == 0 and falls through when (a1(?) & at(=-0x20)) != 0.
  At `bne` at 0x77dc (target 0x77c8), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0x77e8 (target 0x77fc), taken when (a1(?) & 0x10) == 0 and falls through when (a1(?) & 0x10) != 0.
  At `beq` at 0x77fc (target 0x780c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x7810 (target 0x7838), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `blez` at 0x7820 (target 0x7838), taken when a1 <= 0 (signed) and falls through when a1 > 0 (signed).
  At `bne` at 0x7830 (target 0x7828), taken when a0(?) != a3(=(a0 + a1)) and falls through when a0(?) == a3(=(a0 + a1)).
  Returns v0 = ? (`jr` at 0x7818).
  Returns v0 = ? (`jr` at 0x7838).

- `bzero_end` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7840 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7840-0x7848 (8 bytes).
  Returns v0 = ? (`jr` at 0x7840).
- `bzerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7840 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7840-0x7848 (8 bytes).
  Returns v0 = ? (`jr` at 0x7840).

- `bcmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7848 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7848-0x7a0c (452 bytes).
  Loads 4 bytes into t0 from a0 (arg0 at entry) +0x0 (`lwl` at 0x7874).
  Loads 4 bytes into t1 from a1 (arg1 at entry) +0x0 (`lwl` at 0x787c).
  Loads 4 bytes into t0 from a0 (arg0 at entry) +0x3 (`lwr` at 0x7880).
  Loads 4 bytes into t1 from a1 (arg1 at entry) +0x3 (`lwr` at 0x7888).
  7 such loads of 4 bytes through a0 (?) to ? (base unknown), including `lw` at 0x78a4, 0x78bc, 0x78d0.
  8 such loads of 4 bytes through a1 (?) to ? (base unknown), including `lw` at 0x78ac, 0x78c4, 0x78d4.
  Loads 4 bytes into t0 from ? (base unknown) (`lwl` at 0x7958).
  Loads 4 bytes into t0 from ? (base unknown) (`lwl` at 0x79b8).
  Loads 4 bytes into t0 from ? (base unknown) (`lwr` at 0x795c).
  Loads 4 bytes into t0 from ? (base unknown) (`lwr` at 0x79c8).
  Loads 4 bytes into t1 from ? (base unknown) (`lwl` at 0x7960).
  Loads 4 bytes into t1 from ? (base unknown) (`lwr` at 0x7964).
  Loads 1 byte into t0 from ? (base unknown) (`lbu` at 0x7984).
  Loads 1 byte into t0 from ? (base unknown) (`lbu` at 0x79e4).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x798c).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x79ec).
  At `bne` at 0x7850 (target 0x79dc), taken when a2 < 0xb (signed) and falls through when a2 >= 0xb (signed).
  At `bne` at 0x7860 (target 0x7970), taken when (v0(?) & 0x3) != 0 and falls through when (v0(?) & 0x3) == 0.
  At `beq` at 0x786c (target 0x7894), taken when (t8(?) & 0x3) == 0 and falls through when (t8(?) & 0x3) != 0.
  At `bne` at 0x7890 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0x789c (target 0x78f8), taken when (a2(?) & at(=-0x10)) == 0 and falls through when (a2(?) & at(=-0x10)) != 0.
  At `bne` at 0x78b4 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78c8 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78d8 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78e8 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78f0 (target 0x78a4), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x78fc (target 0x792c), taken when (a2(?) & 0x8) == 0 and falls through when (a2(?) & 0x8) != 0.
  At `bne` at 0x7914 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x7924 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0x792c (target 0x794c), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x7944 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0x794c (target 0x7a04), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x7978 (target 0x79a4), taken when (a3(?) & 0x3) == 0 and falls through when (a3(?) & 0x3) != 0.
  At `bne` at 0x7994 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x799c (target 0x7984), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0x79ac (target 0x79dc), taken when (a2(?) & at(=-0x4)) == 0 and falls through when (a2(?) & at(=-0x4)) != 0.
  At `bne` at 0x79cc (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x79d4 (target 0x79b8), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `blez` at 0x79dc (target 0x7a04), taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  At `bne` at 0x79f4 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x79fc (target 0x79e4), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  Returns v0 = ? (`jr` at 0x7968).
  Returns v0 = 0x0 (`jr` at 0x7a04).

- `memcmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7848 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7848-0x7a0c (452 bytes).
  Loads 4 bytes into t0 from a0 (arg0 at entry) +0x0 (`lwl` at 0x7874).
  Loads 4 bytes into t1 from a1 (arg1 at entry) +0x0 (`lwl` at 0x787c).
  Loads 4 bytes into t0 from a0 (arg0 at entry) +0x3 (`lwr` at 0x7880).
  Loads 4 bytes into t1 from a1 (arg1 at entry) +0x3 (`lwr` at 0x7888).
  7 such loads of 4 bytes through a0 (?) to ? (base unknown), including `lw` at 0x78a4, 0x78bc, 0x78d0.
  8 such loads of 4 bytes through a1 (?) to ? (base unknown), including `lw` at 0x78ac, 0x78c4, 0x78d4.
  Loads 4 bytes into t0 from ? (base unknown) (`lwl` at 0x7958).
  Loads 4 bytes into t0 from ? (base unknown) (`lwl` at 0x79b8).
  Loads 4 bytes into t0 from ? (base unknown) (`lwr` at 0x795c).
  Loads 4 bytes into t0 from ? (base unknown) (`lwr` at 0x79c8).
  Loads 4 bytes into t1 from ? (base unknown) (`lwl` at 0x7960).
  Loads 4 bytes into t1 from ? (base unknown) (`lwr` at 0x7964).
  Loads 1 byte into t0 from ? (base unknown) (`lbu` at 0x7984).
  Loads 1 byte into t0 from ? (base unknown) (`lbu` at 0x79e4).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x798c).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x79ec).
  At `bne` at 0x7850 (target 0x79dc), taken when a2 < 0xb (signed) and falls through when a2 >= 0xb (signed).
  At `bne` at 0x7860 (target 0x7970), taken when (v0(?) & 0x3) != 0 and falls through when (v0(?) & 0x3) == 0.
  At `beq` at 0x786c (target 0x7894), taken when (t8(?) & 0x3) == 0 and falls through when (t8(?) & 0x3) != 0.
  At `bne` at 0x7890 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0x789c (target 0x78f8), taken when (a2(?) & at(=-0x10)) == 0 and falls through when (a2(?) & at(=-0x10)) != 0.
  At `bne` at 0x78b4 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78c8 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78d8 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78e8 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x78f0 (target 0x78a4), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x78fc (target 0x792c), taken when (a2(?) & 0x8) == 0 and falls through when (a2(?) & 0x8) != 0.
  At `bne` at 0x7914 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x7924 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0x792c (target 0x794c), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x7944 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `beq` at 0x794c (target 0x7a04), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x7978 (target 0x79a4), taken when (a3(?) & 0x3) == 0 and falls through when (a3(?) & 0x3) != 0.
  At `bne` at 0x7994 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x799c (target 0x7984), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `beq` at 0x79ac (target 0x79dc), taken when (a2(?) & at(=-0x4)) == 0 and falls through when (a2(?) & at(=-0x4)) != 0.
  At `bne` at 0x79cc (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x79d4 (target 0x79b8), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `blez` at 0x79dc (target 0x7a04), taken when a2(?) <= 0 (signed) and falls through when a2(?) > 0 (signed).
  At `bne` at 0x79f4 (target 0x7968), taken when t0(?) != t1(?) and falls through when t0(?) == t1(?).
  At `bne` at 0x79fc (target 0x79e4), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  Returns v0 = ? (`jr` at 0x7968).
  Returns v0 = 0x0 (`jr` at 0x7a04).

- `fubyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b10-0x7b2c (28 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7b14).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b1c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b28).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x0 (`lbu` at 0x7b20).
  At `bltz` at 0x7b10 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = [a0]:1 (`jr` at 0x7b24).

- `fuibyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b10-0x7b2c (28 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7b14).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b1c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b28).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x0 (`lbu` at 0x7b20).
  At `bltz` at 0x7b10 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = [a0]:1 (`jr` at 0x7b24).

- `subyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b70 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b70-0x7b90 (32 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7b74).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b7c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b84).
  Stores 1 byte from a1 to a0 (arg0 at entry) +0x0  (`sb` at 0x7b80).
  At `bltz` at 0x7b70 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = 0x0 (`jr` at 0x7b88).

- `suibyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b70 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b70-0x7b90 (32 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7b74).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b7c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b84).
  Stores 1 byte from a1 to a0 (arg0 at entry) +0x0  (`sb` at 0x7b80).
  At `bltz` at 0x7b70 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = 0x0 (`jr` at 0x7b88).

- `fuiword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b90 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b90-0x7bb0 (32 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7b94).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b9c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7ba4).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`lw` at 0x7ba0).
  At `bltz` at 0x7b90 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = [a0] (`jr` at 0x7ba8).

- `fuword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b90 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b90-0x7bb0 (32 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7b94).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7b9c).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7ba4).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x0 (`lw` at 0x7ba0).
  At `bltz` at 0x7b90 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = [a0] (`jr` at 0x7ba8).

- `suiword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c54 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7c54-0x7c74 (32 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7c58).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7c60).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7c68).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x0  (`sw` at 0x7c64).
  At `bltz` at 0x7c54 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = 0x0 (`jr` at 0x7c6c).

- `suword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c54 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7c54-0x7c74 (32 bytes).
  Loads 8 bytes into t0 from abs 0xffffffffffffc020 (`ld` at 0x7c58).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6  (`sh` at 0x7c60).
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6  (`sh` at 0x7c68).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x0  (`sw` at 0x7c64).
  At `bltz` at 0x7c54 (target 0x7ccc), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  Returns v0 = 0x0 (`jr` at 0x7c6c).

- `uerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7ccc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7ccc-0x7cd4 (8 bytes).
  Returns v0 = -0x1 (`jr` at 0x7ccc).

- `memcpy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e2c-0x82cc (1184 bytes).
  Loads 8 bytes into v0 from a1 (arg1 at entry) +0x0 (`ldl` at 0x7e78).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x0 (`sdl` at 0x7e88).
  16 such loads of 8 bytes through a0 (?) to ? (base unknown), including `ld` at 0x7ea4, 0x7ea8, 0x7eb0.
  16 such stores of 8 bytes through a1 (?) to ? (base unknown), including `sd` at 0x7ed0, 0x7ed4, 0x7ed8.
  Loads 4 bytes into v0 from a1 (arg1 at entry) +0x0 (`lwl` at 0x7f68).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x0 (`swl` at 0x7f78).
  28 such loads of 4 bytes through a0 (?) to ? (base unknown), including `lw` at 0x7f94, 0x7f9c, 0x7fa4.
  35 such stores of 4 bytes through a1 (?) to ? (base unknown), including `sw` at 0x7fbc, 0x7fc0, 0x7fc4.
  8 such loads of 4 bytes through a0 (?) to ? (base unknown), including `lwr` at 0x8060, 0x80b8, 0x80c4.
  Stores 4 bytes from t0 to ? (base unknown) (`swr` at 0x8070).
  Loads 1 byte into v0 from ? (base unknown) (`lb` at 0x8088).
  Loads 1 byte into v0 from ? (base unknown) (`lb` at 0x8140).
  Loads 1 byte into v0 from ? (base unknown) (`lb` at 0x8190).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x8098).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x8150).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x81a0).
  7 such loads of 4 bytes through a0 (?) to ? (base unknown), including `lwl` at 0x80b0, 0x80c0, 0x80cc.
  Loads 1 byte into v0 from (a1 + a2) -0x1 (`lb` at 0x81c4).
  Loads 1 byte into v0 from (a1 + a2) -0x1 (`lb` at 0x81f4).
  Stores 1 byte from v0 to (a0 + a2) -0x1  (`sb` at 0x81d8).
  Loads 2 bytes into v0 from (a1 + a2) -0x2 (`lh` at 0x81dc).
  Stores 2 bytes from v0 to (a0 + a2) -0x2  (`sh` at 0x81f0).
  Loads 2 bytes into v1 from (a1 + a2) -0x3 (`lh` at 0x81fc).
  Stores 1 byte from v0 to (a0 + a2) -0x1  (`sb` at 0x8208).
  Stores 2 bytes from v1 to (a0 + a2) -0x3  (`sh` at 0x820c).
  At `beq` at 0x7e40 (target 0x7e50), taken when a0(=a1) >= a1(=a0) (signed) and falls through when a0(=a1) < a1(=a0) (signed).
  At `bne` at 0x7e4c (target 0x815c), taken when a1(=a0) < v0(=(a1 + a2)) (signed) and falls through when a1(=a0) >= v0(=(a1 + a2)) (signed).
  At `bne` at 0x7e54 (target 0x8138), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x7e68 (target 0x7f4c), taken when v0(?) != v1(?) and falls through when v0(?) == v1(?).
  At `beq` at 0x7e70 (target 0x7e90), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x7e98 (target 0x7f80), taken when (a2(?) & at(=-0x40)) == 0 and falls through when (a2(?) & at(=-0x40)) != 0.
  At `beq` at 0x7eec (target 0x7f44), taken when a3(?) == a1(?) and falls through when a3(?) != a1(?).
  At `bne` at 0x7f3c (target 0x7ea4), taken when a3(?) != a1(?) and falls through when a3(?) == a1(?).
  At `bne` at 0x7f58 (target 0x8074), taken when v0(?) != v1(?) and falls through when v0(?) == v1(?).
  At `beq` at 0x7f60 (target 0x7f80), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x7f88 (target 0x7fe0), taken when (a2(?) & at(=-0x20)) == 0 and falls through when (a2(?) & at(=-0x20)) != 0.
  At `bne` at 0x7fd8 (target 0x7f94), taken when a3(?) != a1(?) and falls through when a3(?) == a1(?).
  At `beq` at 0x7fe4 (target 0x8014), taken when (a2(?) & 0x10) == 0 and falls through when (a2(?) & 0x10) != 0.
  At `beq` at 0x8018 (target 0x8038), taken when (a2(?) & 0x8) == 0 and falls through when (a2(?) & 0x8) != 0.
  At `beq` at 0x803c (target 0x8054), taken when (a2(?) & 0x4) == 0 and falls through when (a2(?) & 0x4) != 0.
  At `beq` at 0x8058 (target 0x8154), taken when (a2(?) & 0x3) == 0 and falls through when (a2(?) & 0x3) != 0.
  At `beq` at 0x8074 (target 0x809c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x8094 (target 0x8088), taken when a1(?) != a3(?) and falls through when a1(?) == a3(?).
  At `beq` at 0x80a4 (target 0x80ec), taken when (a2(?) & at(=-0x10)) == 0 and falls through when (a2(?) & at(=-0x10)) != 0.
  At `bne` at 0x80e4 (target 0x80b0), taken when a3(?) != a1(?) and falls through when a3(?) == a1(?).
  At `beq` at 0x80f0 (target 0x8118), taken when (a2(?) & 0x8) == 0 and falls through when (a2(?) & 0x8) != 0.
  At `beq` at 0x811c (target 0x8138), taken when (a2(?) & 0x4) == 0 and falls through when (a2(?) & 0x4) != 0.
  At `beq` at 0x8138 (target 0x8154), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x814c (target 0x8140), taken when a0(?) != a3(?) and falls through when a0(?) == a3(?).
  At `bne` at 0x8164 (target 0x817c), taken when a2 < 0xc (signed) and falls through when a2 >= 0xc (signed).
  At `beq` at 0x8174 (target 0x81ac), taken when v0(?) == v1(?) and falls through when v0(?) != v1(?).
  At `beq` at 0x817c (target 0x8154), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x819c (target 0x8190), taken when a0(?) != v1(?) and falls through when a0(?) == v1(?).
  At `beq` at 0x81ac (target 0x8210), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x81b4 (target 0x81f4), taken when v0(?) == at(=0x3) and falls through when v0(?) != at(=0x3).
  At `beq` at 0x81bc (target 0x81dc), taken when v0(?) == at(=0x2) and falls through when v0(?) != at(=0x2).
  At `bne` at 0x8214 (target 0x826c), taken when a2(?) < 0x20 (signed) and falls through when a2(?) >= 0x20 (signed).
  At `bne` at 0x8270 (target 0x82a8), taken when a2(?) < 0x10 (signed) and falls through when a2(?) >= 0x10 (signed).
  At `bne` at 0x82ac (target 0x817c), taken when a2(?) < 0x4 (signed) and falls through when a2(?) >= 0x4 (signed).
  Returns v0 = a0 (`jr` at 0x806c).
  Returns v0 = a0 (`jr` at 0x8154).
  Returns v0 = a0 (`jr` at 0x81a4).

- `memmove` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e2c-0x7e38 (12 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x7e2c-0x7e38.

- `bcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e38 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e38-0x7eac (116 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`ldl` at 0x7e78).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x0 (`sdl` at 0x7e88).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0x7ea4).
  Loads 8 bytes into t2 from ? (base unknown) (`ld` at 0x7ea8).
  At `beq` at 0x7e40 (target 0x7e50), taken when a0 >= a1 (signed) and falls through when a0 < a1 (signed).
  At `bne` at 0x7e4c (target 0x815c), taken when a1 < v0(=(a0 + a2)) (signed) and falls through when a1 >= v0(=(a0 + a2)) (signed).
  At `bne` at 0x7e54 (target 0x8138), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x7e68 (target 0x7f4c), taken when v0(?) != v1(?) and falls through when v0(?) == v1(?).
  At `beq` at 0x7e70 (target 0x7e90), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x7e98 (target 0x7f80), taken when (a2(?) & at(=-0x40)) == 0 and falls through when (a2(?) & at(=-0x40)) != 0.

- `ovbcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e38 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e38-0x7eac (116 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`ldl` at 0x7e78).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x0 (`sdl` at 0x7e88).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0x7ea4).
  Loads 8 bytes into t2 from ? (base unknown) (`ld` at 0x7ea8).
  At `beq` at 0x7e40 (target 0x7e50), taken when a0 >= a1 (signed) and falls through when a0 < a1 (signed).
  At `bne` at 0x7e4c (target 0x815c), taken when a1 < v0(=(a0 + a2)) (signed) and falls through when a1 >= v0(=(a0 + a2)) (signed).
  At `bne` at 0x7e54 (target 0x8138), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x7e68 (target 0x7f4c), taken when v0(?) != v1(?) and falls through when v0(?) == v1(?).
  At `beq` at 0x7e70 (target 0x7e90), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x7e98 (target 0x7f80), taken when (a2(?) & at(=-0x40)) == 0 and falls through when (a2(?) & at(=-0x40)) != 0.

- `bcopy_pref1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7eac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7eac-0x7efc (80 bytes).
  Loads 8 bytes into t1 from a0 (arg0 at entry) +0x8 (`ld` at 0x7eb0).
  Loads 8 bytes into t3 from a0 (arg0 at entry) +0x18 (`ld` at 0x7eb8).
  Loads 8 bytes into a4 from a0 (arg0 at entry) +0x20 (`ld` at 0x7ec0).
  Loads 8 bytes into a6 from a0 (arg0 at entry) +0x30 (`ld` at 0x7ec4).
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x28 (`ld` at 0x7ec8).
  Loads 8 bytes into a7 from a0 (arg0 at entry) +0x38 (`ld` at 0x7ecc).
  Stores 8 bytes from t2 to a1 (arg1 at entry) +0x10  (`sd` at 0x7ed0).
  Stores 8 bytes from t0 to a1 (arg1 at entry) +0x0  (`sd` at 0x7ed4).
  Stores 8 bytes from t1 to a1 (arg1 at entry) +0x8  (`sd` at 0x7ed8).
  Stores 8 bytes from t3 to a1 (arg1 at entry) +0x18  (`sd` at 0x7edc).
  Stores 8 bytes from a4 to a1 (arg1 at entry) +0x20  (`sd` at 0x7ee0).
  Stores 8 bytes from a6 to a1 (arg1 at entry) +0x30  (`sd` at 0x7ee4).
  Stores 8 bytes from a5 to a1 (arg1 at entry) +0x28  (`sd` at 0x7ee8).
  Stores 8 bytes from a7 to a1 (arg1 at entry) +0x38  (`sd` at 0x7ef0).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x40 (`ld` at 0x7ef4).
  Loads 8 bytes into t2 from a0 (arg0 at entry) +0x50 (`ld` at 0x7ef8).
  At `beq` at 0x7eec (target 0x7f44), taken when a3 == a1(=a1+64) and falls through when a3 != a1(=a1+64).

- `bcopy_end` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x82cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x82cc-0x8304 (56 bytes).
  Loads 1 byte into v0 from ? (base unknown) (`lb` at 0x82dc).
  Loads 1 byte into v1 from ? (base unknown) (`lb` at 0x82e4).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x82f0).
  Stores 1 byte from v1 to ? (base unknown) (`sb` at 0x82f8).
  At `beq` at 0x82cc (target 0x82fc), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x82d4 (target 0x82fc), taken when a0 == a1 and falls through when a0 != a1.
  At `bgtz` at 0x82f4 (target 0x82dc), taken when a2(?) > 0 (signed) and falls through when a2(?) <= 0 (signed).
  Returns v0 = ? (`jr` at 0x82fc).

- `swbcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x82cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x82cc-0x8304 (56 bytes).
  Loads 1 byte into v0 from ? (base unknown) (`lb` at 0x82dc).
  Loads 1 byte into v1 from ? (base unknown) (`lb` at 0x82e4).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x82f0).
  Stores 1 byte from v1 to ? (base unknown) (`sb` at 0x82f8).
  At `beq` at 0x82cc (target 0x82fc), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x82d4 (target 0x82fc), taken when a0 == a1 and falls through when a0 != a1.
  At `bgtz` at 0x82f4 (target 0x82dc), taken when a2(?) > 0 (signed) and falls through when a2(?) <= 0 (signed).
  Returns v0 = ? (`jr` at 0x82fc).

- `pl_strncpy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8384 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8384-0x83e8 (100 bytes).
  Loads 1 byte into at from ? (base unknown) (`lbu` at 0x8394).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x83bc).
  Stores 1 byte from at to ? (base unknown) (`sb` at 0x83a0).
  Stores 1 byte from t1 to ? (base unknown) (`sb` at 0x83c8).
  At `beq` at 0x839c (target 0x83d4), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x83b4 (target 0x83d4), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x83c4 (target 0x83d4), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bne` at 0x83cc (target 0x8394), taken when a7(?) != 0 and falls through when a7(?) == 0.
  Returns v0 = a0 (`jr` at 0x83d4).

- `get_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x83e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x83e8-0x8488 (160 bytes).
  Loads 4 bytes into at from a0 (arg0 at entry) +0xac (`lw` at 0x83e8).
  Loads 4 bytes into a6 from a0 (arg0 at entry) +0xb4 (`lw` at 0x83ec).
  Loads 4 bytes into v1 from a0 (arg0 at entry) +0xb0 (`lw` at 0x8410).
  Loads 4 bytes into a0 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8420).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xa8 (`lw` at 0x8430).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xb4 (`lw` at 0x8470).
  Loads 8 bytes into a0 from sym(.srdata) +0xb0 (`ld` at 0x847c).
  Calls `fprom_read` via direct with a0=a0 at entry (arg0), a1=[a0+180], a2=a0+184, a3=a1 at entry (arg1), a6=[a0+180] (`jal` at 0x8444).
  Calls `fprom_errmsg` via direct with a0=ret(fprom_read), a1=?, a2=?, a3=? (`jal` at 0x8468).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=[a0+180], a2=ret(fprom_errmsg), a3=? (`jal` at 0x8478).
  At `bne` at 0x8408 (target 0x8420), taken when a6(=[a0+180]) < at(=[a0+172]) (unsigned) and falls through when a6(=[a0+180]) >= at(=[a0+172]) (unsigned).
  At `bne` at 0x8418 (target 0x8440), taken when a6(=[a0+180]) < v1(=[a0+176]) (unsigned) and falls through when a6(=[a0+180]) >= v1(=[a0+176]) (unsigned).
  At `bne` at 0x8428 (target 0x8458), taken when a6(=[a0+180]) < a0(=[a0+164]) (unsigned) and falls through when a6(=[a0+180]) >= a0(=[a0+164]) (unsigned).
  At `beq` at 0x8438 (target 0x8458), taken when a6(=[a0+180]) >= a1(=[a0+168]) (unsigned) and falls through when a6(=[a0+180]) < a1(=[a0+168]) (unsigned).
  At `bltz` at 0x844c (target 0x8468), taken when v0(=ret(fprom_read)) < 0 (signed) and falls through when v0(=ret(fprom_read)) >= 0 (signed).
  Returns v0 = one of -0x3, -0x1, 0x0 (`jr` at 0x8460).

- `get_header` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8488 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8488-0x84e8 (96 bytes).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0x98 (`lw` at 0x8490).
  Loads 8 bytes into a0 from sym(.srdata) +0xb0 (`ld` at 0x84cc).
  Calls `fprom_read` via direct with a0=a0 at entry (arg0), a1=(([a0+152] + a1) << 0x10), a2=a2 at entry (arg2), a3=0x1c, a4=[a0+152] (`jal` at 0x84a4).
  Calls `fprom_errmsg` via direct with a0=ret(fprom_read), a1=?, a2=?, a3=? (`jal` at 0x84c4).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=a1 at entry (arg1), a2=ret(fprom_errmsg), a3=? (`jal` at 0x84d8).
  At `bltz` at 0x84ac (target 0x84c4), taken when v0(=ret(fprom_read)) < 0 (signed) and falls through when v0(=ret(fprom_read)) >= 0 (signed).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x84bc).

- `put_header` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x84e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x84e8-0x8548 (96 bytes).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0x98 (`lw` at 0x84f0).
  Loads 8 bytes into a0 from sym(.srdata) +0xb0 (`ld` at 0x852c).
  Calls `fprom_write` via direct with a0=a0 at entry (arg0), a1=(([a0+152] + a1) << 0x10), a2=a2 at entry (arg2), a3=0x1c, a4=[a0+152] (`jal` at 0x8504).
  Calls `fprom_errmsg` via direct with a0=ret(fprom_write), a1=?, a2=?, a3=? (`jal` at 0x8524).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=a1 at entry (arg1), a2=ret(fprom_errmsg), a3=? (`jal` at 0x8538).
  At `bltz` at 0x850c (target 0x8524), taken when v0(=ret(fprom_write)) < 0 (signed) and falls through when v0(=ret(fprom_write)) >= 0 (signed).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x851c).

- `swap_log_alt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8548 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8548-0x8580 (56 bytes).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8548).
  Loads 4 bytes into a2 from a0 (arg0 at entry) +0xb0 (`lw` at 0x854c).
  Loads 4 bytes into a3 from a0 (arg0 at entry) +0xa8 (`lw` at 0x8550).
  Loads 4 bytes into v1 from a0 (arg0 at entry) +0xac (`lw` at 0x8554).
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0xb4  (`sw` at 0x8558).
  Stores 4 bytes from a3 to a0 (arg0 at entry) +0xb0  (`sw` at 0x855c).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0xa8  (`sw` at 0x8560).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0xac  (`sw` at 0x8564).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xa0 (`lw` at 0x8568).
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0xa4  (`sw` at 0x8570).
  Stores 4 bytes from at to a0 (arg0 at entry) +0xa0 (`sw` at 0x857c).
  Returns v0 = [a0+160] (`jr` at 0x8578).

- `set_ranges` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8580 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8580-0x85b8 (56 bytes).
  Loads 4 bytes into at from a0 (arg0 at entry) +0x98 (`lw` at 0x8580).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0xb0  (`sw` at 0x8598).
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0xac  (`sw` at 0x85a0).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0xa8  (`sw` at 0x85a8).
  Stores 4 bytes from at to a0 (arg0 at entry) +0xa4  (`sw` at 0x85b4).
  Returns v0 = ([a0+152] << 0x10)+65536 (`jr` at 0x85b0).
- `promlog_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x85b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x85b8-0x8694 (220 bytes).
  Stores 4 bytes from s8 to a0 (arg0 at entry) +0x98  (`sw` at 0x85e4).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xa0  (`sw` at 0x85e8).
  Stores 4 bytes from at to a0 (arg0 at entry) +0x9c  (`sw` at 0x85f8).
  Loads 4 bytes into a2 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8684).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0xb4  (`sw` at 0x8690).
  Calls `bcopy` via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x98, a3=a3 at entry (arg3) (`jal` at 0x85dc).
  Calls `set_ranges [0x8580]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x85f4).
  Calls `get_header [0x8488]` via direct with a0=a0 at entry (arg0), a1=0x0, a2=sp-96, a3=? (`jal` at 0x8604).
  Calls `get_header [0x8488]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=sp-64, a3=? (`jal` at 0x861c).
  Calls `swap_log_alt [0x8548]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x504c4f49, a4=0x504c0000 (`jal` at 0x867c).
  At `bltz` at 0x860c (target 0x864c), taken when v0(=ret(get_header)) < 0 (signed) and falls through when v0(=ret(get_header)) >= 0 (signed).
  At `bltz` at 0x8628 (target 0x864c), taken when v0(=ret(get_header)) < 0 (signed) and falls through when v0(=ret(get_header)) >= 0 (signed).
  At `beq` at 0x863c (target 0x8664), taken when a3(=0x504c4f49) == v1(?) and falls through when a3(=0x504c4f49) != v1(?).
  At `beq` at 0x8644 (target 0x867c), taken when a3(=0x504c4f49) == v0(?) and falls through when a3(=0x504c4f49) != v0(?).
  At `bne` at 0x8664 (target 0x8684), taken when a3(=0x504c4f49) != v0(?) and falls through when a3(=0x504c4f49) == v0(?).
  At `beq` at 0x8674 (target 0x8684), taken when a0(?) >= a1(?) (unsigned) and falls through when a0(?) < a1(?) (unsigned).
  Returns v0 = ? (`jr` at 0x865c).

- `promlog_clear` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8694 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8694-0x87f4 (352 bytes).
  Loads 4 bytes into a3 from a0 (arg0 at entry) +0x98 (`lw` at 0x8728).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0xa0  (`sw` at 0x874c).
  Loads 4 bytes into a6 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8760).
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0xb4  (`sw` at 0x876c).
  Loads 8 bytes into a0 from sym(.srdata) +0xb0 (`ld` at 0x87bc).
  Calls `get_header [0x8488]` via direct with a0=a0 at entry (arg0), a1=0x0, a2=sp-80, a3=a3 at entry (arg3) (`jal` at 0x86ac).
  Calls `get_header [0x8488]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=sp-48, a3=? (`jal` at 0x86c4).
  Calls `fprom_flash_sectors` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+152]+1, a5=-0x1 (`jal` at 0x873c).
  Calls `set_ranges [0x8580]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x8750).
  Calls `put_header [0x84e8]` via direct with a0=a0 at entry (arg0), a1=0x0, a2=sp-80, a3=?, a6=[a0+164] (`jal` at 0x8768).
  Calls `promlog_compact` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8794).
  Calls `promlog_compact` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x87a4).
  Calls `fprom_errmsg` via direct with a0=ret(fprom_flash_sectors), a1=?, a2=?, a3=? (`jal` at 0x87b4).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=ret(fprom_errmsg), a2=?, a3=? (`jal` at 0x87c4).
  At `beq` at 0x86a0 (target 0x8794), taken when a1 == 0 and falls through when a1 != 0.
  At `bltz` at 0x86b4 (target 0x8780), taken when v0(=ret(get_header)) < 0 (signed) and falls through when v0(=ret(get_header)) >= 0 (signed).
  At `bltz` at 0x86d0 (target 0x8780), taken when v0(=ret(get_header)) < 0 (signed) and falls through when v0(=ret(get_header)) >= 0 (signed).
  At `beq` at 0x86ec (target 0x87d4), taken when v0(=0x504c4f49) == at(?) and falls through when v0(=0x504c4f49) != at(?).
  At `bltz` at 0x8744 (target 0x87b4), taken when v0(=ret(fprom_flash_sectors)) < 0 (signed) and falls through when v0(=ret(fprom_flash_sectors)) >= 0 (signed).
  At `bltz` at 0x879c (target 0x8780), taken when v0(=ret(promlog_compact)) < 0 (signed) and falls through when v0(=ret(promlog_compact)) >= 0 (signed).
  At `beq` at 0x87d4 (target 0x87e8), taken when v0(=0x504c4f49) == a0(?) and falls through when v0(=0x504c4f49) != a0(?).
  Returns v0 = ? (`jr` at 0x878c).

- `promlog_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x87f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x87f4-0x882c (56 bytes).
  Loads 4 bytes into a2 from a0 (arg0 at entry) +0xb8 (`lw` at 0x8818).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8800).
  At `bltz` at 0x880c (target 0x8820), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x8824).

- `promlog_first` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x882c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x882c-0x88d8 (172 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xa4 (`lw` at 0x884c).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0xb4 (`sw` at 0x885c).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb8 (`lw` at 0x8870).
  Loads 4 bytes into a0 from a0 (arg0 at entry) +0xb8 (`lw` at 0x88b0).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xac (`lw` at 0x88d4).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8858).
  Calls `promlog_next` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=0xf (`jal` at 0x88a8).
  At `beq` at 0x8844 (target 0x88d0), taken when a1 == at(=0x3) and falls through when a1 != at(=0x3).
  At `bltz` at 0x8868 (target 0x888c), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  At `beq` at 0x8878 (target 0x88a4), taken when a4(=0xf) == v0(?) and falls through when a4(=0xf) != v0(?).
  At `beq` at 0x8880 (target 0x8890), taken when s1(=a1) == a1(=0x62) and falls through when s1(=a1) != a1(=0x62).
  At `bne` at 0x8888 (target 0x88a4), taken when s1(=a1) != v0(?) and falls through when s1(=a1) == v0(?).
  Returns v0 = ? (`jr` at 0x889c).

- `promlog_prev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x88d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x88d8-0x8a18 (320 bytes).
  Loads 4 bytes into at from a0 (arg0 at entry) +0xac (`lw` at 0x88d8).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb4 (`lw` at 0x88dc).
  Loads 4 bytes into v1 from a0 (arg0 at entry) +0xb0 (`lw` at 0x8900).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8938).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0xa4 (`lw` at 0x89c0).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0xb4  (`sw` at 0x8940).
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0xb4  (`sw` at 0x89e8).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb4 (`lw` at 0x894c).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb4 (`lw` at 0x89f8).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xac (`lw` at 0x8958).
  Loads 4 bytes into a6 from a0 (arg0 at entry) +0xac (`lw` at 0x89dc).
  Loads 4 bytes into a7 from a0 (arg0 at entry) +0xac (`lw` at 0x89fc).
  Stores 4 bytes from a2 to a0 (arg0 at entry) +0xb4 (`sw` at 0x8970).
  Loads 4 bytes into a3 from a0 (arg0 at entry) +0xb8 (`lw` at 0x8984).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=? (`jal` at 0x896c).
  Calls `promlog_last` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?, a4=[a0+164], a5=0x3, a6=[a0+172] (`jal` at 0x89e4).
  At `bne` at 0x88f8 (target 0x8918), taken when v0(=[a0+180]) < at(=[a0+172]) (unsigned) and falls through when v0(=[a0+180]) >= at(=[a0+172]) (unsigned).
  At `beq` at 0x8908 (target 0x8918), taken when v0(=[a0+180]) >= v1(=[a0+176]) (unsigned) and falls through when v0(=[a0+180]) < v1(=[a0+176]) (unsigned).
  At `beq` at 0x8920 (target 0x8a10), taken when s2(=one of 0x0, 0x1) == 0 and falls through when s2(=one of 0x0, 0x1) != 0.
  At `beq` at 0x8928 (target 0x8944), taken when s1(=a1) == a0(=0x3) and falls through when s1(=a1) != a0(=0x3).
  At `beq` at 0x8930 (target 0x8944), taken when s1(=a1) == s3(=0x62) and falls through when s1(=a1) != s3(=0x62).
  At `beq` at 0x8950 (target 0x89c0), taken when s2(=one of 0x0, 0x1) == 0 and falls through when s2(=one of 0x0, 0x1) != 0.
  At `beq` at 0x895c (target 0x899c), taken when a1(=[a0+172]) == v0(?) and falls through when a1(=[a0+172]) != v0(?).
  At `bltz` at 0x8974 (target 0x89a0), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  At `beq` at 0x897c (target 0x8994), taken when s1(=a1) == s3(=0x62) and falls through when s1(=a1) != s3(=0x62).
  At `bne` at 0x898c (target 0x894c), taken when s1(=a1) != a3(?) and falls through when s1(=a1) == a3(?).
  At `bne` at 0x89c4 (target 0x8964), taken when a4(=[a0+164]) != v0(?) and falls through when a4(=[a0+164]) == v0(?).
  At `bne` at 0x89cc (target 0x89a0), taken when s1(=a1) != a5(=0x3) and falls through when s1(=a1) == a5(=0x3).
  At `bne` at 0x89d4 (target 0x89a0), taken when s1(=a1) != s3(=0x62) and falls through when s1(=a1) == s3(=0x62).
  At `bltz` at 0x89f0 (target 0x89a0), taken when v0(=ret(promlog_last)) < 0 (signed) and falls through when v0(=ret(promlog_last)) >= 0 (signed).
  At `beq` at 0x8a00 (target 0x89a0), taken when a7(=[a0+172]) == v0(=[a0+180]) and falls through when a7(=[a0+172]) != v0(=[a0+180]).
  Returns v0 = ? (`jr` at 0x89b8).

- `promlog_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8a18 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8a18-0x8b6c (340 bytes).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0xb0 (`lw` at 0x8a18).
  Loads 4 bytes into at from a0 (arg0 at entry) +0xac (`lw` at 0x8a28).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb4 (`lw` at 0x8a2c).
  5 such loads of 4 bytes through s0 (a0) to a0 (arg0 at entry) +0xa4, including `lw` at 0x8a80, 0x8a94, 0x8aa4.
  4 such stores of 4 bytes through s0 (a0) to a0 (arg0 at entry) +0xb4 , including `sw` at 0x8a8c, 0x8aac, 0x8aec.
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb4 (`lw` at 0x8acc).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0xb0 (`lw` at 0x8ad0).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0xb4 (`sw` at 0x8ae0).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xa8 (`lw` at 0x8af0).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb8 (`lw` at 0x8b10).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=? (`jal` at 0x8b00).
  At `bne` at 0x8a4c (target 0x8a64), taken when v0(=[a0+180]) < at(=[a0+172]) (unsigned) and falls through when v0(=[a0+180]) >= at(=[a0+172]) (unsigned).
  At `bne` at 0x8a5c (target 0x8a68), taken when v0(=[a0+180]) < a4(=[a0+176]) (unsigned) and falls through when v0(=[a0+180]) >= a4(=[a0+176]) (unsigned).
  At `beq` at 0x8a68 (target 0x8a98), taken when s1(=one of 0x0, 0x1) == 0 and falls through when s1(=one of 0x0, 0x1) != 0.
  At `beq` at 0x8a70 (target 0x8a9c), taken when s2(=a1) == a5(=0x3) and falls through when s2(=a1) != a5(=0x3).
  At `beq` at 0x8a78 (target 0x8a9c), taken when s2(=a1) == s4(=0x62) and falls through when s2(=a1) != s4(=0x62).
  At `bne` at 0x8a88 (target 0x8ab0), taken when v0(=[a0+164]) != a4(=[a0+176]) and falls through when v0(=[a0+164]) == a4(=[a0+176]).
  At `bne` at 0x8a9c (target 0x8ab4), taken when v0(=[a0+180]) != a4(=[a0+176]) and falls through when v0(=[a0+180]) == a4(=[a0+176]).
  At `beq` at 0x8abc (target 0x8b5c), taken when s2(=a1) == s4(=0x62) and falls through when s2(=a1) != s4(=0x62).
  At `beq` at 0x8ac4 (target 0x8b5c), taken when s2(=a1) == v0(?) and falls through when s2(=a1) != v0(?).
  At `bne` at 0x8adc (target 0x8af0), taken when a4(=[a0+176]) != a0(?) and falls through when a4(=[a0+176]) == a0(?).
  At `beq` at 0x8af4 (target 0x8b38), taken when a1(=[a0+168]) == v0(?) and falls through when a1(=[a0+168]) != v0(?).
  At `bltz` at 0x8b08 (target 0x8b38), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  At `bne` at 0x8b18 (target 0x8abc), taken when s3(=0xf) != v0(?) and falls through when s3(=0xf) == v0(?).
  At `beq` at 0x8b20 (target 0x8b64), taken when s1(=one of 0x0, 0x1) == 0 and falls through when s1(=one of 0x0, 0x1) != 0.
  Returns v0 = ? (`jr` at 0x8b54).

- `promlog_last` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8b6c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8b6c-0x8bfc (144 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xa8 (`lw` at 0x8b6c).
  Loads 4 bytes into at from a0 (arg0 at entry) +0xb4 (`lw` at 0x8b70).
  Loads 4 bytes into v1 from a0 (arg0 at entry) +0xb8 (`lw` at 0x8ba8).
  Loads 4 bytes into a0 from a0 (arg0 at entry) +0xb4 (`lwu` at 0x8bb8).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xa8 (`lw` at 0x8bbc).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0xb4  (`sw` at 0x8bd0).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=? (`jal` at 0x8b98).
  At `beq` at 0x8b8c (target 0x8bd4), taken when at(=[a0+180]) >= v0(=[a0+168]) (unsigned) and falls through when at(=[a0+180]) < v0(=[a0+168]) (unsigned).
  At `bltz` at 0x8ba0 (target 0x8bf4), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  At `beq` at 0x8bb0 (target 0x8bec), taken when s1(=0xf) == v1(?) and falls through when s1(=0xf) != v1(?).
  At `bne` at 0x8bcc (target 0x8b94), taken when a0(=[a0+180]+64) < a1(=[a0+168]) (unsigned) and falls through when a0(=[a0+180]+64) >= a1(=[a0+168]) (unsigned).
  Returns v0 = ? (`jr` at 0x8be4).

- `promlog_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8bfc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8bfc-0x8ca0 (164 bytes).
  Loads 4 bytes into at from a0 (arg0 at entry) +0xb8 (`lw` at 0x8c2c).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8c1c).
  Calls `pl_strncpy [0x8384]` via direct with a0=a1 at entry (arg1), a1=a0+185, a2=0xe, a3=?, a4=-0x6 (`jal` at 0x8c74).
  Calls `pl_strncpy [0x8384]` via direct with a0=a2 at entry (arg2), a1=a0+200, a2=0x2f, a3=? (`jal` at 0x8c88).
  At `bltz` at 0x8c24 (target 0x8c54), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  At `beq` at 0x8c38 (target 0x8c98), taken when at(?) == v0(=0xf) and falls through when at(?) != v0(=0xf).
  At `bne` at 0x8c40 (target 0x8c70), taken when s2(=a1) != 0 and falls through when s2(=a1) == 0.
  At `bne` at 0x8c48 (target 0x8c84), taken when s1(=a2) != 0 and falls through when s1(=a2) == 0.
  Returns v0 = ? (`jr` at 0x8c68).

- `promlog_find` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8ca0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8ca0-0x8d7c (220 bytes).
  Loads 4 bytes into a5 from a0 (arg0 at entry) +0xb0 (`lw` at 0x8ca0).
  Loads 4 bytes into at from a0 (arg0 at entry) +0xac (`lw` at 0x8ca4).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb4 (`lw` at 0x8cac).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8cf4).
  Loads 4 bytes into a0 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8d04).
  Loads 4 bytes into a0 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8d10).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0xb4  (`sw` at 0x8cfc).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0xb4  (`sw` at 0x8d14).
  Calls `promlog_get` via direct with a0=a0 at entry (arg0), a1=sp-48, a2=0x0, a3=? (`jal` at 0x8d20).
  Calls `strncmp` via direct with a0=sp-48, a1=a1 at entry (arg1), a2=0xe, a3=? (`jal` at 0x8d38).
  Calls `promlog_next` via direct with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0x8d48).
  At `bne` at 0x8ccc (target 0x8d08), taken when v0(=[a0+180]) < at(=[a0+172]) (unsigned) and falls through when v0(=[a0+180]) >= at(=[a0+172]) (unsigned).
  At `beq` at 0x8cdc (target 0x8d08), taken when v0(=[a0+180]) >= a5(=[a0+176]) (unsigned) and falls through when v0(=[a0+180]) < a5(=[a0+176]) (unsigned).
  At `beq` at 0x8ce4 (target 0x8d08), taken when a2 == a0(=0x3) and falls through when a2 != a0(=0x3).
  At `beq` at 0x8cec (target 0x8d08), taken when a2 == a1(=0x62) and falls through when a2 != a1(=0x62).
  At `bne` at 0x8cf8 (target 0x8d18), taken when v0(=[a0+164]) != a5(=[a0+176]) and falls through when v0(=[a0+164]) == a5(=[a0+176]).
  At `bne` at 0x8d08 (target 0x8d18), taken when v0(=[a0+180]) != a5(=[a0+176]) and falls through when v0(=[a0+180]) == a5(=[a0+176]).
  At `bltz` at 0x8d28 (target 0x8d58), taken when v0(=ret(promlog_get)) < 0 (signed) and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `beq` at 0x8d40 (target 0x8d74), taken when v0(=ret(strncmp)) == 0 and falls through when v0(=ret(strncmp)) != 0.
  At `bgez` at 0x8d50 (target 0x8d18), taken when v0(=ret(promlog_next)) >= 0 (signed) and falls through when v0(=ret(promlog_next)) < 0 (signed).
  Returns v0 = ? (`jr` at 0x8d6c).

- `promlog_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8d7c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8d7c-0x8e2c (176 bytes).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0x8e0c).
  Calls `promlog_first` via direct with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8da0).
  Calls `promlog_find` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=? (`jal` at 0x8db8).
  Calls `promlog_get` via direct with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=? (`jal` at 0x8dd0).
  Calls `pl_strncpy [0x8384]` via direct with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x2f, a3=? (`jal` at 0x8dfc).
  At `bltz` at 0x8da8 (target 0x8ddc), taken when v0(=ret(promlog_first)) < 0 (signed) and falls through when v0(=ret(promlog_first)) >= 0 (signed).
  At `bltz` at 0x8dc0 (target 0x8ddc), taken when v0(=ret(promlog_find)) < 0 (signed) and falls through when v0(=ret(promlog_find)) >= 0 (signed).
  At `bgez` at 0x8ddc (target 0x8e14), taken when s0(?) >= 0 (signed) and falls through when s0(?) < 0 (signed).
  At `beq` at 0x8de4 (target 0x8e14), taken when s1(=a2) == 0 and falls through when s1(=a2) != 0.
  At `beq` at 0x8df0 (target 0x8e0c), taken when at(=a3) == 0 and falls through when at(=a3) != 0.
  Returns v0 = ? (`jr` at 0x8e24).

- `validate_or_replace` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8e2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8e2c-0x8f74 (328 bytes).
  Loads 4 bytes into v1 from a0 (arg0 at entry) +0xb8 (`lw` at 0x8ea0).
  Loads 4 bytes into a3 from a0 (arg0 at entry) +0x9c (`lw` at 0x8eb4).
  Stores 4 bytes from v1 to a0 (arg0 at entry) +0xb8 (`sw` at 0x8ee0).
  Loads 8 bytes into v0 from sym(.srdata) +0xb8 (`ld` at 0x8ef8).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xb4 (`lw` at 0x8f04).
  Loads 8 bytes into s1 from sym(.srdata) +0xb0 (`ld` at 0x8f28).
  Loads 8 bytes into s1 from sym(.srdata) +0xb0 (`ld` at 0x8f60).
  Loads 8 bytes into v0 from sym(.srdata) +0xc0 (`ld` at 0x8f50).
  Calls `strlen` via direct with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8e54).
  Calls `strlen` via direct with a0=a2 at entry (arg2), a1=-0xa, a2=?, a3=? (`jal` at 0x8e68).
  Calls `pl_strncpy [0x8384]` via direct with a0=a0+185, a1=a1 at entry (arg1), a2=0xe, a3=?, a4=0xfffffffff0ffffff (`jal` at 0x8edc).
  Calls `pl_strncpy [0x8384]` via direct with a0=a0+200, a1=a2 at entry (arg2), a2=0x2f, a3=? (`jal` at 0x8eec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+180], a2=a0+184, a3=0x40 (`jalr` at 0x8f08).
  Calls `fprom_errmsg` via direct with a0=?, a1=?, a2=?, a3=?, a4=-0x3 (`jal` at 0x8f30).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=sym(.rodata)+3120, a2=ret(fprom_errmsg), a3=? (`jal` at 0x8f40).
  At `beq` at 0x8e60 (target 0x8e80), taken when v0(=ret(strlen)) >= 0xf (unsigned) and falls through when v0(=ret(strlen)) < 0xf (unsigned).
  At `bne` at 0x8e74 (target 0x8e9c), taken when v0(=ret(strlen)) < 0x30 (unsigned) and falls through when v0(=ret(strlen)) >= 0x30 (unsigned).
  At `beq` at 0x8ef4 (target 0x8f50), taken when s1(=a4) == 0 and falls through when s1(=a4) != 0.
  At `bltz` at 0x8f10 (target 0x8f20), taken when v0(?) < 0 (signed) and falls through when v0(?) >= 0 (signed).
  At `beq` at 0x8f20 (target 0x8f5c), taken when s1(=a4) == 0 and falls through when s1(=a4) != 0.
  At `beq` at 0x8f5c (target 0x8f6c), taken when v0(?) == a4(=-0x3) and falls through when v0(?) != a4(=-0x3).
  Returns v0 = ? (`jr` at 0x8e94).

- `promlog_compact` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8f74 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8f74-0x9120 (428 bytes).
  Loads 4 bytes into a2 from a0 (arg0 at entry) +0xa0 (`lw` at 0x8f7c).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0x98 (`lw` at 0x8f80).
  Loads 4 bytes into s2 from a0 (arg0 at entry) +0xac (`lw` at 0x8fbc).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xa4 (`lw` at 0x8fc0).
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0xb4  (`sw` at 0x8fc8).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb4 (`lw` at 0x8fe4).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0xa8 (`lw` at 0x8fe8).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb8 (`lw` at 0x9004).
  Loads 8 bytes into a0 from sym(.srdata) +0xb0 (`ld` at 0x9040).
  Loads 8 bytes into s0 from sym(.srdata) +0xb0 (`ld` at 0x9054).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xa0 (`lw` at 0x9088).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xa0 (`lw` at 0x90d0).
  Calls `fprom_flash_sectors` via direct with a0=a0 at entry (arg0), a1=?, a2=[a0+160], a3=a3 at entry (arg3) (`jal` at 0x8fa0).
  Calls `promlog_next` via direct with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=? (`jal` at 0x8fd4).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x40, a2=?, a3=?, a4=[a0+168] (`jal` at 0x8ff4).
  Calls `fprom_write` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x40 (`jal` at 0x9028).
  Calls `fprom_errmsg` via direct with a0=ret(fprom_write), a1=?, a2=?, a3=? (`jal` at 0x9038).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=ret(fprom_errmsg), a2=?, a3=? (`jal` at 0x9048).
  Calls `promlog_errmsg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x9058).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=ret(promlog_errmsg), a2=?, a3=? (`jal` at 0x9064).
  Calls `get_header [0x8488]` via direct with a0=a0 at entry (arg0), a1=[a0+160], a2=sp-112, a3=? (`jal` at 0x908c).
  Calls `put_header [0x84e8]` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-80, a3=?, a4=0x504c4f49, a5=-0x1 (`jal` at 0x90d8).
  Calls `swap_log_alt [0x8548]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x90e8).
  Calls `promlog_last` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x90f0).
  At `bltz` at 0x8fac (target 0x90fc), taken when v0(=ret(fprom_flash_sectors)) < 0 (signed) and falls through when v0(=ret(fprom_flash_sectors)) >= 0 (signed).
  At `bltz` at 0x8fdc (target 0x9074), taken when v0(=ret(promlog_next)) < 0 (signed) and falls through when v0(=ret(promlog_next)) >= 0 (signed).
  At `beq` at 0x8fec (target 0x9084), taken when a4(=[a0+168]) == v0(?) and falls through when a4(=[a0+168]) != v0(?).
  At `bltz` at 0x8ffc (target 0x90fc), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  At `beq` at 0x900c (target 0x901c), taken when s3(=0x1) == v0(?) and falls through when s3(=0x1) != v0(?).
  At `bne` at 0x9014 (target 0x8fd4), taken when v1(=0x2) != v0(?) and falls through when v1(=0x2) == v0(?).
  At `bgez` at 0x9030 (target 0x8fcc), taken when v0(=ret(fprom_write)) >= 0 (signed) and falls through when v0(=ret(fprom_write)) < 0 (signed).
  At `beq` at 0x9078 (target 0x9084), taken when v0(=ret(promlog_next)) == a1(=-0x5) and falls through when v0(=ret(promlog_next)) != a1(=-0x5).
  At `bne` at 0x9080 (target 0x90fc), taken when v0(=ret(promlog_next)) != a0(=-0xb) and falls through when v0(=ret(promlog_next)) == a0(=-0xb).
  At `bltz` at 0x9094 (target 0x90fc), taken when v0(=ret(get_header)) < 0 (signed) and falls through when v0(=ret(get_header)) >= 0 (signed).
  At `bltz` at 0x90e0 (target 0x90fc), taken when v0(=ret(put_header)) < 0 (signed) and falls through when v0(=ret(put_header)) >= 0 (signed).
  At `bltz` at 0x90fc (target 0x9054), taken when s1(?) < 0 (signed) and falls through when s1(?) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x9118).

- `promlog_put_var` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9120 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9120-0x92bc (412 bytes).
  Calls `promlog_first` via direct with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9140).
  Calls `promlog_find` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=?, a5=ret(promlog_first) (`jal` at 0x9188).
  Calls `validate_or_replace [0x8e2c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=0x0 (`jal` at 0x91bc).
  Calls `validate_or_replace [0x8e2c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=0x1, a5=ret(validate_or_replace) (`jal` at 0x91ec).
  Calls `promlog_delete` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=ret(validate_or_replace) (`jal` at 0x91fc).
  Calls `promlog_last` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x921c).
  Calls `validate_or_replace [0x8e2c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=0x1 (`jal` at 0x9258).
  Calls `promlog_compact` via direct with a0=a0 at entry (arg0), a1=-0x5, a2=?, a3=?, a5=ret(promlog_last) (`jal` at 0x9294).
  At `bgez` at 0x9148 (target 0x9180), taken when v0(=ret(promlog_first)) >= 0 (signed) and falls through when v0(=ret(promlog_first)) < 0 (signed).
  At `beq` at 0x9154 (target 0x917c), taken when v0(=ret(promlog_first)) == at(=-0x5) and falls through when v0(=ret(promlog_first)) != at(=-0x5).
  At `beq` at 0x915c (target 0x917c), taken when a5(=ret(promlog_first)) == v0(=-0xb) and falls through when a5(=ret(promlog_first)) != v0(=-0xb).
  At `bltz` at 0x917c (target 0x91a8), taken when a5(=ret(promlog_first)) < 0 (signed) and falls through when a5(=ret(promlog_first)) >= 0 (signed).
  At `bltz` at 0x9194 (target 0x9268), taken when v0(=ret(promlog_find)) < 0 (signed) and falls through when v0(=ret(promlog_find)) >= 0 (signed).
  At `bne` at 0x91a0 (target 0x9164), taken when v0(=one of 0x0, 0x1) != 0 and falls through when v0(=one of 0x0, 0x1) == 0.
  At `bltz` at 0x91a8 (target 0x921c), taken when a5(?) < 0 (signed) and falls through when a5(?) >= 0 (signed).
  At `bltz` at 0x91cc (target 0x9284), taken when v0(=ret(validate_or_replace)) < 0 (signed) and falls through when v0(=ret(validate_or_replace)) >= 0 (signed).
  At `beq` at 0x91d4 (target 0x91fc), taken when v0(=ret(validate_or_replace)) == 0 and falls through when v0(=ret(validate_or_replace)) != 0.
  At `beq` at 0x920c (target 0x9160), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x9214 (target 0x9164), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0x9228 (target 0x9248), taken when v0(=ret(promlog_last)) == 0 and falls through when v0(=ret(promlog_last)) != 0.
  At `beq` at 0x9238 (target 0x9294), taken when v0(=ret(promlog_last)) == a1(=-0x5) and falls through when v0(=ret(promlog_last)) != a1(=-0x5).
  At `beq` at 0x9240 (target 0x9164), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x926c (target 0x919c), taken when a5(=ret(promlog_find)) == a0(=-0x5) and falls through when a5(=ret(promlog_find)) != a0(=-0x5).
  At `beq` at 0x9274 (target 0x91a0), taken when a5(=ret(promlog_find)) == v0(=-0xb) and falls through when a5(=ret(promlog_find)) != v0(=-0xb).
  At `beq` at 0x9284 (target 0x921c), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x92a4 (target 0x9160), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x92ac (target 0x924c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns v0 = ? (`jr` at 0x9174).

- `promlog_put_list` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x92bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x92bc-0x9344 (136 bytes).
  Calls `promlog_last` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x92cc).
  Calls `promlog_compact` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=ret(promlog_last), a6=-0x5 (`jal` at 0x9308).
  Calls `validate_or_replace [0x8e2c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x2, a4=0x1 (`jal` at 0x9334).
  At `beq` at 0x92dc (target 0x9324), taken when v0(=ret(promlog_last)) == 0 and falls through when v0(=ret(promlog_last)) != 0.
  At `beq` at 0x92e8 (target 0x9308), taken when v0(=ret(promlog_last)) == a6(=-0x5) and falls through when v0(=ret(promlog_last)) != a6(=-0x5).
  At `bne` at 0x92f0 (target 0x9324), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x9314 (target 0x92f4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x931c (target 0x92f8), taken when a6(?) != 0 and falls through when a6(?) == 0.
  Returns v0 = ? (`jr` at 0x9300).

- `promlog_put_log` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9344 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9344-0x93cc (136 bytes).
  Calls `promlog_last` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9354).
  Calls `promlog_compact` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=ret(promlog_last), a6=-0x5 (`jal` at 0x9394).
  Calls `validate_or_replace [0x8e2c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x3, a4=0x1 (`jal` at 0x93bc).
  At `beq` at 0x9364 (target 0x93ac), taken when v0(=ret(promlog_last)) == 0 and falls through when v0(=ret(promlog_last)) != 0.
  At `beq` at 0x9370 (target 0x9394), taken when v0(=ret(promlog_last)) == a6(=-0x5) and falls through when v0(=ret(promlog_last)) != a6(=-0x5).
  At `bne` at 0x9378 (target 0x93b0), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x93a0 (target 0x9380), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x93a8 (target 0x9380), taken when a6(?) != 0 and falls through when a6(?) == 0.
  Returns v0 = ? (`jr` at 0x938c).

- `promlog_delete` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x93cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x93cc-0x9468 (156 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0xb8 (`lw` at 0x93f0).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xb4 (`lw` at 0x940c).
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0xb8 (`sw` at 0x9420).
  Loads 8 bytes into a0 from sym(.srdata) +0xb0 (`ld` at 0x9450).
  Calls `get_entry [0x83e8]` via direct with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x93dc).
  Calls `fprom_write` via direct with a0=a0 at entry (arg0), a1=[a0+180], a2=a0+184, a3=0x1 (`jal` at 0x941c).
  Calls `fprom_errmsg` via direct with a0=ret(fprom_write), a1=?, a2=?, a3=0x0 (`jal` at 0x9448).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=ret(fprom_errmsg), a2=?, a3=? (`jal` at 0x9458).
  At `bltz` at 0x93e4 (target 0x942c), taken when v0(=ret(get_entry)) < 0 (signed) and falls through when v0(=ret(get_entry)) >= 0 (signed).
  At `beq` at 0x93f8 (target 0x9440), taken when at(?) == v1(=0xf) and falls through when at(?) != v1(=0xf).
  At `bltz` at 0x9424 (target 0x9448), taken when v0(=ret(fprom_write)) < 0 (signed) and falls through when v0(=ret(fprom_write)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x9438).

- `promlog_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9468 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9468-0x96b4 (588 bytes).
  Loads 4 bytes into a1 from a0 (arg0 at entry) +0xa0 (`lw` at 0x9468).
  Loads 4 bytes into a2 from a0 (arg0 at entry) +0xa4 (`lw` at 0x946c).
  Loads 4 bytes into a3 from a0 (arg0 at entry) +0xa8 (`lw` at 0x9470).
  Loads 4 bytes into a4 from a0 (arg0 at entry) +0xac (`lw` at 0x9474).
  Loads 4 bytes into a5 from a0 (arg0 at entry) +0xb0 (`lw` at 0x9478).
  Loads 4 bytes into a6 from a0 (arg0 at entry) +0xb4 (`lw` at 0x947c).
  Loads 8 bytes into s2 from sym(.srdata) +0xb0 (`ld` at 0x9488).
  Loads 8 bytes into s3 from sym(.srdata) +0xc8 (`ld` at 0x94d8).
  Loads 8 bytes into s3 from sym(.srdata) +0xc8 (`ld` at 0x9504).
  4 such loads of 4 bytes through s0 (a0) to a0 (arg0 at entry) +0xb8, including `lw` at 0x9510, 0x9570, 0x95d0.
  6 such loads of 4 bytes through s0 (a0) to a0 (arg0 at entry) +0xb4, including `lw` at 0x9530, 0x9584, 0x95ec.
  Loads 8 bytes into a3 from table(sym(.data)+312) +0x0 (`ld` at 0x9540).
  Loads 8 bytes into a3 from table(sym(.data)+312) +0x0 (`ld` at 0x95fc).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=[a0+160], a2=[a0+164], a3=[a0+168], a4=[a0+172], a5=[a0+176], a6=[a0+180] (`jal` at 0x9498).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=?, a2=?, a3=? (`jal` at 0x94a0).
  Calls `swap_log_alt [0x8548]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x94a8).
  Calls `promlog_first` via direct with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=? (`jal` at 0x94b8).
  Calls `promlog_get` via direct with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=? (`jal` at 0x94fc).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=entry(sym(.data)+312), a4=sp-112, a5=sp-96 (`jal` at 0x953c).
  Calls `promlog_next` via direct with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=? (`jal` at 0x9548).
  Calls `promlog_get` via direct with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=? (`jal` at 0x9560).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=? (`jal` at 0x9588).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=?, a2=?, a3=? (`jal` at 0x9590).
  Calls `swap_log_alt [0x8548]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9598).
  Calls `promlog_first` via direct with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=? (`jal` at 0x95a4).
  Calls `promlog_get` via direct with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=? (`jal` at 0x95bc).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=entry(sym(.data)+312), a4=sp-112, a5=sp-96 (`jal` at 0x95f8).
  Calls `promlog_next` via direct with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=? (`jal` at 0x9604).
  Calls `promlog_get` via direct with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=? (`jal` at 0x961c).
  Calls `printf` via direct with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=? (`jal` at 0x9648).
  At `bgez` at 0x94cc (target 0x94f4), taken when v0(=ret(promlog_first)) >= 0 (signed) and falls through when v0(=ret(promlog_first)) < 0 (signed).
  At `beq` at 0x94dc (target 0x9590), taken when a2(=ret(promlog_first)) == a0(=-0x5) and falls through when a2(=ret(promlog_first)) != a0(=-0x5).
  At `bne` at 0x94e4 (target 0x965c), taken when a2(=ret(promlog_first)) != v0(=-0xb) and falls through when a2(=ret(promlog_first)) == v0(=-0xb).
  At `bltz` at 0x9508 (target 0x965c), taken when v0(=ret(promlog_get)) < 0 (signed) and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `beq` at 0x951c (target 0x9584), taken when a2(?) == at(=0xf) and falls through when a2(?) != at(=0xf).
  At `bltz` at 0x9550 (target 0x967c), taken when v0(=ret(promlog_next)) < 0 (signed) and falls through when v0(=ret(promlog_next)) >= 0 (signed).
  At `bltz` at 0x9568 (target 0x965c), taken when v0(=ret(promlog_get)) < 0 (signed) and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `bne` at 0x957c (target 0x9528), taken when a2(?) != a4(=0xf) and falls through when a2(?) == a4(=0xf).
  At `bltz` at 0x95ac (target 0x965c), taken when v0(=ret(promlog_first)) < 0 (signed) and falls through when v0(=ret(promlog_first)) >= 0 (signed).
  At `bltz` at 0x95c4 (target 0x965c), taken when v0(=ret(promlog_get)) < 0 (signed) and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `beq` at 0x95d8 (target 0x9640), taken when a2(?) == a3(=0xf) and falls through when a2(?) != a3(=0xf).
  At `bltz` at 0x960c (target 0x9698), taken when v0(=ret(promlog_next)) < 0 (signed) and falls through when v0(=ret(promlog_next)) >= 0 (signed).
  At `bltz` at 0x9624 (target 0x965c), taken when v0(=ret(promlog_get)) < 0 (signed) and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  At `bne` at 0x9638 (target 0x95e4), taken when a2(?) != a4(=0xf) and falls through when a2(?) == a4(=0xf).
  At `beq` at 0x9680 (target 0x9584), taken when v0(=ret(promlog_next)) == a4(=-0x5) and falls through when v0(=ret(promlog_next)) != a4(=-0x5).
  At `bne` at 0x9688 (target 0x965c), taken when s1(=ret(promlog_next)) != v0(=-0xb) and falls through when s1(=ret(promlog_next)) == v0(=-0xb).
  At `beq` at 0x969c (target 0x9644), taken when v0(=ret(promlog_next)) == s3(=-0x5) and falls through when v0(=ret(promlog_next)) != s3(=-0x5).
  At `bne` at 0x96a4 (target 0x965c), taken when s1(=ret(promlog_next)) != v0(=-0xb) and falls through when s1(=ret(promlog_next)) == v0(=-0xb).
  Returns v0 = ? (`jr` at 0x9674).

- `promlog_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x96b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x96b4-0x9740 (140 bytes).
  Loads 8 bytes into a3 from sym(.srdata) +0xb0 (`ld` at 0x96b4).
  Loads 8 bytes into a0 from (sym(.rodata)+3120 + (a0+11 << 0x3)) +0x0 (`ld` at 0x96d0).
  Calls `(unknown callee)` via register with a0=[(sym(.rodata)+3120 + (a0+11 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+3120 (`jr` at 0x96d4).
  At `beq` at 0x96c8 (target 0x96dc), taken when v1(=a0+11) >= 0xc (unsigned) and falls through when v1(=a0+11) < 0xc (unsigned).

- `fprom_probe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x975c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x975c-0x97ac (80 bytes).
  Stores 4 bytes from zero to a1 (arg1 at entry) +0x0  (`sw` at 0x975c).
  Stores 4 bytes from zero to a2 (arg2 at entry) +0x0  (`sw` at 0x9760).
  Loads 8 bytes into v0 from sym(.srdata) +0xd0 (`ld` at 0x9764).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x90  (`sd` at 0x9778).
  Loads 4 bytes into v1 from a0 (arg0 at entry) +0x8 (`lw` at 0x9790).
  Calls `cfi_probe` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9774).
  At `beq` at 0x977c (target 0x978c), taken when v0(=ret(cfi_probe)) == 0 and falls through when v0(=ret(cfi_probe)) != 0.
  At `bne` at 0x979c (target 0x9784), taken when v1(=[a0+8]) < a0(=0x200000) (signed) and falls through when v1(=[a0+8]) >= a0(=0x200000) (signed).
  Returns v0 = ? (`jr` at 0x9784).

- `fprom_flash_sectors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x97c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x97c8-0x9850 (136 bytes).
  Calls `cfi_erase_sector` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x97f8).
  At `beq` at 0x97e0 (target 0x9820), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x97f0 (target 0x9810), taken when (s0(?) & 0x1) == 0 and falls through when (s0(?) & 0x1) != 0.
  At `beq` at 0x9800 (target 0x983c), taken when v0(=ret(cfi_erase_sector)) == 0 and falls through when v0(=ret(cfi_erase_sector)) != 0.
  At `bne` at 0x9818 (target 0x97ec), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `bne` at 0x9840 (target 0x97ec), taken when a1(?) != 0 and falls through when a1(?) == 0.
  Returns v0 = ? (`jr` at 0x9834).

- `fprom_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9888 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9888-0x98a4 (28 bytes).
  Calls `cfi_read` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9890).
  Returns v0 = ret(cfi_read) (`jr` at 0x989c).

- `fprom_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98a4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98a4-0x98c0 (28 bytes).
  Calls `cfi_errmsg` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x98ac).
  Returns v0 = ret(cfi_errmsg) (`jr` at 0x98b8).

- `cfi_cmd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98c0-0x98d8 (24 bytes).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x0 (`ld` at 0x98c0).
  Stores 8 bytes from a2 to ([a0]:8 + ((a1 << 0x1) << 0x2)) +0x0  (`sd` at 0x98d4).
  Returns v0 = ((a1 << 0x1) << 0x2) (`jr` at 0x98d0).

- `cfi_cmd_wr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98d8-0x98ec (20 bytes).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x0 (`ld` at 0x98d8).
  Stores 8 bytes from a2 to ([a0]:8 + (a1 << 0x2)) +0x0  (`sd` at 0x98e8).
  Returns v0 = (a1 << 0x2) (`jr` at 0x98e4).

- `cfi_enter_cfiquery` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98ec-0x990c (32 bytes).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x55, a2=0x98, a3=a3 at entry (arg3) (`jal` at 0x98f8).
  Returns v0 = ret(cfi_cmd) (`jr` at 0x9904).
- `cfi_enter_erase` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x990c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x990c-0x9978 (108 bytes).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=a3 at entry (arg3) (`jal` at 0x9920).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=? (`jal` at 0x9930).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x555, a2=0x80, a3=? (`jal` at 0x9940).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=? (`jal` at 0x9950).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=? (`jal` at 0x9960).
  Returns v0 = ret(cfi_cmd) (`jr` at 0x9970).

- `cfi_enter_program` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9978 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9978-0x99c4 (76 bytes).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=a3 at entry (arg3) (`jal` at 0x998c).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=? (`jal` at 0x999c).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x555, a2=0xa0, a3=? (`jal` at 0x99ac).
  Returns v0 = ret(cfi_cmd) (`jr` at 0x99bc).

- `cfi_wait` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x99c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x99c4-0x9a78 (180 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x10 (`ld` at 0x99cc).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x10 (`ld` at 0x9a04).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x0 (`ld` at 0x9a20).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x0 (`ld` at 0x9a6c).
  Loads 1 byte into v0 from (a1 + [a0]:8) +0x1 (`lbu` at 0x9a28).
  Loads 1 byte into a1 from (a1 + [a0]:8) +0x1 (`lbu` at 0x9a3c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x99ec).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x9a10).
  At `beq` at 0x99e4 (target 0x9a20), taken when v0(=[a0+16]:8) == 0 and falls through when v0(=[a0+16]:8) != 0.
  At `beq` at 0x99f4 (target 0x9a20), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0x9a08 (target 0x9a68), taken when v0(=[a0+16]:8) == 0 and falls through when v0(=[a0+16]:8) != 0.
  At `bne` at 0x9a18 (target 0x99fc), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `beq` at 0x9a2c (target 0x9a70), taken when s1(=a2) == v0(=[(a1 + [a0]:8)+1]:1) and falls through when s1(=a2) != v0(=[(a1 + [a0]:8)+1]:1).
  At `beq` at 0x9a34 (target 0x9a04), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x9a40 (target 0x9a60), taken when s1(=a2) != a1(=[(a1 + [a0]:8)+1]:1) and falls through when s1(=a2) == a1(=[(a1 + [a0]:8)+1]:1).
  Returns v0 = one of -0x5, -0x2, 0x0 (`jr` at 0x9a58).

- `cfi_verify_erased` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9a78 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9a78-0x9b08 (144 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x10 (`ld` at 0x9a80).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x0 (`ld` at 0x9ad0).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x9ad8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a1 at entry (arg1) (`jalr` at 0x9a9c).
  At `beq` at 0x9a94 (target 0x9abc), taken when v0(=[a0+16]:8) == 0 and falls through when v0(=[a0+16]:8) != 0.
  At `beq` at 0x9aac (target 0x9abc), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `beq` at 0x9ac8 (target 0x9b00), taken when a5(=a1) >= a0(=(a1 + a2)) (signed) and falls through when a5(=a1) < a0(=(a1 + a2)) (signed).
  At `beq` at 0x9ae0 (target 0x9af8), taken when a6(=-0x1) == v0(?) and falls through when a6(=-0x1) != v0(?).
  At `bne` at 0x9af8 (target 0x9ad8), taken when v0(?) != 0 and falls through when v0(?) == 0.
  Returns v0 = one of -0x5, -0x4, 0x0 (`jr` at 0x9af0).

- `cfi_perform_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9b08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9b08-0x9c14 (268 bytes).
  Loads 8 bytes into s0 from a0 (arg0 at entry) +0x0 (`ld` at 0x9b14).
  Loads 8 bytes into s2 from ? (base unknown) (`ld` at 0x9b38).
  Loads 8 bytes into s2 from ? (base unknown) (`ld` at 0x9b94).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x9b6c).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=? (`jalr` at 0x9bb0).
  At `beq` at 0x9b58 (target 0x9b84), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bltz` at 0x9b64 (target 0x9b84), taken when s3(?) < 0 (signed) and falls through when s3(?) >= 0 (signed).
  At `beq` at 0x9b74 (target 0x9bf4), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `blez` at 0x9b84 (target 0x9c0c), taken when s3(?) <= 0 (signed) and falls through when s3(?) > 0 (signed).
  At `beq` at 0x9b9c (target 0x9c04), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bltz` at 0x9ba8 (target 0x9c04), taken when s3(?) < 0 (signed) and falls through when s3(?) >= 0 (signed).
  At `beq` at 0x9bb8 (target 0x9be4), taken when v0(=ret(?)) == 0 and falls through when v0(=ret(?)) != 0.
  At `bgtz` at 0x9c04 (target 0x9b90), taken when s3(?) > 0 (signed) and falls through when s3(?) <= 0 (signed).
  Returns v0 = ? (`jr` at 0x9bdc).

- `verify_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9c14 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9c14-0x9c2c (24 bytes).
  Loads 1 byte into at from a1 (arg1 at entry) +0x0 (`lbu` at 0x9c14).
  At `bne` at 0x9c18 (target 0x9c24), taken when at(=[a1]:1) != a0 and falls through when at(=[a1]:1) == a0.
  Returns v0 = one of -0x4, 0x0 (`jr` at 0x9c24).

- `cfi_verify` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9c2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9c2c-0x9c48 (28 bytes).
  Loads 8 bytes into a4 from sym(.srdata) +0xd8 (`ld` at 0x9c38).
  Calls `cfi_perform_op [0x9b08]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(verify_op) (`jal` at 0x9c34).
  Returns v0 = ret(cfi_perform_op) (`jr` at 0x9c40).

- `cfi_write_word` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9c48 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9c48-0x9dc8 (384 bytes).
  Loads 8 bytes into t8 from a0 (arg0 at entry) +0x0 (`ld` at 0x9c84).
  Loads 1 byte into t8 from (a1 + [a0]:8) -0x1 (`lbu` at 0x9c8c).
  Loads 1 byte into s2 from a2 (arg2 at entry) +0x0 (`lbu` at 0x9c90).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x9ce4).
  Loads 1 byte into s2 from ? (base unknown) (`lbu` at 0x9ce8).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x9d44).
  Loads 8 bytes into s2 from a0 (arg0 at entry) +0x0 (`ld` at 0x9d40).
  Loads 1 byte into s2 from ? (base unknown) (`lbu` at 0x9d4c).
  Calls `cfi_enter_program [0x9978]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9c9c).
  Calls `cfi_cmd_wr [0x98d8]` via direct with a0=a0 at entry (arg0), a1=a1-1, a2=?, a3=? (`jal` at 0x9cb0).
  Calls `cfi_wait [0x99c4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9cc0).
  Calls `cfi_enter_program [0x9978]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9cf8).
  Calls `cfi_cmd_wr [0x98d8]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9d08).
  Calls `cfi_wait [0x99c4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9d18).
  Calls `cfi_enter_program [0x9978]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9d5c).
  Calls `cfi_cmd_wr [0x98d8]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9d6c).
  Calls `cfi_wait [0x99c4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9d7c).
  At `blez` at 0x9c70 (target 0x9cd8), taken when a3 <= 0 (signed) and falls through when a3 > 0 (signed).
  At `beq` at 0x9c7c (target 0x9cdc), taken when (a1 & 0x1) == 0 and falls through when (a1 & 0x1) != 0.
  At `bltz` at 0x9cc8 (target 0x9dc0), taken when v0(=ret(cfi_wait)) < 0 (signed) and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  At `bne` at 0x9cdc (target 0x9d38), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `bltz` at 0x9d20 (target 0x9db8), taken when v0(=ret(cfi_wait)) < 0 (signed) and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  At `beq` at 0x9d30 (target 0x9ce4), taken when s3(?) >= 0x2 (signed) and falls through when s3(?) < 0x2 (signed).
  At `blez` at 0x9d38 (target 0x9d90), taken when s3(?) <= 0 (signed) and falls through when s3(?) > 0 (signed).
  At `bltz` at 0x9d84 (target 0x9db0), taken when v0(=ret(cfi_wait)) < 0 (signed) and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x9da8).

- `cfi_write_block` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9dc8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9dc8-0xa098 (720 bytes).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x58 (`lw` at 0x9de8).
  Loads 8 bytes into s8 from a0 (arg0 at entry) +0x0 (`ld` at 0x9e64).
  Loads 8 bytes into a0 from a0 (arg0 at entry) +0x0 (`ld` at 0xa008).
  Loads 1 byte into s8 from (a1 + [a0]:8) -0x1 (`lbu` at 0x9e74).
  Loads 1 byte into t8 from a2 (arg2 at entry) +0x0 (`lbu` at 0x9e7c).
  Stores 2 bytes from t8 to ? (base unknown)  (`sh` at 0x9e8c).
  Loads 2 bytes into a2 from ? (base unknown) (`lhu` at 0x9f38).
  Loads 1 byte into a2 from ? (base unknown) (`lbu` at 0x9f70).
  Loads 1 byte into a2 from ? (base unknown) (`lbu` at 0xa020).
  Loads 1 byte into a1 from ? (base unknown) (`lbu` at 0x9fe0).
  Loads 1 byte into v1 from ? (base unknown) (`lbu` at 0x9fec).
  Stores 2 bytes from v1 to ? (base unknown) (`sh` at 0xa000).
  Loads 1 byte into a0 from ? (base unknown) (`lbu` at 0xa02c).
  Stores 2 bytes from a0 to ? (base unknown) (`sh` at 0xa040).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=? (`jal` at 0x9ec4).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=? (`jal` at 0x9ed4).
  Calls `cfi_cmd_wr [0x98d8]` via direct with a0=a0 at entry (arg0), a1=?, a2=0x25, a3=? (`jal` at 0x9ef0).
  Calls `cfi_cmd_wr [0x98d8]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9f04).
  Calls `cfi_cmd_wr [0x98d8]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9f34).
  Calls `cfi_cmd_wr [0x98d8]` via direct with a0=a0 at entry (arg0), a1=?, a2=0x29, a3=? (`jal` at 0x9f54).
  Calls `cfi_wait [0x99c4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x9f6c).
  At `bne` at 0x9e10 (target 0x9e1c), taken when v0(=[a0+88]) < 0x21 (signed) and falls through when v0(=[a0+88]) >= 0x21 (signed).
  At `blez` at 0x9e50 (target 0xa080), taken when s6(=a3) <= 0 (signed) and falls through when s6(=a3) > 0 (signed).
  At `beq` at 0x9e58 (target 0xa08c), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x9ea0 (target 0xa004), taken when s6(?) == at(=0x1) and falls through when s6(?) != at(=0x1).
  At `beq` at 0x9eac (target 0x9ec0), taken when s4(?) == v0(?) and falls through when s4(?) != v0(?).
  At `bne` at 0x9eb4 (target 0x9fa8), taken when s6(?) != 0 and falls through when s6(?) == 0.
  At `beq` at 0x9f10 (target 0x9f50), taken when s0(?) >= s2(?) (signed) and falls through when s0(?) < s2(?) (signed).
  At `bne` at 0x9f44 (target 0x9f1c), taken when s0(?) < s2(?) (signed) and falls through when s0(?) >= s2(?) (signed).
  At `bltz` at 0x9f84 (target 0xa044), taken when v0(=ret(cfi_wait)) < 0 (signed) and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  At `beq` at 0x9f9c (target 0xa04c), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `beq` at 0x9fa8 (target 0x9ebc), taken when s4(?) == t9(?) and falls through when s4(?) != t9(?).
  At `beq` at 0x9fb0 (target 0x9eac), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `bne` at 0x9fc4 (target 0x9ea0), taken when s6(?) < 0x2 (signed) and falls through when s6(?) >= 0x2 (signed).
  Returns v0 = ? (`jr` at 0xa078).

- `cfi_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa098 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa098-0xa0b8 (32 bytes).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0xf0, a3=a3 at entry (arg3) (`jal` at 0xa0a4).
  Returns v0 = ret(cfi_cmd) (`jr` at 0xa0b0).

- `cfi_probe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa0b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa0b8-0xa278 (448 bytes).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`ld` at 0xa0d4).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x0 (`ld` at 0xa194).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x0 (`ld` at 0xa228).
  Loads 2 bytes into at from [a0]:8 +0x20 (`lhu` at 0xa0d8).
  Loads 2 bytes into a0 from [a0]:8 +0x22 (`lhu` at 0xa0f0).
  Loads 2 bytes into a2 from [a0]:8 +0x24 (`lhu` at 0xa0fc).
  Loads 2 bytes into a4 from [a0]:8 +0x26 (`lhu` at 0xa124).
  Loads 2 bytes into a6 from [a0]:8 +0x28 (`lhu` at 0xa130).
  Loads 2 bytes into t0 from [a0]:8 +0x4e (`lhu` at 0xa14c).
  Stores 4 bytes from t0 to a0 (arg0 at entry) +0x8 (`sw` at 0xa154).
  Loads 2 bytes into a7 from [a0]:8 +0x50 (`lhu` at 0xa158).
  Loads 2 bytes into a0 from [a0]:8 +0x58 (`lhu` at 0xa16c).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x5c  (`sw` at 0xa174).
  Loads 2 bytes into t8 from ? (base unknown) (`lhu` at 0xa1b4).
  Loads 2 bytes into t9 from ? (base unknown) (`lhu` at 0xa1c0).
  Loads 2 bytes into ra from ? (base unknown) (`lhu` at 0xa1c8).
  Loads 2 bytes into at from ? (base unknown) (`lhu` at 0xa1cc).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0xa1fc).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0xa200).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0xa20c).
  Loads 4 bytes into t3 from a0 (arg0 at entry) +0x5c (`lw` at 0xa210).
  Loads 2 bytes into a0 from [a0]:8 +0x54 (`lhu` at 0xa22c).
  Stores 4 bytes from a1 to a0 (arg0 at entry) +0x58 (`sw` at 0xa23c).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x58  (`sw` at 0xa254).
  Calls `cfi_reset` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa0c4).
  Calls `cfi_enter_cfiquery [0x98ec]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xa0cc).
  Calls `cfi_reset` via direct with a0=a0 at entry (arg0), a1=0x52, a2=?, a3=0x59, a5=0x2 (`jal` at 0xa108).
  Calls `cfi_reset` via direct with a0=a0 at entry (arg0), a1=0x52, a2=[[a0]:8+36]:2, a3=0x0, a4=[[a0]:8+38]:2, a5=one of 0x1, 0x2 (`jal` at 0xa13c).
  Calls `cfi_reset` via direct with a0=a0 at entry (arg0), a1=?, a2=[[a0]:8+36]:2, a3=?, a4=[[a0]:8+88]:2-1, a5=0x1, a6=[[a0]:8+40]:2 (`jal` at 0xa240).
  Calls `cfi_reset` via direct with a0=a0 at entry (arg0), a1=0x52, a2=[[a0]:8+36]:2, a3=0x0, a4=[[a0]:8+88]:2-1, a5=0x1, a6=[[a0]:8+40]:2 (`jal` at 0xa258).
  Calls `cfi_reset` via direct with a0=a0 at entry (arg0), a1=0x52, a2=[[a0]:8+36]:2, a3=0x0, a4=[[a0]:8+38]:2, a5=0x1, a6=[[a0]:8+40]:2 (`jal` at 0xa268).
  At `bne` at 0xa0e8 (target 0xa108), taken when at(=[[a0]:8+32]:2) != v1(=0x51) and falls through when at(=[[a0]:8+32]:2) == v1(=0x51).
  At `bne` at 0xa0f4 (target 0xa108), taken when a0(=[[a0]:8+34]:2) != a1(=0x52) and falls through when a0(=[[a0]:8+34]:2) == a1(=0x52).
  At `beq` at 0xa100 (target 0xa124), taken when a2(=[[a0]:8+36]:2) == a3(=0x59) and falls through when a2(=[[a0]:8+36]:2) != a3(=0x59).
  At `bne` at 0xa128 (target 0xa13c), taken when a4(=[[a0]:8+38]:2) != a5(=0x2) and falls through when a4(=[[a0]:8+38]:2) == a5(=0x2).
  At `beq` at 0xa134 (target 0xa14c), taken when a6(=[[a0]:8+40]:2) == 0 and falls through when a6(=[[a0]:8+40]:2) != 0.
  At `beq` at 0xa164 (target 0xa268), taken when (a7(=[[a0]:8+80]:2+1) & 0x2) == 0 and falls through when (a7(=[[a0]:8+80]:2+1) & 0x2) != 0.
  At `beq` at 0xa178 (target 0xa258), taken when a0(=[[a0]:8+88]:2) >= 0x5 (signed) and falls through when a0(=[[a0]:8+88]:2) < 0x5 (signed).
  At `blez` at 0xa180 (target 0xa22c), taken when a0(=[[a0]:8+88]:2) <= 0 (signed) and falls through when a0(=[[a0]:8+88]:2) > 0 (signed).
  At `bne` at 0xa220 (target 0xa18c), taken when a3(?) < t3(=[a0+92]) (signed) and falls through when a3(?) >= t3(=[a0+92]) (signed).
  At `beq` at 0xa230 (target 0xa250), taken when a0(=[[a0]:8+84]:2) == 0 and falls through when a0(=[[a0]:8+84]:2) != 0.
  Returns v0 = one of -0x6, 0x0 (`jr` at 0xa11c).

- `cfi_erase_sector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa278 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa278-0xa390 (280 bytes).
  Loads 4 bytes into at from a0 (arg0 at entry) +0x5c (`lw` at 0xa2a8).
  Loads 4 bytes into v0 from ? (base unknown) (`lw` at 0xa2d0).
  Loads 4 bytes into s4 from ? (base unknown) (`lw` at 0xa2dc).
  Loads 4 bytes into a1 from ? (base unknown) (`lw` at 0xa2e0).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x90 (`ld` at 0xa37c).
  Loads 8 bytes into a0 from sym(.srdata) +0xe0 (`ld` at 0xa384).
  Calls `cfi_enter_erase [0x990c]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xa2f4).
  Calls `cfi_cmd [0x98c0]` via direct with a0=a0 at entry (arg0), a1=?, a2=0x30, a3=? (`jal` at 0xa30c).
  Calls `cfi_wait [0x99c4]` via direct with a0=a0 at entry (arg0), a1=?, a2=0xff, a3=? (`jal` at 0xa31c).
  Calls `cfi_verify_erased [0x9a78]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xa364).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+4088, a1=?, a2=[a0+144]:8, a3=? (`jalr` at 0xa380).
  At `beq` at 0xa2b0 (target 0xa37c), taken when s0(?) == at(=[a0+92]-1) and falls through when s0(?) != at(=[a0+92]-1).
  At `blez` at 0xa2b8 (target 0xa33c), taken when s3(?) <= 0 (signed) and falls through when s3(?) > 0 (signed).
  At `bne` at 0xa2d8 (target 0xa2a8), taken when s2(?) < v0(?) (signed) and falls through when s2(?) >= v0(?) (signed).
  At `beq` at 0xa2ec (target 0xa2a8), taken when s2(?) >= a1(?) (signed) and falls through when s2(?) < a1(?) (signed).
  At `beq` at 0xa324 (target 0xa360), taken when v0(=ret(cfi_wait)) == 0 and falls through when v0(=ret(cfi_wait)) != 0.
  At `bgtz` at 0xa334 (target 0xa2c0), taken when s3(?) > 0 (signed) and falls through when s3(?) <= 0 (signed).
  At `beq` at 0xa36c (target 0xa334), taken when v0(=ret(cfi_verify_erased)) == 0 and falls through when v0(=ret(cfi_verify_erased)) != 0.
  Returns v0 = ? (`jr` at 0xa358).

- `read_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa390 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa390-0xa39c (12 bytes).
  Stores 1 byte from a0 to a1 (arg1 at entry) +0x0  (`sb` at 0xa390).
  Returns v0 = 0x0 (`jr` at 0xa394).

- `cfi_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa39c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa39c-0xa3b8 (28 bytes).
  Loads 8 bytes into a4 from sym(.srdata) +0xe8 (`ld` at 0xa3a8).
  Calls `cfi_perform_op [0x9b08]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(read_op) (`jal` at 0xa3a4).
  Returns v0 = ret(cfi_perform_op) (`jr` at 0xa3b0).

- `cfi_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa3b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa3b8-0xa444 (140 bytes).
  Loads 4 bytes into at from a0 (arg0 at entry) +0x58 (`lw` at 0xa3c4).
  Calls `cfi_write_block [0x9dc8]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa3e8).
  Calls `cfi_write_word [0x9c48]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa418).
  Calls `cfi_verify [0x9c2c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa434).
  At `beq` at 0xa3e0 (target 0xa418), taken when at(=[a0+88]) == 0 and falls through when at(=[a0+88]) != 0.
  At `beq` at 0xa3f0 (target 0xa428), taken when v0(=ret(cfi_write_block)) == 0 and falls through when v0(=ret(cfi_write_block)) != 0.
  At `bne` at 0xa420 (target 0xa3f8), taken when v0(=ret(cfi_write_word)) != 0 and falls through when v0(=ret(cfi_write_word)) == 0.
  Returns v0 = ? (`jr` at 0xa410).

- `validate_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa444 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa444-0xa464 (32 bytes).
  Loads 1 byte into at from a1 (arg1 at entry) +0x0 (`lbu` at 0xa444).
  At `beq` at 0xa450 (target 0xa45c), taken when (at(=[a1]:1) & v0(?)) == 0 and falls through when (at(=[a1]:1) & v0(?)) != 0.
  Returns v0 = one of -0x3, 0x0 (`jr` at 0xa45c).

- `cfi_validate` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa464 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa464-0xa480 (28 bytes).
  Loads 8 bytes into a4 from sym(.srdata) +0xf0 (`ld` at 0xa470).
  Calls `cfi_perform_op [0x9b08]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(validate_op) (`jal` at 0xa46c).
  Returns v0 = ret(cfi_perform_op) (`jr` at 0xa478).

- `cfi_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa480 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa480-0xa4ec (108 bytes).
  Loads 8 bytes into a3 from sym(.srdata) +0xe0 (`ld` at 0xa480).
  Loads 8 bytes into a0 from (sym(.rodata)+4088 + (a0+7 << 0x3)) +0x0 (`ld` at 0xa49c).
  Calls `(unknown callee)` via register with a0=[(sym(.rodata)+4088 + (a0+7 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+4088 (`jr` at 0xa4a0).
  At `beq` at 0xa494 (target 0xa4a8), taken when v1(=a0+7) >= 0x8 (unsigned) and falls through when v1(=a0+7) < 0x8 (unsigned).

- `nano_to_ust` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa5c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa5c8-0xa5f0 (40 bytes).
  Loads 4 bytes into v1 from sym(_prom_cleared) +0x48 (`lwu` at 0xa5c8).
  Loads 4 bytes into at from sym(_prom_cleared) +0x44 (`lwu` at 0xa5d0).
  Returns v0 = ? (`jr` at 0xa5e8).

- `ust_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa5f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa5f0-0xa654 (100 bytes).
  Loads 8 bytes into v1 from sym(.lit8) +0x50 (`ld` at 0xa5f0).
  Loads 8 bytes into a0 from abs 0x9200000001604200 (`ld` at 0xa5f4).
  Loads 8 bytes into v1 from abs 0x9200000001604200 (`ld` at 0xa624).
  Stores 4 bytes from a0 to sym(ust_freq) +0x0 (`sw` at 0xa620).
  Stores 4 bytes from v1 to sym(_prom_cleared) +0x48  (`sw` at 0xa640).
  Stores 4 bytes from at to sym(_prom_cleared) +0x44 (`sw` at 0xa650).
  Returns v0 = ? (`jr` at 0xa64c).

- `ip27log_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa840 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa840-0xaa1c (476 bytes).
  Loads 8 bytes into v1 from a0 (arg0 at entry) +0x0 (`ld` at 0xa86c).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0xa888).
  Stores 8 bytes from a4 to ? (base unknown) (`sd` at 0xa894).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0xa89c).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0xa8a8).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0xf8, including `ld` at 0xa8f4, 0xa954, 0xa9a4.
  Loads 1 byte into a3 from abs 0xffffffffffffc528 (`lbu` at 0xa908).
  Loads 8 bytes into v0 from sym(.lit8) +0x88 (`ld` at 0xa9c0).
  Loads 8 bytes into v0 from sym(.lit8) +0x88 (`ld` at 0xa9d4).
  Loads 8 bytes into v1 from sym(.lit8) +0x90 (`ld` at 0xa9d0).
  Calls `fprom_reset` via direct with a0=sp-192, a1=?, a2=?, a3=? (`jal` at 0xa8ac).
  Calls `fprom_probe` via direct with a0=sp-192, a1=sp-40, a2=sp-36, a3=? (`jal` at 0xa8c8).
  Calls `fprom_errmsg` via direct with a0=ret(fprom_probe), a1=?, a2=?, a3=? (`jal` at 0xa8e4).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=ret(fprom_errmsg), a2=?, a3=? (`jal` at 0xa8f0).
  Calls `promlog_init` via direct with a0=a0 at entry (arg0), a1=sp-192, a2=0x1e, a3=[-0x3ad8]:1 (`jal` at 0xa90c).
  Calls `promlog_clear` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xa930).
  Calls `promlog_errmsg` via direct with a0=ret(promlog_clear), a1=?, a2=?, a3=? (`jal` at 0xa94c).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=? (`jal` at 0xa95c).
  Calls `promlog_errmsg` via direct with a0=ret(promlog_init), a1=?, a2=?, a3=? (`jal` at 0xa99c).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=? (`jal` at 0xa9ac).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa9c4).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=?, a2=?, a3=? (`jal` at 0xaa0c).
  At `beq` at 0xa860 (target 0xa9bc), taken when (a2 & 0x8) == 0 and falls through when (a2 & 0x8) != 0.
  At `bgtz` at 0xa8a4 (target 0xa87c), taken when v0(?) > 0 (signed) and falls through when v0(?) <= 0 (signed).
  At `beq` at 0xa8b8 (target 0xa904), taken when (s0(=a2) & 0x13) == 0 and falls through when (s0(=a2) & 0x13) != 0.
  At `bgez` at 0xa8d4 (target 0xa900), taken when v0(=ret(fprom_probe)) >= 0 (signed) and falls through when v0(=ret(fprom_probe)) < 0 (signed).
  At `beq` at 0xa8dc (target 0xa8f8), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bltz` at 0xa918 (target 0xa988), taken when v0(=ret(promlog_init)) < 0 (signed) and falls through when v0(=ret(promlog_init)) >= 0 (signed).
  At `beq` at 0xa924 (target 0xa970), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bgez` at 0xa93c (target 0xa96c), taken when v0(=ret(promlog_clear)) >= 0 (signed) and falls through when v0(=ret(promlog_clear)) < 0 (signed).
  At `beq` at 0xa944 (target 0xa964), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xa98c (target 0xa9fc), taken when s2(=ret(promlog_init)) == a0(=-0x2) and falls through when s2(=ret(promlog_init)) != a0(=-0x2).
  At `beq` at 0xa994 (target 0xa9b4), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bltz` at 0xa9bc (target 0xa9d8), taken when a1 < 0 (signed) and falls through when a1 >= 0 (signed).
  At `bne` at 0xa9cc (target 0xa9f0), taken when s2(=a1) != v0(=ret(get_nasid)) and falls through when s2(=a1) == v0(=ret(get_nasid)).
  At `bne` at 0xa9fc (target 0xa924), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0xaa04 (target 0xaa14), taken when v0(?) == 0 and falls through when v0(?) != 0.
  Returns v0 = ? (`jr` at 0xa980).

- `ip27log_setenv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xaa1c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xaa1c-0xab6c (336 bytes).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0xf8, including `ld` at 0xaa64, 0xaa78, 0xaa90.
  Loads 8 bytes into a0 from abs 0xffffffffffffc400 (`ld` at 0xab38).
  Loads 8 bytes into a0 from abs 0xffffffffffffc400 (`ld` at 0xab54).
  Calls `in_panic_mode` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xaa40).
  Calls `ip27log_setup` via direct with a0=sp-296, a1=a0 at entry (arg0), a2=(a3 | 0x2), a3=? (`jal` at 0xaa54).
  Calls `strcmp` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+4456, a2=?, a3=? (`jal` at 0xaa6c).
  Calls `strcmp` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+4456, a2=?, a3=? (`jal` at 0xaa80).
  Calls `strcmp` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+4456, a2=?, a3=? (`jal` at 0xaa98).
  Calls `promlog_put_var` via direct with a0=sp-296, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0xaaac).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xaac0).
  Calls `promlog_put_log` via direct with a0=sp-296, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0xaaf4).
  Calls `promlog_errmsg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xab10).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(promlog_errmsg) (`jal` at 0xab28).
  Calls `mutex_spinunlock` via direct with a0=[-0x3c00]:8+34372, a1=?, a2=0x8644, a3=? (`jal` at 0xab44).
  Calls `mutex_spinlock` via direct with a0=[-0x3c00]:8+34372, a1=0x8644, a2=(a3 | 0x2), a3=? (`jal` at 0xab5c).
  At `beq` at 0xaa48 (target 0xab54), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  At `bltz` at 0xaa5c (target 0xaac0), taken when v0(=ret(ip27log_setup)) < 0 (signed) and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  At `beq` at 0xaa74 (target 0xaaec), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `beq` at 0xaa88 (target 0xaaf0), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `beq` at 0xaaa0 (target 0xaaec), taken when v0(=ret(strcmp)) == 0 and falls through when v0(=ret(strcmp)) != 0.
  At `bltz` at 0xaab4 (target 0xab04), taken when v0(=ret(promlog_put_var)) < 0 (signed) and falls through when v0(=ret(promlog_put_var)) >= 0 (signed).
  At `beq` at 0xaac8 (target 0xab38), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  At `bgez` at 0xaafc (target 0xaabc), taken when v0(=ret(promlog_put_log)) >= 0 (signed) and falls through when v0(=ret(promlog_put_log)) < 0 (signed).
  At `beq` at 0xab08 (target 0xaac0), taken when (s3(=a3) & 0x4) == 0 and falls through when (s3(=a3) & 0x4) != 0.
  Returns v0 = ? (`jr` at 0xaae4).

- `ip27log_getenv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xab6c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xab6c-0xac48 (220 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0xf8 (`ld` at 0xabe8).
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0  (`sb` at 0xac1c).
  Calls `ip27log_setup` via direct with a0=sp-304, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3) (`jal` at 0xaba0).
  Calls `promlog_lookup` via direct with a0=sp-304, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0 (`jal` at 0xabbc).
  Calls `promlog_errmsg` via direct with a0=ret(promlog_lookup), a1=?, a2=?, a3=? (`jal` at 0xabe0).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=ret(promlog_errmsg), a3=? (`jal` at 0xabf4).
  Calls `strcpy` via direct with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0xac0c).
  At `bltz` at 0xaba8 (target 0xabfc), taken when v0(=ret(ip27log_setup)) < 0 (signed) and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  At `bgez` at 0xabc4 (target 0xac40), taken when v0(=ret(promlog_lookup)) >= 0 (signed) and falls through when v0(=ret(promlog_lookup)) < 0 (signed).
  At `bne` at 0xabcc (target 0xabfc), taken when s2(=a3) != 0 and falls through when s2(=a3) == 0.
  At `beq` at 0xabd8 (target 0xabfc), taken when (v1(=a4) & 0x4) == 0 and falls through when (v1(=a4) & 0x4) != 0.
  At `beq` at 0xabfc (target 0xac24), taken when s0(=a2) == 0 and falls through when s0(=a2) != 0.
  At `beq` at 0xac04 (target 0xac1c), taken when s2(=a3) == 0 and falls through when s2(=a3) != 0.
  Returns v0 = ? (`jr` at 0xac38).

- `ip27log_unsetenv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xac48 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xac48-0xad20 (216 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0xf8 (`ld` at 0xacb0).
  Loads 8 bytes into a0 from sym(.srdata) +0xf8 (`ld` at 0xacfc).
  Calls `ip27log_setup` via direct with a0=sp-288, a1=a0 at entry (arg0), a2=(a2 | 0x2), a3=a3 at entry (arg3) (`jal` at 0xac6c).
  Calls `promlog_first` via direct with a0=sp-288, a1=0x1, a2=?, a3=? (`jal` at 0xac7c).
  Calls `promlog_find` via direct with a0=sp-288, a1=a1 at entry (arg1), a2=0x1, a3=? (`jal` at 0xac94).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xacb8).
  Calls `promlog_delete` via direct with a0=sp-288, a1=?, a2=?, a3=? (`jal` at 0xacd8).
  Calls `promlog_errmsg` via direct with a0=ret(promlog_delete), a1=?, a2=?, a3=? (`jal` at 0xacf4).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=ret(promlog_errmsg), a3=? (`jal` at 0xad08).
  At `bltz` at 0xac74 (target 0xacc4), taken when v0(=ret(ip27log_setup)) < 0 (signed) and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  At `bltz` at 0xac84 (target 0xaca4), taken when v0(=ret(promlog_first)) < 0 (signed) and falls through when v0(=ret(promlog_first)) >= 0 (signed).
  At `bgez` at 0xac9c (target 0xacd8), taken when v0(=ret(promlog_find)) >= 0 (signed) and falls through when v0(=ret(promlog_find)) < 0 (signed).
  At `beq` at 0xaca8 (target 0xacc0), taken when (s1(=a2) & 0x4) == 0 and falls through when (s1(=a2) & 0x4) != 0.
  At `bgez` at 0xace4 (target 0xad18), taken when v0(=ret(promlog_delete)) >= 0 (signed) and falls through when v0(=ret(promlog_delete)) < 0 (signed).
  At `beq` at 0xacec (target 0xad10), taken when a1(?) == 0 and falls through when a1(?) != 0.
  Returns v0 = ? (`jr` at 0xacd0).

- `ip27log_iprintf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xad20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xad20-0xaf60 (576 bytes).
  7 such loads of 8 bytes through gp (gp) to sym(.srdata) +0xf8, including `ld` at 0xad20, 0xad70, 0xad8c.
  Loads 2 bytes into v1 from sym(.rodata) +0x12b8 (`lhu` at 0xad58).
  Loads 8 bytes into a0 from sym(.rodata) +0x12b0 (`ld` at 0xad5c).
  Loads 1 byte into a3 from sym(.rodata) +0x123c (`lbu` at 0xad90).
  Loads 4 bytes into a5 from sym(.rodata) +0x1238 (`lw` at 0xad98).
  Stores 4 bytes from a5 to (ret(strlen) + sp-544) +0x0  (`swl` at 0xad9c).
  Stores 4 bytes from a6 to (ret(strlen) + sp-544) +0x0  (`swl` at 0xaf28).
  Stores 4 bytes from a5 to (ret(strlen) + sp-544) +0x3  (`swr` at 0xada0).
  Stores 4 bytes from a6 to (ret(strlen) + sp-544) +0x3  (`swr` at 0xaf2c).
  Stores 1 byte from a3 to (ret(strlen) + sp-544) +0x4  (`sb` at 0xadac).
  Stores 1 byte from a3 to (ret(strlen) + sp-544) +0x4  (`sb` at 0xaf3c).
  Loads 1 byte into s2 from ? (base unknown) (`lbu` at 0xae18).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0xae1c).
  Stores 1 byte from s2 to ? (base unknown) (`sb` at 0xae34).
  Loads 1 byte into a3 from sym(.rodata) +0x122d (`lbu` at 0xaea4).
  Loads 4 bytes into a4 from sym(.rodata) +0x1228 (`lw` at 0xaea8).
  Loads 1 byte into a1 from sym(.rodata) +0x122c (`lbu` at 0xaeb0).
  Stores 4 bytes from a4 to (ret(strlen) + sp-544) +0x0  (`swl` at 0xaeb4).
  Stores 4 bytes from a4 to (ret(strlen) + sp-544) +0x3  (`swr` at 0xaeb8).
  Stores 1 byte from a3 to (ret(strlen) + sp-544) +0x5  (`sb` at 0xaebc).
  Stores 1 byte from a1 to (ret(strlen) + sp-544) +0x4  (`sb` at 0xaec8).
  Loads 8 bytes into a0 from abs 0xffffffffffffc400 (`ld` at 0xaef0).
  Loads 8 bytes into a0 from abs 0xffffffffffffc400 (`ld` at 0xaf48).
  Loads 1 byte into a5 from sym(.rodata) +0x1235 (`lbu` at 0xaf18).
  Loads 4 bytes into a6 from sym(.rodata) +0x1230 (`lw` at 0xaf1c).
  Loads 1 byte into a3 from sym(.rodata) +0x1234 (`lbu` at 0xaf24).
  Stores 1 byte from a5 to (ret(strlen) + sp-544) +0x5  (`sb` at 0xaf30).
  Calls `strlen` via direct with a0=sp-544, a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=sym(.rodata)+4456 (`jal` at 0xad84).
  Calls `strlen` via direct with a0=sp-544, a1=?, a2=?, a3=0x0, a4=(ret(strlen) + sp-544), a5=0x496e666f (`jal` at 0xada8).
  Calls `vsprintf` via direct with a0=sp-512, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=? (`jal` at 0xadb8).
  Calls `strlen` via direct with a0=sp-512, a1=?, a2=?, a3=? (`jal` at 0xadc0).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xadc8).
  Calls `ip27log_setup` via direct with a0=sp-312, a1=a0 at entry (arg0), a2=0x2, a3=? (`jal` at 0xade0).
  Calls `promlog_put_log` via direct with a0=sp-312, a1=?, a2=?, a3=? (`jal` at 0xae20).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xae50).
  Calls `promlog_errmsg` via direct with a0=ret(promlog_put_log), a1=sym(.rodata)+4456, a2=?, a3=? (`jal` at 0xae78).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=? (`jal` at 0xae88).
  Calls `strlen` via direct with a0=sp-544, a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=sym(.rodata)+4456 (`jal` at 0xae98).
  Calls `strlen` via direct with a0=sp-544, a1=0x6c, a2=(ret(strlen) + sp-544), a3=0x0, a4=0x46617461 (`jal` at 0xaec4).
  Calls `promlog_errmsg` via direct with a0=ret(ip27log_setup), a1=?, a2=?, a3=? (`jal` at 0xaed4).
  Calls `printf` via direct with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=? (`jal` at 0xaee0).
  Calls `mutex_spinunlock` via direct with a0=[-0x3c00]:8+34372, a1=?, a2=0x8644, a3=? (`jal` at 0xaefc).
  Calls `strlen` via direct with a0=sp-544, a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=sym(.rodata)+4456 (`jal` at 0xaf0c).
  Calls `strlen` via direct with a0=sp-544, a1=?, a2=?, a3=0x72, a4=(ret(strlen) + sp-544), a5=0x0, a6=0x4572726f (`jal` at 0xaf38).
  Calls `mutex_spinlock` via direct with a0=[-0x3c00]:8+34372, a1=0x8644, a2=0x2, a3=? (`jal` at 0xaf50).
  At `bgez` at 0xad50 (target 0xad68), taken when at(=(a1 << 0x2f)) >= 0 (signed) and falls through when at(=(a1 << 0x2f)) < 0 (signed).
  At `beq` at 0xad74 (target 0xaf0c), taken when v0(?) == a2(=0x1) and falls through when v0(?) != a2(=0x1).
  At `beq` at 0xad7c (target 0xae98), taken when v0(?) == a0(=0x2) and falls through when v0(?) != a0(=0x2).
  At `beq` at 0xadd0 (target 0xaf48), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  At `bltz` at 0xadec (target 0xaed4), taken when v0(=ret(ip27log_setup)) < 0 (signed) and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  At `beq` at 0xae08 (target 0xae4c), taken when s0(=sp-512) >= s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned) and falls through when s0(=sp-512) < s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned).
  At `bltz` at 0xae2c (target 0xae78), taken when v0(=ret(promlog_put_log)) < 0 (signed) and falls through when v0(=ret(promlog_put_log)) >= 0 (signed).
  At `bne` at 0xae44 (target 0xae14), taken when s0(?) < s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned) and falls through when s0(?) >= s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned).
  At `beq` at 0xae58 (target 0xaef0), taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  Returns v0 = ? (`jr` at 0xae70).
- `ip27log_printf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xaf60 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xaf60-0xafb0 (80 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xaf84).
  Calls `ip27log_iprintf` via direct with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-48 (`jal` at 0xaf9c).
  Returns v0 = ret(ip27log_iprintf) (`jr` at 0xafa8).

- `ip27log_printf_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xafb0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xafb0-0xafec (60 bytes).
  Calls `ip27log_iprintf` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-40 (`jal` at 0xafd8).
  Returns v0 = ret(ip27log_iprintf) (`jr` at 0xafe4).

- `ip27log_panic_printf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xafec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xafec-0xb0ac (192 bytes).
  Loads 4 bytes into at from sym(_prom_cleared) +0x58 (`lw` at 0xb01c).
  Loads 4 bytes into a2 from sym(_prom_cleared) +0x58 (`lw` at 0xb044).
  Loads 8 bytes into a1 from sym(.srdata) +0xf8 (`ld` at 0xb034).
  Loads 8 bytes into a2 from sym(.srdata) +0xf8 (`ld` at 0xb058).
  Loads 2 bytes into a4 from abs 0xffffffffffffc42a (`lh` at 0xb050).
  Loads 2 bytes into a1 from abs 0xffffffffffffc42a (`lh` at 0xb07c).
  Loads 8 bytes into a0 from sym(.srdata) +0x100 (`ld` at 0xb054).
  Loads 8 bytes into a0 from sym(.srdata) +0x100 (`ld` at 0xb080).
  Loads 2 bytes into a0 from (sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2)) +0x0 (`lh` at 0xb074).
  Loads 2 bytes into a0 from (sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2)) +0x0 (`lh` at 0xb098).
  Stores 4 bytes from zero to sym(_prom_cleared) +0x58  (`sw` at 0xb0a0).
  Calls `in_promlog_mode` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xaffc).
  Calls `enter_promlog_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb014).
  Calls `getsysid` via direct with a0=sp-96, a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0xb028).
  Calls `sprintf` via direct with a0=sp-96, a1=sym(.rodata)+4456, a2=?, a3=? (`jal` at 0xb03c).
  Calls `ip27log_printf_nasid` via direct with a0=[(sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2))]:2, a1=a0 at entry (arg0), a2=sym(.rodata)+4456, a3=sp-96, a4=([-0x3bd6]:2 + [-0x3bd6]:2) (`jal` at 0xb070).
  Calls `ip27log_iprintf` via direct with a0=[(sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2))]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jal` at 0xb094).
  Calls `exit_promlog_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb09c).
  At `beq` at 0xb004 (target 0xb014), taken when v0(=ret(in_promlog_mode)) == 0 and falls through when v0(=ret(in_promlog_mode)) != 0.
  At `beq` at 0xb020 (target 0xb07c), taken when at(=[sym(.sdata)+88]) == 0 and falls through when at(=[sym(.sdata)+88]) != 0.
  At `beq` at 0xb030 (target 0xb044), taken when v0(=ret(getsysid)) == 0 and falls through when v0(=ret(getsysid)) != 0.
  At `beq` at 0xb048 (target 0xb07c), taken when a2(=[sym(.sdata)+88]) == 0 and falls through when a2(=[sym(.sdata)+88]) != 0.
  Returns v0 = ? (`jr` at 0xb00c).

- `xbwidget_to_xtslot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb0ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb0ac-0xb134 (136 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x108 (`ld` at 0xb0d4).
  Loads 8 bytes into v0 from sym(.srdata) +0x108 (`ld` at 0xb0dc).
  Loads 8 bytes into v0 from sym(.srdata) +0x108 (`ld` at 0xb0e4).
  Loads 1 byte into v0 from (sym(.data)+352 + (a1 << 0x2)) -0x1d (`lbu` at 0xb10c).
  Loads 1 byte into v0 from (sym(.data)+352 + (a1 << 0x2)) -0x1d (`lbu` at 0xb11c).
  Loads 1 byte into v0 from (sym(.data)+352 + (a1 << 0x2)) -0x1d (`lbu` at 0xb130).
  At `bne` at 0xb0c0 (target 0xb0f4), taken when a1 < 0x8 (signed) and falls through when a1 >= 0x8 (signed).
  At `beq` at 0xb0c8 (target 0xb0f4), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xb0d0 (target 0xb110), taken when a2 == a5(=0x49) and falls through when a2 != a5(=0x49).
  At `beq` at 0xb0d8 (target 0xb120), taken when a2 == a6(=0x50) and falls through when a2 != a6(=0x50).
  At `beq` at 0xb0e0 (target 0xb0fc), taken when a2 == a7(=0x58) and falls through when a2 != a7(=0x58).
  Returns v0 = 0xf0 (`jr` at 0xb0ec).
  Returns v0 = 0xf0 (`jr` at 0xb0f4).
  Returns v0 = [(sym(.data)+352 + (a1 << 0x2))-29]:1 (`jr` at 0xb108).
  Returns v0 = [(sym(.data)+352 + (a1 << 0x2))-29]:1 (`jr` at 0xb118).
  Returns v0 = [(sym(.data)+352 + (a1 << 0x2))-29]:1 (`jr` at 0xb12c).

- `get_slotclass` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb134 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb134-0xb1a0 (108 bytes).
  Loads 8 bytes into t1 from sym(.srdata) +0x110 (`ld` at 0xb13c).
  Loads 8 bytes into t2 from sym(.srdata) +0x110 (`ld` at 0xb150).
  At `beq` at 0xb154 (target 0xb194), taken when (a0 & 0xf0) == 0 and falls through when (a0 & 0xf0) != 0.
  At `beq` at 0xb160 (target 0xb180), taken when a3(?) == a5(=0x10) and falls through when a3(?) != a5(=0x10).
  At `beq` at 0xb168 (target 0xb180), taken when a3(?) == at(=0x20) and falls through when a3(?) != at(=0x20).
  At `beq` at 0xb170 (target 0xb180), taken when a3(?) == a6(=0x60) and falls through when a3(?) != a6(=0x60).
  At `beq` at 0xb178 (target 0xb188), taken when a3(?) == t0(=0xf0) and falls through when a3(?) != t0(=0xf0).
  Returns v0 = sym(.rodata)+4896 (`jr` at 0xb180).
  Returns v0 = sym(.rodata)+4896 (`jr` at 0xb18c).
  Returns v0 = sym(.rodata)+4896 (`jr` at 0xb198).

- `get_slotname` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb1a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb1a0-0xb1e0 (64 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x110 (`ld` at 0xb1b8).
  Calls `get_slotclass [0xb134]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb1b0).
  Calls `sprintf` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+4896, a2=ret(get_slotclass), a3=? (`jal` at 0xb1c8).
  Returns v0 = ret(sprintf) (`jr` at 0xb1d8).

- `get_widget_slotnum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb1e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb1e0-0xb1fc (28 bytes).
  Calls `xbwidget_to_xtslot [0xb0ac]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb1e8).
  Returns v0 = ret(xbwidget_to_xtslot) (`jr` at 0xb1f4).

- `get_widget_slotname` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb1fc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb1fc-0xb22c (48 bytes).
  Calls `get_widget_slotnum` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb208).
  Calls `get_slotname` via direct with a0=ret(get_widget_slotnum), a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0xb214).
  Returns v0 = ret(get_slotname) (`jr` at 0xb224).

- `xswitch_vertex_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb22c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb22c-0xb284 (88 bytes).
  Loads 8 bytes into a2 from sym(.srdata) +0x118 (`ld` at 0xb24c).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xb264).
  Calls `kmem_zalloc` via direct with a0=0x20, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb240).
  Calls `init_mutex` via direct with a0=ret(kmem_zalloc), a1=0x0, a2=sym(.rodata)+4936, a3=-0x1 (`jal` at 0xb25c).
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xb26c).
  Returns v0 = ret(hwgraph_info_add_LBL) (`jr` at 0xb27c).

- `xswitch_volunteer_delete` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb284 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb284-0xb2b0 (44 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xb284).
  Calls `hwgraph_info_remove_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-16, a3=a3 at entry (arg3) (`jal` at 0xb290).
  Calls `kmem_free` via direct with a0=?, a1=0x20, a2=?, a3=? (`jal` at 0xb29c).
  Returns v0 = ret(kmem_free) (`jr` at 0xb2a8).

- `volunteer_for_widgets` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb2b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb2b0-0xb3d8 (296 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xb2d0).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xb31c).
  Loads 8 bytes into a4 from sym(.srdata) +0x118 (`ld` at 0xb380).
  Loads 4 bytes into a1 from ? (base unknown) (`lw` at 0xb2ec).
  Loads 4 bytes into v1 from ? (base unknown) (`lw` at 0xb300).
  Stores 4 bytes from s0 to ? (base unknown)  (`sw` at 0xb2f8).
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0xb308).
  Loads 4 bytes into at from ? (base unknown) (`lw` at 0xb310).
  Loads 4 bytes into s0 from ? (base unknown) (`lw` at 0xb384).
  Loads 8 bytes into a4 from abs 0xffffffffffffc400 (`ld` at 0xb354).
  Loads 8 bytes into a4 from [-0x3c00]:8 +0x0 (`ld` at 0xb358).
  Loads 8 bytes into a4 from ([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3)) +0x0 (`ld` at 0xb364).
  Loads 2 bytes into a3 from [([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8 +0x8598 (`lhu` at 0xb370).
  Loads 1 byte into a2 from ? (base unknown) (`lbu` at 0xb39c).
  Loads 4 bytes into a4 from ? (base unknown) (`lw` at 0xb3ac).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0xb3b0).
  Stores 4 bytes from s0 to ? (base unknown) (`sw` at 0xb3b8).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0xb2cc).
  Calls `mutex_lock` via direct with a0=?, a1=0x19, a2=?, a3=? (`jal` at 0xb2e0).
  Calls `mutex_unlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb320).
  Calls `nodevertex_to_cnodeid` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0xb338).
  Calls `nodevertex_to_cnodeid` via direct with a0=a1 at entry (arg1), a1=?, a2=-0x1, a3=? (`jal` at 0xb34c).
  Calls `hwgraph_info_get_LBL` via direct with a0=?, a1=sym(.rodata)+4936, a2=sp-40, a3=? (`jal` at 0xb390).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=a0 at entry (arg0), a3=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2, a4=sym(.rodata)+4936, a5=(ret(nodevertex_to_cnodeid) << 0x3) (`jal` at 0xb3c8).
  At `beq` at 0xb2d8 (target 0xb338), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0xb318 (target 0xb384), taken when at(?) == v0(=0x2) and falls through when at(?) != v0(=0x2).
  At `beq` at 0xb344 (target 0xb32c), taken when v0(=ret(nodevertex_to_cnodeid)) == a2(=-0x1) and falls through when v0(=ret(nodevertex_to_cnodeid)) != a2(=-0x1).
  At `beq` at 0xb374 (target 0xb328), taken when a3(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) == 0 and falls through when a3(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) != 0.
  At `beq` at 0xb3a4 (target 0xb3bc), taken when a2(?) == a3(=0xa) and falls through when a2(?) != a3(=0xa).
  Returns v0 = ? (`jr` at 0xb330).

- `assign_widgets_to_volunteers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb3d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb3d8-0xb650 (632 bytes).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x118, including `ld` at 0xb3f0, 0xb42c, 0xb514.
  Loads 2 bytes into s0 from ? (base unknown) (`lh` at 0xb418).
  Loads 2 bytes into s0 from ? (base unknown) (`lh` at 0xb538).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0xb450).
  Loads 4 bytes into s4 from ? (base unknown) (`lw` at 0xb460).
  Loads 8 bytes into s6 from sym(.lit8) +0x40 (`ld` at 0xb46c).
  Loads 4 bytes into s2 from ? (base unknown) (`lw` at 0xb498).
  Loads 4 bytes into s2 from ? (base unknown) (`lw` at 0xb51c).
  Loads 8 bytes into t8 from table(0x9000000034000000) +0x0 (`ld` at 0xb4d4).
  Loads 8 bytes into v1 from abs 0xffffffffffffc400 (`ld` at 0xb5d8).
  Loads 8 bytes into v1 from [-0x3c00]:8 +0x0 (`ld` at 0xb5dc).
  Loads 8 bytes into v0 from ([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3)) +0x0 (`ld` at 0xb5e8).
  Loads 2 bytes into at from [([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8 +0x8598 (`lhu` at 0xb5f4).
  Calls `hwgraph_info_get_LBL` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+4936, a2=sp-104, a3=a3 at entry (arg3) (`jal` at 0xb400).
  Calls `xswitch_info_get` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xb414).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-112, a3=? (`jal` at 0xb428).
  Calls `xswitch_info_master_assignment_set` via direct with a0=ret(xswitch_info_get), a1=0x0, a2=?, a3=? (`jal` at 0xb45c).
  Calls `xswitch_info_master_assignment_set` via direct with a0=ret(xswitch_info_get), a1=?, a2=?, a3=? (`jal` at 0xb4a4).
  Calls `xbow_port_io_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb4c0).
  Calls `is_master_nasid_widget` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb4e4).
  Calls `hwgraph_info_get_LBL` via direct with a0=?, a1=sym(.rodata)+4936, a2=sp-104, a3=? (`jal` at 0xb528).
  Calls `get_console_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb534).
  Calls `xswitch_volunteer_delete [0xb284]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xb54c).
  Calls `iobrick_l1type_get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb588).
  Calls `io_brick_map_widget` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb5a8).
  Calls `nodevertex_to_cnodeid` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0xb5bc).
  Calls `nodevertex_to_cnodeid` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0xb5d0).
  Calls `get_console_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb610).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+4936, a2=?, a3=ret(get_console_nasid) (`jal` at 0xb628).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=a0 at entry (arg0), a3=? (`jal` at 0xb640).
  At `beq` at 0xb448 (target 0xb5b8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0xb484 (target 0xb584), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0xb4b8 (target 0xb54c), taken when s3(?) >= 0x10 (signed) and falls through when s3(?) < 0x10 (signed).
  At `beq` at 0xb4c8 (target 0xb4ac), taken when v0(=ret(xbow_port_io_enabled)) == 0 and falls through when v0(=ret(xbow_port_io_enabled)) != 0.
  At `beq` at 0xb4dc (target 0xb480), taken when s5(=0xc000) == t8(?) and falls through when s5(=0xc000) != t8(?).
  At `beq` at 0xb4ec (target 0xb484), taken when v0(=ret(is_master_nasid_widget)) == 0 and falls through when v0(=ret(is_master_nasid_widget)) != 0.
  At `blez` at 0xb4f4 (target 0xb610), taken when s4(?) <= 0 (signed) and falls through when s4(?) > 0 (signed).
  At `beq` at 0xb508 (target 0xb610), taken when s1(?) >= s4(?) (signed) and falls through when s1(?) < s4(?) (signed).
  At `bne` at 0xb53c (target 0xb504), taken when s0(?) != v0(=ret(get_console_nasid)) and falls through when s0(?) == v0(=ret(get_console_nasid)).
  At `bltz` at 0xb590 (target 0xb48c), taken when v0(=ret(iobrick_l1type_get_nasid)) < 0 (signed) and falls through when v0(=ret(iobrick_l1type_get_nasid)) >= 0 (signed).
  At `beq` at 0xb598 (target 0xb608), taken when v0(=ret(iobrick_l1type_get_nasid)) == t8(=0x23) and falls through when v0(=ret(iobrick_l1type_get_nasid)) != t8(=0x23).
  At `beq` at 0xb5a0 (target 0xb608), taken when v0(=ret(iobrick_l1type_get_nasid)) == t9(=0x3d) and falls through when v0(=ret(iobrick_l1type_get_nasid)) != t9(=0x3d).
  At `beq` at 0xb5c8 (target 0xb558), taken when v0(=ret(nodevertex_to_cnodeid)) == ra(=-0x1) and falls through when v0(=ret(nodevertex_to_cnodeid)) != ra(=-0x1).
  At `beq` at 0xb5f8 (target 0xb558), taken when at(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) == 0 and falls through when at(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) != 0.
  Returns v0 = ? (`jr` at 0xb57c).

- `iograph_early_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb650 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb650-0xb7c8 (376 bytes).
  Loads 8 bytes into s6 from sym(.srdata) +0x120 (`ld` at 0xb658).
  Loads 4 bytes into at from sym(numnodes) +0x0 (`lw` at 0xb66c).
  Loads 4 bytes into t8 from sym(numnodes) +0x0 (`lw` at 0xb6a4).
  Loads 8 bytes into s4 from sym(.lit8) +0x40 (`ld` at 0xb694).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0xb6c0).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0xb6cc).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0xb6e0).
  Loads 4 bytes into a6 from ? (base unknown) (`lw` at 0xb6ec).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0xb710).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0xb724).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0xb754).
  Stores 4 bytes from s2 to ? (base unknown)  (`sw` at 0xb730).
  Stores 4 bytes from s2 to ? (base unknown)  (`sw` at 0xb75c).
  Loads 2 bytes into a0 from sym(compact_to_nasid_node) +0x0 (`lh` at 0xb7c4).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb778).
  Calls `hubio_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb788).
  At `blez` at 0xb688 (target 0xb788), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `beq` at 0xb6b8 (target 0xb788), taken when s3(?) >= t8(=[sym(numnodes)]) (signed) and falls through when s3(?) < t8(=[sym(numnodes)]) (signed).
  At `beq` at 0xb6d8 (target 0xb778), taken when s5(=0xc000) == t8(?) and falls through when s5(=0xc000) != t8(?).
  At `beq` at 0xb6f8 (target 0xb704), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0xb704 (target 0xb6a4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xb71c (target 0xb6a4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xb73c (target 0xb74c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xb74c (target 0xb6a4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0xb768 (target 0xb714), taken when a2(?) != 0 and falls through when a2(?) == 0.
  Returns v0 = ret(hubio_init) (`jr` at 0xb7b0).

- `setnoderun` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb7c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb7c8-0xb8d0 (264 bytes).
  Loads 8 bytes into a3 from abs 0xffffffffffffc400 (`ld` at 0xb7fc).
  Loads 8 bytes into t8 from abs 0xffffffffffffc400 (`ld` at 0xb83c).
  Loads 8 bytes into a3 from [-0x3c00]:8 +0x0 (`ld` at 0xb800).
  Loads 8 bytes into a3 from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0 (`ld` at 0xb808).
  Loads 2 bytes into a4 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596 (`lh` at 0xb810).
  Loads 2 bytes into t8 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598 (`lhu` at 0xb81c).
  Loads 8 bytes into t8 from [-0x3c00]:8 +0x0 (`ld` at 0xb840).
  Loads 8 bytes into t8 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0xb848).
  Loads 2 bytes into t8 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598 (`lhu` at 0xb850).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb86c).
  Calls `setmustrun` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb87c).
  At `beq` at 0xb7f0 (target 0xb8bc), taken when a0 == a5(=-0x1) and falls through when a0 != a5(=-0x1).
  At `beq` at 0xb814 (target 0xb8c8), taken when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == a5(=-0x1) and falls through when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != a5(=-0x1).
  At `blez` at 0xb82c (target 0xb89c), taken when t8(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) <= 0 (signed) and falls through when t8(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) > 0 (signed).
  At `beq` at 0xb864 (target 0xb89c), taken when s1(?) >= t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed) and falls through when s1(?) < t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  At `beq` at 0xb874 (target 0xb83c), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  Returns v0 = ? (`jr` at 0xb8b4).

- `restorenoderun` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb8d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb8d0-0xb8ec (28 bytes).
  Calls `restoremustrun` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb8d8).
  Returns v0 = ret(restoremustrun) (`jr` at 0xb8e4).

- `io_init_done` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb8ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb8ec-0xb91c (48 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0x128 (`ld` at 0xb8ec).
  Calls `vsema` via direct with a0=sym(.bss)+1792, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb8f8).
  Calls `restorenoderun` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0xb900).
  Calls `sthread_exit` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xb908).
  Returns v0 = ret(sthread_exit) (`jr` at 0xb914).

- `early_probe_for_widget` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb91c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb91c-0xb9b0 (148 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xb928).
  Loads 2 bytes into a1 from ? (base unknown) (`lh` at 0xb940).
  Loads 8 bytes into a3 from sym(.lit8) +0x20 (`ld` at 0xb944).
  Loads 8 bytes into a3 from table(0x9200000001c00128) +0x0 (`ld` at 0xb950).
  Loads 4 bytes into a2 from table(0x9200000000000004) +0x0 (`lw` at 0xb96c).
  Stores 4 bytes from a4 to a1 (arg1 at entry) +0x4 (`sw` at 0xb974).
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x8 (`sw` at 0xb984).
  Stores 4 bytes from a2 to a1 (arg1 at entry) +0x0 (`sw` at 0xb98c).
  Stores 4 bytes from a5 to a1 (arg1 at entry) +0x8  (`sw` at 0xb9a0).
  Stores 4 bytes from a5 to a1 (arg1 at entry) +0x4  (`sw` at 0xb9a4).
  Stores 4 bytes from a5 to a1 (arg1 at entry) +0x0  (`sw` at 0xb9ac).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-32, a3=a3 at entry (arg3) (`jal` at 0xb934).
  At `beq` at 0xb964 (target 0xb99c), taken when (a3(=entry(0x9200000001c00128)) & 0x2000) == 0 and falls through when (a3(=entry(0x9200000001c00128)) & 0x2000) != 0.
  Returns v0 = ret(hwgraph_info_get_LBL) (`jr` at 0xb994).

- `xwidget_inventory_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb9b0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb9b0-0xb9f0 (64 bytes).
  Loads 1 byte into a2 from a1 (arg1 at entry) +0x5 (`lbu` at 0xb9cc).
  Loads 1 byte into a4 from a1 (arg1 at entry) +0xa (`lbu` at 0xb9d0).
  Loads 2 bytes into a3 from a1 (arg1 at entry) +0xe (`lh` at 0xb9d8).
  Calls `device_inventory_add` via direct with a0=a0 at entry (arg0), a1=0xb, a2=[a1+5]:1, a3=[a1+14]:2, a7=a1 at entry (arg1) (`jal` at 0xb9e0).
  At `bne` at 0xb9bc (target 0xb9cc), taken when a1 != 0 and falls through when a1 == 0.
  Returns v0 = ? (`jr` at 0xb9c4).

- `io_xswitch_widget_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb9f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb9f0-0xc184 (1940 bytes).
  16 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x118, including `ld` at 0xba24, 0xbbc8, 0xbc94.
  Loads 2 bytes into s1 from ? (base unknown) (`lh` at 0xba44).
  Loads 8 bytes into s3 from sym(.srdata) +0x130 (`ld` at 0xba48).
  9 such loads of 8 bytes through zero (0x0) to abs 0xffffffffffffc400, including `ld` at 0xba50, 0xbb38, 0xbc48.
  Loads 2 bytes into s3 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0xba58).
  Loads 8 bytes into s8 from [-0x3c00]:8 +0x0 (`ld` at 0xba5c).
  Loads 8 bytes into s8 from ([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3)) +0x0 (`ld` at 0xba68).
  Loads 2 bytes into s8 from [([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8 +0x8600 (`lh` at 0xba74).
  Loads 1 byte into ra from ? (base unknown) (`lbu` at 0xba8c).
  Loads 8 bytes into t1 from sym(.lit8) +0x40 (`ld` at 0xbad0).
  Loads 8 bytes into a3 from sym(.lit8) +0x40 (`ld` at 0xbb58).
  Loads 8 bytes into t9 from table(0x9000000034000000) +0x0 (`ld` at 0xbae0).
  Loads 8 bytes into a3 from (table(0x9600000000000000) | 0x2000) +0x48 (`ld` at 0xbb04).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0xbb14).
  Loads 8 bytes into a0 from [-0x3c00]:8 +0x0 (`ld` at 0xbb3c).
  Loads 8 bytes into a0 from ((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8) +0x0 (`ld` at 0xbb44).
  Loads 2 bytes into a0 from [((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8600 (`lh` at 0xbb4c).
  Loads 8 bytes into a3 from ([[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21) -0x6fffffffcc000000 (`ld` at 0xbb64).
  Loads 8 bytes into t1 from (([[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0xbb88).
  Loads 4 bytes into t0 from ? (base unknown) (`lw` at 0xbb98).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0xbc10).
  5 such loads of 8 bytes through a2 ([-0x3c00]:8) to [-0x3c00]:8 +0x0, including `ld` at 0xbc4c, 0xbd44, 0xbd78.
  5 such loads of 8 bytes through a2 (([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))) to ([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3)) +0x0, including `ld` at 0xbc54, 0xbd4c, 0xbd80.
  5 such loads of 2 bytes through a2 ([([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+65536) to [([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8 +0x861a, including `lh` at 0xbc6c, 0xbd60, 0xbd98.
  Loads 4 bytes into a0 from sym(hwgraph_root) +0x0 (`lw` at 0xbc7c).
  Loads 4 bytes into a0 from sym(hwgraph_root) +0x0 (`lw` at 0xbe6c).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0xbc84).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0xbcac).
  Loads 8 bytes into t2 from sym(.srdata) +0x138 (`ld` at 0xbdd4).
  Loads 8 bytes into a4 from sym(.srdata) +0x140 (`ld` at 0xbde0).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0xbde8).
  Loads 1 byte into a4 from ? (base unknown) (`lbu` at 0xbdf0).
  Loads 4 bytes into s5 from ? (base unknown) (`lw` at 0xbed4).
  Loads 4 bytes into t8 from sym(force_fire_and_forget) +0x0 (`lw` at 0xbf1c).
  Loads 8 bytes into at from sym(.lit8) +0x68 (`ld` at 0xbf3c).
  Loads 8 bytes into at from abs 0x9000000014000000 (`ld` at 0xbf40).
  Loads 8 bytes into v0 from sym(.lit8) +0x70 (`ld` at 0xc084).
  Calls `xswitch_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xba10).
  Calls `hwgraph_info_get_LBL` via direct with a0=a1 at entry (arg1), a1=sym(.rodata)+4936, a2=sp-352, a3=? (`jal` at 0xba38).
  Calls `xbow_port_io_enabled` via direct with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xba9c).
  Calls `xswitch_info_link_ok` via direct with a0=ret(xswitch_info_get), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xbab0).
  Calls `xswitch_info_master_assignment_get` via direct with a0=ret(xswitch_info_get), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xbac0).
  Calls `find_lboard_class` via direct with a0=?, a1=0x70, a2=?, a3=? (`jal` at 0xbb28).
  Calls `find_lboard_class` via direct with a0=?, a1=0x70, a2=?, a3=? (`jal` at 0xbbb0).
  Calls `iobrick_module_get_nasid` via direct with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xbbd4).
  Calls `iobrick_l1type_get_nasid` via direct with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xbbe4).
  Calls `iobrick_L1bricktype_to_name` via direct with a0=ret(iobrick_l1type_get_nasid), a1=?, a2=?, a3=? (`jal` at 0xbbf0).
  Calls `get_chimera_type` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbc30).
  Calls `sprintf` via direct with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name) (`jal` at 0xbc68).
  Calls `hwgraph_path_add` via direct with a0=[sym(hwgraph_root)], a1=sp-344, a2=sp-216, a3=? (`jal` at 0xbc78).
  Calls `get_chimera_type` via direct with a0=?, a1=sym(.rodata)+4936, a2=?, a3=?, a4=0x4000 (`jal` at 0xbc98).
  Calls `get_chimera_type` via direct with a0=?, a1=?, a2=?, a3=?, a4=0x3, a5=0x8000, a7=0xe (`jal` at 0xbcd0).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+4936, a2=0x5, a3=? (`jal` at 0xbcfc).
  Calls `kern_malloc` via direct with a0=0x20, a1=?, a2=?, a3=? (`jal` at 0xbd04).
  Calls `get_elsc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbd0c).
  Calls `l1_mfg_string` via direct with a0=?, a1=ret(get_elsc), a2=?, a3=a2 at entry (arg2) (`jal` at 0xbd20).
  Calls `kern_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbd30).
  Calls `sndrv_attach` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbd38).
  Calls `sprintf` via direct with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=? (`jal` at 0xbd5c).
  Calls `hwgraph_path_to_vertex` via direct with a0=sp-344, a1=?, a2=?, a3=? (`jal` at 0xbd64).
  Calls `sprintf` via direct with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name) (`jal` at 0xbd94).
  Calls `hwgraph_path_to_vertex` via direct with a0=sp-344, a1=?, a2=?, a3=? (`jal` at 0xbd9c).
  Calls `hwgraph_edge_add` via direct with a0=?, a1=?, a2=sym(.rodata)+4936, a3=? (`jal` at 0xbdb8).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xbe10).
  Calls `sprintf` via direct with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name), a4=sym(.rodata)+4936, a5=a2 at entry (arg2) (`jal` at 0xbe4c).
  Calls `hwgraph_path_add` via direct with a0=[sym(hwgraph_root)], a1=sp-344, a2=sp-212, a3=? (`jal` at 0xbe68).
  Calls `hwgraph_connectpt_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbe70).
  Calls `device_master_set` via direct with a0=ret(hwgraph_connectpt_get), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xbe7c).
  Calls `sprintf` via direct with a0=sp-208, a1=sym(.rodata)+4936, a2=a2 at entry (arg2), a3=? (`jal` at 0xbe94).
  Calls `hwgraph_edge_add` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-208, a3=? (`jal` at 0xbea4).
  Calls `xswitch_info_vhdl_set` via direct with a0=ret(xswitch_info_get), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xbeb4).
  Calls `xwidget_inventory_add [0xb9b0]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbf14).
  Calls `get_chimera_type` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbf54).
  Calls `get_chimera_type` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbf68).
  Calls `get_chimera_type` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xbf7c).
  Calls `hub_set_piomode` via direct with a0=?, a1=0x2, a2=?, a3=? (`jal` at 0xbfcc).
  Calls `xwidget_register` via direct with a0=sp-200, a1=?, a2=a2 at entry (arg2), a3=a1 at entry (arg1), a5=a3 at entry (arg3) (`jal` at 0xbff0).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+4936, a2=0x4, a3=? (`jal` at 0xc02c).
  Calls `xbow_port_io_enabled` via direct with a0=?, a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xc03c).
  Calls `sprintf` via direct with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name) (`jal` at 0xc074).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xc0b4).
  Calls `hub_set_piomode` via direct with a0=?, a1=0x2, a2=?, a3=? (`jal` at 0xc0c4).
  Calls `chk_for_pebrick` via direct with a0=?, a1=-0x35, a2=?, a3=? (`jal` at 0xc0e4).
  Calls `chk_for_pebrick` via direct with a0=[[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a1=-0x35, a2=([[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21), a3=? (`jal` at 0xc0f4).
  Calls `assfail` via direct with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x29a, a3=? (`jal` at 0xc110).
  Calls `assfail` via direct with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x2da, a3=? (`jal` at 0xc12c).
  Calls `assfail` via direct with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x2de, a3=? (`jal` at 0xc148).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=sp-344, a3=0x1 (`jal` at 0xc160).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=sp-344, a3=? (`jal` at 0xc174).
  At `beq` at 0xbaa4 (target 0xc03c), taken when v0(=ret(xbow_port_io_enabled)) == 0 and falls through when v0(=ret(xbow_port_io_enabled)) != 0.
  At `beq` at 0xbab8 (target 0xbff8), taken when v0(=ret(xswitch_info_link_ok)) == 0 and falls through when v0(=ret(xswitch_info_link_ok)) != 0.
  At `bne` at 0xbac8 (target 0xbff8), taken when v0(=ret(xswitch_info_master_assignment_get)) != s4(=a1) and falls through when v0(=ret(xswitch_info_master_assignment_get)) == s4(=a1).
  At `beq` at 0xbaec (target 0xc0e4), taken when t0(=0xc000) == t9(?) and falls through when t0(=0xc000) != t9(?).
  At `beq` at 0xbb18 (target 0xc0a4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0xbb30 (target 0xbbbc), taken when v0(=ret(find_lboard_class)) != 0 and falls through when v0(=ret(find_lboard_class)) == 0.
  At `beq` at 0xbb54 (target 0xbbbc), taken when a0(=[[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == a2(=-0x1) and falls through when a0(=[[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != a2(=-0x1).
  At `beq` at 0xbb70 (target 0xc0f4), taken when a1(=0xc000) == a3(?) and falls through when a1(=0xc000) != a3(?).
  At `beq` at 0xbb9c (target 0xbbb0), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0xbbc0 (target 0xc104), taken when a1(=ret(find_lboard_class)) == 0 and falls through when a1(=ret(find_lboard_class)) != 0.
  At `bltz` at 0xbc04 (target 0xbe20), taken when a0(?) < 0 (signed) and falls through when a0(?) >= 0 (signed).
  At `bne` at 0xbc1c (target 0xbc30), taken when v0(=0x8000) != a1(?) and falls through when v0(=0x8000) == a1(?).
  At `beq` at 0xbc28 (target 0xc054), taken when s0(=a2) == a2(=0xb) and falls through when s0(=a2) != a2(=0xb).
  At `beq` at 0xbc38 (target 0xbc48), taken when v0(=ret(get_chimera_type)) == 0 and falls through when v0(=ret(get_chimera_type)) != 0.
  At `beq` at 0xbc40 (target 0xc054), taken when s0(=a2) == a3(=0xa) and falls through when s0(=a2) != a3(=0xa).
  At `beq` at 0xbc90 (target 0xc024), taken when a3(?) == a4(=0x4000) and falls through when a3(?) != a4(=0x4000).
  At `beq` at 0xbca4 (target 0xc020), taken when v0(=ret(get_chimera_type)) == a4(=0x3) and falls through when v0(=ret(get_chimera_type)) != a4(=0x3).
  At `bne` at 0xbcb8 (target 0xbcd0), taken when a5(=0x8000) != a6(?) and falls through when a5(=0x8000) == a6(?).
  At `beq` at 0xbcc0 (target 0xc020), taken when s0(=a2) == a7(=0xe) and falls through when s0(=a2) != a7(=0xe).
  At `beq` at 0xbcc8 (target 0xc024), taken when s0(=a2) == t0(=0xf) and falls through when s0(=a2) != t0(=0xf).
  At `beq` at 0xbcd8 (target 0xbcf4), taken when v0(=ret(get_chimera_type)) == 0 and falls through when v0(=ret(get_chimera_type)) != 0.
  At `beq` at 0xbce4 (target 0xc020), taken when s0(=a2) == t1(=0xc) and falls through when s0(=a2) != t1(=0xc).
  At `beq` at 0xbcec (target 0xc020), taken when s0(=a2) == t2(=0xf) and falls through when s0(=a2) != t2(=0xf).
  At `beq` at 0xbd28 (target 0xc0ac), taken when v0(=ret(l1_mfg_string)) == 0 and falls through when v0(=ret(l1_mfg_string)) != 0.
  At `beq` at 0xbd6c (target 0xc120), taken when v0(=ret(hwgraph_path_to_vertex)) == 0 and falls through when v0(=ret(hwgraph_path_to_vertex)) != 0.
  At `beq` at 0xbda4 (target 0xc13c), taken when v0(=ret(hwgraph_path_to_vertex)) == 0 and falls through when v0(=ret(hwgraph_path_to_vertex)) != 0.
  At `beq` at 0xbdc4 (target 0xbe20), taken when v0(=ret(hwgraph_edge_add)) == a3(=0x1) and falls through when v0(=ret(hwgraph_edge_add)) != a3(=0x1).
  At `bne` at 0xbdcc (target 0xc158), taken when v0(=ret(hwgraph_edge_add)) != 0 and falls through when v0(=ret(hwgraph_edge_add)) == 0.
  At `beq` at 0xbdf8 (target 0xbe04), taken when (a4(?) & 0x2) == 0 and falls through when (a4(?) & 0x2) != 0.
  At `bne` at 0xbe18 (target 0xc170), taken when v0(=ret(hwgraph_info_add_LBL)) != 0 and falls through when v0(=ret(hwgraph_info_add_LBL)) == 0.
  At `beq` at 0xbebc (target 0xc084), taken when s0(=a2) == 0 and falls through when s0(=a2) != 0.
  At `beq` at 0xbf20 (target 0xc090), taken when t8(=[sym(force_fire_and_forget)]) == 0 and falls through when t8(=[sym(force_fire_and_forget)]) != 0.
  At `beq` at 0xbf28 (target 0xbfcc), taken when s2(?) == t9(=0xc104) and falls through when s2(?) != t9(=0xc104).
  At `beq` at 0xbf34 (target 0xbfcc), taken when s2(?) == ra(=0xc105) and falls through when s2(?) != ra(=0xc105).
  At `beq` at 0xbf4c (target 0xbfcc), taken when at(?) == v0(=0x4000) and falls through when at(?) != v0(=0x4000).
  At `beq` at 0xbf60 (target 0xbfcc), taken when v0(=ret(get_chimera_type)) == v1(=0x2) and falls through when v0(=ret(get_chimera_type)) != v1(=0x2).
  At `beq` at 0xbf74 (target 0xbfcc), taken when v0(=ret(get_chimera_type)) == a0(=0x3) and falls through when v0(=ret(get_chimera_type)) != a0(=0x3).
  At `beq` at 0xbf88 (target 0xbfcc), taken when v0(=ret(get_chimera_type)) == a1(=0x5) and falls through when v0(=ret(get_chimera_type)) != a1(=0x5).
  At `beq` at 0xbf94 (target 0xc0d4), taken when s2(?) == a2(=0xd102) and falls through when s2(?) != a2(=0xd102).
  At `bne` at 0xbfa0 (target 0xbfe0), taken when s2(?) != a3(=0xd112) and falls through when s2(?) == a3(=0xd112).
  At `bne` at 0xbfac (target 0xbfe0), taken when s5(?) != a4(=0x24) and falls through when s5(?) == a4(=0x24).
  At `beq` at 0xbfc4 (target 0xbfdc), taken when (a5(?) & 0x2) == 0 and falls through when (a5(?) & 0x2) != 0.
  At `bne` at 0xbfd4 (target 0xc0c4), taken when s1(?) != s8(?) and falls through when s1(?) == s8(?).
  At `bne` at 0xc044 (target 0xbab0), taken when v0(=ret(xbow_port_io_enabled)) != 0 and falls through when v0(=ret(xbow_port_io_enabled)) == 0.
  At `bne` at 0xc094 (target 0xbf28), taken when s2(?) != v1(=0xc102) and falls through when s2(?) == v1(=0xc102).
  At `bne` at 0xc0d4 (target 0xbfa0), taken when s5(?) != v0(=0x24) and falls through when s5(?) == v0(=0x24).
  Returns v0 = ? (`jr` at 0xc018).

- `io_init_xswitch_widgets` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc184 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc184-0xc22c (168 bytes).
  Loads 8 bytes into a1 from abs 0xffffffffffffc400 (`ld` at 0xc1c0).
  Loads 8 bytes into a1 from [-0x3c00]:8 +0x0 (`ld` at 0xc1c4).
  Loads 8 bytes into a1 from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0 (`ld` at 0xc1cc).
  Loads 4 bytes into a1 from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x8c80 (`lw` at 0xc1e4).
  Calls `async_attach_new` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc1a8).
  Calls `io_xswitch_widget_init` via direct with a0=a0 at entry (arg0), a1=[[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+35968], a2=?, a3=ret(async_attach_new) (`jal` at 0xc1e0).
  Calls `async_attach_waitall` via direct with a0=ret(async_attach_new), a1=?, a2=?, a3=? (`jal` at 0xc1fc).
  Calls `async_attach_free` via direct with a0=ret(async_attach_new), a1=?, a2=?, a3=? (`jal` at 0xc214).
  At `bne` at 0xc1f4 (target 0xc1c0), taken when s0(?) < 0x10 (signed) and falls through when s0(?) >= 0x10 (signed).
  Returns v0 = ret(async_attach_free) (`jr` at 0xc224).

- `io_link_xswitch_widgets` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc22c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc22c-0xc4ac (640 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0x40 (`ld` at 0xc248).
  Loads 8 bytes into v1 from sym(.srdata) +0x120 (`ld` at 0xc24c).
  Loads 2 bytes into v1 from (sym(compact_to_nasid_node) + (a1 + a1)) +0x0 (`lh` at 0xc264).
  Loads 8 bytes into at from abs 0xffffffffffffc400 (`ld` at 0xc26c).
  Loads 8 bytes into a1 from abs 0xffffffffffffc400 (`ld` at 0xc2f4).
  Loads 8 bytes into a1 from abs 0xffffffffffffc400 (`ld` at 0xc3c4).
  Loads 8 bytes into at from [-0x3c00]:8 +0x0 (`ld` at 0xc280).
  Loads 8 bytes into at from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0 (`ld` at 0xc29c).
  Loads 2 bytes into at from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x8600 (`lh` at 0xc2b4).
  Loads 8 bytes into a1 from [-0x3c00]:8 +0x0 (`ld` at 0xc2f8).
  Loads 8 bytes into a1 from [-0x3c00]:8 +0x0 (`ld` at 0xc3c8).
  Loads 8 bytes into a1 from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0 (`ld` at 0xc300).
  Loads 8 bytes into a1 from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0 (`ld` at 0xc3d0).
  Loads 2 bytes into a1 from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x861a (`lh` at 0xc30c).
  Loads 2 bytes into a1 from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x861a (`lh` at 0xc3dc).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x118, including `ld` at 0xc318, 0xc35c, 0xc35c.
  Stores 4 bytes from a2 to ret(find_lboard_module) +0x90  (`sw` at 0xc348).
  Loads 8 bytes into a2 from ([(sym(compact_to_nasid_node) + (a1 + a1))]:2 << 0x21) -0x6fffffffcc000000 (`ld` at 0xc388).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0xc3a0).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0xc3fc).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0xc414).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0xc3b0).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0xc420).
  Stores 4 bytes from a5 to ret(find_lboard_module) +0x90 (`sw` at 0xc43c).
  Calls `find_lboard_module` via direct with a0=?, a1=[[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+34330]:2, a2=?, a3=? (`jal` at 0xc308).
  Calls `sprintf` via direct with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xc324).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-288, a2=sp-160, a3=? (`jal` at 0xc334).
  Calls `sprintf` via direct with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xc368).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-288, a2=sp-160, a3=? (`jal` at 0xc378).
  Calls `find_lboard_module` via direct with a0=?, a1=[[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+34330]:2, a2=?, a3=? (`jal` at 0xc3d8).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc470).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc480).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xc49c).
  At `beq` at 0xc314 (target 0xc490), taken when s2(=ret(find_lboard_module)) == 0 and falls through when s2(=ret(find_lboard_module)) != 0.
  At `beq` at 0xc33c (target 0xc438), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `beq` at 0xc358 (target 0xc440), taken when s0(?) >= 0x10 (signed) and falls through when s0(?) < 0x10 (signed).
  At `bne` at 0xc380 (target 0xc34c), taken when v0(=ret(hwgraph_traverse)) != 0 and falls through when v0(=ret(hwgraph_traverse)) == 0.
  At `beq` at 0xc398 (target 0xc470), taken when s4(=0xc000) == a2(?) and falls through when s4(=0xc000) != a2(?).
  At `beq` at 0xc3b8 (target 0xc3c4), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0xc3e4 (target 0xc314), taken when v0(=ret(find_lboard_module)) != 0 and falls through when v0(=ret(find_lboard_module)) == 0.
  At `beq` at 0xc3f4 (target 0xc314), taken when a2(?) == a3(=-0x1) and falls through when a2(?) != a3(=-0x1).
  At `beq` at 0xc408 (target 0xc480), taken when s4(=0xc000) == a4(?) and falls through when s4(=0xc000) != a4(?).
  At `bne` at 0xc428 (target 0xc2f0), taken when a3(?) != 0 and falls through when a3(?) == 0.
  Returns v0 = ? (`jr` at 0xc468).

- `do_io_init_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc4ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc4ac-0xc7b4 (776 bytes).
  Loads 8 bytes into t9 from abs 0xffffffffffffc400 (`ld` at 0xc4ac).
  Loads 8 bytes into s0 from abs 0xffffffffffffc400 (`ld` at 0xc6a8).
  Loads 8 bytes into t9 from [-0x3c00]:8 +0x0 (`ld` at 0xc4b4).
  Loads 8 bytes into t8 from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0 (`ld` at 0xc4c8).
  Loads 4 bytes into s1 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8c80 (`lw` at 0xc4dc).
  Loads 8 bytes into s0 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x85e8 (`ld` at 0xc4f4).
  4 such loads of 8 bytes through s0 (?) to ? (base unknown), including `ld` at 0xc514, 0xc520, 0xc52c.
  Loads 8 bytes into s0 from sym(.srdata) +0x120 (`ld` at 0xc538).
  Loads 2 bytes into a1 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0xc554).
  Loads 2 bytes into a6 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0xc598).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x118, including `ld` at 0xc570, 0xc584, 0xc5e4.
  Loads 8 bytes into a7 from sym(.lit8) +0x70 (`ld` at 0xc59c).
  Loads 4 bytes into a2 from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dffffff1ffffffc (`lw` at 0xc5a8).
  Stores 1 byte from zero to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x863c  (`sb` at 0xc5ec).
  Stores 4 bytes from a2 to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8640 (`sw` at 0xc614).
  Loads 1 byte into a2 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x863c (`lbu` at 0xc668).
  Loads 1 byte into a2 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x863c (`lbu` at 0xc7b0).
  Loads 1 byte into a4 from ? (base unknown) (`lbu` at 0xc67c).
  Loads 2 bytes into a2 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8600 (`lh` at 0xc690).
  Loads 8 bytes into t8 from sym(.srdata) +0x130 (`ld` at 0xc6a0).
  Loads 2 bytes into t8 from (sym(nasid_to_compact_node) + ([[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 + [[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2)) +0x0 (`lh` at 0xc6b0).
  Loads 8 bytes into s0 from [-0x3c00]:8 +0x0 (`ld` at 0xc6b4).
  Loads 4 bytes into a1 from table(0x8c80) +0x0 (`lw` at 0xc6dc).
  Loads 4 bytes into a2 from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dffffff1fffffdc (`lw` at 0xc768).
  Loads 4 bytes into a3 from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dffffff1fffffdc (`lw` at 0xc78c).
  Stores 1 byte from a2 to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x863c (`sb` at 0xc778).
  Stores 1 byte from a3 to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x863c (`sb` at 0xc7a8).
  Calls `hubdev_docallouts` via direct with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc4ec).
  Calls `router_init` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0xc50c).
  Calls `eeprom_vertex_info_set` via direct with a0=0x100, a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a3=0x0, a4=0x0 (`jal` at 0xc550).
  Calls `early_probe_for_widget [0xb91c]` via direct with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=sp-112, a2=?, a3=? (`jal` at 0xc55c).
  Calls `hwgraph_path_add` via direct with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=sym(.rodata)+4936, a2=sp-96, a3=? (`jal` at 0xc57c).
  Calls `hwgraph_edge_add` via direct with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=?, a2=sym(.rodata)+4936, a3=? (`jal` at 0xc590).
  Calls `sprintf` via direct with a0=sp-88, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xc5f8).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sp-88, a2=sp-72, a3=? (`jal` at 0xc608).
  Calls `device_master_set` via direct with a0=?, a1=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a2=?, a3=? (`jal` at 0xc640).
  Calls `hwgraph_info_get_LBL` via direct with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=sym(.rodata)+4936, a2=sp-64, a3=? (`jal` at 0xc658).
  Calls `xwidget_register` via direct with a0=sp-112, a1=?, a2=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34364]:1, a3=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a5=0x0 (`jal` at 0xc678).
  Calls `volunteer_for_widgets [0xb2b0]` via direct with a0=?, a1=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a2=?, a3=? (`jal` at 0xc688).
  Calls `volunteer_for_widgets [0xb2b0]` via direct with a0=?, a1=entry(0x8c80), a2=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a3=?, a5=-0x1 (`jal` at 0xc6d8).
  Calls `psema` via direct with a0=table(0x8608), a1=0x19, a2=0x8608, a3=? (`jal` at 0xc6f4).
  Calls `io_init_xswitch_widgets [0xc184]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0xc700).
  Calls `io_link_xswitch_widgets [0xc22c]` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0xc70c).
  Calls `assign_widgets_to_volunteers [0xb3d8]` via direct with a0=?, a1=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a2=?, a3=? (`jal` at 0xc748).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc758).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+4936, a2=?, a3=?, a4=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a6=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x92000000e0000000, a7=0xd002 (`jal` at 0xc7a4).
  At `bne` at 0xc4f8 (target 0xc520), taken when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34280]:8) != 0 and falls through when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34280]:8) == 0.
  At `beq` at 0xc518 (target 0xc538), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0xc524 (target 0xc508), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bne` at 0xc530 (target 0xc520), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0xc56c (target 0xc714), taken when t9(?) == ra(=-0x1) and falls through when t9(?) != ra(=-0x1).
  At `beq` at 0xc5bc (target 0xc768), taken when a2(?) == a3(=0xc002) and falls through when a2(?) != a3(=0xc002).
  At `beq` at 0xc5c8 (target 0xc768), taken when a2(?) == a7(=0xd002) and falls through when a2(?) != a7(=0xd002).
  At `beq` at 0xc5d0 (target 0xc5e8), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0xc5d8 (target 0xc5e8), taken when a2(?) == a0(=0xd000) and falls through when a2(?) != a0(=0xd000).
  At `bne` at 0xc5e0 (target 0xc78c), taken when a2(?) != a1(=0xd100) and falls through when a2(?) == a1(=0xd100).
  At `beq` at 0xc61c (target 0xc77c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xc628 (target 0xc734), taken when a0(?) == a3(=0xd000) and falls through when a0(?) != a3(=0xd000).
  At `beq` at 0xc634 (target 0xc730), taken when a0(?) == a4(=0xd100) and falls through when a0(?) != a4(=0xd100).
  At `bne` at 0xc648 (target 0xc6e8), taken when v0(=ret(device_master_set)) != 0 and falls through when v0(=ret(device_master_set)) == 0.
  At `beq` at 0xc680 (target 0xc714), taken when s0(=one of 0x0, 0x1) == 0 and falls through when s0(=one of 0x0, 0x1) != 0.
  At `beq` at 0xc698 (target 0xc744), taken when a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == a5(=-0x1) and falls through when a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != a5(=-0x1).
  At `bne` at 0xc734 (target 0xc63c), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0xc750 (target 0xc700), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0xc77c (target 0xc628), taken when a1(?) != 0 and falls through when a1(?) == 0.
  Returns v0 = ? (`jr` at 0xc728).

- `io_init_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc7b4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc7b4-0xc8e4 (304 bytes).
  Loads 8 bytes into a5 from sym(.srdata) +0x120 (`ld` at 0xc7b4).
  Loads 2 bytes into a5 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0xc7c0).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0xc7c4).
  Loads 8 bytes into at from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6fffffffcc000000 (`ld` at 0xc7d4).
  Loads 8 bytes into a7 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0xc804).
  Loads 4 bytes into a7 from ? (base unknown) (`lw` at 0xc818).
  Loads 4 bytes into v0 from ret(find_lboard_class) +0x0 (`lw` at 0xc854).
  Loads 4 bytes into v0 from ret(find_lboard_class) +0x0 (`lw` at 0xc8b8).
  Loads 2 bytes into a1 from ret(find_component) +0x3a (`lh` at 0xc89c).
  Loads 8 bytes into a0 from sym(.srdata) +0x130 (`ld` at 0xc8a0).
  Loads 2 bytes into a0 from (sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2)) +0x0 (`lh` at 0xc8b0).
  Calls `find_lboard_class` via direct with a0=?, a1=0x10, a2=?, a3=? (`jal` at 0xc82c).
  Calls `find_lboard_class` via direct with a0=?, a1=0x10, a2=?, a3=? (`jal` at 0xc874).
  Calls `find_component` via direct with a0=ret(find_lboard_class), a1=0x0, a2=0x26, a3=? (`jal` at 0xc88c).
  Calls `do_io_init_node [0xc4ac]` via direct with a0=[(sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2))]:2, a1=([ret(find_component)+58]:2 + [ret(find_component)+58]:2), a2=?, a3=? (`jal` at 0xc8ac).
  Calls `chk_for_pebrick` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000), a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a5=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a6=(a0 + a0) (`jal` at 0xc8d4).
  At `beq` at 0xc7fc (target 0xc8d4), taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  At `beq` at 0xc820 (target 0xc82c), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0xc83c (target 0xc8bc), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0xc858 (target 0xc8bc), taken when v0(=[ret(find_lboard_class)]) == 0 and falls through when v0(=[ret(find_lboard_class)]) != 0.
  At `beq` at 0xc87c (target 0xc8bc), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0xc894 (target 0xc854), taken when v0(=ret(find_component)) == 0 and falls through when v0(=ret(find_component)) != 0.
  Returns v0 = ? (`jr` at 0xc8cc).

- `io_init_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc8e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc8e4-0xc93c (88 bytes).
  Calls `setnoderun` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc8f0).
  Calls `do_io_init_node [0xc4ac]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xc910).
  Calls `io_init_pebrick` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xc918).
  Calls `io_init_done [0xb8ec]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xc924).
  Returns v0 = ret(io_init_done) (`jr` at 0xc934).

- `scsi_ctlr_nums_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc93c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc93c-0xcbc0 (644 bytes).
  Loads 8 bytes into a0 from sym(.lit8) +0x68 (`ld` at 0xc95c).
  Loads 8 bytes into a3 from sym(.lit8) +0x68 (`ld` at 0xca04).
  Stores 4 bytes from v1 to sym(num_base_io_scsi_ctlr) +0x0  (`sw` at 0xc964).
  Stores 4 bytes from at to sym(num_base_io_scsi_ctlr) +0x0  (`sw` at 0xc98c).
  Stores 4 bytes from a5 to sym(num_base_io_scsi_ctlr) +0x0  (`sw` at 0xc9b8).
  Loads 8 bytes into a0 from abs 0x9000000014000000 (`ld` at 0xc968).
  Loads 8 bytes into s6 from sym(.srdata) +0x128 (`ld` at 0xc9bc).
  Loads 8 bytes into s6 from sym(.srdata) +0x128 (`ld` at 0xcb58).
  Loads 8 bytes into s6 from sym(.srdata) +0x128 (`ld` at 0xcb60).
  Stores 4 bytes from s5 to ? (base unknown)  (`sw` at 0xc9d4).
  Loads 8 bytes into s2 from sym(.srdata) +0x118 (`ld` at 0xc9e0).
  Loads 8 bytes into s2 from sym(.srdata) +0x118 (`ld` at 0xcb8c).
  Loads 8 bytes into a3 from abs 0x9000000014000000 (`ld` at 0xca08).
  Loads 8 bytes into s2 from sym(.srdata) +0x148 (`ld` at 0xca44).
  Loads 8 bytes into s2 from sym(.srdata) +0x148 (`ld` at 0xcb6c).
  Loads 8 bytes into s2 from sym(.srdata) +0x148 (`ld` at 0xcb80).
  Loads 8 bytes into a1 from sym(.data) +0x1c0 (`ld` at 0xca4c).
  4 such loads of 4 bytes through s4 (?) to ? (base unknown), including `lw` at 0xca64, 0xca78, 0xcac8.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0xca70).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0xca88).
  Loads 8 bytes into v0 from sym(.srdata) +0x120 (`ld` at 0xcae0).
  Loads 2 bytes into v0 from (sym(compact_to_nasid_node) + (ret(master_node_get) + ret(master_node_get))) +0x0 (`lh` at 0xcae8).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0xcaec).
  Loads 8 bytes into at from ([(sym(compact_to_nasid_node) + (ret(master_node_get) + ret(master_node_get)))]:2 << 0x21) -0x6fffffffcc000000 (`ld` at 0xcaf8).
  Loads 4 bytes into a5 from sym(num_base_io_scsi_ctlr) +0x0 (`lw` at 0xcb50).
  Calls `ioc4_console_vhdl_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc954).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xc988).
  Calls `get_chimera_type` via direct with a0=ret(get_nasid), a1=?, a2=?, a3=? (`jal` at 0xc994).
  Calls `hwgraph_connectpt_get` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xc9d8).
  Calls `hwgraph_connectpt_get` via direct with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=? (`jal` at 0xc9ec).
  Calls `hwgraph_vertex_unref` via direct with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=? (`jal` at 0xc9fc).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=0x4000, a3=? (`jal` at 0xca1c).
  Calls `get_chimera_type` via direct with a0=ret(get_nasid), a1=?, a2=?, a3=? (`jal` at 0xca24).
  Calls `printf` via direct with a0=sym(.rodata)+4936, a1=?, a2=?, a3=? (`jal` at 0xca3c).
  Calls `device_controller_num_set` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xca74).
  Calls `hwgraph_path_lookup` via direct with a0=ret(hwgraph_connectpt_get), a1=?, a2=sp-80, a3=0x0 (`jal` at 0xca98).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcaa4).
  Calls `master_node_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcad4).
  Calls `hwgraph_vertex_unref` via direct with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=? (`jal` at 0xcb30).
  Calls `printf` via direct with a0=sym(.rodata)+4936, a1=?, a2=0x4000, a3=? (`jal` at 0xcb64).
  Calls `printf` via direct with a0=sym(.rodata)+4936, a1=?, a2=?, a3=? (`jal` at 0xcb78).
  Calls `assfail` via direct with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x5cb, a3=? (`jal` at 0xcb98).
  Calls `assfail` via direct with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x5ce, a3=? (`jal` at 0xcbb0).
  At `beq` at 0xc9b0 (target 0xcb48), taken when v0(?) >= 0x1 (unsigned) and falls through when v0(?) < 0x1 (unsigned).
  At `bne` at 0xc9d0 (target 0xc9c0), taken when a4(?) < a5(?) (signed) and falls through when a4(?) >= a5(?) (signed).
  At `beq` at 0xc9e4 (target 0xcb8c), taken when s5(=-0x1) == v0(=ret(hwgraph_connectpt_get)) and falls through when s5(=-0x1) != v0(=ret(hwgraph_connectpt_get)).
  At `beq` at 0xc9f4 (target 0xcba8), taken when s5(=-0x1) == v0(=ret(hwgraph_connectpt_get)) and falls through when s5(=-0x1) != v0(=ret(hwgraph_connectpt_get)).
  At `beq` at 0xca14 (target 0xcb64), taken when a2(=0x4000) == a3(?) and falls through when a2(=0x4000) != a3(?).
  At `bne` at 0xca2c (target 0xca3c), taken when v0(=ret(get_chimera_type)) != 0 and falls through when v0(=ret(get_chimera_type)) == 0.
  At `beq` at 0xca34 (target 0xcb78), taken when s5(=-0x1) == s1(=ret(ioc4_console_vhdl_get)) and falls through when s5(=-0x1) != s1(=ret(ioc4_console_vhdl_get)).
  At `beq` at 0xca50 (target 0xcb14), taken when a1(=[sym(.data)+448]:8) == 0 and falls through when a1(=[sym(.data)+448]:8) != 0.
  At `beq` at 0xca8c (target 0xcb14), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0xcaac (target 0xca7c), taken when s1(=ret(hwgraph_path_lookup)) != 0 and falls through when s1(=ret(hwgraph_path_lookup)) == 0.
  At `beq` at 0xcab4 (target 0xcac8), taken when s5(=-0x1) == s7(=a1) and falls through when s5(=-0x1) != s7(=a1).
  At `bne` at 0xcac0 (target 0xca7c), taken when 0 < t8(?) (unsigned) and falls through when 0 >= t8(?) (unsigned).
  At `beq` at 0xcacc (target 0xca64), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bne` at 0xcb04 (target 0xca7c), taken when ra(=0x8000) != at(?) and falls through when ra(=0x8000) == at(?).
  At `bne` at 0xcb48 (target 0xc9b8), taken when s5(=-0x1) != s1(=ret(ioc4_console_vhdl_get)) and falls through when s5(=-0x1) == s1(=ret(ioc4_console_vhdl_get)).
  At `bgtz` at 0xcb54 (target 0xc9c0), taken when a5(=[sym(num_base_io_scsi_ctlr)]) > 0 (signed) and falls through when a5(=[sym(num_base_io_scsi_ctlr)]) <= 0 (signed).
  Returns v0 = ret(hwgraph_vertex_unref) (`jr` at 0xcb40).
- `sys_critical_graph_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcbc0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xcbc0-0xcdec (556 bytes).
  4 such loads of 4 bytes through gp (gp) to sym(_prom_cleared) +0x64, including `lw` at 0xcbc0, 0xcbf0, 0xcca8.
  Loads 8 bytes into t8 from abs 0xffffffffffffc400 (`ld` at 0xcc00).
  Loads 8 bytes into t8 from [-0x3c00]:8 +0x0 (`ld` at 0xcc04).
  Loads 8 bytes into t8 from ([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3)) +0x0 (`ld` at 0xcc10).
  Loads 4 bytes into s0 from [([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8 +0x8c80 (`lw` at 0xcc1c).
  Loads 4 bytes into a0 from sym(hwgraph_root) +0x0 (`lw` at 0xcc20).
  10 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x118, including `ld` at 0xcc2c, 0xcc54, 0xcc8c.
  Loads 4 bytes into a0 from sym(_prom_cleared) +0x60 (`lw` at 0xccc4).
  Loads 4 bytes into a1 from sym(_prom_cleared) +0x60 (`lw` at 0xccd4).
  5 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x128, including `ld` at 0xccd8, 0xccf8, 0xcd10.
  Loads 4 bytes into a0 from sym(.bss) +0x710 (`lw` at 0xccec).
  Loads 4 bytes into a0 from sym(.bss) +0x714 (`lw` at 0xcd00).
  Loads 4 bytes into a1 from sym(.bss) +0x710 (`lw` at 0xcda4).
  Loads 4 bytes into a1 from sym(.bss) +0x714 (`lw` at 0xcdc0).
  Calls `hwgraph_connectpt_get` via direct with a0=[sym(.sdata)+100], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xcbd8).
  Calls `device_master_get` via direct with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=? (`jal` at 0xcbe8).
  Calls `master_node_get` via direct with a0=[sym(.sdata)+100], a1=?, a2=?, a3=? (`jal` at 0xcbf8).
  Calls `sys_critical_graph_vertex_add` via direct with a0=[sym(hwgraph_root)], a1=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a2=?, a3=? (`jal` at 0xcc24).
  Calls `hwgraph_traverse` via direct with a0=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a1=sym(.rodata)+4936, a2=sp-64, a3=? (`jal` at 0xcc38).
  Calls `sys_critical_graph_vertex_add` via direct with a0=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a1=ret(device_master_get), a2=?, a3=? (`jal` at 0xcc48).
  Calls `sprintf` via direct with a0=sp-56, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xcc60).
  Calls `hwgraph_traverse` via direct with a0=ret(device_master_get), a1=sp-56, a2=sp-40, a3=? (`jal` at 0xcc70).
  Calls `hwgraph_vertex_unref` via direct with a0=ret(device_master_get), a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xcc90).
  Calls `hwgraph_traverse` via direct with a0=[sym(.sdata)+100], a1=sym(.rodata)+4936, a2=sp-40, a3=? (`jal` at 0xccac).
  Calls `hwgraph_traverse` via direct with a0=[sym(.sdata)+96], a1=sym(.rodata)+4936, a2=sp-40, a3=? (`jal` at 0xccc8).
  Calls `hwgraph_traverse` via direct with a0=[sym(base_io_scsi_ctlr_vhdl)], a1=sym(.rodata)+4936, a2=sp-40, a3=? (`jal` at 0xcce8).
  Calls `hwgraph_traverse` via direct with a0=[sym(base_io_scsi_ctlr_vhdl+4)], a1=sym(.rodata)+4936, a2=sp-40, a3=? (`jal` at 0xcd04).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcd14).
  Calls `sys_critical_graph_vertex_add` via direct with a0=ret(device_master_get), a1=?, a2=?, a3=? (`jal` at 0xcd28).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcd30).
  Calls `sys_critical_graph_vertex_add` via direct with a0=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a1=?, a2=?, a3=? (`jal` at 0xcd44).
  Calls `sys_critical_graph_vertex_add` via direct with a0=?, a1=ret(device_master_get), a2=?, a3=? (`jal` at 0xcd50).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcd58).
  Calls `sys_critical_graph_vertex_add` via direct with a0=?, a1=[sym(.sdata)+100], a2=?, a3=? (`jal` at 0xcd68).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcd70).
  Calls `sys_critical_graph_vertex_add` via direct with a0=?, a1=[sym(.sdata)+96], a2=?, a3=? (`jal` at 0xcd80).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcd88).
  Calls `sys_critical_graph_vertex_add` via direct with a0=?, a1=[sym(base_io_scsi_ctlr_vhdl)], a2=?, a3=? (`jal` at 0xcda0).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcda8).
  Calls `sys_critical_graph_vertex_add` via direct with a0=?, a1=[sym(base_io_scsi_ctlr_vhdl+4)], a2=?, a3=? (`jal` at 0xcdbc).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xcdc4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xcddc).
  At `beq` at 0xcbd0 (target 0xcdd4), taken when at(=-0x1) == a0(=[sym(.sdata)+100]) and falls through when at(=-0x1) != a0(=[sym(.sdata)+100]).
  At `beq` at 0xcc40 (target 0xcd40), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `beq` at 0xcc78 (target 0xcd28), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `bne` at 0xcc88 (target 0xcc58), taken when s0(?) < 0x8 (signed) and falls through when s0(?) >= 0x8 (signed).
  At `beq` at 0xccb4 (target 0xcd68), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `beq` at 0xccd0 (target 0xcd80), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `beq` at 0xccf0 (target 0xcd98), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `beq` at 0xcd0c (target 0xcdb8), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  Returns v0 = ? (`jr` at 0xcd20).

- `baseio_ctlr_num_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcdec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xcdec-0xcee8 (252 bytes).
  Stores 4 bytes from s0 to sym(_prom_cleared) +0x64 (`sw` at 0xce1c).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x118, including `ld` at 0xce20, 0xce64, 0xce78.
  Stores 4 bytes from v0 to sym(baseio_pci_vhdl) +0x0  (`sw` at 0xce40).
  Stores 4 bytes from v0 to sym(_prom_cleared) +0x60  (`sw` at 0xce9c).
  Calls `ioc3_console_vhdl_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xcdf4).
  Calls `vertex_to_name` via direct with a0=?, a1=sp-288, a2=0x100, a3=? (`jal` at 0xce18).
  Calls `strcat` via direct with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xce28).
  Calls `hwgraph_path_to_vertex` via direct with a0=sp-288, a1=?, a2=?, a3=? (`jal` at 0xce30).
  Calls `scsi_ctlr_nums_add` via direct with a0=ret(hwgraph_path_to_vertex), a1=-0x1, a2=?, a3=? (`jal` at 0xce44).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xce4c).
  Calls `vertex_to_name` via direct with a0=?, a1=sp-288, a2=0x100, a3=? (`jal` at 0xce5c).
  Calls `strstr` via direct with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xce6c).
  Calls `strcat` via direct with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xce84).
  Calls `hwgraph_path_to_vertex` via direct with a0=sp-288, a1=?, a2=?, a3=? (`jal` at 0xce8c).
  Calls `device_controller_num_set` via direct with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=? (`jal` at 0xcea0).
  Calls `hwgraph_vertex_unref` via direct with a0=ret(hwgraph_path_to_vertex), a1=?, a2=?, a3=? (`jal` at 0xcea8).
  Calls `strcat` via direct with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=? (`jal` at 0xcec4).
  Calls `ioc4_console_vhdl_get` via direct with a0=-0x1, a1=?, a2=?, a3=? (`jal` at 0xced4).
  At `beq` at 0xce00 (target 0xced4), taken when a0(=-0x1) == v0(=ret(ioc3_console_vhdl_get)) and falls through when a0(=-0x1) != v0(=ret(ioc3_console_vhdl_get)).
  At `beq` at 0xce08 (target 0xceb0), taken when a0(=-0x1) == s0(?) and falls through when a0(=-0x1) != s0(?).
  At `beq` at 0xce74 (target 0xcec0), taken when v0(=ret(strstr)) == 0 and falls through when v0(=ret(strstr)) != 0.
  Returns v0 = ? (`jr` at 0xceb8).

- `sn00_rrb_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcee8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xcee8-0xd0ac (452 bytes).
  Loads 4 bytes into at from a1 (arg1 at entry) +0x18 (`lw` at 0xceec).
  Loads 4 bytes into a2 from a1 (arg1 at entry) +0x14 (`lw` at 0xcf48).
  Loads 4 bytes into a0 from a1 (arg1 at entry) +0x1c (`lw` at 0xcf50).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xcf94).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xd080).
  Calls `pcibr_alloc_all_rrbs` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x3, a3=0x1, a4=0x2, a5=0x0, a6=0x0, a7=0x0 (`jal` at 0xcf30).
  Calls `pcibr_alloc_all_rrbs` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x2, a3=0x1, a4=0x1, a5=0x0, a6=0x3, a7=0x0 (`jal` at 0xcf84).
  Calls `pcibr_alloc_all_rrbs` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x4, a3=0x1, a4=0x4, a5=0x0, a6=0x0, a7=0x0 (`jal` at 0xcfcc).
  Calls `pcibr_alloc_all_rrbs` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x3, a3=0x1, a4=0x2, a5=0x0, a6=0x0, a7=0x0 (`jal` at 0xd00c).
  Calls `pcibr_alloc_all_rrbs` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x3, a3=0x1, a4=0x2, a5=0x0, a6=0x3, a7=0x0 (`jal` at 0xd03c).
  Calls `pcibr_alloc_all_rrbs` via direct with a0=a0 at entry (arg0), a1=0x1, a2=0x4, a3=0x1, a4=0x4, a5=0x0, a6=0x0, a7=0x0 (`jal` at 0xd070).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=?, a3=?, a4=ret(pcibr_alloc_all_rrbs) (`jal` at 0xd088).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=?, a3=?, a4=ret(pcibr_alloc_all_rrbs) (`jal` at 0xd09c).
  At `beq` at 0xcf04 (target 0xcfac), taken when at(=[a1+24]) == v0(=-0x1) and falls through when at(=[a1+24]) != v0(=-0x1).
  At `bne` at 0xcf40 (target 0xd080), taken when a4(=ret(pcibr_alloc_all_rrbs)) != 0 and falls through when a4(=ret(pcibr_alloc_all_rrbs)) == 0.
  At `beq` at 0xcf4c (target 0xcfe0), taken when a2(=[a1+20]) == a1(=-0x1) and falls through when a2(=[a1+20]) != a1(=-0x1).
  At `beq` at 0xcf54 (target 0xd01c), taken when a0(=[a1+28]) == a1(=-0x1) and falls through when a0(=[a1+28]) != a1(=-0x1).
  At `bne` at 0xcf90 (target 0xd098), taken when a4(=ret(pcibr_alloc_all_rrbs)) != 0 and falls through when a4(=ret(pcibr_alloc_all_rrbs)) == 0.
  At `beq` at 0xcfe0 (target 0xd04c), taken when a0(=[a1+28]) == a1(=-0x1) and falls through when a0(=[a1+28]) != a1(=-0x1).
  Returns v0 = ? (`jr` at 0xcfa4).

- `do_init_hub_provider` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd0ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd0ac-0xd13c (144 bytes).
  Loads 8 bytes into t8 from abs 0xffffffffffffc400 (`ld` at 0xd0ac).
  Loads 8 bytes into t8 from [-0x3c00]:8 +0x0 (`ld` at 0xd0b0).
  Loads 8 bytes into t8 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0xd0c0).
  Loads 4 bytes into s0 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8c80 (`lw` at 0xd0d0).
  Loads 8 bytes into a1 from sym(.srdata) +0x150 (`ld` at 0xd108).
  Loads 8 bytes into a1 from sym(.srdata) +0x118 (`ld` at 0xd124).
  Calls `early_probe_for_widget [0xb91c]` via direct with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=sp-32, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jal` at 0xd0e8).
  Calls `xtalk_provider_register` via direct with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=sym(hub_provider), a2=?, a3=? (`jal` at 0xd104).
  Calls `xtalk_provider_startup` via direct with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=?, a2=?, a3=? (`jal` at 0xd10c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+4936, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jal` at 0xd12c).
  At `beq` at 0xd0dc (target 0xd124), taken when at(=-0x1) == s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]) and falls through when at(=-0x1) != s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]).
  At `beq` at 0xd0f8 (target 0xd118), taken when t9(?) == ra(=-0x1) and falls through when t9(?) != ra(=-0x1).
  Returns v0 = ? (`jr` at 0xd11c).

- `do_init_hub_provider_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd13c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd13c-0xd26c (304 bytes).
  Loads 8 bytes into a5 from sym(.srdata) +0x120 (`ld` at 0xd13c).
  Loads 2 bytes into a5 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0xd148).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0xd14c).
  Loads 8 bytes into at from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6fffffffcc000000 (`ld` at 0xd15c).
  Loads 8 bytes into a7 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0xd18c).
  Loads 4 bytes into a7 from ? (base unknown) (`lw` at 0xd1a0).
  Loads 4 bytes into v0 from ret(find_lboard_class) +0x0 (`lw` at 0xd1dc).
  Loads 4 bytes into v0 from ret(find_lboard_class) +0x0 (`lw` at 0xd240).
  Loads 2 bytes into a1 from ret(find_component) +0x3a (`lh` at 0xd224).
  Loads 8 bytes into a0 from sym(.srdata) +0x130 (`ld` at 0xd228).
  Loads 2 bytes into a0 from (sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2)) +0x0 (`lh` at 0xd238).
  Calls `find_lboard_class` via direct with a0=?, a1=0x10, a2=?, a3=? (`jal` at 0xd1b4).
  Calls `find_lboard_class` via direct with a0=?, a1=0x10, a2=?, a3=? (`jal` at 0xd1fc).
  Calls `find_component` via direct with a0=ret(find_lboard_class), a1=0x0, a2=0x26, a3=? (`jal` at 0xd214).
  Calls `do_init_hub_provider` via direct with a0=[(sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2))]:2, a1=([ret(find_component)+58]:2 + [ret(find_component)+58]:2), a2=?, a3=? (`jal` at 0xd234).
  Calls `chk_for_pebrick` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000), a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a5=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a6=(a0 + a0) (`jal` at 0xd25c).
  At `beq` at 0xd184 (target 0xd25c), taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  At `beq` at 0xd1a8 (target 0xd1b4), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0xd1c4 (target 0xd244), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0xd1e0 (target 0xd244), taken when v0(=[ret(find_lboard_class)]) == 0 and falls through when v0(=[ret(find_lboard_class)]) != 0.
  At `beq` at 0xd204 (target 0xd244), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0xd21c (target 0xd1dc), taken when v0(=ret(find_component)) == 0 and falls through when v0(=ret(find_component)) != 0.
  Returns v0 = ? (`jr` at 0xd254).

- `init_hub_provider` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd26c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd26c-0xd2c0 (84 bytes).
  Loads 4 bytes into at from sym(maxnodes) +0x0 (`lw` at 0xd26c).
  Loads 4 bytes into v0 from sym(maxnodes) +0x0 (`lw` at 0xd298).
  Calls `do_init_hub_provider` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xd284).
  Calls `do_init_hub_provider_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xd28c).
  At `blez` at 0xd278 (target 0xd2b0), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `bne` at 0xd2a8 (target 0xd284), taken when s0(?) < v0(=[sym(maxnodes)]) (signed) and falls through when s0(?) >= v0(=[sym(maxnodes)]) (signed).
  Returns v0 = ? (`jr` at 0xd2b8).

- `io_brick_map_widget` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd780 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd780-0xd7cc (76 bytes).
  Loads 8 bytes into a6 from sym(.srdata) +0x148 (`ld` at 0xd784).
  Loads 4 bytes into at from ? (base unknown) (`lw` at 0xd798).
  Loads 4 bytes into v0 from ? (base unknown) (`lw` at 0xd7c8).
  At `beq` at 0xd7a0 (target 0xd7bc), taken when at(?) == a0 and falls through when at(?) != a0.
  At `bne` at 0xd7a8 (target 0xd78c), taken when a4(?) != 0 and falls through when a4(?) == 0.
  Returns v0 = -0x1 (`jr` at 0xd7b4).
  Returns v0 = ? (`jr` at 0xd7c4).

- `init_platform_nodepda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xdc4c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xdc4c-0xdfec (928 bytes).
  7 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x170, including `ld` at 0xdc90, 0xdd48, 0xdd68.
  Stores 8 bytes from s6 to a0 (arg0 at entry) +0x8c88  (`sd` at 0xdc98).
  Loads 8 bytes into s5 from sym(.srdata) +0x180 (`ld` at 0xdc9c).
  Stores 2 bytes from s2 to ret(kmem_alloc_node) +0x8  (`sh` at 0xdca4).
  Stores 8 bytes from s1 to ret(kmem_alloc_node) +0x0  (`sd` at 0xdca8).
  Loads 2 bytes into at from (sym(compact_to_nasid_node) + (a1 + a1)) +0x0 (`lh` at 0xdcb8).
  Stores 2 bytes from at to ret(kmem_alloc_node) +0xa  (`sh` at 0xdcc4).
  Loads 2 bytes into a0 from ret(kmem_alloc_node) +0xa (`lh` at 0xdcc8).
  Stores 1 byte from v0 to ret(kmem_alloc_node) +0xc  (`sb` at 0xdcd4).
  Stores 2 bytes from v1 to a0 (arg0 at entry) +0x8600  (`sh` at 0xdcdc).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x85e8  (`sd` at 0xdce0).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x85f8  (`sw` at 0xdce4).
  Stores 2 bytes from v1 to a0 (arg0 at entry) +0x861a  (`sh` at 0xdce8).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x85f0  (`sd` at 0xdcf8).
  Stores 4 bytes from zero to ? (base unknown)  (`sw` at 0xdd24).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0xdd28).
  Stores 1 byte from zero to a0 (arg0 at entry) +0x8594  (`sb` at 0xdd54).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x8f08  (`sw` at 0xddac).
  Loads 4 bytes into a1 from sym(need_utlbmiss_patch) +0x0 (`lw` at 0xddb0).
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x85e0  (`sb` at 0xddc0).
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x85e1  (`sb` at 0xddc4).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0xdde8).
  Loads 4 bytes into a4 from sym(numnodes) +0x0 (`lw` at 0xddec).
  Loads 4 bytes into a5 from sym(numnodes) +0x0 (`lw` at 0xde3c).
  Loads 2 bytes into a2 from ? (base unknown) (`lh` at 0xde00).
  Loads 1 byte into v1 from table(0x862c) +0x0 (`lbu` at 0xde24).
  Stores 1 byte from v1 to table(0x862c) +0x0 (`sb` at 0xde34).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x8596  (`sh` at 0xde64).
  Stores 2 bytes from zero to a0 (arg0 at entry) +0x8598  (`sh` at 0xde78).
  Stores 2 bytes from zero to a0 (arg0 at entry) +0x8598  (`sh` at 0xdfa8).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x8598 (`sh` at 0xde8c).
  Loads 8 bytes into a1 from sym(.srdata) +0x188 (`ld` at 0xde94).
  Loads 2 bytes into a1 from table(sym(cpuid_to_compact_node)) +0x0 (`lh` at 0xde9c).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x8c90  (`sd` at 0xdec8).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x8c98  (`sw` at 0xded8).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x8850  (`sd` at 0xdf08).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x8ef8  (`sd` at 0xdf24).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x8f00  (`sd` at 0xdf44).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x8f1c  (`sw` at 0xdf48).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x8f20  (`sw` at 0xdf4c).
  Stores 2 bytes from zero to ? (base unknown)  (`sh` at 0xdf68).
  Stores 2 bytes from zero to ? (base unknown)  (`sh` at 0xdf8c).
  Calls `kmem_alloc_node` via direct with a0=0x450, a1=0x1, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0xdc74).
  Calls `init_spinlock` via direct with a0=ret(kmem_alloc_node)+796, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=? (`jal` at 0xdcc0).
  Calls `hub_widget_id` via direct with a0=[ret(kmem_alloc_node)+10]:2, a1=?, a2=?, a3=? (`jal` at 0xdccc).
  Calls `intr_init_vecblk` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xdd2c).
  Calls `init_spinlock` via direct with a0=a0+34192, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=? (`jal` at 0xdd58).
  Calls `init_sema` via direct with a0=a0+34312, a1=0x0, a2=sym(.rodata)+6624, a3=a1 at entry (arg1) (`jal` at 0xdd74).
  Calls `init_spinlock` via direct with a0=a0+34372, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=? (`jal` at 0xdd8c).
  Calls `init_spinlock` via direct with a0=a0+34204, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=? (`jal` at 0xdda4).
  Calls `get_cnode_cpu` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0xde54).
  Calls `kmem_zalloc_node` via direct with a0=0x4000, a1=0x1, a2=a1 at entry (arg1), a3=? (`jal` at 0xdebc).
  Calls `router_map_init` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xdedc).
  Calls `router_queue_init` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0xdee8).
  Calls `kmem_zalloc_node_hint` via direct with a0=0x130, a1=0x0, a2=a1 at entry (arg1), a3=? (`jal` at 0xdef8).
  Calls `assfail` via direct with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x220, a3=? (`jal` at 0xdfb8).
  Calls `assfail` via direct with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x272, a3=? (`jal` at 0xdfd4).
  At `beq` at 0xdc84 (target 0xdfac), taken when v0(=ret(kmem_alloc_node)) == 0 and falls through when v0(=ret(kmem_alloc_node)) != 0.
  At `bne` at 0xdd3c (target 0xdd00), taken when s4(?) < 0x2 (signed) and falls through when s4(?) >= 0x2 (signed).
  At `beq` at 0xddb8 (target 0xddc8), taken when a1(=[sym(need_utlbmiss_patch)]) == 0 and falls through when a1(=[sym(need_utlbmiss_patch)]) != 0.
  At `bne` at 0xdde4 (target 0xddcc), taken when v0(?) < 0x10 (signed) and falls through when v0(?) >= 0x10 (signed).
  At `blez` at 0xddf0 (target 0xde50), taken when a4(=[sym(numnodes)]) <= 0 (signed) and falls through when a4(=[sym(numnodes)]) > 0 (signed).
  At `bne` at 0xde48 (target 0xddfc), taken when v0(?) < a5(=[sym(numnodes)]) (signed) and falls through when v0(?) >= a5(=[sym(numnodes)]) (signed).
  At `beq` at 0xde6c (target 0xdfa4), taken when a0(?) == s4(=-0x1) and falls through when a0(?) != s4(=-0x1).
  At `beq` at 0xde74 (target 0xdeb4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0xde88 (target 0xdeb4), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0xdeac (target 0xde84), taken when a1(=entry(sym(cpuid_to_compact_node))) == s2(=a1) and falls through when a1(=entry(sym(cpuid_to_compact_node))) != s2(=a1).
  At `beq` at 0xdec4 (target 0xdfc8), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `beq` at 0xdf6c (target 0xdf94), taken when v0(?) >= 0x8 (signed) and falls through when v0(?) < 0x8 (signed).
  At `bne` at 0xdf88 (target 0xdf54), taken when v0(?) < 0x8 (signed) and falls through when v0(?) >= 0x8 (signed).
  Returns v0 = ? (`jr` at 0xdf9c).

- `init_platform_pda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xdfec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xdfec-0xe11c (304 bytes).
  Loads 8 bytes into a2 from sym(.srdata) +0x168 (`ld` at 0xdff0).
  Loads 8 bytes into a2 from (sym(boot_cpumask) + (a1 << 0x4)) +0x8 (`ld` at 0xe010).
  Loads 2 bytes into a2 from [(sym(boot_cpumask) + (a1 << 0x4))+8]:8 +0x42a (`lh` at 0xe028).
  Loads 8 bytes into a5 from sym(.srdata) +0x170 (`ld` at 0xe034).
  Loads 8 bytes into a0 from sym(.srdata) +0x170 (`ld` at 0xe0e4).
  Loads 8 bytes into a5 from sym(.srdata) +0x170 (`ld` at 0xe100).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x740 (`sd` at 0xe038).
  Stores 2 bytes from s8 to ? (base unknown)  (`sh` at 0xe040).
  Stores 8 bytes from s0 to ? (base unknown)  (`sd` at 0xe048).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x5a0  (`sd` at 0xe050).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0xe054).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0xe090).
  Loads 1 byte into t0 from ? (base unknown) (`lbu` at 0xe058).
  Loads 8 bytes into a4 from a0 (arg0 at entry) +0x400 (`ld` at 0xe078).
  Stores 8 bytes from a7 to a0 (arg0 at entry) +0x5b0 (`sd` at 0xe08c).
  Loads 1 byte into a6 from ? (base unknown) (`lbu` at 0xe094).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x5a8  (`sd` at 0xe0c0).
  Stores 1 byte from zero to a0 (arg0 at entry) +0x529  (`sb` at 0xe0c8).
  Stores 8 bytes from a4 to a0 (arg0 at entry) +0x5b8 (`sd` at 0xe0d4).
  Calls `kmem_alloc_node` via direct with a0=0x10, a1=0x1, a2=[[(sym(boot_cpumask) + (a1 << 0x4))+8]:8+1066]:2, a3=(a1 << 0x4) (`jal` at 0xe024).
  Calls `assfail` via direct with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x2a9, a3=? (`jal` at 0xe0f0).
  Calls `assfail` via direct with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x2b0, a3=-0x400, a5=sym(.rodata)+6624 (`jal` at 0xe10c).
  At `beq` at 0xe02c (target 0xe0e4), taken when v0(=ret(kmem_alloc_node)) == 0 and falls through when v0(=ret(kmem_alloc_node)) != 0.
  At `beq` at 0xe044 (target 0xe104), taken when s0(=a0) == a3(=-0x400) and falls through when s0(=a0) != a3(=-0x400).
  Returns v0 = ? (`jr` at 0xe0dc).

- `protect_hub_calias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe11c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe11c-0xe15c (64 bytes).
  Calls `nasid_to_region` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe134).
  At `bne` at 0xe144 (target 0xe134), taken when s0(?) < 0x40 (signed) and falls through when s0(?) >= 0x40 (signed).
  Returns v0 = ret(nasid_to_region) (`jr` at 0xe154).

- `protect_nmi_handler_data` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe15c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe15c-0xe19c (64 bytes).
  Calls `nasid_to_region` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe174).
  At `bne` at 0xe184 (target 0xe174), taken when s0(?) < 0x40 (signed) and falls through when s0(?) >= 0x40 (signed).
  Returns v0 = ret(nasid_to_region) (`jr` at 0xe194).

- `per_hub_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe19c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe19c-0xe400 (612 bytes).
  Loads 8 bytes into s4 from sym(.srdata) +0x180 (`ld` at 0xe1ac).
  Loads 2 bytes into s4 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0xe1cc).
  Loads 8 bytes into a0 from sym(.srdata) +0x168 (`ld` at 0xe1d0).
  Loads 8 bytes into v0 from sym(.srdata) +0x168 (`ld` at 0xe210).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0xe1e4).
  Loads 8 bytes into v1 from ? (base unknown) (`ld` at 0xe220).
  6 such loads of 8 bytes through s1 (?) to ? (base unknown), including `ld` at 0xe230, 0xe240, 0xe250.
  Stores 8 bytes from a4 to ? (base unknown) (`sd` at 0xe2a4).
  Loads 8 bytes into a5 from abs 0xffffffffffffc400 (`ld` at 0xe2a8).
  Loads 8 bytes into a5 from [-0x3c00]:8 +0x0 (`ld` at 0xe2ac).
  Loads 8 bytes into a5 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0xe2bc).
  Stores 4 bytes from v0 to table(0x8628) +0x0  (`sw` at 0xe2e4).
  Loads 8 bytes into a2 from sym(.lit8) +0x98 (`ld` at 0xe310).
  Stores 8 bytes from a1 to ? (base unknown)  (`sd` at 0xe328).
  Loads 8 bytes into v0 from sym(.lit8) +0x20 (`ld` at 0xe32c).
  Stores 8 bytes from a5 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffc58  (`sd` at 0xe338).
  Loads 8 bytes into a4 from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffed8 (`ld` at 0xe33c).
  Stores 8 bytes from a3 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffe00  (`sd` at 0xe354).
  Loads 4 bytes into a2 from sym(maxnodes) +0x0 (`lw` at 0xe358).
  Stores 8 bytes from a1 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffc40  (`sd` at 0xe374).
  Stores 8 bytes from a0 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffc40  (`sd` at 0xe378).
  Stores 8 bytes from a3 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffc48  (`sd` at 0xe384).
  Loads 8 bytes into a2 from sym(.lit8) +0x60 (`ld` at 0xe388).
  Loads 8 bytes into a1 from sym(.lit8) +0xa0 (`ld` at 0xe38c).
  Loads 8 bytes into v1 from sym(.lit8) +0xa8 (`ld` at 0xe390).
  Stores 8 bytes from a0 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe7fffc8  (`sd` at 0xe3a0).
  Stores 8 bytes from a0 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe5fffc8  (`sd` at 0xe3a8).
  Stores 8 bytes from zero to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe05ffc8  (`sd` at 0xe3ac).
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0xe3f4).
  Calls `mutex_spinlock` via direct with a0=sym(.sbss)+24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe1c8).
  Calls `mutex_spinunlock` via direct with a0=sym(.sbss)+24, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0xe204).
  Calls `get_hub_chiprev` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=?, a2=?, a3=?, a5=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8, a6=(a0 << 0x3) (`jal` at 0xe2c4).
  Calls `cnode_slice_to_cpuid` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe2f8).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe304).
  Calls `intr_reserve_hardwired` via direct with a0=a0 at entry (arg0), a1=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9200000001a00000, a2=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9200000001800000, a3=0xff, a5=0x4 (`jal` at 0xe3b0).
  Calls `hub_error_init` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe3b8).
  Calls `install_eccintr` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe3c0).
  Calls `protect_hub_calias` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=?, a2=?, a3=? (`jal` at 0xe3c8).
  Calls `hub_rtc_init` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe3d0).
  Calls `mutex_spinlock` via direct with a0=sym(.sbss)+24, a1=?, a2=?, a3=? (`jal` at 0xe3d8).
  Calls `mutex_spinunlock` via direct with a0=sym(.sbss)+24, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0xe3f0).
  At `beq` at 0xe1f8 (target 0xe2a0), taken when (s0(?) & a4(?)) == 0 and falls through when (s0(?) & a4(?)) != 0.
  At `beq` at 0xe218 (target 0xe2a8), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0xe228 (target 0xe284), taken when (v1(?) & s0(?)) != 0 and falls through when (v1(?) & s0(?)) == 0.
  At `bne` at 0xe238 (target 0xe280), taken when (a0(?) & s0(?)) != 0 and falls through when (a0(?) & s0(?)) == 0.
  At `bne` at 0xe248 (target 0xe280), taken when (a1(?) & s0(?)) != 0 and falls through when (a1(?) & s0(?)) == 0.
  At `bne` at 0xe258 (target 0xe280), taken when (a2(?) & s0(?)) != 0 and falls through when (a2(?) & s0(?)) == 0.
  At `bne` at 0xe268 (target 0xe280), taken when (a3(?) & s0(?)) != 0 and falls through when (a3(?) & s0(?)) == 0.
  At `beq` at 0xe278 (target 0xe230), taken when (a4(?) & s0(?)) == 0 and falls through when (a4(?) & s0(?)) != 0.
  At `beq` at 0xe2f0 (target 0xe32c), taken when s3(?) >= 0x4 (signed) and falls through when s3(?) < 0x4 (signed).
  At `bne` at 0xe30c (target 0xe2e8), taken when v0(=ret(cpu_enabled)) != 0 and falls through when v0(=ret(cpu_enabled)) == 0.
  At `bne` at 0xe368 (target 0xe378), taken when a2(=[sym(maxnodes)]) < 0x21 (signed) and falls through when a2(=[sym(maxnodes)]) >= 0x21 (signed).
  Returns v0 = ? (`jr` at 0xe298).

- `per_cpu_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe400 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe400-0xe50c (268 bytes).
  Stores 2 bytes from s1 to abs 0xffffffffffffc428  (`sh` at 0xe420).
  Loads 8 bytes into s1 from sym(.srdata) +0x168 (`ld` at 0xe454).
  Loads 8 bytes into a0 from table(sym(boot_cpumask)) +0x8 (`ld` at 0xe464).
  Loads 8 bytes into a1 from table(sym(boot_cpumask)) +0x8 (`ld` at 0xe470).
  Loads 1 byte into a0 from [table(sym(boot_cpumask))+8]:8 +0x528 (`lbu` at 0xe46c).
  Loads 8 bytes into a0 from sym(.srdata) +0x180 (`ld` at 0xe474).
  Loads 1 byte into a1 from [table(sym(boot_cpumask))+8]:8 +0x528 (`lbu` at 0xe47c).
  Loads 2 bytes into a0 from table(sym(compact_to_nasid_node)) +0x0 (`lh` at 0xe488).
  Loads 4 bytes into a3 from sym(traplog_mask) +0x0 (`lw` at 0xe490).
  Stores 4 bytes from a3 to sym(old_traplog_mask) +0x0  (`sw` at 0xe494).
  Stores 4 bytes from zero to abs 0xffffffffffffd00c  (`sw` at 0xe498).
  Stores 4 bytes from a7 to abs 0xffffffffffffd00c  (`sw` at 0xe4f8).
  Loads 4 bytes into a0 from sym(old_traplog_mask) +0x0 (`lw` at 0xe49c).
  Loads 4 bytes into a7 from sym(old_traplog_mask) +0x0 (`lw` at 0xe4ec).
  Loads 4 bytes into a3 from sym(traplog_strace_size) +0x0 (`lw` at 0xe4b0).
  Loads 4 bytes into a6 from sym(traplog_strace_size) +0x0 (`lw` at 0xe4d4).
  Stores 4 bytes from v0 to abs 0xffffffffffffd014  (`sw` at 0xe4d0).
  Stores 4 bytes from a6 to abs 0xffffffffffffd010  (`sw` at 0xe4e0).
  Stores 4 bytes from a4 to abs 0xffffffffffffd010  (`sw` at 0xe500).
  Stores 4 bytes from a5 to abs 0xffffffffffffd010  (`sw` at 0xe508).
  Stores 8 bytes from t0 to abs 0xffffffffffffd000  (`sd` at 0xe4e8).
  Calls `getcpuid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe408).
  Calls `get_compact_nodeid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe414).
  Calls `per_hub_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe42c).
  Calls `install_cpuintr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe43c).
  Calls `install_dbgintr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe444).
  Calls `install_tlbintr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe44c).
  Calls `install_cpu_nmi_handler` via direct with a0=[[table(sym(boot_cpumask))+8]:8+1320]:1, a1=?, a2=?, a3=? (`jal` at 0xe468).
  Calls `protect_nmi_handler_data` via direct with a0=entry(sym(compact_to_nasid_node)), a1=[[table(sym(boot_cpumask))+8]:8+1320]:1, a2=?, a3=? (`jal` at 0xe484).
  At `beq` at 0xe4bc (target 0xe504), taken when (a0(=[sym(old_traplog_mask)]) & 0x2) == 0 and falls through when (a0(=[sym(old_traplog_mask)]) & 0x2) != 0.
  At `beq` at 0xe4c8 (target 0xe4fc), taken when (a0(=[sym(old_traplog_mask)]) & 0x4) == 0 and falls through when (a0(=[sym(old_traplog_mask)]) & 0x4) != 0.
  Returns v0 = ([sym(traplog_strace_size)] << 0x3) (`jr` at 0xe4f4).

- `cnodetocpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe514 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe514-0xe5d4 (192 bytes).
  Loads 8 bytes into a4 from abs 0xffffffffffffc400 (`ld` at 0xe514).
  Loads 8 bytes into t9 from abs 0xffffffffffffc400 (`ld` at 0xe59c).
  Loads 8 bytes into a4 from [-0x3c00]:8 +0x0 (`ld` at 0xe51c).
  Loads 8 bytes into a4 from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0 (`ld` at 0xe52c).
  Loads 2 bytes into a4 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596 (`lh` at 0xe53c).
  Loads 2 bytes into a5 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598 (`lhu` at 0xe558).
  Loads 8 bytes into t9 from [-0x3c00]:8 +0x0 (`ld` at 0xe5a0).
  Loads 8 bytes into t9 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0xe5a8).
  Loads 2 bytes into t8 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598 (`lhu` at 0xe5b4).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe570).
  At `beq` at 0xe550 (target 0xe580), taken when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == at(=-0x1) and falls through when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != at(=-0x1).
  At `blez` at 0xe55c (target 0xe5cc), taken when a5(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) <= 0 (signed) and falls through when a5(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) > 0 (signed).
  At `beq` at 0xe578 (target 0xe59c), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0xe5c4 (target 0xe56c), taken when s1(?) < t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed) and falls through when s1(?) >= t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  Returns v0 = ? (`jr` at 0xe594).

- `cnode_subnode_to_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe5d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe5d4-0xe6e4 (272 bytes).
  Loads 8 bytes into v0 from abs 0xffffffffffffc400 (`ld` at 0xe5dc).
  Loads 8 bytes into a0 from abs 0xffffffffffffc400 (`ld` at 0xe648).
  Loads 8 bytes into s6 from sym(.srdata) +0x168 (`ld` at 0xe5e0).
  Loads 8 bytes into v0 from [-0x3c00]:8 +0x0 (`ld` at 0xe5e4).
  Loads 8 bytes into v0 from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0 (`ld` at 0xe5f8).
  Loads 2 bytes into a4 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596 (`lh` at 0xe60c).
  Loads 2 bytes into v1 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598 (`lhu` at 0xe634).
  Loads 8 bytes into a0 from [-0x3c00]:8 +0x0 (`ld` at 0xe64c).
  Loads 8 bytes into a0 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0xe654).
  Loads 2 bytes into a0 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598 (`lhu` at 0xe65c).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0xe68c).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0xe690).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe678).
  At `beq` at 0xe62c (target 0xe6dc), taken when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == at(=-0x1) and falls through when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != at(=-0x1).
  At `blez` at 0xe638 (target 0xe6b0), taken when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) <= 0 (signed) and falls through when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) > 0 (signed).
  At `beq` at 0xe668 (target 0xe6ac), taken when s1(?) >= a0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed) and falls through when s1(?) < a0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  At `beq` at 0xe680 (target 0xe648), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0xe69c (target 0xe648), taken when s5(=a1) != t8(?) and falls through when s5(=a1) == t8(?).
  Returns v0 = ? (`jr` at 0xe6d4).

- `get_compact_nodeid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe6e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe6e4-0xe718 (52 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x190 (`ld` at 0xe6fc).
  Loads 2 bytes into v0 from table(sym(nasid_to_compact_node)) +0x0 (`lh` at 0xe70c).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe6ec).
  Returns v0 = entry(sym(nasid_to_compact_node)) (`jr` at 0xe710).

- `cpu_unenable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe78c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe78c-0xe7c8 (60 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x168 (`ld` at 0xe790).
  Loads 8 bytes into at from table(sym(boot_cpumask)) +0x0 (`ld` at 0xe7ac).
  Stores 4 bytes from a0 to (sym(boot_cpumask) + (a0 << 0x4)) +0x40  (`sw` at 0xe7b8).
  Stores 8 bytes from at to table(sym(boot_cpumask)) +0x0 (`sd` at 0xe7c4).
  Returns v0 = table(sym(boot_cpumask)) (`jr` at 0xe7c0).

- `cnode_slice_to_cpuid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe800 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe800-0xe8bc (188 bytes).
  Loads 8 bytes into t8 from abs 0xffffffffffffc400 (`ld` at 0xe800).
  Loads 8 bytes into t8 from [-0x3c00]:8 +0x0 (`ld` at 0xe808).
  Loads 8 bytes into s1 from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0 (`ld` at 0xe818).
  Loads 2 bytes into s0 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596 (`lh` at 0xe82c).
  Loads 2 bytes into s1 from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598 (`lhu` at 0xe840).
  Loads 8 bytes into s3 from sym(.srdata) +0x168 (`ld` at 0xe84c).
  Loads 8 bytes into s3 from sym(.srdata) +0x168 (`ld` at 0xe88c).
  Loads 8 bytes into t9 from ? (base unknown) (`ld` at 0xe868).
  Loads 1 byte into t9 from ? (base unknown) (`lbu` at 0xe86c).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe850).
  At `bltz` at 0xe83c (target 0xe890), taken when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) < 0 (signed) and falls through when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) >= 0 (signed).
  At `beq` at 0xe844 (target 0xe890), taken when s1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) == 0 and falls through when s1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) != 0.
  At `beq` at 0xe858 (target 0xe874), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `beq` at 0xe870 (target 0xe8b4), taken when s2(=a1) == t9(?) and falls through when s2(=a1) != t9(?).
  At `bltz` at 0xe880 (target 0xe890), taken when s0(?) < 0 (signed) and falls through when s0(?) >= 0 (signed).
  At `bne` at 0xe888 (target 0xe850), taken when s1(?) != 0 and falls through when s1(?) == 0.
  Returns v0 = ? (`jr` at 0xe8ac).

- `build_cpumap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe8bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe8bc-0xe9c4 (264 bytes).
  4 such loads of 4 bytes through gp (gp) to sym(numcpus) +0x0, including `lw` at 0xe8bc, 0xe8f0, 0xe914.
  Stores 2 bytes from a3 to ? (base unknown)  (`sh` at 0xe8e8).
  Stores 2 bytes from a3 to ? (base unknown)  (`sh` at 0xe90c).
  Loads 4 bytes into a3 from sym(numnodes) +0x0 (`lw` at 0xe928).
  Loads 4 bytes into a4 from sym(numnodes) +0x0 (`lw` at 0xe948).
  Stores 2 bytes from s2 to ? (base unknown) (`sh` at 0xe9a8).
  Calls `cnode_slice_to_cpuid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe970).
  At `blez` at 0xe8d4 (target 0xe928), taken when at(=[sym(numcpus)]) <= 0 (signed) and falls through when at(=[sym(numcpus)]) > 0 (signed).
  At `beq` at 0xe8fc (target 0xe928), taken when a1(?) >= v0(=[sym(numcpus)]) (signed) and falls through when a1(?) < v0(=[sym(numcpus)]) (signed).
  At `bne` at 0xe920 (target 0xe8e0), taken when a1(?) < a4(=[sym(numcpus)]) (signed) and falls through when a1(?) >= a4(=[sym(numcpus)]) (signed).
  At `bgtz` at 0xe934 (target 0xe960), taken when a3(=[sym(numnodes)]) > 0 (signed) and falls through when a3(=[sym(numnodes)]) <= 0 (signed).
  At `beq` at 0xe958 (target 0xe9ac), taken when s2(?) >= a4(=[sym(numnodes)]) (signed) and falls through when s2(?) < a4(=[sym(numnodes)]) (signed).
  At `beq` at 0xe968 (target 0xe944), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bltz` at 0xe994 (target 0xe968), taken when a5(?) < 0 (signed) and falls through when a5(?) >= 0 (signed).
  At `beq` at 0xe99c (target 0xe968), taken when a4(?) == 0 and falls through when a4(?) != 0.
  Returns v0 = ? (`jr` at 0xe9bc).

- `gen_region_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe9c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe9c4-0xea3c (120 bytes).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x0  (`sd` at 0xe9c4).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x0 (`ld` at 0xea08).
  Stores 8 bytes from at to a0 (arg0 at entry) +0x0 (`sd` at 0xea1c).
  Calls `get_region` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe9f4).
  At `blez` at 0xe9ec (target 0xea20), taken when a1 <= 0 (signed) and falls through when a1 > 0 (signed).
  At `bne` at 0xea18 (target 0xe9f4), taken when s0(?) < s1(=a1) (signed) and falls through when s0(?) >= s1(=a1) (signed).
  Returns v0 = ? (`jr` at 0xea34).

- `is_cpuless` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xea3c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xea3c-0xea6c (48 bytes).
  Calls `cnodetocpu` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xea44).
  At `beq` at 0xea50 (target 0xea64), taken when v0(=ret(cnodetocpu)) == at(=-0x1) and falls through when v0(=ret(cnodetocpu)) != at(=-0x1).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xea5c).

- `gda_sym_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeab8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeab8-0xeb1c (100 bytes).
  Loads 2 bytes into a4 from sym(kdebug) +0x0 (`lh` at 0xead0).
  Loads 8 bytes into a3 from sym(.srdata) +0x1a8 (`ld` at 0xeae0).
  Loads 8 bytes into a2 from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0 (`ld` at 0xeaec).
  Loads 4 bytes into a5 from sym(symmax) +0x0 (`lw` at 0xeaf0).
  Stores 8 bytes from a3 to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x38  (`sd` at 0xeaf4).
  Stores 8 bytes from zero to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x38  (`sd` at 0xeb0c).
  Loads 8 bytes into a4 from sym(.srdata) +0x1a0 (`ld` at 0xeaf8).
  Stores 4 bytes from a5 to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x2c  (`sw` at 0xeafc).
  Stores 4 bytes from zero to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x2c  (`sw` at 0xeb18).
  Stores 8 bytes from a4 to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x30  (`sd` at 0xeb00).
  Stores 8 bytes from zero to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x30  (`sd` at 0xeb10).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xeac0).
  At `beq` at 0xeae8 (target 0xeb0c), taken when a4(=[sym(kdebug)]:2) == 0 and falls through when a4(=[sym(kdebug)]:2) != 0.
  Returns v0 = ret(get_nasid) (`jr` at 0xeb04).

- `update_node_information` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeb1c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeb1c-0xeb84 (104 bytes).
  Loads 8 bytes into a3 from abs 0xffffffffffffc400 (`ld` at 0xeb1c).
  Loads 8 bytes into a3 from [-0x3c00]:8 +0x0 (`ld` at 0xeb20).
  Loads 8 bytes into a3 from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0 (`ld` at 0xeb2c).
  Loads 8 bytes into a2 from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x85e8 (`ld` at 0xeb38).
  Loads 8 bytes into a1 from [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34280]:8 +0x18 (`ld` at 0xeb48).
  Loads 1 byte into a5 from ? (base unknown) (`lbu` at 0xeb4c).
  Loads 1 byte into a4 from ? (base unknown) (`lbu` at 0xeb54).
  Stores 2 bytes from a5 to ? (base unknown) (`sh` at 0xeb50).
  Stores 1 byte from a4 to ? (base unknown) (`sb` at 0xeb58).
  Loads 8 bytes into a2 from ? (base unknown) (`ld` at 0xeb5c).
  Loads 8 bytes into a1 from ? (base unknown) (`ld` at 0xeb68).
  Stores 2 bytes from zero to ? (base unknown)  (`sh` at 0xeb78).
  At `beq` at 0xeb3c (target 0xeb7c), taken when a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34280]:8) == 0 and falls through when a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34280]:8) != 0.
  At `beq` at 0xeb60 (target 0xeb7c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0xeb6c (target 0xeb4c), taken when a1(?) != 0 and falls through when a1(?) == 0.
  Returns v0 = ? (`jr` at 0xeb7c).

- `get_region` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeb84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeb84-0xebb0 (44 bytes).
  Loads 4 bytes into a4 from sym(_prom_cleared) +0x74 (`lw` at 0xeb84).
  Loads 8 bytes into a3 from sym(.srdata) +0x180 (`ld` at 0xeb88).
  Loads 2 bytes into a3 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0xeb98).
  At `beq` at 0xeb94 (target 0xeba8), taken when a4(=[sym(.sdata)+116]) == 0 and falls through when a4(=[sym(.sdata)+116]) != 0.
  Returns v0 = [(sym(compact_to_nasid_node) + (a0 + a0))]:2 (`jr` at 0xeba0).
  Returns v0 = ? (`jr` at 0xeba8).

- `nasid_to_region` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xebb0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xebb0-0xebc8 (24 bytes).
  Loads 4 bytes into at from sym(_prom_cleared) +0x74 (`lw` at 0xebb0).
  At `beq` at 0xebb4 (target 0xebc0), taken when at(=[sym(.sdata)+116]) == 0 and falls through when at(=[sym(.sdata)+116]) != 0.
  Returns v0 = ? (`jr` at 0xebc0).
- `redo_nodes` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xebc8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xebc8-0xec20 (88 bytes).
  Loads 8 bytes into v0 from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0 (`ld` at 0xec04).
  Stores 2 bytes from at to ([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0)) +0x80  (`sh` at 0xec10).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xebd4).
  At `blez` at 0xebe0 (target 0xec14), taken when s0(=a0) <= 0 (signed) and falls through when s0(=a0) > 0 (signed).
  At `beq` at 0xebec (target 0xec14), taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns v0 = ? (`jr` at 0xec18).

- `mem_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xec20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xec20-0xec48 (40 bytes).
  Loads 8 bytes into a0 from sym(.srdata) +0x1b0 (`ld` at 0xec20).
  Loads 8 bytes into a2 from sym(.srdata) +0x1b8 (`ld` at 0xec28).
  Calls `init_mutex` via direct with a0=sym(probe_sema), a1=0x0, a2=sym(.rodata)+6840, a3=-0x1 (`jal` at 0xec34).
  Returns v0 = ret(init_mutex) (`jr` at 0xec40).

- `poison_state_alter_range` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeec4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeec4-0xf0f0 (556 bytes).
  Loads 4 bytes into t8 from ? (base unknown) (`lw` at 0xef2c).
  Loads 4 bytes into t9 from ? (base unknown) (`lw` at 0xef38).
  Loads 4 bytes into ra from ? (base unknown) (`lw` at 0xef4c).
  Loads 4 bytes into a2 from sym(maxcpus) +0x0 (`lw` at 0xefb8).
  Loads 4 bytes into a2 from sym(maxcpus) +0x0 (`lw` at 0xf01c).
  Loads 8 bytes into a0 from sym(.srdata) +0x1c0 (`ld` at 0xefbc).
  Loads 8 bytes into s1 from sym(.srdata) +0x1c0 (`ld` at 0xf0dc).
  Loads 8 bytes into s2 from sym(.srdata) +0x1d0 (`ld` at 0xefc8).
  Loads 8 bytes into s6 from sym(.srdata) +0x1c8 (`ld` at 0xefcc).
  Loads 4 bytes into a1 from (sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)) +0x0 (`ll` at 0xefe8).
  Stores 4 bytes from a3 to (sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)) +0x0  (`sc` at 0xeff4).
  Loads 4 bytes into a5 from ? (base unknown) (`lw` at 0xf034).
  4 such loads of 4 bytes through s1 ((sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))) to (sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)) +0x0, including `lw` at 0xf050, 0xf05c, 0xf068.
  Calls `rt_pin_thread` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xeee4).
  Calls `__dcache_wb_inval` via direct with a0=?, a1=a1 at entry (arg1), a2=-0x1, a3=? (`jal` at 0xef50).
  Calls `set_dir_state_POISONED` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xef74).
  Calls `is_POISONED_dir_state` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xef7c).
  Calls `getcpuid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xefb0).
  Calls `cpuaction` via direct with a0=?, a1=sym(poison_page_inval_range), a2=0x1, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)) (`jal` at 0xf014).
  Calls `rt_unpin_thread` via direct with a0=ret(rt_pin_thread), a1=?, a2=?, a3=? (`jal` at 0xf090).
  Calls `set_dir_state_UNOWNED` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf0cc).
  At `beq` at 0xef04 (target 0xf0b4), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `beq` at 0xef20 (target 0xef50), taken when s4(=a1) == 0 and falls through when s4(=a1) != 0.
  At `beq` at 0xef30 (target 0xef50), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0xef3c (target 0xef50), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0xef48 (target 0xef28), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0xef58 (target 0xefb0), taken when s4(=a1) == 0 and falls through when s4(=a1) != 0.
  At `beq` at 0xef6c (target 0xef8c), taken when s2(?) >= 0xf (signed) and falls through when s2(?) < 0xf (signed).
  At `beq` at 0xef84 (target 0xef68), taken when v0(=ret(is_POISONED_dir_state)) == 0 and falls through when v0(=ret(is_POISONED_dir_state)) != 0.
  At `beq` at 0xef90 (target 0xefa8), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `bne` at 0xef98 (target 0xef74), taken when s3(=a2) != 0 and falls through when s3(=a2) == 0.
  At `beq` at 0xefa8 (target 0xf084), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `blez` at 0xefd0 (target 0xf0dc), taken when a2(=[sym(maxcpus)]) <= 0 (signed) and falls through when a2(=[sym(maxcpus)]) > 0 (signed).
  At `beql` at 0xeff8 (target 0xefe8), taken when a3(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]+1) == 0 and falls through when a3(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]+1) != 0.
  At `beq` at 0xf028 (target 0xf050), taken when s0(?) >= a2(=[sym(maxcpus)]) (signed) and falls through when s0(?) < a2(=[sym(maxcpus)]) (signed).
  At `bne` at 0xf038 (target 0xefe4), taken when a5(?) != s3(=-0x1) and falls through when a5(?) == s3(=-0x1).
  At `bne` at 0xf048 (target 0xf030), taken when s0(?) < a2(=[sym(maxcpus)]) (signed) and falls through when s0(?) >= a2(=[sym(maxcpus)]) (signed).
  At `blez` at 0xf054 (target 0xf080), taken when a7(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed) and falls through when a7(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed).
  At `blez` at 0xf060 (target 0xf080), taken when t0(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed) and falls through when t0(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed).
  At `blez` at 0xf06c (target 0xf080), taken when t1(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed) and falls through when t1(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed).
  At `bgtz` at 0xf078 (target 0xf05c), taken when t2(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed) and falls through when t2(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed).
  At `beq` at 0xf0b4 (target 0xf084), taken when s4(=a1) == 0 and falls through when s4(=a1) != 0.
  Returns v0 = ret(rt_unpin_thread) (`jr` at 0xf0ac).

- `poison_page_inval_range` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf0f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf0f0-0xf130 (64 bytes).
  Loads 4 bytes into at from a2 (arg2 at entry) +0x0 (`ll` at 0xf10c).
  Stores 4 bytes from v1 to a2 (arg2 at entry) +0x0  (`sc` at 0xf118).
  Calls `__dcache_wb_inval` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf0fc).
  At `beql` at 0xf11c (target 0xf10c), taken when v1(=[a2]-1) == 0 and falls through when v1(=[a2]-1) != 0.
  Returns v0 = -0x1 (`jr` at 0xf128).

- `poison_state_clear` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf130 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf130-0xf158 (40 bytes).
  Calls `poison_state_alter_range` via direct with a0=?, a1=0x4000, a2=0x0, a3=a3 at entry (arg3) (`jal` at 0xf144).
  Returns v0 = ret(poison_state_alter_range) (`jr` at 0xf150).

- `poison_state_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf158 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf158-0xf180 (40 bytes).
  Calls `poison_state_alter_range` via direct with a0=?, a1=0x4000, a2=0x1, a3=a3 at entry (arg3) (`jal` at 0xf16c).
  Returns v0 = ret(poison_state_alter_range) (`jr` at 0xf178).

- `node_getlastslot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf254 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf254-0xf268 (20 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x1c0 (`ld` at 0xf254).
  Loads 2 bytes into v0 from (sym(slot_lastfilled_cache) + (a0 + a0)) +0x0 (`lh` at 0xf264).
  Returns v0 = [(sym(slot_lastfilled_cache) + (a0 + a0))]:2 (`jr` at 0xf260).

- `slot_getsize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf268 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf268-0xf288 (32 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x1c0 (`ld` at 0xf268).
  Loads 4 bytes into v0 from (sym(slot_lastfilled_cache) + ((a1 + (a0 << 0x3)) << 0x2)) +0x0 (`lw` at 0xf284).
  Returns v0 = [(sym(slot_lastfilled_cache) + ((a1 + (a0 << 0x3)) << 0x2))] (`jr` at 0xf280).

- `slot_psize_compute` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf288 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf288-0xf370 (232 bytes).
  Loads 8 bytes into a6 from sym(.srdata) +0x1d8 (`ld` at 0xf288).
  Loads 2 bytes into a6 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0xf294).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0xf298).
  Loads 8 bytes into at from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6fffffffcc000000 (`ld` at 0xf2a8).
  Loads 8 bytes into t1 from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48 (`ld` at 0xf2d4).
  Loads 4 bytes into t1 from ? (base unknown) (`lw` at 0xf2e8).
  Loads 2 bytes into v0 from ret(find_first_component) +0x3a (`lh` at 0xf338).
  Loads 2 bytes into v0 from ? (base unknown) (`lh` at 0xf348).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0xf2fc).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x3, a2=?, a3=? (`jal` at 0xf31c).
  Calls `chk_for_pebrick` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a5=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000), a6=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a7=0x9600000000000000 (`jal` at 0xf360).
  At `beq` at 0xf2cc (target 0xf360), taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  At `beq` at 0xf2f0 (target 0xf2fc), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bne` at 0xf304 (target 0xf31c), taken when v0(=ret(find_lboard)) != 0 and falls through when v0(=ret(find_lboard)) == 0.
  At `bne` at 0xf328 (target 0xf338), taken when v0(=ret(find_first_component)) != 0 and falls through when v0(=ret(find_first_component)) == 0.
  Returns v0 = ? (`jr` at 0xf314).

- `memory_present` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf370 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf370-0xf394 (36 bytes).
  Calls `ckphyspnum` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf37c).
  Returns v0 = ? (`jr` at 0xf38c).

- `check_dir_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf394 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf394-0xf40c (120 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0xb8 (`ld` at 0xf3a4).
  Loads 8 bytes into a4 from table(0x9200000001fc0000) +0x0 (`ld` at 0xf3c4).
  Loads 8 bytes into a5 from sym(.lit8) +0xc0 (`ld` at 0xf3d0).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0xf3e4).
  At `beq` at 0xf3e0 (target 0xf3fc), taken when (a4(=entry(0x9200000001fc0000)) & 0x1) == 0 and falls through when (a4(=entry(0x9200000001fc0000)) & 0x1) != 0.
  Returns v0 = ? (`jr` at 0xf3f4).
  Returns v0 = ? (`jr` at 0xf404).

- `memory_read_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf40c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf40c-0xf58c (384 bytes).
  Loads 2 bytes into a0 from abs 0xffffffffffffc42a (`lh` at 0xf420).
  Loads 8 bytes into a4 from sym(.lit8) +0xc8 (`ld` at 0xf44c).
  Loads 8 bytes into a4 from sym(.lit8) +0xc8 (`ld` at 0xf474).
  Loads 8 bytes into t8 from table(0x9200000001f80008) +0x0 (`ld` at 0xf48c).
  Loads 8 bytes into a1 from sym(.lit8) +0xb8 (`ld` at 0xf490).
  Loads 8 bytes into a5 from table(0x9200000001f80000) +0x0 (`ld` at 0xf4c4).
  Loads 8 bytes into v1 from table(0x9200000001fc0000) +0x0 (`ld` at 0xf500).
  Loads 8 bytes into a1 from sym(.lit8) +0xd0 (`ld` at 0xf514).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0xf538).
  Calls `get_region` via direct with a0=[-0x3bd6]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf434).
  Calls `memory_iscalias` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xf440).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=?, a4=0x9200000001f80000 (`jal` at 0xf450).
  At `beq` at 0xf448 (target 0xf478), taken when v0(=ret(memory_iscalias)) == 0 and falls through when v0(=ret(memory_iscalias)) != 0.
  At `beq` at 0xf4bc (target 0xf4e0), taken when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) == 0 and falls through when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) != 0.
  At `beq` at 0xf4cc (target 0xf4e4), taken when (a5(=entry(0x9200000001f80000)) & a6(?)) == 0 and falls through when (a5(=entry(0x9200000001f80000)) & a6(?)) != 0.
  At `beq` at 0xf534 (target 0xf57c), taken when 0 >= v1(?) (unsigned) and falls through when 0 < v1(?) (unsigned).
  At `beq` at 0xf53c (target 0xf54c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0xf558 (target 0xf574), taken when a0(?) == a4(=0xff) and falls through when a0(?) != a4(=0xff).
  At `beq` at 0xf564 (target 0xf574), taken when a0(?) == a2(=0xf) and falls through when a0(?) != a2(=0xf).
  At `beq` at 0xf57c (target 0xf558), taken when a3(?) == 0 and falls through when a3(?) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xf4d8).

- `page_read_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf58c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf58c-0xf5e0 (84 bytes).
  Calls `memory_read_accessible` via direct with a0=table(0x0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf5a8).
  At `beq` at 0xf5b0 (target 0xf5d8), taken when v0(=ret(memory_read_accessible)) == 0 and falls through when v0(=ret(memory_read_accessible)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xf5d0).

- `memory_write_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf5e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf5e0-0xf754 (372 bytes).
  Loads 2 bytes into a0 from abs 0xffffffffffffc42a (`lh` at 0xf5f4).
  Loads 8 bytes into a4 from sym(.lit8) +0xc8 (`ld` at 0xf620).
  Loads 8 bytes into a4 from sym(.lit8) +0xc8 (`ld` at 0xf648).
  Loads 8 bytes into t8 from table(0x9200000001f80008) +0x0 (`ld` at 0xf660).
  Loads 8 bytes into a1 from sym(.lit8) +0xb8 (`ld` at 0xf664).
  Loads 8 bytes into a5 from table(0x9200000001f80000) +0x0 (`ld` at 0xf698).
  Loads 8 bytes into v1 from table(0x9200000001fc0000) +0x0 (`ld` at 0xf6d4).
  Loads 8 bytes into a1 from sym(.lit8) +0xd0 (`ld` at 0xf6e8).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0xf708).
  Calls `get_region` via direct with a0=[-0x3bd6]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf608).
  Calls `memory_iscalias` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xf614).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=?, a4=0x9200000001f80000 (`jal` at 0xf624).
  At `beq` at 0xf61c (target 0xf64c), taken when v0(=ret(memory_iscalias)) == 0 and falls through when v0(=ret(memory_iscalias)) != 0.
  At `beq` at 0xf690 (target 0xf6b4), taken when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) == 0 and falls through when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) != 0.
  At `beq` at 0xf6a0 (target 0xf6b8), taken when (a5(=entry(0x9200000001f80000)) & a6(?)) == 0 and falls through when (a5(=entry(0x9200000001f80000)) & a6(?)) != 0.
  At `beq` at 0xf704 (target 0xf744), taken when 0 >= v1(?) (unsigned) and falls through when 0 < v1(?) (unsigned).
  At `beq` at 0xf70c (target 0xf71c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0xf72c (target 0xf73c), taken when a2(?) == a3(=0xff) and falls through when a2(?) != a3(=0xff).
  At `beq` at 0xf744 (target 0xf728), taken when a3(?) == 0 and falls through when a3(?) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xf6ac).

- `page_write_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf754 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf754-0xf7a8 (84 bytes).
  Calls `memory_write_accessible` via direct with a0=table(0x0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xf770).
  At `beq` at 0xf778 (target 0xf7a0), taken when v0(=ret(memory_write_accessible)) == 0 and falls through when v0(=ret(memory_write_accessible)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0xf798).

- `set_dir_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf7a8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf7a8-0xf838 (144 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0xb8 (`ld` at 0xf7bc).
  Loads 8 bytes into at from table(0x9200000001fc0000) +0x0 (`ld` at 0xf7dc).
  Loads 8 bytes into a7 from sym(.lit8) +0xc0 (`ld` at 0xf7e4).
  Loads 8 bytes into a6 from sym(.lit8) +0xd8 (`ld` at 0xf7f8).
  Loads 8 bytes into a4 from ? (base unknown) (`ld` at 0xf804).
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0xf810).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0xf834).
  At `beq` at 0xf800 (target 0xf81c), taken when (at(=entry(0x9200000001fc0000)) & 0x1) == 0 and falls through when (at(=entry(0x9200000001fc0000)) & 0x1) != 0.
  Returns v0 = 0x9200000001fc0000 (`jr` at 0xf814).
  Returns v0 = 0x9200000001fc0000 (`jr` at 0xf830).

- `memory_set_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf838 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf838-0xf990 (344 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0xb8 (`ld` at 0xf874).
  Loads 8 bytes into at from table(0x9200000001fc0000) +0x0 (`ld` at 0xf89c).
  Loads 8 bytes into a0 from sym(.lit8) +0xf0 (`ld` at 0xf8a0).
  Loads 8 bytes into t0 from sym(.lit8) +0xd0 (`ld` at 0xf8ac).
  Loads 8 bytes into t3 from sym(.lit8) +0xe8 (`ld` at 0xf8b8).
  Loads 8 bytes into t1 from sym(.lit8) +0xe0 (`ld` at 0xf8c8).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0xf8d8).
  4 such stores of 8 bytes through a7 (?) to ? (base unknown), including `sd` at 0xf900, 0xf904, 0xf908.
  Calls `get_nasid` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0xf90c).
  Calls `set_dir_access` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xf928).
  At `beq` at 0xf8d4 (target 0xf95c), taken when 0 >= at(?) (unsigned) and falls through when 0 < at(?) (unsigned).
  At `beq` at 0xf8dc (target 0xf96c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0xf8ec (target 0xf978), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `bne` at 0xf914 (target 0xf940), taken when v0(=ret(get_nasid)) != s0(?) and falls through when v0(=ret(get_nasid)) == s0(?).
  At `bne` at 0xf938 (target 0xf928), taken when s0(?) < 0x1000 (signed) and falls through when s0(?) >= 0x1000 (signed).
  At `beq` at 0xf95c (target 0xf984), taken when a5(?) == 0 and falls through when a5(?) != 0.
  Returns v0 = ? (`jr` at 0xf954).

- `page_allow_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf990 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf990-0xfa04 (116 bytes).
  Loads 2 bytes into a0 from abs 0xffffffffffffc42a (`lh` at 0xf9cc).
  Calls `get_region` via direct with a0=[-0x3bd6]:2, a1=?, a2=?, a3=? (`jal` at 0xf9c8).
  Calls `memory_set_access` via direct with a0=?, a1=(ret(get_region) << 0x0), a2=0xff, a3=? (`jal` at 0xf9d8).
  At `beq` at 0xf9b8 (target 0xf9f0), taken when a3(?) >= at(?) (unsigned) and falls through when a3(?) < at(?) (unsigned).
  At `bne` at 0xf9c0 (target 0xf9f4), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `beq` at 0xf9e8 (target 0xf9c8), taken when s1(?) >= s0(?) (unsigned) and falls through when s1(?) < s0(?) (unsigned).
  Returns v0 = ? (`jr` at 0xf9fc).

- `decode_prot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfa04 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfa04-0xfa44 (64 bytes).
  Loads 8 bytes into v0 from sym(.srdata) +0x1b8 (`ld` at 0xfa04).
  At `beq` at 0xfa18 (target 0xfa30), taken when a0 == v1(=0xff) and falls through when a0 != v1(=0xff).
  At `beq` at 0xfa20 (target 0xfa38), taken when a0 == a3(=0xf) and falls through when a0 != a3(=0xf).
  Returns v0 = sym(.rodata)+6840 (`jr` at 0xfa30).
  Returns v0 = sym(.rodata)+6840 (`jr` at 0xfa3c).

- `show_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfa44 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfa44-0xfdf4 (944 bytes).
  Loads 8 bytes into a2 from sym(.srdata) +0x1e0 (`ld` at 0xfa70).
  12 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x1b8, including `ld` at 0xfa74, 0xfad0, 0xfb54.
  Loads 8 bytes into a2 from table(sym(dir_state_str)) +0x0 (`ld` at 0xfa8c).
  Loads 8 bytes into t8 from sym(.lit8) +0xb8 (`ld` at 0xfae0).
  Loads 8 bytes into t8 from sym(.lit8) +0xb8 (`ld` at 0xfc88).
  Loads 8 bytes into t8 from sym(.lit8) +0xb8 (`ld` at 0xfca4).
  Loads 8 bytes into t9 from table(0x9200000001fc0000) +0x0 (`ld` at 0xfaf0).
  Loads 8 bytes into t8 from table(0x9200000001fc0000) +0x0 (`ld` at 0xfb98).
  Loads 8 bytes into a7 from table(0x9200000001fc0000) +0x0 (`ld` at 0xfcd8).
  Loads 8 bytes into s3 from sym(.lit8) +0xd0 (`ld` at 0xfb48).
  Loads 8 bytes into s0 from ? (base unknown) (`ld` at 0xfbb4).
  Loads 8 bytes into a2 from sym(.srdata) +0x1e8 (`ld` at 0xfc60).
  Loads 8 bytes into a2 from table(sym(dir_owner_str)) +0x0 (`ld` at 0xfc80).
  Calls `get_dir_ent` via direct with a0=a0 at entry (arg0), a1=sp-112, a2=sp-104, a3=sp-96 (`jal` at 0xfa64).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=a0 at entry (arg0), a2=entry(sym(dir_state_str)), a3=? (`jalr` at 0xfa88).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=0x5, a3=0x6, a4=0x2 (`jalr` at 0xfad4).
  Calls `decode_prot` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfb58).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=ret(decode_prot) (`jalr` at 0xfb6c).
  Calls `is_fine_dirmode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfbdc).
  Calls `decode_prot` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfbec).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?, a4=ret(decode_prot) (`jalr` at 0xfc0c).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=entry(sym(dir_owner_str)), a3=?, a4=0x2 (`jalr` at 0xfc7c).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=0x5, a3=?, a4=0x2 (`jalr` at 0xfcc4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?, a4=0x2 (`jalr` at 0xfd14).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=? (`jalr` at 0xfd34).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?, a4=0x2 (`jalr` at 0xfd50).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=? (`jalr` at 0xfd70).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=? (`jalr` at 0xfdac).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+6840, a1=?, a2=?, a3=? (`jalr` at 0xfdcc).
  At `beq` at 0xfaac (target 0xfc9c), taken when a0(?) == a4(=0x2) and falls through when a0(?) != a4(=0x2).
  At `beq` at 0xfab4 (target 0xfc5c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xfabc (target 0xfc60), taken when a0(?) == a1(=0x4) and falls through when a0(?) != a1(=0x4).
  At `beq` at 0xfac4 (target 0xfc60), taken when a0(?) == a2(=0x5) and falls through when a0(?) != a2(=0x5).
  At `beq` at 0xfacc (target 0xfc5c), taken when a0(?) == a3(=0x6) and falls through when a0(?) != a3(=0x6).
  At `blez` at 0xfb14 (target 0xfc2c), taken when t8(=one of 0x10, 0x40) <= 0 (signed) and falls through when t8(=one of 0x10, 0x40) > 0 (signed).
  At `beq` at 0xfb90 (target 0xfc2c), taken when s1(?) >= at(?) (signed) and falls through when s1(?) < at(?) (signed).
  At `beq` at 0xfbb0 (target 0xfc1c), taken when 0 >= t8(?) (unsigned) and falls through when 0 < t8(?) (unsigned).
  At `beq` at 0xfbb8 (target 0xfbc8), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xfbd4 (target 0xfb78), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0xfbe4 (target 0xfb54), taken when v0(=ret(is_fine_dirmode)) != 0 and falls through when v0(=ret(is_fine_dirmode)) == 0.
  At `beq` at 0xfc1c (target 0xfbd4), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0xfcb4 (target 0xfcd4), taken when (a3(?) & 0x1) == 0 and falls through when (a3(?) & 0x1) != 0.
  At `beq` at 0xfce8 (target 0xfd44), taken when (a7(=entry(0x9200000001fc0000)) & 0x1) == 0 and falls through when (a7(=entry(0x9200000001fc0000)) & 0x1) != 0.
  At `bltz` at 0xfd24 (target 0xfd80), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bltz` at 0xfd60 (target 0xfdbc), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  Returns v0 = ret(?) (`jr` at 0xfc54).

- `set_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfdf4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfdf4-0xfe64 (112 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0xc0 (`ld` at 0xfe08).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0xfe1c).
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0xfe60).
  At `beq` at 0xfe24 (target 0xfe34), taken when (a3(?) & 0x2) == 0 and falls through when (a3(?) & 0x2) != 0.
  Returns v0 = ? (`jr` at 0xfe2c).
  Returns v0 = ? (`jr` at 0xfe5c).

- `set_dir_state_POISONED` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfe64 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfe64-0xfe80 (28 bytes).
  Calls `set_dir_state` via direct with a0=a0 at entry (arg0), a1=0x7, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xfe6c).
  Returns v0 = ret(set_dir_state) (`jr` at 0xfe78).

- `is_POISONED_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfe80 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfe80-0xfeb0 (48 bytes).
  Calls `get_dir_ent` via direct with a0=a0 at entry (arg0), a1=sp-32, a2=sp-24, a3=sp-16 (`jal` at 0xfe90).
  Returns v0 = ? (`jr` at 0xfea8).

- `is_UNOWNED_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfecc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfecc-0xfefc (48 bytes).
  Calls `get_dir_ent` via direct with a0=a0 at entry (arg0), a1=sp-32, a2=sp-24, a3=sp-16 (`jal` at 0xfedc).
  Returns v0 = ? (`jr` at 0xfef4).

- `set_dir_owner` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfefc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfefc-0x10004 (264 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0xb8 (`ld` at 0xff18).
  Loads 8 bytes into at from table(0x9200000001fc0000) +0x0 (`ld` at 0xff38).
  Loads 8 bytes into a6 from sym(.lit8) +0xc0 (`ld` at 0xff40).
  Loads 8 bytes into a3 from ? (base unknown) (`ld` at 0xff60).
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0xff90).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0xffc8).
  At `beq` at 0xff5c (target 0xff9c), taken when (at(=entry(0x9200000001fc0000)) & 0x1) == 0 and falls through when (at(=entry(0x9200000001fc0000)) & 0x1) != 0.
  At `beq` at 0xff6c (target 0xffcc), taken when a1 == t1(=-0x1) and falls through when a1 != t1(=-0x1).
  At `bne` at 0xff9c (target 0xffb8), taken when a1 != t1(=-0x1) and falls through when a1 == t1(=-0x1).
  Returns v0 = 0x9200000001fc0000 (`jr` at 0xff94).
  Returns v0 = 0x9200000001fc0000 (`jr` at 0xffc4).
- `get_dir_ent` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10004 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10004-0x100c4 (192 bytes).
  Loads 8 bytes into a6 from sym(.lit8) +0xc0 (`ld` at 0x10024).
  Loads 8 bytes into t3 from sym(.lit8) +0xb8 (`ld` at 0x10038).
  Loads 8 bytes into a5 from ? (base unknown) (`ld` at 0x1004c).
  Loads 8 bytes into t0 from table(0x9200000001fc0000) +0x0 (`ld` at 0x1005c).
  Stores 4 bytes from a4 to a1 (arg1 at entry) +0x0 (`sw` at 0x10078).
  Stores 8 bytes from a5 to a3 (arg3 at entry) +0x0 (`sd` at 0x10080).
  Stores 8 bytes from a5 to a2 (arg2 at entry) +0x0 (`sd` at 0x10090).
  Stores 8 bytes from a1 to a2 (arg2 at entry) +0x0 (`sd` at 0x100ac).
  At `beq` at 0x1006c (target 0x100b8), taken when t3(=0x1) == t8(?) and falls through when t3(=0x1) != t8(?).
  At `beq` at 0x10084 (target 0x10094), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x10094 (target 0x100ac), taken when t0(?) == 0 and falls through when t0(?) != 0.
  Returns v0 = ? (`jr` at 0x1008c).
  Returns v0 = ? (`jr` at 0x100b0).

- `memory_iscalias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x100c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x100c4-0x10104 (64 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0xf8 (`ld` at 0x100c4).
  Loads 8 bytes into v0 from abs 0x9200000001000028 (`ld` at 0x100cc).
  At `beq` at 0x100dc (target 0x100f8), taken when v0(=[0x9200000001000028]:8) == 0 and falls through when v0(=[0x9200000001000028]:8) != 0.
  At `bne` at 0x100f0 (target 0x100fc), taken when v1(?) < a1(?) (unsigned) and falls through when v1(?) >= a1(?) (unsigned).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x100fc).

- `page_iscalias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10104 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10104-0x10124 (32 bytes).
  Calls `memory_iscalias` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10110).
  Returns v0 = ret(memory_iscalias) (`jr` at 0x1011c).

- `page_local_calias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10124 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10124-0x10160 (60 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0xf8 (`ld` at 0x10124).
  Loads 8 bytes into v0 from abs 0x9200000001000028 (`ld` at 0x10128).
  At `beq` at 0x10138 (target 0x10154), taken when v0(=[0x9200000001000028]:8) == 0 and falls through when v0(=[0x9200000001000028]:8) != 0.
  At `bne` at 0x1014c (target 0x10158), taken when a3(?) < v1(?) (unsigned) and falls through when a3(?) >= v1(?) (unsigned).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x10158).

- `fetchop_flush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10160 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10160-0x10260 (256 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0xc8 (`ld` at 0x101a4).
  Loads 8 bytes into a1 from table(0x9200000001f80028) +0x0 (`ld` at 0x101c8).
  Loads 8 bytes into v1 from ? (base unknown) (`ld` at 0x10244).
  Loads 8 bytes into a1 from table(0x9200000001f80020) +0x0 (`ld` at 0x1025c).
  At `beq` at 0x101c0 (target 0x10258), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x101dc (target 0x10248), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `bne` at 0x1020c (target 0x10248), taken when t8(?) < a1(?) (unsigned) and falls through when t8(?) >= a1(?) (unsigned).
  At `beq` at 0x1021c (target 0x10248), taken when at(?) >= v0(?) (unsigned) and falls through when at(?) < v0(?) (unsigned).
  At `bne` at 0x10248 (target 0x101c0), taken when a3(?) != 0 and falls through when a3(?) == 0.
  Returns v0 = 0x1 (`jr` at 0x10250).

- `__cache_hwb_inval_pfn` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10574 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10574-0x105c0 (76 bytes).
  Loads 4 bytes into a4 from abs 0xffffffffffffc6ac (`lw` at 0x10578).
  At `bne` at 0x10590 (target 0x1059c), taken when a4(=[-0x3954]) < a1 (unsigned) and falls through when a4(=[-0x3954]) >= a1 (unsigned).
  At `bne` at 0x105b0 (target 0x105a4), taken when t0(?) < a4(?) (unsigned) and falls through when t0(?) >= a4(?) (unsigned).
  Returns v0 = ? (`jr` at 0x105b8).

- `getecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10900 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10900-0x1090c (12 bytes).
  Returns v0 = ? (`jr` at 0x10904).

- `setecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1090c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1090c-0x10918 (12 bytes).
  Returns v0 = ? (`jr` at 0x10910).

- `_munge_decc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10950 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10950-0x10968 (24 bytes).
  Returns v0 = ? (`jr` at 0x10960).

- `__pdcache_wbinval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10a2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10a2c-0x10af4 (200 bytes).
  Loads 4 bytes into a7 from sym(pdcache_size) +0x0 (`lw` at 0x10a48).
  At `bne` at 0x10a50 (target 0x10ac8), taken when a7(=[sym(pdcache_size)]) < a1 (unsigned) and falls through when a7(=[sym(pdcache_size)]) >= a1 (unsigned).
  At `beq` at 0x10a64 (target 0x10ac0), taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned) and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  At `beq` at 0x10a74 (target 0x10a90), taken when (t0(=a0) & 0x1f) == 0 and falls through when (t0(=a0) & 0x1f) != 0.
  At `beq` at 0x10a88 (target 0x10ac0), taken when t0(?) >= t1(=(a0 + a1)-32) (unsigned) and falls through when t0(?) < t1(=(a0 + a1)-32) (unsigned).
  At `beq` at 0x10a94 (target 0x10ab0), taken when (t1(=(a0 + a1)-32) & 0x1f) == 0 and falls through when (t1(=(a0 + a1)-32) & 0x1f) != 0.
  At `beq` at 0x10aa8 (target 0x10ac0), taken when t0(?) >= t1(?) (unsigned) and falls through when t0(?) < t1(?) (unsigned).
  At `bne` at 0x10ab8 (target 0x10ab0), taken when t0(?) < t1(?) (unsigned) and falls through when t0(?) >= t1(?) (unsigned).
  At `bne` at 0x10ae4 (target 0x10adc), taken when t0(?) < t1(=[sym(pdcache_size)]+0xa7ffffffffffffe0) (unsigned) and falls through when t0(?) >= t1(=[sym(pdcache_size)]+0xa7ffffffffffffe0) (unsigned).
  Returns v0 = 0x0 (`jr` at 0x10ac0).
  Returns v0 = 0x0 (`jr` at 0x10aec).

- `__picache_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10af4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10af4-0x10bb8 (196 bytes).
  Loads 4 bytes into a7 from sym(picache_size) +0x0 (`lw` at 0x10b0c).
  At `bne` at 0x10b14 (target 0x10b8c), taken when a7(=[sym(picache_size)]) < a1 (unsigned) and falls through when a7(=[sym(picache_size)]) >= a1 (unsigned).
  At `beq` at 0x10b28 (target 0x10b84), taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned) and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  At `beq` at 0x10b38 (target 0x10b54), taken when (t0(=a0) & 0x3f) == 0 and falls through when (t0(=a0) & 0x3f) != 0.
  At `beq` at 0x10b4c (target 0x10b84), taken when t0(?) >= t1(=(a0 + a1)-64) (unsigned) and falls through when t0(?) < t1(=(a0 + a1)-64) (unsigned).
  At `beq` at 0x10b58 (target 0x10b74), taken when (t1(=(a0 + a1)-64) & 0x3f) == 0 and falls through when (t1(=(a0 + a1)-64) & 0x3f) != 0.
  At `beq` at 0x10b6c (target 0x10b84), taken when t0(?) >= t1(?) (unsigned) and falls through when t0(?) < t1(?) (unsigned).
  At `bne` at 0x10b7c (target 0x10b74), taken when t0(?) < t1(?) (unsigned) and falls through when t0(?) >= t1(?) (unsigned).
  At `bne` at 0x10ba8 (target 0x10b9c), taken when t0(?) < t1(=[sym(picache_size)]+0xa7ffffffffffffc0) (unsigned) and falls through when t0(?) >= t1(=[sym(picache_size)]+0xa7ffffffffffffc0) (unsigned).
  Returns v0 = ? (`jr` at 0x10b84).
  Returns v0 = ? (`jr` at 0x10bb0).

- `queue_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10e14 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10e14-0x10e48 (52 bytes).
  Stores 4 bytes from at to a0 (arg0 at entry) +0x4  (`sw` at 0x10e38).
  Calls `bzero` via direct with a0=a0 at entry (arg0), a1=0xa08, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10e28).
  Returns v0 = ret(bzero) (`jr` at 0x10e40).

- `queue_empty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10e48 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10e48-0x10e5c (20 bytes).
  Loads 1 byte into v1 from a0 (arg0 at entry) +0x1 (`lbu` at 0x10e48).
  Loads 1 byte into v0 from a0 (arg0 at entry) +0x0 (`lbu` at 0x10e4c).
  Returns v0 = ? (`jr` at 0x10e54).

- `queue_push` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10e5c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10e5c-0x10f30 (212 bytes).
  Loads 1 byte into a7 from a0 (arg0 at entry) +0x0 (`lbu` at 0x10e64).
  Loads 1 byte into a4 from a0 (arg0 at entry) +0x0 (`lbu` at 0x10ea0).
  Loads 8 bytes into t2 from a1 (arg1 at entry) +0x0 (`ld` at 0x10e74).
  Stores 8 bytes from t2 to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x8  (`sd` at 0x10e7c).
  Loads 8 bytes into t1 from a1 (arg1 at entry) +0x8 (`ld` at 0x10e80).
  Stores 8 bytes from t1 to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x10  (`sd` at 0x10e84).
  Loads 8 bytes into t0 from a1 (arg1 at entry) +0x10 (`ld` at 0x10e88).
  Stores 8 bytes from t0 to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x18  (`sd` at 0x10e8c).
  Loads 8 bytes into a7 from a1 (arg1 at entry) +0x18 (`ld` at 0x10e90).
  Stores 8 bytes from a7 to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x20  (`sd` at 0x10e94).
  Loads 8 bytes into a5 from a1 (arg1 at entry) +0x20 (`ld` at 0x10e98).
  Stores 8 bytes from a5 to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x28  (`sd` at 0x10e9c).
  Loads 1 byte into a2 from a0 (arg0 at entry) +0x1 (`lbu` at 0x10ebc).
  Stores 1 byte from a4 to a0 (arg0 at entry) +0x0 (`sb` at 0x10ecc).
  Loads 8 bytes into a5 from sym(.srdata) +0x1f0 (`ld` at 0x10edc).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x10ef8).
  Loads 8 bytes into a0 from sym(.srdata) +0x1f0 (`ld` at 0x10efc).
  Loads 1 byte into a2 from a0 (arg0 at entry) +0x1 (`lbu` at 0x10f0c).
  Loads 1 byte into a4 from a0 (arg0 at entry) +0x0 (`lbu` at 0x10f14).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+7152, a2=ra at entry, a3=a3 at entry (arg3), a6=(a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)), a7=[a1+24]:8 (`jal` at 0x10ef4).
  Calls `debug` via direct with a0=sym(.rodata)+7152, a1=?, a2=?, a3=? (`jal` at 0x10f00).
  Calls `assfail` via direct with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x5c, a3=?, a5=sym(.rodata)+7152 (`jal` at 0x10f20).
  At `beq` at 0x10ed0 (target 0x10eec), taken when a2(=[a0+1]:1) == a4(?) and falls through when a2(=[a0+1]:1) != a4(?).
  At `beq` at 0x10ed8 (target 0x10f18), taken when a2(=[a0+1]:1) == a4(?) and falls through when a2(=[a0+1]:1) != a4(?).
  Returns v0 = ? (`jr` at 0x10ee4).

- `queue_pop` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10f30 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10f30-0x10f94 (100 bytes).
  Loads 1 byte into v1 from a0 (arg0 at entry) +0x1 (`lbu` at 0x10f30).
  Loads 1 byte into at from a0 (arg0 at entry) +0x1 (`lbu` at 0x10f6c).
  Loads 8 bytes into a4 from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x8 (`ld` at 0x10f44).
  Stores 8 bytes from a4 to a1 (arg1 at entry) +0x0  (`sd` at 0x10f48).
  Loads 8 bytes into a3 from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x10 (`ld` at 0x10f4c).
  Stores 8 bytes from a3 to a1 (arg1 at entry) +0x8  (`sd` at 0x10f50).
  Loads 8 bytes into a2 from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x18 (`ld` at 0x10f54).
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x10  (`sd` at 0x10f58).
  Loads 8 bytes into v1 from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x20 (`ld` at 0x10f5c).
  Stores 8 bytes from v1 to a1 (arg1 at entry) +0x18  (`sd` at 0x10f60).
  Loads 8 bytes into v0 from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x28 (`ld` at 0x10f64).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x20  (`sd` at 0x10f68).
  Stores 1 byte from at to a0 (arg0 at entry) +0x1 (`sb` at 0x10f90).
  Returns v0 = ? (`jr` at 0x10f8c).

- `queue_find` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10f94 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10f94-0x1104c (184 bytes).
  Loads 1 byte into a6 from a0 (arg0 at entry) +0x0 (`lbu` at 0x10f94).
  Loads 1 byte into a4 from a0 (arg0 at entry) +0x1 (`lbu` at 0x10f98).
  Loads 4 bytes into v0 from a0 (arg0 at entry) +0x4 (`lw` at 0x10fb4).
  Loads 4 bytes into a5 from ? (base unknown) (`lwu` at 0x11008).
  Loads 8 bytes into a5 from ? (base unknown) (`ld` at 0x1101c).
  At `beq` at 0x10fa8 (target 0x11040), taken when a4(=[a0+1]:1) == a6(=[a0]:1) and falls through when a4(=[a0+1]:1) != a6(=[a0]:1).
  At `beq` at 0x10fb8 (target 0x11028), taken when a1 == a5(?) and falls through when a1 != a5(?).
  At `beq` at 0x10fdc (target 0x11040), taken when a4(?) == a6(=[a0]:1) and falls through when a4(?) != a6(=[a0]:1).
  At `beq` at 0x10fe4 (target 0x1100c), taken when v0(=[a0+4]) == a7(=0x1) and falls through when v0(=[a0+4]) != a7(=0x1).
  At `bne` at 0x10fec (target 0x10fb8), taken when v0(=[a0+4]) != t0(=0x2) and falls through when v0(=[a0+4]) == t0(=0x2).
  At `bne` at 0x11020 (target 0x10fc0), taken when a1 != a5(?) and falls through when a1 == a5(?).
  Returns v0 = ? (`jr` at 0x11044).

- `queue_first` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1104c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1104c-0x11090 (68 bytes).
  Loads 1 byte into a0 from a0 (arg0 at entry) +0x1 (`lbu` at 0x11074).
  Calls `queue_empty [0x10e48]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11054).
  At `beq` at 0x1105c (target 0x11070), taken when v0(=ret(queue_empty)) == 0 and falls through when v0(=ret(queue_empty)) != 0.
  Returns v0 = ? (`jr` at 0x11068).

- `queue_last` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11090 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11090-0x110d4 (68 bytes).
  Loads 1 byte into a0 from a0 (arg0 at entry) +0x0 (`lbu` at 0x110b8).
  Calls `queue_empty [0x10e48]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11098).
  At `beq` at 0x110a0 (target 0x110b4), taken when v0(=ret(queue_empty)) == 0 and falls through when v0(=ret(queue_empty)) != 0.
  Returns v0 = ? (`jr` at 0x110ac).

- `queue_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x110d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x110d4-0x11148 (116 bytes).
  Loads 1 byte into a7 from a0 (arg0 at entry) +0x0 (`lbu` at 0x110d4).
  At `beq` at 0x110f8 (target 0x11140), taken when a1 == a6(=(a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3))+8) and falls through when a1 != a6(=(a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3))+8).
  Returns v0 = ? (`jr` at 0x11138).
  Returns v0 = 0x0 (`jr` at 0x11140).

- `get_chipid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11148 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11148-0x111f4 (172 bytes).
  Loads 8 bytes into s0 from sym(.srdata) +0x1f0 (`ld` at 0x1119c).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x111d8).
  Calls `vector_read` via direct with a0=a2 at entry (arg2), a1=0x0, a2=0x600000, a3=a3 at entry (arg3) (`jal` at 0x11168).
  Calls `net_errmsg` via direct with a0=ret(vector_read), a1=?, a2=?, a3=? (`jal` at 0x11190).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=a2 at entry (arg2), a3=ret(net_errmsg) (`jal` at 0x111a8).
  Calls `vector_read` via direct with a0=a2 at entry (arg2), a1=0x0, a2=0x600000, a3=a3 at entry (arg3) (`jal` at 0x111bc).
  Calls `net_errmsg` via direct with a0=ret(vector_read), a1=?, a2=?, a3=? (`jal` at 0x111cc).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=a2 at entry (arg2), a3=ret(net_errmsg) (`jal` at 0x111e4).
  At `bltz` at 0x11170 (target 0x11190), taken when v0(=ret(vector_read)) < 0 (signed) and falls through when v0(=ret(vector_read)) >= 0 (signed).
  At `bgez` at 0x111c4 (target 0x11178), taken when v0(=ret(vector_read)) >= 0 (signed) and falls through when v0(=ret(vector_read)) < 0 (signed).
  Returns v0 = ret(vector_read) (`jr` at 0x11188).

- `get_port_status` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x111f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x111f4-0x11300 (268 bytes).
  6 such stores of 1 bytes through a1 (?) to ? (base unknown) , including `sb` at 0x11250, 0x11280, 0x1129c.
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x112d0).
  Calls `vector_read` via direct with a0=a1 at entry (arg1), a1=0x0, a2=0x10, a3=sp-48 (`jal` at 0x1121c).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=a1 at entry (arg1), a3=?, a7=0x3 (`jal` at 0x112dc).
  At `bltz` at 0x11224 (target 0x112d0), taken when v0(=ret(vector_read)) < 0 (signed) and falls through when v0(=ret(vector_read)) >= 0 (signed).
  At `beq` at 0x11268 (target 0x112b8), taken when a2(?) >= 0x9 (signed) and falls through when a2(?) < 0x9 (signed).
  At `beq` at 0x11278 (target 0x112a0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x11290 (target 0x11250), taken when (v1(?) & a0(?)) != 0 and falls through when (v1(?) & a0(?)) == 0.
  At `beq` at 0x112a8 (target 0x112c8), taken when (s0(=a0) & t2(?)) == 0 and falls through when (s0(=a0) & t2(?)) != 0.
  Returns v0 = ? (`jr` at 0x112c0).

- `probe_object` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11300 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11300-0x11460 (352 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x100 (`ld` at 0x11300).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x1140c).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11444).
  Calls `vector_concat` via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1132c).
  Calls `get_chipid [0x11148]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=ret(vector_concat), a3=sp-88 (`jal` at 0x11344).
  Calls `vector_read` via direct with a0=ret(vector_concat), a1=0x0, a2=0x100, a3=sp-96 (`jal` at 0x113a0).
  Calls `queue_find [0x10f94]` via direct with a0=a2 at entry (arg2), a1=?, a2=?, a3=? (`jal` at 0x113d4).
  Calls `queue_push [0x10e5c]` via direct with a0=a2 at entry (arg2), a1=sp-80, a2=?, a3=? (`jal` at 0x113fc).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=ret(vector_concat), a3=? (`jal` at 0x11418).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11428).
  Calls `rbrick_uid_get` via direct with a0=ret(get_nasid), a1=ret(vector_concat), a2=sp-96, a3=? (`jal` at 0x11438).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=ret(vector_concat), a3=? (`jal` at 0x11450).
  At `bltz` at 0x11354 (target 0x1140c), taken when v0(=ret(get_chipid)) < 0 (signed) and falls through when v0(=ret(get_chipid)) >= 0 (signed).
  At `beq` at 0x1136c (target 0x11384), taken when a5(?) == v0(=0x3012) and falls through when a5(?) != v0(=0x3012).
  At `beq` at 0x11374 (target 0x11398), taken when a5(?) == a1(=0x3017) and falls through when a5(?) != a1(=0x3017).
  At `bltz` at 0x113a8 (target 0x11428), taken when v0(=ret(vector_read)) < 0 (signed) and falls through when v0(=ret(vector_read)) >= 0 (signed).
  At `beq` at 0x113bc (target 0x11428), taken when (a6(?) & a7(=0xffffffffffff)) == 0 and falls through when (a6(?) & a7(=0xffffffffffff)) != 0.
  At `bltz` at 0x113c4 (target 0x11380), taken when s0(=ret(get_chipid)) < 0 (signed) and falls through when s0(=ret(get_chipid)) >= 0 (signed).
  At `beq` at 0x113cc (target 0x11384), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x113dc (target 0x11384), taken when v0(=ret(queue_find)) != 0 and falls through when v0(=ret(queue_find)) == 0.
  At `beq` at 0x11440 (target 0x113c4), taken when v0(=ret(rbrick_uid_get)) == 0 and falls through when v0(=ret(rbrick_uid_get)) != 0.
  Returns v0 = ? (`jr` at 0x11390).

- `probe_loop` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11460 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11460-0x115e4 (388 bytes).
  Loads 1 byte into a5 from ? (base unknown) (`lbu` at 0x114ec).
  Loads 1 byte into a5 from ? (base unknown) (`lbu` at 0x11514).
  Loads 1 byte into a6 from ? (base unknown) (`lbu` at 0x115cc).
  Stores 1 byte from a5 to ? (base unknown) (`sb` at 0x1150c).
  Stores 1 byte from a5 to ? (base unknown) (`sb` at 0x11544).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x115b0).
  Stores 1 byte from a5 to ? (base unknown) (`sb` at 0x115e0).
  Calls `queue_empty [0x10e48]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11474).
  Calls `probe_object [0x11300]` via direct with a0=?, a1=?, a2=a0 at entry (arg0), a3=? (`jal` at 0x114dc).
  Calls `queue_push [0x10e5c]` via direct with a0=a1 at entry (arg1), a1=sp-112, a2=?, a3=? (`jal` at 0x1154c).
  Calls `queue_empty [0x10e48]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x11554).
  Calls `queue_pop [0x10f30]` via direct with a0=a0 at entry (arg0), a1=sp-112, a2=?, a3=? (`jal` at 0x11564).
  Calls `queue_find [0x10f94]` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x11570).
  Calls `get_port_status [0x111f4]` via direct with a0=?, a1=?, a2=sp-72, a3=? (`jal` at 0x11584).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=?, a3=? (`jal` at 0x115c4).
  At `beq` at 0x11490 (target 0x114cc), taken when v0(=ret(queue_empty)) == 0 and falls through when v0(=ret(queue_empty)) != 0.
  At `bltz` at 0x114e4 (target 0x115b0), taken when v0(=ret(probe_object)) < 0 (signed) and falls through when v0(=ret(probe_object)) >= 0 (signed).
  At `beq` at 0x11508 (target 0x11548), taken when s0(?) >= 0x8 (signed) and falls through when s0(?) < 0x8 (signed).
  At `beq` at 0x1151c (target 0x11530), taken when (a5(?) & 0x1) == 0 and falls through when (a5(?) & 0x1) != 0.
  At `beq` at 0x11524 (target 0x114d4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x11540 (target 0x11510), taken when s0(?) < 0x8 (signed) and falls through when s0(?) >= 0x8 (signed).
  At `bne` at 0x1155c (target 0x1159c), taken when v0(=ret(queue_empty)) != 0 and falls through when v0(=ret(queue_empty)) == 0.
  At `bne` at 0x11578 (target 0x11554), taken when v0(=ret(queue_find)) != 0 and falls through when v0(=ret(queue_find)) == 0.
  At `beq` at 0x1159c (target 0x114a0), taken when s4(=one of 0x0, 0x1) == 0 and falls through when s4(=one of 0x0, 0x1) != 0.
  Returns v0 = ? (`jr` at 0x114c4).

- `router_map_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x115e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x115e4-0x11798 (436 bytes).
  Loads 8 bytes into s8 from sym(.srdata) +0x1f8 (`ld` at 0x115ec).
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x8c68  (`sw` at 0x11610).
  Stores 4 bytes from t1 to a0 (arg0 at entry) +0x8c68  (`sw` at 0x11720).
  Loads 4 bytes into at from sym(maxnodes) +0x0 (`lw` at 0x11614).
  Loads 4 bytes into t8 from sym(maxnodes) +0x0 (`lw` at 0x11654).
  Loads 8 bytes into s4 from sym(.lit8) +0x40 (`ld` at 0x11634).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x11670).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0x1167c).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0x11690).
  Loads 4 bytes into a6 from ? (base unknown) (`lw` at 0x1169c).
  Loads 1 byte into a1 from ret(find_lboard_class) +0x9 (`lbu` at 0x116c8).
  Loads 1 byte into a1 from ret(find_lboard_class) +0x9 (`lbu` at 0x116e4).
  Loads 4 bytes into a4 from ret(find_lboard_class) +0x0 (`lw` at 0x11700).
  Loads 4 bytes into t1 from a0 (arg0 at entry) +0x8c68 (`lw` at 0x11714).
  Loads 2 bytes into t2 from ret(find_lboard_class) +0xe (`lh` at 0x11728).
  Stores 2 bytes from t2 to (a0 + ([a0+35944]+1 << 0x4)) +0x8860  (`sh` at 0x11730).
  Loads 1 byte into t1 from ret(find_lboard_class) +0xa (`lbu` at 0x11734).
  Stores 1 byte from t1 to (a0 + ([a0+35944]+1 << 0x4)) +0x8862  (`sb` at 0x11738).
  Loads 8 bytes into a7 from ret(find_lboard_class) +0x18 (`ld` at 0x1173c).
  Stores 8 bytes from a7 to (a0 + ([a0+35944]+1 << 0x4)) +0x8858  (`sd` at 0x11744).
  Loads 2 bytes into a0 from sym(compact_to_nasid_node) +0x0 (`lh` at 0x11794).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x116b4).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=ret(find_lboard_class) (`jal` at 0x116d4).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11748).
  At `blez` at 0x1162c (target 0x11758), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x11668 (target 0x11758), taken when s2(?) >= t8(=[sym(maxnodes)]) (signed) and falls through when s2(?) < t8(=[sym(maxnodes)]) (signed).
  At `beq` at 0x11688 (target 0x11748), taken when s3(=0xc000) == t8(?) and falls through when s3(=0xc000) != t8(?).
  At `beq` at 0x116a8 (target 0x116b4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x116bc (target 0x11650), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0x116dc (target 0x11650), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0x116f8 (target 0x11714), taken when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) == 0 and falls through when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) != 0.
  At `bne` at 0x11704 (target 0x116cc), taken when a4(=[ret(find_lboard_class)]) != 0 and falls through when a4(=[ret(find_lboard_class)]) == 0.
  Returns v0 = ? (`jr` at 0x11780).

- `router_map_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11798 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11798-0x11804 (108 bytes).
  Loads 8 bytes into a7 from abs 0xffffffffffffc400 (`ld` at 0x11798).
  Loads 4 bytes into a6 from [-0x3c00]:8 +0x8c68 (`lw` at 0x117a4).
  Stores 2 bytes from zero to a1 (arg1 at entry) +0x0  (`sh` at 0x117b4).
  Stores 1 byte from at to a2 (arg2 at entry) +0x0  (`sb` at 0x117c0).
  Loads 8 bytes into t1 from ? (base unknown) (`ld` at 0x117cc).
  Loads 2 bytes into t2 from ? (base unknown) (`lh` at 0x117ec).
  Stores 2 bytes from t2 to a1 (arg1 at entry) +0x0 (`sh` at 0x117f0).
  Loads 1 byte into t1 from ? (base unknown) (`lbu` at 0x117f4).
  Stores 1 byte from t1 to a2 (arg2 at entry) +0x0 (`sb` at 0x117f8).
  At `blez` at 0x117bc (target 0x117fc), taken when a6(=[[-0x3c00]:8+35944]) <= 0 (signed) and falls through when a6(=[[-0x3c00]:8+35944]) > 0 (signed).
  At `beq` at 0x117d4 (target 0x117ec), taken when t1(?) == a0 and falls through when t1(?) != a0.
  At `bne` at 0x117dc (target 0x117c8), taken when a5(?) != 0 and falls through when a5(?) == 0.
  Returns v0 = ? (`jr` at 0x117fc).
- `probe_results_print` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11804 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11804-0x11984 (384 bytes).
  Loads 1 byte into a3 from ? (base unknown) (`lbu` at 0x118b4).
  4 such loads of 8 bytes through gp (gp) to sym(.srdata) +0x1f0, including `ld` at 0x118c0, 0x118d8, 0x11930.
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x118f0).
  Loads 1 byte into a6 from sym(.rodata) +0x1e18 (`lbu` at 0x11934).
  Calls `queue_empty [0x10e48]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11820).
  Calls `queue_first [0x1104c]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x11858).
  Calls `sprintf` via direct with a0=sp-104, a1=sym(.rodata)+7152, a2=?, a3=? (`jal` at 0x11888).
  Calls `strcat` via direct with a0=sp-128, a1=sp-104, a2=?, a3=? (`jal` at 0x11894).
  Calls `router_map_get` via direct with a0=?, a1=sp-88, a2=sp-86, a3=? (`jal` at 0x118ec).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+7152, a2=?, a3=sp-128 (`jalr` at 0x11900).
  Calls `queue_next [0x110d4]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x11910).
  Calls `queue_last [0x11090]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x11920).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+7152, a2=sp-86, a3=? (`jalr` at 0x11964).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+7152, a2=?, a3=? (`jalr` at 0x11970).
  At `beq` at 0x11828 (target 0x11850), taken when v0(=ret(queue_empty)) == 0 and falls through when v0(=ret(queue_empty)) != 0.
  At `bne` at 0x11870 (target 0x11920), taken when v0(=ret(queue_first)) != 0 and falls through when v0(=ret(queue_first)) == 0.
  At `beq` at 0x118a8 (target 0x11940), taken when s0(?) >= 0x9 (signed) and falls through when s0(?) < 0x9 (signed).
  At `bne` at 0x118bc (target 0x11880), taken when (a3(?) & 0x10) != 0 and falls through when (a3(?) & 0x10) == 0.
  At `bne` at 0x118cc (target 0x118b4), taken when s0(?) < 0x9 (signed) and falls through when s0(?) >= 0x9 (signed).
  At `beq` at 0x118d4 (target 0x1190c), taken when s2(=one of 0x0, 0x1) == 0 and falls through when s2(=one of 0x0, 0x1) != 0.
  At `beq` at 0x118e0 (target 0x11960), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x11918 (target 0x1194c), taken when v0(=ret(queue_next)) == 0 and falls through when v0(=ret(queue_next)) != 0.
  At `beq` at 0x11928 (target 0x1194c), taken when v0(=ret(queue_last)) == s1(?) and falls through when v0(=ret(queue_last)) != s1(?).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x11848).

- `net_link_up` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11984 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11984-0x11998 (20 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0x108 (`ld` at 0x11984).
  Loads 8 bytes into v0 from abs 0x9200000001680000 (`ld` at 0x11988).
  Returns v0 = ? (`jr` at 0x11990).

- `router_queue_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11998 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11998-0x11a34 (156 bytes).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x8858  (`sd` at 0x119cc).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x119e8).
  Loads 8 bytes into a0 from sym(.srdata) +0x1f0 (`ld` at 0x119fc).
  Loads 8 bytes into a0 from sym(.srdata) +0x1f0 (`ld` at 0x11a18).
  Calls `kmem_zalloc_node` via direct with a0=0xa08, a1=0x1, a2=a1 at entry (arg1), a3=a3 at entry (arg3) (`jal` at 0x119b4).
  Calls `kmem_zalloc_node` via direct with a0=0xa08, a1=0x1, a2=a1 at entry (arg1), a3=? (`jal` at 0x119dc).
  Calls `assfail` via direct with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x2ac, a3=? (`jal` at 0x11a08).
  Calls `assfail` via direct with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x2b0, a3=? (`jal` at 0x11a24).
  At `beq` at 0x119c8 (target 0x119fc), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `beq` at 0x119e4 (target 0x11a18), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  Returns v0 = ? (`jr` at 0x119f4).

- `probe_routers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11a34 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11a34-0x11b14 (224 bytes).
  Loads 8 bytes into s0 from abs 0xffffffffffffc400 (`ld` at 0x11a50).
  Loads 8 bytes into s1 from [-0x3c00]:8 +0x8860 (`ld` at 0x11a5c).
  Loads 8 bytes into s0 from [-0x3c00]:8 +0x8858 (`ld` at 0x11a64).
  Loads 8 bytes into a2 from sym(.srdata) +0x200 (`ld` at 0x11ab4).
  Loads 8 bytes into a2 from sym(.srdata) +0x208 (`ld` at 0x11ac4).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11ae4).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11afc).
  Calls `net_link_up [0x11984]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11a3c).
  Calls `queue_init [0x10e14]` via direct with a0=[[-0x3c00]:8+34912]:8, a1=0x1, a2=?, a3=? (`jal` at 0x11a68).
  Calls `queue_init [0x10e14]` via direct with a0=[[-0x3c00]:8+34904]:8, a1=0x1, a2=?, a3=? (`jal` at 0x11a74).
  Calls `probe_object [0x11300]` via direct with a0=0x0, a1=0x0, a2=[[-0x3c00]:8+34912]:8, a3=? (`jal` at 0x11a84).
  Calls `probe_loop [0x11460]` via direct with a0=[[-0x3c00]:8+34912]:8, a1=[[-0x3c00]:8+34904]:8, a2=?, a3=? (`jal` at 0x11a94).
  Calls `probe_results_print [0x11804]` via direct with a0=[[-0x3c00]:8+34904]:8, a1=0x0, a2=sym(ip27log_printf), a3=? (`jal` at 0x11ab0).
  Calls `probe_results_print [0x11804]` via direct with a0=[[-0x3c00]:8+34904]:8, a1=0x6, a2=sym(cmn_err), a3=? (`jal` at 0x11ac0).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=?, a3=? (`jal` at 0x11aec).
  Calls `ip27log_printf` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=?, a3=? (`jal` at 0x11b04).
  At `beq` at 0x11a48 (target 0x11ae4), taken when v0(=ret(net_link_up)) == 0 and falls through when v0(=ret(net_link_up)) != 0.
  At `bltz` at 0x11a8c (target 0x11afc), taken when v0(=ret(probe_object)) < 0 (signed) and falls through when v0(=ret(probe_object)) >= 0 (signed).
  At `bgez` at 0x11a9c (target 0x11aac), taken when v0(=ret(probe_loop)) >= 0 (signed) and falls through when v0(=ret(probe_loop)) < 0 (signed).
  Returns v0 = ? (`jr` at 0x11adc).

- `router_link_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11b14 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11b14-0x11ba0 (140 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11b44).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11b44).
  Calls `sprintf` via direct with a0=sp-64, a1=sym(.rodata)+7152, a2=?, a3=? (`jal` at 0x11b50).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-64, a2=sp-48, a3=? (`jal` at 0x11b60).
  At `beq` at 0x11b40 (target 0x11b80), taken when s0(?) >= 0x9 (signed) and falls through when s0(?) < 0x9 (signed).
  At `bne` at 0x11b68 (target 0x11b38), taken when v0(=ret(hwgraph_traverse)) != 0 and falls through when v0(=ret(hwgraph_traverse)) == 0.
  At `bne` at 0x11b70 (target 0x11b38), taken when a2(?) != s2(=a1) and falls through when a2(?) == s2(=a1).
  Returns v0 = ? (`jr` at 0x11b98).

- `router_guardian_search` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11ba0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11ba0-0x11ec4 (804 bytes).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11d1c).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11d44).
  Loads 4 bytes into a2 from ? (base unknown) (`lw` at 0x11d54).
  Loads 8 bytes into s7 from abs 0xffffffffffffc400 (`ld` at 0x11da0).
  Loads 8 bytes into s7 from [-0x3c00]:8 +0x0 (`ld` at 0x11da4).
  Loads 8 bytes into s7 from ? (base unknown) (`ld` at 0x11dac).
  Loads 4 bytes into t8 from table(0x85f8) +0x0 (`lw` at 0x11db8).
  Loads 4 bytes into t9 from table(0x85f8) +0x0 (`lw` at 0x11dcc).
  Loads 4 bytes into t8 from table(0x85f8) +0x0 (`lw` at 0x11dd4).
  Loads 8 bytes into a0 from ret(queue_find) +0x8 (`ld` at 0x11e54).
  Stores 8 bytes from a3 to ret(queue_find) +0x8 (`sd` at 0x11e74).
  Stores 8 bytes from v1 to a0 (arg0 at entry) +0x0 (`sd` at 0x11e8c).
  Stores 8 bytes from a1 to a0 (arg0 at entry) +0x0 (`sd` at 0x11ec0).
  Calls `kmem_alloc` via direct with a0=0xa08, a1=0x0, a2=0x4, a3=0x3, a4=0x2 (`jal` at 0x11bfc).
  Calls `queue_init [0x10e14]` via direct with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=? (`jal` at 0x11c0c).
  Calls `kmem_alloc` via direct with a0=0xa08, a1=0x0, a2=?, a3=? (`jal` at 0x11c1c).
  Calls `queue_init [0x10e14]` via direct with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=? (`jal` at 0x11c30).
  Calls `queue_push [0x10e5c]` via direct with a0=ret(kmem_alloc), a1=sp-240, a2=?, a3=? (`jal` at 0x11c4c).
  Calls `queue_empty [0x10e48]` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x11c54).
  Calls `kmem_free` via direct with a0=ret(kmem_alloc), a1=0xa08, a2=?, a3=? (`jal` at 0x11c94).
  Calls `kmem_free` via direct with a0=ret(kmem_alloc), a1=0xa08, a2=?, a3=? (`jal` at 0x11ca4).
  Calls `queue_push [0x10e5c]` via direct with a0=ret(kmem_alloc), a1=sp-240, a2=?, a3=? (`jal` at 0x11ce4).
  Calls `queue_empty [0x10e48]` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x11cec).
  Calls `queue_pop [0x10f30]` via direct with a0=ret(kmem_alloc), a1=sp-240, a2=?, a3=? (`jal` at 0x11cfc).
  Calls `queue_find [0x10f94]` via direct with a0=ret(kmem_alloc), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x11d08).
  Calls `sprintf` via direct with a0=sp-184, a1=sym(.rodata)+7152, a2=?, a3=? (`jal` at 0x11d58).
  Calls `hwgraph_traverse` via direct with a0=a1 at entry (arg1), a1=sp-184, a2=sp-168, a3=? (`jal` at 0x11d68).
  Calls `nodevertex_to_cnodeid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11d78).
  Calls `cnodetocpu` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x11d90).
  Calls `vector_length` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11de4).
  Calls `vector_length` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11df0).
  Calls `router_link_get` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x11e20).
  Calls `vector_concat` via direct with a0=ret(router_link_get), a1=?, a2=?, a3=? (`jal` at 0x11e30).
  Calls `queue_find [0x10f94]` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x11e40).
  Calls `vector_length` via direct with a0=[ret(queue_find)+8]:8, a1=?, a2=?, a3=? (`jal` at 0x11e50).
  Calls `vector_length` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11e5c).
  Calls `vector_length` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x11e78).
  Calls `queue_push [0x10e5c]` via direct with a0=ret(kmem_alloc), a1=sp-160, a2=?, a3=? (`jal` at 0x11e9c).
  At `beq` at 0x11c6c (target 0x11cc4), taken when v0(=ret(queue_empty)) == 0 and falls through when v0(=ret(queue_empty)) != 0.
  At `bne` at 0x11cf4 (target 0x11eac), taken when v0(=ret(queue_empty)) != 0 and falls through when v0(=ret(queue_empty)) == 0.
  At `bne` at 0x11d10 (target 0x11cec), taken when v0(=ret(queue_find)) != 0 and falls through when v0(=ret(queue_find)) == 0.
  At `beq` at 0x11d3c (target 0x11ce4), taken when s0(?) >= 0x8 (signed) and falls through when s0(?) < 0x8 (signed).
  At `bne` at 0x11d70 (target 0x11d34), taken when v0(=ret(hwgraph_traverse)) != 0 and falls through when v0(=ret(hwgraph_traverse)) == 0.
  At `beq` at 0x11d80 (target 0x11e18), taken when v0(=ret(nodevertex_to_cnodeid)) == s5(=-0x1) and falls through when v0(=ret(nodevertex_to_cnodeid)) != s5(=-0x1).
  At `beq` at 0x11d98 (target 0x11d34), taken when v0(=ret(cnodetocpu)) == s5(=-0x1) and falls through when v0(=ret(cnodetocpu)) != s5(=-0x1).
  At `beq` at 0x11dbc (target 0x11e78), taken when t8(=entry(0x85f8)) == 0 and falls through when t8(=entry(0x85f8)) != 0.
  At `beq` at 0x11dc4 (target 0x11d20), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `bne` at 0x11ddc (target 0x11d34), taken when t8(=entry(0x85f8)) < t9(=entry(0x85f8)) (signed) and falls through when t8(=entry(0x85f8)) >= t9(=entry(0x85f8)) (signed).
  At `bne` at 0x11dfc (target 0x11d34), taken when v0(=ret(vector_length)) < s6(=ret(vector_length)) (signed) and falls through when v0(=ret(vector_length)) >= s6(=ret(vector_length)) (signed).
  At `beq` at 0x11e28 (target 0x11d34), taken when v0(=ret(router_link_get)) == 0 and falls through when v0(=ret(router_link_get)) != 0.
  At `beq` at 0x11e48 (target 0x11e98), taken when v0(=ret(queue_find)) == 0 and falls through when v0(=ret(queue_find)) != 0.
  At `beq` at 0x11e68 (target 0x11d34), taken when v0(=ret(vector_length)) >= s7(=ret(vector_length)) (signed) and falls through when v0(=ret(vector_length)) < s7(=ret(vector_length)) (signed).
  At `bne` at 0x11e80 (target 0x11dc4), taken when v0(=ret(vector_length)) != 0 and falls through when v0(=ret(vector_length)) == 0.
  At `beq` at 0x11eac (target 0x11c74), taken when s3(?) == 0 and falls through when s3(?) != 0.
  Returns v0 = ? (`jr` at 0x11cbc).

- `guardian_nodepda_update` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11ec4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11ec4-0x11f98 (212 bytes).
  Loads 8 bytes into s8 from abs 0xffffffffffffc400 (`ld` at 0x11ee0).
  Loads 8 bytes into s8 from [-0x3c00]:8 +0x0 (`ld` at 0x11eec).
  Loads 8 bytes into s8 from ? (base unknown) (`ld` at 0x11ef8).
  Loads 8 bytes into s8 from table(0x85f0) +0x0 (`ld` at 0x11f14).
  Stores 8 bytes from v0 to entry(0x85f0) +0x0  (`sd` at 0x11f20).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x11f3c).
  Stores 8 bytes from a1 to ? (base unknown)  (`sd` at 0x11f54).
  Loads 4 bytes into a3 from ? (base unknown) (`lw` at 0x11f40).
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0x11f48).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x11f50).
  Stores 4 bytes from a2 to ? (base unknown)  (`sw` at 0x11f58).
  Loads 1 byte into a0 from a2 (arg2 at entry) +0xa (`lbu` at 0x11f5c).
  Stores 1 byte from a0 to ? (base unknown)  (`sb` at 0x11f60).
  Stores 1 byte from at to ? (base unknown)  (`sb` at 0x11f78).
  Loads 2 bytes into v1 from a2 (arg2 at entry) +0xe (`lh` at 0x11f64).
  Stores 2 bytes from v1 to ? (base unknown)  (`sh` at 0x11f68).
  Loads 1 byte into at from a2 (arg2 at entry) +0x5 (`lbu` at 0x11f6c).
  Loads 8 bytes into a0 from sym(.srdata) +0x1f0 (`ld` at 0x11f7c).
  Calls `nodevertex_to_cnodeid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11ed8).
  Calls `kmem_zalloc_node` via direct with a0=0x28, a1=0x101, a2=?, a3=? (`jal` at 0x11f10).
  Calls `assfail` via direct with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x3e3, a3=? (`jal` at 0x11f88).
  At `beq` at 0x11f1c (target 0x11f7c), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  Returns v0 = ? (`jr` at 0x11f74).

- `router_guardian_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11f98 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11f98-0x12068 (208 bytes).
  Loads 1 byte into at from a1 (arg1 at entry) +0x9 (`lbu` at 0x11fa0).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x11ff8).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x12008).
  Loads 1 byte into a2 from a1 (arg1 at entry) +0x17 (`lbu` at 0x11ffc).
  Calls `board_to_path` via direct with a0=a1 at entry (arg1), a1=sp-88, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11fc0).
  Calls `board_to_path` via direct with a0=a1 at entry (arg1), a1=sp-88, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x11fdc).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-88, a2=sp-32, a3=? (`jal` at 0x11fec).
  Calls `router_guardian_search [0x11ba0]` via direct with a0=sp-96, a1=?, a2=[a1+23]:1, a3=? (`jal` at 0x12010).
  Calls `guardian_nodepda_update [0x11ec4]` via direct with a0=ret(router_guardian_search), a1=?, a2=a1 at entry (arg1), a3=? (`jal` at 0x1202c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+7152, a2=sp-88, a3=? (`jal` at 0x12044).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+7152, a2=[a1+23]:1, a3=? (`jal` at 0x12058).
  At `beq` at 0x11fb4 (target 0x11fd8), taken when (at(=[a1+9]:1) & 0x4) == 0 and falls through when (at(=[a1+9]:1) & 0x4) != 0.
  At `bne` at 0x11ff4 (target 0x1203c), taken when v0(=ret(hwgraph_traverse)) != 0 and falls through when v0(=ret(hwgraph_traverse)) == 0.
  At `bne` at 0x12004 (target 0x12054), taken when a2(=[a1+23]:1) != v0(=0x1) and falls through when a2(=[a1+23]:1) == v0(=0x1).
  At `beq` at 0x1201c (target 0x11fc8), taken when v0(=ret(router_guardian_search)) == v1(=-0x1) and falls through when v0(=ret(router_guardian_search)) != v1(=-0x1).
  Returns v0 = ? (`jr` at 0x11fd0).

- `router_guardians_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12068 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12068-0x121d0 (360 bytes).
  Loads 8 bytes into s7 from sym(.srdata) +0x1f8 (`ld` at 0x12070).
  Loads 8 bytes into s5 from sym(.lit8) +0x40 (`ld` at 0x12078).
  Loads 4 bytes into at from sym(maxnodes) +0x0 (`lw` at 0x1208c).
  Loads 4 bytes into v0 from sym(maxnodes) +0x0 (`lw` at 0x120c4).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x120e0).
  Loads 8 bytes into t8 from ? (base unknown) (`ld` at 0x120ec).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0x12100).
  Loads 4 bytes into a6 from ? (base unknown) (`lw` at 0x1210c).
  Loads 4 bytes into a1 from ret(find_lboard_class) +0x0 (`lw` at 0x12160).
  Loads 2 bytes into a0 from sym(compact_to_nasid_node) +0x0 (`lh` at 0x121cc).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x12124).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x12144).
  Calls `router_guardian_set [0x11f98]` via direct with a0=a0 at entry (arg0), a1=ret(find_lboard_class), a2=?, a3=? (`jal` at 0x12158).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12184).
  At `blez` at 0x120ac (target 0x12194), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x120d8 (target 0x12194), taken when s4(?) >= v0(=[sym(maxnodes)]) (signed) and falls through when s4(?) < v0(=[sym(maxnodes)]) (signed).
  At `beq` at 0x120f8 (target 0x12184), taken when s6(=0xc000) == t8(?) and falls through when s6(=0xc000) != t8(?).
  At `beq` at 0x12118 (target 0x12124), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x1212c (target 0x120c0), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0x1214c (target 0x120c0), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `bne` at 0x12174 (target 0x1213c), taken when a1(=[ret(find_lboard_class)]) != 0 and falls through when a1(=[ret(find_lboard_class)]) == 0.
  Returns v0 = ? (`jr` at 0x121b8).

- `router_lock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x121d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x121d0-0x123b8 (488 bytes).
  Loads 8 bytes into at from abs 0xffffffffffffc7c8 (`ld` at 0x121fc).
  Loads 8 bytes into v0 from sym(.srdata) +0x210 (`ld` at 0x12210).
  Loads 8 bytes into t3 from sym(.srdata) +0x210 (`ld` at 0x1239c).
  Loads 8 bytes into v0 from (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x8 (`ld` at 0x1221c).
  Loads 8 bytes into v0 from [(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8 +0x7c8 (`ld` at 0x12220).
  Loads 8 bytes into a0 from ? (base unknown) (`ld` at 0x1227c).
  Stores 8 bytes from v1 to ? (base unknown)  (`sd` at 0x12280).
  Loads 8 bytes into a4 from sym(.lit8) +0x48 (`ld` at 0x12298).
  Loads 8 bytes into t2 from sym(.lit8) +0x48 (`ld` at 0x12320).
  Loads 8 bytes into a6 from sym(.lit8) +0x50 (`ld` at 0x1229c).
  Loads 8 bytes into t8 from sym(.lit8) +0x50 (`ld` at 0x12324).
  Loads 8 bytes into a4 from abs 0x9200000001030100 (`ld` at 0x122a0).
  Loads 8 bytes into a6 from abs 0x9200000001604200 (`ld` at 0x122a4).
  Loads 8 bytes into t2 from abs 0x9200000001030100 (`ld` at 0x12328).
  Loads 8 bytes into t8 from abs 0x9200000001604200 (`ld` at 0x1232c).
  Loads 8 bytes into t3 from table(sym(pdaindr)) +0x8 (`ld` at 0x123a8).
  Stores 8 bytes from s1 to [table(sym(pdaindr))+8]:8 +0x7c8  (`sd` at 0x123b4).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x121ec).
  Calls `getcpuid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x121f4).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x12230).
  Calls `vector_write` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x118, a3=0x0, a5=(ret(getcpuid) << 0x4) (`jal` at 0x12260).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x12290).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x122e4).
  Calls `vector_read` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x518, a3=sp-80 (`jal` at 0x122fc).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x12378).
  Calls `us_delay` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x12380).
  At `beq` at 0x12208 (target 0x12390), taken when a2(=0xf) == at(=[-0x3838]:8) and falls through when a2(=0xf) != at(=[-0x3838]:8).
  At `bne` at 0x12224 (target 0x12254), taken when v0(=[[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8+1992]:8) != s1(=a0) and falls through when v0(=[[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8+1992]:8) == s1(=a0).
  At `bltz` at 0x12274 (target 0x12284), taken when v0(=ret(vector_write)) < 0 (signed) and falls through when v0(=ret(vector_write)) >= 0 (signed).
  At `bne` at 0x12284 (target 0x12230), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bltz` at 0x12308 (target 0x12230), taken when v0(=ret(vector_read)) < 0 (signed) and falls through when v0(=ret(vector_read)) >= 0 (signed).
  At `beq` at 0x12314 (target 0x12398), taken when (a2(?) & 0x1) == 0 and falls through when (a2(?) & 0x1) != 0.
  At `bne` at 0x12368 (target 0x12378), taken when a6(?) < a7(?) (unsigned) and falls through when a6(?) >= a7(?) (unsigned).
  Returns v0 = ? (`jr` at 0x1224c).

- `router_unlock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x123b8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x123b8-0x1242c (116 bytes).
  Loads 8 bytes into v1 from sym(.srdata) +0x210 (`ld` at 0x123f8).
  Loads 8 bytes into v1 from (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x8 (`ld` at 0x12404).
  Stores 8 bytes from v0 to [(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8 +0x7c8  (`sd` at 0x1240c).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x123c4).
  Calls `vector_write` via direct with a0=a0 at entry (arg0), a1=0x0, a2=0x118, a3=0x0 (`jal` at 0x123dc).
  Calls `getcpuid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x123f0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12410).
  At `bltz` at 0x123e8 (target 0x12410), taken when v0(=ret(vector_write)) < 0 (signed) and falls through when v0(=ret(vector_write)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x12424).

- `set_md_outgoing_rq_queue_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1242c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1242c-0x12578 (332 bytes).
  Loads 4 bytes into a1 from sym(_prom_cleared) +0xa4 (`lw` at 0x1242c).
  Loads 4 bytes into a3 from sym(_prom_cleared) +0xa4 (`lw` at 0x12564).
  Loads 4 bytes into a2 from sym(md_rq_depth) +0x0 (`lw` at 0x12430).
  Loads 4 bytes into a2 from sym(md_rq_depth) +0x0 (`lw` at 0x12568).
  Loads 8 bytes into s3 from sym(.srdata) +0x1f8 (`ld` at 0x1243c).
  Loads 2 bytes into s3 from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0 (`lh` at 0x12458).
  Loads 8 bytes into a1 from sym(.srdata) +0x1f0 (`ld` at 0x12460).
  Loads 8 bytes into v0 from sym(.lit8) +0xb8 (`ld` at 0x12464).
  Loads 8 bytes into v0 from sym(.lit8) +0xb8 (`ld` at 0x12554).
  Loads 8 bytes into t9 from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe03ffb0 (`ld` at 0x1247c).
  Stores 8 bytes from t9 to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe03ffb0 (`sd` at 0x124c4).
  Loads 4 bytes into a1 from sym(maxcpus) +0x0 (`lw` at 0x124c8).
  Loads 8 bytes into a5 from sym(.srdata) +0x210 (`ld` at 0x12510).
  Loads 8 bytes into a4 from table(sym(pdaindr)) +0x8 (`ld` at 0x1252c).
  Loads 4 bytes into a4 from [table(sym(pdaindr))+8]:8 +0x748 (`lw` at 0x12530).
  Stores 4 bytes from a3 to sym(_prom_cleared) +0xa4  (`sw` at 0x12574).
  Calls `cnode_slice_to_cpuid` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x12500).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+7152, a2=[sym(md_rq_depth)], a3=a3 at entry (arg3) (`jal` at 0x1255c).
  At `beq` at 0x12454 (target 0x124c8), taken when a2(=[sym(md_rq_depth)]) == at(=0x5) and falls through when a2(=[sym(md_rq_depth)]) != at(=0x5).
  At `beq` at 0x1245c (target 0x12558), taken when a1(=[sym(.sdata)+164]) == 0 and falls through when a1(=[sym(.sdata)+164]) != 0.
  At `bne` at 0x124d4 (target 0x12550), taken when a1(=[sym(maxcpus)]) < 0x81 (signed) and falls through when a1(=[sym(maxcpus)]) >= 0x81 (signed).
  At `bne` at 0x124e0 (target 0x124f0), taken when a1(=[sym(maxcpus)]) < 0x201 (signed) and falls through when a1(=[sym(maxcpus)]) >= 0x201 (signed).
  At `beq` at 0x124f8 (target 0x12548), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x12524 (target 0x124f8), taken when a3(?) == a6(=-0x1) and falls through when a3(?) != a6(=-0x1).
  At `bne` at 0x12538 (target 0x124f8), taken when a4(=[[table(sym(pdaindr))+8]:8+1864]) < 0xfb (signed) and falls through when a4(=[[table(sym(pdaindr))+8]:8+1864]) >= 0xfb (signed).
  Returns v0 = ? (`jr` at 0x124c0).

- `snnet_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12578 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12578-0x125c4 (76 bytes).
  Loads 4 bytes into at from sym(numnodes) +0x0 (`lw` at 0x12578).
  Loads 4 bytes into v0 from sym(numnodes) +0x0 (`lw` at 0x1259c).
  Calls `set_md_outgoing_rq_queue_size [0x1242c]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12590).
  At `blez` at 0x12584 (target 0x125b4), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `bne` at 0x125ac (target 0x12590), taken when s0(?) < v0(=[sym(numnodes)]) (signed) and falls through when s0(?) >= v0(=[sym(numnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x125bc).

- `kl_perr_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x125c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x125c4-0x125d0 (12 bytes).
  Loads 8 bytes into at from sym(.srdata) +0x218 (`ld` at 0x125c4).
  Stores 4 bytes from zero to sym(.bss) +0x5088  (`sw` at 0x125cc).
  Returns v0 = ? (`jr` at 0x125c8).

- `kl_perr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x125d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x125d0-0x127a0 (464 bytes).
  Loads 8 bytes into s1 from sym(.srdata) +0x218 (`ld` at 0x125f4).
  Stores 1 byte from a2 to table(sym(err_buf)) +0x4004  (`sb` at 0x12660).
  Stores 1 byte from a5 to ? (base unknown)  (`sb` at 0x12678).
  Stores 1 byte from a5 to ? (base unknown)  (`sb` at 0x1268c).
  Stores 1 byte from a5 to ? (base unknown)  (`sb` at 0x126a0).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0x126f4).
  Loads 4 bytes into a3 from sym(.bss) +0x5088 (`lw` at 0x1271c).
  Loads 4 bytes into a4 from sym(.bss) +0x5088 (`lw` at 0x1275c).
  Stores 4 bytes from a3 to sym(.bss) +0x5088 (`sw` at 0x12724).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0x1272c).
  Stores 1 byte from zero to ? (base unknown)  (`sb` at 0x12730).
  Calls `vsprintf` via direct with a0=sym(err_buf), a1=a1 at entry (arg1), a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0x12610).
  Calls `strlen` via direct with a0=sym(err_buf), a1=-0x11, a2=?, a3=?, a5=0x20 (`jal` at 0x126ac).
  Calls `strncpy` via direct with a0=?, a1=sym(err_buf), a2=?, a3=? (`jal` at 0x126e0).
  Calls `bcopy` via direct with a0=?, a1=([sym(err_buf)] + sym(err_buf))+4, a2=?, a3=?, a4=[sym(err_buf)] (`jal` at 0x12714).
  Calls `strlen` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1274c).
  At `beq` at 0x12634 (target 0x12640), taken when (s3(=a0) & 0x10) == 0 and falls through when (s3(=a0) & 0x10) != 0.
  At `beq` at 0x12658 (target 0x126ac), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `blez` at 0x12664 (target 0x126ac), taken when s3(?) <= 0 (signed) and falls through when s3(?) > 0 (signed).
  At `beq` at 0x12680 (target 0x126ac), taken when a2(?) >= a4(?) (signed) and falls through when a2(?) < a4(?) (signed).
  At `beq` at 0x12694 (target 0x126ac), taken when a2(?) >= a4(?) (signed) and falls through when a2(?) < a4(?) (signed).
  At `bne` at 0x126a4 (target 0x12670), taken when a2(?) < a4(?) (signed) and falls through when a2(?) >= a4(?) (signed).
  At `bne` at 0x126c8 (target 0x126d4), taken when at(?) < 0x4104 (signed) and falls through when at(?) >= 0x4104 (signed).
  At `beq` at 0x126f0 (target 0x1277c), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `bltz` at 0x126f8 (target 0x12780), taken when s3(?) < 0 (signed) and falls through when s3(?) >= 0 (signed).
  At `bne` at 0x1273c (target 0x1277c), taken when s3(?) < s0(?) (signed) and falls through when s3(?) >= s0(?) (signed).
  At `beq` at 0x12758 (target 0x12734), taken when s2(=(ret(strlen) << 0x0)) == 0 and falls through when s2(=(ret(strlen) << 0x0)) != 0.
  At `bne` at 0x12768 (target 0x12708), taken when t8(=((ret(strlen) << 0x0) + [sym(err_buf)])) < 0x4000 (signed) and falls through when t8(=((ret(strlen) << 0x0) + [sym(err_buf)])) >= 0x4000 (signed).
  Returns v0 = ? (`jr` at 0x12798).

- `kl_perr_dumpbuf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x127a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x127a0-0x12888 (232 bytes).
  Loads 8 bytes into s5 from sym(.srdata) +0x218 (`ld` at 0x127b4).
  Loads 1 byte into at from sym(.bss) +0x508c (`lbu` at 0x127bc).
  Loads 1 byte into a3 from sym(.bss) +0x508c (`lbu` at 0x127dc).
  Loads 4 bytes into v0 from sym(.bss) +0x5088 (`lw` at 0x127e0).
  Loads 4 bytes into a0 from sym(.bss) +0x5088 (`lw` at 0x12830).
  Loads 1 byte into a3 from sym(.bss) +0x5088 (`lbu` at 0x127f4).
  Loads 1 byte into v1 from sym(.bss) +0x5088 (`lbu` at 0x12800).
  Loads 1 byte into a3 from sym(.bss) +0x5088 (`lbu` at 0x1280c).
  Stores 1 byte from zero to sym(.bss) +0x5088  (`sb` at 0x12818).
  Stores 1 byte from s4 to sym(.bss) +0x5088 (`sb` at 0x1282c).
  Stores 4 bytes from zero to sym(.bss) +0x5088  (`sw` at 0x12878).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(err_buf), a2=?, a3=? (`jalr` at 0x1281c).
  Calls `(unknown callee)` via register with a0=sym(err_buf), a1=sym(err_buf), a2=?, a3=? (`jalr` at 0x12850).
  At `beq` at 0x127d8 (target 0x12860), taken when at(=[sym(err_buf+4)]:1) == 0 and falls through when at(=[sym(err_buf+4)]:1) != 0.
  At `bgtz` at 0x127e4 (target 0x12848), taken when v0(=[sym(err_buf)]) > 0 (signed) and falls through when v0(=[sym(err_buf)]) <= 0 (signed).
  At `beq` at 0x127f8 (target 0x12814), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x12804 (target 0x127f4), taken when s1(=0xa) != v1(=[sym(err_buf)]:1) and falls through when s1(=0xa) == v1(=[sym(err_buf)]:1).
  At `beq` at 0x12814 (target 0x12850), taken when s2(=a1) == 0 and falls through when s2(=a1) != 0.
  At `beq` at 0x12828 (target 0x12860), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `beq` at 0x12840 (target 0x12860), taken when s0(=sym(err_buf)) >= a0(=([sym(err_buf)] + sym(err_buf))+4) (unsigned) and falls through when s0(=sym(err_buf)) < a0(=([sym(err_buf)] + sym(err_buf))+4) (unsigned).
  Returns v0 = ? (`jr` at 0x12880).

- `save_cache_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12888 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12888-0x12a28 (416 bytes).
  Loads 8 bytes into at from sym(.lit8) +0x40 (`ld` at 0x128a4).
  Loads 8 bytes into at from table(0x9000000034000000) +0x0 (`ld` at 0x128b8).
  Loads 8 bytes into t2 from (table(0x9600000000000000) | 0x2000) +0x48 (`ld` at 0x128dc).
  Loads 4 bytes into t2 from ? (base unknown) (`lw` at 0x128e8).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x12928).
  Loads 1 byte into t3 from ? (base unknown) (`lbu` at 0x12964).
  Loads 4 bytes into t8 from ? (base unknown) (`lw` at 0x12940).
  Loads 8 bytes into t9 from sym(.lit8) +0x30 (`ld` at 0x1296c).
  Loads 4 bytes into t1 from ? (base unknown) (`lw` at 0x129a4).
  Loads 4 bytes into v1 from ? (base unknown) (`lw` at 0x129d4).
  Loads 1 byte into ra from ? (base unknown) (`lbu` at 0x129b4).
  Loads 1 byte into ra from ? (base unknown) (`lbu` at 0x129c8).
  Loads 8 bytes into at from abs 0x9200000001000020 (`ld` at 0x129c4).
  Loads 8 bytes into v0 from sym(.lit8) +0x48 (`ld` at 0x129ec).
  Stores 8 bytes from a0 to ? (base unknown)  (`sd` at 0x129f4).
  Stores 8 bytes from a1 to ? (base unknown)  (`sd` at 0x129f8).
  Stores 8 bytes from v0 to ? (base unknown)  (`sd` at 0x12a08).
  Stores 4 bytes from a2 to ? (base unknown)  (`sw` at 0x129fc).
  Loads 8 bytes into v0 from abs 0x9200000001030100 (`ld` at 0x12a00).
  Stores 1 byte from t8 to ? (base unknown)  (`sb` at 0x12a04).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x12898).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=?, a4=0xffffffffff, a5=table(0x9600000000000000), a6=0x9600000000000000, a7=(table(0x9600000000000000) | 0x2000) (`jal` at 0x12a18).
  At `beq` at 0x128d4 (target 0x12a18), taken when at(?) == v0(=0xc000) and falls through when at(?) != v0(=0xc000).
  At `beq` at 0x128f4 (target 0x12900), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x12900 (target 0x1295c), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x12920 (target 0x1295c), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x12938 (target 0x1295c), taken when t3(=0x10) == t8(?) and falls through when t3(=0x10) != t8(?).
  At `bne` at 0x1294c (target 0x1291c), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `beq` at 0x1295c (target 0x12a10), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `blez` at 0x12968 (target 0x12a0c), taken when t3(?) <= 0 (signed) and falls through when t3(?) > 0 (signed).
  At `beq` at 0x12998 (target 0x12a0c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x129bc (target 0x12998), taken when t8(=0x1) != ra(?) and falls through when t8(=0x1) == ra(?).
  At `bne` at 0x129cc (target 0x12998), taken when ra(?) != at(=[0x9200000001000020]:8) and falls through when ra(?) == at(=[0x9200000001000020]:8).
  Returns v0 = ? (`jr` at 0x12a10).

- `kl_save_hw_state_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12a28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12a28-0x12c50 (552 bytes).
  Loads 8 bytes into v0 from sym(.lit8) +0x40 (`ld` at 0x12a50).
  Loads 8 bytes into v0 from ? (base unknown) (`ld` at 0x12a64).
  Loads 8 bytes into a6 from ? (base unknown) (`ld` at 0x12a88).
  Loads 4 bytes into a6 from ? (base unknown) (`lw` at 0x12a94).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x12ad8).
  Loads 1 byte into t9 from ? (base unknown) (`lbu` at 0x12af0).
  Loads 1 byte into a4 from ? (base unknown) (`lbu` at 0x12b3c).
  7 such loads of 4 bytes through s0 (?) to ? (base unknown), including `lw` at 0x12b00, 0x12b1c, 0x12b84.
  Calls `save_err_io_comp` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80 (`jal` at 0x12bdc).
  Calls `save_err_node_comp` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80 (`jal` at 0x12bf4).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x12c04).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=?, a4=0xffffffffff (`jal` at 0x12c18).
  Calls `save_err_router_comp` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80 (`jal` at 0x12c2c).
  Calls `save_err_xbow_comp` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80 (`jal` at 0x12c40).
  At `beq` at 0x12a48 (target 0x12c04), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  At `beq` at 0x12a80 (target 0x12c18), taken when v0(?) == v1(=0xc000) and falls through when v0(?) != v1(=0xc000).
  At `beq` at 0x12a9c (target 0x12aa8), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x12aac (target 0x12bb4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x12ad0 (target 0x12bb4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x12ae8 (target 0x12b1c), taken when (t8(?) & 0x1) == 0 and falls through when (t8(?) & 0x1) != 0.
  At `beq` at 0x12af8 (target 0x12b3c), taken when (t9(?) & 0x4) == 0 and falls through when (t9(?) & 0x4) != 0.
  At `bne` at 0x12b0c (target 0x12ac8), taken when t0(?) != 0 and falls through when t0(?) == 0.
  At `beq` at 0x12b24 (target 0x12ad0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x12b54 (target 0x12bec), taken when a4(?) == a1(=0x10) and falls through when a4(?) != a1(=0x10).
  At `beq` at 0x12b5c (target 0x12bd8), taken when a4(?) == a5(=0x20) and falls through when a4(?) != a5(=0x20).
  At `beq` at 0x12b64 (target 0x12bd8), taken when a4(?) == a6(=0x70) and falls through when a4(?) != a6(=0x70).
  At `beq` at 0x12b6c (target 0x12bd8), taken when a4(?) == a7(=0x80) and falls through when a4(?) != a7(=0x80).
  At `beq` at 0x12b74 (target 0x12c28), taken when a4(?) == t0(=0x30) and falls through when a4(?) != t0(=0x30).
  At `beq` at 0x12b7c (target 0x12c3c), taken when a4(?) == t1(=0x40) and falls through when a4(?) != t1(=0x40).
  At `beq` at 0x12b9c (target 0x12ad0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns v0 = ? (`jr` at 0x12bcc).

- `kl_save_hw_state_all` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12c50 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12c50-0x12cb8 (104 bytes).
  Loads 8 bytes into s2 from sym(.srdata) +0x220 (`ld` at 0x12c58).
  Loads 4 bytes into at from sym(numnodes) +0x0 (`lw` at 0x12c5c).
  Loads 4 bytes into a1 from sym(numnodes) +0x0 (`lw` at 0x12c8c).
  Loads 2 bytes into a0 from ? (base unknown) (`lh` at 0x12c88).
  Calls `kl_save_hw_state_node` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x12c84).
  At `blez` at 0x12c6c (target 0x12ca0), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `bne` at 0x12c98 (target 0x12c7c), taken when s0(?) < a1(=[sym(numnodes)]) (signed) and falls through when s0(?) >= a1(=[sym(numnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x12cb0).

- `restore_cpu_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12cb8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12cb8-0x12d10 (88 bytes).
  Loads 1 byte into at from a0 (arg0 at entry) +0x38 (`lbu` at 0x12cb8).
  Loads 8 bytes into a2 from sym(.lit8) +0x48 (`ld` at 0x12cc4).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x0 (`ld` at 0x12ccc).
  Loads 8 bytes into v0 from abs 0x9200000001030100 (`ld` at 0x12cd0).
  Stores 1 byte from a5 to a0 (arg0 at entry) +0x39  (`sb` at 0x12ce4).
  Stores 1 byte from zero to a0 (arg0 at entry) +0x39  (`sb` at 0x12d0c).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x18 (`ld` at 0x12ce8).
  Loads 8 bytes into a3 from a0 (arg0 at entry) +0x10 (`ld` at 0x12cec).
  Loads 8 bytes into a4 from a0 (arg0 at entry) +0x8 (`ld` at 0x12cf0).
  Stores 8 bytes from a4 to a0 (arg0 at entry) +0x20  (`sd` at 0x12cf4).
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x28  (`sd` at 0x12cf8).
  Stores 8 bytes from a2 to a0 (arg0 at entry) +0x30  (`sd` at 0x12cfc).
  At `beq` at 0x12cc0 (target 0x12d00), taken when at(=[a0+56]:1) == 0 and falls through when at(=[a0+56]:1) != 0.
  At `beq` at 0x12cdc (target 0x12d08), taken when v0(?) >= v1(=0x55d4a80) (unsigned) and falls through when v0(?) < v1(=0x55d4a80) (unsigned).
  Returns v0 = ? (`jr` at 0x12d00).
  Returns v0 = ? (`jr` at 0x12d08).

- `restore_hub_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12d10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12d10-0x12f0c (508 bytes).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x3b0 (`ld` at 0x12d10).
  Loads 8 bytes into a6 from sym(.lit8) +0x48 (`ld` at 0x12d14).
  Loads 8 bytes into a6 from sym(.lit8) +0x48 (`ld` at 0x12e54).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x3a0 (`ld` at 0x12d24).
  Loads 8 bytes into v1 from a0 (arg0 at entry) +0x3c0 (`ld` at 0x12d30).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x3d0 (`ld` at 0x12d3c).
  4 such loads of 8 bytes through a4 (?) to ? (base unknown), including `ld` at 0x12d50, 0x12e18, 0x12e24.
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x308 (`ld` at 0x12d7c).
  Loads 8 bytes into a4 from a0 (arg0 at entry) +0x310 (`ld` at 0x12d9c).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x98 (`ld` at 0x12da8).
  Loads 8 bytes into t1 from a0 (arg0 at entry) +0x88 (`ld` at 0x12db4).
  7 such loads of 8 bytes through a6 (0x9200000001030100) to abs 0x9200000001030100, including `ld` at 0x12db8, 0x12df4, 0x12e28.
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x310  (`sd` at 0x12dcc).
  Loads 8 bytes into t2 from a0 (arg0 at entry) +0xa8 (`ld` at 0x12dd0).
  Stores 8 bytes from t2 to a0 (arg0 at entry) +0x320  (`sd` at 0x12dd8).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x90 (`ld` at 0x12de4).
  Loads 8 bytes into t8 from a0 (arg0 at entry) +0x80 (`ld` at 0x12df0).
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x308  (`sd` at 0x12e08).
  Loads 8 bytes into t9 from a0 (arg0 at entry) +0xa0 (`ld` at 0x12e0c).
  Stores 8 bytes from t9 to a0 (arg0 at entry) +0x318  (`sd` at 0x12e14).
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0x12e3c).
  Stores 8 bytes from v1 to ? (base unknown) (`sd` at 0x12e48).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x138 (`ld` at 0x12e4c).
  Loads 8 bytes into t1 from a0 (arg0 at entry) +0x130 (`ld` at 0x12e60).
  Stores 8 bytes from a2 to a0 (arg0 at entry) +0x3b0  (`sd` at 0x12e7c).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x128 (`ld` at 0x12e80).
  Loads 8 bytes into t3 from a0 (arg0 at entry) +0x120 (`ld` at 0x12e8c).
  Stores 8 bytes from a2 to a0 (arg0 at entry) +0x3a0  (`sd` at 0x12ea8).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x148 (`ld` at 0x12eac).
  Loads 8 bytes into t9 from a0 (arg0 at entry) +0x140 (`ld` at 0x12eb8).
  Stores 8 bytes from a2 to a0 (arg0 at entry) +0x3c0  (`sd` at 0x12ed4).
  Loads 8 bytes into a2 from a0 (arg0 at entry) +0x158 (`ld` at 0x12ed8).
  Loads 8 bytes into v0 from a0 (arg0 at entry) +0x150 (`ld` at 0x12ee4).
  Stores 8 bytes from a2 to a0 (arg0 at entry) +0x3d0  (`sd` at 0x12efc).
  Loads 8 bytes into v1 from a0 (arg0 at entry) +0x160 (`ld` at 0x12f00).
  Stores 8 bytes from v1 to a0 (arg0 at entry) +0x3d8  (`sd` at 0x12f08).
  At `beq` at 0x12d18 (target 0x12e4c), taken when at(=[a0+944]:8) == 0 and falls through when at(=[a0+944]:8) != 0.
  At `beq` at 0x12d28 (target 0x12e80), taken when v0(=[a0+928]:8) == 0 and falls through when v0(=[a0+928]:8) != 0.
  At `beq` at 0x12d34 (target 0x12eac), taken when v1(=[a0+960]:8) == 0 and falls through when v1(=[a0+960]:8) != 0.
  At `beq` at 0x12d40 (target 0x12ed8), taken when a1(=[a0+976]:8) == 0 and falls through when a1(=[a0+976]:8) != 0.
  At `beq` at 0x12d58 (target 0x12e18), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x12d60 (target 0x12d4c), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x12d88 (target 0x12de4), taken when a5(=[a0+776]:8) == 0 and falls through when a5(=[a0+776]:8) != 0.
  At `bne` at 0x12da0 (target 0x12d70), taken when a4(=[a0+784]:8) != 0 and falls through when a4(=[a0+784]:8) == 0.
  At `beq` at 0x12dac (target 0x12d70), taken when t0(=[a0+152]:8) == 0 and falls through when t0(=[a0+152]:8) != 0.
  At `beq` at 0x12dc4 (target 0x12d70), taken when a5(?) >= a7(=0x55d4a80) (unsigned) and falls through when a5(?) < a7(=0x55d4a80) (unsigned).
  At `beq` at 0x12de8 (target 0x12d90), taken when t0(=[a0+144]:8) == 0 and falls through when t0(=[a0+144]:8) != 0.
  At `beq` at 0x12e00 (target 0x12d90), taken when t3(?) >= a7(=0x55d4a80) (unsigned) and falls through when t3(?) < a7(=0x55d4a80) (unsigned).
  At `beq` at 0x12e1c (target 0x12d60), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x12e34 (target 0x12d60), taken when at(?) >= a7(=0x55d4a80) (unsigned) and falls through when at(?) < a7(=0x55d4a80) (unsigned).
  At `beq` at 0x12e58 (target 0x12d24), taken when a2(=[a0+312]:8) == 0 and falls through when a2(=[a0+312]:8) != 0.
  At `beq` at 0x12e70 (target 0x12d24), taken when t0(?) >= a7(=0x55d4a80) (unsigned) and falls through when t0(?) < a7(=0x55d4a80) (unsigned).
  At `beq` at 0x12e84 (target 0x12d30), taken when a2(=[a0+296]:8) == 0 and falls through when a2(=[a0+296]:8) != 0.
  At `beq` at 0x12e9c (target 0x12d30), taken when t2(?) >= a7(=0x55d4a80) (unsigned) and falls through when t2(?) < a7(=0x55d4a80) (unsigned).
  At `beq` at 0x12eb0 (target 0x12d3c), taken when a2(=[a0+328]:8) == 0 and falls through when a2(=[a0+328]:8) != 0.
  At `beq` at 0x12ec8 (target 0x12d3c), taken when t8(?) >= a7(=0x55d4a80) (unsigned) and falls through when t8(?) < a7(=0x55d4a80) (unsigned).
  At `beq` at 0x12edc (target 0x12d44), taken when a2(=[a0+344]:8) == 0 and falls through when a2(=[a0+344]:8) != 0.
  At `beq` at 0x12ef4 (target 0x12f00), taken when at(?) >= a7(=0x55d4a80) (unsigned) and falls through when at(?) < a7(=0x55d4a80) (unsigned).
  Returns v0 = ? (`jr` at 0x12ddc).

- `clear_hub_pi_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12f0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12f0c-0x12f64 (88 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0x48 (`ld` at 0x12f14).
  Loads 8 bytes into a7 from ? (base unknown) (`ld` at 0x12f24).
  Loads 8 bytes into t0 from ? (base unknown) (`ld` at 0x12f34).
  Loads 8 bytes into a7 from abs 0x9200000001030100 (`ld` at 0x12f38).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x12f4c).
  Stores 8 bytes from zero to ? (base unknown)  (`sd` at 0x12f50).
  At `beq` at 0x12f2c (target 0x12f54), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `beq` at 0x12f44 (target 0x12f54), taken when a6(=0x55d4a80) >= a7(?) (unsigned) and falls through when a6(=0x55d4a80) < a7(?) (unsigned).
  At `bne` at 0x12f54 (target 0x12f20), taken when a4(?) != 0 and falls through when a4(?) == 0.
  Returns v0 = ? (`jr` at 0x12f5c).

- `clear_hub_md_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12f64 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12f64-0x1302c (200 bytes).
  Loads 8 bytes into a5 from sym(.lit8) +0x48 (`ld` at 0x12f64).
  Loads 8 bytes into a3 from sym(.lit8) +0x48 (`ld` at 0x12f78).
  Loads 8 bytes into at from a0 (arg0 at entry) +0x18 (`ld` at 0x12f68).
  Loads 8 bytes into a1 from a0 (arg0 at entry) +0x10 (`ld` at 0x12f84).
  Loads 8 bytes into v1 from abs 0x9200000001030100 (`ld` at 0x12f88).
  Loads 8 bytes into a6 from abs 0x9200000001030100 (`ld` at 0x12fe0).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x18  (`sd` at 0x12f9c).
  Loads 8 bytes into v1 from a0 (arg0 at entry) +0x8 (`ld` at 0x12fa0).
  Loads 8 bytes into a6 from a0 (arg0 at entry) +0x0 (`ld` at 0x12fb0).
  Loads 8 bytes into a4 from abs 0x9200000001030100 (`ld` at 0x12fb4).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x8  (`sd` at 0x12fc8).
  Loads 8 bytes into a3 from a0 (arg0 at entry) +0x28 (`ld` at 0x12fcc).
  Loads 8 bytes into a7 from a0 (arg0 at entry) +0x20 (`ld` at 0x12fdc).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x28  (`sd` at 0x12ff4).
  Loads 8 bytes into a5 from a0 (arg0 at entry) +0x38 (`ld` at 0x12ff8).
  Loads 8 bytes into t0 from a0 (arg0 at entry) +0x30 (`ld` at 0x13008).
  Loads 8 bytes into a7 from abs 0x9200000001030100 (`ld` at 0x1300c).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x38  (`sd` at 0x13020).
  At `beq` at 0x12f7c (target 0x12fa0), taken when at(=[a0+24]:8) == 0 and falls through when at(=[a0+24]:8) != 0.
  At `beq` at 0x12f94 (target 0x12fa0), taken when v0(=0x55d4a80) >= v1(?) (unsigned) and falls through when v0(=0x55d4a80) < v1(?) (unsigned).
  At `beq` at 0x12fa8 (target 0x12fcc), taken when v1(=[a0+8]:8) == 0 and falls through when v1(=[a0+8]:8) != 0.
  At `beq` at 0x12fc0 (target 0x12fcc), taken when a1(=0x55d4a80) >= a4(?) (unsigned) and falls through when a1(=0x55d4a80) < a4(?) (unsigned).
  At `beq` at 0x12fd4 (target 0x12ff8), taken when a3(=[a0+40]:8) == 0 and falls through when a3(=[a0+40]:8) != 0.
  At `beq` at 0x12fec (target 0x12ff8), taken when a4(=0x55d4a80) >= a6(?) (unsigned) and falls through when a4(=0x55d4a80) < a6(?) (unsigned).
  At `beq` at 0x13000 (target 0x13024), taken when a5(=[a0+56]:8) == 0 and falls through when a5(=[a0+56]:8) != 0.
  At `beq` at 0x13018 (target 0x13024), taken when a6(=0x55d4a80) >= a7(?) (unsigned) and falls through when a6(=0x55d4a80) < a7(?) (unsigned).
  Returns v0 = ? (`jr` at 0x13024).

- `save_err_node_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1302c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1302c-0x13180 (340 bytes).
  Loads 1 byte into a5 from a1 (arg1 at entry) +0x17 (`lbu` at 0x1304c).
  Loads 4 bytes into t8 from a2 (arg2 at entry) +0xc (`lw` at 0x13098).
  Loads 4 bytes into a2 from a2 (arg2 at entry) +0xc (`lw` at 0x13154).
  4 such loads of 4 bytes through s5 (?) to ? (base unknown), including `lw` at 0x130a8, 0x130d4, 0x13138.
  Loads 1 byte into a5 from a1 (arg1 at entry) +0x17 (`lbu` at 0x130bc).
  Loads 1 byte into a5 from a1 (arg1 at entry) +0x17 (`lbu` at 0x1317c).
  Loads 1 byte into a4 from ? (base unknown) (`lbu` at 0x130e4).
  Calls `restore_cpu_err` via direct with a0=?, a1=?, a2=?, a3=?, a5=[a1+23]:1 (`jal` at 0x130b4).
  Calls `save_hub_err` via direct with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?, a5=[a1+23]:1 (`jal` at 0x1314c).
  Calls `restore_hub_err` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13170).
  At `blez` at 0x13060 (target 0x13108), taken when a5(=[a1+23]:1) <= 0 (signed) and falls through when a5(=[a1+23]:1) > 0 (signed).
  At `beq` at 0x130a0 (target 0x130f8), taken when (t8(=[a2+12]) & 0x4) == 0 and falls through when (t8(=[a2+12]) & 0x4) != 0.
  At `beq` at 0x130c8 (target 0x13108), taken when s0(?) >= a5(=[a1+23]:1) (signed) and falls through when s0(?) < a5(=[a1+23]:1) (signed).
  At `beq` at 0x130e8 (target 0x13098), taken when a4(?) == s6(=0x1) and falls through when a4(?) != s6(=0x1).
  At `beq` at 0x130f0 (target 0x13138), taken when a4(?) == s7(=0x2) and falls through when a4(?) != s7(=0x2).
  At `bne` at 0x13100 (target 0x130d0), taken when s0(?) < a5(=[a1+23]:1) (signed) and falls through when s0(?) >= a5(=[a1+23]:1) (signed).
  At `beq` at 0x1315c (target 0x130bc), taken when (a2(=[a2+12]) & 0x4) == 0 and falls through when (a2(=[a2+12]) & 0x4) != 0.
  Returns v0 = ? (`jr` at 0x13130).

- `save_err_io_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13180 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13180-0x13274 (244 bytes).
  Loads 1 byte into a5 from a1 (arg1 at entry) +0x17 (`lbu` at 0x13194).
  Loads 4 bytes into a6 from ? (base unknown) (`lw` at 0x131e0).
  Loads 4 bytes into a1 from ? (base unknown) (`lw` at 0x13230).
  Loads 1 byte into t8 from ? (base unknown) (`lbu` at 0x131f0).
  Loads 1 byte into a3 from ? (base unknown) (`lbu` at 0x13234).
  Loads 1 byte into a5 from a1 (arg1 at entry) +0x17 (`lbu` at 0x13258).
  Calls `save_bridge_err` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=a2 at entry (arg2), a5=[a1+23]:1 (`jal` at 0x13250).
  At `blez` at 0x131a8 (target 0x1320c), taken when a5(=[a1+23]:1) <= 0 (signed) and falls through when a5(=[a1+23]:1) > 0 (signed).
  At `beq` at 0x131f4 (target 0x13230), taken when s5(=0x5) == t8(?) and falls through when s5(=0x5) != t8(?).
  At `bne` at 0x13204 (target 0x131dc), taken when s0(?) < a5(=[a1+23]:1) (signed) and falls through when s0(?) >= a5(=[a1+23]:1) (signed).
  At `bne` at 0x13264 (target 0x131dc), taken when s0(?) < a5(=[a1+23]:1) (signed) and falls through when s0(?) >= a5(=[a1+23]:1) (signed).
  Returns v0 = ? (`jr` at 0x13228).
