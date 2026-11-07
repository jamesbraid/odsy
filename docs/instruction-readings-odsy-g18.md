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
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5078-0x520c (404 bytes).
  It occupies 404 bytes.
  The `lbu` at 0x5078 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lh` at 0x50e4 loads 2 bytes from a0 (arg0 at entry) +0xe.
  The `jal` at 0x50e8 calls sprintf with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=[a0+14]:2, a3=sym(.rodata)+1440, a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x5098 targets 0x50dc, is taken when a5(?) == at(=0x10), and falls through when a5(?) != at(=0x10).
  The `beq` branch at 0x50a4 targets 0x5108, is taken when a5(?) == t0(=0x30), and falls through when a5(?) != t0(=0x30).
  The `beq` branch at 0x50b0 targets 0x5128, is taken when a5(?) == t0(=0x40), and falls through when a5(?) != t0(=0x40).
  The `beq` branch at 0x50bc targets 0x50fc, is taken when a5(?) == t1(=0x20), and falls through when a5(?) != t1(=0x20).
  The `beq` branch at 0x50c4 targets 0x5100, is taken when a5(?) == t2(=0x80), and falls through when a5(?) != t2(=0x80).
  The `beq` branch at 0x50d0 targets 0x5130, is taken when a5(?) == t3(=0x70), and falls through when a5(?) != t3(=0x70).
  The `beq` branch at 0x5100 targets 0x50dc and is always taken.
  The `beq` branch at 0x5110 targets 0x5194, is taken when a4(=[a0+5]:1) == a5(=0x33), and falls through when a4(=[a0+5]:1) != a5(=0x33).
  The `beq` branch at 0x5118 targets 0x51a8, is taken when a4(=[a0+5]:1) == a0(=0x34), and falls through when a4(=[a0+5]:1) != a0(=0x34).
  The `beq` branch at 0x5120 targets 0x50e0 and is always taken.
  The `beq` branch at 0x5128 targets 0x50e0 and is always taken.
  The `beq` branch at 0x5148 targets 0x51bc, is taken when a4(=[a0+5]:1) == t0(=0x72), and falls through when a4(=[a0+5]:1) != t0(=0x72).
  The `beq` branch at 0x5150 targets 0x51c8, is taken when a4(=[a0+5]:1) == a0(=0x71), and falls through when a4(=[a0+5]:1) != a0(=0x71).
  The `beq` branch at 0x5158 targets 0x51d4, is taken when a4(=[a0+5]:1) == a1(=0x73), and falls through when a4(=[a0+5]:1) != a1(=0x73).
  The `beq` branch at 0x5160 targets 0x51e0, is taken when a4(=[a0+5]:1) == a3(=0x74), and falls through when a4(=[a0+5]:1) != a3(=0x74).
  The `beq` branch at 0x5168 targets 0x51e8, is taken when a4(=[a0+5]:1) == a5(=0x75), and falls through when a4(=[a0+5]:1) != a5(=0x75).
  The `beq` branch at 0x5170 targets 0x51f0, is taken when a4(=[a0+5]:1) == t0(=0x76), and falls through when a4(=[a0+5]:1) != t0(=0x76).
  The `beq` branch at 0x5178 targets 0x51f8, is taken when a4(=[a0+5]:1) == t1(=0x77), and falls through when a4(=[a0+5]:1) != t1(=0x77).
  The `beq` branch at 0x5180 targets 0x5204, is taken when a4(=[a0+5]:1) == t1(=0x78), and falls through when a4(=[a0+5]:1) != t1(=0x78).
  The `beq` branch at 0x518c targets 0x50dc and is always taken.
  The `beq` branch at 0x51a0 targets 0x50dc and is always taken.
  The `beq` branch at 0x51b4 targets 0x50dc and is always taken.
  The `beq` branch at 0x51c0 targets 0x50dc and is always taken.
  The `beq` branch at 0x51cc targets 0x50dc and is always taken.
  The `beq` branch at 0x51d8 targets 0x50dc and is always taken.
  The `beq` branch at 0x51e0 targets 0x50dc and is always taken.
  The `beq` branch at 0x51e8 targets 0x50dc and is always taken.
  The `beq` branch at 0x51f0 targets 0x50dc and is always taken.
  The `beq` branch at 0x51fc targets 0x50dc and is always taken.
  The `beq` branch at 0x5204 targets 0x50dc and is always taken.
  The return at 0x50f4 has v0 = ret(sprintf).
- `get_module_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x520c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x520c-0x52a4 (152 bytes).
  It occupies 152 bytes.
  The `ld` at 0x5218 loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x5240 loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x5254 loads 4 bytes from ?.
  The `lh` at 0x5288 loads 2 bytes from ret(find_lboard) +0xe.
  The `jal` at 0x526c calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x5294 calls chk_for_pebrick with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a0 << 0x21)+0x9600000000000000, a4=((a0 << 0x21)+0x9600000000000000 | 0x2000), a6=0x9600000000000000.
  The `beq` branch at 0x5238 targets 0x5294, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x5260 targets 0x526c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x5278 targets 0x5288, is taken when v0(=ret(find_lboard)) != 0, and falls through when v0(=ret(find_lboard)) == 0.
  The `beq` branch at 0x5280 targets 0x528c and is always taken.
  The `beq` branch at 0x529c targets 0x526c and is always taken.
  The return at 0x528c has v0 = one of -0x1, [ret(find_lboard)+14]:2.
- `get_xbow_peer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x52a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x52a4-0x52d8 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x52ac loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x52b4 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `ld` at 0x52b8 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x52c4 loads 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0.
  The `lh` at 0x52d4 loads 2 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x8600.
  The return at 0x52d0 has v0 = [[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+34304]:2.
- `cpu_cycles_adjust` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x52d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x52d8-0x5368 (144 bytes).
  It occupies 144 bytes.
  The `lhu` at 0x5320 loads 2 bytes from ret(nasid_slice_to_cpuinfo) +0x3c.
  The `jal` at 0x52e8 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x52f0 calls get_slice with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x52fc calls nasid_slice_to_cpuinfo with a0=ret(get_nasid), a1=ret(get_slice), a2=?, a3=?.
  The `beq` branch at 0x530c targets 0x5358, is taken when v0(=ret(nasid_slice_to_cpuinfo)) == 0, and falls through when v0(=ret(nasid_slice_to_cpuinfo)) != 0.
  The `bne` branch at 0x5334 targets 0x5358, is taken when a6(?) < a7(=[ret(nasid_slice_to_cpuinfo)+60]:2-2) (unsigned), and falls through when a6(?) >= a7(=[ret(nasid_slice_to_cpuinfo)+60]:2-2) (unsigned).
  The `bne` branch at 0x533c targets 0x5358, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x5360 has v0 = one of a0, ?.
- `device_component_canonical_name_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5368 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5368-0x53f8 (144 bytes).
  It occupies 144 bytes.
  The `lh` at 0x5368 loads 2 bytes from a0 (arg0 at entry) +0xe.
  The `lbu` at 0x5388 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `ld` at 0x53a0 loads 8 bytes from sym(.rodata) +0x5d8.
  The `sdl` at 0x53a4 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `sdr` at 0x53a8 stores 8 bytes to a2 (arg2 at entry) +0x7.
  The `lbu` at 0x53bc loads 1 byte from a1 (arg1 at entry) +0x18.
  The `jal` at 0x53c8 calls sprintf with a0=a2 at entry (arg2), a1=sym(.rodata)+1440, a2=?, a3=sp-64, a5=-0x11, a6=a1 at entry (arg1).
  The `jal` at 0x53e4 calls nic_name_convert with a0=a0+153, a1=sp-64, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a0 at entry (arg0), a6=a1 at entry (arg1), a7=[a0+14]:2.
  The `beq` branch at 0x5380 targets 0x539c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x5394 targets 0x53e0, is taken when at(=[a0+6]:1) >= 0x2 (signed), and falls through when at(=[a0+6]:1) < 0x2 (signed).
  The `beq` branch at 0x53f0 targets 0x53ac and is always taken.
  The return at 0x53d8 has v0 = ret(sprintf).
- `component_serial_number_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x53f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x53f8-0x5534 (316 bytes).
  It occupies 316 bytes.
  The `lbu` at 0x54b4 loads 1 byte from (ret(strstr) + ret(strlen)) +0x0.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x54d0, `sb` at 0x54e8, `sb` at 0x5504.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x54d8, `lbu` at 0x54f0.
  The `jal` at 0x5454 calls strcmp with a0=a3 at entry (arg3), a1=sym(.rodata)+1440, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x1, a7=a1 at entry (arg1).
  The `jal` at 0x5464 calls strstr with a0=?, a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x5488 calls strstr with a0=?, a1=sym(.rodata)+1440, a2=?, a3=?.
  The `jal` at 0x54a8 calls strlen with a0=sym(.rodata)+1440, a1=?, a2=?, a3=?, a6=0x1.
  The `beq` branch at 0x541c targets 0x5524, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x545c targets 0x5480, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x5470 targets 0x5480, is taken when v0(=ret(strstr)) != 0, and falls through when v0(=ret(strstr)) == 0.
  The `beq` branch at 0x5478 targets 0x550c and is always taken.
  The `bne` branch at 0x5494 targets 0x54a4, is taken when v0(=ret(strstr)) != 0, and falls through when v0(=ret(strstr)) == 0.
  The `beq` branch at 0x549c targets 0x550c and is always taken.
  The `beq` branch at 0x54c0 targets 0x552c, is taken when a2(=0x3b) == a3(=[(ret(strstr) + ret(strlen))]:1), and falls through when a2(=0x3b) != a3(=[(ret(strstr) + ret(strlen))]:1).
  The `beq` branch at 0x54dc targets 0x54fc, is taken when a2(=0x3b) == v0(?), and falls through when a2(=0x3b) != v0(?).
  The `bne` branch at 0x54f4 targets 0x54cc, is taken when a2(=0x3b) != v0(?), and falls through when a2(=0x3b) == v0(?).
  The `beq` branch at 0x5524 targets 0x550c and is always taken.
  The `beq` branch at 0x552c targets 0x54fc and is always taken.
  The return at 0x551c has v0 = one of 0x0, 0x1.
- `board_serial_number_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5534 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5534-0x574c (536 bytes).
  It occupies 536 bytes.
  2 such `lbu` accesses load 1 byte from sym(.rodata) +0x770, including `lbu` at 0x555c, `lbu` at 0x5590.
  2 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x0, including `sb` at 0x5560, `sb` at 0x5594.
  The `lbu` at 0x5564 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lw` at 0x5634 loads 4 bytes from ret(find_first_component) +0x5c.
  6 such `lw` accesses load 4 bytes from ret(find_first_component) +0x50, including `lw` at 0x565c, `lw` at 0x5678, `lw` at 0x5694.
  The `lw` at 0x570c loads 4 bytes from ret(find_first_component) +0x88.
  The `lw` at 0x5730 loads 4 bytes from ret(find_first_component) +0x90.
  The `jal` at 0x55c0 calls find_first_component with a0=a0 at entry (arg0), a1=0xa, a2=0x30, a3=0x50.
  The `jal` at 0x55dc calls find_first_component with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x55f8 calls find_first_component with a0=a0 at entry (arg0), a1=0x5, a2=0x30, a3=a3 at entry (arg3).
  The `jal` at 0x5614 calls find_first_component with a0=a0 at entry (arg0), a1=0x9, a2=0x30, a3=0x50.
  The `jal` at 0x5638 calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+92], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x5660 calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x567c calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x5698 calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x56b4 calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x56d0 calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x56ec calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+80], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x5710 calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+136], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `jal` at 0x5734 calls component_serial_number_get [0x53f8] with a0=a0 at entry (arg0), a1=[ret(find_first_component)+144], a2=a1 at entry (arg1), a3=sym(.rodata)+1440.
  The `beq` branch at 0x554c targets 0x55b4, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x5554 targets 0x55b4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x5570 targets 0x55d8, is taken when v0(?) == at(=0x10), and falls through when v0(?) != at(=0x10).
  The `beq` branch at 0x5578 targets 0x55f4, is taken when v0(?) == a1(=0x20), and falls through when v0(?) != a1(=0x20).
  The `beq` branch at 0x5580 targets 0x5610, is taken when v0(?) == a2(=0x30), and falls through when v0(?) != a2(=0x30).
  The `beq` branch at 0x5588 targets 0x55bc, is taken when v0(?) == a3(=0x50), and falls through when v0(?) != a3(=0x50).
  The `beq` branch at 0x55b4 targets 0x559c and is always taken.
  The `bne` branch at 0x55c8 targets 0x562c, is taken when v0(=ret(find_first_component)) != 0, and falls through when v0(=ret(find_first_component)) == 0.
  The `beq` branch at 0x55d0 targets 0x559c and is always taken.
  The `bne` branch at 0x55e4 targets 0x5650, is taken when v0(=ret(find_first_component)) != 0, and falls through when v0(=ret(find_first_component)) == 0.
  The `beq` branch at 0x55ec targets 0x559c and is always taken.
  The `bne` branch at 0x5600 targets 0x5704, is taken when v0(=ret(find_first_component)) != 0, and falls through when v0(=ret(find_first_component)) == 0.
  The `beq` branch at 0x5608 targets 0x559c and is always taken.
  The `bne` branch at 0x561c targets 0x5728, is taken when v0(=ret(find_first_component)) != 0, and falls through when v0(=ret(find_first_component)) == 0.
  The `beq` branch at 0x5624 targets 0x559c and is always taken.
  The `beq` branch at 0x5640 targets 0x559c, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x5648 targets 0x559c and is always taken.
  The `beq` branch at 0x5668 targets 0x5598, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x5684 targets 0x5598, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x56a0 targets 0x5598, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x56bc targets 0x5598, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x56d8 targets 0x5598, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x56f4 targets 0x559c, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x56fc targets 0x559c and is always taken.
  The `beq` branch at 0x5718 targets 0x559c, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x5720 targets 0x559c and is always taken.
  The `beq` branch at 0x573c targets 0x559c, is taken when v0(=ret(component_serial_number_get)) == 0, and falls through when v0(=ret(component_serial_number_get)) != 0.
  The `beq` branch at 0x5744 targets 0x559c and is always taken.
  The return at 0x55ac has v0 = one of 0x0, 0x1.
- `membank_pathname_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x574c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x574c-0x57d8 (140 bytes).
  It occupies 140 bytes.
  The `lh` at 0x5774 loads 2 bytes from table(sym(nasid_to_compact_node)) +0x0.
  The `sb` at 0x577c stores 1 byte to a1 (arg1 at entry) +0x0.
  The `ld` at 0x5798 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x579c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x57ac loads 8 bytes from ([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3)) +0x0.
  The `lh` at 0x57cc loads 2 bytes from [([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8 +0x861a.
  The `jal` at 0x57c8 calls sprintf with a0=a1 at entry (arg1), a1=sym(.rodata)+1440, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=?, a4=[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8, a5=(entry(sym(nasid_to_compact_node)) << 0x3), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `beq` branch at 0x5770 targets 0x5790, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x5778 targets 0x5790, is taken when a5(=entry(sym(nasid_to_compact_node))) == a3(=-0x1), and falls through when a5(=entry(sym(nasid_to_compact_node))) != a3(=-0x1).
  The `beq` branch at 0x5788 targets 0x5798, is taken when t1(=[sym(numnodes)]) >= a5(=entry(sym(nasid_to_compact_node))) (signed), and falls through when t1(=[sym(numnodes)]) < a5(=entry(sym(nasid_to_compact_node))) (signed).
  The `beq` branch at 0x57d0 targets 0x5790 and is always taken.
  The return at 0x5790 has v0 = one of ?, ret(sprintf).
- `membank_check_mixed_hidensity` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x57d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x57d8-0x58b4 (220 bytes).
  It occupies 220 bytes.
  The `ld` at 0x57e4 loads 8 bytes from (a0 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x5810 loads 8 bytes from ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x5820 loads 4 bytes from ?.
  The `lh` at 0x5864 loads 2 bytes from ?.
  The `jal` at 0x5838 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x5844 calls find_first_component with a0=ret(find_lboard), a1=0x3, a2=?, a3=?.
  The `jal` at 0x58a4 calls chk_for_pebrick with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(a0 << 0x21), a4=(a0 << 0x21)+0x9600000000000000, a6=0x9600000000000000.
  The `beq` branch at 0x5804 targets 0x58a4, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x582c targets 0x5838, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x587c targets 0x585c, is taken when a4(?) < 0x8 (signed), and falls through when a4(?) >= 0x8 (signed).
  The `bne` branch at 0x5888 targets 0x589c, is taken when a0(?) != t0(=0x200), and falls through when a0(?) == t0(=0x200).
  The `beq` branch at 0x5890 targets 0x589c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `beq` branch at 0x58ac targets 0x5838 and is always taken.
  The return at 0x589c has v0 = one of 0x0, 0x1.
- `mem_mixed_hidensity_banks` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x58b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x58b4-0x595c (168 bytes).
  It occupies 168 bytes.
  The `lh` at 0x58e4 loads 2 bytes from ?.
  The `jal` at 0x58f0 calls membank_check_mixed_hidensity with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x58d0 targets 0x5920, is taken when v0(=[sym(maxnodes)]) <= 0 (signed), and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x58e8 targets 0x5908, is taken when a0(?) == s1(=-0x1), and falls through when a0(?) != s1(=-0x1).
  The `beq` branch at 0x58f8 targets 0x593c, is taken when v0(=ret(membank_check_mixed_hidensity)) == 0, and falls through when v0(=ret(membank_check_mixed_hidensity)) != 0.
  The `beq` branch at 0x5900 targets 0x5924 and is always taken.
  The `bne` branch at 0x5918 targets 0x58e0, is taken when s0(?) < v0(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= v0(=[sym(maxnodes)]) (signed).
  The `bne` branch at 0x594c targets 0x58e0, is taken when s0(?) < v0(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= v0(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x5954 targets 0x5924 and is always taken.
  The return at 0x5934 has v0 = one of 0x0, 0x1.
- `nodevertex_widgetnum_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x595c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x595c-0x5988 (44 bytes).
  It occupies 44 bytes.
  The `lbu` at 0x597c loads 1 byte from ?.
  The `jal` at 0x596c calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+1440, a2=sp-16, a3=a3 at entry (arg3).
  The return at 0x5980 has v0 = ?.
- `nodevertex_xbow_peer_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5988 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5988-0x5a00 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x59a4 loads 8 bytes from ?.
  The `lh` at 0x59b0 loads 2 bytes from table(0x8600) +0x0.
  The `ld` at 0x59cc loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x59d4 loads 2 bytes from (sym(nasid_to_compact_node) + (entry(0x8600) + entry(0x8600))) +0x0.
  The `ld` at 0x59d8 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x59e4 loads 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (entry(0x8600) + entry(0x8600)))]:2 << 0x3)) +0x0.
  The `lw` at 0x59ec loads 4 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (entry(0x8600) + entry(0x8600)))]:2 << 0x3))]:8 +0x8c80.
  The `jal` at 0x5998 calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+1440, a2=sp-16, a3=a3 at entry (arg3).
  The `beq` branch at 0x59c0 targets 0x59f8, is taken when a2(=entry(0x8600)) == a5(=-0x1), and falls through when a2(=entry(0x8600)) != a5(=-0x1).
  The `beq` branch at 0x59f8 targets 0x59f0 and is always taken.
  The return at 0x59f0 has v0 = one of [[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (entry(0x8600) + entry(0x8600)))]:2 << 0x3))]:8+35968], -0x1.
- `get_nic_string` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5a00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5a00-0x5af8 (248 bytes).
  It occupies 248 bytes.
  The `lbu` at 0x5a00 loads 1 byte from a0 (arg0 at entry) +0x17.
  The `lw` at 0x5a34 loads 4 bytes from ?.
  The `lbu` at 0x5a44 loads 1 byte from ?.
  The `ld` at 0x5a70 loads 8 bytes from table(sym(.rodata)+1440) +0x0.
  The `blez` branch at 0x5a08 targets 0x5ac0, is taken when t0(=[a0+23]:1) <= 0 (signed), and falls through when t0(=[a0+23]:1) > 0 (signed).
  The `beq` branch at 0x5a68 targets 0x5a7c, is taken when t3(?) >= 0x20 (unsigned), and falls through when t3(?) < 0x20 (unsigned).
  The `bne` branch at 0x5a80 targets 0x5a2c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x5a88 targets 0x5aa4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The return at 0x5a90 has v0 = 0x0.
  The return at 0x5ac0 has v0 = 0x0.
  The instructions from 0x5a98 to 0x5abc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x5ac8 to 0x5af4 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x5a74 uses a jump table whose successors are unresolved.
- `get_first_string` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5af8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5af8-0x5ba0 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0x5b2c loads 8 bytes from a0 (arg0 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x5b50, `ld` at 0x5b5c.
  The `jal` at 0x5b4c calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x5b18 targets 0x5b90, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x5b20 targets 0x5b90, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x5b28 targets 0x5b98, is taken when a1 == v0(=0x1), and falls through when a1 != v0(=0x1).
  The `blez` branch at 0x5b30 targets 0x5b6c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `blez` branch at 0x5b54 targets 0x5b60, is taken when v0(=ret(strcmp)) <= 0 (signed), and falls through when v0(=ret(strcmp)) > 0 (signed).
  The `bne` branch at 0x5b64 targets 0x5b40, is taken when s0(?) < s2(=a1) (signed), and falls through when s0(?) >= s2(=a1) (signed).
  The `beq` branch at 0x5b90 targets 0x5b70 and is always taken.
  The `beq` branch at 0x5b98 targets 0x5b74 and is always taken.
  The return at 0x5b88 has v0 = one of ?, [a0]:8.
- `get_ptrs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5ba0-0x5c9c (252 bytes).
  It occupies 252 bytes.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x5c24, `sd` at 0x5c50.
  The `lbu` at 0x5c80 loads 1 byte from (ret(strlen) + ret(strstr)) +0x0.
  The `jal` at 0x5be4 calls strstr with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5c58 calls strstr with a0=(ret(strlen) + ret(strstr)), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x5c68 calls strlen with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `beq` branch at 0x5bc0 targets 0x5c04, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x5bc8 targets 0x5c04, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x5bd0 targets 0x5c04, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x5bd8 targets 0x5c04, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x5bf0 targets 0x5c0c, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x5bfc targets 0x5c68 and is always taken.
  The `beq` branch at 0x5c04 targets 0x5c2c and is always taken.
  The `beq` branch at 0x5c60 targets 0x5c94, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x5c78 targets 0x5c54, is taken when s2(?) >= s5(=a2-1) (signed), and falls through when s2(?) < s5(=a2-1) (signed).
  The `bne` branch at 0x5c84 targets 0x5c44, is taken when a0(=0x3b) != a1(=[(ret(strlen) + ret(strstr))]:1), and falls through when a0(=0x3b) == a1(=[(ret(strlen) + ret(strstr))]:1).
  The `beq` branch at 0x5c8c targets 0x5c58 and is always taken.
  The `beq` branch at 0x5c94 targets 0x5c14 and is always taken.
  The return at 0x5c3c has v0 = one of 0x0, ?.
- `sort_nic_names` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5c9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5c9c-0x5d4c (176 bytes).
  It occupies 176 bytes.
  The `sb` at 0x5d14 stores 1 byte to ?.
  The `jal` at 0x5ca8 calls get_nic_string [0x5a00] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5cc8 calls get_ptrs with a0=ret(get_nic_string), a1=sp-288, a2=0x20, a3=sym(.rodata)+1440.
  The `jal` at 0x5cd4 calls get_first_string with a0=sp-288, a1=ret(get_ptrs), a2=?, a3=?.
  The `jal` at 0x5ce8 calls strchr with a0=ret(get_first_string), a1=0x3b, a2=?, a3=?.
  The `jal` at 0x5d00 calls strncpy with a0=sp-320, a1=ret(get_first_string), a2=?, a3=?.
  The `jal` at 0x5d20 calls strncpy with a0=sp-320, a1=ret(get_first_string), a2=0x1f, a3=?.
  The `jal` at 0x5d34 calls strcpy with a0=a0+153, a1=sp-320, a2=?, a3=?.
  The `beq` branch at 0x5cb0 targets 0x5d3c, is taken when v0(=ret(get_nic_string)) == 0, and falls through when v0(=ret(get_nic_string)) != 0.
  The `beq` branch at 0x5cdc targets 0x5d3c, is taken when v0(=ret(get_first_string)) == 0, and falls through when v0(=ret(get_first_string)) != 0.
  The `beq` branch at 0x5cf0 targets 0x5d18, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x5d10 targets 0x5d2c and is always taken.
  The return at 0x5d44 has v0 = one of ret(get_nic_string), ret(get_first_string), ret(strcpy).
- `format_module_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5d4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5d4c-0x5eec (416 bytes).
  It occupies 416 bytes.
  The `lbu` at 0x5d84 loads 1 byte from ?.
  The `sb` at 0x5da4 stores 1 byte to ?.
  The `sb` at 0x5e08 stores 1 byte to a0 (arg0 at entry) +0x3.
  The `sb` at 0x5e14 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `sb` at 0x5e24 stores 1 byte to a0 (arg0 at entry) +0x2.
  The `sb` at 0x5e34 stores 1 byte to a0 (arg0 at entry) +0x1.
  The `lbu` at 0x5e38 loads 1 byte from sym(.rodata) +0x8ec.
  The `lw` at 0x5e3c loads 4 bytes from sym(.rodata) +0x8e8.
  The `lbu` at 0x5e40 loads 1 byte from sym(.rodata) +0x8ed.
  The `swl` at 0x5e44 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `swr` at 0x5e48 stores 4 bytes to a0 (arg0 at entry) +0x3.
  The `sb` at 0x5e4c stores 1 byte to a0 (arg0 at entry) +0x4.
  The `sb` at 0x5e54 stores 1 byte to a0 (arg0 at entry) +0x5.
  The `lbu` at 0x5e84 loads 1 byte from sym(.rodata) +0x8f5.
  The `lw` at 0x5e90 loads 4 bytes from sym(.rodata) +0x8f0.
  The `lbu` at 0x5e9c loads 1 byte from sym(.rodata) +0x8f4.
  The `sb` at 0x5ea8 stores 1 byte to (ret(strlen) + a0) +0x0.
  The `sb` at 0x5eb8 stores 1 byte to (ret(strlen) + a0) +0x2.
  The `sb` at 0x5ec4 stores 1 byte to (ret(strlen) + a0) +0x1.
  The `swl` at 0x5ec8 stores 4 bytes to (ret(strlen) + a0) +0x3.
  The `swr` at 0x5ecc stores 4 bytes to (ret(strlen) + a0) +0x6.
  The `sb` at 0x5ed0 stores 1 byte to (ret(strlen) + a0) +0x8.
  The `sb` at 0x5edc stores 1 byte to (ret(strlen) + a0) +0x7.
  The `jal` at 0x5db8 calls sprintf with a0=?, a1=sym(.rodata)+1440, a2=?, a3=?.
  The `jal` at 0x5e50 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=sym(brick_types), a7=0x0.
  The `jal` at 0x5ed8 calls strlen with a0=(ret(strlen) + a0)+3, a1=?, a2=?, a3=?.
  The `beq` branch at 0x5d80 targets 0x5dd0, is taken when a2 == at(=0x1), and falls through when a2 != at(=0x1).
  The `beq` branch at 0x5d88 targets 0x5e38, is taken when a2 == s2(=0x2), and falls through when a2 != s2(=0x2).
  The `beq` branch at 0x5d9c targets 0x5dac, is taken when a2(?) >= 0xa (signed), and falls through when a2(?) < 0xa (signed).
  The `beq` branch at 0x5e30 targets 0x5d90 and is always taken.
  The `beq` branch at 0x5ee4 targets 0x5d90 and is always taken.
  The return at 0x5dc8 has v0 = ret(sprintf).
- `parse_module_id` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x5eec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x5eec-0x6204 (792 bytes).
  It occupies 792 bytes.
  The `lbu` at 0x5f5c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x5f68 loads 1 byte from ([a0]:1 + sym(__ctype)) +0x1.
  The `lbu` at 0x5f78 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0x5f80 loads 1 byte from ([a0+1]:1 + sym(__ctype)) +0x1.
  The `lbu` at 0x5f90 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x5f98 loads 1 byte from ([a0+2]:1 + sym(__ctype)) +0x1.
  The `lbu` at 0x6020 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x6028 loads 1 byte from ([a0+3]:1 + sym(__ctype)) +0x1.
  The `lbu` at 0x6064 loads 1 byte from (a0 + one of 0x4, 0xd) +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x606c, `lbu` at 0x6084.
  The `lbu` at 0x607c loads 1 byte from (a0 + one of 0x5, 0xe) +0x0.
  The `lbu` at 0x6094 loads 1 byte from (a0 + one of 0x6, 0xf) +0x0.
  The `lbu` at 0x60a8 loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lbu` at 0x60b0 loads 1 byte from ([a0+5]:1 + sym(__ctype)) +0x1.
  The `lbu` at 0x60c0 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x60c8 loads 1 byte from ([a0+6]:1 + sym(__ctype)) +0x1.
  The `lbu` at 0x60d8 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `lbu` at 0x60e0 loads 1 byte from ([a0+7]:1 + sym(__ctype)) +0x1.
  The `jal` at 0x5f00 calls strstr with a0=a0 at entry (arg0), a1=sym(.rodata)+1440, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5f14 calls strlen with a0=a0+5, a1=?, a2=?, a3=?.
  The `jal` at 0x5f30 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x6044 calls strchr with a0=sym(brick_types), a1=?, a2=?, a3=0x6, a4=[a0+2]:1-49, a5=one of 0x3, 0x7, a6=[a0+2]:1, a7=one of 0x3, 0x7.
  The `jal` at 0x6190 calls strstr with a0=a0+8, a1=sym(.rodata)+1440, a2=?, a3=?, a4=[a0+7]:1-49, a5=one of 0x3, 0x7, a6=[a0+7]:1.
  The `bne` branch at 0x5f0c targets 0x5f30, is taken when v0(=ret(strstr)) != s0(=a0), and falls through when v0(=ret(strstr)) == s0(=a0).
  The `beq` branch at 0x5f20 targets 0x60a8, is taken when v0(=ret(strlen)) == a2(=0xa), and falls through when v0(=ret(strlen)) != a2(=0xa).
  The `beq` branch at 0x5f28 targets 0x5f44 and is always taken.
  The `beq` branch at 0x5f3c targets 0x5f5c, is taken when v0(=ret(strlen)) == a3(=0x6), and falls through when v0(=ret(strlen)) != a3(=0x6).
  The `beq` branch at 0x5f70 targets 0x6170, is taken when (a4(=[([a0]:1 + sym(__ctype))+1]:1) & 0x4) == 0, and falls through when (a4(=[([a0]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  The `beq` branch at 0x5f88 targets 0x6170, is taken when (a5(=[([a0+1]:1 + sym(__ctype))+1]:1) & 0x4) == 0, and falls through when (a5(=[([a0+1]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  The `beq` branch at 0x5fa0 targets 0x6170, is taken when (a7(=[([a0+2]:1 + sym(__ctype))+1]:1) & 0x4) == 0, and falls through when (a7(=[([a0+2]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  The `beq` branch at 0x5fac targets 0x6168, is taken when v0(=[a0]:1-48) >= 0x2 (unsigned), and falls through when v0(=[a0]:1-48) < 0x2 (unsigned).
  The `bne` branch at 0x5fec targets 0x6178, is taken when t2(?) < v0(=[a0+1]:1-48) (unsigned), and falls through when t2(?) >= v0(=[a0+1]:1-48) (unsigned).
  The `bne` branch at 0x6018 targets 0x6160, is taken when a5(=one of 0x3, 0x7) < a4(=[a0+2]:1-49) (unsigned), and falls through when a5(=one of 0x3, 0x7) >= a4(=[a0+2]:1-49) (unsigned).
  The `beq` branch at 0x6034 targets 0x61fc, is taken when (a0(=[([a0+3]:1 + sym(__ctype))+1]:1) & 0x4003) == 0, and falls through when (a0(=[([a0+3]:1 + sym(__ctype))+1]:1) & 0x4003) != 0.
  The `beq` branch at 0x603c targets 0x61e0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x605c targets 0x61d0, is taken when a4(?) >= 0x10 (unsigned), and falls through when a4(?) < 0x10 (unsigned).
  The `beq` branch at 0x6074 targets 0x60a0, is taken when (a5(?) & 0x4) == 0, and falls through when (a5(?) & 0x4) != 0.
  The `beq` branch at 0x608c targets 0x60a0, is taken when (a6(?) & 0x4) == 0, and falls through when (a6(?) & 0x4) != 0.
  The `beq` branch at 0x6098 targets 0x61ac, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x60a0 targets 0x5f48 and is always taken.
  The `beq` branch at 0x60b8 targets 0x6170, is taken when (t0(=[([a0+5]:1 + sym(__ctype))+1]:1) & 0x4) == 0, and falls through when (t0(=[([a0+5]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  The `beq` branch at 0x60d0 targets 0x6170, is taken when (t1(=[([a0+6]:1 + sym(__ctype))+1]:1) & 0x4) == 0, and falls through when (t1(=[([a0+6]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  The `beq` branch at 0x60ec targets 0x6170, is taken when (t2(=[([a0+7]:1 + sym(__ctype))+1]:1) & 0x4) == 0, and falls through when (t2(=[([a0+7]:1 + sym(__ctype))+1]:1) & 0x4) != 0.
  The `beq` branch at 0x6100 targets 0x6168, is taken when v0(=[a0+5]:1-48) >= 0x2 (unsigned), and falls through when v0(=[a0+5]:1-48) < 0x2 (unsigned).
  The `bne` branch at 0x6140 targets 0x6178, is taken when t9(?) < v0(=[a0+6]:1-48) (unsigned), and falls through when t9(?) >= v0(=[a0+6]:1-48) (unsigned).
  The `beq` branch at 0x6158 targets 0x6180, is taken when a5(=one of 0x3, 0x7) >= a4(=[a0+7]:1-49) (unsigned), and falls through when a5(=one of 0x3, 0x7) < a4(=[a0+7]:1-49) (unsigned).
  The `beq` branch at 0x6160 targets 0x5f44 and is always taken.
  The `beq` branch at 0x6168 targets 0x5f44 and is always taken.
  The `beq` branch at 0x6170 targets 0x5f44 and is always taken.
  The `beq` branch at 0x6178 targets 0x5f44 and is always taken.
  The `beq` branch at 0x619c targets 0x61d8, is taken when v0(=ret(strstr)) == a3(=a0+8), and falls through when v0(=ret(strstr)) != a3(=a0+8).
  The `beq` branch at 0x61a4 targets 0x5f44 and is always taken.
  The `bne` branch at 0x61c0 targets 0x61e8, is taken when a5(?) < 0x40 (unsigned), and falls through when a5(?) >= 0x40 (unsigned).
  The `beq` branch at 0x61c8 targets 0x5f44 and is always taken.
  The `beq` branch at 0x61d0 targets 0x5f44 and is always taken.
  The `beq` branch at 0x61d8 targets 0x6064 and is always taken.
  The `beq` branch at 0x61e0 targets 0x6044 and is always taken.
  The `beq` branch at 0x61f4 targets 0x5f44 and is always taken.
  The `beq` branch at 0x61fc targets 0x5f44 and is always taken.
  The return at 0x5f54 has v0 = one of ?, -0xa.
- `chk_for_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6204 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6204-0x630c (264 bytes).
  It occupies 264 bytes.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x6244, `lh` at 0x6250.
  The `ld` at 0x6260 loads 8 bytes from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x626c, `lw` at 0x62b8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x6290, `lbu` at 0x62a0.
  The `lh` at 0x6308 loads 2 bytes from sym(.data) +0x11c.
  The `jal` at 0x62e8 calls cmn_err with a0=0x0, a1=sym(.rodata)+1440, a2=a2 at entry (arg2), a3=?, a4=0xffffffffff.
  The `blez` branch at 0x621c targets 0x62e0, is taken when t2(=[sym(num_pebricks)]) <= 0 (signed), and falls through when t2(=[sym(num_pebricks)]) > 0 (signed).
  The `beq` branch at 0x6228 targets 0x62f8 and is always taken.
  The `beq` branch at 0x623c targets 0x62e0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x6248 targets 0x6234, is taken when t0(?) != a0, and falls through when t0(?) == a0.
  The `beq` branch at 0x6278 targets 0x6284, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x6284 targets 0x6234, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x628c targets 0x62a4 and is always taken.
  The `beq` branch at 0x6298 targets 0x6230, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x62b0 targets 0x62d4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `bne` branch at 0x62c4 targets 0x6294, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x62cc targets 0x6298 and is always taken.
  The `beq` branch at 0x62f0 targets 0x62d4 and is always taken.
  The `beq` branch at 0x6304 targets 0x6248 and is always taken.
  The return at 0x62d8 has v0 = one of ?, 0x0.
- `cpu_node_probe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x630c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x630c-0x660c (768 bytes).
  It occupies 768 bytes.
  12 such `sh` accesses store 2 bytes to ?, including `sh` at 0x6348, `sh` at 0x634c, `sh` at 0x6364.
  The `ld` at 0x63d0 loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x63d8, `sw` at 0x641c.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x63e4, `lh` at 0x6460, `lh` at 0x6470.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x6408, `lw` at 0x6490, `lw` at 0x64a8.
  The `lw` at 0x6434 loads 4 bytes from [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x184.
  The `sw` at 0x6488 stores 4 bytes to ?.
  The `ld` at 0x6530 loads 8 bytes from ?.
  The `ld` at 0x6588 loads 8 bytes from abs 0x9000000014000000.
  The `jal` at 0x63ac calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6418 calls do_cpumask with a0=?, a1=?, a2=a0 at entry (arg0), a3=sp-80, a4=[a1]+1.
  The `jal` at 0x65a4 calls printf with a0=sym(.rodata)+2344, a1=?, a2=?, a3=?.
  The `jal` at 0x65c4 calls printf with a0=sym(.rodata)+2344, a1=?, a2=?, a3=?, a5=[[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8+388], a6=[sym(num_pebricks)].
  The `jal` at 0x65d0 calls printf with a0=sym(.rodata)+2344, a1=?, a2=?, a3=?.
  The `jal` at 0x65e8 calls assfail with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xb9, a3=?.
  The `beq` branch at 0x6350 targets 0x6370, is taken when a4(?) >= 0x80 (signed), and falls through when a4(?) < 0x80 (signed).
  The `bne` branch at 0x6368 targets 0x6338, is taken when a4(?) < 0x80 (signed), and falls through when a4(?) >= 0x80 (signed).
  The `beq` branch at 0x638c targets 0x63a8, is taken when a4(?) >= 0x200 (signed), and falls through when a4(?) < 0x200 (signed).
  The `bne` branch at 0x63a0 targets 0x6378, is taken when a4(?) < 0x200 (signed), and falls through when a4(?) >= 0x200 (signed).
  The `beq` branch at 0x63e8 targets 0x6434, is taken when a1(?) == s1(=-0x1), and falls through when a1(?) != s1(=-0x1).
  The `bne` branch at 0x642c targets 0x63e4, is taken when s0(?) < 0x80 (signed), and falls through when s0(?) >= 0x80 (signed).
  The `bne` branch at 0x644c targets 0x6584, is taken when a5(=[[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8+388]) != a6(=0x5045626b), and falls through when a5(=[[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8+388]) == a6(=0x5045626b).
  The `beq` branch at 0x6468 targets 0x64c8, is taken when a1(?) == s1(=-0x1), and falls through when a1(?) != s1(=-0x1).
  The `beq` branch at 0x6478 targets 0x65a4, is taken when a5(?) == s1(=-0x1), and falls through when a5(?) != s1(=-0x1).
  The `bne` branch at 0x64c0 targets 0x6454, is taken when s0(?) < 0x3 (signed), and falls through when s0(?) >= 0x3 (signed).
  The `bltz` branch at 0x64d4 targets 0x654c, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x64dc targets 0x64f8 and is always taken.
  The `bne` branch at 0x64f0 targets 0x654c, is taken when a1(?) < s0(?) (signed), and falls through when a1(?) >= s0(?) (signed).
  The `bne` branch at 0x6504 targets 0x64e4, is taken when s3(?) < a4(?) (signed), and falls through when s3(?) >= a4(?) (signed).
  The `beq` branch at 0x650c targets 0x64e8, is taken when a4(?) == s1(=-0x1), and falls through when a4(?) != s1(=-0x1).
  The `beq` branch at 0x6514 targets 0x64e8, is taken when a4(?) == s3(?), and falls through when a4(?) != s3(?).
  The `beq` branch at 0x6528 targets 0x64e8, is taken when a3(=[a1]) == a4(?), and falls through when a3(=[a1]) != a4(?).
  The `beql` branch at 0x653c targets 0x64ec, is taken when (a3(?) & a4(?)) == 0, and falls through when (a3(?) & a4(?)) != 0; its branch-likely delay slot `addiu s0,s0,1` at 0x6540 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x6544 targets 0x65e0 and is always taken.
  The `beq` branch at 0x6594 targets 0x65c4, is taken when v1(?) == a0(=0x8000), and falls through when v1(?) != a0(=0x8000).
  The `beq` branch at 0x659c targets 0x64cc and is always taken.
  The `bne` branch at 0x65b4 targets 0x6454, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x65bc targets 0x64cc and is always taken.
  The `beq` branch at 0x65d8 targets 0x659c and is always taken.
  The `beq` branch at 0x65fc targets 0x64f8, is taken when a1(?) >= s0(?) (signed), and falls through when a1(?) < s0(?) (signed).
  The `beq` branch at 0x6604 targets 0x6550 and is always taken.
  The return at 0x657c has v0 = ?.
- `do_cpumask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x660c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x660c-0x6838 (556 bytes).
  It occupies 556 bytes.
  The `ld` at 0x6638 loads 8 bytes from (a1 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x6678 loads 8 bytes from ((a1 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x6688 loads 4 bytes from ?.
  The `lh` at 0x66d0 loads 2 bytes from ?.
  The `lh` at 0x66e8 loads 2 bytes from ret(find_lboard) +0x20.
  The `sh` at 0x6704 stores 2 bytes to ?.
  The `lw` at 0x6708 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sw` at 0x6720 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lbu` at 0x6724 loads 1 byte from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x6734, `ld` at 0x6818.
  The `sd` at 0x674c stores 8 bytes to ?.
  The `lw` at 0x6768 loads 4 bytes from ret(find_lboard) +0x0.
  The `jal` at 0x66a4 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x66c0 calls find_first_component with a0=ret(find_lboard), a1=0x1, a2=?, a3=?.
  The `jal` at 0x66e0 calls get_actual_nasid with a0=ret(find_lboard), a1=?, a2=?, a3=?.
  The `jal` at 0x6758 calls find_component with a0=ret(find_lboard), a1=?, a2=0x1, a3=?.
  The `jal` at 0x6798 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x67dc calls chk_for_pebrick with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x67f4 calls assfail with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xec, a3=?.
  The `jal` at 0x680c calls assfail with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xfa, a3=[ret(find_lboard)+32]:2, a4=a0 at entry (arg0).
  The `jal` at 0x6828 calls assfail with a0=sym(.rodata)+2344, a1=sym(.rodata)+2344, a2=0xe3, a3=?.
  The `beq` branch at 0x6658 targets 0x67dc, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x6690 targets 0x66a4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x66ac targets 0x681c, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x66c8 targets 0x6768, is taken when v0(=ret(find_first_component)) == 0, and falls through when v0(=ret(find_first_component)) != 0.
  The `beq` branch at 0x66d8 targets 0x67ec, is taken when s2(?) >= 0x200 (signed), and falls through when s2(?) < 0x200 (signed).
  The `bne` branch at 0x66fc targets 0x6708, is taken when a3(=[ret(find_lboard)+32]:2) != v0(=ret(get_actual_nasid)), and falls through when a3(=[ret(find_lboard)+32]:2) == v0(=ret(get_actual_nasid)).
  The `beq` branch at 0x6718 targets 0x6724, is taken when a5(=[a3]) >= s2(?) (signed), and falls through when a5(=[a3]) < s2(?) (signed).
  The `beq` branch at 0x672c targets 0x6754, is taken when (a6(?) & 0x1) == 0, and falls through when (a6(?) & 0x1) != 0.
  The `bne` branch at 0x673c targets 0x6804, is taken when (v0(?) & s4(?)) != 0, and falls through when (v0(?) & s4(?)) == 0.
  The `bne` branch at 0x6760 targets 0x66d0, is taken when v0(=ret(find_component)) != 0, and falls through when v0(=ret(find_component)) == 0.
  The `beq` branch at 0x676c targets 0x67a8, is taken when v0(=[ret(find_lboard)]) == 0, and falls through when v0(=[ret(find_lboard)]) != 0.
  The `bne` branch at 0x67a0 targets 0x66bc, is taken when v0(=ret(find_lboard)) != 0, and falls through when v0(=ret(find_lboard)) == 0.
  The `beq` branch at 0x67e4 targets 0x66a4 and is always taken.
  The `beq` branch at 0x67fc targets 0x66e0 and is always taken.
  The `beq` branch at 0x6814 targets 0x6744 and is always taken.
  The `beq` branch at 0x6830 targets 0x66b8 and is always taken.
  The return at 0x67d4 has v0 = ?.
- `slurp_inventory` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6838 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6838-0x6840 (8 bytes).
  It occupies 8 bytes.
  The return at 0x6838 has v0 = ?.
- `nasid_to_compact_nodeid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6840-0x6854 (20 bytes).
  It occupies 20 bytes.
  The `lh` at 0x6850 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The return at 0x684c has v0 = [(sym(nasid_to_compact_node) + (a0 + a0))]:2.
- `compact_to_nasid_nodeid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6854 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6854-0x686c (24 bytes).
  It occupies 24 bytes.
  The `lh` at 0x6868 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The return at 0x6864 has v0 = [(sym(nasid_to_compact_node) + (a0 + a0))]:2.
- `get_lowest_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x686c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x686c-0x68cc (96 bytes).
  It occupies 96 bytes.
  The `lh` at 0x6880 loads 2 bytes from sym(.bss) +0x200.
  The `lh` at 0x6898 loads 2 bytes from ?.
  The `bne` branch at 0x687c targets 0x68c4, is taken when a6(=[sym(maxnodes)]) < 0x2 (signed), and falls through when a6(=[sym(maxnodes)]) >= 0x2 (signed).
  The `beq` branch at 0x68a8 targets 0x68b4, is taken when a3(?) >= v0(?) (signed), and falls through when a3(?) < v0(?) (signed).
  The `bne` branch at 0x68bc targets 0x6898, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The return at 0x68c4 has v0 = one of [sym(compact_to_nasid_node)]:2, ?.
- `cnode_exists` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x68cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x68cc-0x690c (64 bytes).
  It occupies 64 bytes.
  The `lh` at 0x68f0 loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `bltz` branch at 0x68d0 targets 0x6900, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x68e0 targets 0x6904, is taken when a0 >= 0x80 (signed), and falls through when a0 < 0x80 (signed).
  The return at 0x68f8 has v0 = ?.
  The return at 0x6904 has v0 = 0x0.
- `getsysid_snum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6978 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6978-0x6a28 (176 bytes).
  It occupies 176 bytes.
  The `lbu` at 0x69e4 loads 1 byte from ?.
  The `jal` at 0x6980 calls getsysid with a0=sp-80, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x6994 targets 0x6a1c and is always taken.
  The `bne` branch at 0x69b4 targets 0x69c8, is taken when a2(?) < 0x61 (signed), and falls through when a2(?) >= 0x61 (signed).
  The `beq` branch at 0x69bc targets 0x69c8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x69c8 targets 0x69dc, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x69d0 targets 0x69dc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x69dc targets 0x6a14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x69f4 targets 0x699c, is taken when a2(?) < 0x30 (signed), and falls through when a2(?) >= 0x30 (signed).
  The `beq` branch at 0x6a04 targets 0x69a0, is taken when a2(?) >= 0x3a (signed), and falls through when a2(?) < 0x3a (signed).
  The `beq` branch at 0x6a0c targets 0x699c and is always taken.
  The `beq` branch at 0x6a20 targets 0x69e8 and is always taken.
  The return at 0x6a14 has v0 = ?.
- `set_master_bridge_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6a28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6a28-0x6ab0 (136 bytes).
  It occupies 136 bytes.
  The `ld` at 0x6a44 loads 8 bytes from (([sym(master_nasid)]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x6a54 loads 4 bytes from ?.
  The `ld` at 0x6a60 loads 8 bytes from ?.
  The `lh` at 0x6a64 loads 2 bytes from ?.
  The `lbu` at 0x6a68 loads 1 byte from ?.
  The `beq` branch at 0x6a88 targets 0x6aa8, is taken when (a4(?) & 0xff) == 0, and falls through when (a4(?) & 0xff) != 0.
  The `beq` branch at 0x6aa8 targets 0x6aa0 and is always taken.
  The return at 0x6aa0 has v0 = ?.
- `get_console_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6ab0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6ab0-0x6ab8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x6ab0 has v0 = [sym(.sbss)+8]:2.
- `get_console_pcislot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6ab8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6ab8-0x6ac0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x6ab8 has v0 = [sym(.sbss)+11]:1.
- `check_nasid_equiv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6ac0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6ac0-0x6b08 (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x6ad0 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x6ad8 loads 2 bytes from (sym(nasid_to_compact_node) + (a1 + a1)) +0x0.
  The `ld` at 0x6adc loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x6ae8 loads 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3)) +0x0.
  The `lh` at 0x6af0 loads 2 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8 +0x8600.
  The `beq` branch at 0x6ac4 targets 0x6afc, is taken when a0 == a1, and falls through when a0 != a1.
  The `bne` branch at 0x6af4 targets 0x6b00, is taken when at(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+34304]:2) != a0, and falls through when at(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+34304]:2) == a0.
  The return at 0x6b00 has v0 = one of 0x0, 0x1.
- `is_master_nasid_widget` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6b08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6b08-0x6b44 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x6b24 calls check_nasid_equiv with a0=a0 at entry (arg0), a1=[sym(.sbss)+8]:2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x6b14 targets 0x6b24, is taken when at(=[sym(.sbss)+10]:1) == a1, and falls through when at(=[sym(.sbss)+10]:1) != a1.
  The `beq` branch at 0x6b2c targets 0x6b3c, is taken when v0(=ret(check_nasid_equiv)) == 0, and falls through when v0(=ret(check_nasid_equiv)) != 0.
  The `beq` branch at 0x6b34 targets 0x6b1c and is always taken.
  The `beq` branch at 0x6b3c targets 0x6b1c and is always taken.
  The return at 0x6b1c has v0 = one of 0x0, 0x1.
- `get_master_bridge_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6b44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6b44-0x6b4c (8 bytes).
  It occupies 8 bytes.
  The return at 0x6b44 has v0 = [sym(.sdata)+48]:8.
- `vector_write_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6b4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6b4c-0x6db4 (616 bytes).
  It occupies 616 bytes.
  2 such `ld` accesses load 8 bytes from (a1 << 0x21) -0x6dfffffffe1f3fe0, including `ld` at 0x6be8, `ld` at 0x6c24.
  The `ld` at 0x6c20 loads 8 bytes from (a1 << 0x21) -0x6dfffffffe1f3fc8.
  2 such `ld` accesses load 8 bytes from (a1 << 0x21) -0x6dfffffffe1f4000, including `ld` at 0x6c40, `ld` at 0x6c60.
  The `sd` at 0x6c88 stores 8 bytes to (a1 << 0x21) -0x6dfffffffe1f3ff0.
  The `sd` at 0x6c8c stores 8 bytes to (a1 << 0x21) -0x6dfffffffe1f3ff8.
  The `sd` at 0x6c90 stores 8 bytes to (a1 << 0x21) -0x6dfffffffe1f4000.
  The `jal` at 0x6be0 calls us_delay with a0=0x64, a1=?, a2=?, a3=?.
  The `jal` at 0x6cb0 calls us_delay with a0=0x64, a1=?, a2=?, a3=?.
  The `beq` branch at 0x6bc8 targets 0x6c20 and is always taken.
  The `beq` branch at 0x6bd8 targets 0x6bfc, is taken when s0(?) >= v0(=[sym(vec_polls_w)]) (signed), and falls through when s0(?) < v0(=[sym(vec_polls_w)]) (signed).
  The `beq` branch at 0x6bf0 targets 0x6bd0, is taken when (s1(=0x8000000000000000) & s4(=[(a1 << 0x21)-7926335344140566496]:8)) == 0, and falls through when (s1(=0x8000000000000000) & s4(=[(a1 << 0x21)-7926335344140566496]:8)) != 0.
  The `beq` branch at 0x6bfc targets 0x6c10, is taken when v0(=[sym(vec_polls_w)]) == s0(?), and falls through when v0(=[sym(vec_polls_w)]) != s0(?).
  The `beq` branch at 0x6c04 targets 0x6d4c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x6c18 targets 0x6d34, is taken when s3(?) >= 0x8 (signed), and falls through when s3(?) < 0x8 (signed).
  The `bne` branch at 0x6c30 targets 0x6cd0, is taken when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566496]:8)) != 0, and falls through when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566496]:8)) == 0.
  The `blez` branch at 0x6c38 targets 0x6ca8, is taken when v0(=[sym(vec_polls_w)]) <= 0 (signed), and falls through when v0(=[sym(vec_polls_w)]) > 0 (signed).
  The `beq` branch at 0x6c48 targets 0x6c80, is taken when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) == 0, and falls through when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  The `beq` branch at 0x6c58 targets 0x6c80, is taken when s0(?) >= v0(=[sym(vec_polls_w)]) (signed), and falls through when s0(?) < v0(=[sym(vec_polls_w)]) (signed).
  The `beq` branch at 0x6c68 targets 0x6c80, is taken when (s1(=0x8000000000000000) & a3(=[(a1 << 0x21)-7926335344140566528]:8)) == 0, and falls through when (s1(=0x8000000000000000) & a3(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  The `bne` branch at 0x6c78 targets 0x6c40, is taken when s0(?) < v0(=[sym(vec_polls_w)]) (signed), and falls through when s0(?) >= v0(=[sym(vec_polls_w)]) (signed).
  The `beq` branch at 0x6c80 targets 0x6cb0, is taken when v0(=[sym(vec_polls_w)]) == s0(?), and falls through when v0(=[sym(vec_polls_w)]) != s0(?).
  The `bgtz` branch at 0x6c98 targets 0x6be0, is taken when v0(=[sym(vec_polls_w)]) > 0 (signed), and falls through when v0(=[sym(vec_polls_w)]) <= 0 (signed).
  The `beq` branch at 0x6ca0 targets 0x6cc0 and is always taken.
  The `bne` branch at 0x6ca8 targets 0x6c88, is taken when v0(=[sym(vec_polls_w)]) != 0, and falls through when v0(=[sym(vec_polls_w)]) == 0.
  The `beq` branch at 0x6cb8 targets 0x6c14 and is always taken.
  The `bne` branch at 0x6cc0 targets 0x6c04, is taken when v0(=[sym(vec_polls_w)]) != 0, and falls through when v0(=[sym(vec_polls_w)]) == 0.
  The `beq` branch at 0x6cc8 targets 0x6c14 and is always taken.
  The `bne` branch at 0x6d18 targets 0x6d90, is taken when a6(=a2) != a7(?), and falls through when a6(=a2) == a7(?).
  The `bne` branch at 0x6d2c targets 0x6d90, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x6d44 targets 0x6cd8 and is always taken.
  The `beq` branch at 0x6d5c targets 0x6d9c, is taken when a0(?) == t8(=0x4), and falls through when a0(?) != t8(=0x4).
  The `beq` branch at 0x6d64 targets 0x6da4, is taken when a0(?) == v0(=0x5), and falls through when a0(?) != v0(=0x5).
  The `beq` branch at 0x6d6c targets 0x6dac, is taken when a0(?) == a4(=0x6), and falls through when a0(?) != a4(=0x6).
  The `beq` branch at 0x6d74 targets 0x6d84, is taken when a0(?) == a5(=0x1), and falls through when a0(?) != a5(=0x1).
  The `beq` branch at 0x6d7c targets 0x6ce0 and is always taken.
  The `beq` branch at 0x6d8c targets 0x6d0c, is taken when t9(?) == ra(=0x7b), and falls through when t9(?) != ra(=0x7b).
  The `beq` branch at 0x6d94 targets 0x6cd8 and is always taken.
  The `beq` branch at 0x6d9c targets 0x6cdc and is always taken.
  The `beq` branch at 0x6da4 targets 0x6cdc and is always taken.
  The `beq` branch at 0x6dac targets 0x6cdc and is always taken.
  The return at 0x6d04 has v0 = one of ?, -0x3.
- `vector_read_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x6db4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x6db4-0x7008 (596 bytes).
  It occupies 596 bytes.
  2 such `ld` accesses load 8 bytes from (a1 << 0x21) -0x6dfffffffe1f3fe0, including `ld` at 0x6e48, `ld` at 0x6e78.
  The `ld` at 0x6e74 loads 8 bytes from (a1 << 0x21) -0x6dfffffffe1f3fc8.
  2 such `ld` accesses load 8 bytes from (a1 << 0x21) -0x6dfffffffe1f4000, including `ld` at 0x6e94, `ld` at 0x6eb4.
  The `sd` at 0x6edc stores 8 bytes to (a1 << 0x21) -0x6dfffffffe1f3fd0.
  The `sd` at 0x6ee0 stores 8 bytes to (a1 << 0x21) -0x6dfffffffe1f3ff8.
  The `sd` at 0x6ee4 stores 8 bytes to (a1 << 0x21) -0x6dfffffffe1f4000.
  The `ld` at 0x6f88 loads 8 bytes from (a1 << 0x21) -0x6dfffffffe1f3fd0.
  The `sd` at 0x6f8c stores 8 bytes to a4 (arg4 at entry) +0x0.
  The `jal` at 0x6e40 calls us_delay with a0=0x64, a1=?, a2=?, a3=?.
  The `jal` at 0x6f04 calls us_delay with a0=0x64, a1=?, a2=?, a3=?.
  The `beq` branch at 0x6e28 targets 0x6e74 and is always taken.
  The `beq` branch at 0x6e38 targets 0x6e5c, is taken when s0(?) >= v0(=[sym(vec_polls_r)]) (signed), and falls through when s0(?) < v0(=[sym(vec_polls_r)]) (signed).
  The `beq` branch at 0x6e50 targets 0x6e30, is taken when (s1(=0x8000000000000000) & s5(=[(a1 << 0x21)-7926335344140566496]:8)) == 0, and falls through when (s1(=0x8000000000000000) & s5(=[(a1 << 0x21)-7926335344140566496]:8)) != 0.
  The `bne` branch at 0x6e5c targets 0x6f1c, is taken when v0(=[sym(vec_polls_r)]) != s0(?), and falls through when v0(=[sym(vec_polls_r)]) == s0(?).
  The `beq` branch at 0x6e6c targets 0x6f94, is taken when s3(?) >= 0x8 (signed), and falls through when s3(?) < 0x8 (signed).
  The `bne` branch at 0x6e84 targets 0x6f34, is taken when (s1(=0x8000000000000000) & at(=[(a1 << 0x21)-7926335344140566496]:8)) != 0, and falls through when (s1(=0x8000000000000000) & at(=[(a1 << 0x21)-7926335344140566496]:8)) == 0.
  The `blez` branch at 0x6e8c targets 0x6efc, is taken when v0(=[sym(vec_polls_r)]) <= 0 (signed), and falls through when v0(=[sym(vec_polls_r)]) > 0 (signed).
  The `beq` branch at 0x6e9c targets 0x6ed4, is taken when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566528]:8)) == 0, and falls through when (s1(=0x8000000000000000) & v1(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  The `beq` branch at 0x6eac targets 0x6ed4, is taken when s0(?) >= v0(=[sym(vec_polls_r)]) (signed), and falls through when s0(?) < v0(=[sym(vec_polls_r)]) (signed).
  The `beq` branch at 0x6ebc targets 0x6ed4, is taken when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) == 0, and falls through when (s1(=0x8000000000000000) & a1(=[(a1 << 0x21)-7926335344140566528]:8)) != 0.
  The `bne` branch at 0x6ecc targets 0x6e94, is taken when s0(?) < v0(=[sym(vec_polls_r)]) (signed), and falls through when s0(?) >= v0(=[sym(vec_polls_r)]) (signed).
  The `beq` branch at 0x6ed4 targets 0x6f04, is taken when v0(=[sym(vec_polls_r)]) == s0(?), and falls through when v0(=[sym(vec_polls_r)]) != s0(?).
  The `bgtz` branch at 0x6eec targets 0x6e40, is taken when v0(=[sym(vec_polls_r)]) > 0 (signed), and falls through when v0(=[sym(vec_polls_r)]) <= 0 (signed).
  The `beq` branch at 0x6ef4 targets 0x6f14 and is always taken.
  The `bne` branch at 0x6efc targets 0x6edc, is taken when v0(=[sym(vec_polls_r)]) != 0, and falls through when v0(=[sym(vec_polls_r)]) == 0.
  The `beq` branch at 0x6f0c targets 0x6e68 and is always taken.
  The `beq` branch at 0x6f14 targets 0x6e64, is taken when v0(=[sym(vec_polls_r)]) == 0, and falls through when v0(=[sym(vec_polls_r)]) != 0.
  The `bne` branch at 0x6f24 targets 0x6f38, is taken when (s5(?) & a3(=0x4000000000000000)) != 0, and falls through when (s5(?) & a3(=0x4000000000000000)) == 0.
  The `beq` branch at 0x6f2c targets 0x6fa4 and is always taken.
  The `bne` branch at 0x6f6c targets 0x6fe8, is taken when a4(=a2) != a5(?), and falls through when a4(=a2) == a5(?).
  The `bne` branch at 0x6f80 targets 0x6fe8, is taken when a6(?) != a7(?), and falls through when a6(?) == a7(?).
  The `beq` branch at 0x6f9c targets 0x6f38 and is always taken.
  The `beq` branch at 0x6fb0 targets 0x6ff0, is taken when v0(?) == t3(=0x4), and falls through when v0(?) != t3(=0x4).
  The `beq` branch at 0x6fb8 targets 0x6ff8, is taken when v0(?) == a0(=0x5), and falls through when v0(?) != a0(=0x5).
  The `beq` branch at 0x6fc0 targets 0x7000, is taken when v0(?) == a5(=0x6), and falls through when v0(?) != a5(=0x6).
  The `beq` branch at 0x6fc8 targets 0x6fd8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x6fd0 targets 0x6f38 and is always taken.
  The `beq` branch at 0x6fe0 targets 0x6f64, is taken when t8(?) == t9(=0x1c8), and falls through when t8(?) != t9(=0x1c8).
  The `beq` branch at 0x6fe8 targets 0x6f38 and is always taken.
  The `beq` branch at 0x6ff0 targets 0x6f38 and is always taken.
  The `beq` branch at 0x6ff8 targets 0x6f38 and is always taken.
  The `beq` branch at 0x7000 targets 0x6f38 and is always taken.
  The return at 0x6f5c has v0 = one of -0x2, -0x1, -0x7, 0x0, -0x3, -0x4, -0x5, -0x6.
- `vector_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7008 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7008-0x7050 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x7020 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7038 calls vector_read_node with a0=a0 at entry (arg0), a1=ret(get_nasid), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The return at 0x7048 has v0 = ret(vector_read_node).
- `vector_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7050 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7050-0x7098 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x7068 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7080 calls vector_write_node with a0=a0 at entry (arg0), a1=ret(get_nasid), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The return at 0x7090 has v0 = ret(vector_write_node).
- `vector_length` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7098 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7098-0x70e0 (72 bytes).
  It occupies 72 bytes.
  The `beq` branch at 0x70a0 targets 0x70d8, is taken when (a0 & 0xf) == 0, and falls through when (a0 & 0xf) != 0.
  The `beq` branch at 0x70c0 targets 0x70d8, is taken when (a0 & v1(?)) == 0, and falls through when (a0 & v1(?)) != 0.
  The `bne` branch at 0x70d0 targets 0x70b0, is taken when (a0 & a1(?)) != 0, and falls through when (a0 & a1(?)) == 0.
  The return at 0x70d8 has v0 = one of 0x0, ?.
- `vector_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x70e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x70e0-0x70f0 (16 bytes).
  It occupies 16 bytes.
  The return at 0x70e8 has v0 = ?.
- `vector_prefix` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x70f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x70f0-0x7120 (48 bytes).
  It occupies 48 bytes.
  The `beq` branch at 0x70f0 targets 0x7114, is taken when a1 == 0, and falls through when a1 != 0.
  The return at 0x710c has v0 = ?.
  The return at 0x7118 has v0 = 0x0.
- `vector_modify` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7120 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7120-0x7140 (32 bytes).
  It occupies 32 bytes.
  The return at 0x7138 has v0 = ?.
- `vector_reverse` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7140 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7140-0x7184 (68 bytes).
  It occupies 68 bytes.
  The `beq` branch at 0x7140 targets 0x7178, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x7158 targets 0x7170, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x7168 targets 0x7148, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0x7170 has v0 = ?.
  The return at 0x717c has v0 = 0x0.
- `vector_concat` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7184 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7184-0x71bc (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x7194 calls vector_length with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x71b4 has v0 = ?.
- `net_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x71bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x71bc-0x7240 (132 bytes).
  It occupies 132 bytes.
  The `ld` at 0x71d8 loads 8 bytes from (sym(.rodata)+2744 + (a0+10 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=[(sym(.rodata)+2744 + (a0+10 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+2744 (`jr` at 0x71dc).
  The `beq` branch at 0x71d0 targets 0x71e4, is taken when v1(=a0+10) >= 0xb (unsigned), and falls through when v1(=a0+10) < 0xb (unsigned).
  The return at 0x71e8 has v0 = sym(.rodata)+2744.
  The instructions from 0x71f0 to 0x723c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x71dc uses a jump table whose successors are unresolved.
- `hub_vector_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7240-0x7330 (240 bytes).
  It occupies 240 bytes.
  The `ld` at 0x7260 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x7270 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `lh` at 0x7278 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x7290 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lh` at 0x729c loads 2 bytes from abs 0xffffffffffffc42a.
  2 such `sb` accesses store 1 byte to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8594, including `sb` at 0x72f8, `sb` at 0x7304.
  The `jal` at 0x728c calls in_panic_mode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x72a8 calls in_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x72f4 calls vector_read_node with a0=a1 at entry (arg1), a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x730c calls mutex_spinunlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=?.
  The `jal` at 0x7320 calls mutex_spinlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=?.
  The `beq` branch at 0x7294 targets 0x731c, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `beq` branch at 0x72a0 targets 0x72d4, is taken when t8(=[-0x3bd6]:2) == s3(=a0), and falls through when t8(=[-0x3bd6]:2) != s3(=a0).
  The `beq` branch at 0x72b0 targets 0x7308, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `beq` branch at 0x7300 targets 0x72a8 and is always taken.
  The `beq` branch at 0x7314 targets 0x72bc and is always taken.
  The `beq` branch at 0x7328 targets 0x729c and is always taken.
  The return at 0x72cc has v0 = ?.
- `hub_vector_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7330 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7330-0x7420 (240 bytes).
  It occupies 240 bytes.
  The `ld` at 0x7350 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x7360 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `lh` at 0x7368 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x7380 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lh` at 0x738c loads 2 bytes from abs 0xffffffffffffc42a.
  2 such `sb` accesses store 1 byte to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8594, including `sb` at 0x73e4, `sb` at 0x73f0.
  The `jal` at 0x737c calls in_panic_mode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7398 calls in_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x73e0 calls vector_write_node with a0=a1 at entry (arg1), a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x73fc calls mutex_spinunlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=?.
  The `jal` at 0x7410 calls mutex_spinlock with a0=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34192, a1=?, a2=?, a3=?.
  The `beq` branch at 0x7384 targets 0x740c, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `beq` branch at 0x7390 targets 0x73c0, is taken when t8(=[-0x3bd6]:2) == s3(=a0), and falls through when t8(=[-0x3bd6]:2) != s3(=a0).
  The `beq` branch at 0x73a0 targets 0x73f4, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `beq` branch at 0x73ec targets 0x7398 and is always taken.
  The `beq` branch at 0x7404 targets 0x73a8 and is always taken.
  The `beq` branch at 0x7418 targets 0x738c and is always taken.
  The return at 0x73b8 has v0 = ?.
- `cerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7674 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7674-0x7688 (20 bytes).
  It occupies 20 bytes.
  The return at 0x7680 has v0 = -0x1.
- `blkclr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x779c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x779c-0x77d8 (60 bytes).
  It occupies 60 bytes.
  The `sdl` at 0x77a8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x77cc, `sd` at 0x77d0, `sd` at 0x77d4.
  The `bne` branch at 0x77a0 targets 0x7820, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0x77c0 targets 0x77e4, is taken when (a1(?) & at(=-0x20)) == 0, and falls through when (a1(?) & at(=-0x20)) != 0.
- `bzero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x779c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x779c-0x7840 (164 bytes).
  It occupies 164 bytes.
  The `sdl` at 0x77a8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x77cc, `sd` at 0x77d0, `sd` at 0x77d4.
  The `sdr` at 0x781c stores 8 bytes to ?.
  The `sb` at 0x782c stores 1 byte to ?.
  The `bne` branch at 0x77a0 targets 0x7820, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0x77c0 targets 0x77e4, is taken when (a1(?) & at(=-0x20)) == 0, and falls through when (a1(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x77dc targets 0x77c8, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x77e8 targets 0x77fc, is taken when (a1(?) & 0x10) == 0, and falls through when (a1(?) & 0x10) != 0.
  The `beq` branch at 0x77fc targets 0x780c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x7810 targets 0x7838, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x7820 targets 0x7838, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x7830 targets 0x7828, is taken when a0(?) != a3(=(a0 + a1)), and falls through when a0(?) == a3(=(a0 + a1)).
  The return at 0x7818 has v0 = ?.
  The return at 0x7838 has v0 = ?.
- `bzero_end` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7840-0x7848 (8 bytes).
  It occupies 8 bytes.
  The return at 0x7840 has v0 = ?.
- `bzerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7840-0x7848 (8 bytes).
  It occupies 8 bytes.
  The return at 0x7840 has v0 = ?.
- `bcmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7848 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7848-0x7a0c (452 bytes).
  It occupies 452 bytes.
  The `lwl` at 0x7874 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwl` at 0x787c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwr` at 0x7880 loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `lwr` at 0x7888 loads 4 bytes from a1 (arg1 at entry) +0x3.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x78a4, `lw` at 0x78ac, `lw` at 0x78bc.
  3 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x7958, `lwl` at 0x7960, `lwl` at 0x79b8.
  3 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x795c, `lwr` at 0x7964, `lwr` at 0x79c8.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x7984, `lbu` at 0x798c, `lbu` at 0x79e4.
  The `bne` branch at 0x7850 targets 0x79dc, is taken when a2 < 0xb (signed), and falls through when a2 >= 0xb (signed).
  The `bne` branch at 0x7860 targets 0x7970, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `beq` branch at 0x786c targets 0x7894, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `bne` branch at 0x7890 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x789c targets 0x78f8, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x78b4 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78c8 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78d8 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78e8 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78f0 targets 0x78a4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x78fc targets 0x792c, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x7914 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7924 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x792c targets 0x794c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x7944 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x794c targets 0x7a04, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x7978 targets 0x79a4, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x7994 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x799c targets 0x7984, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x79ac targets 0x79dc, is taken when (a2(?) & at(=-0x4)) == 0, and falls through when (a2(?) & at(=-0x4)) != 0.
  The `bne` branch at 0x79cc targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x79d4 targets 0x79b8, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `blez` branch at 0x79dc targets 0x7a04, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x79f4 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x79fc targets 0x79e4, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The return at 0x7968 has v0 = ?.
  The return at 0x7a04 has v0 = 0x0.
- `memcmp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7848 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7848-0x7a0c (452 bytes).
  It occupies 452 bytes.
  The `lwl` at 0x7874 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwl` at 0x787c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwr` at 0x7880 loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `lwr` at 0x7888 loads 4 bytes from a1 (arg1 at entry) +0x3.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x78a4, `lw` at 0x78ac, `lw` at 0x78bc.
  3 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x7958, `lwl` at 0x7960, `lwl` at 0x79b8.
  3 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x795c, `lwr` at 0x7964, `lwr` at 0x79c8.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x7984, `lbu` at 0x798c, `lbu` at 0x79e4.
  The `bne` branch at 0x7850 targets 0x79dc, is taken when a2 < 0xb (signed), and falls through when a2 >= 0xb (signed).
  The `bne` branch at 0x7860 targets 0x7970, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `beq` branch at 0x786c targets 0x7894, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `bne` branch at 0x7890 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x789c targets 0x78f8, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x78b4 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78c8 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78d8 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78e8 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x78f0 targets 0x78a4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x78fc targets 0x792c, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x7914 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7924 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x792c targets 0x794c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x7944 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x794c targets 0x7a04, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x7978 targets 0x79a4, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x7994 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x799c targets 0x7984, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x79ac targets 0x79dc, is taken when (a2(?) & at(=-0x4)) == 0, and falls through when (a2(?) & at(=-0x4)) != 0.
  The `bne` branch at 0x79cc targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x79d4 targets 0x79b8, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `blez` branch at 0x79dc targets 0x7a04, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x79f4 targets 0x7968, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x79fc targets 0x79e4, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The return at 0x7968 has v0 = ?.
  The return at 0x7a04 has v0 = 0x0.
- `fubyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b10-0x7b2c (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x7b14 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7b1c, `sh` at 0x7b28.
  The `lbu` at 0x7b20 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7b10 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7b24 has v0 = [a0]:1.
- `fuibyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b10-0x7b2c (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x7b14 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7b1c, `sh` at 0x7b28.
  The `lbu` at 0x7b20 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7b10 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7b24 has v0 = [a0]:1.
- `subyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b70-0x7b90 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7b74 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7b7c, `sh` at 0x7b84.
  The `sb` at 0x7b80 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7b70 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7b88 has v0 = 0x0.
- `suibyte` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b70-0x7b90 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7b74 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7b7c, `sh` at 0x7b84.
  The `sb` at 0x7b80 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7b70 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7b88 has v0 = 0x0.
- `fuiword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b90-0x7bb0 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7b94 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7b9c, `sh` at 0x7ba4.
  The `lw` at 0x7ba0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7b90 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7ba8 has v0 = [a0].
- `fuword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7b90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7b90-0x7bb0 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7b94 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7b9c, `sh` at 0x7ba4.
  The `lw` at 0x7ba0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7b90 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7ba8 has v0 = [a0].
- `suiword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7c54-0x7c74 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7c58 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7c60, `sh` at 0x7c68.
  The `sw` at 0x7c64 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7c54 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7c6c has v0 = 0x0.
- `suword` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7c54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7c54-0x7c74 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7c58 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7c60, `sh` at 0x7c68.
  The `sw` at 0x7c64 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7c54 targets 0x7ccc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7c6c has v0 = 0x0.
- `uerror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7ccc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7ccc-0x7cd4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x7ccc has v0 = -0x1.
- `memcpy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e2c-0x82cc (1184 bytes).
  It occupies 1184 bytes.
  The `ldl` at 0x7e78 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdl` at 0x7e88 stores 8 bytes to a0 (arg0 at entry) +0x0.
  16 such `ld` accesses load 8 bytes from ?, including `ld` at 0x7ea4, `ld` at 0x7ea8, `ld` at 0x7eb0.
  16 such `sd` accesses store 8 bytes to ?, including `sd` at 0x7ed0, `sd` at 0x7ed4, `sd` at 0x7ed8.
  The `lwl` at 0x7f68 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swl` at 0x7f78 stores 4 bytes to a0 (arg0 at entry) +0x0.
  28 such `lw` accesses load 4 bytes from ?, including `lw` at 0x7f94, `lw` at 0x7f9c, `lw` at 0x7fa4.
  35 such `sw` accesses store 4 bytes to ?, including `sw` at 0x7fbc, `sw` at 0x7fc0, `sw` at 0x7fc4.
  8 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x8060, `lwr` at 0x80b8, `lwr` at 0x80c4.
  The `swr` at 0x8070 stores 4 bytes to ?.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0x8088, `lb` at 0x8140, `lb` at 0x8190.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x8098, `sb` at 0x8150, `sb` at 0x81a0.
  7 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x80b0, `lwl` at 0x80c0, `lwl` at 0x80cc.
  2 such `lb` accesses load 1 byte from (a1 + a2) -0x1, including `lb` at 0x81c4, `lb` at 0x81f4.
  2 such `sb` accesses store 1 byte to (a0 + a2) -0x1, including `sb` at 0x81d8, `sb` at 0x8208.
  The `lh` at 0x81dc loads 2 bytes from (a1 + a2) -0x2.
  The `sh` at 0x81f0 stores 2 bytes to (a0 + a2) -0x2.
  The `lh` at 0x81fc loads 2 bytes from (a1 + a2) -0x3.
  The `sh` at 0x820c stores 2 bytes to (a0 + a2) -0x3.
  The `beq` branch at 0x7e40 targets 0x7e50, is taken when a0(=a1) >= a1(=a0) (signed), and falls through when a0(=a1) < a1(=a0) (signed).
  The `bne` branch at 0x7e4c targets 0x815c, is taken when a1(=a0) < v0(=(a1 + a2)) (signed), and falls through when a1(=a0) >= v0(=(a1 + a2)) (signed).
  The `bne` branch at 0x7e54 targets 0x8138, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7e68 targets 0x7f4c, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x7e70 targets 0x7e90, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7e98 targets 0x7f80, is taken when (a2(?) & at(=-0x40)) == 0, and falls through when (a2(?) & at(=-0x40)) != 0.
  The `beq` branch at 0x7eec targets 0x7f44, is taken when a3(?) == a1(?), and falls through when a3(?) != a1(?).
  The `bne` branch at 0x7f3c targets 0x7ea4, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x7f44 targets 0x7f80 and is always taken.
  The `bne` branch at 0x7f58 targets 0x8074, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x7f60 targets 0x7f80, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7f88 targets 0x7fe0, is taken when (a2(?) & at(=-0x20)) == 0, and falls through when (a2(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x7fd8 targets 0x7f94, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x7fe4 targets 0x8014, is taken when (a2(?) & 0x10) == 0, and falls through when (a2(?) & 0x10) != 0.
  The `beq` branch at 0x8018 targets 0x8038, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x803c targets 0x8054, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x8058 targets 0x8154, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beq` branch at 0x8074 targets 0x809c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x8094 targets 0x8088, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `beq` branch at 0x80a4 targets 0x80ec, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x80e4 targets 0x80b0, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x80f0 targets 0x8118, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x811c targets 0x8138, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x8138 targets 0x8154, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x814c targets 0x8140, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `bne` branch at 0x8164 targets 0x817c, is taken when a2 < 0xc (signed), and falls through when a2 >= 0xc (signed).
  The `beq` branch at 0x8174 targets 0x81ac, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0x817c targets 0x8154, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x819c targets 0x8190, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x81ac targets 0x8210, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x81b4 targets 0x81f4, is taken when v0(?) == at(=0x3), and falls through when v0(?) != at(=0x3).
  The `beq` branch at 0x81bc targets 0x81dc, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0x81d4 targets 0x8210 and is always taken.
  The `beq` branch at 0x81ec targets 0x8210 and is always taken.
  The `bne` branch at 0x8214 targets 0x826c, is taken when a2(?) < 0x20 (signed), and falls through when a2(?) >= 0x20 (signed).
  The `beq` branch at 0x8264 targets 0x8210 and is always taken.
  The `bne` branch at 0x8270 targets 0x82a8, is taken when a2(?) < 0x10 (signed), and falls through when a2(?) >= 0x10 (signed).
  The `beq` branch at 0x82a0 targets 0x826c and is always taken.
  The `bne` branch at 0x82ac targets 0x817c, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The `beq` branch at 0x82c4 targets 0x82a8 and is always taken.
  The return at 0x806c has v0 = a0.
  The return at 0x8154 has v0 = a0.
  The return at 0x81a4 has v0 = a0.
- `memmove` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e2c-0x7e38 (12 bytes).
  It occupies 12 bytes.
- `bcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e38-0x7eac (116 bytes).
  It occupies 116 bytes.
  The `ldl` at 0x7e78 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdl` at 0x7e88 stores 8 bytes to a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x7ea4, `ld` at 0x7ea8.
  The `beq` branch at 0x7e40 targets 0x7e50, is taken when a0 >= a1 (signed), and falls through when a0 < a1 (signed).
  The `bne` branch at 0x7e4c targets 0x815c, is taken when a1 < v0(=(a0 + a2)) (signed), and falls through when a1 >= v0(=(a0 + a2)) (signed).
  The `bne` branch at 0x7e54 targets 0x8138, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7e68 targets 0x7f4c, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x7e70 targets 0x7e90, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7e98 targets 0x7f80, is taken when (a2(?) & at(=-0x40)) == 0, and falls through when (a2(?) & at(=-0x40)) != 0.
- `ovbcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7e38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7e38-0x7eac (116 bytes).
  It occupies 116 bytes.
  The `ldl` at 0x7e78 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdl` at 0x7e88 stores 8 bytes to a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x7ea4, `ld` at 0x7ea8.
  The `beq` branch at 0x7e40 targets 0x7e50, is taken when a0 >= a1 (signed), and falls through when a0 < a1 (signed).
  The `bne` branch at 0x7e4c targets 0x815c, is taken when a1 < v0(=(a0 + a2)) (signed), and falls through when a1 >= v0(=(a0 + a2)) (signed).
  The `bne` branch at 0x7e54 targets 0x8138, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7e68 targets 0x7f4c, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x7e70 targets 0x7e90, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7e98 targets 0x7f80, is taken when (a2(?) & at(=-0x40)) == 0, and falls through when (a2(?) & at(=-0x40)) != 0.
- `bcopy_pref1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x7eac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x7eac-0x7efc (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x7eb0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x7eb8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x7ec0 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x7ec4 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x7ec8 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x7ecc loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sd` at 0x7ed0 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `sd` at 0x7ed4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0x7ed8 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x7edc stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `sd` at 0x7ee0 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x7ee4 stores 8 bytes to a1 (arg1 at entry) +0x30.
  The `sd` at 0x7ee8 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `sd` at 0x7ef0 stores 8 bytes to a1 (arg1 at entry) +0x38.
  The `ld` at 0x7ef4 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x7ef8 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `beq` branch at 0x7eec targets 0x7f44, is taken when a3 == a1(=a1+64), and falls through when a3 != a1(=a1+64).
- `bcopy_end` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x82cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x82cc-0x8304 (56 bytes).
  It occupies 56 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x82dc, `lb` at 0x82e4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x82f0, `sb` at 0x82f8.
  The `beq` branch at 0x82cc targets 0x82fc, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x82d4 targets 0x82fc, is taken when a0 == a1, and falls through when a0 != a1.
  The `bgtz` branch at 0x82f4 targets 0x82dc, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x82fc has v0 = ?.
- `swbcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x82cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x82cc-0x8304 (56 bytes).
  It occupies 56 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x82dc, `lb` at 0x82e4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x82f0, `sb` at 0x82f8.
  The `beq` branch at 0x82cc targets 0x82fc, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x82d4 targets 0x82fc, is taken when a0 == a1, and falls through when a0 != a1.
  The `bgtz` branch at 0x82f4 targets 0x82dc, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x82fc has v0 = ?.
- `pl_strncpy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8384 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8384-0x83e8 (100 bytes).
  It occupies 100 bytes.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x8394, `lbu` at 0x83bc.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x83a0, `sb` at 0x83c8.
  The `beq` branch at 0x838c targets 0x83dc and is always taken.
  The `beq` branch at 0x839c targets 0x83d4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x83b4 targets 0x83d4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x83c4 targets 0x83d4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x83cc targets 0x8394, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x83e0 targets 0x83ac and is always taken.
  The return at 0x83d4 has v0 = a0.
- `get_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x83e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x83e8-0x8488 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x83e8 loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x83ec, `lw` at 0x8470.
  The `lw` at 0x8410 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x8420 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x8430 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `jal` at 0x8444 calls fprom_read with a0=a0 at entry (arg0), a1=[a0+180], a2=a0+184, a3=a1 at entry (arg1), a6=[a0+180].
  The `jal` at 0x8468 calls fprom_errmsg with a0=ret(fprom_read), a1=?, a2=?, a3=?.
  The `jal` at 0x8478 calls printf with a0=sym(.rodata)+3120, a1=[a0+180], a2=ret(fprom_errmsg), a3=?.
  The `bne` branch at 0x8408 targets 0x8420, is taken when a6(=[a0+180]) < at(=[a0+172]) (unsigned), and falls through when a6(=[a0+180]) >= at(=[a0+172]) (unsigned).
  The `bne` branch at 0x8418 targets 0x8440, is taken when a6(=[a0+180]) < v1(=[a0+176]) (unsigned), and falls through when a6(=[a0+180]) >= v1(=[a0+176]) (unsigned).
  The `bne` branch at 0x8428 targets 0x8458, is taken when a6(=[a0+180]) < a0(=[a0+164]) (unsigned), and falls through when a6(=[a0+180]) >= a0(=[a0+164]) (unsigned).
  The `beq` branch at 0x8438 targets 0x8458, is taken when a6(=[a0+180]) >= a1(=[a0+168]) (unsigned), and falls through when a6(=[a0+180]) < a1(=[a0+168]) (unsigned).
  The `bltz` branch at 0x844c targets 0x8468, is taken when v0(=ret(fprom_read)) < 0 (signed), and falls through when v0(=ret(fprom_read)) >= 0 (signed).
  The `beq` branch at 0x8480 targets 0x8458 and is always taken.
  The return at 0x8460 has v0 = one of -0x3, -0x1, 0x0.
- `get_header` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8488 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8488-0x84e8 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x8490 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `jal` at 0x84a4 calls fprom_read with a0=a0 at entry (arg0), a1=(([a0+152] + a1) << 0x10), a2=a2 at entry (arg2), a3=0x1c, a4=[a0+152].
  The `jal` at 0x84c4 calls fprom_errmsg with a0=ret(fprom_read), a1=?, a2=?, a3=?.
  The `jal` at 0x84d8 calls printf with a0=sym(.rodata)+3120, a1=a1 at entry (arg1), a2=ret(fprom_errmsg), a3=?.
  The `bltz` branch at 0x84ac targets 0x84c4, is taken when v0(=ret(fprom_read)) < 0 (signed), and falls through when v0(=ret(fprom_read)) >= 0 (signed).
  The `beq` branch at 0x84e0 targets 0x84b8 and is always taken.
  The return at 0x84bc has v0 = one of -0x1, 0x0.
- `put_header` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x84e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x84e8-0x8548 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x84f0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `jal` at 0x8504 calls fprom_write with a0=a0 at entry (arg0), a1=(([a0+152] + a1) << 0x10), a2=a2 at entry (arg2), a3=0x1c, a4=[a0+152].
  The `jal` at 0x8524 calls fprom_errmsg with a0=ret(fprom_write), a1=?, a2=?, a3=?.
  The `jal` at 0x8538 calls printf with a0=sym(.rodata)+3120, a1=a1 at entry (arg1), a2=ret(fprom_errmsg), a3=?.
  The `bltz` branch at 0x850c targets 0x8524, is taken when v0(=ret(fprom_write)) < 0 (signed), and falls through when v0(=ret(fprom_write)) >= 0 (signed).
  The `beq` branch at 0x8540 targets 0x8518 and is always taken.
  The return at 0x851c has v0 = one of -0x1, 0x0.
- `swap_log_alt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8548 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8548-0x8580 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x8548 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x854c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x8550 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x8554 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `sw` at 0x8558 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `sw` at 0x855c stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x8560 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x8564 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `lw` at 0x8568 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `sw` at 0x8570 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The `sw` at 0x857c stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The return at 0x8578 has v0 = [a0+160].
- `set_ranges` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8580 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8580-0x85b8 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x8580 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0x8598 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x85a0 stores 4 bytes to a0 (arg0 at entry) +0xac.
  The `sw` at 0x85a8 stores 4 bytes to a0 (arg0 at entry) +0xa8.
  The `sw` at 0x85b4 stores 4 bytes to a0 (arg0 at entry) +0xa4.
  The return at 0x85b0 has v0 = ([a0+152] << 0x10)+65536.
- `promlog_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x85b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x85b8-0x8694 (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x85e4 stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `sw` at 0x85e8 stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `sw` at 0x85f8 stores 4 bytes to a0 (arg0 at entry) +0x9c.
  The `lw` at 0x8684 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x8690 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `jal` at 0x85dc calls bcopy with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x98, a3=a3 at entry (arg3).
  The `jal` at 0x85f4 calls set_ranges [0x8580] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x8604 calls get_header [0x8488] with a0=a0 at entry (arg0), a1=0x0, a2=sp-96, a3=?.
  The `jal` at 0x861c calls get_header [0x8488] with a0=a0 at entry (arg0), a1=0x1, a2=sp-64, a3=?.
  The `jal` at 0x867c calls swap_log_alt [0x8548] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x504c4f49, a4=0x504c0000.
  The `bltz` branch at 0x860c targets 0x864c, is taken when v0(=ret(get_header)) < 0 (signed), and falls through when v0(=ret(get_header)) >= 0 (signed).
  The `bltz` branch at 0x8628 targets 0x864c, is taken when v0(=ret(get_header)) < 0 (signed), and falls through when v0(=ret(get_header)) >= 0 (signed).
  The `beq` branch at 0x863c targets 0x8664, is taken when a3(=0x504c4f49) == v1(?), and falls through when a3(=0x504c4f49) != v1(?).
  The `beq` branch at 0x8644 targets 0x867c, is taken when a3(=0x504c4f49) == v0(?), and falls through when a3(=0x504c4f49) != v0(?).
  The `bne` branch at 0x8664 targets 0x8684, is taken when a3(=0x504c4f49) != v0(?), and falls through when a3(=0x504c4f49) == v0(?).
  The `beq` branch at 0x8674 targets 0x8684, is taken when a0(?) >= a1(?) (unsigned), and falls through when a0(?) < a1(?) (unsigned).
  The `beq` branch at 0x868c targets 0x864c and is always taken.
  The return at 0x865c has v0 = one of ret(get_header), -0x2, 0x0.
- `promlog_clear` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8694 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8694-0x87f4 (352 bytes).
  It occupies 352 bytes.
  The `lw` at 0x8728 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0x874c stores 4 bytes to a0 (arg0 at entry) +0xa0.
  The `lw` at 0x8760 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x876c stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `jal` at 0x86ac calls get_header [0x8488] with a0=a0 at entry (arg0), a1=0x0, a2=sp-80, a3=a3 at entry (arg3).
  The `jal` at 0x86c4 calls get_header [0x8488] with a0=a0 at entry (arg0), a1=0x1, a2=sp-48, a3=?.
  The `jal` at 0x873c calls fprom_flash_sectors with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+152]+1, a5=-0x1.
  The `jal` at 0x8750 calls set_ranges [0x8580] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x8768 calls put_header [0x84e8] with a0=a0 at entry (arg0), a1=0x0, a2=sp-80, a3=?, a6=[a0+164].
  The `jal` at 0x8794 calls promlog_compact with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x87a4 calls promlog_compact with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x87b4 calls fprom_errmsg with a0=ret(fprom_flash_sectors), a1=?, a2=?, a3=?.
  The `jal` at 0x87c4 calls printf with a0=sym(.rodata)+3120, a1=ret(fprom_errmsg), a2=?, a3=?.
  The `beq` branch at 0x86a0 targets 0x8794, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x86b4 targets 0x8780, is taken when v0(=ret(get_header)) < 0 (signed), and falls through when v0(=ret(get_header)) >= 0 (signed).
  The `bltz` branch at 0x86d0 targets 0x8780, is taken when v0(=ret(get_header)) < 0 (signed), and falls through when v0(=ret(get_header)) >= 0 (signed).
  The `beq` branch at 0x86ec targets 0x87d4, is taken when v0(=0x504c4f49) == at(?), and falls through when v0(=0x504c4f49) != at(?).
  The `bltz` branch at 0x8744 targets 0x87b4, is taken when v0(=ret(fprom_flash_sectors)) < 0 (signed), and falls through when v0(=ret(fprom_flash_sectors)) >= 0 (signed).
  The `bltz` branch at 0x879c targets 0x8780, is taken when v0(=ret(promlog_compact)) < 0 (signed), and falls through when v0(=ret(promlog_compact)) >= 0 (signed).
  The `beq` branch at 0x87ac targets 0x8780 and is always taken.
  The `beq` branch at 0x87cc targets 0x8780 and is always taken.
  The `beq` branch at 0x87d4 targets 0x87e8, is taken when v0(=0x504c4f49) == a0(?), and falls through when v0(=0x504c4f49) != a0(?).
  The `beq` branch at 0x87e0 targets 0x8704 and is always taken.
  The `beq` branch at 0x87ec targets 0x8700 and is always taken.
  The return at 0x878c has v0 = one of ret(get_header), ?, ret(promlog_compact), -0x1.
- `promlog_type` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x87f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x87f4-0x882c (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x8818 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jal` at 0x8800 calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x880c targets 0x8820, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The return at 0x8824 has v0 = one of ret(get_entry), ?.
- `promlog_first` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x882c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x882c-0x88d8 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x884c loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x885c stores 4 bytes to a0 (arg0 at entry) +0xb4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x8870, `lw` at 0x88b0.
  The `lw` at 0x88d4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `jal` at 0x8858 calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x88a8 calls promlog_next with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a4=0xf.
  The `beq` branch at 0x8844 targets 0x88d0, is taken when a1 == at(=0x3), and falls through when a1 != at(=0x3).
  The `bltz` branch at 0x8868 targets 0x888c, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The `beq` branch at 0x8878 targets 0x88a4, is taken when a4(=0xf) == v0(?), and falls through when a4(=0xf) != v0(?).
  The `beq` branch at 0x8880 targets 0x8890, is taken when s1(=a1) == a1(=0x62), and falls through when s1(=a1) != a1(=0x62).
  The `bne` branch at 0x8888 targets 0x88a4, is taken when s1(=a1) != v0(?), and falls through when s1(=a1) == v0(?).
  The `beq` branch at 0x88c8 targets 0x888c and is always taken.
  The `beq` branch at 0x88d0 targets 0x8850 and is always taken.
  The return at 0x889c has v0 = one of ret(get_entry), ?.
- `promlog_prev` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x88d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x88d8-0x8a18 (320 bytes).
  It occupies 320 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xac, including `lw` at 0x88d8, `lw` at 0x8958, `lw` at 0x89dc.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x88dc, `lw` at 0x894c, `lw` at 0x89f8.
  The `lw` at 0x8900 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x8938, `lw` at 0x89c0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xb4, including `sw` at 0x8940, `sw` at 0x8970, `sw` at 0x89e8.
  The `lw` at 0x8984 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jal` at 0x896c calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x89e4 calls promlog_last with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?, a4=[a0+164], a5=0x3, a6=[a0+172].
  The `bne` branch at 0x88f8 targets 0x8918, is taken when v0(=[a0+180]) < at(=[a0+172]) (unsigned), and falls through when v0(=[a0+180]) >= at(=[a0+172]) (unsigned).
  The `beq` branch at 0x8908 targets 0x8918, is taken when v0(=[a0+180]) >= v1(=[a0+176]) (unsigned), and falls through when v0(=[a0+180]) < v1(=[a0+176]) (unsigned).
  The `beq` branch at 0x8910 targets 0x8920 and is always taken.
  The `beq` branch at 0x8920 targets 0x8a10, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x8928 targets 0x8944, is taken when s1(=a1) == a0(=0x3), and falls through when s1(=a1) != a0(=0x3).
  The `beq` branch at 0x8930 targets 0x8944, is taken when s1(=a1) == s3(=0x62), and falls through when s1(=a1) != s3(=0x62).
  The `beq` branch at 0x8944 targets 0x8950 and is always taken.
  The `beq` branch at 0x8950 targets 0x89c0, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x895c targets 0x899c, is taken when a1(=[a0+172]) == v0(?), and falls through when a1(=[a0+172]) != v0(?).
  The `bltz` branch at 0x8974 targets 0x89a0, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The `beq` branch at 0x897c targets 0x8994, is taken when s1(=a1) == s3(=0x62), and falls through when s1(=a1) != s3(=0x62).
  The `bne` branch at 0x898c targets 0x894c, is taken when s1(=a1) != a3(?), and falls through when s1(=a1) == a3(?).
  The `beq` branch at 0x8994 targets 0x89a0 and is always taken.
  The `bne` branch at 0x89c4 targets 0x8964, is taken when a4(=[a0+164]) != v0(?), and falls through when a4(=[a0+164]) == v0(?).
  The `bne` branch at 0x89cc targets 0x89a0, is taken when s1(=a1) != a5(=0x3), and falls through when s1(=a1) == a5(=0x3).
  The `bne` branch at 0x89d4 targets 0x89a0, is taken when s1(=a1) != s3(=0x62), and falls through when s1(=a1) == s3(=0x62).
  The `bltz` branch at 0x89f0 targets 0x89a0, is taken when v0(=ret(promlog_last)) < 0 (signed), and falls through when v0(=ret(promlog_last)) >= 0 (signed).
  The `beq` branch at 0x8a00 targets 0x89a0, is taken when a7(=[a0+172]) == v0(=[a0+180]), and falls through when a7(=[a0+172]) != v0(=[a0+180]).
  The `beq` branch at 0x8a08 targets 0x8964 and is always taken.
  The `beq` branch at 0x8a10 targets 0x8944 and is always taken.
  The return at 0x89b8 has v0 = one of ret(get_entry), 0x0, -0x4, ret(promlog_last).
- `promlog_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8a18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8a18-0x8b6c (340 bytes).
  It occupies 340 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb0, including `lw` at 0x8a18, `lw` at 0x8ad0.
  The `lw` at 0x8a28 loads 4 bytes from a0 (arg0 at entry) +0xac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x8a2c, `lw` at 0x8acc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x8a80, `lw` at 0x8a94, `lw` at 0x8aa4.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xb4, including `sw` at 0x8a8c, `sw` at 0x8aac, `sw` at 0x8ae0.
  The `lw` at 0x8af0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x8b10 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jal` at 0x8b00 calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `bne` branch at 0x8a4c targets 0x8a64, is taken when v0(=[a0+180]) < at(=[a0+172]) (unsigned), and falls through when v0(=[a0+180]) >= at(=[a0+172]) (unsigned).
  The `bne` branch at 0x8a5c targets 0x8a68, is taken when v0(=[a0+180]) < a4(=[a0+176]) (unsigned), and falls through when v0(=[a0+180]) >= a4(=[a0+176]) (unsigned).
  The `beq` branch at 0x8a68 targets 0x8a98, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x8a70 targets 0x8a9c, is taken when s2(=a1) == a5(=0x3), and falls through when s2(=a1) != a5(=0x3).
  The `beq` branch at 0x8a78 targets 0x8a9c, is taken when s2(=a1) == s4(=0x62), and falls through when s2(=a1) != s4(=0x62).
  The `bne` branch at 0x8a88 targets 0x8ab0, is taken when v0(=[a0+164]) != a4(=[a0+176]), and falls through when v0(=[a0+164]) == a4(=[a0+176]).
  The `beq` branch at 0x8a90 targets 0x8aa8 and is always taken.
  The `bne` branch at 0x8a9c targets 0x8ab4, is taken when v0(=[a0+180]) != a4(=[a0+176]), and falls through when v0(=[a0+180]) == a4(=[a0+176]).
  The `beq` branch at 0x8ab4 targets 0x8ad8 and is always taken.
  The `beq` branch at 0x8abc targets 0x8b5c, is taken when s2(=a1) == s4(=0x62), and falls through when s2(=a1) != s4(=0x62).
  The `beq` branch at 0x8ac4 targets 0x8b5c, is taken when s2(=a1) == v0(?), and falls through when s2(=a1) != v0(?).
  The `bne` branch at 0x8adc targets 0x8af0, is taken when a4(=[a0+176]) != a0(?), and falls through when a4(=[a0+176]) == a0(?).
  The `beq` branch at 0x8af4 targets 0x8b38, is taken when a1(=[a0+168]) == v0(?), and falls through when a1(=[a0+168]) != v0(?).
  The `bltz` branch at 0x8b08 targets 0x8b38, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The `bne` branch at 0x8b18 targets 0x8abc, is taken when s3(=0xf) != v0(?), and falls through when s3(=0xf) == v0(?).
  The `beq` branch at 0x8b20 targets 0x8b64, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x8b30 targets 0x8afc and is always taken.
  The `beq` branch at 0x8b5c targets 0x8b38 and is always taken.
  The `beq` branch at 0x8b64 targets 0x8b38 and is always taken.
  The return at 0x8b54 has v0 = one of -0x5, ret(get_entry), 0x0, -0xb.
- `promlog_last` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8b6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8b6c-0x8bfc (144 bytes).
  It occupies 144 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa8, including `lw` at 0x8b6c, `lw` at 0x8bbc.
  The `lw` at 0x8b70 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x8ba8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lwu` at 0x8bb8 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `sw` at 0x8bd0 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `jal` at 0x8b98 calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x8b8c targets 0x8bd4, is taken when at(=[a0+180]) >= v0(=[a0+168]) (unsigned), and falls through when at(=[a0+180]) < v0(=[a0+168]) (unsigned).
  The `bltz` branch at 0x8ba0 targets 0x8bf4, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The `beq` branch at 0x8bb0 targets 0x8bec, is taken when s1(=0xf) == v1(?), and falls through when s1(=0xf) != v1(?).
  The `bne` branch at 0x8bcc targets 0x8b94, is taken when a0(=[a0+180]+64) < a1(=[a0+168]) (unsigned), and falls through when a0(=[a0+180]+64) >= a1(=[a0+168]) (unsigned).
  The `beq` branch at 0x8bec targets 0x8bd8 and is always taken.
  The `beq` branch at 0x8bf4 targets 0x8bdc and is always taken.
  The return at 0x8be4 has v0 = one of -0x5, 0x0, ret(get_entry).
- `promlog_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8bfc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8bfc-0x8ca0 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x8c2c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jal` at 0x8c1c calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8c74 calls pl_strncpy [0x8384] with a0=a1 at entry (arg1), a1=a0+185, a2=0xe, a3=?, a4=-0x6.
  The `jal` at 0x8c88 calls pl_strncpy [0x8384] with a0=a2 at entry (arg2), a1=a0+200, a2=0x2f, a3=?.
  The `bltz` branch at 0x8c24 targets 0x8c54, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The `beq` branch at 0x8c38 targets 0x8c98, is taken when at(?) == v0(=0xf), and falls through when at(?) != v0(=0xf).
  The `bne` branch at 0x8c40 targets 0x8c70, is taken when s2(=a1) != 0, and falls through when s2(=a1) == 0.
  The `bne` branch at 0x8c48 targets 0x8c84, is taken when s1(=a2) != 0, and falls through when s1(=a2) == 0.
  The `beq` branch at 0x8c7c targets 0x8c48 and is always taken.
  The `beq` branch at 0x8c90 targets 0x8c54 and is always taken.
  The `beq` branch at 0x8c98 targets 0x8c58 and is always taken.
  The return at 0x8c68 has v0 = one of ?, -0x6.
- `promlog_find` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8ca0-0x8d7c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x8ca0 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x8ca4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x8cac loads 4 bytes from a0 (arg0 at entry) +0xb4.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x8cf4, `lw` at 0x8d04, `lw` at 0x8d10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xb4, including `sw` at 0x8cfc, `sw` at 0x8d14.
  The `jal` at 0x8d20 calls promlog_get with a0=a0 at entry (arg0), a1=sp-48, a2=0x0, a3=?.
  The `jal` at 0x8d38 calls strncmp with a0=sp-48, a1=a1 at entry (arg1), a2=0xe, a3=?.
  The `jal` at 0x8d48 calls promlog_next with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `bne` branch at 0x8ccc targets 0x8d08, is taken when v0(=[a0+180]) < at(=[a0+172]) (unsigned), and falls through when v0(=[a0+180]) >= at(=[a0+172]) (unsigned).
  The `beq` branch at 0x8cdc targets 0x8d08, is taken when v0(=[a0+180]) >= a5(=[a0+176]) (unsigned), and falls through when v0(=[a0+180]) < a5(=[a0+176]) (unsigned).
  The `beq` branch at 0x8ce4 targets 0x8d08, is taken when a2 == a0(=0x3), and falls through when a2 != a0(=0x3).
  The `beq` branch at 0x8cec targets 0x8d08, is taken when a2 == a1(=0x62), and falls through when a2 != a1(=0x62).
  The `bne` branch at 0x8cf8 targets 0x8d18, is taken when v0(=[a0+164]) != a5(=[a0+176]), and falls through when v0(=[a0+164]) == a5(=[a0+176]).
  The `beq` branch at 0x8d00 targets 0x8d14 and is always taken.
  The `bne` branch at 0x8d08 targets 0x8d18, is taken when v0(=[a0+180]) != a5(=[a0+176]), and falls through when v0(=[a0+180]) == a5(=[a0+176]).
  The `bltz` branch at 0x8d28 targets 0x8d58, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `beq` branch at 0x8d40 targets 0x8d74, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bgez` branch at 0x8d50 targets 0x8d18, is taken when v0(=ret(promlog_next)) >= 0 (signed), and falls through when v0(=ret(promlog_next)) < 0 (signed).
  The `beq` branch at 0x8d74 targets 0x8d58 and is always taken.
  The return at 0x8d6c has v0 = one of ret(promlog_get), ret(promlog_next), 0x0.
- `promlog_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8d7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8d7c-0x8e2c (176 bytes).
  It occupies 176 bytes.
  The `sb` at 0x8e0c stores 1 byte to a2 (arg2 at entry) +0x0.
  The `jal` at 0x8da0 calls promlog_first with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8db8 calls promlog_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=?.
  The `jal` at 0x8dd0 calls promlog_get with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x8dfc calls pl_strncpy [0x8384] with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x2f, a3=?.
  The `bltz` branch at 0x8da8 targets 0x8ddc, is taken when v0(=ret(promlog_first)) < 0 (signed), and falls through when v0(=ret(promlog_first)) >= 0 (signed).
  The `bltz` branch at 0x8dc0 targets 0x8ddc, is taken when v0(=ret(promlog_find)) < 0 (signed), and falls through when v0(=ret(promlog_find)) >= 0 (signed).
  The `bgez` branch at 0x8ddc targets 0x8e14, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0x8de4 targets 0x8e14, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x8df0 targets 0x8e0c, is taken when at(=a3) == 0, and falls through when at(=a3) != 0.
  The `beq` branch at 0x8e04 targets 0x8e14 and is always taken.
  The return at 0x8e24 has v0 = ?.
- `validate_or_replace` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8e2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8e2c-0x8f74 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0x8ea0 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x8eb4 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `sw` at 0x8ee0 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `lw` at 0x8f04 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jal` at 0x8e54 calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8e68 calls strlen with a0=a2 at entry (arg2), a1=-0xa, a2=?, a3=?.
  The `jal` at 0x8edc calls pl_strncpy [0x8384] with a0=a0+185, a1=a1 at entry (arg1), a2=0xe, a3=?, a4=0xfffffffff0ffffff.
  The `jal` at 0x8eec calls pl_strncpy [0x8384] with a0=a0+200, a1=a2 at entry (arg2), a2=0x2f, a3=?.
  The `jalr` at 0x8f08 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+180], a2=a0+184, a3=0x40.
  The `jal` at 0x8f30 calls fprom_errmsg with a0=?, a1=?, a2=?, a3=?, a4=-0x3.
  The `jal` at 0x8f40 calls printf with a0=sym(.rodata)+3120, a1=sym(.rodata)+3120, a2=ret(fprom_errmsg), a3=?.
  The `beq` branch at 0x8e60 targets 0x8e80, is taken when v0(=ret(strlen)) >= 0xf (unsigned), and falls through when v0(=ret(strlen)) < 0xf (unsigned).
  The `bne` branch at 0x8e74 targets 0x8e9c, is taken when v0(=ret(strlen)) < 0x30 (unsigned), and falls through when v0(=ret(strlen)) >= 0x30 (unsigned).
  The `beq` branch at 0x8ef4 targets 0x8f50, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `bltz` branch at 0x8f10 targets 0x8f20, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0x8f18 targets 0x8e84 and is always taken.
  The `beq` branch at 0x8f20 targets 0x8f5c, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `beq` branch at 0x8f48 targets 0x8e80 and is always taken.
  The `beq` branch at 0x8f54 targets 0x8f00 and is always taken.
  The `beq` branch at 0x8f5c targets 0x8f6c, is taken when v0(?) == a4(=-0x3), and falls through when v0(?) != a4(=-0x3).
  The `beq` branch at 0x8f64 targets 0x8f30 and is always taken.
  The `beq` branch at 0x8f6c targets 0x8e80 and is always taken.
  The return at 0x8e94 has v0 = one of -0xa, -0x1, 0x0, ?.
- `promlog_compact` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x8f74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x8f74-0x9120 (428 bytes).
  It occupies 428 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa0, including `lw` at 0x8f7c, `lw` at 0x9088, `lw` at 0x90d0.
  The `lw` at 0x8f80 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `lw` at 0x8fbc loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x8fc0 loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `sw` at 0x8fc8 stores 4 bytes to a0 (arg0 at entry) +0xb4.
  The `lw` at 0x8fe4 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `lw` at 0x8fe8 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x9004 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `jal` at 0x8fa0 calls fprom_flash_sectors with a0=a0 at entry (arg0), a1=?, a2=[a0+160], a3=a3 at entry (arg3).
  The `jal` at 0x8fd4 calls promlog_next with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=?.
  The `jal` at 0x8ff4 calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x40, a2=?, a3=?, a4=[a0+168].
  The `jal` at 0x9028 calls fprom_write with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x40.
  The `jal` at 0x9038 calls fprom_errmsg with a0=ret(fprom_write), a1=?, a2=?, a3=?.
  The `jal` at 0x9048 calls printf with a0=sym(.rodata)+3120, a1=ret(fprom_errmsg), a2=?, a3=?.
  The `jal` at 0x9058 calls promlog_errmsg with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9064 calls printf with a0=sym(.rodata)+3120, a1=ret(promlog_errmsg), a2=?, a3=?.
  The `jal` at 0x908c calls get_header [0x8488] with a0=a0 at entry (arg0), a1=[a0+160], a2=sp-112, a3=?.
  The `jal` at 0x90d8 calls put_header [0x84e8] with a0=a0 at entry (arg0), a1=?, a2=sp-80, a3=?, a4=0x504c4f49, a5=-0x1.
  The `jal` at 0x90e8 calls swap_log_alt [0x8548] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x90f0 calls promlog_last with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x8fac targets 0x90fc, is taken when v0(=ret(fprom_flash_sectors)) < 0 (signed), and falls through when v0(=ret(fprom_flash_sectors)) >= 0 (signed).
  The `beq` branch at 0x8fc4 targets 0x8fe8 and is always taken.
  The `bltz` branch at 0x8fdc targets 0x9074, is taken when v0(=ret(promlog_next)) < 0 (signed), and falls through when v0(=ret(promlog_next)) >= 0 (signed).
  The `beq` branch at 0x8fec targets 0x9084, is taken when a4(=[a0+168]) == v0(?), and falls through when a4(=[a0+168]) != v0(?).
  The `bltz` branch at 0x8ffc targets 0x90fc, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The `beq` branch at 0x900c targets 0x901c, is taken when s3(=0x1) == v0(?), and falls through when s3(=0x1) != v0(?).
  The `bne` branch at 0x9014 targets 0x8fd4, is taken when v1(=0x2) != v0(?), and falls through when v1(=0x2) == v0(?).
  The `bgez` branch at 0x9030 targets 0x8fcc, is taken when v0(=ret(fprom_write)) >= 0 (signed), and falls through when v0(=ret(fprom_write)) < 0 (signed).
  The `beq` branch at 0x906c targets 0x9104 and is always taken.
  The `beq` branch at 0x9078 targets 0x9084, is taken when v0(=ret(promlog_next)) == a1(=-0x5), and falls through when v0(=ret(promlog_next)) != a1(=-0x5).
  The `bne` branch at 0x9080 targets 0x90fc, is taken when v0(=ret(promlog_next)) != a0(=-0xb), and falls through when v0(=ret(promlog_next)) == a0(=-0xb).
  The `bltz` branch at 0x9094 targets 0x90fc, is taken when v0(=ret(get_header)) < 0 (signed), and falls through when v0(=ret(get_header)) >= 0 (signed).
  The `bltz` branch at 0x90e0 targets 0x90fc, is taken when v0(=ret(put_header)) < 0 (signed), and falls through when v0(=ret(put_header)) >= 0 (signed).
  The `bltz` branch at 0x90fc targets 0x9054, is taken when s1(?) < 0 (signed), and falls through when s1(?) >= 0 (signed).
  The return at 0x9118 has v0 = ?.
- `promlog_put_var` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9120 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9120-0x92bc (412 bytes).
  It occupies 412 bytes.
  The `jal` at 0x9140 calls promlog_first with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9188 calls promlog_find with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=?, a5=ret(promlog_first).
  The `jal` at 0x91bc calls validate_or_replace [0x8e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=0x0.
  The `jal` at 0x91ec calls validate_or_replace [0x8e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=0x1, a5=ret(validate_or_replace).
  The `jal` at 0x91fc calls promlog_delete with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=ret(validate_or_replace).
  The `jal` at 0x921c calls promlog_last with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9258 calls validate_or_replace [0x8e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=0x1.
  The `jal` at 0x9294 calls promlog_compact with a0=a0 at entry (arg0), a1=-0x5, a2=?, a3=?, a5=ret(promlog_last).
  The `bgez` branch at 0x9148 targets 0x9180, is taken when v0(=ret(promlog_first)) >= 0 (signed), and falls through when v0(=ret(promlog_first)) < 0 (signed).
  The `beq` branch at 0x9154 targets 0x917c, is taken when v0(=ret(promlog_first)) == at(=-0x5), and falls through when v0(=ret(promlog_first)) != at(=-0x5).
  The `beq` branch at 0x915c targets 0x917c, is taken when a5(=ret(promlog_first)) == v0(=-0xb), and falls through when a5(=ret(promlog_first)) != v0(=-0xb).
  The `bltz` branch at 0x917c targets 0x91a8, is taken when a5(=ret(promlog_first)) < 0 (signed), and falls through when a5(=ret(promlog_first)) >= 0 (signed).
  The `bltz` branch at 0x9194 targets 0x9268, is taken when v0(=ret(promlog_find)) < 0 (signed), and falls through when v0(=ret(promlog_find)) >= 0 (signed).
  The `bne` branch at 0x91a0 targets 0x9164, is taken when v0(=one of 0x0, 0x1) != 0, and falls through when v0(=one of 0x0, 0x1) == 0.
  The `bltz` branch at 0x91a8 targets 0x921c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0x91cc targets 0x9284, is taken when v0(=ret(validate_or_replace)) < 0 (signed), and falls through when v0(=ret(validate_or_replace)) >= 0 (signed).
  The `beq` branch at 0x91d4 targets 0x91fc, is taken when v0(=ret(validate_or_replace)) == 0, and falls through when v0(=ret(validate_or_replace)) != 0.
  The `beq` branch at 0x91f4 targets 0x9160 and is always taken.
  The `beq` branch at 0x920c targets 0x9160, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x9214 targets 0x9164, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x9228 targets 0x9248, is taken when v0(=ret(promlog_last)) == 0, and falls through when v0(=ret(promlog_last)) != 0.
  The `beq` branch at 0x9238 targets 0x9294, is taken when v0(=ret(promlog_last)) == a1(=-0x5), and falls through when v0(=ret(promlog_last)) != a1(=-0x5).
  The `beq` branch at 0x9240 targets 0x9164, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x9260 targets 0x9160 and is always taken.
  The `beq` branch at 0x926c targets 0x919c, is taken when a5(=ret(promlog_find)) == a0(=-0x5), and falls through when a5(=ret(promlog_find)) != a0(=-0x5).
  The `beq` branch at 0x9274 targets 0x91a0, is taken when a5(=ret(promlog_find)) == v0(=-0xb), and falls through when a5(=ret(promlog_find)) != v0(=-0xb).
  The `beq` branch at 0x927c targets 0x91a0 and is always taken.
  The `beq` branch at 0x9284 targets 0x921c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x928c targets 0x9164 and is always taken.
  The `beq` branch at 0x92a4 targets 0x9160, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x92ac targets 0x924c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x92b4 targets 0x9164 and is always taken.
  The return at 0x9174 has v0 = one of ret(promlog_first), ?, ret(promlog_find), ret(promlog_delete), ret(promlog_last), ret(validate_or_replace), ret(promlog_compact).
- `promlog_put_list` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x92bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x92bc-0x9344 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x92cc calls promlog_last with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9308 calls promlog_compact with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=ret(promlog_last), a6=-0x5.
  The `jal` at 0x9334 calls validate_or_replace [0x8e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x2, a4=0x1.
  The `beq` branch at 0x92dc targets 0x9324, is taken when v0(=ret(promlog_last)) == 0, and falls through when v0(=ret(promlog_last)) != 0.
  The `beq` branch at 0x92e8 targets 0x9308, is taken when v0(=ret(promlog_last)) == a6(=-0x5), and falls through when v0(=ret(promlog_last)) != a6(=-0x5).
  The `bne` branch at 0x92f0 targets 0x9324, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x9314 targets 0x92f4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x931c targets 0x92f8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x933c targets 0x92f4 and is always taken.
  The return at 0x9300 has v0 = one of ret(promlog_last), ?, ret(promlog_compact).
- `promlog_put_log` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9344 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9344-0x93cc (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x9354 calls promlog_last with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9394 calls promlog_compact with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=ret(promlog_last), a6=-0x5.
  The `jal` at 0x93bc calls validate_or_replace [0x8e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x3, a4=0x1.
  The `beq` branch at 0x9364 targets 0x93ac, is taken when v0(=ret(promlog_last)) == 0, and falls through when v0(=ret(promlog_last)) != 0.
  The `beq` branch at 0x9370 targets 0x9394, is taken when v0(=ret(promlog_last)) == a6(=-0x5), and falls through when v0(=ret(promlog_last)) != a6(=-0x5).
  The `bne` branch at 0x9378 targets 0x93b0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x93a0 targets 0x9380, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x93a8 targets 0x9380, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x93c4 targets 0x9380 and is always taken.
  The return at 0x938c has v0 = one of ret(promlog_last), ret(promlog_compact), ret(validate_or_replace).
- `promlog_delete` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x93cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x93cc-0x9468 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x93f0 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `lw` at 0x940c loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `sw` at 0x9420 stores 4 bytes to a0 (arg0 at entry) +0xb8.
  The `jal` at 0x93dc calls get_entry [0x83e8] with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x941c calls fprom_write with a0=a0 at entry (arg0), a1=[a0+180], a2=a0+184, a3=0x1.
  The `jal` at 0x9448 calls fprom_errmsg with a0=ret(fprom_write), a1=?, a2=?, a3=0x0.
  The `jal` at 0x9458 calls printf with a0=sym(.rodata)+3120, a1=ret(fprom_errmsg), a2=?, a3=?.
  The `bltz` branch at 0x93e4 targets 0x942c, is taken when v0(=ret(get_entry)) < 0 (signed), and falls through when v0(=ret(get_entry)) >= 0 (signed).
  The `beq` branch at 0x93f8 targets 0x9440, is taken when at(?) == v1(=0xf), and falls through when at(?) != v1(=0xf).
  The `bltz` branch at 0x9424 targets 0x9448, is taken when v0(=ret(fprom_write)) < 0 (signed), and falls through when v0(=ret(fprom_write)) >= 0 (signed).
  The `beq` branch at 0x9440 targets 0x9430 and is always taken.
  The `beq` branch at 0x9460 targets 0x942c and is always taken.
  The return at 0x9438 has v0 = one of ?, -0x6.
- `promlog_dump` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9468 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9468-0x96b4 (588 bytes).
  It occupies 588 bytes.
  The `lw` at 0x9468 loads 4 bytes from a0 (arg0 at entry) +0xa0.
  The `lw` at 0x946c loads 4 bytes from a0 (arg0 at entry) +0xa4.
  The `lw` at 0x9470 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x9474 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x9478 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb4, including `lw` at 0x947c, `lw` at 0x9530, `lw` at 0x9584.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xb8, including `lw` at 0x9510, `lw` at 0x9570, `lw` at 0x95d0.
  2 such `ld` accesses load 8 bytes from table(sym(.data)+312) +0x0, including `ld` at 0x9540, `ld` at 0x95fc.
  The `jal` at 0x9498 calls printf with a0=sym(.rodata)+3120, a1=[a0+160], a2=[a0+164], a3=[a0+168], a4=[a0+172], a5=[a0+176], a6=[a0+180].
  The `jal` at 0x94a0 calls printf with a0=sym(.rodata)+3120, a1=?, a2=?, a3=?.
  The `jal` at 0x94a8 calls swap_log_alt [0x8548] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x94b8 calls promlog_first with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=?.
  The `jal` at 0x94fc calls promlog_get with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=?.
  The `jal` at 0x953c calls printf with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=entry(sym(.data)+312), a4=sp-112, a5=sp-96.
  The `jal` at 0x9548 calls promlog_next with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=?.
  The `jal` at 0x9560 calls promlog_get with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=?.
  The `jal` at 0x9588 calls printf with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=?.
  The `jal` at 0x9590 calls printf with a0=sym(.rodata)+3120, a1=?, a2=?, a3=?.
  The `jal` at 0x9598 calls swap_log_alt [0x8548] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x95a4 calls promlog_first with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=?.
  The `jal` at 0x95bc calls promlog_get with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=?.
  The `jal` at 0x95f8 calls printf with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=entry(sym(.data)+312), a4=sp-112, a5=sp-96.
  The `jal` at 0x9604 calls promlog_next with a0=a0 at entry (arg0), a1=0x62, a2=?, a3=?.
  The `jal` at 0x961c calls promlog_get with a0=a0 at entry (arg0), a1=sp-112, a2=sp-96, a3=?.
  The `jal` at 0x9648 calls printf with a0=sym(.rodata)+3120, a1=[a0+180], a2=?, a3=?.
  The `bgez` branch at 0x94cc targets 0x94f4, is taken when v0(=ret(promlog_first)) >= 0 (signed), and falls through when v0(=ret(promlog_first)) < 0 (signed).
  The `beq` branch at 0x94dc targets 0x9590, is taken when a2(=ret(promlog_first)) == a0(=-0x5), and falls through when a2(=ret(promlog_first)) != a0(=-0x5).
  The `bne` branch at 0x94e4 targets 0x965c, is taken when a2(=ret(promlog_first)) != v0(=-0xb), and falls through when a2(=ret(promlog_first)) == v0(=-0xb).
  The `beq` branch at 0x94ec targets 0x9590 and is always taken.
  The `bltz` branch at 0x9508 targets 0x965c, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `beq` branch at 0x951c targets 0x9584, is taken when a2(?) == at(=0xf), and falls through when a2(?) != at(=0xf).
  The `bltz` branch at 0x9550 targets 0x967c, is taken when v0(=ret(promlog_next)) < 0 (signed), and falls through when v0(=ret(promlog_next)) >= 0 (signed).
  The `bltz` branch at 0x9568 targets 0x965c, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `bne` branch at 0x957c targets 0x9528, is taken when a2(?) != a4(=0xf), and falls through when a2(?) == a4(=0xf).
  The `bltz` branch at 0x95ac targets 0x965c, is taken when v0(=ret(promlog_first)) < 0 (signed), and falls through when v0(=ret(promlog_first)) >= 0 (signed).
  The `bltz` branch at 0x95c4 targets 0x965c, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `beq` branch at 0x95d8 targets 0x9640, is taken when a2(?) == a3(=0xf), and falls through when a2(?) != a3(=0xf).
  The `bltz` branch at 0x960c targets 0x9698, is taken when v0(=ret(promlog_next)) < 0 (signed), and falls through when v0(=ret(promlog_next)) >= 0 (signed).
  The `bltz` branch at 0x9624 targets 0x965c, is taken when v0(=ret(promlog_get)) < 0 (signed), and falls through when v0(=ret(promlog_get)) >= 0 (signed).
  The `bne` branch at 0x9638 targets 0x95e4, is taken when a2(?) != a4(=0xf), and falls through when a2(?) == a4(=0xf).
  The `beq` branch at 0x9680 targets 0x9584, is taken when v0(=ret(promlog_next)) == a4(=-0x5), and falls through when v0(=ret(promlog_next)) != a4(=-0x5).
  The `bne` branch at 0x9688 targets 0x965c, is taken when s1(=ret(promlog_next)) != v0(=-0xb), and falls through when s1(=ret(promlog_next)) == v0(=-0xb).
  The `beq` branch at 0x9690 targets 0x9588 and is always taken.
  The `beq` branch at 0x969c targets 0x9644, is taken when v0(=ret(promlog_next)) == s3(=-0x5), and falls through when v0(=ret(promlog_next)) != s3(=-0x5).
  The `bne` branch at 0x96a4 targets 0x965c, is taken when s1(=ret(promlog_next)) != v0(=-0xb), and falls through when s1(=ret(promlog_next)) == v0(=-0xb).
  The `beq` branch at 0x96ac targets 0x9648 and is always taken.
  The return at 0x9674 has v0 = one of ret(promlog_first), ret(promlog_get), ?, ret(promlog_next).
- `promlog_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x96b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x96b4-0x9740 (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x96d0 loads 8 bytes from (sym(.rodata)+3120 + (a0+11 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=[(sym(.rodata)+3120 + (a0+11 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+3120 (`jr` at 0x96d4).
  The `beq` branch at 0x96c8 targets 0x96dc, is taken when v1(=a0+11) >= 0xc (unsigned), and falls through when v1(=a0+11) < 0xc (unsigned).
  The return at 0x96e0 has v0 = sym(.rodata)+3120.
  The instructions from 0x96e8 to 0x973c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x96d4 uses a jump table whose successors are unresolved.
- `fprom_probe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x975c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x975c-0x97ac (80 bytes).
  It occupies 80 bytes.
  The `sw` at 0x975c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x9760 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sd` at 0x9778 stores 8 bytes to a0 (arg0 at entry) +0x90.
  The `lw` at 0x9790 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x9774 calls cfi_probe with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x977c targets 0x978c, is taken when v0(=ret(cfi_probe)) == 0, and falls through when v0(=ret(cfi_probe)) != 0.
  The `bne` branch at 0x979c targets 0x9784, is taken when v1(=[a0+8]) < a0(=0x200000) (signed), and falls through when v1(=[a0+8]) >= a0(=0x200000) (signed).
  The `beq` branch at 0x97a4 targets 0x9784 and is always taken.
  The return at 0x9784 has v0 = one of ret(cfi_probe), -0x6, 0x0.
- `fprom_flash_sectors` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x97c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x97c8-0x9850 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x97f8 calls cfi_erase_sector with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x97e0 targets 0x9820, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x97f0 targets 0x9810, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0x9800 targets 0x983c, is taken when v0(=ret(cfi_erase_sector)) == 0, and falls through when v0(=ret(cfi_erase_sector)) != 0.
  The `beq` branch at 0x9808 targets 0x9828 and is always taken.
  The `bne` branch at 0x9818 targets 0x97ec, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x9840 targets 0x97ec, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x9848 targets 0x9824 and is always taken.
  The return at 0x9834 has v0 = one of ret(cfi_erase_sector), 0x0.
- `fprom_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9888 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9888-0x98a4 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x9890 calls cfi_read with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x989c has v0 = ret(cfi_read).
- `fprom_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98a4-0x98c0 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x98ac calls cfi_errmsg with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x98b8 has v0 = ret(cfi_errmsg).
- `cfi_cmd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98c0-0x98d8 (24 bytes).
  It occupies 24 bytes.
  The `ld` at 0x98c0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x98d4 stores 8 bytes to ([a0]:8 + ((a1 << 0x1) << 0x2)) +0x0.
  The return at 0x98d0 has v0 = ((a1 << 0x1) << 0x2).
- `cfi_cmd_wr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98d8-0x98ec (20 bytes).
  It occupies 20 bytes.
  The `ld` at 0x98d8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x98e8 stores 8 bytes to ([a0]:8 + (a1 << 0x2)) +0x0.
  The return at 0x98e4 has v0 = (a1 << 0x2).
- `cfi_enter_cfiquery` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x98ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x98ec-0x990c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x98f8 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x55, a2=0x98, a3=a3 at entry (arg3).
  The return at 0x9904 has v0 = ret(cfi_cmd).
- `cfi_enter_erase` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x990c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x990c-0x9978 (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0x9920 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=a3 at entry (arg3).
  The `jal` at 0x9930 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=?.
  The `jal` at 0x9940 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x555, a2=0x80, a3=?.
  The `jal` at 0x9950 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=?.
  The `jal` at 0x9960 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=?.
  The return at 0x9970 has v0 = ret(cfi_cmd).
- `cfi_enter_program` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9978 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9978-0x99c4 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x998c calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=a3 at entry (arg3).
  The `jal` at 0x999c calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=?.
  The `jal` at 0x99ac calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x555, a2=0xa0, a3=?.
  The return at 0x99bc has v0 = ret(cfi_cmd).
- `cfi_wait` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x99c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x99c4-0x9a78 (180 bytes).
  It occupies 180 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x99cc, `ld` at 0x9a04.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x9a20, `ld` at 0x9a6c.
  2 such `lbu` accesses load 1 byte from (a1 + [a0]:8) +0x1, including `lbu` at 0x9a28, `lbu` at 0x9a3c.
  The `jalr` at 0x99ec calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x9a10 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x99e4 targets 0x9a20, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x99f4 targets 0x9a20, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x99fc targets 0x9a48 and is always taken.
  The `beq` branch at 0x9a08 targets 0x9a68, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `bne` branch at 0x9a18 targets 0x99fc, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x9a2c targets 0x9a70, is taken when s1(=a2) == v0(=[(a1 + [a0]:8)+1]:1), and falls through when s1(=a2) != v0(=[(a1 + [a0]:8)+1]:1).
  The `beq` branch at 0x9a34 targets 0x9a04, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x9a40 targets 0x9a60, is taken when s1(=a2) != a1(=[(a1 + [a0]:8)+1]:1), and falls through when s1(=a2) == a1(=[(a1 + [a0]:8)+1]:1).
  The `beq` branch at 0x9a60 targets 0x9a48 and is always taken.
  The `beq` branch at 0x9a68 targets 0x9a24 and is always taken.
  The `beq` branch at 0x9a70 targets 0x9a48 and is always taken.
  The return at 0x9a58 has v0 = one of -0x5, -0x2, 0x0.
- `cfi_verify_erased` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9a78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9a78-0x9b08 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x9a80 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x9ad0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x9ad8 loads 8 bytes from ?.
  The `jalr` at 0x9a9c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a1 at entry (arg1).
  The `beq` branch at 0x9a94 targets 0x9abc, is taken when v0(=[a0+16]:8) == 0, and falls through when v0(=[a0+16]:8) != 0.
  The `beq` branch at 0x9aac targets 0x9abc, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x9ab4 targets 0x9aec and is always taken.
  The `beq` branch at 0x9ac8 targets 0x9b00, is taken when a5(=a1) >= a0(=(a1 + a2)) (signed), and falls through when a5(=a1) < a0(=(a1 + a2)) (signed).
  The `beq` branch at 0x9ae0 targets 0x9af8, is taken when a6(=-0x1) == v0(?), and falls through when a6(=-0x1) != v0(?).
  The `bne` branch at 0x9af8 targets 0x9ad8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x9b00 targets 0x9aec and is always taken.
  The return at 0x9af0 has v0 = one of -0x5, -0x4, 0x0.
- `cfi_perform_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9b08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9b08-0x9c14 (268 bytes).
  It occupies 268 bytes.
  The `ld` at 0x9b14 loads 8 bytes from a0 (arg0 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x9b38, `ld` at 0x9b94.
  The `jalr` at 0x9b6c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x9bb0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x9b58 targets 0x9b84, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bltz` branch at 0x9b64 targets 0x9b84, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x9b74 targets 0x9bf4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x9b7c targets 0x9bc4 and is always taken.
  The `blez` branch at 0x9b84 targets 0x9c0c, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `beq` branch at 0x9b9c targets 0x9c04, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x9ba8 targets 0x9c04, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x9bb8 targets 0x9be4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x9bec targets 0x9b9c and is always taken.
  The `beq` branch at 0x9bfc targets 0x9b58 and is always taken.
  The `bgtz` branch at 0x9c04 targets 0x9b90, is taken when s3(?) > 0 (signed), and falls through when s3(?) <= 0 (signed).
  The `beq` branch at 0x9c0c targets 0x9bc0 and is always taken.
  The return at 0x9bdc has v0 = one of ret(?), ?.
- `verify_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9c14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9c14-0x9c2c (24 bytes).
  It occupies 24 bytes.
  The `lbu` at 0x9c14 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `bne` branch at 0x9c18 targets 0x9c24, is taken when at(=[a1]:1) != a0, and falls through when at(=[a1]:1) == a0.
  The return at 0x9c24 has v0 = one of -0x4, 0x0.
- `cfi_verify` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9c2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9c2c-0x9c48 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x9c34 calls cfi_perform_op [0x9b08] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(verify_op).
  The return at 0x9c40 has v0 = ret(cfi_perform_op).
- `cfi_write_word` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9c48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9c48-0x9dc8 (384 bytes).
  It occupies 384 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x9c84, `ld` at 0x9d40.
  The `lbu` at 0x9c8c loads 1 byte from (a1 + [a0]:8) -0x1.
  The `lbu` at 0x9c90 loads 1 byte from a2 (arg2 at entry) +0x0.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x9ce4, `lbu` at 0x9ce8, `lbu` at 0x9d44.
  The `jal` at 0x9c9c calls cfi_enter_program [0x9978] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9cb0 calls cfi_cmd_wr [0x98d8] with a0=a0 at entry (arg0), a1=a1-1, a2=?, a3=?.
  The `jal` at 0x9cc0 calls cfi_wait [0x99c4] with a0=a0 at entry (arg0), a1=a1-1, a2=?, a3=?.
  The `jal` at 0x9cf8 calls cfi_enter_program [0x9978] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9d08 calls cfi_cmd_wr [0x98d8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9d18 calls cfi_wait [0x99c4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9d5c calls cfi_enter_program [0x9978] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9d6c calls cfi_cmd_wr [0x98d8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9d7c calls cfi_wait [0x99c4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `blez` branch at 0x9c70 targets 0x9cd8, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0x9c7c targets 0x9cdc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `bltz` branch at 0x9cc8 targets 0x9dc0, is taken when v0(=ret(cfi_wait)) < 0 (signed), and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  The `bne` branch at 0x9cdc targets 0x9d38, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bltz` branch at 0x9d20 targets 0x9db8, is taken when v0(=ret(cfi_wait)) < 0 (signed), and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  The `beq` branch at 0x9d30 targets 0x9ce4, is taken when s3(?) >= 0x2 (signed), and falls through when s3(?) < 0x2 (signed).
  The `blez` branch at 0x9d38 targets 0x9d90, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `bltz` branch at 0x9d84 targets 0x9db0, is taken when v0(=ret(cfi_wait)) < 0 (signed), and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  The `beq` branch at 0x9db0 targets 0x9d94 and is always taken.
  The `beq` branch at 0x9db8 targets 0x9d94 and is always taken.
  The `beq` branch at 0x9dc0 targets 0x9d94 and is always taken.
  The return at 0x9da8 has v0 = one of 0x0, ret(cfi_wait).
- `cfi_write_block` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x9dc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x9dc8-0xa098 (720 bytes).
  It occupies 720 bytes.
  The `lw` at 0x9de8 loads 4 bytes from a0 (arg0 at entry) +0x58.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x9e64, `ld` at 0xa008.
  The `lbu` at 0x9e74 loads 1 byte from (a1 + [a0]:8) -0x1.
  The `lbu` at 0x9e7c loads 1 byte from a2 (arg2 at entry) +0x0.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x9e8c, `sh` at 0xa000, `sh` at 0xa040.
  The `lhu` at 0x9f38 loads 2 bytes from ?.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x9f70, `lbu` at 0x9fe0, `lbu` at 0x9fec.
  The `jal` at 0x9ec4 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x555, a2=0xaa, a3=?.
  The `jal` at 0x9ed4 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x2aa, a2=0x55, a3=?.
  The `jal` at 0x9ef0 calls cfi_cmd_wr [0x98d8] with a0=a0 at entry (arg0), a1=?, a2=0x25, a3=?.
  The `jal` at 0x9f04 calls cfi_cmd_wr [0x98d8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9f34 calls cfi_cmd_wr [0x98d8] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x9f54 calls cfi_cmd_wr [0x98d8] with a0=a0 at entry (arg0), a1=?, a2=0x29, a3=?.
  The `jal` at 0x9f6c calls cfi_wait [0x99c4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x9e10 targets 0x9e1c, is taken when v0(=[a0+88]) < 0x21 (signed), and falls through when v0(=[a0+88]) >= 0x21 (signed).
  The `blez` branch at 0x9e50 targets 0xa080, is taken when s6(=a3) <= 0 (signed), and falls through when s6(=a3) > 0 (signed).
  The `beq` branch at 0x9e58 targets 0xa08c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x9e98 targets 0x9fa4 and is always taken.
  The `beq` branch at 0x9ea0 targets 0xa004, is taken when s6(?) == at(=0x1), and falls through when s6(?) != at(=0x1).
  The `beq` branch at 0x9eac targets 0x9ec0, is taken when s4(?) == v0(?), and falls through when s4(?) != v0(?).
  The `bne` branch at 0x9eb4 targets 0x9fa8, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `beq` branch at 0x9f10 targets 0x9f50, is taken when s0(?) >= s2(?) (signed), and falls through when s0(?) < s2(?) (signed).
  The `bne` branch at 0x9f44 targets 0x9f1c, is taken when s0(?) < s2(?) (signed), and falls through when s0(?) >= s2(?) (signed).
  The `bltz` branch at 0x9f84 targets 0xa044, is taken when v0(=ret(cfi_wait)) < 0 (signed), and falls through when v0(=ret(cfi_wait)) >= 0 (signed).
  The `beq` branch at 0x9f9c targets 0xa04c, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x9fa8 targets 0x9ebc, is taken when s4(?) == t9(?), and falls through when s4(?) != t9(?).
  The `beq` branch at 0x9fb0 targets 0x9eac, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0x9fc4 targets 0x9ea0, is taken when s6(?) < 0x2 (signed), and falls through when s6(?) >= 0x2 (signed).
  The `beq` branch at 0x9ffc targets 0x9ea8 and is always taken.
  The `beq` branch at 0xa03c targets 0x9ea8 and is always taken.
  The `beq` branch at 0xa044 targets 0xa054 and is always taken.
  The `beq` branch at 0xa084 targets 0x9e98 and is always taken.
  The `beq` branch at 0xa090 targets 0x9e98 and is always taken.
  The return at 0xa078 has v0 = one of ret(cfi_wait), 0x0.
- `cfi_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa098 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa098-0xa0b8 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa0a4 calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=0x0, a2=0xf0, a3=a3 at entry (arg3).
  The return at 0xa0b0 has v0 = ret(cfi_cmd).
- `cfi_probe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa0b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa0b8-0xa278 (448 bytes).
  It occupies 448 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xa0d4, `ld` at 0xa194, `ld` at 0xa228.
  The `lhu` at 0xa0d8 loads 2 bytes from [a0]:8 +0x20.
  The `lhu` at 0xa0f0 loads 2 bytes from [a0]:8 +0x22.
  The `lhu` at 0xa0fc loads 2 bytes from [a0]:8 +0x24.
  The `lhu` at 0xa124 loads 2 bytes from [a0]:8 +0x26.
  The `lhu` at 0xa130 loads 2 bytes from [a0]:8 +0x28.
  The `lhu` at 0xa14c loads 2 bytes from [a0]:8 +0x4e.
  The `sw` at 0xa154 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lhu` at 0xa158 loads 2 bytes from [a0]:8 +0x50.
  The `lhu` at 0xa16c loads 2 bytes from [a0]:8 +0x58.
  The `sw` at 0xa174 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  4 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xa1b4, `lhu` at 0xa1c0, `lhu` at 0xa1c8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa1fc, `sw` at 0xa200, `sw` at 0xa20c.
  The `lw` at 0xa210 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  The `lhu` at 0xa22c loads 2 bytes from [a0]:8 +0x54.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x58, including `sw` at 0xa23c, `sw` at 0xa254.
  The `jal` at 0xa0c4 calls cfi_reset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0cc calls cfi_enter_cfiquery [0x98ec] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa108 calls cfi_reset with a0=a0 at entry (arg0), a1=0x52, a2=?, a3=0x59, a5=0x2.
  The `jal` at 0xa13c calls cfi_reset with a0=a0 at entry (arg0), a1=0x52, a2=[[a0]:8+36]:2, a3=0x0, a4=[[a0]:8+38]:2, a5=one of 0x1, 0x2.
  The `jal` at 0xa240 calls cfi_reset with a0=a0 at entry (arg0), a1=?, a2=[[a0]:8+36]:2, a3=?, a4=[[a0]:8+88]:2-1, a5=0x1, a6=[[a0]:8+40]:2.
  The `jal` at 0xa258 calls cfi_reset with a0=a0 at entry (arg0), a1=0x52, a2=[[a0]:8+36]:2, a3=0x0, a4=[[a0]:8+88]:2-1, a5=0x1, a6=[[a0]:8+40]:2.
  The `jal` at 0xa268 calls cfi_reset with a0=a0 at entry (arg0), a1=0x52, a2=[[a0]:8+36]:2, a3=0x0, a4=[[a0]:8+38]:2, a5=0x1, a6=[[a0]:8+40]:2.
  The `bne` branch at 0xa0e8 targets 0xa108, is taken when at(=[[a0]:8+32]:2) != v1(=0x51), and falls through when at(=[[a0]:8+32]:2) == v1(=0x51).
  The `bne` branch at 0xa0f4 targets 0xa108, is taken when a0(=[[a0]:8+34]:2) != a1(=0x52), and falls through when a0(=[[a0]:8+34]:2) == a1(=0x52).
  The `beq` branch at 0xa100 targets 0xa124, is taken when a2(=[[a0]:8+36]:2) == a3(=0x59), and falls through when a2(=[[a0]:8+36]:2) != a3(=0x59).
  The `bne` branch at 0xa128 targets 0xa13c, is taken when a4(=[[a0]:8+38]:2) != a5(=0x2), and falls through when a4(=[[a0]:8+38]:2) == a5(=0x2).
  The `beq` branch at 0xa134 targets 0xa14c, is taken when a6(=[[a0]:8+40]:2) == 0, and falls through when a6(=[[a0]:8+40]:2) != 0.
  The `beq` branch at 0xa144 targets 0xa114 and is always taken.
  The `beq` branch at 0xa164 targets 0xa268, is taken when (a7(=[[a0]:8+80]:2+1) & 0x2) == 0, and falls through when (a7(=[[a0]:8+80]:2+1) & 0x2) != 0.
  The `beq` branch at 0xa178 targets 0xa258, is taken when a0(=[[a0]:8+88]:2) >= 0x5 (signed), and falls through when a0(=[[a0]:8+88]:2) < 0x5 (signed).
  The `blez` branch at 0xa180 targets 0xa22c, is taken when a0(=[[a0]:8+88]:2) <= 0 (signed), and falls through when a0(=[[a0]:8+88]:2) > 0 (signed).
  The `bne` branch at 0xa220 targets 0xa18c, is taken when a3(?) < t3(=[a0+92]) (signed), and falls through when a3(?) >= t3(=[a0+92]) (signed).
  The `beq` branch at 0xa230 targets 0xa250, is taken when a0(=[[a0]:8+84]:2) == 0, and falls through when a0(=[[a0]:8+84]:2) != 0.
  The `beq` branch at 0xa248 targets 0xa114 and is always taken.
  The `beq` branch at 0xa250 targets 0xa240 and is always taken.
  The `beq` branch at 0xa260 targets 0xa114 and is always taken.
  The `beq` branch at 0xa270 targets 0xa114 and is always taken.
  The return at 0xa11c has v0 = one of -0x6, 0x0.
- `cfi_erase_sector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa278 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa278-0xa390 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xa2a8 loads 4 bytes from a0 (arg0 at entry) +0x5c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa2d0, `lw` at 0xa2dc, `lw` at 0xa2e0.
  The `ld` at 0xa37c loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `jal` at 0xa2f4 calls cfi_enter_erase [0x990c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa30c calls cfi_cmd [0x98c0] with a0=a0 at entry (arg0), a1=?, a2=0x30, a3=?.
  The `jal` at 0xa31c calls cfi_wait [0x99c4] with a0=a0 at entry (arg0), a1=?, a2=0xff, a3=?.
  The `jal` at 0xa364 calls cfi_verify_erased [0x9a78] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xa380 calls (unknown callee) with a0=sym(.rodata)+4088, a1=?, a2=[a0+144]:8, a3=?.
  The `beq` branch at 0xa2a0 targets 0xa2c0 and is always taken.
  The `beq` branch at 0xa2b0 targets 0xa37c, is taken when s0(?) == at(=[a0+92]-1), and falls through when s0(?) != at(=[a0+92]-1).
  The `blez` branch at 0xa2b8 targets 0xa33c, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `bne` branch at 0xa2d8 targets 0xa2a8, is taken when s2(?) < v0(?) (signed), and falls through when s2(?) >= v0(?) (signed).
  The `beq` branch at 0xa2ec targets 0xa2a8, is taken when s2(?) >= a1(?) (signed), and falls through when s2(?) < a1(?) (signed).
  The `beq` branch at 0xa324 targets 0xa360, is taken when v0(=ret(cfi_wait)) == 0, and falls through when v0(=ret(cfi_wait)) != 0.
  The `beq` branch at 0xa32c targets 0xa344 and is always taken.
  The `bgtz` branch at 0xa334 targets 0xa2c0, is taken when s3(?) > 0 (signed), and falls through when s3(?) <= 0 (signed).
  The `beq` branch at 0xa36c targets 0xa334, is taken when v0(=ret(cfi_verify_erased)) == 0, and falls through when v0(=ret(cfi_verify_erased)) != 0.
  The `beq` branch at 0xa374 targets 0xa344 and is always taken.
  The `beq` branch at 0xa388 targets 0xa340 and is always taken.
  The return at 0xa358 has v0 = one of ret(cfi_wait), -0x7, 0x0, ret(cfi_verify_erased).
- `read_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa390 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa390-0xa39c (12 bytes).
  It occupies 12 bytes.
  The `sb` at 0xa390 stores 1 byte to a1 (arg1 at entry) +0x0.
  The return at 0xa394 has v0 = 0x0.
- `cfi_read` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa39c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa39c-0xa3b8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa3a4 calls cfi_perform_op [0x9b08] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(read_op).
  The return at 0xa3b0 has v0 = ret(cfi_perform_op).
- `cfi_write` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa3b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa3b8-0xa444 (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xa3c4 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `jal` at 0xa3e8 calls cfi_write_block [0x9dc8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa418 calls cfi_write_word [0x9c48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa434 calls cfi_verify [0x9c2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xa3e0 targets 0xa418, is taken when at(=[a0+88]) == 0, and falls through when at(=[a0+88]) != 0.
  The `beq` branch at 0xa3f0 targets 0xa428, is taken when v0(=ret(cfi_write_block)) == 0, and falls through when v0(=ret(cfi_write_block)) != 0.
  The `bne` branch at 0xa420 targets 0xa3f8, is taken when v0(=ret(cfi_write_word)) != 0, and falls through when v0(=ret(cfi_write_word)) == 0.
  The `beq` branch at 0xa43c targets 0xa3f8 and is always taken.
  The return at 0xa410 has v0 = one of ret(cfi_write_block), ret(cfi_write_word), ret(cfi_verify).
- `validate_op` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa444 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa444-0xa464 (32 bytes).
  It occupies 32 bytes.
  The `lbu` at 0xa444 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `beq` branch at 0xa450 targets 0xa45c, is taken when (at(=[a1]:1) & v0(?)) == 0, and falls through when (at(=[a1]:1) & v0(?)) != 0.
  The return at 0xa45c has v0 = one of -0x3, 0x0.
- `cfi_validate` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa464-0xa480 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xa46c calls cfi_perform_op [0x9b08] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=sym(validate_op).
  The return at 0xa478 has v0 = ret(cfi_perform_op).
- `cfi_errmsg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa480 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa480-0xa4ec (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0xa49c loads 8 bytes from (sym(.rodata)+4088 + (a0+7 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=[(sym(.rodata)+4088 + (a0+7 << 0x3))]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sym(.rodata)+4088 (`jr` at 0xa4a0).
  The `beq` branch at 0xa494 targets 0xa4a8, is taken when v1(=a0+7) >= 0x8 (unsigned), and falls through when v1(=a0+7) < 0x8 (unsigned).
  The return at 0xa4ac has v0 = sym(.rodata)+4088.
  The instructions from 0xa4b4 to 0xa4e8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xa4a0 uses a jump table whose successors are unresolved.
- `nano_to_ust` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa5c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa5c8-0xa5f0 (40 bytes).
  It occupies 40 bytes.
  The return at 0xa5e8 has v0 = ?.
- `ust_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa5f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa5f0-0xa654 (100 bytes).
  It occupies 100 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001604200, including `ld` at 0xa5f4, `ld` at 0xa624.
  The return at 0xa64c has v0 = ?.
- `ip27log_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xa840 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xa840-0xaa1c (476 bytes).
  It occupies 476 bytes.
  The `ld` at 0xa86c loads 8 bytes from a0 (arg0 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xa888, `ld` at 0xa89c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xa894, `sd` at 0xa8a8.
  The `lbu` at 0xa908 loads 1 byte from abs 0xffffffffffffc528.
  The `jal` at 0xa8ac calls fprom_reset with a0=sp-192, a1=?, a2=?, a3=?.
  The `jal` at 0xa8c8 calls fprom_probe with a0=sp-192, a1=sp-40, a2=sp-36, a3=?.
  The `jal` at 0xa8e4 calls fprom_errmsg with a0=ret(fprom_probe), a1=?, a2=?, a3=?.
  The `jal` at 0xa8f0 calls printf with a0=sym(.rodata)+4456, a1=ret(fprom_errmsg), a2=?, a3=?.
  The `jal` at 0xa90c calls promlog_init with a0=a0 at entry (arg0), a1=sp-192, a2=0x1e, a3=[-0x3ad8]:1.
  The `jal` at 0xa930 calls promlog_clear with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa94c calls promlog_errmsg with a0=ret(promlog_clear), a1=?, a2=?, a3=?.
  The `jal` at 0xa95c calls printf with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=?.
  The `jal` at 0xa99c calls promlog_errmsg with a0=ret(promlog_init), a1=?, a2=?, a3=?.
  The `jal` at 0xa9ac calls printf with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=?.
  The `jal` at 0xa9c4 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xaa0c calls printf with a0=sym(.rodata)+4456, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa860 targets 0xa9bc, is taken when (a2 & 0x8) == 0, and falls through when (a2 & 0x8) != 0.
  The `bgtz` branch at 0xa8a4 targets 0xa87c, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0xa8b8 targets 0xa904, is taken when (s0(=a2) & 0x13) == 0, and falls through when (s0(=a2) & 0x13) != 0.
  The `bgez` branch at 0xa8d4 targets 0xa900, is taken when v0(=ret(fprom_probe)) >= 0 (signed), and falls through when v0(=ret(fprom_probe)) < 0 (signed).
  The `beq` branch at 0xa8dc targets 0xa8f8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xa8f8 targets 0xa970 and is always taken.
  The `bltz` branch at 0xa918 targets 0xa988, is taken when v0(=ret(promlog_init)) < 0 (signed), and falls through when v0(=ret(promlog_init)) >= 0 (signed).
  The `beq` branch at 0xa924 targets 0xa970, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bgez` branch at 0xa93c targets 0xa96c, is taken when v0(=ret(promlog_clear)) >= 0 (signed), and falls through when v0(=ret(promlog_clear)) < 0 (signed).
  The `beq` branch at 0xa944 targets 0xa964, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xa964 targets 0xa970 and is always taken.
  The `beq` branch at 0xa98c targets 0xa9fc, is taken when s2(=ret(promlog_init)) == a0(=-0x2), and falls through when s2(=ret(promlog_init)) != a0(=-0x2).
  The `beq` branch at 0xa994 targets 0xa9b4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xa9b4 targets 0xa970 and is always taken.
  The `bltz` branch at 0xa9bc targets 0xa9d8, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0xa9cc targets 0xa9f0, is taken when s2(=a1) != v0(=ret(get_nasid)), and falls through when s2(=a1) == v0(=ret(get_nasid)).
  The `beq` branch at 0xa9e8 targets 0xa8ac and is always taken.
  The `beq` branch at 0xa9f4 targets 0xa9d8 and is always taken.
  The `bne` branch at 0xa9fc targets 0xa924, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xaa04 targets 0xaa14, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xaa14 targets 0xa970 and is always taken.
  The return at 0xa980 has v0 = one of ret(fprom_probe), 0x0, ret(promlog_clear), ret(promlog_init).
- `ip27log_setenv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xaa1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xaa1c-0xab6c (336 bytes).
  It occupies 336 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xab38, `ld` at 0xab54.
  The `jal` at 0xaa40 calls in_panic_mode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xaa54 calls ip27log_setup with a0=sp-296, a1=a0 at entry (arg0), a2=(a3 | 0x2), a3=?.
  The `jal` at 0xaa6c calls strcmp with a0=a1 at entry (arg1), a1=sym(.rodata)+4456, a2=?, a3=?.
  The `jal` at 0xaa80 calls strcmp with a0=a1 at entry (arg1), a1=sym(.rodata)+4456, a2=?, a3=?.
  The `jal` at 0xaa98 calls strcmp with a0=a1 at entry (arg1), a1=sym(.rodata)+4456, a2=?, a3=?.
  The `jal` at 0xaaac calls promlog_put_var with a0=sp-296, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0xaac0 calls in_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xaaf4 calls promlog_put_log with a0=sp-296, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0xab10 calls promlog_errmsg with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xab28 calls printf with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=ret(promlog_errmsg).
  The `jal` at 0xab44 calls mutex_spinunlock with a0=[-0x3c00]:8+34372, a1=?, a2=0x8644, a3=?.
  The `jal` at 0xab5c calls mutex_spinlock with a0=[-0x3c00]:8+34372, a1=0x8644, a2=(a3 | 0x2), a3=?.
  The `beq` branch at 0xaa48 targets 0xab54, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `bltz` branch at 0xaa5c targets 0xaac0, is taken when v0(=ret(ip27log_setup)) < 0 (signed), and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  The `beq` branch at 0xaa74 targets 0xaaec, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0xaa88 targets 0xaaf0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0xaaa0 targets 0xaaec, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bltz` branch at 0xaab4 targets 0xab04, is taken when v0(=ret(promlog_put_var)) < 0 (signed), and falls through when v0(=ret(promlog_put_var)) >= 0 (signed).
  The `beq` branch at 0xaac8 targets 0xab38, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `bgez` branch at 0xaafc targets 0xaabc, is taken when v0(=ret(promlog_put_log)) >= 0 (signed), and falls through when v0(=ret(promlog_put_log)) < 0 (signed).
  The `beq` branch at 0xab08 targets 0xaac0, is taken when (s3(=a3) & 0x4) == 0, and falls through when (s3(=a3) & 0x4) != 0.
  The `beq` branch at 0xab30 targets 0xaac0 and is always taken.
  The `beq` branch at 0xab4c targets 0xaad0 and is always taken.
  The `beq` branch at 0xab64 targets 0xaa4c and is always taken.
  The return at 0xaae4 has v0 = ?.
- `ip27log_getenv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xab6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xab6c-0xac48 (220 bytes).
  It occupies 220 bytes.
  The `sb` at 0xac1c stores 1 byte to a2 (arg2 at entry) +0x0.
  The `jal` at 0xaba0 calls ip27log_setup with a0=sp-304, a1=a0 at entry (arg0), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `jal` at 0xabbc calls promlog_lookup with a0=sp-304, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The `jal` at 0xabe0 calls promlog_errmsg with a0=ret(promlog_lookup), a1=?, a2=?, a3=?.
  The `jal` at 0xabf4 calls printf with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=ret(promlog_errmsg), a3=?.
  The `jal` at 0xac0c calls strcpy with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=?, a3=?.
  The `bltz` branch at 0xaba8 targets 0xabfc, is taken when v0(=ret(ip27log_setup)) < 0 (signed), and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  The `bgez` branch at 0xabc4 targets 0xac40, is taken when v0(=ret(promlog_lookup)) >= 0 (signed), and falls through when v0(=ret(promlog_lookup)) < 0 (signed).
  The `bne` branch at 0xabcc targets 0xabfc, is taken when s2(=a3) != 0, and falls through when s2(=a3) == 0.
  The `beq` branch at 0xabd8 targets 0xabfc, is taken when (v1(=a4) & 0x4) == 0, and falls through when (v1(=a4) & 0x4) != 0.
  The `beq` branch at 0xabfc targets 0xac24, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0xac04 targets 0xac1c, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0xac14 targets 0xac20 and is always taken.
  The `beq` branch at 0xac40 targets 0xac24 and is always taken.
  The return at 0xac38 has v0 = one of ?, 0x0.
- `ip27log_unsetenv` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xac48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xac48-0xad20 (216 bytes).
  It occupies 216 bytes.
  The `jal` at 0xac6c calls ip27log_setup with a0=sp-288, a1=a0 at entry (arg0), a2=(a2 | 0x2), a3=a3 at entry (arg3).
  The `jal` at 0xac7c calls promlog_first with a0=sp-288, a1=0x1, a2=?, a3=?.
  The `jal` at 0xac94 calls promlog_find with a0=sp-288, a1=a1 at entry (arg1), a2=0x1, a3=?.
  The `jal` at 0xacb8 calls printf with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xacd8 calls promlog_delete with a0=sp-288, a1=?, a2=?, a3=?.
  The `jal` at 0xacf4 calls promlog_errmsg with a0=ret(promlog_delete), a1=?, a2=?, a3=?.
  The `jal` at 0xad08 calls printf with a0=sym(.rodata)+4456, a1=a1 at entry (arg1), a2=ret(promlog_errmsg), a3=?.
  The `bltz` branch at 0xac74 targets 0xacc4, is taken when v0(=ret(ip27log_setup)) < 0 (signed), and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  The `bltz` branch at 0xac84 targets 0xaca4, is taken when v0(=ret(promlog_first)) < 0 (signed), and falls through when v0(=ret(promlog_first)) >= 0 (signed).
  The `bgez` branch at 0xac9c targets 0xacd8, is taken when v0(=ret(promlog_find)) >= 0 (signed), and falls through when v0(=ret(promlog_find)) < 0 (signed).
  The `beq` branch at 0xaca8 targets 0xacc0, is taken when (s1(=a2) & 0x4) == 0, and falls through when (s1(=a2) & 0x4) != 0.
  The `bgez` branch at 0xace4 targets 0xad18, is taken when v0(=ret(promlog_delete)) >= 0 (signed), and falls through when v0(=ret(promlog_delete)) < 0 (signed).
  The `beq` branch at 0xacec targets 0xad10, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xad10 targets 0xacc4 and is always taken.
  The `beq` branch at 0xad18 targets 0xacc4 and is always taken.
  The return at 0xacd0 has v0 = one of ret(ip27log_setup), ?, 0x0.
- `ip27log_iprintf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xad20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xad20-0xaf60 (576 bytes).
  It occupies 576 bytes.
  The `lhu` at 0xad58 loads 2 bytes from sym(.rodata) +0x12b8.
  The `ld` at 0xad5c loads 8 bytes from sym(.rodata) +0x12b0.
  The `lbu` at 0xad90 loads 1 byte from sym(.rodata) +0x123c.
  The `lw` at 0xad98 loads 4 bytes from sym(.rodata) +0x1238.
  3 such `swl` accesses store 4 bytes to (ret(strlen) + sp-544) +0x0, including `swl` at 0xad9c, `swl` at 0xaeb4, `swl` at 0xaf28.
  3 such `swr` accesses store 4 bytes to (ret(strlen) + sp-544) +0x3, including `swr` at 0xada0, `swr` at 0xaeb8, `swr` at 0xaf2c.
  3 such `sb` accesses store 1 byte to (ret(strlen) + sp-544) +0x4, including `sb` at 0xadac, `sb` at 0xaec8, `sb` at 0xaf3c.
  The `lbu` at 0xae18 loads 1 byte from ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xae1c, `sb` at 0xae34.
  The `lbu` at 0xaea4 loads 1 byte from sym(.rodata) +0x122d.
  The `lw` at 0xaea8 loads 4 bytes from sym(.rodata) +0x1228.
  The `lbu` at 0xaeb0 loads 1 byte from sym(.rodata) +0x122c.
  2 such `sb` accesses store 1 byte to (ret(strlen) + sp-544) +0x5, including `sb` at 0xaebc, `sb` at 0xaf30.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xaef0, `ld` at 0xaf48.
  The `lbu` at 0xaf18 loads 1 byte from sym(.rodata) +0x1235.
  The `lw` at 0xaf1c loads 4 bytes from sym(.rodata) +0x1230.
  The `lbu` at 0xaf24 loads 1 byte from sym(.rodata) +0x1234.
  The `jal` at 0xad84 calls strlen with a0=sp-544, a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=sym(.rodata)+4456.
  The `jal` at 0xada8 calls strlen with a0=sp-544, a1=?, a2=?, a3=0x0, a4=(ret(strlen) + sp-544), a5=0x496e666f.
  The `jal` at 0xadb8 calls vsprintf with a0=sp-512, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The `jal` at 0xadc0 calls strlen with a0=sp-512, a1=?, a2=?, a3=?.
  The `jal` at 0xadc8 calls in_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xade0 calls ip27log_setup with a0=sp-312, a1=a0 at entry (arg0), a2=0x2, a3=?.
  The `jal` at 0xae20 calls promlog_put_log with a0=sp-312, a1=?, a2=?, a3=?.
  The `jal` at 0xae50 calls in_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xae78 calls promlog_errmsg with a0=ret(promlog_put_log), a1=sym(.rodata)+4456, a2=?, a3=?.
  The `jal` at 0xae88 calls printf with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=?.
  The `jal` at 0xae98 calls strlen with a0=sp-544, a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=sym(.rodata)+4456.
  The `jal` at 0xaec4 calls strlen with a0=sp-544, a1=0x6c, a2=(ret(strlen) + sp-544), a3=0x0, a4=0x46617461.
  The `jal` at 0xaed4 calls promlog_errmsg with a0=ret(ip27log_setup), a1=?, a2=?, a3=?.
  The `jal` at 0xaee0 calls printf with a0=sym(.rodata)+4456, a1=ret(promlog_errmsg), a2=?, a3=?.
  The `jal` at 0xaefc calls mutex_spinunlock with a0=[-0x3c00]:8+34372, a1=?, a2=0x8644, a3=?.
  The `jal` at 0xaf0c calls strlen with a0=sp-544, a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=sym(.rodata)+4456.
  The `jal` at 0xaf38 calls strlen with a0=sp-544, a1=?, a2=?, a3=0x72, a4=(ret(strlen) + sp-544), a5=0x0, a6=0x4572726f.
  The `jal` at 0xaf50 calls mutex_spinlock with a0=[-0x3c00]:8+34372, a1=0x8644, a2=0x2, a3=?.
  The `bgez` branch at 0xad50 targets 0xad68, is taken when at(=(a1 << 0x2f)) >= 0 (signed), and falls through when at(=(a1 << 0x2f)) < 0 (signed).
  The `beq` branch at 0xad74 targets 0xaf0c, is taken when v0(?) == a2(=0x1), and falls through when v0(?) != a2(=0x1).
  The `beq` branch at 0xad7c targets 0xae98, is taken when v0(?) == a0(=0x2), and falls through when v0(?) != a0(=0x2).
  The `beq` branch at 0xadd0 targets 0xaf48, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `bltz` branch at 0xadec targets 0xaed4, is taken when v0(=ret(ip27log_setup)) < 0 (signed), and falls through when v0(=ret(ip27log_setup)) >= 0 (signed).
  The `beq` branch at 0xae08 targets 0xae4c, is taken when s0(=sp-512) >= s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned), and falls through when s0(=sp-512) < s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned).
  The `bltz` branch at 0xae2c targets 0xae78, is taken when v0(=ret(promlog_put_log)) < 0 (signed), and falls through when v0(=ret(promlog_put_log)) >= 0 (signed).
  The `bne` branch at 0xae44 targets 0xae14, is taken when s0(?) < s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned), and falls through when s0(?) >= s4(=((ret(strlen) << 0x0) + sp-512)+1) (unsigned).
  The `beq` branch at 0xae58 targets 0xaef0, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `beq` branch at 0xae90 targets 0xae3c and is always taken.
  The `beq` branch at 0xaecc targets 0xadb4 and is always taken.
  The `beq` branch at 0xaee8 targets 0xae50 and is always taken.
  The `beq` branch at 0xaf04 targets 0xae60 and is always taken.
  The `beq` branch at 0xaf40 targets 0xadb4 and is always taken.
  The `beq` branch at 0xaf58 targets 0xadd4 and is always taken.
  The return at 0xae70 has v0 = ?.
- `ip27log_printf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xaf60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xaf60-0xafb0 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0xaf84 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xaf9c calls ip27log_iprintf with a0=?, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-48.
  The return at 0xafa8 has v0 = ret(ip27log_iprintf).
- `ip27log_printf_nasid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xafb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xafb0-0xafec (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0xafd8 calls ip27log_iprintf with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=sp-40.
  The return at 0xafe4 has v0 = ret(ip27log_iprintf).
- `ip27log_panic_printf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xafec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xafec-0xb0ac (192 bytes).
  It occupies 192 bytes.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0xb050, `lh` at 0xb07c.
  2 such `lh` accesses load 2 bytes from (sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2)) +0x0, including `lh` at 0xb074, `lh` at 0xb098.
  The `jal` at 0xaffc calls in_promlog_mode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb014 calls enter_promlog_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb028 calls getsysid with a0=sp-96, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xb03c calls sprintf with a0=sp-96, a1=sym(.rodata)+4456, a2=?, a3=?.
  The `jal` at 0xb070 calls ip27log_printf_nasid with a0=[(sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2))]:2, a1=a0 at entry (arg0), a2=sym(.rodata)+4456, a3=sp-96, a4=([-0x3bd6]:2 + [-0x3bd6]:2).
  The `jal` at 0xb094 calls ip27log_iprintf with a0=[(sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2))]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jal` at 0xb09c calls exit_promlog_mode with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb004 targets 0xb014, is taken when v0(=ret(in_promlog_mode)) == 0, and falls through when v0(=ret(in_promlog_mode)) != 0.
  The `beq` branch at 0xb020 targets 0xb07c, is taken when at(=[sym(.sdata)+88]) == 0, and falls through when at(=[sym(.sdata)+88]) != 0.
  The `beq` branch at 0xb030 targets 0xb044, is taken when v0(=ret(getsysid)) == 0, and falls through when v0(=ret(getsysid)) != 0.
  The `beq` branch at 0xb048 targets 0xb07c, is taken when a2(=[sym(.sdata)+88]) == 0, and falls through when a2(=[sym(.sdata)+88]) != 0.
  The `beq` branch at 0xb0a4 targets 0xb00c and is always taken.
  The return at 0xb00c has v0 = one of ret(in_promlog_mode), ret(exit_promlog_mode).
- `xbwidget_to_xtslot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb0ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb0ac-0xb134 (136 bytes).
  It occupies 136 bytes.
  3 such `lbu` accesses load 1 byte from (sym(.data)+352 + (a1 << 0x2)) -0x1d, including `lbu` at 0xb10c, `lbu` at 0xb11c, `lbu` at 0xb130.
  The `bne` branch at 0xb0c0 targets 0xb0f4, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0xb0c8 targets 0xb0f4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xb0d0 targets 0xb110, is taken when a2 == a5(=0x49), and falls through when a2 != a5(=0x49).
  The `beq` branch at 0xb0d8 targets 0xb120, is taken when a2 == a6(=0x50), and falls through when a2 != a6(=0x50).
  The `beq` branch at 0xb0e0 targets 0xb0fc, is taken when a2 == a7(=0x58), and falls through when a2 != a7(=0x58).
  The return at 0xb0ec has v0 = 0xf0.
  The return at 0xb0f4 has v0 = 0xf0.
  The return at 0xb108 has v0 = [(sym(.data)+352 + (a1 << 0x2))-29]:1.
  The return at 0xb118 has v0 = [(sym(.data)+352 + (a1 << 0x2))-29]:1.
  The return at 0xb12c has v0 = [(sym(.data)+352 + (a1 << 0x2))-29]:1.
- `get_slotclass` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb134 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb134-0xb1a0 (108 bytes).
  It occupies 108 bytes.
  The `beq` branch at 0xb154 targets 0xb194, is taken when (a0 & 0xf0) == 0, and falls through when (a0 & 0xf0) != 0.
  The `beq` branch at 0xb160 targets 0xb180, is taken when a3(?) == a5(=0x10), and falls through when a3(?) != a5(=0x10).
  The `beq` branch at 0xb168 targets 0xb180, is taken when a3(?) == at(=0x20), and falls through when a3(?) != at(=0x20).
  The `beq` branch at 0xb170 targets 0xb180, is taken when a3(?) == a6(=0x60), and falls through when a3(?) != a6(=0x60).
  The `beq` branch at 0xb178 targets 0xb188, is taken when a3(?) == t0(=0xf0), and falls through when a3(?) != t0(=0xf0).
  The return at 0xb180 has v0 = sym(.rodata)+4896.
  The return at 0xb18c has v0 = sym(.rodata)+4896.
  The return at 0xb198 has v0 = sym(.rodata)+4896.
- `get_slotname` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb1a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb1a0-0xb1e0 (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0xb1b0 calls get_slotclass [0xb134] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb1c8 calls sprintf with a0=a1 at entry (arg1), a1=sym(.rodata)+4896, a2=ret(get_slotclass), a3=?.
  The return at 0xb1d8 has v0 = ret(sprintf).
- `get_widget_slotnum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb1e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb1e0-0xb1fc (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xb1e8 calls xbwidget_to_xtslot [0xb0ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xb1f4 has v0 = ret(xbwidget_to_xtslot).
- `get_widget_slotname` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb1fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb1fc-0xb22c (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb208 calls get_widget_slotnum with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb214 calls get_slotname with a0=ret(get_widget_slotnum), a1=a3 at entry (arg3), a2=?, a3=?.
  The return at 0xb224 has v0 = ret(get_slotname).
- `xswitch_vertex_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb22c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb22c-0xb284 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0xb240 calls kmem_zalloc with a0=0x20, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb25c calls init_mutex with a0=ret(kmem_zalloc), a1=0x0, a2=sym(.rodata)+4936, a3=-0x1.
  The `jal` at 0xb26c calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=ret(kmem_zalloc), a3=?.
  The return at 0xb27c has v0 = ret(hwgraph_info_add_LBL).
- `xswitch_volunteer_delete` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb284 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb284-0xb2b0 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0xb290 calls hwgraph_info_remove_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-16, a3=a3 at entry (arg3).
  The `jal` at 0xb29c calls kmem_free with a0=?, a1=0x20, a2=?, a3=?.
  The return at 0xb2a8 has v0 = ret(kmem_free).
- `volunteer_for_widgets` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb2b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb2b0-0xb3d8 (296 bytes).
  It occupies 296 bytes.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb2ec, `lw` at 0xb300, `lw` at 0xb310.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb2f8, `sw` at 0xb308, `sw` at 0xb3b0.
  The `ld` at 0xb354 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xb358 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xb364 loads 8 bytes from ([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3)) +0x0.
  The `lhu` at 0xb370 loads 2 bytes from [([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8 +0x8598.
  The `lbu` at 0xb39c loads 1 byte from ?.
  The `jal` at 0xb2cc calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0xb2e0 calls mutex_lock with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0xb320 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb338 calls nodevertex_to_cnodeid with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0xb34c calls nodevertex_to_cnodeid with a0=a1 at entry (arg1), a1=?, a2=-0x1, a3=?.
  The `jal` at 0xb390 calls hwgraph_info_get_LBL with a0=?, a1=sym(.rodata)+4936, a2=sp-40, a3=?.
  The `jal` at 0xb3c8 calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=a0 at entry (arg0), a3=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2, a4=sym(.rodata)+4936, a5=(ret(nodevertex_to_cnodeid) << 0x3).
  The `beq` branch at 0xb2d8 targets 0xb338, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xb318 targets 0xb384, is taken when at(?) == v0(=0x2), and falls through when at(?) != v0(=0x2).
  The `beq` branch at 0xb344 targets 0xb32c, is taken when v0(=ret(nodevertex_to_cnodeid)) == a2(=-0x1), and falls through when v0(=ret(nodevertex_to_cnodeid)) != a2(=-0x1).
  The `beq` branch at 0xb374 targets 0xb328, is taken when a3(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) == 0, and falls through when a3(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) != 0.
  The `beq` branch at 0xb37c targets 0xb3c4 and is always taken.
  The `beq` branch at 0xb3a4 targets 0xb3bc, is taken when a2(?) == a3(=0xa), and falls through when a2(?) != a3(=0xa).
  The `beq` branch at 0xb3bc targets 0xb320 and is always taken.
  The `beq` branch at 0xb3d0 targets 0xb32c and is always taken.
  The return at 0xb330 has v0 = one of ?, ret(nodevertex_to_cnodeid), ret(cmn_err).
- `assign_widgets_to_volunteers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb3d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb3d8-0xb650 (632 bytes).
  It occupies 632 bytes.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0xb418, `lh` at 0xb538.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb450, `lw` at 0xb460, `lw` at 0xb498.
  The `ld` at 0xb4d4 loads 8 bytes from table(0x9000000034000000) +0x0.
  The `ld` at 0xb5d8 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xb5dc loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xb5e8 loads 8 bytes from ([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3)) +0x0.
  The `lhu` at 0xb5f4 loads 2 bytes from [([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8 +0x8598.
  The `jal` at 0xb400 calls hwgraph_info_get_LBL with a0=a1 at entry (arg1), a1=sym(.rodata)+4936, a2=sp-104, a3=a3 at entry (arg3).
  The `jal` at 0xb414 calls xswitch_info_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xb428 calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-112, a3=?.
  The `jal` at 0xb45c calls xswitch_info_master_assignment_set with a0=ret(xswitch_info_get), a1=0x0, a2=?, a3=?.
  The `jal` at 0xb4a4 calls xswitch_info_master_assignment_set with a0=ret(xswitch_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0xb4c0 calls xbow_port_io_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb4e4 calls is_master_nasid_widget with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb528 calls hwgraph_info_get_LBL with a0=?, a1=sym(.rodata)+4936, a2=sp-104, a3=?.
  The `jal` at 0xb534 calls get_console_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb54c calls xswitch_volunteer_delete [0xb284] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xb588 calls iobrick_l1type_get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb5a8 calls io_brick_map_widget with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb5bc calls nodevertex_to_cnodeid with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0xb5d0 calls nodevertex_to_cnodeid with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0xb610 calls get_console_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb628 calls cmn_err with a0=0x0, a1=sym(.rodata)+4936, a2=?, a3=ret(get_console_nasid).
  The `jal` at 0xb640 calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=a0 at entry (arg0), a3=?.
  The `beq` branch at 0xb448 targets 0xb5b8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xb478 targets 0xb4bc and is always taken.
  The `bne` branch at 0xb484 targets 0xb584, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0xb4b8 targets 0xb54c, is taken when s3(?) >= 0x10 (signed), and falls through when s3(?) < 0x10 (signed).
  The `beq` branch at 0xb4c8 targets 0xb4ac, is taken when v0(=ret(xbow_port_io_enabled)) == 0, and falls through when v0(=ret(xbow_port_io_enabled)) != 0.
  The `beq` branch at 0xb4dc targets 0xb480, is taken when s5(=0xc000) == t8(?), and falls through when s5(=0xc000) != t8(?).
  The `beq` branch at 0xb4ec targets 0xb484, is taken when v0(=ret(is_master_nasid_widget)) == 0, and falls through when v0(=ret(is_master_nasid_widget)) != 0.
  The `blez` branch at 0xb4f4 targets 0xb610, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0xb4fc targets 0xb510 and is always taken.
  The `beq` branch at 0xb508 targets 0xb610, is taken when s1(?) >= s4(?) (signed), and falls through when s1(?) < s4(?) (signed).
  The `bne` branch at 0xb53c targets 0xb504, is taken when s0(?) != v0(=ret(get_console_nasid)), and falls through when s0(?) == v0(=ret(get_console_nasid)).
  The `beq` branch at 0xb544 targets 0xb4a0 and is always taken.
  The `bltz` branch at 0xb590 targets 0xb48c, is taken when v0(=ret(iobrick_l1type_get_nasid)) < 0 (signed), and falls through when v0(=ret(iobrick_l1type_get_nasid)) >= 0 (signed).
  The `beq` branch at 0xb598 targets 0xb608, is taken when v0(=ret(iobrick_l1type_get_nasid)) == t8(=0x23), and falls through when v0(=ret(iobrick_l1type_get_nasid)) != t8(=0x23).
  The `beq` branch at 0xb5a0 targets 0xb608, is taken when v0(=ret(iobrick_l1type_get_nasid)) == t9(=0x3d), and falls through when v0(=ret(iobrick_l1type_get_nasid)) != t9(=0x3d).
  The `beq` branch at 0xb5b0 targets 0xb48c and is always taken.
  The `beq` branch at 0xb5c8 targets 0xb558, is taken when v0(=ret(nodevertex_to_cnodeid)) == ra(=-0x1), and falls through when v0(=ret(nodevertex_to_cnodeid)) != ra(=-0x1).
  The `beq` branch at 0xb5f8 targets 0xb558, is taken when at(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) == 0, and falls through when at(=[[([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8+34200]:2) != 0.
  The `beq` branch at 0xb600 targets 0xb638 and is always taken.
  The `beq` branch at 0xb608 targets 0xb5a4 and is always taken.
  The `beq` branch at 0xb630 targets 0xb484 and is always taken.
  The `beq` branch at 0xb648 targets 0xb558 and is always taken.
  The return at 0xb57c has v0 = one of ret(xswitch_volunteer_delete), ret(nodevertex_to_cnodeid), [([[-0x3c00]:8]:8 + (ret(nodevertex_to_cnodeid) << 0x3))]:8, ret(cmn_err).
- `iograph_early_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb650 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb650-0xb7c8 (376 bytes).
  It occupies 376 bytes.
  The `lh` at 0xb6c0 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xb6cc, `ld` at 0xb6e0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xb6ec, `lw` at 0xb710, `lw` at 0xb724.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb730, `sw` at 0xb75c.
  The `lh` at 0xb7c4 loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0xb778 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb788 calls hubio_init with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xb688 targets 0xb788, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `beq` branch at 0xb69c targets 0xb7b8 and is always taken.
  The `beq` branch at 0xb6b8 targets 0xb788, is taken when s3(?) >= t8(=[sym(numnodes)]) (signed), and falls through when s3(?) < t8(=[sym(numnodes)]) (signed).
  The `beq` branch at 0xb6d8 targets 0xb778, is taken when s5(=0xc000) == t8(?), and falls through when s5(=0xc000) != t8(?).
  The `beq` branch at 0xb6f8 targets 0xb704, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xb704 targets 0xb6a4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xb70c targets 0xb728 and is always taken.
  The `beq` branch at 0xb71c targets 0xb6a4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xb73c targets 0xb74c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xb74c targets 0xb6a4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb768 targets 0xb714, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xb770 targets 0xb71c and is always taken.
  The `beq` branch at 0xb780 targets 0xb704 and is always taken.
  The `beq` branch at 0xb7c0 targets 0xb6c4 and is always taken.
  The return at 0xb7b0 has v0 = ret(hubio_init).
- `setnoderun` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb7c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb7c8-0xb8d0 (264 bytes).
  It occupies 264 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xb7fc, `ld` at 0xb83c.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0xb800, `ld` at 0xb840.
  The `ld` at 0xb808 loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0xb810 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  The `lhu` at 0xb81c loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598.
  The `ld` at 0xb848 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lhu` at 0xb850 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598.
  The `jal` at 0xb86c calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb87c calls setmustrun with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xb7f0 targets 0xb8bc, is taken when a0 == a5(=-0x1), and falls through when a0 != a5(=-0x1).
  The `beq` branch at 0xb814 targets 0xb8c8, is taken when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == a5(=-0x1), and falls through when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != a5(=-0x1).
  The `blez` branch at 0xb82c targets 0xb89c, is taken when t8(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) <= 0 (signed), and falls through when t8(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) > 0 (signed).
  The `beq` branch at 0xb834 targets 0xb86c and is always taken.
  The `beq` branch at 0xb864 targets 0xb89c, is taken when s1(?) >= t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed), and falls through when s1(?) < t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  The `beq` branch at 0xb874 targets 0xb83c, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0xb8c0 targets 0xb8a4 and is always taken.
  The `beq` branch at 0xb8c8 targets 0xb8a4 and is always taken.
  The return at 0xb8b4 has v0 = one of ?, 0x0.
- `restorenoderun` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb8d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb8d0-0xb8ec (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xb8d8 calls restoremustrun with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xb8e4 has v0 = ret(restoremustrun).
- `io_init_done` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb8ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb8ec-0xb91c (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xb8f8 calls vsema with a0=sym(.bss)+1792, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb900 calls restorenoderun with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0xb908 calls sthread_exit with a0=?, a1=?, a2=?, a3=?.
  The return at 0xb914 has v0 = ret(sthread_exit).
- `early_probe_for_widget` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb91c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb91c-0xb9b0 (148 bytes).
  It occupies 148 bytes.
  The `lh` at 0xb940 loads 2 bytes from ?.
  The `ld` at 0xb950 loads 8 bytes from table(0x9200000001c00128) +0x0.
  The `lw` at 0xb96c loads 4 bytes from table(0x9200000000000004) +0x0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0xb974, `sw` at 0xb9a4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x8, including `sw` at 0xb984, `sw` at 0xb9a0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0xb98c, `sw` at 0xb9ac.
  The `jal` at 0xb934 calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+4936, a2=sp-32, a3=a3 at entry (arg3).
  The `beq` branch at 0xb964 targets 0xb99c, is taken when (a3(=entry(0x9200000001c00128)) & 0x2000) == 0, and falls through when (a3(=entry(0x9200000001c00128)) & 0x2000) != 0.
  The `beq` branch at 0xb9a8 targets 0xb990 and is always taken.
  The return at 0xb994 has v0 = ret(hwgraph_info_get_LBL).
- `xwidget_inventory_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb9b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb9b0-0xb9f0 (64 bytes).
  It occupies 64 bytes.
  The `lbu` at 0xb9cc loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lbu` at 0xb9d0 loads 1 byte from a1 (arg1 at entry) +0xa.
  The `lh` at 0xb9d8 loads 2 bytes from a1 (arg1 at entry) +0xe.
  The `jal` at 0xb9e0 calls device_inventory_add with a0=a0 at entry (arg0), a1=0xb, a2=[a1+5]:1, a3=[a1+14]:2, a7=a1 at entry (arg1).
  The `bne` branch at 0xb9bc targets 0xb9cc, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0xb9e8 targets 0xb9c4 and is always taken.
  The return at 0xb9c4 has v0 = one of ?, ret(device_inventory_add).
- `io_xswitch_widget_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xb9f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xb9f0-0xc184 (1940 bytes).
  It occupies 1940 bytes.
  The `lh` at 0xba44 loads 2 bytes from ?.
  9 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xba50, `ld` at 0xbb38, `ld` at 0xbc48.
  The `lh` at 0xba58 loads 2 bytes from table(sym(nasid_to_compact_node)) +0x0.
  7 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0xba5c, `ld` at 0xbb3c, `ld` at 0xbc4c.
  6 such `ld` accesses load 8 bytes from ([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3)) +0x0, including `ld` at 0xba68, `ld` at 0xbc54, `ld` at 0xbd4c.
  The `lh` at 0xba74 loads 2 bytes from [([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8 +0x8600.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xba8c, `lbu` at 0xbde8, `lbu` at 0xbdf0.
  The `ld` at 0xbae0 loads 8 bytes from table(0x9000000034000000) +0x0.
  The `ld` at 0xbb04 loads 8 bytes from (table(0x9600000000000000) | 0x2000) +0x48.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xbb14, `lw` at 0xbb98, `lw` at 0xbed4.
  The `ld` at 0xbb44 loads 8 bytes from ((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0xbb4c loads 2 bytes from [((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8600.
  The `ld` at 0xbb64 loads 8 bytes from ([[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0xbb88 loads 8 bytes from (([[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xbc10, `ld` at 0xbc84, `ld` at 0xbcac.
  5 such `lh` accesses load 2 bytes from [([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8 +0x861a, including `lh` at 0xbc6c, `lh` at 0xbd60, `lh` at 0xbd98.
  The `ld` at 0xbf40 loads 8 bytes from abs 0x9000000014000000.
  The `jal` at 0xba10 calls xswitch_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xba38 calls hwgraph_info_get_LBL with a0=a1 at entry (arg1), a1=sym(.rodata)+4936, a2=sp-352, a3=?.
  The `jal` at 0xba9c calls xbow_port_io_enabled with a0=?, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xbab0 calls xswitch_info_link_ok with a0=ret(xswitch_info_get), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xbac0 calls xswitch_info_master_assignment_get with a0=ret(xswitch_info_get), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xbb28 calls find_lboard_class with a0=?, a1=0x70, a2=?, a3=?.
  The `jal` at 0xbbb0 calls find_lboard_class with a0=?, a1=0x70, a2=?, a3=?.
  The `jal` at 0xbbd4 calls iobrick_module_get_nasid with a0=?, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xbbe4 calls iobrick_l1type_get_nasid with a0=?, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xbbf0 calls iobrick_L1bricktype_to_name with a0=ret(iobrick_l1type_get_nasid), a1=?, a2=?, a3=?.
  The `jal` at 0xbc30 calls get_chimera_type with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbc68 calls sprintf with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name).
  The `jal` at 0xbc78 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sp-344, a2=sp-216, a3=?.
  The `jal` at 0xbc98 calls get_chimera_type with a0=?, a1=sym(.rodata)+4936, a2=?, a3=?, a4=0x4000.
  The `jal` at 0xbcd0 calls get_chimera_type with a0=?, a1=?, a2=?, a3=?, a4=0x3, a5=0x8000, a7=0xe.
  The `jal` at 0xbcfc calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+4936, a2=0x5, a3=?.
  The `jal` at 0xbd04 calls kern_malloc with a0=0x20, a1=?, a2=?, a3=?.
  The `jal` at 0xbd0c calls get_elsc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd20 calls l1_mfg_string with a0=?, a1=ret(get_elsc), a2=?, a3=a2 at entry (arg2).
  The `jal` at 0xbd30 calls kern_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd38 calls sndrv_attach with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbd5c calls sprintf with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=?.
  The `jal` at 0xbd64 calls hwgraph_path_to_vertex with a0=sp-344, a1=?, a2=?, a3=?.
  The `jal` at 0xbd94 calls sprintf with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name).
  The `jal` at 0xbd9c calls hwgraph_path_to_vertex with a0=sp-344, a1=?, a2=?, a3=?.
  The `jal` at 0xbdb8 calls hwgraph_edge_add with a0=?, a1=?, a2=sym(.rodata)+4936, a3=?.
  The `jal` at 0xbe10 calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xbe4c calls sprintf with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name), a4=sym(.rodata)+4936, a5=a2 at entry (arg2).
  The `jal` at 0xbe68 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sp-344, a2=sp-212, a3=?.
  The `jal` at 0xbe70 calls hwgraph_connectpt_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbe7c calls device_master_set with a0=ret(hwgraph_connectpt_get), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xbe94 calls sprintf with a0=sp-208, a1=sym(.rodata)+4936, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0xbea4 calls hwgraph_edge_add with a0=a0 at entry (arg0), a1=?, a2=sp-208, a3=?.
  The `jal` at 0xbeb4 calls xswitch_info_vhdl_set with a0=ret(xswitch_info_get), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xbf14 calls xwidget_inventory_add [0xb9b0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbf54 calls get_chimera_type with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbf68 calls get_chimera_type with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbf7c calls get_chimera_type with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbfcc calls hub_set_piomode with a0=?, a1=0x2, a2=?, a3=?.
  The `jal` at 0xbff0 calls xwidget_register with a0=sp-200, a1=?, a2=a2 at entry (arg2), a3=a1 at entry (arg1), a5=a3 at entry (arg3).
  The `jal` at 0xc02c calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+4936, a2=0x4, a3=?.
  The `jal` at 0xc03c calls xbow_port_io_enabled with a0=?, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0xc074 calls sprintf with a0=sp-344, a1=sym(.rodata)+4936, a2=[[([[-0x3c00]:8]:8 + (entry(sym(nasid_to_compact_node)) << 0x3))]:8+34330]:2, a3=ret(iobrick_L1bricktype_to_name).
  The `jal` at 0xc0b4 calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xc0c4 calls hub_set_piomode with a0=?, a1=0x2, a2=?, a3=?.
  The `jal` at 0xc0e4 calls chk_for_pebrick with a0=?, a1=-0x35, a2=?, a3=?.
  The `jal` at 0xc0f4 calls chk_for_pebrick with a0=[[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a1=-0x35, a2=([[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 << 0x21), a3=?.
  The `jal` at 0xc110 calls assfail with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x29a, a3=?.
  The `jal` at 0xc12c calls assfail with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x2da, a3=?.
  The `jal` at 0xc148 calls assfail with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x2de, a3=?.
  The `jal` at 0xc160 calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=sp-344, a3=0x1.
  The `jal` at 0xc174 calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=sp-344, a3=?.
  The `beq` branch at 0xbaa4 targets 0xc03c, is taken when v0(=ret(xbow_port_io_enabled)) == 0, and falls through when v0(=ret(xbow_port_io_enabled)) != 0.
  The `beq` branch at 0xbab8 targets 0xbff8, is taken when v0(=ret(xswitch_info_link_ok)) == 0, and falls through when v0(=ret(xswitch_info_link_ok)) != 0.
  The `bne` branch at 0xbac8 targets 0xbff8, is taken when v0(=ret(xswitch_info_master_assignment_get)) != s4(=a1), and falls through when v0(=ret(xswitch_info_master_assignment_get)) == s4(=a1).
  The `beq` branch at 0xbaec targets 0xc0e4, is taken when t0(=0xc000) == t9(?), and falls through when t0(=0xc000) != t9(?).
  The `beq` branch at 0xbb18 targets 0xc0a4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xbb30 targets 0xbbbc, is taken when v0(=ret(find_lboard_class)) != 0, and falls through when v0(=ret(find_lboard_class)) == 0.
  The `beq` branch at 0xbb54 targets 0xbbbc, is taken when a0(=[[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == a2(=-0x1), and falls through when a0(=[[((entry(sym(nasid_to_compact_node)) << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != a2(=-0x1).
  The `beq` branch at 0xbb70 targets 0xc0f4, is taken when a1(=0xc000) == a3(?), and falls through when a1(=0xc000) != a3(?).
  The `beq` branch at 0xbb9c targets 0xbbb0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xbbc0 targets 0xc104, is taken when a1(=ret(find_lboard_class)) == 0, and falls through when a1(=ret(find_lboard_class)) != 0.
  The `bltz` branch at 0xbc04 targets 0xbe20, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xbc1c targets 0xbc30, is taken when v0(=0x8000) != a1(?), and falls through when v0(=0x8000) == a1(?).
  The `beq` branch at 0xbc28 targets 0xc054, is taken when s0(=a2) == a2(=0xb), and falls through when s0(=a2) != a2(=0xb).
  The `beq` branch at 0xbc38 targets 0xbc48, is taken when v0(=ret(get_chimera_type)) == 0, and falls through when v0(=ret(get_chimera_type)) != 0.
  The `beq` branch at 0xbc40 targets 0xc054, is taken when s0(=a2) == a3(=0xa), and falls through when s0(=a2) != a3(=0xa).
  The `beq` branch at 0xbc90 targets 0xc024, is taken when a3(?) == a4(=0x4000), and falls through when a3(?) != a4(=0x4000).
  The `beq` branch at 0xbca4 targets 0xc020, is taken when v0(=ret(get_chimera_type)) == a4(=0x3), and falls through when v0(=ret(get_chimera_type)) != a4(=0x3).
  The `bne` branch at 0xbcb8 targets 0xbcd0, is taken when a5(=0x8000) != a6(?), and falls through when a5(=0x8000) == a6(?).
  The `beq` branch at 0xbcc0 targets 0xc020, is taken when s0(=a2) == a7(=0xe), and falls through when s0(=a2) != a7(=0xe).
  The `beq` branch at 0xbcc8 targets 0xc024, is taken when s0(=a2) == t0(=0xf), and falls through when s0(=a2) != t0(=0xf).
  The `beq` branch at 0xbcd8 targets 0xbcf4, is taken when v0(=ret(get_chimera_type)) == 0, and falls through when v0(=ret(get_chimera_type)) != 0.
  The `beq` branch at 0xbce4 targets 0xc020, is taken when s0(=a2) == t1(=0xc), and falls through when s0(=a2) != t1(=0xc).
  The `beq` branch at 0xbcec targets 0xc020, is taken when s0(=a2) == t2(=0xf), and falls through when s0(=a2) != t2(=0xf).
  The `beq` branch at 0xbd28 targets 0xc0ac, is taken when v0(=ret(l1_mfg_string)) == 0, and falls through when v0(=ret(l1_mfg_string)) != 0.
  The `beq` branch at 0xbd6c targets 0xc120, is taken when v0(=ret(hwgraph_path_to_vertex)) == 0, and falls through when v0(=ret(hwgraph_path_to_vertex)) != 0.
  The `beq` branch at 0xbda4 targets 0xc13c, is taken when v0(=ret(hwgraph_path_to_vertex)) == 0, and falls through when v0(=ret(hwgraph_path_to_vertex)) != 0.
  The `beq` branch at 0xbdc4 targets 0xbe20, is taken when v0(=ret(hwgraph_edge_add)) == a3(=0x1), and falls through when v0(=ret(hwgraph_edge_add)) != a3(=0x1).
  The `bne` branch at 0xbdcc targets 0xc158, is taken when v0(=ret(hwgraph_edge_add)) != 0, and falls through when v0(=ret(hwgraph_edge_add)) == 0.
  The `beq` branch at 0xbdf8 targets 0xbe04, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `bne` branch at 0xbe18 targets 0xc170, is taken when v0(=ret(hwgraph_info_add_LBL)) != 0, and falls through when v0(=ret(hwgraph_info_add_LBL)) == 0.
  The `beq` branch at 0xbebc targets 0xc084, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0xbf20 targets 0xc090, is taken when t8(=[sym(force_fire_and_forget)]) == 0, and falls through when t8(=[sym(force_fire_and_forget)]) != 0.
  The `beq` branch at 0xbf28 targets 0xbfcc, is taken when s2(?) == t9(=0xc104), and falls through when s2(?) != t9(=0xc104).
  The `beq` branch at 0xbf34 targets 0xbfcc, is taken when s2(?) == ra(=0xc105), and falls through when s2(?) != ra(=0xc105).
  The `beq` branch at 0xbf4c targets 0xbfcc, is taken when at(?) == v0(=0x4000), and falls through when at(?) != v0(=0x4000).
  The `beq` branch at 0xbf60 targets 0xbfcc, is taken when v0(=ret(get_chimera_type)) == v1(=0x2), and falls through when v0(=ret(get_chimera_type)) != v1(=0x2).
  The `beq` branch at 0xbf74 targets 0xbfcc, is taken when v0(=ret(get_chimera_type)) == a0(=0x3), and falls through when v0(=ret(get_chimera_type)) != a0(=0x3).
  The `beq` branch at 0xbf88 targets 0xbfcc, is taken when v0(=ret(get_chimera_type)) == a1(=0x5), and falls through when v0(=ret(get_chimera_type)) != a1(=0x5).
  The `beq` branch at 0xbf94 targets 0xc0d4, is taken when s2(?) == a2(=0xd102), and falls through when s2(?) != a2(=0xd102).
  The `bne` branch at 0xbfa0 targets 0xbfe0, is taken when s2(?) != a3(=0xd112), and falls through when s2(?) == a3(=0xd112).
  The `bne` branch at 0xbfac targets 0xbfe0, is taken when s5(?) != a4(=0x24), and falls through when s5(?) == a4(=0x24).
  The `beq` branch at 0xbfc4 targets 0xbfdc, is taken when (a5(?) & 0x2) == 0, and falls through when (a5(?) & 0x2) != 0.
  The `bne` branch at 0xbfd4 targets 0xc0c4, is taken when s1(?) != s8(?), and falls through when s1(?) == s8(?).
  The `beq` branch at 0xc034 targets 0xbd04 and is always taken.
  The `bne` branch at 0xc044 targets 0xbab0, is taken when v0(=ret(xbow_port_io_enabled)) != 0, and falls through when v0(=ret(xbow_port_io_enabled)) == 0.
  The `beq` branch at 0xc04c targets 0xbffc and is always taken.
  The `beq` branch at 0xc07c targets 0xbc74 and is always taken.
  The `beq` branch at 0xc088 targets 0xbed4 and is always taken.
  The `bne` branch at 0xc094 targets 0xbf28, is taken when s2(?) != v1(=0xc102), and falls through when s2(?) == v1(=0xc102).
  The `beq` branch at 0xc09c targets 0xbfcc and is always taken.
  The `beq` branch at 0xc0a4 targets 0xbb28 and is always taken.
  The `beq` branch at 0xc0bc targets 0xbd38 and is always taken.
  The `beq` branch at 0xc0cc targets 0xbfe0 and is always taken.
  The `bne` branch at 0xc0d4 targets 0xbfa0, is taken when s5(?) != v0(=0x24), and falls through when s5(?) == v0(=0x24).
  The `beq` branch at 0xc0dc targets 0xbfb8 and is always taken.
  The `beq` branch at 0xc0ec targets 0xbb28 and is always taken.
  The `beq` branch at 0xc0fc targets 0xbbb0 and is always taken.
  The `beq` branch at 0xc118 targets 0xbbd4 and is always taken.
  The `beq` branch at 0xc134 targets 0xbd78 and is always taken.
  The `beq` branch at 0xc150 targets 0xbdb0 and is always taken.
  The `beq` branch at 0xc168 targets 0xbdd4 and is always taken.
  The `beq` branch at 0xc17c targets 0xbe24 and is always taken.
  The return at 0xc018 has v0 = one of ?, ret(xbow_port_io_enabled).
- `io_init_xswitch_widgets` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc184 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc184-0xc22c (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xc1c0 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xc1c4 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xc1cc loads 8 bytes from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0.
  The `lw` at 0xc1e4 loads 4 bytes from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x8c80.
  The `jal` at 0xc1a8 calls async_attach_new with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc1e0 calls io_xswitch_widget_init with a0=a0 at entry (arg0), a1=[[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+35968], a2=?, a3=ret(async_attach_new).
  The `jal` at 0xc1fc calls async_attach_waitall with a0=ret(async_attach_new), a1=?, a2=?, a3=?.
  The `jal` at 0xc214 calls async_attach_free with a0=ret(async_attach_new), a1=?, a2=?, a3=?.
  The `bne` branch at 0xc1f4 targets 0xc1c0, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The return at 0xc224 has v0 = ret(async_attach_free).
- `io_link_xswitch_widgets` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc22c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc22c-0xc4ac (640 bytes).
  It occupies 640 bytes.
  The `lh` at 0xc264 loads 2 bytes from (sym(compact_to_nasid_node) + (a1 + a1)) +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xc26c, `ld` at 0xc2f4, `ld` at 0xc3c4.
  3 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0xc280, `ld` at 0xc2f8, `ld` at 0xc3c8.
  3 such `ld` accesses load 8 bytes from ([[-0x3c00]:8]:8 + (a1 << 0x3)) +0x0, including `ld` at 0xc29c, `ld` at 0xc300, `ld` at 0xc3d0.
  The `lh` at 0xc2b4 loads 2 bytes from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x8600.
  2 such `lh` accesses load 2 bytes from [([[-0x3c00]:8]:8 + (a1 << 0x3))]:8 +0x861a, including `lh` at 0xc30c, `lh` at 0xc3dc.
  2 such `sw` accesses store 4 bytes to ret(find_lboard_module) +0x90, including `sw` at 0xc348, `sw` at 0xc43c.
  The `ld` at 0xc388 loads 8 bytes from ([(sym(compact_to_nasid_node) + (a1 + a1))]:2 << 0x21) -0x6fffffffcc000000.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc3a0, `ld` at 0xc3fc, `ld` at 0xc414.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc3b0, `lw` at 0xc420.
  The `jal` at 0xc308 calls find_lboard_module with a0=?, a1=[[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+34330]:2, a2=?, a3=?.
  The `jal` at 0xc324 calls sprintf with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xc334 calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-288, a2=sp-160, a3=?.
  The `jal` at 0xc368 calls sprintf with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xc378 calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-288, a2=sp-160, a3=?.
  The `jal` at 0xc3d8 calls find_lboard_module with a0=?, a1=[[([[-0x3c00]:8]:8 + (a1 << 0x3))]:8+34330]:2, a2=?, a3=?.
  The `jal` at 0xc470 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc480 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc49c calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `beq` branch at 0xc2e8 targets 0xc35c and is always taken.
  The `beq` branch at 0xc314 targets 0xc490, is taken when s2(=ret(find_lboard_module)) == 0, and falls through when s2(=ret(find_lboard_module)) != 0.
  The `beq` branch at 0xc33c targets 0xc438, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0xc358 targets 0xc440, is taken when s0(?) >= 0x10 (signed), and falls through when s0(?) < 0x10 (signed).
  The `bne` branch at 0xc380 targets 0xc34c, is taken when v0(=ret(hwgraph_traverse)) != 0, and falls through when v0(=ret(hwgraph_traverse)) == 0.
  The `beq` branch at 0xc398 targets 0xc470, is taken when s4(=0xc000) == a2(?), and falls through when s4(=0xc000) != a2(?).
  The `beq` branch at 0xc3b8 targets 0xc3c4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xc3e4 targets 0xc314, is taken when v0(=ret(find_lboard_module)) != 0, and falls through when v0(=ret(find_lboard_module)) == 0.
  The `beq` branch at 0xc3f4 targets 0xc314, is taken when a2(?) == a3(=-0x1), and falls through when a2(?) != a3(=-0x1).
  The `beq` branch at 0xc408 targets 0xc480, is taken when s4(=0xc000) == a4(?), and falls through when s4(=0xc000) != a4(?).
  The `bne` branch at 0xc428 targets 0xc2f0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xc430 targets 0xc2f4 and is always taken.
  The `beq` branch at 0xc438 targets 0xc34c and is always taken.
  The `beq` branch at 0xc478 targets 0xc3c4 and is always taken.
  The `beq` branch at 0xc488 targets 0xc2f4 and is always taken.
  The `beq` branch at 0xc4a4 targets 0xc444 and is always taken.
  The return at 0xc468 has v0 = one of ret(hwgraph_traverse), ret(cmn_err).
- `do_io_init_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc4ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc4ac-0xc7b4 (776 bytes).
  It occupies 776 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xc4ac, `ld` at 0xc6a8.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0xc4b4, `ld` at 0xc6b4.
  The `ld` at 0xc4c8 loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lw` at 0xc4dc loads 4 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8c80.
  The `ld` at 0xc4f4 loads 8 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x85e8.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc514, `ld` at 0xc520, `ld` at 0xc52c.
  2 such `lh` accesses load 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0, including `lh` at 0xc554, `lh` at 0xc598.
  The `lw` at 0xc5a8 loads 4 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dffffff1ffffffc.
  3 such `sb` accesses store 1 byte to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x863c, including `sb` at 0xc5ec, `sb` at 0xc778, `sb` at 0xc7a8.
  The `sw` at 0xc614 stores 4 bytes to [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8640.
  2 such `lbu` accesses load 1 byte from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x863c, including `lbu` at 0xc668, `lbu` at 0xc7b0.
  The `lbu` at 0xc67c loads 1 byte from ?.
  The `lh` at 0xc690 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8600.
  The `lh` at 0xc6b0 loads 2 bytes from (sym(nasid_to_compact_node) + ([[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2 + [[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2)) +0x0.
  The `lw` at 0xc6dc loads 4 bytes from table(0x8c80) +0x0.
  2 such `lw` accesses load 4 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dffffff1fffffdc, including `lw` at 0xc768, `lw` at 0xc78c.
  The `jal` at 0xc4ec calls hubdev_docallouts with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc50c calls router_init with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0xc550 calls eeprom_vertex_info_set with a0=0x100, a1=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a2=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a3=0x0, a4=0x0.
  The `jal` at 0xc55c calls early_probe_for_widget [0xb91c] with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=sp-112, a2=?, a3=?.
  The `jal` at 0xc57c calls hwgraph_path_add with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=sym(.rodata)+4936, a2=sp-96, a3=?.
  The `jal` at 0xc590 calls hwgraph_edge_add with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=?, a2=sym(.rodata)+4936, a3=?.
  The `jal` at 0xc5f8 calls sprintf with a0=sp-88, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xc608 calls hwgraph_path_add with a0=?, a1=sp-88, a2=sp-72, a3=?.
  The `jal` at 0xc640 calls device_master_set with a0=?, a1=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a2=?, a3=?.
  The `jal` at 0xc658 calls hwgraph_info_get_LBL with a0=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a1=sym(.rodata)+4936, a2=sp-64, a3=?.
  The `jal` at 0xc678 calls xwidget_register with a0=sp-112, a1=?, a2=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34364]:1, a3=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a5=0x0.
  The `jal` at 0xc688 calls volunteer_for_widgets [0xb2b0] with a0=?, a1=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a2=?, a3=?.
  The `jal` at 0xc6d8 calls volunteer_for_widgets [0xb2b0] with a0=?, a1=entry(0x8c80), a2=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2, a3=?, a5=-0x1.
  The `jal` at 0xc6f4 calls psema with a0=table(0x8608), a1=0x19, a2=0x8608, a3=?.
  The `jal` at 0xc700 calls io_init_xswitch_widgets [0xc184] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xc70c calls io_link_xswitch_widgets [0xc22c] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xc748 calls assign_widgets_to_volunteers [0xb3d8] with a0=?, a1=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a2=?, a3=?.
  The `jal` at 0xc758 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc7a4 calls cmn_err with a0=0x0, a1=sym(.rodata)+4936, a2=?, a3=?, a4=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+35968], a6=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x92000000e0000000, a7=0xd002.
  The `bne` branch at 0xc4f8 targets 0xc520, is taken when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34280]:8) != 0, and falls through when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34280]:8) == 0.
  The `beq` branch at 0xc500 targets 0xc538 and is always taken.
  The `beq` branch at 0xc518 targets 0xc538, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xc524 targets 0xc508, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0xc530 targets 0xc520, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xc56c targets 0xc714, is taken when t9(?) == ra(=-0x1), and falls through when t9(?) != ra(=-0x1).
  The `beq` branch at 0xc5bc targets 0xc768, is taken when a2(?) == a3(=0xc002), and falls through when a2(?) != a3(=0xc002).
  The `beq` branch at 0xc5c8 targets 0xc768, is taken when a2(?) == a7(=0xd002), and falls through when a2(?) != a7(=0xd002).
  The `beq` branch at 0xc5d0 targets 0xc5e8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xc5d8 targets 0xc5e8, is taken when a2(?) == a0(=0xd000), and falls through when a2(?) != a0(=0xd000).
  The `bne` branch at 0xc5e0 targets 0xc78c, is taken when a2(?) != a1(=0xd100), and falls through when a2(?) == a1(=0xd100).
  The `beq` branch at 0xc61c targets 0xc77c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xc628 targets 0xc734, is taken when a0(?) == a3(=0xd000), and falls through when a0(?) != a3(=0xd000).
  The `beq` branch at 0xc634 targets 0xc730, is taken when a0(?) == a4(=0xd100), and falls through when a0(?) != a4(=0xd100).
  The `bne` branch at 0xc648 targets 0xc6e8, is taken when v0(=ret(device_master_set)) != 0, and falls through when v0(=ret(device_master_set)) == 0.
  The `beq` branch at 0xc680 targets 0xc714, is taken when s0(=one of 0x0, 0x1) == 0, and falls through when s0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xc698 targets 0xc744, is taken when a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) == a5(=-0x1), and falls through when a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34304]:2) != a5(=-0x1).
  The `beq` branch at 0xc6e0 targets 0xc748 and is always taken.
  The `bne` branch at 0xc734 targets 0xc63c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xc73c targets 0xc63c and is always taken.
  The `beq` branch at 0xc750 targets 0xc700, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xc760 targets 0xc700 and is always taken.
  The `beq` branch at 0xc774 targets 0xc5f0 and is always taken.
  The `bne` branch at 0xc77c targets 0xc628, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xc784 targets 0xc73c and is always taken.
  The `beq` branch at 0xc7ac targets 0xc5f0 and is always taken.
  The return at 0xc728 has v0 = one of ret(early_probe_for_widget), ret(xwidget_register), ret(io_link_xswitch_widgets).
- `io_init_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc7b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc7b4-0xc8e4 (304 bytes).
  It occupies 304 bytes.
  The `lh` at 0xc7c0 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0xc7d4 loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0xc804 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0xc818 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from ret(find_lboard_class) +0x0, including `lw` at 0xc854, `lw` at 0xc8b8.
  The `lh` at 0xc89c loads 2 bytes from ret(find_component) +0x3a.
  The `lh` at 0xc8b0 loads 2 bytes from (sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2)) +0x0.
  The `jal` at 0xc82c calls find_lboard_class with a0=?, a1=0x10, a2=?, a3=?.
  The `jal` at 0xc874 calls find_lboard_class with a0=?, a1=0x10, a2=?, a3=?.
  The `jal` at 0xc88c calls find_component with a0=ret(find_lboard_class), a1=0x0, a2=0x26, a3=?.
  The `jal` at 0xc8ac calls do_io_init_node [0xc4ac] with a0=[(sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2))]:2, a1=([ret(find_component)+58]:2 + [ret(find_component)+58]:2), a2=?, a3=?.
  The `jal` at 0xc8d4 calls chk_for_pebrick with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000), a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a5=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a6=(a0 + a0).
  The `beq` branch at 0xc7fc targets 0xc8d4, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0xc820 targets 0xc82c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xc83c targets 0xc8bc, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0xc84c targets 0xc884 and is always taken.
  The `beq` branch at 0xc858 targets 0xc8bc, is taken when v0(=[ret(find_lboard_class)]) == 0, and falls through when v0(=[ret(find_lboard_class)]) != 0.
  The `beq` branch at 0xc87c targets 0xc8bc, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0xc894 targets 0xc854, is taken when v0(=ret(find_component)) == 0, and falls through when v0(=ret(find_component)) != 0.
  The `beq` branch at 0xc8b4 targets 0xc858 and is always taken.
  The `beq` branch at 0xc8dc targets 0xc82c and is always taken.
  The return at 0xc8cc has v0 = one of ret(find_lboard_class), [ret(find_lboard_class)].
- `io_init_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc8e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc8e4-0xc93c (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0xc8f0 calls setnoderun with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc910 calls do_io_init_node [0xc4ac] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc918 calls io_init_pebrick with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc924 calls io_init_done [0xb8ec] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xc934 has v0 = ret(io_init_done).
- `scsi_ctlr_nums_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xc93c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xc93c-0xcbc0 (644 bytes).
  It occupies 644 bytes.
  2 such `ld` accesses load 8 bytes from abs 0x9000000014000000, including `ld` at 0xc968, `ld` at 0xca08.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xc9d4, `sw` at 0xca70.
  The `ld` at 0xca4c loads 8 bytes from sym(.data) +0x1c0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xca64, `lw` at 0xca78, `lw` at 0xcac8.
  The `ld` at 0xca88 loads 8 bytes from ?.
  The `lh` at 0xcae8 loads 2 bytes from (sym(compact_to_nasid_node) + (ret(master_node_get) + ret(master_node_get))) +0x0.
  The `ld` at 0xcaf8 loads 8 bytes from ([(sym(compact_to_nasid_node) + (ret(master_node_get) + ret(master_node_get)))]:2 << 0x21) -0x6fffffffcc000000.
  The `jal` at 0xc954 calls ioc4_console_vhdl_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc988 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc994 calls get_chimera_type with a0=ret(get_nasid), a1=?, a2=?, a3=?.
  The `jal` at 0xc9d8 calls hwgraph_connectpt_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xc9ec calls hwgraph_connectpt_get with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=?.
  The `jal` at 0xc9fc calls hwgraph_vertex_unref with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=?.
  The `jal` at 0xca1c calls get_nasid with a0=?, a1=?, a2=0x4000, a3=?.
  The `jal` at 0xca24 calls get_chimera_type with a0=ret(get_nasid), a1=?, a2=?, a3=?.
  The `jal` at 0xca3c calls printf with a0=sym(.rodata)+4936, a1=?, a2=?, a3=?.
  The `jal` at 0xca74 calls device_controller_num_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca98 calls hwgraph_path_lookup with a0=ret(hwgraph_connectpt_get), a1=?, a2=sp-80, a3=0x0.
  The `jal` at 0xcaa4 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcad4 calls master_node_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcb30 calls hwgraph_vertex_unref with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=?.
  The `jal` at 0xcb64 calls printf with a0=sym(.rodata)+4936, a1=?, a2=0x4000, a3=?.
  The `jal` at 0xcb78 calls printf with a0=sym(.rodata)+4936, a1=?, a2=?, a3=?.
  The `jal` at 0xcb98 calls assfail with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x5cb, a3=?.
  The `jal` at 0xcbb0 calls assfail with a0=sym(.rodata)+4936, a1=sym(.rodata)+4936, a2=0x5ce, a3=?.
  The `beq` branch at 0xc9b0 targets 0xcb48, is taken when v0(?) >= 0x1 (unsigned), and falls through when v0(?) < 0x1 (unsigned).
  The `bne` branch at 0xc9d0 targets 0xc9c0, is taken when a4(?) < a5(?) (signed), and falls through when a4(?) >= a5(?) (signed).
  The `beq` branch at 0xc9e4 targets 0xcb8c, is taken when s5(=-0x1) == v0(=ret(hwgraph_connectpt_get)), and falls through when s5(=-0x1) != v0(=ret(hwgraph_connectpt_get)).
  The `beq` branch at 0xc9f4 targets 0xcba8, is taken when s5(=-0x1) == v0(=ret(hwgraph_connectpt_get)), and falls through when s5(=-0x1) != v0(=ret(hwgraph_connectpt_get)).
  The `beq` branch at 0xca14 targets 0xcb64, is taken when a2(=0x4000) == a3(?), and falls through when a2(=0x4000) != a3(?).
  The `bne` branch at 0xca2c targets 0xca3c, is taken when v0(=ret(get_chimera_type)) != 0, and falls through when v0(=ret(get_chimera_type)) == 0.
  The `beq` branch at 0xca34 targets 0xcb78, is taken when s5(=-0x1) == s1(=ret(ioc4_console_vhdl_get)), and falls through when s5(=-0x1) != s1(=ret(ioc4_console_vhdl_get)).
  The `beq` branch at 0xca50 targets 0xcb14, is taken when a1(=[sym(.data)+448]:8) == 0, and falls through when a1(=[sym(.data)+448]:8) != 0.
  The `beq` branch at 0xca5c targets 0xca90 and is always taken.
  The `beq` branch at 0xca8c targets 0xcb14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xcaac targets 0xca7c, is taken when s1(=ret(hwgraph_path_lookup)) != 0, and falls through when s1(=ret(hwgraph_path_lookup)) == 0.
  The `beq` branch at 0xcab4 targets 0xcac8, is taken when s5(=-0x1) == s7(=a1), and falls through when s5(=-0x1) != s7(=a1).
  The `bne` branch at 0xcac0 targets 0xca7c, is taken when 0 < t8(?) (unsigned), and falls through when 0 >= t8(?) (unsigned).
  The `beq` branch at 0xcacc targets 0xca64, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0xcb04 targets 0xca7c, is taken when ra(=0x8000) != at(?), and falls through when ra(=0x8000) == at(?).
  The `beq` branch at 0xcb0c targets 0xca68 and is always taken.
  The `bne` branch at 0xcb48 targets 0xc9b8, is taken when s5(=-0x1) != s1(=ret(ioc4_console_vhdl_get)), and falls through when s5(=-0x1) == s1(=ret(ioc4_console_vhdl_get)).
  The `bgtz` branch at 0xcb54 targets 0xc9c0, is taken when a5(=[sym(num_base_io_scsi_ctlr)]) > 0 (signed), and falls through when a5(=[sym(num_base_io_scsi_ctlr)]) <= 0 (signed).
  The `beq` branch at 0xcb5c targets 0xc9d8 and is always taken.
  The `beq` branch at 0xcb70 targets 0xca4c and is always taken.
  The `beq` branch at 0xcb84 targets 0xca4c and is always taken.
  The `beq` branch at 0xcba0 targets 0xc9ec and is always taken.
  The `beq` branch at 0xcbb8 targets 0xc9fc and is always taken.
  The return at 0xcb40 has v0 = ret(hwgraph_vertex_unref).
- `sys_critical_graph_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcbc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xcbc0-0xcdec (556 bytes).
  It occupies 556 bytes.
  The `ld` at 0xcc00 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xcc04 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xcc10 loads 8 bytes from ([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3)) +0x0.
  The `lw` at 0xcc1c loads 4 bytes from [([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8 +0x8c80.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x710, including `lw` at 0xccec, `lw` at 0xcda4.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x714, including `lw` at 0xcd00, `lw` at 0xcdc0.
  The `jal` at 0xcbd8 calls hwgraph_connectpt_get with a0=[sym(.sdata)+100], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcbe8 calls device_master_get with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=?.
  The `jal` at 0xcbf8 calls master_node_get with a0=[sym(.sdata)+100], a1=?, a2=?, a3=?.
  The `jal` at 0xcc24 calls sys_critical_graph_vertex_add with a0=[sym(hwgraph_root)], a1=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a2=?, a3=?.
  The `jal` at 0xcc38 calls hwgraph_traverse with a0=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a1=sym(.rodata)+4936, a2=sp-64, a3=?.
  The `jal` at 0xcc48 calls sys_critical_graph_vertex_add with a0=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a1=ret(device_master_get), a2=?, a3=?.
  The `jal` at 0xcc60 calls sprintf with a0=sp-56, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xcc70 calls hwgraph_traverse with a0=ret(device_master_get), a1=sp-56, a2=sp-40, a3=?.
  The `jal` at 0xcc90 calls hwgraph_vertex_unref with a0=ret(device_master_get), a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xccac calls hwgraph_traverse with a0=[sym(.sdata)+100], a1=sym(.rodata)+4936, a2=sp-40, a3=?.
  The `jal` at 0xccc8 calls hwgraph_traverse with a0=[sym(.sdata)+96], a1=sym(.rodata)+4936, a2=sp-40, a3=?.
  The `jal` at 0xcce8 calls hwgraph_traverse with a0=[sym(base_io_scsi_ctlr_vhdl)], a1=sym(.rodata)+4936, a2=sp-40, a3=?.
  The `jal` at 0xcd04 calls hwgraph_traverse with a0=[sym(base_io_scsi_ctlr_vhdl+4)], a1=sym(.rodata)+4936, a2=sp-40, a3=?.
  The `jal` at 0xcd14 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcd28 calls sys_critical_graph_vertex_add with a0=ret(device_master_get), a1=?, a2=?, a3=?.
  The `jal` at 0xcd30 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcd44 calls sys_critical_graph_vertex_add with a0=[[([[-0x3c00]:8]:8 + (ret(master_node_get) << 0x3))]:8+35968], a1=?, a2=?, a3=?.
  The `jal` at 0xcd50 calls sys_critical_graph_vertex_add with a0=?, a1=ret(device_master_get), a2=?, a3=?.
  The `jal` at 0xcd58 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcd68 calls sys_critical_graph_vertex_add with a0=?, a1=[sym(.sdata)+100], a2=?, a3=?.
  The `jal` at 0xcd70 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcd80 calls sys_critical_graph_vertex_add with a0=?, a1=[sym(.sdata)+96], a2=?, a3=?.
  The `jal` at 0xcd88 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcda0 calls sys_critical_graph_vertex_add with a0=?, a1=[sym(base_io_scsi_ctlr_vhdl)], a2=?, a3=?.
  The `jal` at 0xcda8 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcdbc calls sys_critical_graph_vertex_add with a0=?, a1=[sym(base_io_scsi_ctlr_vhdl+4)], a2=?, a3=?.
  The `jal` at 0xcdc4 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xcddc calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xcbd0 targets 0xcdd4, is taken when at(=-0x1) == a0(=[sym(.sdata)+100]), and falls through when at(=-0x1) != a0(=[sym(.sdata)+100]).
  The `beq` branch at 0xcc40 targets 0xcd40, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0xcc78 targets 0xcd28, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `bne` branch at 0xcc88 targets 0xcc58, is taken when s0(?) < 0x8 (signed), and falls through when s0(?) >= 0x8 (signed).
  The `beq` branch at 0xccb4 targets 0xcd68, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0xccd0 targets 0xcd80, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0xccf0 targets 0xcd98, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0xcd0c targets 0xcdb8, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0xcd38 targets 0xcc84 and is always taken.
  The `beq` branch at 0xcd60 targets 0xcc50 and is always taken.
  The `beq` branch at 0xcd78 targets 0xccc0 and is always taken.
  The `beq` branch at 0xcd90 targets 0xccdc and is always taken.
  The `beq` branch at 0xcdb0 targets 0xccf8 and is always taken.
  The `beq` branch at 0xcdcc targets 0xcd14 and is always taken.
  The `beq` branch at 0xcde4 targets 0xcd20 and is always taken.
  The return at 0xcd20 has v0 = one of ret(hwgraph_vertex_unref), ret(cmn_err).
- `baseio_ctlr_num_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcdec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xcdec-0xcee8 (252 bytes).
  It occupies 252 bytes.
  The `jal` at 0xcdf4 calls ioc3_console_vhdl_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xce18 calls vertex_to_name with a0=?, a1=sp-288, a2=0x100, a3=?.
  The `jal` at 0xce28 calls strcat with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xce30 calls hwgraph_path_to_vertex with a0=sp-288, a1=?, a2=?, a3=?.
  The `jal` at 0xce44 calls scsi_ctlr_nums_add with a0=ret(hwgraph_path_to_vertex), a1=-0x1, a2=?, a3=?.
  The `jal` at 0xce4c calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xce5c calls vertex_to_name with a0=?, a1=sp-288, a2=0x100, a3=?.
  The `jal` at 0xce6c calls strstr with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xce84 calls strcat with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xce8c calls hwgraph_path_to_vertex with a0=sp-288, a1=?, a2=?, a3=?.
  The `jal` at 0xcea0 calls device_controller_num_set with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=?.
  The `jal` at 0xcea8 calls hwgraph_vertex_unref with a0=ret(hwgraph_path_to_vertex), a1=?, a2=?, a3=?.
  The `jal` at 0xcec4 calls strcat with a0=sp-288, a1=sym(.rodata)+4936, a2=?, a3=?.
  The `jal` at 0xced4 calls ioc4_console_vhdl_get with a0=-0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0xce00 targets 0xced4, is taken when a0(=-0x1) == v0(=ret(ioc3_console_vhdl_get)), and falls through when a0(=-0x1) != v0(=ret(ioc3_console_vhdl_get)).
  The `beq` branch at 0xce08 targets 0xceb0, is taken when a0(=-0x1) == s0(?), and falls through when a0(=-0x1) != s0(?).
  The `beq` branch at 0xce74 targets 0xcec0, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0xcecc targets 0xce8c and is always taken.
  The `beq` branch at 0xcee0 targets 0xce08 and is always taken.
  The return at 0xceb8 has v0 = one of ?, ret(hwgraph_vertex_unref).
- `sn00_rrb_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xcee8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xcee8-0xd0ac (452 bytes).
  It occupies 452 bytes.
  The `lw` at 0xceec loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xcf48 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xcf50 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `jal` at 0xcf30 calls pcibr_alloc_all_rrbs with a0=a0 at entry (arg0), a1=0x0, a2=0x3, a3=0x1, a4=0x2, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0xcf84 calls pcibr_alloc_all_rrbs with a0=a0 at entry (arg0), a1=0x1, a2=0x2, a3=0x1, a4=0x1, a5=0x0, a6=0x3, a7=0x0.
  The `jal` at 0xcfcc calls pcibr_alloc_all_rrbs with a0=a0 at entry (arg0), a1=0x0, a2=0x4, a3=0x1, a4=0x4, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0xd00c calls pcibr_alloc_all_rrbs with a0=a0 at entry (arg0), a1=0x1, a2=0x3, a3=0x1, a4=0x2, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0xd03c calls pcibr_alloc_all_rrbs with a0=a0 at entry (arg0), a1=0x1, a2=0x3, a3=0x1, a4=0x2, a5=0x0, a6=0x3, a7=0x0.
  The `jal` at 0xd070 calls pcibr_alloc_all_rrbs with a0=a0 at entry (arg0), a1=0x1, a2=0x4, a3=0x1, a4=0x4, a5=0x0, a6=0x0, a7=0x0.
  The `jal` at 0xd088 calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=?, a3=?, a4=ret(pcibr_alloc_all_rrbs).
  The `jal` at 0xd09c calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=?, a3=?, a4=ret(pcibr_alloc_all_rrbs).
  The `beq` branch at 0xcf04 targets 0xcfac, is taken when at(=[a1+24]) == v0(=-0x1), and falls through when at(=[a1+24]) != v0(=-0x1).
  The `bne` branch at 0xcf40 targets 0xd080, is taken when a4(=ret(pcibr_alloc_all_rrbs)) != 0, and falls through when a4(=ret(pcibr_alloc_all_rrbs)) == 0.
  The `beq` branch at 0xcf4c targets 0xcfe0, is taken when a2(=[a1+20]) == a1(=-0x1), and falls through when a2(=[a1+20]) != a1(=-0x1).
  The `beq` branch at 0xcf54 targets 0xd01c, is taken when a0(=[a1+28]) == a1(=-0x1), and falls through when a0(=[a1+28]) != a1(=-0x1).
  The `bne` branch at 0xcf90 targets 0xd098, is taken when a4(=ret(pcibr_alloc_all_rrbs)) != 0, and falls through when a4(=ret(pcibr_alloc_all_rrbs)) == 0.
  The `beq` branch at 0xcfd8 targets 0xcf40 and is always taken.
  The `beq` branch at 0xcfe0 targets 0xd04c, is taken when a0(=[a1+28]) == a1(=-0x1), and falls through when a0(=[a1+28]) != a1(=-0x1).
  The `beq` branch at 0xd014 targets 0xcf90 and is always taken.
  The `beq` branch at 0xd044 targets 0xcf90 and is always taken.
  The `beq` branch at 0xd078 targets 0xcf90 and is always taken.
  The `beq` branch at 0xd090 targets 0xcf48 and is always taken.
  The `beq` branch at 0xd0a4 targets 0xcf9c and is always taken.
  The return at 0xcfa4 has v0 = one of ret(pcibr_alloc_all_rrbs), ret(cmn_err).
- `do_init_hub_provider` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd0ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd0ac-0xd13c (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0xd0ac loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xd0b0 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xd0c0 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lw` at 0xd0d0 loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8c80.
  The `jal` at 0xd0e8 calls early_probe_for_widget [0xb91c] with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=sp-32, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0xd104 calls xtalk_provider_register with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=sym(hub_provider), a2=?, a3=?.
  The `jal` at 0xd10c calls xtalk_provider_startup with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=?, a2=?, a3=?.
  The `jal` at 0xd12c calls cmn_err with a0=0x4, a1=sym(.rodata)+4936, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xd0dc targets 0xd124, is taken when at(=-0x1) == s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]), and falls through when at(=-0x1) != s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]).
  The `beq` branch at 0xd0f8 targets 0xd118, is taken when t9(?) == ra(=-0x1), and falls through when t9(?) != ra(=-0x1).
  The `beq` branch at 0xd134 targets 0xd118 and is always taken.
  The return at 0xd11c has v0 = one of ret(early_probe_for_widget), ret(xtalk_provider_startup), ret(cmn_err).
- `do_init_hub_provider_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd13c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd13c-0xd26c (304 bytes).
  It occupies 304 bytes.
  The `lh` at 0xd148 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0xd15c loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0xd18c loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0xd1a0 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from ret(find_lboard_class) +0x0, including `lw` at 0xd1dc, `lw` at 0xd240.
  The `lh` at 0xd224 loads 2 bytes from ret(find_component) +0x3a.
  The `lh` at 0xd238 loads 2 bytes from (sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2)) +0x0.
  The `jal` at 0xd1b4 calls find_lboard_class with a0=?, a1=0x10, a2=?, a3=?.
  The `jal` at 0xd1fc calls find_lboard_class with a0=?, a1=0x10, a2=?, a3=?.
  The `jal` at 0xd214 calls find_component with a0=ret(find_lboard_class), a1=0x0, a2=0x26, a3=?.
  The `jal` at 0xd234 calls do_init_hub_provider with a0=[(sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2))]:2, a1=([ret(find_component)+58]:2 + [ret(find_component)+58]:2), a2=?, a3=?.
  The `jal` at 0xd25c calls chk_for_pebrick with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000), a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a5=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a6=(a0 + a0).
  The `beq` branch at 0xd184 targets 0xd25c, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0xd1a8 targets 0xd1b4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd1c4 targets 0xd244, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0xd1d4 targets 0xd20c and is always taken.
  The `beq` branch at 0xd1e0 targets 0xd244, is taken when v0(=[ret(find_lboard_class)]) == 0, and falls through when v0(=[ret(find_lboard_class)]) != 0.
  The `beq` branch at 0xd204 targets 0xd244, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0xd21c targets 0xd1dc, is taken when v0(=ret(find_component)) == 0, and falls through when v0(=ret(find_component)) != 0.
  The `beq` branch at 0xd23c targets 0xd1e0 and is always taken.
  The `beq` branch at 0xd264 targets 0xd1b4 and is always taken.
  The return at 0xd254 has v0 = one of ret(find_lboard_class), [ret(find_lboard_class)].
- `init_hub_provider` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd26c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd26c-0xd2c0 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0xd284 calls do_init_hub_provider with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd28c calls do_init_hub_provider_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xd278 targets 0xd2b0, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `bne` branch at 0xd2a8 targets 0xd284, is taken when s0(?) < v0(=[sym(maxnodes)]) (signed), and falls through when s0(?) >= v0(=[sym(maxnodes)]) (signed).
  The return at 0xd2b8 has v0 = ?.
- `io_brick_map_widget` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xd780 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xd780-0xd7cc (76 bytes).
  It occupies 76 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd798, `lw` at 0xd7c8.
  The `beq` branch at 0xd7a0 targets 0xd7bc, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0xd7a8 targets 0xd78c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0xd7b4 has v0 = -0x1.
  The return at 0xd7c4 has v0 = ?.
- `init_platform_nodepda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xdc4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xdc4c-0xdfec (928 bytes).
  It occupies 928 bytes.
  The `sd` at 0xdc98 stores 8 bytes to a0 (arg0 at entry) +0x8c88.
  The `sh` at 0xdca4 stores 2 bytes to ret(kmem_alloc_node) +0x8.
  The `sd` at 0xdca8 stores 8 bytes to ret(kmem_alloc_node) +0x0.
  The `lh` at 0xdcb8 loads 2 bytes from (sym(compact_to_nasid_node) + (a1 + a1)) +0x0.
  The `sh` at 0xdcc4 stores 2 bytes to ret(kmem_alloc_node) +0xa.
  The `lh` at 0xdcc8 loads 2 bytes from ret(kmem_alloc_node) +0xa.
  The `sb` at 0xdcd4 stores 1 byte to ret(kmem_alloc_node) +0xc.
  The `sh` at 0xdcdc stores 2 bytes to a0 (arg0 at entry) +0x8600.
  The `sd` at 0xdce0 stores 8 bytes to a0 (arg0 at entry) +0x85e8.
  The `sw` at 0xdce4 stores 4 bytes to a0 (arg0 at entry) +0x85f8.
  The `sh` at 0xdce8 stores 2 bytes to a0 (arg0 at entry) +0x861a.
  The `sd` at 0xdcf8 stores 8 bytes to a0 (arg0 at entry) +0x85f0.
  The `sw` at 0xdd24 stores 4 bytes to ?.
  The `sd` at 0xdd28 stores 8 bytes to ?.
  The `sb` at 0xdd54 stores 1 byte to a0 (arg0 at entry) +0x8594.
  The `sw` at 0xddac stores 4 bytes to a0 (arg0 at entry) +0x8f08.
  The `sb` at 0xddc0 stores 1 byte to a0 (arg0 at entry) +0x85e0.
  The `sb` at 0xddc4 stores 1 byte to a0 (arg0 at entry) +0x85e1.
  The `sb` at 0xdde8 stores 1 byte to ?.
  The `lh` at 0xde00 loads 2 bytes from ?.
  The `lbu` at 0xde24 loads 1 byte from table(0x862c) +0x0.
  The `sb` at 0xde34 stores 1 byte to table(0x862c) +0x0.
  The `sh` at 0xde64 stores 2 bytes to a0 (arg0 at entry) +0x8596.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x8598, including `sh` at 0xde78, `sh` at 0xde8c, `sh` at 0xdfa8.
  The `lh` at 0xde9c loads 2 bytes from table(sym(cpuid_to_compact_node)) +0x0.
  The `sd` at 0xdec8 stores 8 bytes to a0 (arg0 at entry) +0x8c90.
  The `sw` at 0xded8 stores 4 bytes to a0 (arg0 at entry) +0x8c98.
  The `sd` at 0xdf08 stores 8 bytes to a0 (arg0 at entry) +0x8850.
  The `sd` at 0xdf24 stores 8 bytes to a0 (arg0 at entry) +0x8ef8.
  The `sd` at 0xdf44 stores 8 bytes to a0 (arg0 at entry) +0x8f00.
  The `sw` at 0xdf48 stores 4 bytes to a0 (arg0 at entry) +0x8f1c.
  The `sw` at 0xdf4c stores 4 bytes to a0 (arg0 at entry) +0x8f20.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xdf68, `sh` at 0xdf8c.
  The `jal` at 0xdc74 calls kmem_alloc_node with a0=0x450, a1=0x1, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0xdcc0 calls init_spinlock with a0=ret(kmem_alloc_node)+796, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xdccc calls hub_widget_id with a0=[ret(kmem_alloc_node)+10]:2, a1=?, a2=?, a3=?.
  The `jal` at 0xdd2c calls intr_init_vecblk with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xdd58 calls init_spinlock with a0=a0+34192, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xdd74 calls init_sema with a0=a0+34312, a1=0x0, a2=sym(.rodata)+6624, a3=a1 at entry (arg1).
  The `jal` at 0xdd8c calls init_spinlock with a0=a0+34372, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xdda4 calls init_spinlock with a0=a0+34204, a1=sym(.rodata)+6624, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xde54 calls get_cnode_cpu with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0xdebc calls kmem_zalloc_node with a0=0x4000, a1=0x1, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xdedc calls router_map_init with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xdee8 calls router_queue_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xdef8 calls kmem_zalloc_node_hint with a0=0x130, a1=0x0, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xdfb8 calls assfail with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x220, a3=?.
  The `jal` at 0xdfd4 calls assfail with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x272, a3=?.
  The `beq` branch at 0xdc84 targets 0xdfac, is taken when v0(=ret(kmem_alloc_node)) == 0, and falls through when v0(=ret(kmem_alloc_node)) != 0.
  The `bne` branch at 0xdd3c targets 0xdd00, is taken when s4(?) < 0x2 (signed), and falls through when s4(?) >= 0x2 (signed).
  The `beq` branch at 0xddb8 targets 0xddc8, is taken when a1(=[sym(need_utlbmiss_patch)]) == 0, and falls through when a1(=[sym(need_utlbmiss_patch)]) != 0.
  The `bne` branch at 0xdde4 targets 0xddcc, is taken when v0(?) < 0x10 (signed), and falls through when v0(?) >= 0x10 (signed).
  The `blez` branch at 0xddf0 targets 0xde50, is taken when a4(=[sym(numnodes)]) <= 0 (signed), and falls through when a4(=[sym(numnodes)]) > 0 (signed).
  The `bne` branch at 0xde48 targets 0xddfc, is taken when v0(?) < a5(=[sym(numnodes)]) (signed), and falls through when v0(?) >= a5(=[sym(numnodes)]) (signed).
  The `beq` branch at 0xde6c targets 0xdfa4, is taken when a0(?) == s4(=-0x1), and falls through when a0(?) != s4(=-0x1).
  The `beq` branch at 0xde74 targets 0xdeb4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xde7c targets 0xdfe4 and is always taken.
  The `beq` branch at 0xde88 targets 0xdeb4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xdeac targets 0xde84, is taken when a1(=entry(sym(cpuid_to_compact_node))) == s2(=a1), and falls through when a1(=entry(sym(cpuid_to_compact_node))) != s2(=a1).
  The `beq` branch at 0xdec4 targets 0xdfc8, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `beq` branch at 0xdf28 targets 0xdf48 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0xdf40 targets 0xdf10 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0xdf6c targets 0xdf94, is taken when v0(?) >= 0x8 (signed), and falls through when v0(?) < 0x8 (signed).
  The `bne` branch at 0xdf88 targets 0xdf54, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0xdfa4 targets 0xdeb4 and is always taken.
  The `beq` branch at 0xdfc0 targets 0xdc90 and is always taken.
  The `beq` branch at 0xdfdc targets 0xded0 and is always taken.
  The `beq` branch at 0xdfe4 targets 0xde94 and is always taken.
  The return at 0xdf9c has v0 = ?.
- `init_platform_pda` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xdfec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xdfec-0xe11c (304 bytes).
  It occupies 304 bytes.
  3 such `ld` accesses load 8 bytes from (sym(boot_cpumask) + (a1 << 0x4)) +0x8, including `ld` at 0xe010, `ld` at 0xe054, `ld` at 0xe090.
  The `lh` at 0xe028 loads 2 bytes from [(sym(boot_cpumask) + (a1 << 0x4))+8]:8 +0x42a.
  The `sd` at 0xe038 stores 8 bytes to a0 (arg0 at entry) +0x740.
  The `sh` at 0xe040 stores 2 bytes to ret(kmem_alloc_node) +0x8.
  The `sd` at 0xe048 stores 8 bytes to ret(kmem_alloc_node) +0x0.
  The `sd` at 0xe050 stores 8 bytes to a0 (arg0 at entry) +0x5a0.
  2 such `lbu` accesses load 1 byte from [(sym(boot_cpumask) + (a1 << 0x4))+8]:8 +0x528, including `lbu` at 0xe058, `lbu` at 0xe094.
  The `ld` at 0xe078 loads 8 bytes from a0 (arg0 at entry) +0x400.
  The `sd` at 0xe08c stores 8 bytes to a0 (arg0 at entry) +0x5b0.
  The `sd` at 0xe0c0 stores 8 bytes to a0 (arg0 at entry) +0x5a8.
  The `sb` at 0xe0c8 stores 1 byte to a0 (arg0 at entry) +0x529.
  The `sd` at 0xe0d4 stores 8 bytes to a0 (arg0 at entry) +0x5b8.
  The `jal` at 0xe024 calls kmem_alloc_node with a0=0x10, a1=0x1, a2=[[(sym(boot_cpumask) + (a1 << 0x4))+8]:8+1066]:2, a3=(a1 << 0x4).
  The `jal` at 0xe0f0 calls assfail with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x2a9, a3=?.
  The `jal` at 0xe10c calls assfail with a0=sym(.rodata)+6624, a1=sym(.rodata)+6624, a2=0x2b0, a3=-0x400, a5=sym(.rodata)+6624.
  The `beq` branch at 0xe02c targets 0xe0e4, is taken when v0(=ret(kmem_alloc_node)) == 0, and falls through when v0(=ret(kmem_alloc_node)) != 0.
  The `beq` branch at 0xe044 targets 0xe104, is taken when s0(=a0) == a3(=-0x400), and falls through when s0(=a0) != a3(=-0x400).
  The `beq` branch at 0xe0fc targets 0xe038 and is always taken.
  The `beq` branch at 0xe114 targets 0xe050 and is always taken.
  The return at 0xe0dc has v0 = one of ret(kmem_alloc_node), ret(assfail).
- `protect_hub_calias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe11c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe11c-0xe15c (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0xe134 calls nasid_to_region with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xe144 targets 0xe134, is taken when s0(?) < 0x40 (signed), and falls through when s0(?) >= 0x40 (signed).
  The return at 0xe154 has v0 = ret(nasid_to_region).
- `protect_nmi_handler_data` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe15c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe15c-0xe19c (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0xe174 calls nasid_to_region with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xe184 targets 0xe174, is taken when s0(?) < 0x40 (signed), and falls through when s0(?) >= 0x40 (signed).
  The return at 0xe194 has v0 = ret(nasid_to_region).
- `per_hub_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe19c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe19c-0xe400 (612 bytes).
  It occupies 612 bytes.
  The `lh` at 0xe1cc loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0xe1e4, `ld` at 0xe220, `ld` at 0xe230.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0xe2a4, `sd` at 0xe328, `sd` at 0xe3f4.
  The `ld` at 0xe2a8 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xe2ac loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xe2bc loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `sw` at 0xe2e4 stores 4 bytes to [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8628.
  The `sd` at 0xe338 stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffc58.
  The `ld` at 0xe33c loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffed8.
  The `sd` at 0xe354 stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffe00.
  2 such `sd` accesses store 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffc40, including `sd` at 0xe374, `sd` at 0xe378.
  The `sd` at 0xe384 stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffc48.
  The `sd` at 0xe3a0 stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe7fffc8.
  The `sd` at 0xe3a8 stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe5fffc8.
  The `sd` at 0xe3ac stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe05ffc8.
  The `jal` at 0xe1c8 calls mutex_spinlock with a0=sym(.sbss)+24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe204 calls mutex_spinunlock with a0=sym(.sbss)+24, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xe2c4 calls get_hub_chiprev with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=?, a2=?, a3=?, a5=[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8, a6=(a0 << 0x3).
  The `jal` at 0xe2f8 calls cnode_slice_to_cpuid with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xe304 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe3b0 calls intr_reserve_hardwired with a0=a0 at entry (arg0), a1=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9200000001a00000, a2=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9200000001800000, a3=0xff, a5=0x4.
  The `jal` at 0xe3b8 calls hub_error_init with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xe3c0 calls install_eccintr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xe3c8 calls protect_hub_calias with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=?, a2=?, a3=?.
  The `jal` at 0xe3d0 calls hub_rtc_init with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xe3d8 calls mutex_spinlock with a0=sym(.sbss)+24, a1=?, a2=?, a3=?.
  The `jal` at 0xe3f0 calls mutex_spinunlock with a0=sym(.sbss)+24, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0xe1f8 targets 0xe2a0, is taken when (s0(?) & a4(?)) == 0, and falls through when (s0(?) & a4(?)) != 0.
  The `beq` branch at 0xe218 targets 0xe2a8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0xe228 targets 0xe284, is taken when (v1(?) & s0(?)) != 0, and falls through when (v1(?) & s0(?)) == 0.
  The `bne` branch at 0xe238 targets 0xe280, is taken when (a0(?) & s0(?)) != 0, and falls through when (a0(?) & s0(?)) == 0.
  The `bne` branch at 0xe248 targets 0xe280, is taken when (a1(?) & s0(?)) != 0, and falls through when (a1(?) & s0(?)) == 0.
  The `bne` branch at 0xe258 targets 0xe280, is taken when (a2(?) & s0(?)) != 0, and falls through when (a2(?) & s0(?)) == 0.
  The `bne` branch at 0xe268 targets 0xe280, is taken when (a3(?) & s0(?)) != 0, and falls through when (a3(?) & s0(?)) == 0.
  The `beq` branch at 0xe278 targets 0xe230, is taken when (a4(?) & s0(?)) == 0, and falls through when (a4(?) & s0(?)) != 0.
  The `beq` branch at 0xe2a0 targets 0xe200 and is always taken.
  The `beq` branch at 0xe2e0 targets 0xe2f4 and is always taken.
  The `beq` branch at 0xe2f0 targets 0xe32c, is taken when s3(?) >= 0x4 (signed), and falls through when s3(?) < 0x4 (signed).
  The `bne` branch at 0xe30c targets 0xe2e8, is taken when v0(=ret(cpu_enabled)) != 0, and falls through when v0(=ret(cpu_enabled)) == 0.
  The `beq` branch at 0xe324 targets 0xe2e8 and is always taken.
  The `bne` branch at 0xe368 targets 0xe378, is taken when a2(=[sym(maxnodes)]) < 0x21 (signed), and falls through when a2(=[sym(maxnodes)]) >= 0x21 (signed).
  The `beq` branch at 0xe370 targets 0xe37c and is always taken.
  The `beq` branch at 0xe3f8 targets 0xe284 and is always taken.
  The return at 0xe298 has v0 = one of ?, ret(mutex_spinunlock).
- `per_cpu_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe400-0xe50c (268 bytes).
  It occupies 268 bytes.
  The `sh` at 0xe420 stores 2 bytes to abs 0xffffffffffffc428.
  2 such `ld` accesses load 8 bytes from table(sym(boot_cpumask)) +0x8, including `ld` at 0xe464, `ld` at 0xe470.
  2 such `lbu` accesses load 1 byte from [table(sym(boot_cpumask))+8]:8 +0x528, including `lbu` at 0xe46c, `lbu` at 0xe47c.
  The `lh` at 0xe488 loads 2 bytes from table(sym(compact_to_nasid_node)) +0x0.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffd00c, including `sw` at 0xe498, `sw` at 0xe4f8.
  The `sw` at 0xe4d0 stores 4 bytes to abs 0xffffffffffffd014.
  3 such `sw` accesses store 4 bytes to abs 0xffffffffffffd010, including `sw` at 0xe4e0, `sw` at 0xe500, `sw` at 0xe508.
  The `sd` at 0xe4e8 stores 8 bytes to abs 0xffffffffffffd000.
  The `jal` at 0xe408 calls getcpuid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe414 calls get_compact_nodeid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe42c calls per_hub_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe43c calls install_cpuintr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe444 calls install_dbgintr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe44c calls install_tlbintr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe468 calls install_cpu_nmi_handler with a0=[[table(sym(boot_cpumask))+8]:8+1320]:1, a1=?, a2=?, a3=?.
  The `jal` at 0xe484 calls protect_nmi_handler_data with a0=entry(sym(compact_to_nasid_node)), a1=[[table(sym(boot_cpumask))+8]:8+1320]:1, a2=?, a3=?.
  The `beq` branch at 0xe4bc targets 0xe504, is taken when (a0(=[sym(old_traplog_mask)]) & 0x2) == 0, and falls through when (a0(=[sym(old_traplog_mask)]) & 0x2) != 0.
  The `beq` branch at 0xe4c8 targets 0xe4fc, is taken when (a0(=[sym(old_traplog_mask)]) & 0x4) == 0, and falls through when (a0(=[sym(old_traplog_mask)]) & 0x4) != 0.
  The `beq` branch at 0xe4fc targets 0xe4e4 and is always taken.
  The `beq` branch at 0xe504 targets 0xe4e4 and is always taken.
  The return at 0xe4f4 has v0 = ([sym(traplog_strace_size)] << 0x3).
- `cnodetocpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe514 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe514-0xe5d4 (192 bytes).
  It occupies 192 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xe514, `ld` at 0xe59c.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0xe51c, `ld` at 0xe5a0.
  The `ld` at 0xe52c loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0xe53c loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  The `lhu` at 0xe558 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598.
  The `ld` at 0xe5a8 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lhu` at 0xe5b4 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598.
  The `jal` at 0xe570 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xe550 targets 0xe580, is taken when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == at(=-0x1), and falls through when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != at(=-0x1).
  The `blez` branch at 0xe55c targets 0xe5cc, is taken when a5(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) <= 0 (signed), and falls through when a5(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) > 0 (signed).
  The `beq` branch at 0xe578 targets 0xe59c, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0xe5c4 targets 0xe56c, is taken when s1(?) < t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed), and falls through when s1(?) >= t8(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  The `beq` branch at 0xe5cc targets 0xe580 and is always taken.
  The return at 0xe594 has v0 = one of -0x1, ?.
- `cnode_subnode_to_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe5d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe5d4-0xe6e4 (272 bytes).
  It occupies 272 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0xe5dc, `ld` at 0xe648.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0xe5e4, `ld` at 0xe64c.
  The `ld` at 0xe5f8 loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0xe60c loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  The `lhu` at 0xe634 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598.
  The `ld` at 0xe654 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lhu` at 0xe65c loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8598.
  The `ld` at 0xe68c loads 8 bytes from ?.
  The `lbu` at 0xe690 loads 1 byte from ?.
  The `jal` at 0xe678 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xe62c targets 0xe6dc, is taken when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) == at(=-0x1), and falls through when a4(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) != at(=-0x1).
  The `blez` branch at 0xe638 targets 0xe6b0, is taken when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) <= 0 (signed), and falls through when v1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) > 0 (signed).
  The `beq` branch at 0xe640 targets 0xe674 and is always taken.
  The `beq` branch at 0xe668 targets 0xe6ac, is taken when s1(?) >= a0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed), and falls through when s1(?) < a0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34200]:2) (signed).
  The `beq` branch at 0xe680 targets 0xe648, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0xe69c targets 0xe648, is taken when s5(=a1) != t8(?), and falls through when s5(=a1) == t8(?).
  The `beq` branch at 0xe6a4 targets 0xe6b4 and is always taken.
  The `beq` branch at 0xe6dc targets 0xe6b4 and is always taken.
  The return at 0xe6d4 has v0 = one of ?, -0x1.
- `get_compact_nodeid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe6e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe6e4-0xe718 (52 bytes).
  It occupies 52 bytes.
  The `lh` at 0xe70c loads 2 bytes from table(sym(nasid_to_compact_node)) +0x0.
  The `jal` at 0xe6ec calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xe710 has v0 = entry(sym(nasid_to_compact_node)).
- `cpu_unenable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe78c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe78c-0xe7c8 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0xe7ac loads 8 bytes from table(sym(boot_cpumask)) +0x0.
  The `sw` at 0xe7b8 stores 4 bytes to (sym(boot_cpumask) + (a0 << 0x4)) +0x40.
  The `sd` at 0xe7c4 stores 8 bytes to table(sym(boot_cpumask)) +0x0.
  The return at 0xe7c0 has v0 = table(sym(boot_cpumask)).
- `cnode_slice_to_cpuid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe800-0xe8bc (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0xe800 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xe808 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xe818 loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lh` at 0xe82c loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8596.
  The `lhu` at 0xe840 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598.
  The `ld` at 0xe868 loads 8 bytes from ?.
  The `lbu` at 0xe86c loads 1 byte from ?.
  The `jal` at 0xe850 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0xe83c targets 0xe890, is taken when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) < 0 (signed), and falls through when s0(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34198]:2) >= 0 (signed).
  The `beq` branch at 0xe844 targets 0xe890, is taken when s1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) == 0, and falls through when s1(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) != 0.
  The `beq` branch at 0xe858 targets 0xe874, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0xe870 targets 0xe8b4, is taken when s2(=a1) == t9(?), and falls through when s2(=a1) != t9(?).
  The `bltz` branch at 0xe880 targets 0xe890, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bne` branch at 0xe888 targets 0xe850, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xe8b4 targets 0xe898 and is always taken.
  The return at 0xe8ac has v0 = one of -0x1, ?.
- `build_cpumap` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe8bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe8bc-0xe9c4 (264 bytes).
  It occupies 264 bytes.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0xe8e8, `sh` at 0xe90c, `sh` at 0xe9a8.
  The `jal` at 0xe970 calls cnode_slice_to_cpuid with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xe8d4 targets 0xe928, is taken when at(=[sym(numcpus)]) <= 0 (signed), and falls through when at(=[sym(numcpus)]) > 0 (signed).
  The `beq` branch at 0xe8fc targets 0xe928, is taken when a1(?) >= v0(=[sym(numcpus)]) (signed), and falls through when a1(?) < v0(=[sym(numcpus)]) (signed).
  The `bne` branch at 0xe920 targets 0xe8e0, is taken when a1(?) < a4(=[sym(numcpus)]) (signed), and falls through when a1(?) >= a4(=[sym(numcpus)]) (signed).
  The `bgtz` branch at 0xe934 targets 0xe960, is taken when a3(=[sym(numnodes)]) > 0 (signed), and falls through when a3(=[sym(numnodes)]) <= 0 (signed).
  The `beq` branch at 0xe93c targets 0xe9ac and is always taken.
  The `beq` branch at 0xe958 targets 0xe9ac, is taken when s2(?) >= a4(=[sym(numnodes)]) (signed), and falls through when s2(?) < a4(=[sym(numnodes)]) (signed).
  The `beq` branch at 0xe960 targets 0xe96c and is always taken.
  The `beq` branch at 0xe968 targets 0xe944, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bltz` branch at 0xe994 targets 0xe968, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0xe99c targets 0xe968, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xe9a4 targets 0xe968 and is always taken.
  The return at 0xe9bc has v0 = one of ?, ret(cnode_slice_to_cpuid).
- `gen_region_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xe9c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xe9c4-0xea3c (120 bytes).
  It occupies 120 bytes.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0xe9c4, `sd` at 0xea1c.
  The `ld` at 0xea08 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xe9f4 calls get_region with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0xe9ec targets 0xea20, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xea18 targets 0xe9f4, is taken when s0(?) < s1(=a1) (signed), and falls through when s0(?) >= s1(=a1) (signed).
  The return at 0xea34 has v0 = ?.
- `is_cpuless` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xea3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xea3c-0xea6c (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xea44 calls cnodetocpu with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xea50 targets 0xea64, is taken when v0(=ret(cnodetocpu)) == at(=-0x1), and falls through when v0(=ret(cnodetocpu)) != at(=-0x1).
  The `beq` branch at 0xea64 targets 0xea5c and is always taken.
  The return at 0xea5c has v0 = one of 0x0, 0x1.
- `gda_sym_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeab8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeab8-0xeb1c (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0xeaec loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0.
  2 such `sd` accesses store 8 bytes to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x38, including `sd` at 0xeaf4, `sd` at 0xeb0c.
  2 such `sw` accesses store 4 bytes to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x2c, including `sw` at 0xeafc, `sw` at 0xeb18.
  2 such `sd` accesses store 8 bytes to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x30, including `sd` at 0xeb00, `sd` at 0xeb10.
  The `jal` at 0xeac0 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xeae8 targets 0xeb0c, is taken when a4(=[sym(kdebug)]:2) == 0, and falls through when a4(=[sym(kdebug)]:2) != 0.
  The `beq` branch at 0xeb14 targets 0xeb04 and is always taken.
  The return at 0xeb04 has v0 = ret(get_nasid).
- `update_node_information` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeb1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeb1c-0xeb84 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0xeb1c loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0xeb20 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0xeb2c loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `ld` at 0xeb38 loads 8 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x85e8.
  The `ld` at 0xeb48 loads 8 bytes from [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34280]:8 +0x18.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xeb4c, `lbu` at 0xeb54.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0xeb50, `sh` at 0xeb78.
  The `sb` at 0xeb58 stores 1 byte to ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xeb5c, `ld` at 0xeb68.
  The `beq` branch at 0xeb3c targets 0xeb7c, is taken when a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34280]:8) == 0, and falls through when a2(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34280]:8) != 0.
  The `beq` branch at 0xeb44 targets 0xeb6c and is always taken.
  The `beq` branch at 0xeb60 targets 0xeb7c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xeb6c targets 0xeb4c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xeb74 targets 0xeb5c and is always taken.
  The return at 0xeb7c has v0 = ?.
- `get_region` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeb84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeb84-0xebb0 (44 bytes).
  It occupies 44 bytes.
  The `lh` at 0xeb98 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `beq` branch at 0xeb94 targets 0xeba8, is taken when a4(=[sym(.sdata)+116]) == 0, and falls through when a4(=[sym(.sdata)+116]) != 0.
  The return at 0xeba0 has v0 = [(sym(compact_to_nasid_node) + (a0 + a0))]:2.
  The return at 0xeba8 has v0 = ?.
- `nasid_to_region` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xebb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xebb0-0xebc8 (24 bytes).
  It occupies 24 bytes.
  The `beq` branch at 0xebb4 targets 0xebc0, is taken when at(=[sym(.sdata)+116]) == 0, and falls through when at(=[sym(.sdata)+116]) != 0.
  The return at 0xebc0 has v0 = one of ?, a0.
- `redo_nodes` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xebc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xebc8-0xec20 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0xec04 loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0.
  The `sh` at 0xec10 stores 2 bytes to ([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0)) +0x80.
  The `jal` at 0xebd4 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0xebe0 targets 0xec14, is taken when s0(=a0) <= 0 (signed), and falls through when s0(=a0) > 0 (signed).
  The `beq` branch at 0xebec targets 0xec14, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The return at 0xec18 has v0 = one of ret(get_nasid), ([((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 + (a0 + a0)).
- `mem_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xec20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xec20-0xec48 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xec34 calls init_mutex with a0=sym(probe_sema), a1=0x0, a2=sym(.rodata)+6840, a3=-0x1.
  The return at 0xec40 has v0 = ret(init_mutex).
- `poison_state_alter_range` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xeec4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xeec4-0xf0f0 (556 bytes).
  It occupies 556 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xef2c, `lw` at 0xef38, `lw` at 0xef4c.
  The `ll` at 0xefe8 loads 4 bytes from (sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)) +0x0.
  The `sc` at 0xeff4 stores 4 bytes to (sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)) +0x0.
  4 such `lw` accesses load 4 bytes from (sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)) +0x0, including `lw` at 0xf050, `lw` at 0xf05c, `lw` at 0xf068.
  The `jal` at 0xeee4 calls rt_pin_thread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xef50 calls __dcache_wb_inval with a0=?, a1=a1 at entry (arg1), a2=-0x1, a3=?.
  The `jal` at 0xef74 calls set_dir_state_POISONED with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xef7c calls is_POISONED_dir_state with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xefb0 calls getcpuid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf014 calls cpuaction with a0=?, a1=sym(poison_page_inval_range), a2=0x1, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2)).
  The `jal` at 0xf090 calls rt_unpin_thread with a0=ret(rt_pin_thread), a1=?, a2=?, a3=?.
  The `jal` at 0xf0cc calls set_dir_state_UNOWNED with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xef04 targets 0xf0b4, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0xef20 targets 0xef50, is taken when s4(=a1) == 0, and falls through when s4(=a1) != 0.
  The `beq` branch at 0xef30 targets 0xef50, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xef3c targets 0xef50, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xef48 targets 0xef28, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0xef58 targets 0xefb0, is taken when s4(=a1) == 0, and falls through when s4(=a1) != 0.
  The `beq` branch at 0xef60 targets 0xef98 and is always taken.
  The `beq` branch at 0xef6c targets 0xef8c, is taken when s2(?) >= 0xf (signed), and falls through when s2(?) < 0xf (signed).
  The `beq` branch at 0xef84 targets 0xef68, is taken when v0(=ret(is_POISONED_dir_state)) == 0, and falls through when v0(=ret(is_POISONED_dir_state)) != 0.
  The `beq` branch at 0xef90 targets 0xefa8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0xef98 targets 0xef74, is taken when s3(=a2) != 0, and falls through when s3(=a2) == 0.
  The `beq` branch at 0xefa0 targets 0xf0cc and is always taken.
  The `beq` branch at 0xefa8 targets 0xf084, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `blez` branch at 0xefd0 targets 0xf0dc, is taken when a2(=[sym(maxcpus)]) <= 0 (signed), and falls through when a2(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0xefdc targets 0xf02c and is always taken.
  The `beql` branch at 0xeff8 targets 0xefe8, is taken when a3(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]+1) == 0, and falls through when a3(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]+1) != 0; its branch-likely delay slot `nop` at 0xeffc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xf028 targets 0xf050, is taken when s0(?) >= a2(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a2(=[sym(maxcpus)]) (signed).
  The `bne` branch at 0xf038 targets 0xefe4, is taken when a5(?) != s3(=-0x1), and falls through when a5(?) == s3(=-0x1).
  The `bne` branch at 0xf048 targets 0xf030, is taken when s0(?) < a2(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a2(=[sym(maxcpus)]) (signed).
  The `blez` branch at 0xf054 targets 0xf080, is taken when a7(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed), and falls through when a7(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed).
  The `blez` branch at 0xf060 targets 0xf080, is taken when t0(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed), and falls through when t0(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed).
  The `blez` branch at 0xf06c targets 0xf080, is taken when t1(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed), and falls through when t1(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed).
  The `bgtz` branch at 0xf078 targets 0xf05c, is taken when t2(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) > 0 (signed), and falls through when t2(=[(sym(slot_lastfilled_cache) + (ret(getcpuid) << 0x2))]) <= 0 (signed).
  The `beq` branch at 0xf0b4 targets 0xf084, is taken when s4(=a1) == 0, and falls through when s4(=a1) != 0.
  The `beq` branch at 0xf0c4 targets 0xef60 and is always taken.
  The `beq` branch at 0xf0d4 targets 0xef90 and is always taken.
  The `beq` branch at 0xf0e8 targets 0xf050 and is always taken.
  The return at 0xf0ac has v0 = ret(rt_unpin_thread).
- `poison_page_inval_range` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf0f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf0f0-0xf130 (64 bytes).
  It occupies 64 bytes.
  The `ll` at 0xf10c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sc` at 0xf118 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0xf0fc calls __dcache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0xf11c targets 0xf10c, is taken when v1(=[a2]-1) == 0, and falls through when v1(=[a2]-1) != 0; its branch-likely delay slot `nop` at 0xf120 runs only when taken and is annulled on fall-through.
  The return at 0xf128 has v0 = -0x1.
- `poison_state_clear` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf130 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf130-0xf158 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xf144 calls poison_state_alter_range with a0=?, a1=0x4000, a2=0x0, a3=a3 at entry (arg3).
  The return at 0xf150 has v0 = ret(poison_state_alter_range).
- `poison_state_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf158 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf158-0xf180 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xf16c calls poison_state_alter_range with a0=?, a1=0x4000, a2=0x1, a3=a3 at entry (arg3).
  The return at 0xf178 has v0 = ret(poison_state_alter_range).
- `node_getlastslot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf254 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf254-0xf268 (20 bytes).
  It occupies 20 bytes.
  The `lh` at 0xf264 loads 2 bytes from (sym(slot_lastfilled_cache) + (a0 + a0)) +0x0.
  The return at 0xf260 has v0 = [(sym(slot_lastfilled_cache) + (a0 + a0))]:2.
- `slot_getsize` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf268 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf268-0xf288 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0xf284 loads 4 bytes from (sym(slot_lastfilled_cache) + ((a1 + (a0 << 0x3)) << 0x2)) +0x0.
  The return at 0xf280 has v0 = [(sym(slot_lastfilled_cache) + ((a1 + (a0 << 0x3)) << 0x2))].
- `slot_psize_compute` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf288 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf288-0xf370 (232 bytes).
  It occupies 232 bytes.
  The `lh` at 0xf294 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0xf2a8 loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0xf2d4 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0xf2e8 loads 4 bytes from ?.
  The `lh` at 0xf338 loads 2 bytes from ret(find_first_component) +0x3a.
  The `lh` at 0xf348 loads 2 bytes from ?.
  The `jal` at 0xf2fc calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0xf31c calls find_first_component with a0=ret(find_lboard), a1=0x3, a2=?, a3=?.
  The `jal` at 0xf360 calls chk_for_pebrick with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a5=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000), a6=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a7=0x9600000000000000.
  The `beq` branch at 0xf2cc targets 0xf360, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0xf2f0 targets 0xf2fc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xf304 targets 0xf31c, is taken when v0(=ret(find_lboard)) != 0, and falls through when v0(=ret(find_lboard)) == 0.
  The `bne` branch at 0xf328 targets 0xf338, is taken when v0(=ret(find_first_component)) != 0, and falls through when v0(=ret(find_first_component)) == 0.
  The `beq` branch at 0xf330 targets 0xf310 and is always taken.
  The `beq` branch at 0xf358 targets 0xf310 and is always taken.
  The `beq` branch at 0xf368 targets 0xf2fc and is always taken.
  The return at 0xf314 has v0 = one of 0x0, ?.
- `memory_present` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf370 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf370-0xf394 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xf37c calls ckphyspnum with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xf38c has v0 = ?.
- `check_dir_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf394 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf394-0xf40c (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0xf3c4 loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `ld` at 0xf3e4 loads 8 bytes from ?.
  The `beq` branch at 0xf3e0 targets 0xf3fc, is taken when (a4(=entry(0x9200000001fc0000)) & 0x1) == 0, and falls through when (a4(=entry(0x9200000001fc0000)) & 0x1) != 0.
  The return at 0xf3f4 has v0 = ?.
  The return at 0xf404 has v0 = ?.
- `memory_read_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf40c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf40c-0xf58c (384 bytes).
  It occupies 384 bytes.
  The `lh` at 0xf420 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0xf48c loads 8 bytes from table(0x9200000001f80008) +0x0.
  The `ld` at 0xf4c4 loads 8 bytes from table(0x9200000001f80000) +0x0.
  The `ld` at 0xf500 loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `ld` at 0xf538 loads 8 bytes from ?.
  The `jal` at 0xf434 calls get_region with a0=[-0x3bd6]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf440 calls memory_iscalias with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xf450 calls get_nasid with a0=?, a1=?, a2=?, a3=?, a4=0x9200000001f80000.
  The `beq` branch at 0xf448 targets 0xf478, is taken when v0(=ret(memory_iscalias)) == 0, and falls through when v0(=ret(memory_iscalias)) != 0.
  The `beq` branch at 0xf4bc targets 0xf4e0, is taken when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) == 0, and falls through when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) != 0.
  The `beq` branch at 0xf4cc targets 0xf4e4, is taken when (a5(=entry(0x9200000001f80000)) & a6(?)) == 0, and falls through when (a5(=entry(0x9200000001f80000)) & a6(?)) != 0.
  The `beq` branch at 0xf534 targets 0xf57c, is taken when 0 >= v1(?) (unsigned), and falls through when 0 < v1(?) (unsigned).
  The `beq` branch at 0xf53c targets 0xf54c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xf558 targets 0xf574, is taken when a0(?) == a4(=0xff), and falls through when a0(?) != a4(=0xff).
  The `beq` branch at 0xf564 targets 0xf574, is taken when a0(?) == a2(=0xf), and falls through when a0(?) != a2(=0xf).
  The `beq` branch at 0xf56c targets 0xf4d8 and is always taken.
  The `beq` branch at 0xf574 targets 0xf4d4 and is always taken.
  The `beq` branch at 0xf57c targets 0xf558, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xf584 targets 0xf554 and is always taken.
  The return at 0xf4d8 has v0 = one of 0x0, 0x1.
- `page_read_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf58c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf58c-0xf5e0 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0xf5a8 calls memory_read_accessible with a0=table(0x0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xf5b0 targets 0xf5d8, is taken when v0(=ret(memory_read_accessible)) == 0, and falls through when v0(=ret(memory_read_accessible)) != 0.
  The `bne` branch at 0xf5bc targets 0xf5a8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0xf5d8 targets 0xf5c4 and is always taken.
  The return at 0xf5d0 has v0 = one of 0x0, 0x1.
- `memory_write_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf5e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf5e0-0xf754 (372 bytes).
  It occupies 372 bytes.
  The `lh` at 0xf5f4 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0xf660 loads 8 bytes from table(0x9200000001f80008) +0x0.
  The `ld` at 0xf698 loads 8 bytes from table(0x9200000001f80000) +0x0.
  The `ld` at 0xf6d4 loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `ld` at 0xf708 loads 8 bytes from ?.
  The `jal` at 0xf608 calls get_region with a0=[-0x3bd6]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf614 calls memory_iscalias with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xf624 calls get_nasid with a0=?, a1=?, a2=?, a3=?, a4=0x9200000001f80000.
  The `beq` branch at 0xf61c targets 0xf64c, is taken when v0(=ret(memory_iscalias)) == 0, and falls through when v0(=ret(memory_iscalias)) != 0.
  The `beq` branch at 0xf690 targets 0xf6b4, is taken when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) == 0, and falls through when (t8(=entry(0x9200000001f80008)) & t9(=0x100000000000)) != 0.
  The `beq` branch at 0xf6a0 targets 0xf6b8, is taken when (a5(=entry(0x9200000001f80000)) & a6(?)) == 0, and falls through when (a5(=entry(0x9200000001f80000)) & a6(?)) != 0.
  The `beq` branch at 0xf704 targets 0xf744, is taken when 0 >= v1(?) (unsigned), and falls through when 0 < v1(?) (unsigned).
  The `beq` branch at 0xf70c targets 0xf71c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xf72c targets 0xf73c, is taken when a2(?) == a3(=0xff), and falls through when a2(?) != a3(=0xff).
  The `beq` branch at 0xf734 targets 0xf6a8 and is always taken.
  The `beq` branch at 0xf73c targets 0xf6ac and is always taken.
  The `beq` branch at 0xf744 targets 0xf728, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xf74c targets 0xf724 and is always taken.
  The return at 0xf6ac has v0 = one of 0x0, 0x1.
- `page_write_accessible` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf754 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf754-0xf7a8 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0xf770 calls memory_write_accessible with a0=table(0x0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xf778 targets 0xf7a0, is taken when v0(=ret(memory_write_accessible)) == 0, and falls through when v0(=ret(memory_write_accessible)) != 0.
  The `bne` branch at 0xf784 targets 0xf770 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0xf7a0 targets 0xf78c and is always taken.
  The return at 0xf798 has v0 = one of 0x0, 0x1.
- `set_dir_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf7a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf7a8-0xf838 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0xf7dc loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `ld` at 0xf804 loads 8 bytes from ?.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xf810, `sd` at 0xf834.
  The `beq` branch at 0xf800 targets 0xf81c, is taken when (at(=entry(0x9200000001fc0000)) & 0x1) == 0, and falls through when (at(=entry(0x9200000001fc0000)) & 0x1) != 0.
  The return at 0xf814 has v0 = 0x9200000001fc0000.
  The return at 0xf830 has v0 = 0x9200000001fc0000.
- `memory_set_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf838 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf838-0xf990 (344 bytes).
  It occupies 344 bytes.
  The `ld` at 0xf89c loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `ld` at 0xf8d8 loads 8 bytes from ?.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0xf900, `sd` at 0xf904, `sd` at 0xf908.
  The `jal` at 0xf90c calls get_nasid with a0=?, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0xf928 calls set_dir_access with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xf8d4 targets 0xf95c, is taken when 0 >= at(?) (unsigned), and falls through when 0 < at(?) (unsigned).
  The `beq` branch at 0xf8dc targets 0xf96c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xf8ec targets 0xf978, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0xf914 targets 0xf940, is taken when v0(=ret(get_nasid)) != s0(?), and falls through when v0(=ret(get_nasid)) == s0(?).
  The `bne` branch at 0xf938 targets 0xf928, is taken when s0(?) < 0x1000 (signed), and falls through when s0(?) >= 0x1000 (signed).
  The `beq` branch at 0xf95c targets 0xf984, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xf964 targets 0xf8f8 and is always taken.
  The `beq` branch at 0xf970 targets 0xf8ec and is always taken.
  The `beq` branch at 0xf97c targets 0xf8fc and is always taken.
  The `beq` branch at 0xf988 targets 0xf8fc and is always taken.
  The return at 0xf954 has v0 = one of ret(get_nasid), ret(set_dir_access).
- `page_allow_access` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xf990 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xf990-0xfa04 (116 bytes).
  It occupies 116 bytes.
  The `lh` at 0xf9cc loads 2 bytes from abs 0xffffffffffffc42a.
  The `jal` at 0xf9c8 calls get_region with a0=[-0x3bd6]:2, a1=?, a2=?, a3=?.
  The `jal` at 0xf9d8 calls memory_set_access with a0=?, a1=(ret(get_region) << 0x0), a2=0xff, a3=?.
  The `beq` branch at 0xf9b8 targets 0xf9f0, is taken when a3(?) >= at(?) (unsigned), and falls through when a3(?) < at(?) (unsigned).
  The `bne` branch at 0xf9c0 targets 0xf9f4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xf9e8 targets 0xf9c8, is taken when s1(?) >= s0(?) (unsigned), and falls through when s1(?) < s0(?) (unsigned).
  The return at 0xf9fc has v0 = ?.
- `decode_prot` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfa04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfa04-0xfa44 (64 bytes).
  It occupies 64 bytes.
  The `beq` branch at 0xfa18 targets 0xfa30, is taken when a0 == v1(=0xff), and falls through when a0 != v1(=0xff).
  The `beq` branch at 0xfa20 targets 0xfa38, is taken when a0 == a3(=0xf), and falls through when a0 != a3(=0xf).
  The return at 0xfa30 has v0 = sym(.rodata)+6840.
  The return at 0xfa3c has v0 = sym(.rodata)+6840.
- `show_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfa44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfa44-0xfdf4 (944 bytes).
  It occupies 944 bytes.
  The `ld` at 0xfa8c loads 8 bytes from table(sym(dir_state_str)) +0x0.
  3 such `ld` accesses load 8 bytes from table(0x9200000001fc0000) +0x0, including `ld` at 0xfaf0, `ld` at 0xfb98, `ld` at 0xfcd8.
  The `ld` at 0xfbb4 loads 8 bytes from ?.
  The `ld` at 0xfc80 loads 8 bytes from table(sym(dir_owner_str)) +0x0.
  The `jal` at 0xfa64 calls get_dir_ent with a0=a0 at entry (arg0), a1=sp-112, a2=sp-104, a3=sp-96.
  The `jalr` at 0xfa88 calls (unknown callee) with a0=sym(.rodata)+6840, a1=a0 at entry (arg0), a2=entry(sym(dir_state_str)), a3=?.
  The `jalr` at 0xfad4 calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=0x5, a3=0x6, a4=0x2.
  The `jal` at 0xfb58 calls decode_prot with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfb6c calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=ret(decode_prot).
  The `jal` at 0xfbdc calls is_fine_dirmode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfbec calls decode_prot with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xfc0c calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?, a4=ret(decode_prot).
  The `jalr` at 0xfc7c calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=entry(sym(dir_owner_str)), a3=?, a4=0x2.
  The `jalr` at 0xfcc4 calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=0x5, a3=?, a4=0x2.
  The `jalr` at 0xfd14 calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?, a4=0x2.
  The `jalr` at 0xfd34 calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?.
  The `jalr` at 0xfd50 calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?, a4=0x2.
  The `jalr` at 0xfd70 calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?.
  The `jalr` at 0xfdac calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?.
  The `jalr` at 0xfdcc calls (unknown callee) with a0=sym(.rodata)+6840, a1=?, a2=?, a3=?.
  The `beq` branch at 0xfaac targets 0xfc9c, is taken when a0(?) == a4(=0x2), and falls through when a0(?) != a4(=0x2).
  The `beq` branch at 0xfab4 targets 0xfc5c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xfabc targets 0xfc60, is taken when a0(?) == a1(=0x4), and falls through when a0(?) != a1(=0x4).
  The `beq` branch at 0xfac4 targets 0xfc60, is taken when a0(?) == a2(=0x5), and falls through when a0(?) != a2(=0x5).
  The `beq` branch at 0xfacc targets 0xfc5c, is taken when a0(?) == a3(=0x6), and falls through when a0(?) != a3(=0x6).
  The `blez` branch at 0xfb14 targets 0xfc2c, is taken when t8(=one of 0x10, 0x40) <= 0 (signed), and falls through when t8(=one of 0x10, 0x40) > 0 (signed).
  The `beq` branch at 0xfb4c targets 0xfddc and is always taken.
  The `beq` branch at 0xfb90 targets 0xfc2c, is taken when s1(?) >= at(?) (signed), and falls through when s1(?) < at(?) (signed).
  The `beq` branch at 0xfbb0 targets 0xfc1c, is taken when 0 >= t8(?) (unsigned), and falls through when 0 < t8(?) (unsigned).
  The `beq` branch at 0xfbb8 targets 0xfbc8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xfbd4 targets 0xfb78, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0xfbe4 targets 0xfb54, is taken when v0(=ret(is_fine_dirmode)) != 0, and falls through when v0(=ret(is_fine_dirmode)) == 0.
  The `beq` branch at 0xfc14 targets 0xfb78 and is always taken.
  The `beq` branch at 0xfc1c targets 0xfbd4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xfc24 targets 0xfbd0 and is always taken.
  The `beq` branch at 0xfc94 targets 0xfaf0 and is always taken.
  The `beq` branch at 0xfcb4 targets 0xfcd4, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0xfccc targets 0xfaf0 and is always taken.
  The `beq` branch at 0xfce8 targets 0xfd44, is taken when (a7(=entry(0x9200000001fc0000)) & 0x1) == 0, and falls through when (a7(=entry(0x9200000001fc0000)) & 0x1) != 0.
  The `bltz` branch at 0xfd24 targets 0xfd80, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0xfd3c targets 0xfaf0 and is always taken.
  The `bltz` branch at 0xfd60 targets 0xfdbc, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0xfd78 targets 0xfaf0 and is always taken.
  The `beq` branch at 0xfdb4 targets 0xfd2c and is always taken.
  The `beq` branch at 0xfdd4 targets 0xfd68 and is always taken.
  The `beq` branch at 0xfdec targets 0xfb98 and is always taken.
  The return at 0xfc54 has v0 = ret(?).
- `set_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfdf4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfdf4-0xfe64 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0xfe1c loads 8 bytes from ?.
  The `sd` at 0xfe60 stores 8 bytes to ?.
  The `beq` branch at 0xfe24 targets 0xfe34, is taken when (a3(?) & 0x2) == 0, and falls through when (a3(?) & 0x2) != 0.
  The return at 0xfe2c has v0 = ?.
  The return at 0xfe5c has v0 = ?.
- `set_dir_state_POISONED` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfe64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfe64-0xfe80 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xfe6c calls set_dir_state with a0=a0 at entry (arg0), a1=0x7, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xfe78 has v0 = ret(set_dir_state).
- `is_POISONED_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfe80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfe80-0xfeb0 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xfe90 calls get_dir_ent with a0=a0 at entry (arg0), a1=sp-32, a2=sp-24, a3=sp-16.
  The return at 0xfea8 has v0 = ?.
- `is_UNOWNED_dir_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfecc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfecc-0xfefc (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xfedc calls get_dir_ent with a0=a0 at entry (arg0), a1=sp-32, a2=sp-24, a3=sp-16.
  The return at 0xfef4 has v0 = ?.
- `set_dir_owner` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0xfefc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0xfefc-0x10004 (264 bytes).
  It occupies 264 bytes.
  The `ld` at 0xff38 loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `ld` at 0xff60 loads 8 bytes from ?.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xff90, `sd` at 0xffc8.
  The `beq` branch at 0xff5c targets 0xff9c, is taken when (at(=entry(0x9200000001fc0000)) & 0x1) == 0, and falls through when (at(=entry(0x9200000001fc0000)) & 0x1) != 0.
  The `beq` branch at 0xff6c targets 0xffcc, is taken when a1 == t1(=-0x1), and falls through when a1 != t1(=-0x1).
  The `bne` branch at 0xff9c targets 0xffb8, is taken when a1 != t1(=-0x1), and falls through when a1 == t1(=-0x1).
  The `beq` branch at 0xfffc targets 0xff90 and is always taken.
  The return at 0xff94 has v0 = 0x9200000001fc0000.
  The return at 0xffc4 has v0 = 0x9200000001fc0000.
- `get_dir_ent` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10004 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10004-0x100c4 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x1004c loads 8 bytes from ?.
  The `ld` at 0x1005c loads 8 bytes from table(0x9200000001fc0000) +0x0.
  The `sw` at 0x10078 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0x10080 stores 8 bytes to a3 (arg3 at entry) +0x0.
  2 such `sd` accesses store 8 bytes to a2 (arg2 at entry) +0x0, including `sd` at 0x10090, `sd` at 0x100ac.
  The `beq` branch at 0x1006c targets 0x100b8, is taken when t3(=0x1) == t8(?), and falls through when t3(=0x1) != t8(?).
  The `beq` branch at 0x10084 targets 0x10094, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10094 targets 0x100ac, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x100bc targets 0x10078 and is always taken.
  The return at 0x1008c has v0 = ?.
  The return at 0x100b0 has v0 = ?.
- `memory_iscalias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x100c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x100c4-0x10104 (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0x100cc loads 8 bytes from abs 0x9200000001000028.
  The `beq` branch at 0x100dc targets 0x100f8, is taken when v0(=[0x9200000001000028]:8) == 0, and falls through when v0(=[0x9200000001000028]:8) != 0.
  The `bne` branch at 0x100f0 targets 0x100fc, is taken when v1(?) < a1(?) (unsigned), and falls through when v1(?) >= a1(?) (unsigned).
  The return at 0x100fc has v0 = one of 0x0, 0x1.
- `page_iscalias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10104 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10104-0x10124 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x10110 calls memory_iscalias with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1011c has v0 = ret(memory_iscalias).
- `page_local_calias` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10124-0x10160 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x10128 loads 8 bytes from abs 0x9200000001000028.
  The `beq` branch at 0x10138 targets 0x10154, is taken when v0(=[0x9200000001000028]:8) == 0, and falls through when v0(=[0x9200000001000028]:8) != 0.
  The `bne` branch at 0x1014c targets 0x10158, is taken when a3(?) < v1(?) (unsigned), and falls through when a3(?) >= v1(?) (unsigned).
  The return at 0x10158 has v0 = one of 0x0, 0x1.
- `fetchop_flush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10160 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10160-0x10260 (256 bytes).
  It occupies 256 bytes.
  The `ld` at 0x101c8 loads 8 bytes from table(0x9200000001f80028) +0x0.
  The `ld` at 0x10244 loads 8 bytes from ?.
  The `ld` at 0x1025c loads 8 bytes from table(0x9200000001f80020) +0x0.
  The `beq` branch at 0x101c0 targets 0x10258, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x101dc targets 0x10248, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x1020c targets 0x10248, is taken when t8(?) < a1(?) (unsigned), and falls through when t8(?) >= a1(?) (unsigned).
  The `beq` branch at 0x1021c targets 0x10248, is taken when at(?) >= v0(?) (unsigned), and falls through when at(?) < v0(?) (unsigned).
  The `bne` branch at 0x10248 targets 0x101c0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10258 targets 0x101cc and is always taken.
  The return at 0x10250 has v0 = 0x1.
- `__cache_hwb_inval_pfn` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10574 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10574-0x105c0 (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10578 loads 4 bytes from abs 0xffffffffffffc6ac.
  The `bne` branch at 0x10590 targets 0x1059c, is taken when a4(=[-0x3954]) < a1 (unsigned), and falls through when a4(=[-0x3954]) >= a1 (unsigned).
  The `bne` branch at 0x105b0 targets 0x105a4, is taken when t0(?) < a4(?) (unsigned), and falls through when t0(?) >= a4(?) (unsigned).
  The return at 0x105b8 has v0 = ?.
- `getecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10900-0x1090c (12 bytes).
  It occupies 12 bytes.
  The return at 0x10904 has v0 = ?.
- `setecc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1090c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1090c-0x10918 (12 bytes).
  It occupies 12 bytes.
  The return at 0x10910 has v0 = ?.
- `_munge_decc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10950-0x10968 (24 bytes).
  It occupies 24 bytes.
  The return at 0x10960 has v0 = ?.
- `__pdcache_wbinval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10a2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10a2c-0x10af4 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x10a48 loads 4 bytes from sym(pdcache_size) +0x0.
  The `bne` branch at 0x10a50 targets 0x10ac8, is taken when a7(=[sym(pdcache_size)]) < a1 (unsigned), and falls through when a7(=[sym(pdcache_size)]) >= a1 (unsigned).
  The `beq` branch at 0x10a64 targets 0x10ac0, is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned), and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  The `beq` branch at 0x10a74 targets 0x10a90, is taken when (t0(=a0) & 0x1f) == 0, and falls through when (t0(=a0) & 0x1f) != 0.
  The `beq` branch at 0x10a88 targets 0x10ac0, is taken when t0(?) >= t1(=(a0 + a1)-32) (unsigned), and falls through when t0(?) < t1(=(a0 + a1)-32) (unsigned).
  The `beq` branch at 0x10a94 targets 0x10ab0, is taken when (t1(=(a0 + a1)-32) & 0x1f) == 0, and falls through when (t1(=(a0 + a1)-32) & 0x1f) != 0.
  The `beq` branch at 0x10aa8 targets 0x10ac0, is taken when t0(?) >= t1(?) (unsigned), and falls through when t0(?) < t1(?) (unsigned).
  The `bne` branch at 0x10ab8 targets 0x10ab0, is taken when t0(?) < t1(?) (unsigned), and falls through when t0(?) >= t1(?) (unsigned).
  The `bne` branch at 0x10ae4 targets 0x10adc, is taken when t0(?) < t1(=[sym(pdcache_size)]+0xa7ffffffffffffe0) (unsigned), and falls through when t0(?) >= t1(=[sym(pdcache_size)]+0xa7ffffffffffffe0) (unsigned).
  The return at 0x10ac0 has v0 = 0x0.
  The return at 0x10aec has v0 = 0x0.
- `__picache_inval` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10af4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10af4-0x10bb8 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x10b0c loads 4 bytes from sym(picache_size) +0x0.
  The `bne` branch at 0x10b14 targets 0x10b8c, is taken when a7(=[sym(picache_size)]) < a1 (unsigned), and falls through when a7(=[sym(picache_size)]) >= a1 (unsigned).
  The `beq` branch at 0x10b28 targets 0x10b84, is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned), and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  The `beq` branch at 0x10b38 targets 0x10b54, is taken when (t0(=a0) & 0x3f) == 0, and falls through when (t0(=a0) & 0x3f) != 0.
  The `beq` branch at 0x10b4c targets 0x10b84, is taken when t0(?) >= t1(=(a0 + a1)-64) (unsigned), and falls through when t0(?) < t1(=(a0 + a1)-64) (unsigned).
  The `beq` branch at 0x10b58 targets 0x10b74, is taken when (t1(=(a0 + a1)-64) & 0x3f) == 0, and falls through when (t1(=(a0 + a1)-64) & 0x3f) != 0.
  The `beq` branch at 0x10b6c targets 0x10b84, is taken when t0(?) >= t1(?) (unsigned), and falls through when t0(?) < t1(?) (unsigned).
  The `bne` branch at 0x10b7c targets 0x10b74, is taken when t0(?) < t1(?) (unsigned), and falls through when t0(?) >= t1(?) (unsigned).
  The `bne` branch at 0x10ba8 targets 0x10b9c, is taken when t0(?) < t1(=[sym(picache_size)]+0xa7ffffffffffffc0) (unsigned), and falls through when t0(?) >= t1(=[sym(picache_size)]+0xa7ffffffffffffc0) (unsigned).
  The return at 0x10b84 has v0 = ?.
  The return at 0x10bb0 has v0 = ?.
- `queue_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10e14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10e14-0x10e48 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x10e38 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x10e28 calls bzero with a0=a0 at entry (arg0), a1=0xa08, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10e40 has v0 = ret(bzero).
- `queue_empty` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10e48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10e48-0x10e5c (20 bytes).
  It occupies 20 bytes.
  The `lbu` at 0x10e48 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0x10e4c loads 1 byte from a0 (arg0 at entry) +0x0.
  The return at 0x10e54 has v0 = ?.
- `queue_push` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10e5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10e5c-0x10f30 (212 bytes).
  It occupies 212 bytes.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x10e64, `lbu` at 0x10ea0, `lbu` at 0x10f14.
  The `ld` at 0x10e74 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sd` at 0x10e7c stores 8 bytes to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x8.
  The `ld` at 0x10e80 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `sd` at 0x10e84 stores 8 bytes to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x10.
  The `ld` at 0x10e88 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sd` at 0x10e8c stores 8 bytes to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x18.
  The `ld` at 0x10e90 loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `sd` at 0x10e94 stores 8 bytes to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x20.
  The `ld` at 0x10e98 loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `sd` at 0x10e9c stores 8 bytes to (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)) +0x28.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x1, including `lbu` at 0x10ebc, `lbu` at 0x10f0c.
  The `sb` at 0x10ecc stores 1 byte to a0 (arg0 at entry) +0x0.
  The `jal` at 0x10ef4 calls cmn_err with a0=0x5, a1=sym(.rodata)+7152, a2=ra at entry, a3=a3 at entry (arg3), a6=(a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3)), a7=[a1+24]:8.
  The `jal` at 0x10f00 calls debug with a0=sym(.rodata)+7152, a1=?, a2=?, a3=?.
  The `jal` at 0x10f20 calls assfail with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x5c, a3=?, a5=sym(.rodata)+7152.
  The `beq` branch at 0x10ed0 targets 0x10eec, is taken when a2(=[a0+1]:1) == a4(?), and falls through when a2(=[a0+1]:1) != a4(?).
  The `beq` branch at 0x10ed8 targets 0x10f18, is taken when a2(=[a0+1]:1) == a4(?), and falls through when a2(=[a0+1]:1) != a4(?).
  The `beq` branch at 0x10f10 targets 0x10ed8 and is always taken.
  The `beq` branch at 0x10f28 targets 0x10ee4 and is always taken.
  The return at 0x10ee4 has v0 = one of ?, ret(assfail).
- `queue_pop` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10f30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10f30-0x10f94 (100 bytes).
  It occupies 100 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x1, including `lbu` at 0x10f30, `lbu` at 0x10f6c.
  The `ld` at 0x10f44 loads 8 bytes from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x8.
  The `sd` at 0x10f48 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x10f4c loads 8 bytes from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x10.
  The `sd` at 0x10f50 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0x10f54 loads 8 bytes from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x18.
  The `sd` at 0x10f58 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x10f5c loads 8 bytes from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x20.
  The `sd` at 0x10f60 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `ld` at 0x10f64 loads 8 bytes from (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3)) +0x28.
  The `sd` at 0x10f68 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sb` at 0x10f90 stores 1 byte to a0 (arg0 at entry) +0x1.
  The return at 0x10f8c has v0 = ?.
- `queue_find` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x10f94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x10f94-0x1104c (184 bytes).
  It occupies 184 bytes.
  The `lbu` at 0x10f94 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x10f98 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lw` at 0x10fb4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwu` at 0x11008 loads 4 bytes from ?.
  The `ld` at 0x1101c loads 8 bytes from ?.
  The `beq` branch at 0x10fa8 targets 0x11040, is taken when a4(=[a0+1]:1) == a6(=[a0]:1), and falls through when a4(=[a0+1]:1) != a6(=[a0]:1).
  The `beq` branch at 0x10fb0 targets 0x10fe4 and is always taken.
  The `beq` branch at 0x10fb8 targets 0x11028, is taken when a1 == a5(?), and falls through when a1 != a5(?).
  The `beq` branch at 0x10fdc targets 0x11040, is taken when a4(?) == a6(=[a0]:1), and falls through when a4(?) != a6(=[a0]:1).
  The `beq` branch at 0x10fe4 targets 0x1100c, is taken when v0(=[a0+4]) == a7(=0x1), and falls through when v0(=[a0+4]) != a7(=0x1).
  The `bne` branch at 0x10fec targets 0x10fb8, is taken when v0(=[a0+4]) != t0(=0x2), and falls through when v0(=[a0+4]) == t0(=0x2).
  The `beq` branch at 0x11004 targets 0x10fb8 and is always taken.
  The `bne` branch at 0x11020 targets 0x10fc0, is taken when a1 != a5(?), and falls through when a1 == a5(?).
  The `beq` branch at 0x11038 targets 0x11044 and is always taken.
  The return at 0x11044 has v0 = one of ?, 0x0.
- `queue_first` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1104c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1104c-0x11090 (68 bytes).
  It occupies 68 bytes.
  The `lbu` at 0x11074 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `jal` at 0x11054 calls queue_empty [0x10e48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1105c targets 0x11070, is taken when v0(=ret(queue_empty)) == 0, and falls through when v0(=ret(queue_empty)) != 0.
  The `beq` branch at 0x11088 targets 0x11068 and is always taken.
  The return at 0x11068 has v0 = one of 0x0, (a0 + ((([a0+1]:1 << 0x2) + [a0+1]:1) << 0x3))+8.
- `queue_last` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11090 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11090-0x110d4 (68 bytes).
  It occupies 68 bytes.
  The `lbu` at 0x110b8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jal` at 0x11098 calls queue_empty [0x10e48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x110a0 targets 0x110b4, is taken when v0(=ret(queue_empty)) == 0, and falls through when v0(=ret(queue_empty)) != 0.
  The `beq` branch at 0x110cc targets 0x110ac and is always taken.
  The return at 0x110ac has v0 = one of 0x0, (a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3))+8.
- `queue_next` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x110d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x110d4-0x11148 (116 bytes).
  It occupies 116 bytes.
  The `lbu` at 0x110d4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x110f8 targets 0x11140, is taken when a1 == a6(=(a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3))+8), and falls through when a1 != a6(=(a0 + ((([a0]:1 << 0x2) + [a0]:1) << 0x3))+8).
  The return at 0x11138 has v0 = ?.
  The return at 0x11140 has v0 = 0x0.
- `get_chipid` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11148 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11148-0x111f4 (172 bytes).
  It occupies 172 bytes.
  The `jal` at 0x11168 calls vector_read with a0=a2 at entry (arg2), a1=0x0, a2=0x600000, a3=a3 at entry (arg3).
  The `jal` at 0x11190 calls net_errmsg with a0=ret(vector_read), a1=?, a2=?, a3=?.
  The `jal` at 0x111a8 calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=a2 at entry (arg2), a3=ret(net_errmsg).
  The `jal` at 0x111bc calls vector_read with a0=a2 at entry (arg2), a1=0x0, a2=0x600000, a3=a3 at entry (arg3).
  The `jal` at 0x111cc calls net_errmsg with a0=ret(vector_read), a1=?, a2=?, a3=?.
  The `jal` at 0x111e4 calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=a2 at entry (arg2), a3=ret(net_errmsg).
  The `bltz` branch at 0x11170 targets 0x11190, is taken when v0(=ret(vector_read)) < 0 (signed), and falls through when v0(=ret(vector_read)) >= 0 (signed).
  The `bgez` branch at 0x111c4 targets 0x11178, is taken when v0(=ret(vector_read)) >= 0 (signed), and falls through when v0(=ret(vector_read)) < 0 (signed).
  The `beq` branch at 0x111ec targets 0x1117c and is always taken.
  The return at 0x11188 has v0 = ret(vector_read).
- `get_port_status` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x111f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x111f4-0x11300 (268 bytes).
  It occupies 268 bytes.
  6 such `sb` accesses store 1 byte to ?, including `sb` at 0x11250, `sb` at 0x11280, `sb` at 0x1129c.
  The `jal` at 0x1121c calls vector_read with a0=a1 at entry (arg1), a1=0x0, a2=0x10, a3=sp-48.
  The `jal` at 0x112dc calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=a1 at entry (arg1), a3=?, a7=0x3.
  The `bltz` branch at 0x11224 targets 0x112d0, is taken when v0(=ret(vector_read)) < 0 (signed), and falls through when v0(=ret(vector_read)) >= 0 (signed).
  The `beq` branch at 0x11248 targets 0x112ec and is always taken.
  The `beq` branch at 0x11268 targets 0x112b8, is taken when a2(?) >= 0x9 (signed), and falls through when a2(?) < 0x9 (signed).
  The `beq` branch at 0x11278 targets 0x112a0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x11290 targets 0x11250, is taken when (v1(?) & a0(?)) != 0, and falls through when (v1(?) & a0(?)) == 0.
  The `beq` branch at 0x11298 targets 0x11254 and is always taken.
  The `beq` branch at 0x112a8 targets 0x112c8, is taken when (s0(=a0) & t2(?)) == 0, and falls through when (s0(=a0) & t2(?)) != 0.
  The `beq` branch at 0x112b0 targets 0x11254 and is always taken.
  The `beq` branch at 0x112c8 targets 0x11254 and is always taken.
  The `beq` branch at 0x112e4 targets 0x11228 and is always taken.
  The `beq` branch at 0x112f8 targets 0x11274 and is always taken.
  The return at 0x112c0 has v0 = ?.
- `probe_object` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11300 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11300-0x11460 (352 bytes).
  It occupies 352 bytes.
  The `jal` at 0x1132c calls vector_concat with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11344 calls get_chipid [0x11148] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=ret(vector_concat), a3=sp-88.
  The `jal` at 0x113a0 calls vector_read with a0=ret(vector_concat), a1=0x0, a2=0x100, a3=sp-96.
  The `jal` at 0x113d4 calls queue_find [0x10f94] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jal` at 0x113fc calls queue_push [0x10e5c] with a0=a2 at entry (arg2), a1=sp-80, a2=?, a3=?.
  The `jal` at 0x11418 calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=ret(vector_concat), a3=?.
  The `jal` at 0x11428 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11438 calls rbrick_uid_get with a0=ret(get_nasid), a1=ret(vector_concat), a2=sp-96, a3=?.
  The `jal` at 0x11450 calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=ret(vector_concat), a3=?.
  The `bltz` branch at 0x11354 targets 0x1140c, is taken when v0(=ret(get_chipid)) < 0 (signed), and falls through when v0(=ret(get_chipid)) >= 0 (signed).
  The `beq` branch at 0x1136c targets 0x11384, is taken when a5(?) == v0(=0x3012), and falls through when a5(?) != v0(=0x3012).
  The `beq` branch at 0x11374 targets 0x11398, is taken when a5(?) == a1(=0x3017), and falls through when a5(?) != a1(=0x3017).
  The `bltz` branch at 0x113a8 targets 0x11428, is taken when v0(=ret(vector_read)) < 0 (signed), and falls through when v0(=ret(vector_read)) >= 0 (signed).
  The `beq` branch at 0x113bc targets 0x11428, is taken when (a6(?) & a7(=0xffffffffffff)) == 0, and falls through when (a6(?) & a7(=0xffffffffffff)) != 0.
  The `bltz` branch at 0x113c4 targets 0x11380, is taken when s0(=ret(get_chipid)) < 0 (signed), and falls through when s0(=ret(get_chipid)) >= 0 (signed).
  The `beq` branch at 0x113cc targets 0x11384, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x113dc targets 0x11384, is taken when v0(=ret(queue_find)) != 0, and falls through when v0(=ret(queue_find)) == 0.
  The `beq` branch at 0x11404 targets 0x11384 and is always taken.
  The `beq` branch at 0x11420 targets 0x11384 and is always taken.
  The `beq` branch at 0x11440 targets 0x113c4, is taken when v0(=ret(rbrick_uid_get)) == 0, and falls through when v0(=ret(rbrick_uid_get)) != 0.
  The `beq` branch at 0x11458 targets 0x11380 and is always taken.
  The return at 0x11390 has v0 = one of ret(get_chipid), ?.
- `probe_loop` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11460 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11460-0x115e4 (388 bytes).
  It occupies 388 bytes.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x114ec, `lbu` at 0x11514, `lbu` at 0x115cc.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x1150c, `sb` at 0x11544, `sb` at 0x115e0.
  The `jal` at 0x11474 calls queue_empty [0x10e48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x114dc calls probe_object [0x11300] with a0=?, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x1154c calls queue_push [0x10e5c] with a0=a1 at entry (arg1), a1=sp-112, a2=?, a3=?.
  The `jal` at 0x11554 calls queue_empty [0x10e48] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11564 calls queue_pop [0x10f30] with a0=a0 at entry (arg0), a1=sp-112, a2=?, a3=?.
  The `jal` at 0x11570 calls queue_find [0x10f94] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x11584 calls get_port_status [0x111f4] with a0=?, a1=?, a2=sp-72, a3=?.
  The `jal` at 0x115c4 calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=?, a3=?.
  The `beq` branch at 0x11490 targets 0x114cc, is taken when v0(=ret(queue_empty)) == 0, and falls through when v0(=ret(queue_empty)) != 0.
  The `beq` branch at 0x114cc targets 0x11564 and is always taken.
  The `bltz` branch at 0x114e4 targets 0x115b0, is taken when v0(=ret(probe_object)) < 0 (signed), and falls through when v0(=ret(probe_object)) >= 0 (signed).
  The `beq` branch at 0x11508 targets 0x11548, is taken when s0(?) >= 0x8 (signed), and falls through when s0(?) < 0x8 (signed).
  The `beq` branch at 0x1151c targets 0x11530, is taken when (a5(?) & 0x1) == 0, and falls through when (a5(?) & 0x1) != 0.
  The `beq` branch at 0x11524 targets 0x114d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x11540 targets 0x11510, is taken when s0(?) < 0x8 (signed), and falls through when s0(?) >= 0x8 (signed).
  The `bne` branch at 0x1155c targets 0x1159c, is taken when v0(=ret(queue_empty)) != 0, and falls through when v0(=ret(queue_empty)) == 0.
  The `bne` branch at 0x11578 targets 0x11554, is taken when v0(=ret(queue_find)) != 0, and falls through when v0(=ret(queue_find)) == 0.
  The `beq` branch at 0x11594 targets 0x11510 and is always taken.
  The `beq` branch at 0x1159c targets 0x114a0, is taken when s4(=one of 0x0, 0x1) == 0, and falls through when s4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x115a8 targets 0x114ac and is always taken.
  The `beq` branch at 0x115dc targets 0x114f0 and is always taken.
  The return at 0x114c4 has v0 = one of ?, 0x0, 0x1.
- `router_map_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x115e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x115e4-0x11798 (436 bytes).
  It occupies 436 bytes.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8c68, including `sw` at 0x11610, `sw` at 0x11720.
  The `lh` at 0x11670 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1167c, `ld` at 0x11690.
  The `lw` at 0x1169c loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from ret(find_lboard_class) +0x9, including `lbu` at 0x116c8, `lbu` at 0x116e4.
  The `lw` at 0x11700 loads 4 bytes from ret(find_lboard_class) +0x0.
  The `lw` at 0x11714 loads 4 bytes from a0 (arg0 at entry) +0x8c68.
  The `lh` at 0x11728 loads 2 bytes from ret(find_lboard_class) +0xe.
  The `sh` at 0x11730 stores 2 bytes to (a0 + ([a0+35944]+1 << 0x4)) +0x8860.
  The `lbu` at 0x11734 loads 1 byte from ret(find_lboard_class) +0xa.
  The `sb` at 0x11738 stores 1 byte to (a0 + ([a0+35944]+1 << 0x4)) +0x8862.
  The `ld` at 0x1173c loads 8 bytes from ret(find_lboard_class) +0x18.
  The `sd` at 0x11744 stores 8 bytes to (a0 + ([a0+35944]+1 << 0x4)) +0x8858.
  The `lh` at 0x11794 loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0x116b4 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x116d4 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=ret(find_lboard_class).
  The `jal` at 0x11748 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1162c targets 0x11758, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x11648 targets 0x11788 and is always taken.
  The `beq` branch at 0x11668 targets 0x11758, is taken when s2(?) >= t8(=[sym(maxnodes)]) (signed), and falls through when s2(?) < t8(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x11688 targets 0x11748, is taken when s3(=0xc000) == t8(?), and falls through when s3(=0xc000) != t8(?).
  The `beq` branch at 0x116a8 targets 0x116b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x116bc targets 0x11650, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0x116c4 targets 0x116e8 and is always taken.
  The `beq` branch at 0x116dc targets 0x11650, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0x116f8 targets 0x11714, is taken when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) == 0, and falls through when (a1(=[ret(find_lboard_class)+9]:1) & 0x4) != 0.
  The `bne` branch at 0x11704 targets 0x116cc, is taken when a4(=[ret(find_lboard_class)]) != 0, and falls through when a4(=[ret(find_lboard_class)]) == 0.
  The `beq` branch at 0x1170c targets 0x116d4 and is always taken.
  The `beq` branch at 0x11740 targets 0x11700 and is always taken.
  The `beq` branch at 0x11750 targets 0x116b4 and is always taken.
  The `beq` branch at 0x11790 targets 0x11674 and is always taken.
  The return at 0x11780 has v0 = one of ?, ret(find_lboard_class).
- `router_map_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11798 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11798-0x11804 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x11798 loads 8 bytes from abs 0xffffffffffffc400.
  The `lw` at 0x117a4 loads 4 bytes from [-0x3c00]:8 +0x8c68.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x0, including `sh` at 0x117b4, `sh` at 0x117f0.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x117c0, `sb` at 0x117f8.
  The `ld` at 0x117cc loads 8 bytes from ?.
  The `lh` at 0x117ec loads 2 bytes from ?.
  The `lbu` at 0x117f4 loads 1 byte from ?.
  The `blez` branch at 0x117bc targets 0x117fc, is taken when a6(=[[-0x3c00]:8+35944]) <= 0 (signed), and falls through when a6(=[[-0x3c00]:8+35944]) > 0 (signed).
  The `beq` branch at 0x117d4 targets 0x117ec, is taken when t1(?) == a0, and falls through when t1(?) != a0.
  The `bne` branch at 0x117dc targets 0x117c8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x117e4 targets 0x117fc and is always taken.
  The return at 0x117fc has v0 = ?.
- `probe_results_print` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11804 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11804-0x11984 (384 bytes).
  It occupies 384 bytes.
  The `lbu` at 0x118b4 loads 1 byte from ?.
  The `ld` at 0x118f0 loads 8 bytes from ?.
  The `lbu` at 0x11934 loads 1 byte from sym(.rodata) +0x1e18.
  The `jal` at 0x11820 calls queue_empty [0x10e48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11858 calls queue_first [0x1104c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11888 calls sprintf with a0=sp-104, a1=sym(.rodata)+7152, a2=?, a3=?.
  The `jal` at 0x11894 calls strcat with a0=sp-128, a1=sp-104, a2=?, a3=?.
  The `jal` at 0x118ec calls router_map_get with a0=?, a1=sp-88, a2=sp-86, a3=?.
  The `jalr` at 0x11900 calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+7152, a2=?, a3=sp-128.
  The `jal` at 0x11910 calls queue_next [0x110d4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x11920 calls queue_last [0x11090] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x11964 calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+7152, a2=sp-86, a3=?.
  The `jalr` at 0x11970 calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+7152, a2=?, a3=?.
  The `beq` branch at 0x11828 targets 0x11850, is taken when v0(=ret(queue_empty)) == 0, and falls through when v0(=ret(queue_empty)) != 0.
  The `bne` branch at 0x11870 targets 0x11920, is taken when v0(=ret(queue_first)) != 0, and falls through when v0(=ret(queue_first)) == 0.
  The `beq` branch at 0x11878 targets 0x1194c and is always taken.
  The `beq` branch at 0x118a8 targets 0x11940, is taken when s0(?) >= 0x9 (signed), and falls through when s0(?) < 0x9 (signed).
  The `bne` branch at 0x118bc targets 0x11880, is taken when (a3(?) & 0x10) != 0, and falls through when (a3(?) & 0x10) == 0.
  The `bne` branch at 0x118cc targets 0x118b4, is taken when s0(?) < 0x9 (signed), and falls through when s0(?) >= 0x9 (signed).
  The `beq` branch at 0x118d4 targets 0x1190c, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x118e0 targets 0x11960, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x11918 targets 0x1194c, is taken when v0(=ret(queue_next)) == 0, and falls through when v0(=ret(queue_next)) != 0.
  The `beq` branch at 0x11928 targets 0x1194c, is taken when v0(=ret(queue_last)) == s1(?), and falls through when v0(=ret(queue_last)) != s1(?).
  The `beq` branch at 0x11938 targets 0x118b0 and is always taken.
  The `beq` branch at 0x11944 targets 0x118dc and is always taken.
  The `beq` branch at 0x11958 targets 0x11834 and is always taken.
  The `beq` branch at 0x1197c targets 0x118e4 and is always taken.
  The return at 0x11848 has v0 = one of -0x1, 0x0.
- `net_link_up` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11984 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11984-0x11998 (20 bytes).
  It occupies 20 bytes.
  The `ld` at 0x11988 loads 8 bytes from abs 0x9200000001680000.
  The return at 0x11990 has v0 = ?.
- `router_queue_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11998 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11998-0x11a34 (156 bytes).
  It occupies 156 bytes.
  The `sd` at 0x119cc stores 8 bytes to a0 (arg0 at entry) +0x8858.
  The `sd` at 0x119e8 stores 8 bytes to a0 (arg0 at entry) +0x8860.
  The `jal` at 0x119b4 calls kmem_zalloc_node with a0=0xa08, a1=0x1, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0x119dc calls kmem_zalloc_node with a0=0xa08, a1=0x1, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x11a08 calls assfail with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x2ac, a3=?.
  The `jal` at 0x11a24 calls assfail with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x2b0, a3=?.
  The `beq` branch at 0x119c8 targets 0x119fc, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `beq` branch at 0x119e4 targets 0x11a18, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `beq` branch at 0x11a10 targets 0x119d4 and is always taken.
  The `beq` branch at 0x11a2c targets 0x119f0 and is always taken.
  The return at 0x119f4 has v0 = one of ret(kmem_zalloc_node), ret(assfail).
- `probe_routers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11a34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11a34-0x11b14 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0x11a50 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x11a5c loads 8 bytes from [-0x3c00]:8 +0x8860.
  The `ld` at 0x11a64 loads 8 bytes from [-0x3c00]:8 +0x8858.
  The `jal` at 0x11a3c calls net_link_up [0x11984] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11a68 calls queue_init [0x10e14] with a0=[[-0x3c00]:8+34912]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x11a74 calls queue_init [0x10e14] with a0=[[-0x3c00]:8+34904]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x11a84 calls probe_object [0x11300] with a0=0x0, a1=0x0, a2=[[-0x3c00]:8+34912]:8, a3=?.
  The `jal` at 0x11a94 calls probe_loop [0x11460] with a0=[[-0x3c00]:8+34912]:8, a1=[[-0x3c00]:8+34904]:8, a2=?, a3=?.
  The `jal` at 0x11ab0 calls probe_results_print [0x11804] with a0=[[-0x3c00]:8+34904]:8, a1=0x0, a2=sym(ip27log_printf), a3=?.
  The `jal` at 0x11ac0 calls probe_results_print [0x11804] with a0=[[-0x3c00]:8+34904]:8, a1=0x6, a2=sym(cmn_err), a3=?.
  The `jal` at 0x11aec calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=?, a3=?.
  The `jal` at 0x11b04 calls ip27log_printf with a0=0x0, a1=sym(.rodata)+7152, a2=?, a3=?.
  The `beq` branch at 0x11a48 targets 0x11ae4, is taken when v0(=ret(net_link_up)) == 0, and falls through when v0(=ret(net_link_up)) != 0.
  The `bltz` branch at 0x11a8c targets 0x11afc, is taken when v0(=ret(probe_object)) < 0 (signed), and falls through when v0(=ret(probe_object)) >= 0 (signed).
  The `bgez` branch at 0x11a9c targets 0x11aac, is taken when v0(=ret(probe_loop)) >= 0 (signed), and falls through when v0(=ret(probe_loop)) < 0 (signed).
  The `beq` branch at 0x11aa4 targets 0x11acc and is always taken.
  The `beq` branch at 0x11af4 targets 0x11acc and is always taken.
  The `beq` branch at 0x11b0c targets 0x11acc and is always taken.
  The return at 0x11adc has v0 = one of -0x1, ret(probe_results_print), 0x0.
- `router_link_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11b14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11b14-0x11ba0 (140 bytes).
  It occupies 140 bytes.
  The `jal` at 0x11b50 calls sprintf with a0=sp-64, a1=sym(.rodata)+7152, a2=?, a3=?.
  The `jal` at 0x11b60 calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-64, a2=sp-48, a3=?.
  The `beq` branch at 0x11b30 targets 0x11b44 and is always taken.
  The `beq` branch at 0x11b40 targets 0x11b80, is taken when s0(?) >= 0x9 (signed), and falls through when s0(?) < 0x9 (signed).
  The `bne` branch at 0x11b68 targets 0x11b38, is taken when v0(=ret(hwgraph_traverse)) != 0, and falls through when v0(=ret(hwgraph_traverse)) == 0.
  The `bne` branch at 0x11b70 targets 0x11b38, is taken when a2(?) != s2(=a1), and falls through when a2(?) == s2(=a1).
  The `beq` branch at 0x11b78 targets 0x11b88 and is always taken.
  The return at 0x11b98 has v0 = one of ?, 0x0.
- `router_guardian_search` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11ba0-0x11ec4 (804 bytes).
  It occupies 804 bytes.
  The `lw` at 0x11d54 loads 4 bytes from ?.
  The `ld` at 0x11da0 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x11da4 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x11dac loads 8 bytes from ?.
  3 such `lw` accesses load 4 bytes from table(0x85f8) +0x0, including `lw` at 0x11db8, `lw` at 0x11dcc, `lw` at 0x11dd4.
  The `ld` at 0x11e54 loads 8 bytes from ret(queue_find) +0x8.
  The `sd` at 0x11e74 stores 8 bytes to ret(queue_find) +0x8.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x11e8c, `sd` at 0x11ec0.
  The `jal` at 0x11bfc calls kmem_alloc with a0=0xa08, a1=0x0, a2=0x4, a3=0x3, a4=0x2.
  The `jal` at 0x11c0c calls queue_init [0x10e14] with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=?.
  The `jal` at 0x11c1c calls kmem_alloc with a0=0xa08, a1=0x0, a2=?, a3=?.
  The `jal` at 0x11c30 calls queue_init [0x10e14] with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=?.
  The `jal` at 0x11c4c calls queue_push [0x10e5c] with a0=ret(kmem_alloc), a1=sp-240, a2=?, a3=?.
  The `jal` at 0x11c54 calls queue_empty [0x10e48] with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x11c94 calls kmem_free with a0=ret(kmem_alloc), a1=0xa08, a2=?, a3=?.
  The `jal` at 0x11ca4 calls kmem_free with a0=ret(kmem_alloc), a1=0xa08, a2=?, a3=?.
  The `jal` at 0x11ce4 calls queue_push [0x10e5c] with a0=ret(kmem_alloc), a1=sp-240, a2=?, a3=?.
  The `jal` at 0x11cec calls queue_empty [0x10e48] with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x11cfc calls queue_pop [0x10f30] with a0=ret(kmem_alloc), a1=sp-240, a2=?, a3=?.
  The `jal` at 0x11d08 calls queue_find [0x10f94] with a0=ret(kmem_alloc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x11d58 calls sprintf with a0=sp-184, a1=sym(.rodata)+7152, a2=?, a3=?.
  The `jal` at 0x11d68 calls hwgraph_traverse with a0=a1 at entry (arg1), a1=sp-184, a2=sp-168, a3=?.
  The `jal` at 0x11d78 calls nodevertex_to_cnodeid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11d90 calls cnodetocpu with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x11de4 calls vector_length with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11df0 calls vector_length with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11e20 calls router_link_get with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x11e30 calls vector_concat with a0=ret(router_link_get), a1=?, a2=?, a3=?.
  The `jal` at 0x11e40 calls queue_find [0x10f94] with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x11e50 calls vector_length with a0=[ret(queue_find)+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x11e5c calls vector_length with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11e78 calls vector_length with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11e9c calls queue_push [0x10e5c] with a0=ret(kmem_alloc), a1=sp-160, a2=?, a3=?.
  The `beq` branch at 0x11c6c targets 0x11cc4, is taken when v0(=ret(queue_empty)) == 0, and falls through when v0(=ret(queue_empty)) != 0.
  The `beq` branch at 0x11cdc targets 0x11cf8 and is always taken.
  The `bne` branch at 0x11cf4 targets 0x11eac, is taken when v0(=ret(queue_empty)) != 0, and falls through when v0(=ret(queue_empty)) == 0.
  The `bne` branch at 0x11d10 targets 0x11cec, is taken when v0(=ret(queue_find)) != 0, and falls through when v0(=ret(queue_find)) == 0.
  The `beq` branch at 0x11d18 targets 0x11d48 and is always taken.
  The `beq` branch at 0x11d3c targets 0x11ce4, is taken when s0(?) >= 0x8 (signed), and falls through when s0(?) < 0x8 (signed).
  The `bne` branch at 0x11d70 targets 0x11d34, is taken when v0(=ret(hwgraph_traverse)) != 0, and falls through when v0(=ret(hwgraph_traverse)) == 0.
  The `beq` branch at 0x11d80 targets 0x11e18, is taken when v0(=ret(nodevertex_to_cnodeid)) == s5(=-0x1), and falls through when v0(=ret(nodevertex_to_cnodeid)) != s5(=-0x1).
  The `beq` branch at 0x11d98 targets 0x11d34, is taken when v0(=ret(cnodetocpu)) == s5(=-0x1), and falls through when v0(=ret(cnodetocpu)) != s5(=-0x1).
  The `beq` branch at 0x11dbc targets 0x11e78, is taken when t8(=entry(0x85f8)) == 0, and falls through when t8(=entry(0x85f8)) != 0.
  The `beq` branch at 0x11dc4 targets 0x11d20, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x11ddc targets 0x11d34, is taken when t8(=entry(0x85f8)) < t9(=entry(0x85f8)) (signed), and falls through when t8(=entry(0x85f8)) >= t9(=entry(0x85f8)) (signed).
  The `bne` branch at 0x11dfc targets 0x11d34, is taken when v0(=ret(vector_length)) < s6(=ret(vector_length)) (signed), and falls through when v0(=ret(vector_length)) >= s6(=ret(vector_length)) (signed).
  The `beq` branch at 0x11e10 targets 0x11d34 and is always taken.
  The `beq` branch at 0x11e28 targets 0x11d34, is taken when v0(=ret(router_link_get)) == 0, and falls through when v0(=ret(router_link_get)) != 0.
  The `beq` branch at 0x11e48 targets 0x11e98, is taken when v0(=ret(queue_find)) == 0, and falls through when v0(=ret(queue_find)) != 0.
  The `beq` branch at 0x11e68 targets 0x11d34, is taken when v0(=ret(vector_length)) >= s7(=ret(vector_length)) (signed), and falls through when v0(=ret(vector_length)) < s7(=ret(vector_length)) (signed).
  The `beq` branch at 0x11e70 targets 0x11d34 and is always taken.
  The `bne` branch at 0x11e80 targets 0x11dc4, is taken when v0(=ret(vector_length)) != 0, and falls through when v0(=ret(vector_length)) == 0.
  The `beq` branch at 0x11e90 targets 0x11c78 and is always taken.
  The `beq` branch at 0x11ea4 targets 0x11d38 and is always taken.
  The `beq` branch at 0x11eac targets 0x11c74, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x11ebc targets 0x11c78 and is always taken.
  The return at 0x11cbc has v0 = ?.
- `guardian_nodepda_update` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11ec4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11ec4-0x11f98 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x11ee0 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x11eec loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x11ef8 loads 8 bytes from ?.
  The `ld` at 0x11f14 loads 8 bytes from table(0x85f0) +0x0.
  The `sd` at 0x11f20 stores 8 bytes to entry(0x85f0) +0x0.
  The `sd` at 0x11f3c stores 8 bytes to ret(kmem_zalloc_node) +0x20.
  The `lw` at 0x11f40 loads 4 bytes from table(0x85f8) +0x0.
  The `sd` at 0x11f48 stores 8 bytes to table(0x85f0) +0x0.
  The `sw` at 0x11f50 stores 4 bytes to table(0x85f8) +0x0.
  The `sd` at 0x11f54 stores 8 bytes to ret(kmem_zalloc_node) +0x10.
  The `sw` at 0x11f58 stores 4 bytes to ret(kmem_zalloc_node) +0x0.
  The `lbu` at 0x11f5c loads 1 byte from a2 (arg2 at entry) +0xa.
  The `sb` at 0x11f60 stores 1 byte to ret(kmem_zalloc_node) +0xa.
  The `lh` at 0x11f64 loads 2 bytes from a2 (arg2 at entry) +0xe.
  The `sh` at 0x11f68 stores 2 bytes to ret(kmem_zalloc_node) +0x8.
  The `lbu` at 0x11f6c loads 1 byte from a2 (arg2 at entry) +0x5.
  The `sb` at 0x11f78 stores 1 byte to ret(kmem_zalloc_node) +0xb.
  The `jal` at 0x11ed8 calls nodevertex_to_cnodeid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11f10 calls kmem_zalloc_node with a0=0x28, a1=0x101, a2=?, a3=?.
  The `jal` at 0x11f88 calls assfail with a0=sym(.rodata)+7152, a1=sym(.rodata)+7152, a2=0x3e3, a3=?.
  The `beq` branch at 0x11f1c targets 0x11f7c, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `beq` branch at 0x11f90 targets 0x11f24 and is always taken.
  The return at 0x11f74 has v0 = ret(kmem_zalloc_node).
- `router_guardian_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x11f98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x11f98-0x12068 (208 bytes).
  It occupies 208 bytes.
  The `lbu` at 0x11fa0 loads 1 byte from a1 (arg1 at entry) +0x9.
  The `lbu` at 0x11ffc loads 1 byte from a1 (arg1 at entry) +0x17.
  The `jal` at 0x11fc0 calls board_to_path with a0=a1 at entry (arg1), a1=sp-88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11fdc calls board_to_path with a0=a1 at entry (arg1), a1=sp-88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11fec calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-88, a2=sp-32, a3=?.
  The `jal` at 0x12010 calls router_guardian_search [0x11ba0] with a0=sp-96, a1=?, a2=[a1+23]:1, a3=?.
  The `jal` at 0x1202c calls guardian_nodepda_update [0x11ec4] with a0=ret(router_guardian_search), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x12044 calls cmn_err with a0=0x4, a1=sym(.rodata)+7152, a2=sp-88, a3=?.
  The `jal` at 0x12058 calls cmn_err with a0=0x0, a1=sym(.rodata)+7152, a2=[a1+23]:1, a3=?.
  The `beq` branch at 0x11fb4 targets 0x11fd8, is taken when (at(=[a1+9]:1) & 0x4) == 0, and falls through when (at(=[a1+9]:1) & 0x4) != 0.
  The `bne` branch at 0x11ff4 targets 0x1203c, is taken when v0(=ret(hwgraph_traverse)) != 0, and falls through when v0(=ret(hwgraph_traverse)) == 0.
  The `bne` branch at 0x12004 targets 0x12054, is taken when a2(=[a1+23]:1) != v0(=0x1), and falls through when a2(=[a1+23]:1) == v0(=0x1).
  The `beq` branch at 0x1201c targets 0x11fc8, is taken when v0(=ret(router_guardian_search)) == v1(=-0x1), and falls through when v0(=ret(router_guardian_search)) != v1(=-0x1).
  The `beq` branch at 0x12034 targets 0x11fcc and is always taken.
  The `beq` branch at 0x1204c targets 0x11fcc and is always taken.
  The `beq` branch at 0x12060 targets 0x11fcc and is always taken.
  The return at 0x11fd0 has v0 = one of ?, ret(guardian_nodepda_update), ret(cmn_err).
- `router_guardians_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12068 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12068-0x121d0 (360 bytes).
  It occupies 360 bytes.
  The `lh` at 0x120e0 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x120ec, `ld` at 0x12100.
  The `lw` at 0x1210c loads 4 bytes from ?.
  The `lw` at 0x12160 loads 4 bytes from ret(find_lboard_class) +0x0.
  The `lh` at 0x121cc loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0x12124 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x12144 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x12158 calls router_guardian_set [0x11f98] with a0=a0 at entry (arg0), a1=ret(find_lboard_class), a2=?, a3=?.
  The `jal` at 0x12184 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x120ac targets 0x12194, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x120b8 targets 0x121c0 and is always taken.
  The `beq` branch at 0x120d8 targets 0x12194, is taken when s4(?) >= v0(=[sym(maxnodes)]) (signed), and falls through when s4(?) < v0(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x120f8 targets 0x12184, is taken when s6(=0xc000) == t8(?), and falls through when s6(=0xc000) != t8(?).
  The `beq` branch at 0x12118 targets 0x12124, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1212c targets 0x120c0, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0x12134 targets 0x12158 and is always taken.
  The `beq` branch at 0x1214c targets 0x120c0, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `bne` branch at 0x12174 targets 0x1213c, is taken when a1(=[ret(find_lboard_class)]) != 0, and falls through when a1(=[ret(find_lboard_class)]) == 0.
  The `beq` branch at 0x1217c targets 0x12144 and is always taken.
  The `beq` branch at 0x1218c targets 0x12124 and is always taken.
  The `beq` branch at 0x121c8 targets 0x120e4 and is always taken.
  The return at 0x121b8 has v0 = ?.
- `router_lock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x121d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x121d0-0x123b8 (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0x121fc loads 8 bytes from abs 0xffffffffffffc7c8.
  The `ld` at 0x1221c loads 8 bytes from (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x8.
  The `ld` at 0x12220 loads 8 bytes from [(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8 +0x7c8.
  The `ld` at 0x1227c loads 8 bytes from ?.
  The `sd` at 0x12280 stores 8 bytes to ?.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x122a0, `ld` at 0x12328.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001604200, including `ld` at 0x122a4, `ld` at 0x1232c.
  The `ld` at 0x123a8 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `sd` at 0x123b4 stores 8 bytes to [table(sym(pdaindr))+8]:8 +0x7c8.
  The `jal` at 0x121ec calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x121f4 calls getcpuid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12230 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x12260 calls vector_write with a0=a0 at entry (arg0), a1=0x0, a2=0x118, a3=0x0, a5=(ret(getcpuid) << 0x4).
  The `jal` at 0x12290 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x122e4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x122fc calls vector_read with a0=a0 at entry (arg0), a1=0x0, a2=0x518, a3=sp-80.
  The `jal` at 0x12378 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x12380 calls us_delay with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `beq` branch at 0x12208 targets 0x12390, is taken when a2(=0xf) == at(=[-0x3838]:8), and falls through when a2(=0xf) != at(=[-0x3838]:8).
  The `bne` branch at 0x12224 targets 0x12254, is taken when v0(=[[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8+1992]:8) != s1(=a0), and falls through when v0(=[[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8+1992]:8) == s1(=a0).
  The `bltz` branch at 0x12274 targets 0x12284, is taken when v0(=ret(vector_write)) < 0 (signed), and falls through when v0(=ret(vector_write)) >= 0 (signed).
  The `bne` branch at 0x12284 targets 0x12230, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bltz` branch at 0x12308 targets 0x12230, is taken when v0(=ret(vector_read)) < 0 (signed), and falls through when v0(=ret(vector_read)) >= 0 (signed).
  The `beq` branch at 0x12314 targets 0x12398, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `bne` branch at 0x12368 targets 0x12378, is taken when a6(?) < a7(?) (unsigned), and falls through when a6(?) >= a7(?) (unsigned).
  The `beq` branch at 0x12370 targets 0x12230 and is always taken.
  The `beq` branch at 0x12388 targets 0x122e4 and is always taken.
  The `beq` branch at 0x12390 targets 0x1228c and is always taken.
  The `beq` branch at 0x123b0 targets 0x12230 and is always taken.
  The return at 0x1224c has v0 = ?.
- `router_unlock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x123b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x123b8-0x1242c (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x12404 loads 8 bytes from (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x8.
  The `sd` at 0x1240c stores 8 bytes to [(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8 +0x7c8.
  The `jal` at 0x123c4 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x123dc calls vector_write with a0=a0 at entry (arg0), a1=0x0, a2=0x118, a3=0x0.
  The `jal` at 0x123f0 calls getcpuid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12410 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x123e8 targets 0x12410, is taken when v0(=ret(vector_write)) < 0 (signed), and falls through when v0(=ret(vector_write)) >= 0 (signed).
  The return at 0x12424 has v0 = ret(vector_write).
- `set_md_outgoing_rq_queue_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1242c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1242c-0x12578 (332 bytes).
  It occupies 332 bytes.
  The `lh` at 0x12458 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x1247c loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe03ffb0.
  The `sd` at 0x124c4 stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe03ffb0.
  The `ld` at 0x1252c loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lw` at 0x12530 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x748.
  The `jal` at 0x12500 calls cnode_slice_to_cpuid with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1255c calls cmn_err with a0=0x4, a1=sym(.rodata)+7152, a2=[sym(md_rq_depth)], a3=a3 at entry (arg3).
  The `beq` branch at 0x12454 targets 0x124c8, is taken when a2(=[sym(md_rq_depth)]) == at(=0x5), and falls through when a2(=[sym(md_rq_depth)]) != at(=0x5).
  The `beq` branch at 0x1245c targets 0x12558, is taken when a1(=[sym(.sdata)+164]) == 0, and falls through when a1(=[sym(.sdata)+164]) != 0.
  The `bne` branch at 0x124d4 targets 0x12550, is taken when a1(=[sym(maxcpus)]) < 0x81 (signed), and falls through when a1(=[sym(maxcpus)]) >= 0x81 (signed).
  The `bne` branch at 0x124e0 targets 0x124f0, is taken when a1(=[sym(maxcpus)]) < 0x201 (signed), and falls through when a1(=[sym(maxcpus)]) >= 0x201 (signed).
  The `beq` branch at 0x124e8 targets 0x12464 and is always taken.
  The `beq` branch at 0x124f0 targets 0x124fc and is always taken.
  The `beq` branch at 0x124f8 targets 0x12548, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x12524 targets 0x124f8, is taken when a3(?) == a6(=-0x1), and falls through when a3(?) != a6(=-0x1).
  The `bne` branch at 0x12538 targets 0x124f8, is taken when a4(=[[table(sym(pdaindr))+8]:8+1864]) < 0xfb (signed), and falls through when a4(=[[table(sym(pdaindr))+8]:8+1864]) >= 0xfb (signed).
  The `beq` branch at 0x12540 targets 0x12464 and is always taken.
  The `beq` branch at 0x12548 targets 0x12464 and is always taken.
  The `beq` branch at 0x12550 targets 0x12468 and is always taken.
  The `beq` branch at 0x12570 targets 0x12464 and is always taken.
  The return at 0x124c0 has v0 = one of ?, 0x400.
- `snnet_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12578 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12578-0x125c4 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x12590 calls set_md_outgoing_rq_queue_size [0x1242c] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x12584 targets 0x125b4, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `bne` branch at 0x125ac targets 0x12590, is taken when s0(?) < v0(=[sym(numnodes)]) (signed), and falls through when s0(?) >= v0(=[sym(numnodes)]) (signed).
  The return at 0x125bc has v0 = ?.
- `kl_perr_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x125c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x125c4-0x125d0 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x125cc stores 4 bytes to sym(.bss) +0x5088.
  The return at 0x125c8 has v0 = ?.
- `kl_perr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x125d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x125d0-0x127a0 (464 bytes).
  It occupies 464 bytes.
  The `sb` at 0x12660 stores 1 byte to table(sym(err_buf)) +0x4004.
  6 such `sb` accesses store 1 byte to ?, including `sb` at 0x12678, `sb` at 0x1268c, `sb` at 0x126a0.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x5088, including `lw` at 0x1271c, `lw` at 0x1275c.
  The `sw` at 0x12724 stores 4 bytes to sym(.bss) +0x5088.
  The `jal` at 0x12610 calls vsprintf with a0=sym(err_buf), a1=a1 at entry (arg1), a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0x126ac calls strlen with a0=sym(err_buf), a1=-0x11, a2=?, a3=?, a5=0x20.
  The `jal` at 0x126e0 calls strncpy with a0=?, a1=sym(err_buf), a2=?, a3=?.
  The `jal` at 0x12714 calls bcopy with a0=?, a1=([sym(err_buf)] + sym(err_buf))+4, a2=?, a3=?, a4=[sym(err_buf)].
  The `jal` at 0x1274c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x12634 targets 0x12640, is taken when (s3(=a0) & 0x10) == 0, and falls through when (s3(=a0) & 0x10) != 0.
  The `beq` branch at 0x12658 targets 0x126ac, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `blez` branch at 0x12664 targets 0x126ac, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `beq` branch at 0x12680 targets 0x126ac, is taken when a2(?) >= a4(?) (signed), and falls through when a2(?) < a4(?) (signed).
  The `beq` branch at 0x12694 targets 0x126ac, is taken when a2(?) >= a4(?) (signed), and falls through when a2(?) < a4(?) (signed).
  The `bne` branch at 0x126a4 targets 0x12670, is taken when a2(?) < a4(?) (signed), and falls through when a2(?) >= a4(?) (signed).
  The `bne` branch at 0x126c8 targets 0x126d4, is taken when at(?) < 0x4104 (signed), and falls through when at(?) >= 0x4104 (signed).
  The `beq` branch at 0x126f0 targets 0x1277c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bltz` branch at 0x126f8 targets 0x12780, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x12700 targets 0x12744 and is always taken.
  The `bne` branch at 0x1273c targets 0x1277c, is taken when s3(?) < s0(?) (signed), and falls through when s3(?) >= s0(?) (signed).
  The `beq` branch at 0x12758 targets 0x12734, is taken when s2(=(ret(strlen) << 0x0)) == 0, and falls through when s2(=(ret(strlen) << 0x0)) != 0.
  The `bne` branch at 0x12768 targets 0x12708, is taken when t8(=((ret(strlen) << 0x0) + [sym(err_buf)])) < 0x4000 (signed), and falls through when t8(=((ret(strlen) << 0x0) + [sym(err_buf)])) >= 0x4000 (signed).
  The `beq` branch at 0x12774 targets 0x12708 and is always taken.
  The return at 0x12798 has v0 = ?.
- `kl_perr_dumpbuf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x127a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x127a0-0x12888 (232 bytes).
  It occupies 232 bytes.
  2 such `lbu` accesses load 1 byte from sym(.bss) +0x508c, including `lbu` at 0x127bc, `lbu` at 0x127dc.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x5088, including `lw` at 0x127e0, `lw` at 0x12830.
  3 such `lbu` accesses load 1 byte from sym(.bss) +0x5088, including `lbu` at 0x127f4, `lbu` at 0x12800, `lbu` at 0x1280c.
  2 such `sb` accesses store 1 byte to sym(.bss) +0x5088, including `sb` at 0x12818, `sb` at 0x1282c.
  The `sw` at 0x12878 stores 4 bytes to sym(.bss) +0x5088.
  The `jalr` at 0x1281c calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(err_buf), a2=?, a3=?.
  The `jalr` at 0x12850 calls (unknown callee) with a0=sym(err_buf), a1=sym(err_buf), a2=?, a3=?.
  The `beq` branch at 0x127d8 targets 0x12860, is taken when at(=[sym(err_buf+4)]:1) == 0, and falls through when at(=[sym(err_buf+4)]:1) != 0.
  The `bgtz` branch at 0x127e4 targets 0x12848, is taken when v0(=[sym(err_buf)]) > 0 (signed), and falls through when v0(=[sym(err_buf)]) <= 0 (signed).
  The `beq` branch at 0x127ec targets 0x12864 and is always taken.
  The `beq` branch at 0x127f8 targets 0x12814, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x12804 targets 0x127f4, is taken when s1(=0xa) != v1(=[sym(err_buf)]:1), and falls through when s1(=0xa) == v1(=[sym(err_buf)]:1).
  The `beq` branch at 0x12814 targets 0x12850, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0x12828 targets 0x12860, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x12840 targets 0x12860, is taken when s0(=sym(err_buf)) >= a0(=([sym(err_buf)] + sym(err_buf))+4) (unsigned), and falls through when s0(=sym(err_buf)) < a0(=([sym(err_buf)] + sym(err_buf))+4) (unsigned).
  The `beq` branch at 0x12848 targets 0x127f8 and is always taken.
  The `beq` branch at 0x12858 targets 0x12824 and is always taken.
  The return at 0x12880 has v0 = one of [sym(err_buf)], ?.
- `save_cache_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12888 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12888-0x12a28 (416 bytes).
  It occupies 416 bytes.
  The `ld` at 0x128b8 loads 8 bytes from table(0x9000000034000000) +0x0.
  The `ld` at 0x128dc loads 8 bytes from (table(0x9600000000000000) | 0x2000) +0x48.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x128e8, `lw` at 0x12940, `lw` at 0x129a4.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x12928, `lbu` at 0x12964, `lbu` at 0x129b4.
  The `ld` at 0x129c4 loads 8 bytes from abs 0x9200000001000020.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x129f4, `sd` at 0x129f8, `sd` at 0x12a08.
  The `sw` at 0x129fc stores 4 bytes to ?.
  The `ld` at 0x12a00 loads 8 bytes from abs 0x9200000001030100.
  The `sb` at 0x12a04 stores 1 byte to ?.
  The `jal` at 0x12898 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x12a18 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?, a4=0xffffffffff, a5=table(0x9600000000000000), a6=0x9600000000000000, a7=(table(0x9600000000000000) | 0x2000).
  The `beq` branch at 0x128d4 targets 0x12a18, is taken when at(?) == v0(=0xc000), and falls through when at(?) != v0(=0xc000).
  The `beq` branch at 0x128f4 targets 0x12900, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x12900 targets 0x1295c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x12914 targets 0x12928 and is always taken.
  The `beq` branch at 0x12920 targets 0x1295c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x12938 targets 0x1295c, is taken when t3(=0x10) == t8(?), and falls through when t3(=0x10) != t8(?).
  The `bne` branch at 0x1294c targets 0x1291c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x12954 targets 0x12920 and is always taken.
  The `beq` branch at 0x1295c targets 0x12a10, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `blez` branch at 0x12968 targets 0x12a0c, is taken when t3(?) <= 0 (signed), and falls through when t3(?) > 0 (signed).
  The `beq` branch at 0x12990 targets 0x1299c and is always taken.
  The `beq` branch at 0x12998 targets 0x12a0c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x129bc targets 0x12998, is taken when t8(=0x1) != ra(?), and falls through when t8(=0x1) == ra(?).
  The `bne` branch at 0x129cc targets 0x12998, is taken when ra(?) != at(=[0x9200000001000020]:8), and falls through when ra(?) == at(=[0x9200000001000020]:8).
  The `beq` branch at 0x12a20 targets 0x12900 and is always taken.
  The return at 0x12a10 has v0 = ?.
- `kl_save_hw_state_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12a28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12a28-0x12c50 (552 bytes).
  It occupies 552 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x12a64, `ld` at 0x12a88.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x12a94, `lw` at 0x12b00, `lw` at 0x12b1c.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x12ad8, `lbu` at 0x12af0, `lbu` at 0x12b3c.
  The `jal` at 0x12bdc calls save_err_io_comp with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80.
  The `jal` at 0x12bf4 calls save_err_node_comp with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80.
  The `jal` at 0x12c04 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x12c18 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?, a4=0xffffffffff.
  The `jal` at 0x12c2c calls save_err_router_comp with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80.
  The `jal` at 0x12c40 calls save_err_xbow_comp with a0=?, a1=?, a2=a1 at entry (arg1), a3=?, a5=0x20, a6=0x70, a7=0x80.
  The `beq` branch at 0x12a48 targets 0x12c04, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x12a80 targets 0x12c18, is taken when v0(?) == v1(=0xc000), and falls through when v0(?) != v1(=0xc000).
  The `beq` branch at 0x12a9c targets 0x12aa8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x12aac targets 0x12bb4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x12ac0 targets 0x12ad8 and is always taken.
  The `beq` branch at 0x12ad0 targets 0x12bb4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x12ae8 targets 0x12b1c, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x12af8 targets 0x12b3c, is taken when (t9(?) & 0x4) == 0, and falls through when (t9(?) & 0x4) != 0.
  The `bne` branch at 0x12b0c targets 0x12ac8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x12b14 targets 0x12acc and is always taken.
  The `beq` branch at 0x12b24 targets 0x12ad0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x12b34 targets 0x12ad0 and is always taken.
  The `beq` branch at 0x12b54 targets 0x12bec, is taken when a4(?) == a1(=0x10), and falls through when a4(?) != a1(=0x10).
  The `beq` branch at 0x12b5c targets 0x12bd8, is taken when a4(?) == a5(=0x20), and falls through when a4(?) != a5(=0x20).
  The `beq` branch at 0x12b64 targets 0x12bd8, is taken when a4(?) == a6(=0x70), and falls through when a4(?) != a6(=0x70).
  The `beq` branch at 0x12b6c targets 0x12bd8, is taken when a4(?) == a7(=0x80), and falls through when a4(?) != a7(=0x80).
  The `beq` branch at 0x12b74 targets 0x12c28, is taken when a4(?) == t0(=0x30), and falls through when a4(?) != t0(=0x30).
  The `beq` branch at 0x12b7c targets 0x12c3c, is taken when a4(?) == t1(=0x40), and falls through when a4(?) != t1(=0x40).
  The `beq` branch at 0x12b9c targets 0x12ad0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x12bac targets 0x12ad0 and is always taken.
  The `beq` branch at 0x12be4 targets 0x12b88 and is always taken.
  The `beq` branch at 0x12bfc targets 0x12b88 and is always taken.
  The `beq` branch at 0x12c10 targets 0x12a50 and is always taken.
  The `beq` branch at 0x12c20 targets 0x12aa8 and is always taken.
  The `beq` branch at 0x12c34 targets 0x12b88 and is always taken.
  The `beq` branch at 0x12c48 targets 0x12b88 and is always taken.
  The return at 0x12bcc has v0 = ?.
  The instructions from 0x12bd4 to 0x12bd4 are not reached by any path from the entry, and their branches are not listed.
- `kl_save_hw_state_all` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12c50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12c50-0x12cb8 (104 bytes).
  It occupies 104 bytes.
  The `lh` at 0x12c88 loads 2 bytes from ?.
  The `jal` at 0x12c84 calls kl_save_hw_state_node with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `blez` branch at 0x12c6c targets 0x12ca0, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `bne` branch at 0x12c98 targets 0x12c7c, is taken when s0(?) < a1(=[sym(numnodes)]) (signed), and falls through when s0(?) >= a1(=[sym(numnodes)]) (signed).
  The return at 0x12cb0 has v0 = one of ?, ret(kl_save_hw_state_node).
- `restore_cpu_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12cb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12cb8-0x12d10 (88 bytes).
  It occupies 88 bytes.
  The `lbu` at 0x12cb8 loads 1 byte from a0 (arg0 at entry) +0x38.
  The `ld` at 0x12ccc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x12cd0 loads 8 bytes from abs 0x9200000001030100.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x39, including `sb` at 0x12ce4, `sb` at 0x12d0c.
  The `ld` at 0x12ce8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x12cec loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x12cf0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sd` at 0x12cf4 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x12cf8 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0x12cfc stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `beq` branch at 0x12cc0 targets 0x12d00, is taken when at(=[a0+56]:1) == 0, and falls through when at(=[a0+56]:1) != 0.
  The `beq` branch at 0x12cdc targets 0x12d08, is taken when v0(?) >= v1(=0x55d4a80) (unsigned), and falls through when v0(?) < v1(=0x55d4a80) (unsigned).
  The return at 0x12d00 has v0 = ?.
  The return at 0x12d08 has v0 = ?.
- `restore_hub_err` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12d10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12d10-0x12f0c (508 bytes).
  It occupies 508 bytes.
  The `ld` at 0x12d10 loads 8 bytes from a0 (arg0 at entry) +0x3b0.
  The `ld` at 0x12d24 loads 8 bytes from a0 (arg0 at entry) +0x3a0.
  The `ld` at 0x12d30 loads 8 bytes from a0 (arg0 at entry) +0x3c0.
  The `ld` at 0x12d3c loads 8 bytes from a0 (arg0 at entry) +0x3d0.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x12d50, `ld` at 0x12d7c, `ld` at 0x12d9c.
  7 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x12db8, `ld` at 0x12df4, `ld` at 0x12e28.
  6 such `sd` accesses store 8 bytes to ?, including `sd` at 0x12dcc, `sd` at 0x12dd8, `sd` at 0x12e08.
  The `ld` at 0x12e4c loads 8 bytes from a0 (arg0 at entry) +0x138.
  The `ld` at 0x12e60 loads 8 bytes from a0 (arg0 at entry) +0x130.
  The `sd` at 0x12e7c stores 8 bytes to a0 (arg0 at entry) +0x3b0.
  The `ld` at 0x12e80 loads 8 bytes from a0 (arg0 at entry) +0x128.
  The `ld` at 0x12e8c loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `sd` at 0x12ea8 stores 8 bytes to a0 (arg0 at entry) +0x3a0.
  The `ld` at 0x12eac loads 8 bytes from a0 (arg0 at entry) +0x148.
  The `ld` at 0x12eb8 loads 8 bytes from a0 (arg0 at entry) +0x140.
  The `sd` at 0x12ed4 stores 8 bytes to a0 (arg0 at entry) +0x3c0.
  The `ld` at 0x12ed8 loads 8 bytes from a0 (arg0 at entry) +0x158.
  The `ld` at 0x12ee4 loads 8 bytes from a0 (arg0 at entry) +0x150.
  The `sd` at 0x12efc stores 8 bytes to a0 (arg0 at entry) +0x3d0.
  The `ld` at 0x12f00 loads 8 bytes from a0 (arg0 at entry) +0x160.
  The `sd` at 0x12f08 stores 8 bytes to a0 (arg0 at entry) +0x3d8.
  The `beq` branch at 0x12d18 targets 0x12e4c, is taken when at(=[a0+944]:8) == 0, and falls through when at(=[a0+944]:8) != 0.
  The `beq` branch at 0x12d28 targets 0x12e80, is taken when v0(=[a0+928]:8) == 0, and falls through when v0(=[a0+928]:8) != 0.
  The `beq` branch at 0x12d34 targets 0x12eac, is taken when v1(=[a0+960]:8) == 0, and falls through when v1(=[a0+960]:8) != 0.
  The `beq` branch at 0x12d40 targets 0x12ed8, is taken when a1(=[a0+976]:8) == 0, and falls through when a1(=[a0+976]:8) != 0.
  The `beq` branch at 0x12d58 targets 0x12e18, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x12d60 targets 0x12d4c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x12d68 targets 0x12d74 and is always taken.
  The `beq` branch at 0x12d70 targets 0x12ddc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x12d88 targets 0x12de4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x12d90 targets 0x12ddc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x12da0 targets 0x12d70, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x12dac targets 0x12d70, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x12dc4 targets 0x12d70, is taken when a5(?) >= a7(=0x55d4a80) (unsigned), and falls through when a5(?) < a7(=0x55d4a80) (unsigned).
  The `beq` branch at 0x12dd4 targets 0x12d70 and is always taken.
  The `beq` branch at 0x12de8 targets 0x12d90, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x12e00 targets 0x12d90, is taken when t3(?) >= a7(=0x55d4a80) (unsigned), and falls through when t3(?) < a7(=0x55d4a80) (unsigned).
  The `beq` branch at 0x12e10 targets 0x12d90 and is always taken.
  The `beq` branch at 0x12e1c targets 0x12d60, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x12e34 targets 0x12d60, is taken when at(?) >= a7(=0x55d4a80) (unsigned), and falls through when at(?) < a7(=0x55d4a80) (unsigned).
  The `beq` branch at 0x12e44 targets 0x12d60 and is always taken.
  The `beq` branch at 0x12e58 targets 0x12d24, is taken when a2(=[a0+312]:8) == 0, and falls through when a2(=[a0+312]:8) != 0.
  The `beq` branch at 0x12e70 targets 0x12d24, is taken when t0(?) >= a7(=0x55d4a80) (unsigned), and falls through when t0(?) < a7(=0x55d4a80) (unsigned).
  The `beq` branch at 0x12e78 targets 0x12d24 and is always taken.
  The `beq` branch at 0x12e84 targets 0x12d30, is taken when a2(=[a0+296]:8) == 0, and falls through when a2(=[a0+296]:8) != 0.
  The `beq` branch at 0x12e9c targets 0x12d30, is taken when t2(?) >= a7(=0x55d4a80) (unsigned), and falls through when t2(?) < a7(=0x55d4a80) (unsigned).
  The `beq` branch at 0x12ea4 targets 0x12d30 and is always taken.
  The `beq` branch at 0x12eb0 targets 0x12d3c, is taken when a2(=[a0+328]:8) == 0, and falls through when a2(=[a0+328]:8) != 0.
  The `beq` branch at 0x12ec8 targets 0x12d3c, is taken when t8(?) >= a7(=0x55d4a80) (unsigned), and falls through when t8(?) < a7(=0x55d4a80) (unsigned).
  The `beq` branch at 0x12ed0 targets 0x12d3c and is always taken.
  The `beq` branch at 0x12edc targets 0x12d44, is taken when a2(=[a0+344]:8) == 0, and falls through when a2(=[a0+344]:8) != 0.
  The `beq` branch at 0x12ef4 targets 0x12f00, is taken when at(?) >= a7(=0x55d4a80) (unsigned), and falls through when at(?) < a7(=0x55d4a80) (unsigned).
  The `beq` branch at 0x12f04 targets 0x12d44 and is always taken.
  The return at 0x12ddc has v0 = ?.
- `clear_hub_pi_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12f0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12f0c-0x12f64 (88 bytes).
  It occupies 88 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x12f24, `ld` at 0x12f34.
  The `ld` at 0x12f38 loads 8 bytes from abs 0x9200000001030100.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x12f4c, `sd` at 0x12f50.
  The `beq` branch at 0x12f2c targets 0x12f54, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x12f44 targets 0x12f54, is taken when a6(=0x55d4a80) >= a7(?) (unsigned), and falls through when a6(=0x55d4a80) < a7(?) (unsigned).
  The `bne` branch at 0x12f54 targets 0x12f20, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0x12f5c has v0 = ?.
- `clear_hub_md_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x12f64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x12f64-0x1302c (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x12f68 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x12f84 loads 8 bytes from a0 (arg0 at entry) +0x10.
  4 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x12f88, `ld` at 0x12fb4, `ld` at 0x12fe0.
  The `sd` at 0x12f9c stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `ld` at 0x12fa0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x12fb0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x12fc8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `ld` at 0x12fcc loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x12fdc loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sd` at 0x12ff4 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `ld` at 0x12ff8 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ld` at 0x13008 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `sd` at 0x13020 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `beq` branch at 0x12f7c targets 0x12fa0, is taken when at(=[a0+24]:8) == 0, and falls through when at(=[a0+24]:8) != 0.
  The `beq` branch at 0x12f94 targets 0x12fa0, is taken when v0(=0x55d4a80) >= v1(?) (unsigned), and falls through when v0(=0x55d4a80) < v1(?) (unsigned).
  The `beq` branch at 0x12fa8 targets 0x12fcc, is taken when v1(=[a0+8]:8) == 0, and falls through when v1(=[a0+8]:8) != 0.
  The `beq` branch at 0x12fc0 targets 0x12fcc, is taken when a1(=0x55d4a80) >= a4(?) (unsigned), and falls through when a1(=0x55d4a80) < a4(?) (unsigned).
  The `beq` branch at 0x12fd4 targets 0x12ff8, is taken when a3(=[a0+40]:8) == 0, and falls through when a3(=[a0+40]:8) != 0.
  The `beq` branch at 0x12fec targets 0x12ff8, is taken when a4(=0x55d4a80) >= a6(?) (unsigned), and falls through when a4(=0x55d4a80) < a6(?) (unsigned).
  The `beq` branch at 0x13000 targets 0x13024, is taken when a5(=[a0+56]:8) == 0, and falls through when a5(=[a0+56]:8) != 0.
  The `beq` branch at 0x13018 targets 0x13024, is taken when a6(=0x55d4a80) >= a7(?) (unsigned), and falls through when a6(=0x55d4a80) < a7(?) (unsigned).
  The return at 0x13024 has v0 = ?.
- `save_err_node_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1302c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1302c-0x13180 (340 bytes).
  It occupies 340 bytes.
  3 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x17, including `lbu` at 0x1304c, `lbu` at 0x130bc, `lbu` at 0x1317c.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lw` at 0x13098, `lw` at 0x13154.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x130a8, `lw` at 0x130d4, `lw` at 0x13138.
  The `lbu` at 0x130e4 loads 1 byte from ?.
  The `jal` at 0x130b4 calls restore_cpu_err with a0=?, a1=?, a2=?, a3=?, a5=[a1+23]:1.
  The `jal` at 0x1314c calls save_hub_err with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?, a5=[a1+23]:1.
  The `jal` at 0x13170 calls restore_hub_err with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x13060 targets 0x13108, is taken when a5(=[a1+23]:1) <= 0 (signed), and falls through when a5(=[a1+23]:1) > 0 (signed).
  The `beq` branch at 0x13090 targets 0x130cc and is always taken.
  The `beq` branch at 0x130a0 targets 0x130f8, is taken when (t8(=[a2+12]) & 0x4) == 0, and falls through when (t8(=[a2+12]) & 0x4) != 0.
  The `beq` branch at 0x130c8 targets 0x13108, is taken when s0(?) >= a5(=[a1+23]:1) (signed), and falls through when s0(?) < a5(=[a1+23]:1) (signed).
  The `beq` branch at 0x130e8 targets 0x13098, is taken when a4(?) == s6(=0x1), and falls through when a4(?) != s6(=0x1).
  The `beq` branch at 0x130f0 targets 0x13138, is taken when a4(?) == s7(=0x2), and falls through when a4(?) != s7(=0x2).
  The `bne` branch at 0x13100 targets 0x130d0, is taken when s0(?) < a5(=[a1+23]:1) (signed), and falls through when s0(?) >= a5(=[a1+23]:1) (signed).
  The `beq` branch at 0x1315c targets 0x130bc, is taken when (a2(=[a2+12]) & 0x4) == 0, and falls through when (a2(=[a2+12]) & 0x4) != 0.
  The `beq` branch at 0x13178 targets 0x130c0 and is always taken.
  The return at 0x13130 has v0 = ?.
- `save_err_io_comp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x13180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x13180-0x13274 (244 bytes).
  It occupies 244 bytes.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x17, including `lbu` at 0x13194, `lbu` at 0x13258.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x131e0, `lw` at 0x13230.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x131f0, `lbu` at 0x13234.
  The `jal` at 0x13250 calls save_bridge_err with a0=a0 at entry (arg0), a1=?, a2=?, a3=a2 at entry (arg2), a5=[a1+23]:1.
  The `blez` branch at 0x131a8 targets 0x1320c, is taken when a5(=[a1+23]:1) <= 0 (signed), and falls through when a5(=[a1+23]:1) > 0 (signed).
  The `beq` branch at 0x131f4 targets 0x13230, is taken when s5(=0x5) == t8(?), and falls through when s5(=0x5) != t8(?).
  The `bne` branch at 0x13204 targets 0x131dc, is taken when s0(?) < a5(=[a1+23]:1) (signed), and falls through when s0(?) >= a5(=[a1+23]:1) (signed).
  The `bne` branch at 0x13264 targets 0x131dc, is taken when s0(?) < a5(=[a1+23]:1) (signed), and falls through when s0(?) >= a5(=[a1+23]:1) (signed).
  The `beq` branch at 0x1326c targets 0x13210 and is always taken.
  The return at 0x13228 has v0 = one of ?, ret(save_bridge_err).
