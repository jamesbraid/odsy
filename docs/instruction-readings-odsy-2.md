# Instruction readings for the first ODSY target queue

Each entry was read from the exact archive member named below. The local MIPS disassembler produced the instruction listing. These are software observations only. They do not establish board behaviour.

## `gf_OdsyPositionCursor` at `0x1008`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`. Size: 596 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x1020)
Its taken path is forward to 0x11f4. (instruction 0x1020)
Its untaken path continues at 0x1028. (instruction 0x1020)
Its first memory write is `sd s2,8(sp)`. (instruction 0x1010)
The routine returns with `jr ra`. (instruction 0x111c)

## `gfP_OdsyBRDMGRcursor` at `0x125c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`. Size: 3380 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bne`. (instruction 0x12ac)
Its taken path is forward to 0x17fc. (instruction 0x12ac)
Its untaken path continues at 0x12b4. (instruction 0x12ac)
Its first memory write is `sd a3,888(sp)`. (instruction 0x1260)
The routine returns with `jr ra`. (instruction 0x1354)

## `odsyBlankScreen` at `0x207c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`. Size: 3320 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x209c)
Its taken path is forward to 0x2114. (instruction 0x209c)
Its untaken path continues at 0x20a4. (instruction 0x209c)
Its first memory write is `sd s0,16(sp)`. (instruction 0x208c)
The routine returns with `jr ra`. (instruction 0x210c)

## `gf_OdsyPositionCursor` at `0x118c`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_brdmgr.o)`. Size: 580 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x11c8)
Its taken path is forward to 0x139c. (instruction 0x11c8)
Its untaken path continues at 0x11d0. (instruction 0x11c8)
Its first memory write is `sd s4,24(sp)`. (instruction 0x1194)
The routine returns with `jr ra`. (instruction 0x12b8)

## `odsyReset` at `0x1800`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 1092 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x1a6c)
Its taken path is forward to 0x1bf4. (instruction 0x1a6c)
Its untaken path continues at 0x1a74. (instruction 0x1a6c)
Its first memory write is `sd s2,8(sp)`. (instruction 0x180c)
The routine returns with `jr ra`. (instruction 0x1bb0)

## `gfP_OdsySaveHwShadow` at `0xc0`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)`. Size: 1036 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0xf0)
Its taken path is forward to 0x414. (instruction 0xf0)
Its untaken path continues at 0xf8. (instruction 0xf0)
Its first memory write is `sd ra,104(sp)`. (instruction 0xc4)
The routine returns with `jr ra`. (instruction 0x14c)

## `gf_OdsyDestroyDDRN` at `0x3cc`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`. Size: 564 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bne`. (instruction 0x3fc)
Its taken path is forward to 0x448. (instruction 0x3fc)
Its untaken path continues at 0x404. (instruction 0x3fc)
Its first memory write is `sd s0,8(sp)`. (instruction 0x3d0)
The routine returns with `jr ra`. (instruction 0x534)

## `gfP_OdsySetDrawBuffer` at `0x55c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`. Size: 564 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x590)
Its taken path is forward to 0x728. (instruction 0x590)
Its untaken path continues at 0x598. (instruction 0x590)
Its first memory write is `sd ra,80(sp)`. (instruction 0x560)
The routine returns with `jr ra`. (instruction 0x670)

## `odsyInitInterrupts` at `0x2030`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 752 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x2030–0x2318)
Execution falls forward through the contiguous instruction sequence to 0x2318. (instructions 0x2030–0x2318)
Its first memory write is `sw t1,10364(v1)`. (instruction 0x2054)
The routine returns with `jr ra`. (instruction 0x2318)

## `odsyFlagInterrupt` at `0x11c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`. Size: 1048 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x160)
Its taken path is forward to 0x178. (instruction 0x160)
Its untaken path continues at 0x168. (instruction 0x160)
Its first memory write is `sd at,8(sp)`. (instruction 0x128)
The routine returns with `jr ra`. (instruction 0x2b8)

## `odsyLLPReset` at `0x149c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 128 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x14b4)
Its taken path is forward to 0x14dc. (instruction 0x14b4)
Its untaken path continues at 0x14bc. (instruction 0x14b4)
Its first memory write is `sd at,24(sp)`. (instruction 0x14a8)
The routine returns with `jr ra`. (instruction 0x14d4)

## `odsySwapBuffer` at `0x104`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`. Size: 556 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x168)
Its taken path is forward to 0x17c. (instruction 0x168)
Its untaken path continues at 0x170. (instruction 0x168)
Its first memory write is `sd s4,0(sp)`. (instruction 0x108)
The routine returns with `jr ra`. (instruction 0x20c)

## `odsyDisableInterrupts` at `0x2320`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 96 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x2320–0x2378)
Execution falls forward through the contiguous instruction sequence to 0x2378. (instructions 0x2320–0x2378)
Its first memory write is `sw at,10360(a0)`. (instruction 0x2334)
The routine returns with `jr ra`. (instruction 0x2378)

