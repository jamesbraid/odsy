# Where the board sits: crossbar widget numbers and interrupt routing

The crossbar widget number a VPro board takes in each host, from published `hinv -v` captures, and what the driver says about interrupt routing. Labels: **established** (read in the captures or in code), **inferred**, **unknown**. A fact about one host does not fill a gap in another ([AGENTS.md](../../AGENTS.md)).

## Widget numbers in published captures

A published `hinv -v` capture lists each board by its hardware-graph location, and the last component of an XIO location is the crossbar widget number. The captures were read from the hinv archive (https://hinv.irix.fans, a store of public forum and mailing-list posts, each dump labelled with its machine in the archive's record); each row counts distinct dumps. **established** for what the captures print. The "Graphics board" word is the capture's own `hinv` line.

| Host | Location printed | Widget | Board names printed | Graphics board line | Captures |
|---|---|---|---|---|---|
| Octane, Octane2 (IP30) | `/hw/node/xtalk/11` | 11 | ODY32, ODY128, ODY128VERSIONB, ODY32VERSIONB, ODY32B1_2, ODY128B1_2 | V6, V8, V10, V12 | 40 |
| Octane (IP30) | `/hw/node/xtalk/9` | 9 | ODY32 | V6 | 2 (one capture lists boards at widgets 9 and 11, two V6 boards) |
| Fuel | `/hw/module/<m>/Ibrick/xtalk/13` | 13 | ASTODY, ASTODYB, ASTODYV10, ODY128B1_2 | V10, V12 | 31 |
| Tezro | `/hw/module/<m>/IXbrick/xtalk/12` | 12 | ASTODY, ASTODYV10, ODY128B1_2 | V10, V12 | 12 |
| Onyx 350 | `/hw/module/<m>/IXbrick/xtalk/12` | 12 | ASTODY, ODY128B1_2 | V12 | 5 |
| Origin 350 | `/hw/module/<m>/IXbrick/xtalk/12` | 12 | ASTODYB | V10 | 1 |

Counts are over every capture whose location line is followed by an `ODY` board; a post that holds several dumps of one machine counts each dump once. No capture of any host puts a VPro board at a widget other than the ones in the table.

### What else sits on the crossbar in the same captures

- **Fuel.** `xtalk/13` the board (ASTODY or ODY128B1_2), `xtalk/14` and `xtalk/15` the node board's own entries (printed as "IP34 Board", the same part number twice). One capture, for example, prints `ASTODY` at 13 and the 030-1707 node board at 14 and 15. That the node board's own bridge carries the base I/O devices is **inferred**; the captures do not print it.
- **Tezro, Onyx 350, Origin 350.** `xtalk/11` an internal workstation board (WS_INT_53, Tezro only), `xtalk/12` the VPro board, `xtalk/15` the I/O board (WS_INT_53 or 2U_INT_53) with the IO9 base I/O card below it (`xtalk/15/pci-x/0/1/ioc4`). The Onyx 350 and Origin 350 captures have no widget 11.
- **Octane, Octane2.** The host's node is `/hw/node`. Linux numbers the other crossbar widgets (HEART 8, base I/O bridge 15; [buzz/README.md](../buzz/README.md), section 11); the captures read here print only the VPro board's location.

So the numbers the emulator models (widget 13 for the Fuel, 12 for the Tezro and Onyx 350, 11 for the Octane2) agree with these captures. They are evidence for the placement; the emulator's choice is not.

### PROM transcripts

The IP35 PROM prints "Odyssey board #0 found on nasid N" for the board ([prom-board-handoff.md](../../software/firmware/prom-board-handoff.md)); the transcripts read give nasid 0 and 3 and no widget number. The IP30 PROM prints its widget list as "xtalk 0x<n>" followed by `ODSY: ` ([firmware-images.md](../../software/firmware/firmware-images.md)); no published IP30 PROM transcript with that line was found.

## Interrupt routing

- **unknown from captures.** No `hinv`, `gfxinfo` or PROM transcript read gives a vector, an interrupt level or a target for the board; `hinv` does not print them.
- **established from the driver** (`odsyInitIntr`, `odsyInitInterrupts`, both hosts; [buzz/README.md](../buzz/README.md) section 6): the board has five interrupt sources (crossbar error, flags, DMA, retrace, software sync). The driver asks the host kernel for one crossbar interrupt per source (`xtalk_intr_alloc`), reads back each vector (`xtalk_intr_vector_get`), the target number (`xtalk_intr_target_get`, low four bits) and two destination addresses (`xtalk_intr_addr_get`: one for source 0, one shared by sources 1 to 4), and writes them into the board: widget +0x34 and +0x3c (source 0), +0x1044 and +0x104c (sources 1 to 4), the vectors in +0x1054, the packet header in +0x105c and the configuration in +0x5c. So the routing is not a property of the slot: the host picks vector and target at attach time, and the board then sends its interrupt writes to that address. The same code runs on both hosts. **established.**
- **inferred.** On IP35 the host chip delivers each write as a Bedrock interrupt vector to the CPU the allocation named; on IP30 as a HEART interrupt. Neither mapping is in any VPro source: **unknown** here. What would settle it: the HEART and Bedrock interrupt-header documents in the platform workspaces, laid against the three ten-bit groups of +0x105c ([buzz/README.md](../buzz/README.md) section 10).
- **established.** The host-side helper calls around the reset (widget flags, PIO mode) on IP35 are in [bringup-without-prom.md](../../software/kernel/bringup-without-prom.md) step 1.

## Sources

Representative captures, one per row of the table (read 2026-11-24). They are public forum and mailing-list posts; the dump text was read in full for the location lines and the `Graphics board` line.

- Octane2 V12: a Usenet post, `news:1154837200.525371.210600@75g2000cwc.googlegroups.com`; Octane2 V6: `news:1131341991.176074@erwin.inf.tu-dresden.de`.
- Octane V12 (the dump is on page 2): https://forums.irixnet.org/thread-3227-page-2.html; Octane V6 at widget 9 (page 2, which also holds a capture with boards at widgets 9 and 11): https://nekonomicon.irixnet.org/forum/3/16723215/2.html.
- Fuel V12: https://nekonomicon.irixnet.org/forum/14/13314/1.html and https://nekonomicon.irixnet.org/forum/14/16725766/1.html (ODY128B1_2); Fuel V10: https://forums.irixnet.org/thread-4195.html.
- Tezro V12: https://nekonomicon.irixnet.org/forum/14/16728583/1.html and https://forums.irixnet.org/thread-785-post-26015.html; Tezro V10: https://nekonomicon.irixnet.org/forum/3/16724414/1.html.
- Onyx 350 V12: https://nekonomicon.irixnet.org/forum/14/16721099/1.html; Origin 350 V10: https://nekonomicon.irixnet.org/forum/14/16725055/1.html.