## `odsyDisableInterrupts` at `0x3508`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`. Size: 128 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x3508–0x3580)
Execution falls forward through the contiguous instruction sequence to 0x3580. (instructions 0x3508–0x3580)
Its first memory write is `sw a5,-31336(a2)`, where a2 is a0+0x10000, so it stores at a0+0x8598. (instruction 0x3520)
The routine returns with `jr ra`. (instruction 0x3580)

## `gf_OdsyInitialize` at `0xf7c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 1184 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bne`. (instruction 0xf98)
Its taken path is forward to 0x1394. (instruction 0xf98)
Its untaken path continues at 0xfa0. (instruction 0xf98)
Its first memory write is `sd s7,48(sp)`. (instruction 0xf88)
The routine returns with `jr ra`. (instruction 0x12d0)

## `odsyRetraceHandler` at `0x11ec`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`. Size: 688 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x1234)
Its taken path is forward to 0x1250. (instruction 0x1234)
Its untaken path continues at 0x123c. (instruction 0x1234)
Its first memory write is `sd s5,24(sp)`. (instruction 0x11f0)
The routine returns with `jr ra`. (instruction 0x13ec)

## `gf_OdsySchedSwapBuf` at `0x330`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`. Size: 1104 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bne`. (instruction 0x374)
Its taken path is forward to 0x398. (instruction 0x374)
Its untaken path continues at 0x37c. (instruction 0x374)
Its first memory write is `sd a1,24(sp)`. (instruction 0x338)
The routine returns with `jr ra`. (instruction 0x390)

## `gf_OdsyUnSchedSwapBuf` at `0x87c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`. Size: 408 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x8d0)
Its taken path is forward to 0x9ec. (instruction 0x8d0)
Its untaken path continues at 0x8d8. (instruction 0x8d0)
Its first memory write is `sd s4,24(sp)`. (instruction 0x880)
The routine returns with `jr ra`. (instruction 0xa0c)

## `gf_OdsySchedMGRSwapBuf` at `0xfe0`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`. Size: 508 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bltz`. (instruction 0xff4)
Its taken path is forward to 0x115c. (instruction 0xff4)
Its untaken path continues at 0xffc. (instruction 0xff4)
Its first memory write is `sd s0,32(sp)`. (instruction 0xfe4)
The routine returns with `jr ra`. (instruction 0x113c)

## `gf_OdsySchedMGRSwapBuf` at `0x1124`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`. Size: 488 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bltz`. (instruction 0x1144)
Its taken path is forward to 0x1294. (instruction 0x1144)
Its untaken path continues at 0x114c. (instruction 0x1144)
Its first memory write is `sd s0,32(sp)`. (instruction 0x1128)
The routine returns with `jr ra`. (instruction 0x127c)

## `gf_OdsyUnSchedSwapBuf` at `0x980`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`. Size: 424 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x99c)
Its taken path is forward to 0xb10. (instruction 0x99c)
Its untaken path continues at 0x9a4. (instruction 0x99c)
Its first memory write is `sd s0,24(sp)`. (instruction 0x984)
The routine returns with `jr ra`. (instruction 0xb08)

## `odsyInitPfRgn` at `0x610`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`. Size: 184 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x61c)
Its taken path is forward to 0x630. (instruction 0x61c)
Its untaken path continues at 0x624. (instruction 0x61c)
Its first memory write is `sd a0,8(sp)`. (instruction 0x618)
The routine returns with `jr ra`. (instruction 0x628)

## `odsyDestroyPfRgn` at `0x6c8`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`. Size: 112 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x6d4)
Its taken path is forward to 0x72c. (instruction 0x6d4)
Its untaken path continues at 0x6dc. (instruction 0x6d4)
Its first memory write is `sd s0,0(sp)`. (instruction 0x6d0)
The routine returns with `jr ra`. (instruction 0x730)

## `gfP_OdsyDIAGdma` at `0x8d0`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`. Size: 548 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x8fc)
Its taken path is forward to 0x920. (instruction 0x8fc)
Its untaken path continues at 0x904. (instruction 0x8fc)
Its first memory write is `sd ra,112(sp)`. (instruction 0x8d4)
The routine returns with `jr ra`. (instruction 0xa48)

## `odsyPrintRegs` at `0x3538`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 84 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x3538–0x3584)
Execution falls forward through the contiguous instruction sequence to 0x3584. (instructions 0x3538–0x3584)
Its first memory write is `sd ra,8(sp)`. (instruction 0x3540)
The routine returns with `jr ra`. (instruction 0x3584)

## `odsyInitPfRgn` at `0x674`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`. Size: 204 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x694)
Its taken path is forward to 0x6b0. (instruction 0x694)
Its untaken path continues at 0x69c. (instruction 0x694)
Its first memory write is `sd s0,8(sp)`. (instruction 0x678)
The routine returns with `jr ra`. (instruction 0x6a8)

## `odsyDestroyPfRgn` at `0x740`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`. Size: 132 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x758)
Its taken path is forward to 0x7b4. (instruction 0x758)
Its untaken path continues at 0x760. (instruction 0x758)
Its first memory write is `sd s0,0(sp)`. (instruction 0x744)
The routine returns with `jr ra`. (instruction 0x7bc)

## `gfP_OdsyDIAGdma` at `0x934`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_dma.o)`. Size: 512 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x964)
Its taken path is forward to 0x97c. (instruction 0x964)
Its untaken path continues at 0x96c. (instruction 0x964)
Its first memory write is `sd a2,80(sp)`. (instruction 0x938)
The routine returns with `jr ra`. (instruction 0xa90)

## `odsyConfigFb` at `0x6ec`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)`. Size: 2056 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x74c)
Its taken path is forward to 0xaa0. (instruction 0x74c)
Its untaken path continues at 0x754. (instruction 0x74c)
Its first memory write is `sd s0,48(sp)`. (instruction 0x6f8)
The routine returns with `jr ra`. (instruction 0xa90)

## `odsyLowaterInterrupt` at `0x2ac`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)`. Size: 128 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x2ac–0x324)
Execution falls forward through the contiguous instruction sequence to 0x324. (instructions 0x2ac–0x324)
Its first memory write is `sd s8,16(sp)`. (instruction 0x2b0)
The routine returns with `jr ra`. (instruction 0x324)

## `gf_OdsyStart` at `0x141c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 128 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x141c–0x1494)
Execution falls forward through the contiguous instruction sequence to 0x1494. (instructions 0x141c–0x1494)
Its first memory write is `sd s7,8(sp)`. (instruction 0x1420)
The routine returns with `jr ra`. (instruction 0x1494)

## `gf_OdsyStart` at `0x1c48`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_init.o)`. Size: 144 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x1c48–0x1cd0)
Execution falls forward through the contiguous instruction sequence to 0x1cd0. (instructions 0x1c48–0x1cd0)
Its first memory write is `sd s0,8(sp)`. (instruction 0x1c4c)
The routine returns with `jr ra`. (instruction 0x1cd0)

## `gfP_OdsyPerfStat` at `0x738`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)`. Size: 512 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bne`. (instruction 0x76c)
Its taken path is forward to 0x8dc. (instruction 0x76c)
Its untaken path continues at 0x774. (instruction 0x76c)
Its first memory write is `sd a3,48(sp)`. (instruction 0x73c)
The routine returns with `jr ra`. (instruction 0x824)

## `odsyLowLevelReset` at `0x151c`

Build: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`. Size: 740 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x1564)
Its taken path is forward to 0x17f8. (instruction 0x1564)
Its untaken path continues at 0x156c. (instruction 0x1564)
Its first memory write is `sd s0,32(sp)`. (instruction 0x154c)
The routine returns with `jr ra`. (instruction 0x1790)

## `gfP_OdsyPerfStat` at `0x7c4`

Build: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_diag.o)`. Size: 492 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bne`. (instruction 0x7f8)
Its taken path is forward to 0x97c. (instruction 0x7f8)
Its untaken path continues at 0x800. (instruction 0x7f8)
Its first memory write is `sd s0,56(sp)`. (instruction 0x7c8)
The routine returns with `jr ra`. (instruction 0x8c0)

## `gfP_OdsyHPqueryBestAttrib` at `0x1728`

Build: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`. Size: 204 bytes. **Established** from this complete disassembly.
The first conditional transfer is `bne`. (instruction 0x1748)
Its taken path is forward to 0x17d8. (instruction 0x1748)
Its untaken path continues at 0x1750. (instruction 0x1748)
Its first memory write is `sd s0,32(sp)`. (instruction 0x1734)
The routine returns with `jr ra`. (instruction 0x17b0)

## `gfP_OdsyHPgetTopology` at `0x618`

Build: `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)`. Size: 152 bytes. **Established** from this complete disassembly.
The first conditional transfer is `beq`. (instruction 0x63c)
Its taken path is forward to 0x690. (instruction 0x63c)
Its untaken path continues at 0x644. (instruction 0x63c)
Its first memory write is `sd a2,0(sp)`. (instruction 0x61c)
The routine returns with `jr ra`. (instruction 0x688)

## `odsyHashRemove` at `0xce0`

Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`. Size: 36 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0xce0–0xcfc)
Execution falls forward through the contiguous instruction sequence to 0xcfc. (instructions 0xce0–0xcfc)
Its first memory write is `sd v1,0(a1)`. (instruction 0xce8)
The routine returns with `jr ra`. (instruction 0xcfc)

## `gf_OdsyFrsInstall` at `0x11dc`

Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`. Size: 8 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x11dc–0x11dc)
Execution falls forward through the contiguous instruction sequence to 0x11dc. (instructions 0x11dc–0x11dc)
The routine returns with `jr ra`. (instruction 0x11dc)

## `gf_OdsyFrsUninstall` at `0x11e4`

Build: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`. Size: 8 bytes. **Established** from this complete disassembly.
No conditional transfer appears before the return. (instructions 0x11e4–0x11e4)
Execution falls forward through the contiguous instruction sequence to 0x11e4. (instructions 0x11e4–0x11e4)
The routine returns with `jr ra`. (instruction 0x11e4)
