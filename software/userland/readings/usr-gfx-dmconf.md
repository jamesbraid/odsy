# Readings: `usr/gfx/dmconf`

One entry per routine, filed here from the reading batches by binary.

- `main` in `usr/gfx/dmconf` at 0x10008850
  **Inferred.** This looks like the startup path of the display configuration tool. It calls `InitEZ__Gv` at 0x10008874 with its own four entry arguments and `vfcDoCommandLine` at 0x10008890 with two stack addresses and two data symbols (`combination`, `work_order`). It then allocates and constructs an application object (`__ct__5VkAppGPcPiPPcP16XrmOptionDescReci` at 0x1000890c) and a window-class object (`__ct__17DmconfWindowClassGPCcP3ArgUi` at 0x10008984), each constructor call guarded by a null check on the allocation. Two indirect calls at 0x100089dc and 0x10008a04 have no resolved callee, so the later control flow is partly open. It calls `exit` at 0x100088a0 with a0 = 0.
  Reviewed: 2026-11-12

- `__ct__20DmconfMainFrameClassGPCcP10_WidgetRec` in `usr/gfx/dmconf` at 0x10008a80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008a80-0x10008cdc (604 bytes).
  It occupies 604 bytes.
  The `sw` at 0x10008ac4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `swc1` at 0x10008b2c stores 4 bytes to a0 (arg0 at entry) +0x84.
  The `swc1` at 0x10008b5c stores 4 bytes to a0 (arg0 at entry) +0x88.
  The `swc1` at 0x10008b88 stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `sb` at 0x10008bd4 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `sb` at 0x10008be8 stores 1 byte to a0 (arg0 at entry) +0x91.
  The `sb` at 0x10008bf8 stores 1 byte to a0 (arg0 at entry) +0x92.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa4, including `sw` at 0x10008c08, `sw` at 0x10008cac.
  The `sw` at 0x10008c14 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sw` at 0x10008c20 stores 4 bytes to a0 (arg0 at entry) +0xbc.
  2 such `lw` accesses load 4 bytes from sym(work_order) +0x23c, including `lw` at 0x10008c28, `lw` at 0x10008c48.
  The `lw` at 0x10008c50 loads 4 bytes from sym(work_order) +0x1740.
  The `jal` at 0x10008ab4 calls __ct__22DmconfMainFrameClassUIGPCcP10_WidgetRec [0x1000a090] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008adc calls VkGetResource__GPCcT1 with a0=0x100200a8, a1=0x100200c0, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10008af8 calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x100244d8, a2=sp-112, a3=?.
  The `jalr` at 0x10008ba0 calls VkGetResource__GPCcT1 with a0=0x100200d8, a1=0x100200e8, a2=?, a3=a0+136, a5=a0+132.
  The `jalr` at 0x10008bbc calls sscanf with a0=ret(VkGetResource__GPCcT1), a1=0x100244d8, a2=sp-112, a3=?.
  The `jal` at 0x10008c30 calls vfcQueryXSGIvc [0x100105a0] with a0=[sym(work_order)+572], a1=0x1, a2=a0 at entry (arg0), a3=0x1, a4=a0 at entry (arg0), a5=a0+168, a6=a0 at entry (arg0), a7=a0+146.
  The `jalr` at 0x10008c5c calls XSGIvcQueryVideoScreenInfo with a0=[sym(work_order)+572], a1=[sym(work_order)+5952], a2=sp-104, a3=?.
  The `jalr` at 0x10008c74 calls strncmp with a0=sp-92, a1=0x100244e0, a2=0x7, a3=?.
  The `jal` at 0x10008c98 calls vfcQueryOdysseyTarget [0x10011650] with a0=sym(work_order), a1=a0+180, a2=?, a3=?.
  The `beq` branch at 0x10008c3c targets 0x10008cb0, is taken when v0(=ret(vfcQueryXSGIvc)) == 0, and falls through when v0(=ret(vfcQueryXSGIvc)) != 0.
  The `bne` branch at 0x10008c80 targets 0x10008cb0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The return at 0x10008cc0 has v0 = a0.
  The instructions from 0x10008cc8 to 0x10008cd8 are not reached by any path from the entry, and their branches are not listed.

- `__ct__20DmconfMainFrameClassGPCc` in `usr/gfx/dmconf` at 0x10008ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008ce0-0x10008d4c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x10008d1c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10008d0c calls __ct__22DmconfMainFrameClassUIGPCc [0x1000a120] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10008d30 has v0 = a0.
  The instructions from 0x10008d38 to 0x10008d48 are not reached by any path from the entry, and their branches are not listed.

- `__dt__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008d50-0x10008de4 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x10008d84 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x10008d94 calls __dt__22DmconfMainFrameClassUIGv [0x1000a190] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10008db4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10008d74 targets 0x10008dbc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10008da4 targets 0x10008dbc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x10008dc8 has v0 = one of 0x231b8, ret(__dt__22DmconfMainFrameClassUIGv), ret(__dl__GPv).
  The instructions from 0x10008dd0 to 0x10008de0 are not reached by any path from the entry, and their branches are not listed.

- `className__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008df0-0x10008e30 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10008e08 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x10008e14 targets 0x10008e1c and is always taken.
  The return at 0x10008e28 has v0 = 0x100200f8.

- `doDmxPropertiesButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10008e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008e30-0x10008e88 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10008e64 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020110, a2=a2 at entry (arg2), a3=0x230d8.
  The `beq` branch at 0x10008e6c targets 0x10008e74 and is always taken.
  The return at 0x10008e80 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doOdyPropertiesButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10008e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008e90-0x10008ee8 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10008ec4 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020140, a2=a2 at entry (arg2), a3=0x23078.
  The `beq` branch at 0x10008ecc targets 0x10008ed4 and is always taken.
  The return at 0x10008ee0 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `newFile__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008ef0-0x10008f40 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x10008f1c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020170, a2=0x23018, a3=a3 at entry (arg3).
  The `beq` branch at 0x10008f24 targets 0x10008f2c and is always taken.
  The return at 0x10008f38 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `openFile__20DmconfMainFrameClassGPCc` in `usr/gfx/dmconf` at 0x10008f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008f40-0x10008f94 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x10008f70 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x10020190, a2=0x22fc8, a3=a3 at entry (arg3).
  The `beq` branch at 0x10008f78 targets 0x10008f80 and is always taken.
  The return at 0x10008f8c has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `save__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10008fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008fa0-0x10008ff0 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x10008fcc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x100201b0, a2=0x22f68, a3=a3 at entry (arg3).
  The `beq` branch at 0x10008fd4 targets 0x10008fdc and is always taken.
  The return at 0x10008fe8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `saveas__20DmconfMainFrameClassGPCc` in `usr/gfx/dmconf` at 0x10008ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10008ff0-0x10009044 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x10009020 calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=0x0, a1=0x100201d0, a2=0x22f18, a3=a3 at entry (arg3).
  The `beq` branch at 0x10009028 targets 0x10009030 and is always taken.
  The return at 0x1000903c has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `CreateDmconfMainFrameClass__20DmconfMainFrameClassSGPCcP10_WidgetRec` in `usr/gfx/dmconf` at 0x10009050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009050-0x1000910c (188 bytes).
  It occupies 188 bytes.
  The `jalr` at 0x1000907c calls __nw__GUi with a0=0xc0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100090a8 calls __ct__20DmconfMainFrameClassGPCcP10_WidgetRec [0x10008a80] with a0=ret(__nw__GUi), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0x10009088 targets 0x100090c4, is taken when v0(=ret(__nw__GUi)) == 0, and falls through when v0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x100090bc targets 0x100090c8 and is always taken.
  The return at 0x100090f0 has v0 = one of ret(__nw__GUi), 0x0.
  The instructions from 0x100090f8 to 0x10009108 are not reached by any path from the entry, and their branches are not listed.

- `update__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10009110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009110-0x1000922c (284 bytes).
  It occupies 284 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa4, including `lw` at 0x10009144, `lw` at 0x10009198.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x1000916c, `lw` at 0x100091d0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x100091b0, `lw` at 0x100091fc.
  The `jal` at 0x10009134 calls draw_frame__20DmconfMainFrameClassGv [0x10009ae0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10009154 calls vfmtIsCmpCombinationValidForTarget [0x10011680] with a0=sym(combination), a1=[a0+164], a2=sp-304, a3=0x100.
  The `jal` at 0x10009174 calls EZ__GP10_WidgetRec [0x10018810] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x1000918c calls __as__9EZWrapperGPCc [0x1001a0d0] with a0=ret(EZ__GP10_WidgetRec), a1=0x100244e8, a2=?, a3=?.
  The `jalr` at 0x100091bc calls XtSetSensitive with a0=[a0+40], a1=0x1, a2=a0+180, a3=?.
  The `jal` at 0x100091d8 calls EZ__GP10_WidgetRec [0x10018810] with a0=[a0+48], a1=?, a2=?, a3=?.
  The `jal` at 0x100091f0 calls __as__9EZWrapperGPCc [0x1001a0d0] with a0=ret(EZ__GP10_WidgetRec), a1=sp-304, a2=?, a3=?.
  The `jalr` at 0x10009208 calls XtSetSensitive with a0=[a0+40], a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10009160 targets 0x100091cc, is taken when v0(=ret(vfmtIsCmpCombinationValidForTarget)) == 0, and falls through when v0(=ret(vfmtIsCmpCombinationValidForTarget)) != 0.
  The `bne` branch at 0x100091a4 targets 0x100091c4, is taken when a1(=[a0+164]) != a2(=a0+180), and falls through when a1(=[a0+164]) == a2(=a0+180).
  The `beq` branch at 0x100091c4 targets 0x10009210 and is always taken.
  The `beq` branch at 0x10009210 targets 0x10009218 and is always taken.
  The return at 0x10009224 has v0 = ?.

- `doDenaliFormat1080I50__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009230-0x10009290 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000926c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100201f0, a2=a2 at entry (arg2), a3=0x22cd8.
  The `beq` branch at 0x10009274 targets 0x1000927c and is always taken.
  The return at 0x10009288 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080I5994__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009290-0x100092f0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100092cc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020220, a2=a2 at entry (arg2), a3=0x22c78.
  The `beq` branch at 0x100092d4 targets 0x100092dc and is always taken.
  The return at 0x100092e8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080I60__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100092f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100092f0-0x10009350 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000932c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020250, a2=a2 at entry (arg2), a3=0x22c18.
  The `beq` branch at 0x10009334 targets 0x1000933c and is always taken.
  The return at 0x10009348 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080P2398__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009350-0x100093b0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000938c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020280, a2=a2 at entry (arg2), a3=0x22bb8.
  The `beq` branch at 0x10009394 targets 0x1000939c and is always taken.
  The return at 0x100093a8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080P24__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100093b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100093b0-0x10009410 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100093ec calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100202b0, a2=a2 at entry (arg2), a3=0x22b58.
  The `beq` branch at 0x100093f4 targets 0x100093fc and is always taken.
  The return at 0x10009408 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080P25__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009410 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009410-0x10009470 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000944c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100202e0, a2=a2 at entry (arg2), a3=0x22af8.
  The `beq` branch at 0x10009454 targets 0x1000945c and is always taken.
  The return at 0x10009468 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080psf2398__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009470-0x100094d0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100094ac calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020310, a2=a2 at entry (arg2), a3=0x22a98.
  The `beq` branch at 0x100094b4 targets 0x100094bc and is always taken.
  The return at 0x100094c8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080psf24__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100094d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100094d0-0x10009530 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000950c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020340, a2=a2 at entry (arg2), a3=0x22a38.
  The `beq` branch at 0x10009514 targets 0x1000951c and is always taken.
  The return at 0x10009528 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat1080psf25__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009530-0x10009590 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000956c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020370, a2=a2 at entry (arg2), a3=0x229d8.
  The `beq` branch at 0x10009574 targets 0x1000957c and is always taken.
  The return at 0x10009588 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat525I5994__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009590-0x100095f0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100095cc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100203a0, a2=a2 at entry (arg2), a3=0x22978.
  The `beq` branch at 0x100095d4 targets 0x100095dc and is always taken.
  The return at 0x100095e8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat625I50__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100095f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100095f0-0x10009650 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000962c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x100203d0, a2=a2 at entry (arg2), a3=0x22918.
  The `beq` branch at 0x10009634 targets 0x1000963c and is always taken.
  The return at 0x10009648 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDenaliFormat720P60__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009650-0x100096b0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000968c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020400, a2=a2 at entry (arg2), a3=0x228b8.
  The `beq` branch at 0x10009694 targets 0x1000969c and is always taken.
  The return at 0x100096a8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doDownloadButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100096b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100096b0-0x10009710 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100096ec calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020430, a2=a2 at entry (arg2), a3=0x22858.
  The `beq` branch at 0x100096f4 targets 0x100096fc and is always taken.
  The return at 0x10009708 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `doOdyBrowseButton__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009710-0x10009770 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1000974c calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020458, a2=a2 at entry (arg2), a3=0x227f8.
  The `beq` branch at 0x10009754 targets 0x1000975c and is always taken.
  The return at 0x10009768 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `expose__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009770-0x100097e0 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x100097a4 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `jal` at 0x100097ac calls GLwDrawingAreaMakeCurrent [0x1001ca1c] with a0=a1 at entry (arg1), a1=[a0+128], a2=a2 at entry (arg2), a3=0x22798.
  The `jal` at 0x100097bc calls update__20DmconfMainFrameClassGv [0x10009110] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100097c4 targets 0x100097cc and is always taken.
  The return at 0x100097d8 has v0 = ret(update__20DmconfMainFrameClassGv).

- `ginit__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100097e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100097e0-0x1000989c (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x1000985c stores 4 bytes to a0 (arg0 at entry) +0x80.
  The `lhu` at 0x10009864 loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x1000986c stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `lhu` at 0x10009874 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x1000987c stores 4 bytes to a0 (arg0 at entry) +0x98.
  The `jalr` at 0x10009824 calls XtVaGetValues with a0=a1 at entry (arg1), a1=0x10020480, a2=sp-60, a3=0x0.
  The `jalr` at 0x10009834 calls XtDisplay with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jalr` at 0x10009850 calls glXCreateContext with a0=ret(XtDisplay), a1=?, a2=0x0, a3=0x1.
  The `beq` branch at 0x10009880 targets 0x10009888 and is always taken.
  The return at 0x10009894 has v0 = ret(glXCreateContext).

- `input__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x100098a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100098a0-0x10009900 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100098dc calls VkUnimplemented__GP10_WidgetRecPCc [0x1000cc30] with a0=a1 at entry (arg1), a1=0x10020490, a2=a2 at entry (arg2), a3=0x22668.
  The `beq` branch at 0x100098e4 targets 0x100098ec and is always taken.
  The return at 0x100098f8 has v0 = ret(VkUnimplemented__GP10_WidgetRecPCc).

- `resize__20DmconfMainFrameClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x10009900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009900-0x10009a9c (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0x10009934 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lhu` at 0x10009948 loads 2 bytes from a2 (arg2 at entry) +0x8.
  The `sw` at 0x10009950 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `lhu` at 0x10009958 loads 2 bytes from a2 (arg2 at entry) +0xa.
  The `sw` at 0x10009960 stores 4 bytes to a0 (arg0 at entry) +0x98.
  2 such `lw` accesses load 4 bytes from sym(combination) +0x358, including `lw` at 0x10009978, `lw` at 0x100099bc.
  The `lw` at 0x10009988 loads 4 bytes from sym(combination) +0x354.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94, including `lw` at 0x1000999c, `lw` at 0x100099fc, `lw` at 0x10009a58.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9c, including `swc1` at 0x100099b4, `swc1` at 0x10009a1c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x98, including `lw` at 0x100099d0, `lw` at 0x10009a28, `lw` at 0x10009a60.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0, including `swc1` at 0x100099e8, `swc1` at 0x10009a48.
  The `jal` at 0x1000993c calls GLwDrawingAreaMakeCurrent [0x1001ca1c] with a0=a1 at entry (arg1), a1=[a0+128], a2=a2 at entry (arg2), a3=0x22608.
  The `jalr` at 0x10009a68 calls glViewport with a0=0x0, a1=0x0, a2=[a0+148], a3=[a0+152], a4=sym(combination)+852, a5=[a2+10]:2, a6=a0 at entry (arg0).
  The `jalr` at 0x10009a78 calls glDisable with a0=0xbd0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000996c targets 0x100099f4, is taken when a4(=sym(combination)+852) == 0, and falls through when a4(=sym(combination)+852) != 0.
  The `beq` branch at 0x1000997c targets 0x100099f4, is taken when a7(=[sym(combination)+856]) == 0, and falls through when a7(=[sym(combination)+856]) != 0.
  The `beq` branch at 0x100099ec targets 0x10009a4c and is always taken.
  The `beq` branch at 0x10009a80 targets 0x10009a88 and is always taken.
  The return at 0x10009a94 has v0 = ret(glDisable).

- `RegisterDmconfMainFrameClassInterface__20DmconfMainFrameClassSGv` in `usr/gfx/dmconf` at 0x10009aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009aa0-0x10009adc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x10009ab4 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x10009ac0 targets 0x10009ac8 and is always taken.
  The return at 0x10009ad4 has v0 = 0x10023028.

- `draw_frame__20DmconfMainFrameClassGv` in `usr/gfx/dmconf` at 0x10009ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10009ae0-0x10009d1c (572 bytes).
  It occupies 572 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x10009b0c, `lw` at 0x10009cc0, `lw` at 0x10009cd8.
  The `lw` at 0x10009b8c loads 4 bytes from ret(XLoadQueryFont) +0x14.
  The `lw` at 0x10009b98 loads 4 bytes from ret(XLoadQueryFont) +0x18.
  The `lw` at 0x10009bb8 loads 4 bytes from ret(XLoadQueryFont) +0x4.
  The `lwc1` at 0x10009bfc loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0x10009c04 loads 4 bytes from a0 (arg0 at entry) +0x88.
  The `lwc1` at 0x10009c0c loads 4 bytes from a0 (arg0 at entry) +0x8c.
  The `lw` at 0x10009c54 loads 4 bytes from sym(combination) +0x354.
  The `lw` at 0x10009c70 loads 4 bytes from sym(combination) +0x358.
  The `jalr` at 0x10009b14 calls XtDisplay with a0=[a0+56], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009b34 calls XLoadQueryFont with a0=ret(XtDisplay), a1=0x100204b0, a2=?, a3=?.
  The `jalr` at 0x10009b70 calls fprintf with a0=sym(__iob)+32, a1=0x100204d8, a2=0x100204b0, a3=?.
  The `jalr` at 0x10009b80 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009bd4 calls glXUseXFont with a0=[ret(XLoadQueryFont)+4], a1=([ret(XLoadQueryFont)+20] << 0x8), a2=?, a3=0x1000, a4=[ret(XLoadQueryFont)+20].
  The `jalr` at 0x10009be8 calls XFreeFont with a0=ret(XtDisplay), a1=ret(XLoadQueryFont), a2=?, a3=?.
  The `jalr` at 0x10009c18 calls glClearColor with a0=?, a1=?, a2=?, a3=?, a6=a0 at entry (arg0), a7=a0 at entry (arg0); fp f12=[a0+132], f13=[a0+136], f14=[a0+140], f15=0x3f800000.
  The `jalr` at 0x10009c28 calls glClear with a0=0x4000, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c38 calls glMatrixMode with a0=0x1701, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c44 calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c88 calls gluOrtho2D with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009c98 calls glMatrixMode with a0=0x1700, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009ca4 calls glLoadIdentity with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009cb4 calls glListBase with a0=0x1000, a1=?, a2=?, a3=?.
  The `jalr` at 0x10009cc8 calls XtDisplay with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x10009ce0 calls XtWindow with a0=[a0+56], a1=?, a2=?, a3=?.
  The `jalr` at 0x10009cf8 calls glXSwapBuffers with a0=ret(XtDisplay), a1=ret(XtWindow), a2=?, a3=?.
  The `bne` branch at 0x10009b00 targets 0x10009bf8, is taken when at(=[0x100249a0]) != 0, and falls through when at(=[0x100249a0]) == 0.
  The `bne` branch at 0x10009b4c targets 0x10009b88, is taken when a2(=ret(XLoadQueryFont)) != 0, and falls through when a2(=ret(XLoadQueryFont)) == 0.
  The `beq` branch at 0x10009d00 targets 0x10009d08 and is always taken.
  The return at 0x10009d14 has v0 = ret(glXSwapBuffers).

- `__ct__22DmconfMainFrameClassUIGPCcP10_WidgetRec` in `usr/gfx/dmconf` at 0x1000a090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a090-0x1000a114 (132 bytes).
  It occupies 132 bytes.
  The `sw` at 0x1000a0d0 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1000a0c0 calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1000a0e0 calls create__22DmconfMainFrameClassUIGP10_WidgetRec [0x1000a230] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x1000a0f8 has v0 = a0.
  The instructions from 0x1000a100 to 0x1000a110 are not reached by any path from the entry, and their branches are not listed.

- `__ct__22DmconfMainFrameClassUIGPCc` in `usr/gfx/dmconf` at 0x1000a120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a120-0x1000a18c (108 bytes).
  It occupies 108 bytes.
  The `sw` at 0x1000a15c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1000a14c calls __ct__11VkComponentGPCc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000a170 has v0 = a0.
  The instructions from 0x1000a178 to 0x1000a188 are not reached by any path from the entry, and their branches are not listed.

- `__dt__22DmconfMainFrameClassUIGv` in `usr/gfx/dmconf` at 0x1000a190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a190-0x1000a224 (148 bytes).
  It occupies 148 bytes.
  The `sw` at 0x1000a1c4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jalr` at 0x1000a1d4 calls __dt__11VkComponentGv with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000a1f4 calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000a1b4 targets 0x1000a1fc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1000a1e4 targets 0x1000a1fc, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1000a208 has v0 = one of 0x21d78, ret(__dt__11VkComponentGv), ret(__dl__GPv).
  The instructions from 0x1000a210 to 0x1000a220 are not reached by any path from the entry, and their branches are not listed.

- `create__22DmconfMainFrameClassUIGP10_WidgetRec` in `usr/gfx/dmconf` at 0x1000a230 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000a230-0x1000b084 (3668 bytes).
  It occupies 3668 bytes.
  The `lw` at 0x1000a270 loads 4 bytes from a0 (arg0 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from sym(xmFrameWidgetClass) +0x0, including `lw` at 0x1000a278, `lw` at 0x1000ac88.
  The `sw` at 0x1000a2ac stores 4 bytes to a0 (arg0 at entry) +0x24.
  The `sw` at 0x1000a2b4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `lw` at 0x1000a2d4 loads 4 bytes from sym(xmFormWidgetClass) +0x0.
  The `lw` at 0x1000a2dc loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x1000a320 stores 4 bytes to a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from sym(xmPushButtonWidgetClass) +0x0, including `lw` at 0x1000a330, `lw` at 0x1000a658.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x1000a338, `lw` at 0x1000a458, `lw` at 0x1000a564.
  The `sw` at 0x1000a41c stores 4 bytes to a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x1000a424, `lw` at 0x1000aebc.
  3 such `lw` accesses load 4 bytes from sym(xmLabelWidgetClass) +0x0, including `lw` at 0x1000a450, `lw` at 0x1000a55c, `lw` at 0x1000a778.
  The `sw` at 0x1000a54c stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `sw` at 0x1000a648 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `sw` at 0x1000a744 stores 4 bytes to a0 (arg0 at entry) +0x3c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x3c, including `lw` at 0x1000a74c, `lw` at 0x1000acf0, `lw` at 0x1000af44.
  The `sw` at 0x1000a854 stores 4 bytes to a0 (arg0 at entry) +0x44.
  The `lw` at 0x1000a864 loads 4 bytes from sym(xmTextFieldWidgetClass) +0x0.
  The `lw` at 0x1000a8b8 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `sw` at 0x1000a958 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x1000a9d8 stores 4 bytes to a0 (arg0 at entry) +0x48.
  14 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1000a9e0, `lw` at 0x1000aa14, `lw` at 0x1000aa48.
  The `sw` at 0x1000aa0c stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1000aa40 stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1000aa74 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1000aaa8 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0x1000aadc stores 4 bytes to a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1000ab10 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1000ab44 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1000ab78 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1000abac stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1000abe0 stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1000ac14 stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `sw` at 0x1000ac48 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `sw` at 0x1000ac7c stores 4 bytes to a0 (arg0 at entry) +0x74.
  The `sw` at 0x1000ada4 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x1000adb4 loads 4 bytes from sym(glwMDrawingAreaWidgetClass) +0x0.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x34, including `lw` at 0x1000adbc, `lw` at 0x1000aecc, `lw` at 0x1000aef4.
  The `sw` at 0x1000ae24 stores 4 bytes to a0 (arg0 at entry) +0x38.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x38, including `lw` at 0x1000ae2c, `lw` at 0x1000ae50, `lw` at 0x1000ae74.
  The `lw` at 0x1000aee4 loads 4 bytes from a0 (arg0 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x1000af04, `lw` at 0x1000af1c.
  The `lw` at 0x1000af54 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0x1000a264 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(_defaultDmconfMainFrameClassUIResources__22DmconfMainFrameClassUI), a3=a3 at entry (arg3).
  The `jalr` at 0x1000a294 calls XtVaCreateWidget with a0=[a0+12], a1=[sym(xmFrameWidgetClass)], a2=a1 at entry (arg1), a3=sym(_XmStrings)+9636, a4=0x5, a5=0x0.
  The `jalr` at 0x1000a2c0 calls installDestroyHandler__11VkComponentGv with a0=a0 at entry (arg0), a1=ret(XtVaCreateWidget), a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1000a310 calls XtVaCreateManagedWidget with a0=0x10020510, a1=[sym(xmFormWidgetClass)], a2=[a0+16], a3=sym(_XmStrings)+9052, a4=0x1, a5=sym(XtStrings)+872, a6=0x301, a7=sym(XtStrings)+234.
  The `jalr` at 0x1000a40c calls XtVaCreateManagedWidget with a0=0x10020520, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a43c calls XtAddCallback with a0=[a0+40], a1=sym(_XmStrings)+4683, a2=sym(doDownloadButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000a53c calls XtVaCreateManagedWidget with a0=0x10020530, a1=[sym(xmLabelWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a638 calls XtVaCreateManagedWidget with a0=0x10020548, a1=[sym(xmLabelWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a734 calls XtVaCreateManagedWidget with a0=0x10020558, a1=[sym(xmPushButtonWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a764 calls XtAddCallback with a0=[a0+60], a1=sym(_XmStrings)+4683, a2=sym(doOdyBrowseButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000a844 calls XtVaCreateManagedWidget with a0=0x10020568, a1=[sym(xmLabelWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+7513, a4=0x2, a5=sym(_XmStrings)+10165, a6=0x1, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000a948 calls XtVaCreateManagedWidget with a0=0x10020578, a1=[sym(xmTextFieldWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+10165, a4=0x1, a5=sym(_XmStrings)+5017, a6=0x0, a7=sym(_XmStrings)+7523.
  The `jalr` at 0x1000a968 calls __nw__GUi with a0=0x4c, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000a9b0 calls __ct__12VkOptionMenuGP10_WidgetRecPCcP10VkMenuDescPv with a0=ret(__nw__GUi), a1=[a0+32], a2=0x10020588, a3=0x0, a4=0x0.
  The `jalr` at 0x1000a9fc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100205a0, a2=sym(doDenaliFormat1080I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aa30 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100205c0, a2=sym(doDenaliFormat1080I60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aa64 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100205e0, a2=sym(doDenaliFormat1080I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aa98 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020600, a2=sym(doDenaliFormat720P60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000aacc calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020620, a2=sym(doDenaliFormat720P60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab00 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020640, a2=sym(doDenaliFormat1080P2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab34 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020660, a2=sym(doDenaliFormat1080P24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab68 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020680, a2=sym(doDenaliFormat1080P25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ab9c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100206a0, a2=sym(doDenaliFormat1080psf24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000abd0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100206c0, a2=sym(doDenaliFormat1080psf2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ac04 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x100206e0, a2=sym(doDenaliFormat1080psf25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ac38 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020700, a2=sym(doDenaliFormat525I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ac6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020720, a2=sym(doDenaliFormat625I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000ad94 calls XtVaCreateManagedWidget with a0=0x10024510, a1=[sym(xmFrameWidgetClass)], a2=[a0+32], a3=sym(_XmStrings)+9636, a4=0x5, a5=sym(_XmStrings)+10165, a6=0x3, a7=sym(_XmStrings)+5017.
  The `jalr` at 0x1000ae14 calls XtVaCreateManagedWidget with a0=0x10020740, a1=[sym(glwMDrawingAreaWidgetClass)], a2=[a0+52], a3=0x10024518, a4=0x1, a5=0x10020750, a6=0x1, a7=0x10020760.
  The `jalr` at 0x1000ae44 calls XtAddCallback with a0=[a0+56], a1=0x10020778, a2=sym(ginitCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000ae68 calls XtAddCallback with a0=[a0+56], a1=0x10020788, a2=sym(inputCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000ae8c calls XtAddCallback with a0=[a0+56], a1=0x10020798, a2=sym(resizeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000aeb0 calls XtAddCallback with a0=[a0+56], a1=0x100207a8, a2=sym(exposeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2), a3=a0 at entry (arg0).
  The `jalr` at 0x1000aed8 calls XtVaSetValues with a0=[a0+40], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1000af10 calls XtVaSetValues with a0=[a0+48], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=sym(_XmStrings)+7562, a4=[a0+44], a5=0x0.
  The `jalr` at 0x1000af38 calls XtVaSetValues with a0=[a0+44], a1=sym(_XmStrings)+10305, a2=[a0+52], a3=0x0.
  The `jalr` at 0x1000af60 calls XtVaSetValues with a0=[a0+60], a1=sym(_XmStrings)+7562, a2=[a0+64], a3=0x0.
  The `jalr` at 0x1000af74 calls baseWidget__10VkMenuItemCGv with a0=[a0+72], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000b054 calls XtVaSetValues with a0=ret(baseWidget__10VkMenuItemCGv), a1=sym(_XmStrings)+10165, a2=0x1, a3=sym(_XmStrings)+5017, a4=0x0, a5=sym(_XmStrings)+7523, a6=0x3, a7=sym(_XmStrings)+9077.
  The `beq` branch at 0x1000a980 targets 0x1000a9cc, is taken when a3(=ret(__nw__GUi)) == 0, and falls through when a3(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1000a9c4 targets 0x1000a9d0 and is always taken.
  The return at 0x1000b068 has v0 = ret(XtVaSetValues).
  The instructions from 0x1000b070 to 0x1000b080 are not reached by any path from the entry, and their branches are not listed.

- `className__22DmconfMainFrameClassUIGv` in `usr/gfx/dmconf` at 0x1000b090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b090-0x1000b0d0 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1000b0a8 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x1000b0b4 targets 0x1000b0bc and is always taken.
  The return at 0x1000b0c8 has v0 = 0x100207b8.

- `doDenaliFormat1080I50__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b0d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b0d0-0x1000b0fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b0e4 targets 0x1000b0ec and is always taken.
  The return at 0x1000b0f4 has v0 = ?.

- `doDenaliFormat1080I5994__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b100-0x1000b12c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b114 targets 0x1000b11c and is always taken.
  The return at 0x1000b124 has v0 = ?.

- `doDenaliFormat1080I60__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b130-0x1000b15c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b144 targets 0x1000b14c and is always taken.
  The return at 0x1000b154 has v0 = ?.

- `doDenaliFormat1080P2398__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b160-0x1000b18c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b174 targets 0x1000b17c and is always taken.
  The return at 0x1000b184 has v0 = ?.

- `doDenaliFormat1080P24__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b190-0x1000b1bc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b1a4 targets 0x1000b1ac and is always taken.
  The return at 0x1000b1b4 has v0 = ?.

- `doDenaliFormat1080P25__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b1c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b1c0-0x1000b1ec (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b1d4 targets 0x1000b1dc and is always taken.
  The return at 0x1000b1e4 has v0 = ?.

- `doDenaliFormat1080psf2398__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b1f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b1f0-0x1000b21c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b204 targets 0x1000b20c and is always taken.
  The return at 0x1000b214 has v0 = ?.

- `doDenaliFormat1080psf24__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b220-0x1000b24c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b234 targets 0x1000b23c and is always taken.
  The return at 0x1000b244 has v0 = ?.

- `doDenaliFormat1080psf25__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b250-0x1000b27c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b264 targets 0x1000b26c and is always taken.
  The return at 0x1000b274 has v0 = ?.

- `doDenaliFormat525I5994__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b280-0x1000b2ac (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b294 targets 0x1000b29c and is always taken.
  The return at 0x1000b2a4 has v0 = ?.

- `doDenaliFormat625I50__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b2b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b2b0-0x1000b2dc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b2c4 targets 0x1000b2cc and is always taken.
  The return at 0x1000b2d4 has v0 = ?.

- `doDenaliFormat720P60__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b2e0-0x1000b30c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b2f4 targets 0x1000b2fc and is always taken.
  The return at 0x1000b304 has v0 = ?.

- `doDownloadButton__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b310-0x1000b33c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b324 targets 0x1000b32c and is always taken.
  The return at 0x1000b334 has v0 = ?.

- `doOdyBrowseButton__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b340-0x1000b36c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b354 targets 0x1000b35c and is always taken.
  The return at 0x1000b364 has v0 = ?.

- `expose__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b370 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b370-0x1000b39c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b384 targets 0x1000b38c and is always taken.
  The return at 0x1000b394 has v0 = ?.

- `ginit__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b3a0-0x1000b3cc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b3b4 targets 0x1000b3bc and is always taken.
  The return at 0x1000b3c4 has v0 = ?.

- `input__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b3d0-0x1000b3fc (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b3e4 targets 0x1000b3ec and is always taken.
  The return at 0x1000b3f4 has v0 = ?.

- `resize__22DmconfMainFrameClassUIGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000b400 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b400-0x1000b42c (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x1000b414 targets 0x1000b41c and is always taken.
  The return at 0x1000b424 has v0 = ?.

- `doDenaliFormat1080I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b430-0x1000b4a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b460, `lw` at 0x1000b47c.
  The `lw` at 0x1000b464 loads 4 bytes from [a1+8] +0x9c.
  The `lw` at 0x1000b480 loads 4 bytes from [a1+8] +0xa4.
  The `jalr` at 0x1000b484 calls (unknown callee) with a0=([[a1+8]+156] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20ad8.
  The `beq` branch at 0x1000b48c targets 0x1000b494 and is always taken.
  The return at 0x1000b4a0 has v0 = ret(?).

- `doDenaliFormat1080I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b4b0-0x1000b528 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b4e0, `lw` at 0x1000b4fc.
  The `lw` at 0x1000b4e4 loads 4 bytes from [a1+8] +0xa8.
  The `lw` at 0x1000b500 loads 4 bytes from [a1+8] +0xb0.
  The `jalr` at 0x1000b504 calls (unknown callee) with a0=([[a1+8]+168] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20a58.
  The `beq` branch at 0x1000b50c targets 0x1000b514 and is always taken.
  The return at 0x1000b520 has v0 = ret(?).

- `doDenaliFormat1080I60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b530-0x1000b5a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b560, `lw` at 0x1000b57c.
  The `lw` at 0x1000b564 loads 4 bytes from [a1+8] +0xb4.
  The `lw` at 0x1000b580 loads 4 bytes from [a1+8] +0xbc.
  The `jalr` at 0x1000b584 calls (unknown callee) with a0=([[a1+8]+180] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x209d8.
  The `beq` branch at 0x1000b58c targets 0x1000b594 and is always taken.
  The return at 0x1000b5a0 has v0 = ret(?).

- `doDenaliFormat1080P2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b5b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b5b0-0x1000b628 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b5e0, `lw` at 0x1000b5fc.
  The `lw` at 0x1000b5e4 loads 4 bytes from [a1+8] +0xc0.
  The `lw` at 0x1000b600 loads 4 bytes from [a1+8] +0xc8.
  The `jalr` at 0x1000b604 calls (unknown callee) with a0=([[a1+8]+192] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20958.
  The `beq` branch at 0x1000b60c targets 0x1000b614 and is always taken.
  The return at 0x1000b620 has v0 = ret(?).

- `doDenaliFormat1080P24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b630-0x1000b6a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b660, `lw` at 0x1000b67c.
  The `lw` at 0x1000b664 loads 4 bytes from [a1+8] +0xcc.
  The `lw` at 0x1000b680 loads 4 bytes from [a1+8] +0xd4.
  The `jalr` at 0x1000b684 calls (unknown callee) with a0=([[a1+8]+204] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x208d8.
  The `beq` branch at 0x1000b68c targets 0x1000b694 and is always taken.
  The return at 0x1000b6a0 has v0 = ret(?).

- `doDenaliFormat1080P25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b6b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b6b0-0x1000b728 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b6e0, `lw` at 0x1000b6fc.
  The `lw` at 0x1000b6e4 loads 4 bytes from [a1+8] +0xd8.
  The `lw` at 0x1000b700 loads 4 bytes from [a1+8] +0xe0.
  The `jalr` at 0x1000b704 calls (unknown callee) with a0=([[a1+8]+216] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20858.
  The `beq` branch at 0x1000b70c targets 0x1000b714 and is always taken.
  The return at 0x1000b720 has v0 = ret(?).

- `doDenaliFormat1080psf2398Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b730-0x1000b7a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b760, `lw` at 0x1000b77c.
  The `lw` at 0x1000b764 loads 4 bytes from [a1+8] +0xe4.
  The `lw` at 0x1000b780 loads 4 bytes from [a1+8] +0xec.
  The `jalr` at 0x1000b784 calls (unknown callee) with a0=([[a1+8]+228] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x207d8.
  The `beq` branch at 0x1000b78c targets 0x1000b794 and is always taken.
  The return at 0x1000b7a0 has v0 = ret(?).

- `doDenaliFormat1080psf24Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b7b0-0x1000b828 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b7e0, `lw` at 0x1000b7fc.
  The `lw` at 0x1000b7e4 loads 4 bytes from [a1+8] +0xf0.
  The `lw` at 0x1000b800 loads 4 bytes from [a1+8] +0xf8.
  The `jalr` at 0x1000b804 calls (unknown callee) with a0=([[a1+8]+240] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20758.
  The `beq` branch at 0x1000b80c targets 0x1000b814 and is always taken.
  The return at 0x1000b820 has v0 = ret(?).

- `doDenaliFormat1080psf25Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b830 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b830-0x1000b8a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b860, `lw` at 0x1000b87c.
  The `lw` at 0x1000b864 loads 4 bytes from [a1+8] +0xfc.
  The `lw` at 0x1000b880 loads 4 bytes from [a1+8] +0x104.
  The `jalr` at 0x1000b884 calls (unknown callee) with a0=([[a1+8]+252] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x206d8.
  The `beq` branch at 0x1000b88c targets 0x1000b894 and is always taken.
  The return at 0x1000b8a0 has v0 = ret(?).

- `doDenaliFormat525I5994Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b8b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b8b0-0x1000b928 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b8e0, `lw` at 0x1000b8fc.
  The `lw` at 0x1000b8e4 loads 4 bytes from [a1+8] +0x108.
  The `lw` at 0x1000b900 loads 4 bytes from [a1+8] +0x110.
  The `jalr` at 0x1000b904 calls (unknown callee) with a0=([[a1+8]+264] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20658.
  The `beq` branch at 0x1000b90c targets 0x1000b914 and is always taken.
  The return at 0x1000b920 has v0 = ret(?).

- `doDenaliFormat625I50Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b930-0x1000b9a8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b960, `lw` at 0x1000b97c.
  The `lw` at 0x1000b964 loads 4 bytes from [a1+8] +0x114.
  The `lw` at 0x1000b980 loads 4 bytes from [a1+8] +0x11c.
  The `jalr` at 0x1000b984 calls (unknown callee) with a0=([[a1+8]+276] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x205d8.
  The `beq` branch at 0x1000b98c targets 0x1000b994 and is always taken.
  The return at 0x1000b9a0 has v0 = ret(?).

- `doDenaliFormat720P60Callback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000b9b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000b9b0-0x1000ba28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000b9e0, `lw` at 0x1000b9fc.
  The `lw` at 0x1000b9e4 loads 4 bytes from [a1+8] +0x120.
  The `lw` at 0x1000ba00 loads 4 bytes from [a1+8] +0x128.
  The `jalr` at 0x1000ba04 calls (unknown callee) with a0=([[a1+8]+288] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20558.
  The `beq` branch at 0x1000ba0c targets 0x1000ba14 and is always taken.
  The return at 0x1000ba20 has v0 = ret(?).

- `doDownloadButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000ba30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000ba30-0x1000baa8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000ba60, `lw` at 0x1000ba7c.
  The `lw` at 0x1000ba64 loads 4 bytes from [a1+8] +0x12c.
  The `lw` at 0x1000ba80 loads 4 bytes from [a1+8] +0x134.
  The `jalr` at 0x1000ba84 calls (unknown callee) with a0=([[a1+8]+300] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x204d8.
  The `beq` branch at 0x1000ba8c targets 0x1000ba94 and is always taken.
  The return at 0x1000baa0 has v0 = ret(?).

- `doOdyBrowseButtonCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bab0-0x1000bb28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bae0, `lw` at 0x1000bafc.
  The `lw` at 0x1000bae4 loads 4 bytes from [a1+8] +0x138.
  The `lw` at 0x1000bb00 loads 4 bytes from [a1+8] +0x140.
  The `jalr` at 0x1000bb04 calls (unknown callee) with a0=([[a1+8]+312] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20458.
  The `beq` branch at 0x1000bb0c targets 0x1000bb14 and is always taken.
  The return at 0x1000bb20 has v0 = ret(?).

- `exposeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bb30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bb30-0x1000bba8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bb60, `lw` at 0x1000bb7c.
  The `lw` at 0x1000bb64 loads 4 bytes from [a1+8] +0x144.
  The `lw` at 0x1000bb80 loads 4 bytes from [a1+8] +0x14c.
  The `jalr` at 0x1000bb84 calls (unknown callee) with a0=([[a1+8]+324] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x203d8.
  The `beq` branch at 0x1000bb8c targets 0x1000bb94 and is always taken.
  The return at 0x1000bba0 has v0 = ret(?).

- `ginitCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bbb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bbb0-0x1000bc28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bbe0, `lw` at 0x1000bbfc.
  The `lw` at 0x1000bbe4 loads 4 bytes from [a1+8] +0x150.
  The `lw` at 0x1000bc00 loads 4 bytes from [a1+8] +0x158.
  The `jalr` at 0x1000bc04 calls (unknown callee) with a0=([[a1+8]+336] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20358.
  The `beq` branch at 0x1000bc0c targets 0x1000bc14 and is always taken.
  The return at 0x1000bc20 has v0 = ret(?).

- `inputCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bc30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bc30-0x1000bca8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bc60, `lw` at 0x1000bc7c.
  The `lw` at 0x1000bc64 loads 4 bytes from [a1+8] +0x15c.
  The `lw` at 0x1000bc80 loads 4 bytes from [a1+8] +0x164.
  The `jalr` at 0x1000bc84 calls (unknown callee) with a0=([[a1+8]+348] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x202d8.
  The `beq` branch at 0x1000bc8c targets 0x1000bc94 and is always taken.
  The return at 0x1000bca0 has v0 = ret(?).

- `resizeCallback__22DmconfMainFrameClassUISGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000bcb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bcb0-0x1000bd28 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000bce0, `lw` at 0x1000bcfc.
  The `lw` at 0x1000bce4 loads 4 bytes from [a1+8] +0x168.
  The `lw` at 0x1000bd00 loads 4 bytes from [a1+8] +0x170.
  The `jalr` at 0x1000bd04 calls (unknown callee) with a0=([[a1+8]+360] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x20258.
  The `beq` branch at 0x1000bd0c targets 0x1000bd14 and is always taken.
  The return at 0x1000bd20 has v0 = ret(?).

- `__ct__17DmconfWindowClassGPCcP3ArgUi` in `usr/gfx/dmconf` at 0x1000bd50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000bd50-0x1000c0f8 (936 bytes).
  It occupies 936 bytes.
  The `sw` at 0x1000bd9c stores 4 bytes to a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1000be00, `lw` at 0x1000be14.
  The `lw` at 0x1000be04 loads 4 bytes from [a0+8] +0xe4.
  The `lw` at 0x1000be18 loads 4 bytes from [a0+8] +0xec.
  The `sw` at 0x1000be60 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000be68, `lw` at 0x1000beb0.
  The `sw` at 0x1000bee0 stores 4 bytes to a0 (arg0 at entry) +0x48.
  7 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x1000bee8, `lw` at 0x1000bf1c, `lw` at 0x1000bf50.
  The `sw` at 0x1000bf14 stores 4 bytes to a0 (arg0 at entry) +0x4c.
  The `sw` at 0x1000bf48 stores 4 bytes to a0 (arg0 at entry) +0x50.
  The `sw` at 0x1000bf7c stores 4 bytes to a0 (arg0 at entry) +0x54.
  The `sw` at 0x1000bfb0 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x1000bfd4 stores 4 bytes to a0 (arg0 at entry) +0x5c.
  The `sw` at 0x1000c008 stores 4 bytes to a0 (arg0 at entry) +0x60.
  The `sw` at 0x1000c03c stores 4 bytes to a0 (arg0 at entry) +0x64.
  The `sw` at 0x1000c060 stores 4 bytes to a0 (arg0 at entry) +0x68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x68, including `lw` at 0x1000c068, `lw` at 0x1000c09c.
  The `sw` at 0x1000c094 stores 4 bytes to a0 (arg0 at entry) +0x6c.
  The `sw` at 0x1000c0c8 stores 4 bytes to a0 (arg0 at entry) +0x70.
  The `jalr` at 0x1000bd8c calls __ct__8VkWindowGPCcP3ArgUi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000bda8 calls baseWidget__11VkComponentCGv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000bdc4 calls setDefaultResources__11VkComponentGP10_WidgetRecPCPc with a0=a0 at entry (arg0), a1=ret(baseWidget__11VkComponentCGv), a2=sym(_defaultDmconfWindowClassResources__17DmconfWindowClass), a3=?.
  The `jalr` at 0x1000bdd8 calls __nw__GUi with a0=0xc0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000be1c calls (unknown callee) with a0=([[a0+8]+228] + a0), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1000be38 calls __ct__20DmconfMainFrameClassGPCcP10_WidgetRec [0x10008a80] with a0=ret(__nw__GUi), a1=0x10020c30, a2=ret(?), a3=?.
  The `jalr` at 0x1000be70 calls baseWidget__11VkComponentCGv with a0=[a0+68], a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000bea0 calls XtVaSetValues with a0=ret(baseWidget__11VkComponentCGv), a1=sym(XtStrings)+872, a2=0x307, a3=sym(XtStrings)+234, a4=0x21e, a5=0x0.
  The `jalr` at 0x1000beb8 calls addView__14VkSimpleWindowGP11VkComponent with a0=a0 at entry (arg0), a1=[a0+68], a2=?, a3=?.
  The `jalr` at 0x1000bed0 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10020c48, a2=?, a3=?.
  The `jalr` at 0x1000bf04 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c58, a2=sym(newFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bf38 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c68, a2=sym(openFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bf6c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c78, a2=sym(saveCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bfa0 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c88, a2=sym(saveasCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000bfc4 calls addSeparator__6VkMenuGi with a0=[a0+72], a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x1000bff8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020c98, a2=sym(closeCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c02c calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+72], a1=0x10020ca8, a2=sym(quitCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c050 calls addMenuPane__8VkWindowGPCc with a0=a0 at entry (arg0), a1=0x10020cb8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000c084 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x10020cc8, a2=sym(doDmxPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `jalr` at 0x1000c0b8 calls addAction__6VkMenuGPCcPGP10_WidgetRecPvT2_vPvi with a0=[a0+104], a1=0x10020ce0, a2=sym(doOdyPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2), a3=a0 at entry (arg0), a4=-0x1.
  The `beq` branch at 0x1000bdec targets 0x1000be54, is taken when a0(=ret(__nw__GUi)) == 0, and falls through when a0(=ret(__nw__GUi)) != 0.
  The `beq` branch at 0x1000be4c targets 0x1000be58 and is always taken.
  The return at 0x1000c0dc has v0 = a0.
  The instructions from 0x1000c0e4 to 0x1000c0f4 are not reached by any path from the entry, and their branches are not listed.

- `__dt__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c100-0x1000c1dc (220 bytes).
  It occupies 220 bytes.
  The `sw` at 0x1000c134 stores 4 bytes to a0 (arg0 at entry) +0x8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c13c, `lw` at 0x1000c14c, `lw` at 0x1000c15c.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c150, `lw` at 0x1000c170.
  The `lw` at 0x1000c154 loads 4 bytes from [[a0+68]+8] +0xc.
  The `lw` at 0x1000c174 loads 4 bytes from [[a0+68]+8] +0x14.
  The `jalr` at 0x1000c178 calls (unknown callee) with a0=([[[a0+68]+8]+12] + [a0+68]), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c18c calls __dt__8VkWindowGv with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1000c1ac calls __dl__GPv with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000c124 targets 0x1000c1b4, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1000c140 targets 0x1000c180, is taken when a1(=[a0+68]) == 0, and falls through when a1(=[a0+68]) != 0.
  The `beq` branch at 0x1000c19c targets 0x1000c1b4, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The return at 0x1000c1c0 has v0 = one of 0x1fe08, ret(__dt__8VkWindowGv), ret(__dl__GPv).
  The instructions from 0x1000c1c8 to 0x1000c1d8 are not reached by any path from the entry, and their branches are not listed.

- `className__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c1e0-0x1000c220 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1000c1f8 loads 4 bytes from abs 0x10023f54.
  The `beq` branch at 0x1000c204 targets 0x1000c20c and is always taken.
  The return at 0x1000c218 has v0 = 0x10020cf8.

- `okToQuit__17DmconfWindowClassGv` in `usr/gfx/dmconf` at 0x1000c220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c220-0x1000c298 (120 bytes).
  It occupies 120 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c240, `lw` at 0x1000c250, `lw` at 0x1000c25c.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c244, `lw` at 0x1000c260.
  The `lw` at 0x1000c248 loads 4 bytes from [[a0+68]+8] +0x48.
  The `lw` at 0x1000c264 loads 4 bytes from [[a0+68]+8] +0x50.
  The `jalr` at 0x1000c268 calls (unknown callee) with a0=([[[a0+68]+8]+72] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1000c278 targets 0x1000c280 and is always taken.
  The return at 0x1000c290 has v0 = ret(?).

- `close__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c2a0-0x1000c348 (168 bytes).
  It occupies 168 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1000c2c8, `lw` at 0x1000c2dc, `lw` at 0x1000c304.
  The `lw` at 0x1000c2cc loads 4 bytes from [a0+8] +0x48.
  The `lw` at 0x1000c2e0 loads 4 bytes from [a0+8] +0x50.
  The `lw` at 0x1000c308 loads 4 bytes from [a0+8] +0xc.
  The `lw` at 0x1000c320 loads 4 bytes from [a0+8] +0x14.
  The `jalr` at 0x1000c2e4 calls (unknown callee) with a0=([[a0+8]+72] + a0), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1fc68.
  The `jalr` at 0x1000c324 calls (unknown callee) with a0=([[a0+8]+12] + a0), a1=0x3, a2=?, a3=?, a4=a0 at entry (arg0).
  The `beq` branch at 0x1000c2ec targets 0x1000c32c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x1000c2f8 targets 0x1000c32c, is taken when a4(=a0) == 0, and falls through when a4(=a0) != 0.
  The `beq` branch at 0x1000c32c targets 0x1000c334 and is always taken.
  The return at 0x1000c340 has v0 = ret(?).

- `doDmxPropertiesButton__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c350-0x1000c3d4 (132 bytes).
  It occupies 132 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c380, `lw` at 0x1000c390, `lw` at 0x1000c3a4.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c384, `lw` at 0x1000c3a8.
  The `lw` at 0x1000c388 loads 4 bytes from [[a0+68]+8] +0x174.
  The `lw` at 0x1000c3ac loads 4 bytes from [[a0+68]+8] +0x17c.
  The `jalr` at 0x1000c3b0 calls (unknown callee) with a0=([[[a0+68]+8]+372] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1fbb8.
  The `beq` branch at 0x1000c3b8 targets 0x1000c3c0 and is always taken.
  The return at 0x1000c3cc has v0 = ret(?).

- `doOdyPropertiesButton__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c3e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c3e0-0x1000c464 (132 bytes).
  It occupies 132 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c410, `lw` at 0x1000c420, `lw` at 0x1000c434.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c414, `lw` at 0x1000c438.
  The `lw` at 0x1000c418 loads 4 bytes from [[a0+68]+8] +0x180.
  The `lw` at 0x1000c43c loads 4 bytes from [[a0+68]+8] +0x188.
  The `jalr` at 0x1000c440 calls (unknown callee) with a0=([[[a0+68]+8]+384] + [a0+68]), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1fb28.
  The `beq` branch at 0x1000c448 targets 0x1000c450 and is always taken.
  The return at 0x1000c45c has v0 = ret(?).

- `newFile__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c470-0x1000c4ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c4a0, `lw` at 0x1000c4b0, `lw` at 0x1000c4bc.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c4a4, `lw` at 0x1000c4c0.
  The `lw` at 0x1000c4a8 loads 4 bytes from [[a0+68]+8] +0x18c.
  The `lw` at 0x1000c4c4 loads 4 bytes from [[a0+68]+8] +0x194.
  The `jalr` at 0x1000c4c8 calls (unknown callee) with a0=([[[a0+68]+8]+396] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=0x1fa98.
  The `beq` branch at 0x1000c4d0 targets 0x1000c4d8 and is always taken.
  The return at 0x1000c4e4 has v0 = ret(?).

- `openFile__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c4f0-0x1000c5e8 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1000c524, `lw` at 0x1000c54c.
  The `lw` at 0x1000c528 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1000c550 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c59c, `lw` at 0x1000c5ac, `lw` at 0x1000c5b8.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c5a0, `lw` at 0x1000c5bc.
  The `lw` at 0x1000c5a4 loads 4 bytes from [[a0+68]+8] +0x198.
  The `lw` at 0x1000c5c0 loads 4 bytes from [[a0+68]+8] +0x1a0.
  The `jalr` at 0x1000c518 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c554 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000c570 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1000c588 calls (unnamed) [0x1000cbf0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000c5c4 calls (unknown callee) with a0=([[[a0+68]+8]+408] + [a0+68]), a1=ret(0x1000cbf0), a2=[a0+68], a3=?.
  The `bne` branch at 0x1000c564 targets 0x1000c5cc, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1000c5cc targets 0x1000c5d4 and is always taken.
  The return at 0x1000c5e0 has v0 = ret(?).

- `quit__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c5f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c5f0-0x1000c664 (116 bytes).
  It occupies 116 bytes.
  3 such `lw` accesses load 4 bytes from sym(theApplication) +0x0, including `lw` at 0x1000c618, `lw` at 0x1000c628, `lw` at 0x1000c634.
  2 such `lw` accesses load 4 bytes from [sym(theApplication)] +0x8, including `lw` at 0x1000c61c, `lw` at 0x1000c638.
  The `lw` at 0x1000c620 loads 4 bytes from [[sym(theApplication)]+8] +0xc0.
  The `lw` at 0x1000c63c loads 4 bytes from [[sym(theApplication)]+8] +0xc8.
  The `jalr` at 0x1000c640 calls (unknown callee) with a0=([[[sym(theApplication)]+8]+192] + [sym(theApplication)]), a1=[sym(theApplication)], a2=a2 at entry (arg2), a3=0x1f918.
  The `beq` branch at 0x1000c648 targets 0x1000c650 and is always taken.
  The return at 0x1000c65c has v0 = ret(?).

- `save__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c670-0x1000c6ec (124 bytes).
  It occupies 124 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c6a0, `lw` at 0x1000c6b0, `lw` at 0x1000c6bc.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c6a4, `lw` at 0x1000c6c0.
  The `lw` at 0x1000c6a8 loads 4 bytes from [[a0+68]+8] +0x1a4.
  The `lw` at 0x1000c6c4 loads 4 bytes from [[a0+68]+8] +0x1ac.
  The `jalr` at 0x1000c6c8 calls (unknown callee) with a0=([[[a0+68]+8]+420] + [a0+68]), a1=[a0+68], a2=a2 at entry (arg2), a3=0x1f898.
  The `beq` branch at 0x1000c6d0 targets 0x1000c6d8 and is always taken.
  The return at 0x1000c6e4 has v0 = ret(?).

- `saveas__17DmconfWindowClassGP10_WidgetRecPv` in `usr/gfx/dmconf` at 0x1000c6f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c6f0-0x1000c7e8 (248 bytes).
  It occupies 248 bytes.
  2 such `lw` accesses load 4 bytes from ret(getTheFileSelectionDialog__Gv) +0x8, including `lw` at 0x1000c724, `lw` at 0x1000c74c.
  The `lw` at 0x1000c728 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x108.
  The `lw` at 0x1000c750 loads 4 bytes from [ret(getTheFileSelectionDialog__Gv)+8] +0x110.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x44, including `lw` at 0x1000c79c, `lw` at 0x1000c7ac, `lw` at 0x1000c7b8.
  2 such `lw` accesses load 4 bytes from [a0+68] +0x8, including `lw` at 0x1000c7a0, `lw` at 0x1000c7bc.
  The `lw` at 0x1000c7a4 loads 4 bytes from [[a0+68]+8] +0x1b0.
  The `lw` at 0x1000c7c0 loads 4 bytes from [[a0+68]+8] +0x1b8.
  The `jalr` at 0x1000c718 calls getTheFileSelectionDialog__Gv with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000c754 calls (unknown callee) with a0=([[ret(getTheFileSelectionDialog__Gv)+8]+264] + ret(getTheFileSelectionDialog__Gv)), a1=0x0, a2=-0x1, a3=-0x1, a4=-0x1, a5=0x0, a6=0x0, a7=0x0.
  The `jalr` at 0x1000c770 calls getTheFileSelectionDialog__Gv with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1000c788 calls (unnamed) [0x1000cbf0] with a0=ret(getTheFileSelectionDialog__Gv), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000c7c4 calls (unknown callee) with a0=([[[a0+68]+8]+432] + [a0+68]), a1=ret(0x1000cbf0), a2=[a0+68], a3=?.
  The `bne` branch at 0x1000c764 targets 0x1000c7cc, is taken when v0(=ret(?)) != a1(=0x1), and falls through when v0(=ret(?)) == a1(=0x1).
  The `beq` branch at 0x1000c7cc targets 0x1000c7d4 and is always taken.
  The return at 0x1000c7e0 has v0 = ret(?).

- `closeCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c7f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c7f0-0x1000c868 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c820, `lw` at 0x1000c83c.
  The `lw` at 0x1000c824 loads 4 bytes from [a1+8] +0x174.
  The `lw` at 0x1000c840 loads 4 bytes from [a1+8] +0x17c.
  The `jalr` at 0x1000c844 calls (unknown callee) with a0=([[a1+8]+372] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f718.
  The `beq` branch at 0x1000c84c targets 0x1000c854 and is always taken.
  The return at 0x1000c860 has v0 = ret(?).

- `doDmxPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c870 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c870-0x1000c8e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c8a0, `lw` at 0x1000c8bc.
  The `lw` at 0x1000c8a4 loads 4 bytes from [a1+8] +0x180.
  The `lw` at 0x1000c8c0 loads 4 bytes from [a1+8] +0x188.
  The `jalr` at 0x1000c8c4 calls (unknown callee) with a0=([[a1+8]+384] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f698.
  The `beq` branch at 0x1000c8cc targets 0x1000c8d4 and is always taken.
  The return at 0x1000c8e0 has v0 = ret(?).

- `doOdyPropertiesButtonCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c8f0-0x1000c968 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c920, `lw` at 0x1000c93c.
  The `lw` at 0x1000c924 loads 4 bytes from [a1+8] +0x18c.
  The `lw` at 0x1000c940 loads 4 bytes from [a1+8] +0x194.
  The `jalr` at 0x1000c944 calls (unknown callee) with a0=([[a1+8]+396] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f618.
  The `beq` branch at 0x1000c94c targets 0x1000c954 and is always taken.
  The return at 0x1000c960 has v0 = ret(?).

- `newFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c970-0x1000c9e8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000c9a0, `lw` at 0x1000c9bc.
  The `lw` at 0x1000c9a4 loads 4 bytes from [a1+8] +0x198.
  The `lw` at 0x1000c9c0 loads 4 bytes from [a1+8] +0x1a0.
  The `jalr` at 0x1000c9c4 calls (unknown callee) with a0=([[a1+8]+408] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f598.
  The `beq` branch at 0x1000c9cc targets 0x1000c9d4 and is always taken.
  The return at 0x1000c9e0 has v0 = ret(?).

- `openFileCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000c9f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000c9f0-0x1000ca68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000ca20, `lw` at 0x1000ca3c.
  The `lw` at 0x1000ca24 loads 4 bytes from [a1+8] +0x1a4.
  The `lw` at 0x1000ca40 loads 4 bytes from [a1+8] +0x1ac.
  The `jalr` at 0x1000ca44 calls (unknown callee) with a0=([[a1+8]+420] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f518.
  The `beq` branch at 0x1000ca4c targets 0x1000ca54 and is always taken.
  The return at 0x1000ca60 has v0 = ret(?).

- `quitCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000ca70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000ca70-0x1000cae8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000caa0, `lw` at 0x1000cabc.
  The `lw` at 0x1000caa4 loads 4 bytes from [a1+8] +0x1b0.
  The `lw` at 0x1000cac0 loads 4 bytes from [a1+8] +0x1b8.
  The `jalr` at 0x1000cac4 calls (unknown callee) with a0=([[a1+8]+432] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f498.
  The `beq` branch at 0x1000cacc targets 0x1000cad4 and is always taken.
  The return at 0x1000cae0 has v0 = ret(?).

- `saveCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000caf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000caf0-0x1000cb68 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000cb20, `lw` at 0x1000cb3c.
  The `lw` at 0x1000cb24 loads 4 bytes from [a1+8] +0x1bc.
  The `lw` at 0x1000cb40 loads 4 bytes from [a1+8] +0x1c4.
  The `jalr` at 0x1000cb44 calls (unknown callee) with a0=([[a1+8]+444] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f418.
  The `beq` branch at 0x1000cb4c targets 0x1000cb54 and is always taken.
  The return at 0x1000cb60 has v0 = ret(?).

- `saveasCallback__17DmconfWindowClassSGP10_WidgetRecPvT2` in `usr/gfx/dmconf` at 0x1000cb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000cb70-0x1000cbe8 (120 bytes).
  It occupies 120 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0x1000cba0, `lw` at 0x1000cbbc.
  The `lw` at 0x1000cba4 loads 4 bytes from [a1+8] +0x1c8.
  The `lw` at 0x1000cbc0 loads 4 bytes from [a1+8] +0x1d0.
  The `jalr` at 0x1000cbc4 calls (unknown callee) with a0=([[a1+8]+456] + a1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=0x1f398.
  The `beq` branch at 0x1000cbcc targets 0x1000cbd4 and is always taken.
  The return at 0x1000cbe0 has v0 = ret(?).

- `vfcGetNextTokenValuePair` in `usr/gfx/dmconf` at 0x1000ced0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000ced0-0x1000d3d4 (1284 bytes).
  It occupies 1284 bytes.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x1000cefc, `sw` at 0x1000d20c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x1000cf04, `sw` at 0x1000d018.
  29 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x1000cf30, `lw` at 0x1000cfb4, `lw` at 0x1000d010.
  21 such `lbu` accesses load 1 byte from [a2] +0x0, including `lbu` at 0x1000cf34, `lbu` at 0x1000cfb8, `lbu` at 0x1000d024.
  4 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x1000d070, `sw` at 0x1000d188, `sw` at 0x1000d24c.
  2 such `sb` accesses store 1 byte to [a2] -0x1, including `sb` at 0x1000d194, `sb` at 0x1000d340.
  The `lw` at 0x1000d384 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `jal` at 0x1000cf58 calls (unnamed) [0x1000cdb0] with a0=a2 at entry (arg2), a1=0x0, a2=0x0, a3=0x0, a5=[[a2]]:1.
  The `jalr` at 0x1000cf9c calls fprintf with a0=sym(__iob)+32, a1=0x10021398, a2=?, a3=?.
  The `jalr` at 0x1000cff8 calls fprintf with a0=sym(__iob)+32, a1=0x10021398, a2=[0x100249b8], a3=?.
  The `jal` at 0x1000d0e4 calls (unnamed) [0x1000cdb0] with a0=a2 at entry (arg2), a1=0x0, a2=0x0, a3=0x0.
  The `jal` at 0x1000d1c4 calls (unnamed) [0x1000cdb0] with a0=a2 at entry (arg2), a1=0x0, a2=0x0, a3=0x0, a4=[a2], a5=[a2]+1, a6=a2 at entry (arg2).
  The `jalr` at 0x1000d1ec calls fprintf with a0=sym(__iob)+32, a1=0x10021398, a2=?, a3=?.
  The `jal` at 0x1000d2a8 calls (unnamed) [0x1000cdb0] with a0=a2 at entry (arg2), a1=0x0, a2=0x0, a3=0x0, a7=[[a2]]:1.
  The `jal` at 0x1000d370 calls (unnamed) [0x1000cdb0] with a0=a2 at entry (arg2), a1=0x0, a2=0x0, a3=0x0, a4=[a2]+1, a5=a2 at entry (arg2).
  The `bne` branch at 0x1000cf10 targets 0x1000cf2c, is taken when at(=[0x100249b8]) != v0(=0x2), and falls through when at(=[0x100249b8]) == v0(=0x2).
  The `beq` branch at 0x1000cf24 targets 0x1000d3bc and is always taken.
  The `bne` branch at 0x1000cf38 targets 0x1000cfb0, is taken when a5(=[[a2]]:1) != 0, and falls through when a5(=[[a2]]:1) == 0.
  The `bne` branch at 0x1000cf64 targets 0x1000cfb0, is taken when v0(=ret(0x1000cdb0)) != 0, and falls through when v0(=ret(0x1000cdb0)) == 0.
  The `bne` branch at 0x1000cf70 targets 0x1000cf88, is taken when ra(=[0x100249b8]) != 0, and falls through when ra(=[0x100249b8]) == 0.
  The `beq` branch at 0x1000cf80 targets 0x1000d3bc and is always taken.
  The `beq` branch at 0x1000cfa8 targets 0x1000d3bc and is always taken.
  The `bne` branch at 0x1000cfc0 targets 0x1000d00c, is taken when a1(=[[a2]]:1) != a2(=0x2d), and falls through when a1(=[[a2]]:1) == a2(=0x2d).
  The `bne` branch at 0x1000cfcc targets 0x1000cfe4, is taken when a2(=[0x100249b8]) != 0, and falls through when a2(=[0x100249b8]) == 0.
  The `beq` branch at 0x1000cfdc targets 0x1000d3bc and is always taken.
  The `beq` branch at 0x1000d004 targets 0x1000d3bc and is always taken.
  The `beq` branch at 0x1000d028 targets 0x1000d0b8, is taken when a1(=[[a2]]:1) == 0, and falls through when a1(=[[a2]]:1) != 0.
  The `beq` branch at 0x1000d040 targets 0x1000d0b8, is taken when a3(=[[a2]]:1) == a4(=0x3d), and falls through when a3(=[[a2]]:1) != a4(=0x3d).
  The `beq` branch at 0x1000d058 targets 0x1000d0b8, is taken when a4(=[[a2]]:1) == a5(=0x2c), and falls through when a4(=[[a2]]:1) != a5(=0x2c).
  The `beq` branch at 0x1000d080 targets 0x1000d0b8, is taken when a5(=[[a2]]:1) == 0, and falls through when a5(=[[a2]]:1) != 0.
  The `beq` branch at 0x1000d098 targets 0x1000d0b8, is taken when a7(=[[a2]]:1) == t0(=0x3d), and falls through when a7(=[[a2]]:1) != t0(=0x3d).
  The `bne` branch at 0x1000d0b0 targets 0x1000d060, is taken when t0(=[[a2]]:1) != t1(=0x2c), and falls through when t0(=[[a2]]:1) == t1(=0x2c).
  The `bne` branch at 0x1000d0c4 targets 0x1000d160, is taken when t1(=[[a2]]:1) != 0, and falls through when t1(=[[a2]]:1) == 0.
  The `beq` branch at 0x1000d0f0 targets 0x1000d148, is taken when v0(=ret(0x1000cdb0)) == 0, and falls through when v0(=ret(0x1000cdb0)) != 0.
  The `beq` branch at 0x1000d108 targets 0x1000d140, is taken when ra(=[[a2]]:1) == at(=0x3d), and falls through when ra(=[[a2]]:1) != at(=0x3d).
  The `beq` branch at 0x1000d120 targets 0x1000d140, is taken when at(=[[a2]]:1) == v0(=0x2c), and falls through when at(=[[a2]]:1) != v0(=0x2c).
  The `beq` branch at 0x1000d138 targets 0x1000d3bc and is always taken.
  The `beq` branch at 0x1000d140 targets 0x1000d160 and is always taken.
  The `beq` branch at 0x1000d158 targets 0x1000d3bc and is always taken.
  The `bne` branch at 0x1000d170 targets 0x1000d30c, is taken when a2(=[[a2]]:1) != a3(=0x3d), and falls through when a2(=[[a2]]:1) == a3(=0x3d).
  The `bne` branch at 0x1000d1a4 targets 0x1000d200, is taken when a3(=[[a2]]:1) != 0, and falls through when a3(=[[a2]]:1) == 0.
  The `bne` branch at 0x1000d1d0 targets 0x1000d200, is taken when v0(=ret(0x1000cdb0)) != 0, and falls through when v0(=ret(0x1000cdb0)) == 0.
  The `beq` branch at 0x1000d1f8 targets 0x1000d3bc and is always taken.
  The `beq` branch at 0x1000d21c targets 0x1000d27c, is taken when a1(=[[a2]]:1) == 0, and falls through when a1(=[[a2]]:1) != 0.
  The `beq` branch at 0x1000d234 targets 0x1000d27c, is taken when a3(=[[a2]]:1) == a4(=0x2c), and falls through when a3(=[[a2]]:1) != a4(=0x2c).
  The `beq` branch at 0x1000d25c targets 0x1000d27c, is taken when a4(=[[a2]]:1) == 0, and falls through when a4(=[[a2]]:1) != 0.
  The `bne` branch at 0x1000d274 targets 0x1000d23c, is taken when a6(=[[a2]]:1) != a7(=0x2c), and falls through when a6(=[[a2]]:1) == a7(=0x2c).
  The `bne` branch at 0x1000d288 targets 0x1000d30c, is taken when a7(=[[a2]]:1) != 0, and falls through when a7(=[[a2]]:1) == 0.
  The `beq` branch at 0x1000d2b4 targets 0x1000d2f4, is taken when v0(=ret(0x1000cdb0)) == 0, and falls through when v0(=ret(0x1000cdb0)) != 0.
  The `beq` branch at 0x1000d2cc targets 0x1000d2ec, is taken when ra(=[[a2]]:1) == at(=0x2c), and falls through when ra(=[[a2]]:1) != at(=0x2c).
  The `beq` branch at 0x1000d2e4 targets 0x1000d3bc and is always taken.
  The `beq` branch at 0x1000d2ec targets 0x1000d30c and is always taken.
  The `beq` branch at 0x1000d304 targets 0x1000d3bc and is always taken.
  The `bne` branch at 0x1000d31c targets 0x1000d3b0, is taken when a1(=[[a2]]:1) != a2(=0x2c), and falls through when a1(=[[a2]]:1) == a2(=0x2c).
  The `bne` branch at 0x1000d350 targets 0x1000d378, is taken when a2(=[[a2]]:1) != 0, and falls through when a2(=[[a2]]:1) == 0.
  The `bne` branch at 0x1000d388 targets 0x1000d3a0, is taken when ra(=[a1]) != 0, and falls through when ra(=[a1]) == 0.
  The `beq` branch at 0x1000d398 targets 0x1000d3bc and is always taken.
  The `beq` branch at 0x1000d3a8 targets 0x1000d3bc and is always taken.
  The return at 0x1000d3cc has v0 = one of 0x0, 0x1, 0x2, 0x3.

- `vfcGetOption` in `usr/gfx/dmconf` at 0x1000e6e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000e6e0-0x1000e950 (624 bytes).
  It occupies 624 bytes.
  The `lw` at 0x1000e714 loads 4 bytes from abs 0x100234d0.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1000e738, `lw` at 0x1000e754, `lw` at 0x1000e7b0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000e75c, `lw` at 0x1000e78c, `lw` at 0x1000e7e0.
  The `lw` at 0x1000e810 loads 4 bytes from abs 0x10023510.
  The `sw` at 0x1000e928 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jalr` at 0x1000e720 calls strcmp with a0=[0x100234d0], a1=0x10024594, a2=0x8, a3=0x1d828.
  The `jalr` at 0x1000e740 calls strlen with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e764 calls strncmp with a0=[a0], a1=?, a2=ret(strlen), a3=?.
  The `jalr` at 0x1000e7b8 calls fprintf with a0=sym(__iob)+32, a1=0x100215d0, a2=[a0], a3=?.
  The `jalr` at 0x1000e7ec calls strcmp with a0=?, a1=0x10024594, a2=?, a3=?.
  The `jalr` at 0x1000e81c calls strcmp with a0=[0x10023510], a1=0x10024594, a2=?, a3=?.
  The `jalr` at 0x1000e83c calls strlen with a0=[a0], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e860 calls strncmp with a0=[a0], a1=?, a2=ret(strlen), a3=?.
  The `jalr` at 0x1000e8a0 calls fprintf with a0=sym(__iob)+32, a1=0x100215d0, a2=[a0], a3=?.
  The `jalr` at 0x1000e8dc calls strcmp with a0=?, a1=0x10024594, a2=?, a3=?.
  The `jalr` at 0x1000e90c calls strlen with a0=[a0], a1=?, a2=?, a3=0x8.
  The `beq` branch at 0x1000e72c targets 0x1000e800, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1000e770 targets 0x1000e7d0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bne` branch at 0x1000e780 targets 0x1000e79c, is taken when a1(?) != a2(=0x8), and falls through when a1(?) == a2(=0x8).
  The `beq` branch at 0x1000e794 targets 0x1000e7d0 and is always taken.
  The `beq` branch at 0x1000e7c8 targets 0x1000e938 and is always taken.
  The `bne` branch at 0x1000e7f8 targets 0x1000e734, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1000e828 targets 0x1000e8f0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1000e86c targets 0x1000e8c0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x1000e87c targets 0x1000e8b8, is taken when a1(?) == a2(=0x8), and falls through when a1(?) != a2(=0x8).
  The `beq` branch at 0x1000e8b0 targets 0x1000e938 and is always taken.
  The `bne` branch at 0x1000e8e8 targets 0x1000e830, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1000e8f8 targets 0x1000e92c, is taken when a2(?) == a3(=0x8), and falls through when a2(?) != a3(=0x8).
  The return at 0x1000e948 has v0 = one of 0x9, ?.

- `vfcParseCommand` in `usr/gfx/dmconf` at 0x1000e950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000e950-0x1000f308 (2488 bytes).
  It occupies 2488 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x1000e978, `lw` at 0x1000e9fc.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x1000e9cc, `lw` at 0x1000e9f4.
  The `lw` at 0x1000e9d0 loads 4 bytes from [a2] +0x0.
  The `sw` at 0x1000e9e8 stores 4 bytes to ret(malloc) +0x0.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1000ea44, `lbu` at 0x1000ea54, `lbu` at 0x1000ea68.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1000eaac, `sw` at 0x1000f08c.
  The `lw` at 0x1000eb60 loads 4 bytes from table(0x10021610) +0x0.
  The `lw` at 0x1000eb70 loads 4 bytes from a0 (arg0 at entry) +0x238.
  The `sw` at 0x1000ec18 stores 4 bytes to a0 (arg0 at entry) +0x238.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x234, including `lw` at 0x1000ecac, `lw` at 0x1000ecbc, `lw` at 0x1000f00c.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x234, including `sw` at 0x1000ed8c, `sw` at 0x1000edc0, `sw` at 0x1000edf4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x23c, including `sw` at 0x1000efb4, `sw` at 0x1000f1b0.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x23c, including `lw` at 0x1000eff0, `lw` at 0x1000f130, `lw` at 0x1000f200.
  2 such `lw` accesses load 4 bytes from [a0+572] +0x84, including `lw` at 0x1000eff4, `lw` at 0x1000f204.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1740, including `sw` at 0x1000effc, `sw` at 0x1000f20c, `sw` at 0x1000f21c.
  The `sw` at 0x1000f2b0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x1000f2bc stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x1000e984 calls malloc with a0=([a1] << 0x2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1d5b8.
  The `jal` at 0x1000e9b4 calls vfcInitWorkOrder [0x10010010] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=0x1, a5=0x8.
  The `jal` at 0x1000ea0c calls (unnamed) [0x1000cdb0] with a0=0x0, a1=[a2], a2=[a1], a3=0x0, a4=0x0.
  The `jal` at 0x1000ea2c calls (unnamed) [0x1000cdb0] with a0=sp-1132, a1=0x0, a2=0x0, a3=0x0.
  The `jalr` at 0x1000ead0 calls fprintf with a0=sym(__iob)+32, a1=0x100215e8, a2=?, a3=?.
  The `jal` at 0x1000eb28 calls vfcGetOption [0x1000e6e0] with a0=sp-1132, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000eb90 calls fprintf with a0=sym(__iob)+32, a1=0x10021638, a2=?, a3=?, a5=entry(0x10021610), a6=[a0+568].
  The `jal` at 0x1000ebb4 calls (unnamed) [0x1000ddc0] with a0=sp-1120, a1=sp-1132, a2=?, a3=?, a5=entry(0x10021610), a6=[a0+568].
  The `jalr` at 0x1000ebdc calls fprintf with a0=sym(__iob)+32, a1=0x10021668, a2=?, a3=?.
  The `jalr` at 0x1000ebfc calls strcmp with a0=sp-1120, a1=0x10024598, a2=?, a3=?.
  The `jal` at 0x1000ec30 calls (unnamed) [0x1000ddc0] with a0=a0+52, a1=sp-1132, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000ec58 calls fprintf with a0=sym(__iob)+32, a1=0x10021690, a2=?, a3=?.
  The `jalr` at 0x1000ec8c calls fprintf with a0=sym(__iob)+32, a1=0x100216c8, a2=sp-1120, a3=?.
  The `jalr` at 0x1000ece0 calls fprintf with a0=sym(__iob)+32, a1=0x100216e8, a2=[a0+564], a3=0x4, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jalr` at 0x1000ed04 calls fprintf with a0=sym(__iob)+32, a1=0x10021730, a2=[a0+564], a3=0x4, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jal` at 0x1000ed28 calls (unnamed) [0x1000ddc0] with a0=sp-1120, a1=sp-1132, a2=?, a3=?, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jalr` at 0x1000ed50 calls fprintf with a0=sym(__iob)+32, a1=0x10021768, a2=?, a3=?.
  The `jalr` at 0x1000ed70 calls strcmp with a0=sp-1120, a1=0x100245a0, a2=?, a3=?.
  The `jalr` at 0x1000eda4 calls strcmp with a0=sp-1120, a1=0x100245a8, a2=?, a3=?.
  The `jalr` at 0x1000edd8 calls strcmp with a0=sp-1120, a1=0x10024598, a2=?, a3=?.
  The `jal` at 0x1000ee0c calls (unnamed) [0x1000ddc0] with a0=a0+307, a1=sp-1132, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000ee34 calls fprintf with a0=sym(__iob)+32, a1=0x10021690, a2=?, a3=?.
  The `jalr` at 0x1000ee68 calls fprintf with a0=sym(__iob)+32, a1=0x10021798, a2=sp-1120, a3=?.
  The `jal` at 0x1000ee94 calls (unnamed) [0x1000deb0] with a0=a0 at entry (arg0), a1=sp-1132, a2=?, a3=?, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jal` at 0x1000eecc calls (unnamed) [0x1000e0a0] with a0=a0 at entry (arg0), a1=sp-1132, a2=?, a3=?, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jal` at 0x1000ef04 calls (unnamed) [0x1000ded0] with a0=a0 at entry (arg0), a1=sp-1132, a2=?, a3=?, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jalr` at 0x1000ef40 calls putenv with a0=0x100217c0, a1=0x1, a2=?, a3=?, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jal` at 0x1000ef58 calls (unnamed) [0x1000ddc0] with a0=sp-1120, a1=sp-1132, a2=?, a3=?.
  The `jalr` at 0x1000ef80 calls fprintf with a0=sym(__iob)+32, a1=0x100217d8, a2=?, a3=?.
  The `jalr` at 0x1000ef9c calls XOpenDisplay with a0=sp-1120, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000efd8 calls fprintf with a0=sym(__iob)+32, a1=0x100217f8, a2=sp-1120, a3=?.
  The `jalr` at 0x1000f040 calls fprintf with a0=sym(__iob)+32, a1=0x100216e8, a2=[a0+564], a3=[a0+564], a4=0x4, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jalr` at 0x1000f0b4 calls fprintf with a0=sym(__iob)+32, a1=0x100215e8, a2=?, a3=?, a5=entry(0x10021610), a6=(ret(vfcGetOption) << 0x2).
  The `jal` at 0x1000f0fc calls (unnamed) [0x1000cdb0] with a0=sp-1132, a1=0x0, a2=0x0, a3=0x0.
  The `jalr` at 0x1000f158 calls getenv with a0=0x100245b0, a1=0x3, a2=?, a3=?.
  The `jalr` at 0x1000f180 calls strlen with a0=ret(getenv), a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x1000f198 calls XOpenDisplay with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000f1c4 calls getenv with a0=0x100245b0, a1=?, a2=ret(XOpenDisplay), a3=a0 at entry (arg0).
  The `jalr` at 0x1000f1e8 calls fprintf with a0=sym(__iob)+32, a1=0x100217f8, a2=ret(getenv), a3=?.
  The `jalr` at 0x1000f254 calls fprintf with a0=sym(__iob)+32, a1=0x10021820, a2=?, a3=[a0+564], a4=one of 0x0, 0x1.
  The `jalr` at 0x1000f2a0 calls fprintf with a0=sym(__iob)+32, a1=0x10021868, a2=?, a3=[a0+564], a4=one of 0x0, 0x1.
  The `beq` branch at 0x1000ea38 targets 0x1000f110, is taken when v0(=ret(0x1000cdb0)) == 0, and falls through when v0(=ret(0x1000cdb0)) != 0.
  The `beq` branch at 0x1000ea48 targets 0x1000f0e4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1000ea5c targets 0x1000eaec, is taken when at(?) == v0(=0x2d), and falls through when at(?) != v0(=0x2d).
  The `beq` branch at 0x1000ea70 targets 0x1000eaec, is taken when v0(?) == v1(=0x2b), and falls through when v0(?) != v1(=0x2b).
  The `bne` branch at 0x1000ea80 targets 0x1000eab8, is taken when v1(?) != a0(=0x7), and falls through when v1(?) == a0(=0x7).
  The `beq` branch at 0x1000eab0 targets 0x1000f0e4 and is always taken.
  The `beq` branch at 0x1000eadc targets 0x1000f2f0 and is always taken.
  The `bne` branch at 0x1000eb0c targets 0x1000eb20, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1000eb18 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000eb54 targets 0x1000f0d4, is taken when a4(=ret(vfcGetOption)) >= 0xa (unsigned), and falls through when a4(=ret(vfcGetOption)) < 0xa (unsigned).
  The `beq` branch at 0x1000eb74 targets 0x1000eba4, is taken when a6(=[a0+568]) == 0, and falls through when a6(=[a0+568]) != 0.
  The `beq` branch at 0x1000eb9c targets 0x1000f2f0 and is always taken.
  The `bne` branch at 0x1000ebc0 targets 0x1000ebf0, is taken when v0(=ret(0x1000ddc0)) != 0, and falls through when v0(=ret(0x1000ddc0)) == 0.
  The `beq` branch at 0x1000ebe8 targets 0x1000f2f0 and is always taken.
  The `bne` branch at 0x1000ec08 targets 0x1000ec74, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x1000ec3c targets 0x1000ec6c, is taken when v0(=ret(0x1000ddc0)) != 0, and falls through when v0(=ret(0x1000ddc0)) == 0.
  The `beq` branch at 0x1000ec64 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000ec6c targets 0x1000eca0 and is always taken.
  The `beq` branch at 0x1000ec98 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000eca0 targets 0x1000f0d4 and is always taken.
  The `beq` branch at 0x1000ecb0 targets 0x1000ed18, is taken when a1(=[a0+564]) == 0, and falls through when a1(=[a0+564]) != 0.
  The `bne` branch at 0x1000ecc4 targets 0x1000ecf0, is taken when a2(=[a0+564]) != a3(=0x4), and falls through when a2(=[a0+564]) == a3(=0x4).
  The `beq` branch at 0x1000ece8 targets 0x1000ed0c and is always taken.
  The `beq` branch at 0x1000ed10 targets 0x1000f2f0 and is always taken.
  The `bne` branch at 0x1000ed34 targets 0x1000ed64, is taken when v0(=ret(0x1000ddc0)) != 0, and falls through when v0(=ret(0x1000ddc0)) == 0.
  The `beq` branch at 0x1000ed5c targets 0x1000f2f0 and is always taken.
  The `bne` branch at 0x1000ed7c targets 0x1000ed98, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1000ed90 targets 0x1000ee7c and is always taken.
  The `bne` branch at 0x1000edb0 targets 0x1000edcc, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1000edc4 targets 0x1000ee7c and is always taken.
  The `bne` branch at 0x1000ede4 targets 0x1000ee50, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `bne` branch at 0x1000ee18 targets 0x1000ee48, is taken when v0(=ret(0x1000ddc0)) != 0, and falls through when v0(=ret(0x1000ddc0)) == 0.
  The `beq` branch at 0x1000ee40 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000ee48 targets 0x1000ee7c and is always taken.
  The `beq` branch at 0x1000ee74 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000ee7c targets 0x1000f0d4 and is always taken.
  The `bne` branch at 0x1000eea0 targets 0x1000eeb4, is taken when v0(=ret(0x1000deb0)) != 0, and falls through when v0(=ret(0x1000deb0)) == 0.
  The `beq` branch at 0x1000eeac targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000eeb4 targets 0x1000f0d4 and is always taken.
  The `bne` branch at 0x1000eed8 targets 0x1000eeec, is taken when v0(=ret(0x1000e0a0)) != 0, and falls through when v0(=ret(0x1000e0a0)) == 0.
  The `beq` branch at 0x1000eee4 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000eeec targets 0x1000f0d4 and is always taken.
  The `bne` branch at 0x1000ef10 targets 0x1000ef24, is taken when v0(=ret(0x1000ded0)) != 0, and falls through when v0(=ret(0x1000ded0)) == 0.
  The `beq` branch at 0x1000ef1c targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000ef24 targets 0x1000f0d4 and is always taken.
  The `bne` branch at 0x1000ef64 targets 0x1000ef94, is taken when v0(=ret(0x1000ddc0)) != 0, and falls through when v0(=ret(0x1000ddc0)) == 0.
  The `beq` branch at 0x1000ef8c targets 0x1000f2f0 and is always taken.
  The `bne` branch at 0x1000efb8 targets 0x1000efec, is taken when a1(=ret(XOpenDisplay)) != 0, and falls through when a1(=ret(XOpenDisplay)) == 0.
  The `beq` branch at 0x1000efe4 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000f000 targets 0x1000f0d4 and is always taken.
  The `beq` branch at 0x1000f010 targets 0x1000f054, is taken when a2(=[a0+564]) == 0, and falls through when a2(=[a0+564]) != 0.
  The `beq` branch at 0x1000f024 targets 0x1000f054, is taken when a3(=[a0+564]) == a4(=0x4), and falls through when a3(=[a0+564]) != a4(=0x4).
  The `beq` branch at 0x1000f04c targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000f060 targets 0x1000f0d4 and is always taken.
  The `beq` branch at 0x1000f090 targets 0x1000f0d4 and is always taken.
  The `beq` branch at 0x1000f0c0 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000f0cc targets 0x1000f2f0 and is always taken.
  The `bne` branch at 0x1000f0dc targets 0x1000ea50, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x1000f108 targets 0x1000ea40, is taken when v0(=ret(0x1000cdb0)) != 0, and falls through when v0(=ret(0x1000cdb0)) == 0.
  The `bne` branch at 0x1000f118 targets 0x1000f12c, is taken when ra(=[a0+564]) != 0, and falls through when ra(=[a0+564]) == 0.
  The `bne` branch at 0x1000f134 targets 0x1000f220, is taken when v1(=[a0+572]) != 0, and falls through when v1(=[a0+572]) == 0.
  The `beq` branch at 0x1000f148 targets 0x1000f218, is taken when a0(=[a0+564]) == a1(=0x3), and falls through when a0(=[a0+564]) != a1(=0x3).
  The `beq` branch at 0x1000f170 targets 0x1000f218, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `beq` branch at 0x1000f188 targets 0x1000f218, is taken when v0(=ret(strlen)) == 0, and falls through when v0(=ret(strlen)) != 0.
  The `bne` branch at 0x1000f1b4 targets 0x1000f1fc, is taken when a2(=ret(XOpenDisplay)) != 0, and falls through when a2(=ret(XOpenDisplay)) == 0.
  The `beq` branch at 0x1000f1f4 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000f210 targets 0x1000f220 and is always taken.
  The `bne` branch at 0x1000f22c targets 0x1000f268, is taken when a3(=[a0+564]) != a4(=0x1), and falls through when a3(=[a0+564]) == a4(=0x1).
  The `beq` branch at 0x1000f238 targets 0x1000f268, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1000f260 targets 0x1000f2f0 and is always taken.
  The `beq` branch at 0x1000f274 targets 0x1000f2a8, is taken when a1(=[a0+564]) == a2(=0x4), and falls through when a1(=[a0+564]) != a2(=0x4).
  The `bne` branch at 0x1000f284 targets 0x1000f2a8, is taken when a2(?) < 0x2 (signed), and falls through when a2(?) >= 0x2 (signed).
  The `bne` branch at 0x1000f2cc targets 0x1000f2e4, is taken when a1(=[a0+564]) != a2(=0x4), and falls through when a1(=[a0+564]) == a2(=0x4).
  The `beq` branch at 0x1000f2dc targets 0x1000f2f0 and is always taken.
  The return at 0x1000f300 has v0 = one of 0x0, 0x4, 0x5.
  The instructions from 0x1000eae4 to 0x1000eae8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1000eb64 uses the jump table at 0x10021610 with targets 0x1000eb6c, 0x1000eca8, 0x1000ee84, 0x1000eebc, 0x1000eef4, 0x1000ef2c, 0x1000f008, 0x1000f068, 0x1000f098, 0x1000f0c8.
  The indirect jump at 0x1000eb64 uses the jump table at 0x10021610 with targets 0x1000eb6c, 0x1000eca8, 0x1000ee84, 0x1000eebc, 0x1000eef4, 0x1000ef2c, 0x1000f008, 0x1000f068, 0x1000f098, 0x1000f0c8.
  The indirect jump at 0x1000eb64 uses the jump table at 0x10021610 with targets 0x1000eb6c, 0x1000eca8, 0x1000ee84, 0x1000eebc, 0x1000eef4, 0x1000ef2c, 0x1000f008, 0x1000f068, 0x1000f098, 0x1000f0c8.

- `vfcDoCommandLine` in `usr/gfx/dmconf` at 0x1000f3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000f3d0-0x1000f680 (688 bytes).
  It occupies 688 bytes.
  The `lw` at 0x1000f424 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1000f428 loads 4 bytes from [a1] +0x0.
  The `lbu` at 0x1000f618 loads 1 byte from sym(szErrorStr) +0x0.
  The `jal` at 0x1000f408 calls vfcParseCommand [0x1000e950] with a0=a3 at entry (arg3), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0x1000f430 calls usage [0x1000f310] with a0=[[a1]], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000f440 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000f454 calls vfcSetDmxCombinationDefaults [0x10010210] with a0=a3 at entry (arg3), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x1000f468 calls vfcModifyDmxCombination [0x10010260] with a0=a3 at entry (arg3), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1000f490 calls fprintf with a0=sym(__iob)+32, a1=0x10024640, a2=sym(szErrorStr), a3=?.
  The `jalr` at 0x1000f4a0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000f4b4 calls vfcModifyOdyCombination [0x100104b0] with a0=a3 at entry (arg3), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1000f4dc calls fprintf with a0=sym(__iob)+32, a1=0x10024640, a2=sym(szErrorStr), a3=?.
  The `jalr` at 0x1000f4ec calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000f500 calls vfcModifyCombinationGlobals [0x10010460] with a0=a3 at entry (arg3), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1000f528 calls fprintf with a0=sym(__iob)+32, a1=0x10024640, a2=sym(szErrorStr), a3=?.
  The `jalr` at 0x1000f538 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000f560 calls vfmtIsCombinationValidForDmxTarget [0x100119b0] with a0=a2 at entry (arg2), a1=sp-312, a2=0x100, a3=?.
  The `jalr` at 0x1000f58c calls fprintf with a0=sym(__iob)+32, a1=0x100219c0, a2=sp-312, a3=?.
  The `jalr` at 0x1000f5a8 calls fprintf with a0=sym(__iob)+32, a1=0x100219d0, a2=?, a3=?.
  The `jalr` at 0x1000f5b8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000f5cc calls vfcPutDmxCombination [0x1000f920] with a0=a3 at entry (arg3), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x1000f5f4 calls fprintf with a0=sym(__iob)+32, a1=0x10024640, a2=sym(szErrorStr), a3=?.
  The `jalr` at 0x1000f604 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000f638 calls fprintf with a0=sym(__iob)+32, a1=0x10024640, a2=sym(szErrorStr), a3=?.
  The `jalr` at 0x1000f654 calls fprintf with a0=sym(__iob)+32, a1=0x100219e8, a2=?, a3=?.
  The `jalr` at 0x1000f664 calls exit with a0=0x0, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1000f418 targets 0x1000f448, is taken when v0(=ret(vfcParseCommand)) != 0, and falls through when v0(=ret(vfcParseCommand)) == 0.
  The `beq` branch at 0x1000f474 targets 0x1000f4a8, is taken when v0(=ret(vfcModifyDmxCombination)) == 0, and falls through when v0(=ret(vfcModifyDmxCombination)) != 0.
  The `beq` branch at 0x1000f4c0 targets 0x1000f4f4, is taken when v0(=ret(vfcModifyOdyCombination)) == 0, and falls through when v0(=ret(vfcModifyOdyCombination)) != 0.
  The `beq` branch at 0x1000f50c targets 0x1000f540, is taken when v0(=ret(vfcModifyCombinationGlobals)) == 0, and falls through when v0(=ret(vfcModifyCombinationGlobals)) != 0.
  The `beq` branch at 0x1000f548 targets 0x1000f66c, is taken when a1(=ret(vfcParseCommand)) == a2(=0x5), and falls through when a1(=ret(vfcParseCommand)) != a2(=0x5).
  The `bne` branch at 0x1000f56c targets 0x1000f5c0, is taken when v0(=ret(vfmtIsCombinationValidForDmxTarget)) != 0, and falls through when v0(=ret(vfmtIsCombinationValidForDmxTarget)) == 0.
  The `beq` branch at 0x1000f5d8 targets 0x1000f614, is taken when v0(=ret(vfcPutDmxCombination)) == 0, and falls through when v0(=ret(vfcPutDmxCombination)) != 0.
  The `beq` branch at 0x1000f60c targets 0x1000f65c and is always taken.
  The `beq` branch at 0x1000f61c targets 0x1000f640, is taken when a1(=[sym(szErrorStr)]:1) == 0, and falls through when a1(=[sym(szErrorStr)]:1) != 0.
  The return at 0x1000f678 has v0 = one of ?, ret(exit).

- `vfcGetDmxCombination` in `usr/gfx/dmconf` at 0x1000f740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000f740-0x1000f918 (472 bytes).
  It occupies 472 bytes.
  The `lw` at 0x1000f77c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1000f78c loads 4 bytes from a0 (arg0 at entry) +0x238.
  The `lbu` at 0x1000f7ac loads 1 byte from a0 (arg0 at entry) +0x34.
  The `lbu` at 0x1000f874 loads 1 byte from a1 (arg1 at entry) +0xff.
  The `jal` at 0x1000f770 calls vfcInitDmxCombination [0x10010120] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000f7c8 calls getcwd with a0=sp-1064, a1=0x400, a2=?, a3=?.
  The `jalr` at 0x1000f7dc calls strcat with a0=sp-1064, a1=0x10024652, a2=?, a3=?.
  The `jalr` at 0x1000f7f4 calls strcat with a0=sp-1064, a1=a0+52, a2=?, a3=?.
  The `jalr` at 0x1000f814 calls strcpy with a0=sp-1064, a1=a0+52, a2=?, a3=?.
  The `jal` at 0x1000f828 calls vfmtReadCmp1Combination [0x10013d10] with a0=sp-1064, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1000f894 calls vfmtReadCmp1OdyFormat [0x10013960] with a0=a1+255, a1=a1+888, a2=ret(vfmtReadCmp1Combination), a3=?, a7=[a1+255]:1.
  The `jalr` at 0x1000f8c0 calls sprintf with a0=sym(szErrorStr), a1=0x10021a30, a2=sp-1064, a3=ret(vfmtReadCmp1Combination), a4=0x1.
  The `jalr` at 0x1000f8e8 calls sprintf with a0=sym(szErrorStr), a1=0x10021a58, a2=a0+52, a3=ret(vfmtReadCmp1Combination), a4=0x1, a5=ret(vfmtReadCmp1Combination), a6=0x2.
  The `bne` branch at 0x1000f780 targets 0x1000f900, is taken when v0(=[a0]) != 0, and falls through when v0(=[a0]) == 0.
  The `beq` branch at 0x1000f798 targets 0x1000f7a8, is taken when v1(=[a0+568]) == a0(=0x3), and falls through when v1(=[a0+568]) != a0(=0x3).
  The `beq` branch at 0x1000f7a0 targets 0x1000f900 and is always taken.
  The `beq` branch at 0x1000f7b4 targets 0x1000f804, is taken when a0(=[a0+52]:1) == a1(=0x2f), and falls through when a0(=[a0+52]:1) != a1(=0x2f).
  The `beq` branch at 0x1000f7fc targets 0x1000f81c and is always taken.
  The `beq` branch at 0x1000f83c targets 0x1000f86c, is taken when a2(=ret(vfmtReadCmp1Combination)) == 0, and falls through when a2(=ret(vfmtReadCmp1Combination)) != 0.
  The `beq` branch at 0x1000f84c targets 0x1000f8ac, is taken when a3(=ret(vfmtReadCmp1Combination)) == a4(=0x1), and falls through when a3(=ret(vfmtReadCmp1Combination)) != a4(=0x1).
  The `beq` branch at 0x1000f85c targets 0x1000f8d0, is taken when a5(=ret(vfmtReadCmp1Combination)) == a6(=0x2), and falls through when a5(=ret(vfmtReadCmp1Combination)) != a6(=0x2).
  The `beq` branch at 0x1000f864 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f878 targets 0x1000f8a4, is taken when a7(=[a1+255]:1) == 0, and falls through when a7(=[a1+255]:1) != 0.
  The `beq` branch at 0x1000f8a4 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f8c8 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f8f0 targets 0x1000f8f8 and is always taken.
  The `beq` branch at 0x1000f8f8 targets 0x1000f900 and is always taken.
  The return at 0x1000f910 has v0 = ?.

- `vfcPutDmxCombination` in `usr/gfx/dmconf` at 0x1000f920 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1000f920-0x1000ff5c (1596 bytes).
  It occupies 1596 bytes.
  The `lw` at 0x1000f94c loads 4 bytes from a0 (arg0 at entry) +0x234.
  10 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x23c, including `lw` at 0x1000f9a4, `lw` at 0x1000f9ec, `lw` at 0x1000fa58.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1740, including `lw` at 0x1000f9f4, `lw` at 0x1000fa64, `lw` at 0x1000fa90.
  2 such `lw` accesses load 4 bytes from [a0+572] +0x8c, including `lw` at 0x1000fa5c, `lw` at 0x1000fa88.
  The `lw` at 0x1000fa78 loads 4 bytes from ([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4)) +0xc.
  The `lw` at 0x1000faa4 loads 4 bytes from ([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4)) +0x10.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x354, including `lw` at 0x1000fab4, `lw` at 0x1000faf4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x358, including `lw` at 0x1000fad0, `lw` at 0x1000fafc.
  The `lbu` at 0x1000fdd8 loads 1 byte from a0 (arg0 at entry) +0x133.
  The `sb` at 0x1000ff28 stores 1 byte to sym(szErrorStr) +0x0.
  The `jal` at 0x1000f9ac calls vfcQueryXSGIvc [0x100105a0] with a0=[a0+572], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000f9d0 calls sprintf with a0=sym(szErrorStr), a1=0x10021a80, a2=?, a3=?.
  The `jalr` at 0x1000fa00 calls XSGIvcQueryVideoScreenInfo with a0=[a0+572], a1=[a0+5952], a2=sp-1144, a3=?.
  The `jalr` at 0x1000fa18 calls strncmp with a0=sp-1132, a1=0x10024658, a2=0x7, a3=?.
  The `jalr` at 0x1000fa3c calls sprintf with a0=sym(szErrorStr), a1=0x10021ab0, a2=?, a3=?.
  The `jalr` at 0x1000fb0c calls sprintf with a0=sym(szErrorStr), a1=0x10021ae8, a2=[a1+852], a3=[a1+856], a4=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+12], a5=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16], a6=((([a0+5952] << 0x2) + [a0+5952]) << 0x4).
  The `jal` at 0x1000fb30 calls (unnamed) [0x1000f680] with a0=sp-1088, a1=?, a2=?, a3=?, a4=[a1+852], a5=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16], a6=((([a0+5952] << 0x2) + [a0+5952]) << 0x4).
  The `jal` at 0x1000fb44 calls vfmtWriteCmp1Combination [0x10015540] with a0=sp-1088, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000fb74 calls sprintf with a0=sym(szErrorStr), a1=0x10021bb0, a2=sp-1088, a3=?.
  The `jalr` at 0x1000fba4 calls XSGIvcLoadVideoFormatCombination with a0=[a0+572], a1=[a0+5952], a2=sp-1088, a3=?.
  The `jalr` at 0x1000fbc4 calls XSync with a0=[a0+572], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1000fbd4 calls unlink with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fc08 calls sprintf with a0=sym(szErrorStr), a1=0x10021be8, a2=sp-1088, a3=?.
  The `jal` at 0x1000fc2c calls vfcQueryXSGIvc [0x100105a0] with a0=[a0+572], a1=0x1, a2=[a0+564], a3=0x2.
  The `jalr` at 0x1000fc50 calls sprintf with a0=sym(szErrorStr), a1=0x10021a80, a2=?, a3=?.
  The `jalr` at 0x1000fc80 calls XSGIvcQueryVideoScreenInfo with a0=[a0+572], a1=[a0+5952], a2=sp-1144, a3=?.
  The `jalr` at 0x1000fc98 calls strncmp with a0=sp-1132, a1=0x10024658, a2=0x4, a3=?.
  The `jalr` at 0x1000fcbc calls sprintf with a0=sym(szErrorStr), a1=0x10021c10, a2=?, a3=?.
  The `jal` at 0x1000fce0 calls (unnamed) [0x1000f680] with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jal` at 0x1000fcf4 calls vfmtWriteCmp1Combination [0x10015540] with a0=sp-1088, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000fd24 calls sprintf with a0=sym(szErrorStr), a1=0x10021bb0, a2=sp-1088, a3=?.
  The `jalr` at 0x1000fd54 calls XSGIvcNVLoadVideoFormatCombination with a0=[a0+572], a1=[a0+5952], a2=sp-1088, a3=?.
  The `jalr` at 0x1000fd74 calls XSync with a0=[a0+572], a1=0x0, a2=?, a3=?.
  The `jalr` at 0x1000fd84 calls unlink with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fdb8 calls sprintf with a0=sym(szErrorStr), a1=0x10021be8, a2=sp-1088, a3=?.
  The `jalr` at 0x1000fdf4 calls getcwd with a0=sp-1088, a1=0x400, a2=[a0+564], a3=[a0+307]:1, a4=0x2f, a5=0x3.
  The `jalr` at 0x1000fe08 calls strcat with a0=sp-1088, a1=0x10024652, a2=?, a3=?.
  The `jalr` at 0x1000fe20 calls strcat with a0=sp-1088, a1=a0+307, a2=?, a3=?.
  The `jalr` at 0x1000fe40 calls strcpy with a0=sp-1088, a1=a0+307, a2=[a0+564], a3=[a0+307]:1, a4=0x2f, a5=0x3.
  The `jal` at 0x1000fe54 calls vfmtWriteCmp1Combination [0x10015540] with a0=sp-1088, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000fe88 calls sprintf with a0=sym(szErrorStr), a1=0x10021c50, a2=sp-1088, a3=0x1.
  The `jalr` at 0x1000fea0 calls strlen with a0=sp-1088, a1=?, a2=ret(vfmtWriteCmp1Combination), a3=0x1.
  The `jalr` at 0x1000fec0 calls strlen with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fedc calls strcmp with a0=(sp-1088 + ret(strlen)-4), a1=0x10024660, a2=?, a3=?.
  The `jalr` at 0x1000fef4 calls basename with a0=sp-1088, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ff14 calls sprintf with a0=sym(szErrorStr), a1=0x10021c80, a2=ret(basename), a3=?.
  The `beq` branch at 0x1000f954 targets 0x1000f994, is taken when at(=[a0+564]) == 0, and falls through when at(=[a0+564]) != 0.
  The `beq` branch at 0x1000f964 targets 0x1000f9a0, is taken when a0(=[a0+564]) == a1(=0x1), and falls through when a0(=[a0+564]) != a1(=0x1).
  The `beq` branch at 0x1000f974 targets 0x1000fc20, is taken when a2(=[a0+564]) == a3(=0x2), and falls through when a2(=[a0+564]) != a3(=0x2).
  The `beq` branch at 0x1000f984 targets 0x1000fdd0, is taken when a4(=[a0+564]) == a5(=0x3), and falls through when a4(=[a0+564]) != a5(=0x3).
  The `beq` branch at 0x1000f98c targets 0x1000ff3c and is always taken.
  The `beq` branch at 0x1000f998 targets 0x1000ff44 and is always taken.
  The `bne` branch at 0x1000f9b8 targets 0x1000f9e8, is taken when v0(=ret(vfcQueryXSGIvc)) != 0, and falls through when v0(=ret(vfcQueryXSGIvc)) == 0.
  The `beq` branch at 0x1000f9e0 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fa24 targets 0x1000fa54, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x1000fa4c targets 0x1000ff44 and is always taken.
  The `bne` branch at 0x1000fac0 targets 0x1000fae4, is taken when a3(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+12]) < a4(=[a1+852]) (signed), and falls through when a3(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+12]) >= a4(=[a1+852]) (signed).
  The `beq` branch at 0x1000fadc targets 0x1000fb24, is taken when a7(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16]) >= t0(=[a1+856]) (signed), and falls through when a7(=[([[a0+572]+140] + ((([a0+5952] << 0x2) + [a0+5952]) << 0x4))+16]) < t0(=[a1+856]) (signed).
  The `beq` branch at 0x1000fb1c targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fb58 targets 0x1000fb8c, is taken when ra(=ret(vfmtWriteCmp1Combination)) == 0, and falls through when ra(=ret(vfmtWriteCmp1Combination)) != 0.
  The `beq` branch at 0x1000fb84 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fbe0 targets 0x1000fbf4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000fbec targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fc18 targets 0x1000ff44 and is always taken.
  The `bne` branch at 0x1000fc38 targets 0x1000fc68, is taken when v0(=ret(vfcQueryXSGIvc)) != 0, and falls through when v0(=ret(vfcQueryXSGIvc)) == 0.
  The `beq` branch at 0x1000fc60 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fca4 targets 0x1000fcd4, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x1000fccc targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fd08 targets 0x1000fd3c, is taken when ra(=ret(vfmtWriteCmp1Combination)) == 0, and falls through when ra(=ret(vfmtWriteCmp1Combination)) != 0.
  The `beq` branch at 0x1000fd34 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fd90 targets 0x1000fda4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000fd9c targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fdc8 targets 0x1000ff44 and is always taken.
  The `beq` branch at 0x1000fde0 targets 0x1000fe30, is taken when a3(=[a0+307]:1) == a4(=0x2f), and falls through when a3(=[a0+307]:1) != a4(=0x2f).
  The `beq` branch at 0x1000fe28 targets 0x1000fe48 and is always taken.
  The `bne` branch at 0x1000fe6c targets 0x1000fe98, is taken when a2(=ret(vfmtWriteCmp1Combination)) != a3(=0x1), and falls through when a2(=ret(vfmtWriteCmp1Combination)) == a3(=0x1).
  The `beq` branch at 0x1000fe90 targets 0x1000ff2c and is always taken.
  The `bne` branch at 0x1000feb0 targets 0x1000feec, is taken when v0(=ret(strlen)) < 0x4 (unsigned), and falls through when v0(=ret(strlen)) >= 0x4 (unsigned).
  The `beq` branch at 0x1000fee4 targets 0x1000ff24, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x1000ff1c targets 0x1000ff2c and is always taken.
  The `beq` branch at 0x1000ff34 targets 0x1000ff44 and is always taken.
  The return at 0x1000ff54 has v0 = one of 0x0, 0x2, ?.

- `vfcInitWorkOrder` in `usr/gfx/dmconf` at 0x10010010 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010010-0x100100a0 (144 bytes).
  It occupies 144 bytes.
  The `sw` at 0x10010030 stores 4 bytes to a0 (arg0 at entry) +0x238.
  The `sb` at 0x1001003c stores 1 byte to a0 (arg0 at entry) +0x34.
  The `sw` at 0x10010044 stores 4 bytes to a0 (arg0 at entry) +0x234.
  The `sb` at 0x10010050 stores 1 byte to a0 (arg0 at entry) +0x133.
  The `sw` at 0x10010058 stores 4 bytes to a0 (arg0 at entry) +0x23c.
  The `jal` at 0x1001006c calls (unnamed) [0x1000ff60] with a0=a0+12, a1=a0 at entry (arg0), a2=a0+307, a3=a0 at entry (arg0), a4=a0+52, a5=a0 at entry (arg0), a6=0x1bef8.
  The `jal` at 0x10010084 calls (unnamed) [0x1000ffe0] with a0=a0+4, a1=?, a2=?, a3=?.
  The return at 0x10010098 has v0 = ret(0x1000ffe0).

- `vfcInitDmxCombination` in `usr/gfx/dmconf` at 0x10010120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010120-0x10010208 (232 bytes).
  It occupies 232 bytes.
  The `sw` at 0x10010148 stores 4 bytes to a1 (arg1 at entry) +0x350.
  The `sw` at 0x10010158 stores 4 bytes to a1 (arg1 at entry) +0x354.
  The `sw` at 0x10010168 stores 4 bytes to a1 (arg1 at entry) +0x358.
  The `sw` at 0x10010174 stores 4 bytes to a1 (arg1 at entry) +0x35c.
  The `sw` at 0x10010184 stores 4 bytes to a1 (arg1 at entry) +0x360.
  The `sw` at 0x10010190 stores 4 bytes to a1 (arg1 at entry) +0x364.
  The `sw` at 0x1001019c stores 4 bytes to a1 (arg1 at entry) +0x368.
  The `sw` at 0x100101a8 stores 4 bytes to a1 (arg1 at entry) +0x36c.
  The `sw` at 0x100101b4 stores 4 bytes to a1 (arg1 at entry) +0x370.
  The `sw` at 0x100101c0 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `sw` at 0x100101cc stores 4 bytes to a1 (arg1 at entry) +0x308.
  The `sw` at 0x100101d8 stores 4 bytes to a1 (arg1 at entry) +0x304.
  The `jal` at 0x100101ec calls (unnamed) [0x100100a0] with a0=a1+4996, a1=0x1, a2=a1 at entry (arg1), a3=0x2, a4=a1 at entry (arg1), a5=0x1, a6=a1 at entry (arg1), a7=0x1.
  The return at 0x10010200 has v0 = ret(0x100100a0).

- `vfcSetDmxCombinationDefaults` in `usr/gfx/dmconf` at 0x10010210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010210-0x1001025c (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x1001023c calls vfcInitDmxCombination [0x10010120] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10010254 has v0 = 0x0.

- `vfcModifyDmxCombination` in `usr/gfx/dmconf` at 0x10010260 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010260-0x10010460 (512 bytes).
  It occupies 512 bytes.
  The `lw` at 0x10010284 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x10010298 loads 4 bytes from a0 (arg0 at entry) +0x16c4.
  The `sw` at 0x100102a0 stores 4 bytes to a1 (arg1 at entry) +0x1484.
  The `lw` at 0x100102b8 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x100102cc loads 4 bytes from a0 (arg0 at entry) +0x16c8.
  The `sw` at 0x100102d4 stores 4 bytes to a1 (arg1 at entry) +0x1488.
  The `lw` at 0x100102dc loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010310, `lw` at 0x10010380.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10010328, `sw` at 0x10010398.
  The `lw` at 0x1001034c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x100103bc loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x100103d0 loads 4 bytes from a0 (arg0 at entry) +0x16dc.
  The `sw` at 0x100103d8 stores 4 bytes to a1 (arg1 at entry) +0x149c.
  The `lw` at 0x100103e0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x100103f4 loads 4 bytes from a0 (arg0 at entry) +0x16e0.
  The `sw` at 0x100103fc stores 4 bytes to a1 (arg1 at entry) +0x14a0.
  The `lw` at 0x10010404 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x10010418 loads 4 bytes from a0 (arg0 at entry) +0x1708.
  The `sw` at 0x10010420 stores 4 bytes to a1 (arg1 at entry) +0x14c8.
  The `lw` at 0x10010428 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0x1001043c loads 4 bytes from a0 (arg0 at entry) +0x170c.
  The `sw` at 0x10010444 stores 4 bytes to a1 (arg1 at entry) +0x14cc.
  The `jal` at 0x100102ac calls vfcFillDmxFormatInformation [0x10010630] with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001028c targets 0x100102a4, is taken when (at(=[a0+16]) & 0x1) == 0, and falls through when (at(=[a0+16]) & 0x1) != 0.
  The `beq` branch at 0x100102c0 targets 0x100102d8, is taken when (a0(=[a0+20]) & 0x1) == 0, and falls through when (a0(=[a0+20]) & 0x1) != 0.
  The `beq` branch at 0x100102e4 targets 0x10010348, is taken when (a2(=[a0+24]) & 0x1) == 0, and falls through when (a2(=[a0+24]) & 0x1) != 0.
  The `beq` branch at 0x100102f8 targets 0x10010348 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10010340 targets 0x10010300, is taken when a4(?) < 0x2 (signed), and falls through when a4(?) >= 0x2 (signed).
  The `beq` branch at 0x10010354 targets 0x100103b8, is taken when (t0(=[a0+28]) & 0x1) == 0, and falls through when (t0(=[a0+28]) & 0x1) != 0.
  The `beq` branch at 0x10010368 targets 0x100103b8 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x100103b0 targets 0x10010370, is taken when t2(?) < 0x2 (signed), and falls through when t2(?) >= 0x2 (signed).
  The `beq` branch at 0x100103c4 targets 0x100103dc, is taken when (ra(=[a0+32]) & 0x1) == 0, and falls through when (ra(=[a0+32]) & 0x1) != 0.
  The `beq` branch at 0x100103e8 targets 0x10010400, is taken when (v0(=[a0+36]) & 0x1) == 0, and falls through when (v0(=[a0+36]) & 0x1) != 0.
  The `beq` branch at 0x1001040c targets 0x10010424, is taken when (a0(=[a0+40]) & 0x1) == 0, and falls through when (a0(=[a0+40]) & 0x1) != 0.
  The `beq` branch at 0x10010430 targets 0x10010448, is taken when (a2(=[a0+44]) & 0x1) == 0, and falls through when (a2(=[a0+44]) & 0x1) != 0.
  The return at 0x10010458 has v0 = 0x0.

- `vfcModifyCombinationGlobals` in `usr/gfx/dmconf` at 0x10010460 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010460-0x100104a8 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x10010474 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x10010488 loads 4 bytes from a0 (arg0 at entry) +0x540.
  The `sw` at 0x10010490 stores 4 bytes to a1 (arg1 at entry) +0x300.
  The `beq` branch at 0x1001047c targets 0x10010494, is taken when (at(=[a0+48]) & 0x1) == 0, and falls through when (at(=[a0+48]) & 0x1) != 0.
  The return at 0x100104a0 has v0 = 0x0.

- `vfcModifyOdyCombination` in `usr/gfx/dmconf` at 0x100104b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100104b0-0x1001059c (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x100104d4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x10010558 loads 4 bytes from a1 (arg1 at entry) +0x568.
  The `sw` at 0x10010564 stores 4 bytes to a1 (arg1 at entry) +0x354.
  The `lw` at 0x1001056c loads 4 bytes from a1 (arg1 at entry) +0x564.
  The `sw` at 0x10010578 stores 4 bytes to a1 (arg1 at entry) +0x358.
  The `jalr` at 0x100104f8 calls strcpy with a0=a1+255, a1=a0+831, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10010514 calls vfmtReadCmp1OdyFormat [0x10013960] with a0=a1+255, a1=a1+888, a2=?, a3=?.
  The `jalr` at 0x1001053c calls sprintf with a0=sym(szErrorStr), a1=0x10021ce8, a2=a1+255, a3=?.
  The `beq` branch at 0x100104dc targets 0x1001057c, is taken when (at(=[a0+8]) & 0x1) == 0, and falls through when (at(=[a0+8]) & 0x1) != 0.
  The `beq` branch at 0x1001051c targets 0x10010554, is taken when v0(=ret(vfmtReadCmp1OdyFormat)) == 0, and falls through when v0(=ret(vfmtReadCmp1OdyFormat)) != 0.
  The `beq` branch at 0x1001054c targets 0x10010584 and is always taken.
  The return at 0x10010594 has v0 = one of 0x0, 0x2.

- `vfcQueryXSGIvc` in `usr/gfx/dmconf` at 0x100105a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100105a0-0x10010628 (136 bytes).
  It occupies 136 bytes.
  The `jalr` at 0x100105ec calls XSGIvcQueryVersion with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=a3 at entry (arg3).
  The `bne` branch at 0x100105c0 targets 0x10010610, is taken when at(=[0x100249c0]) != 0, and falls through when at(=[0x100249c0]) == 0.
  The `beq` branch at 0x100105d4 targets 0x1001060c, is taken when v1(=a0) == 0, and falls through when v1(=a0) != 0.
  The `beq` branch at 0x100105f4 targets 0x1001060c, is taken when v0(=ret(XSGIvcQueryVersion)) == 0, and falls through when v0(=ret(XSGIvcQueryVersion)) != 0.
  The `beq` branch at 0x10010604 targets 0x10010610 and is always taken.
  The return at 0x10010620 has v0 = [0x100249bc].

- `vfcFillDmxFormatInformation` in `usr/gfx/dmconf` at 0x10010630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10010630-0x10011650 (4128 bytes).
  It occupies 4128 bytes.
  The `lw` at 0x10010650 loads 4 bytes from a0 (arg0 at entry) +0x1484.
  The `lw` at 0x10010678 loads 4 bytes from table(0x10021d08) +0x0.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1494, including `sw` at 0x100106ac, `sw` at 0x100107d0, `sw` at 0x100108f4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1498, including `sw` at 0x100106bc, `sw` at 0x100107e0, `sw` at 0x10010904.
  14 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x14d0, including `swc1` at 0x100106c8, `swc1` at 0x100107ec, `swc1` at 0x10010910.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14a4, including `sw` at 0x100106d4, `sw` at 0x100107f8, `sw` at 0x1001091c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14a8, including `sw` at 0x100106e0, `sw` at 0x10010804, `sw` at 0x10010928.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14c4, including `sw` at 0x100106ec, `sw` at 0x10010810, `sw` at 0x10010940.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14ac, including `sw` at 0x100106f8, `sw` at 0x1001081c, `sw` at 0x10010934.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14b0, including `sw` at 0x10010704, `sw` at 0x10010828, `sw` at 0x1001094c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14b4, including `sw` at 0x10010710, `sw` at 0x10010834, `sw` at 0x10010958.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14b8, including `sw` at 0x1001071c, `sw` at 0x10010840, `sw` at 0x10010960.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14bc, including `sw` at 0x10010728, `sw` at 0x1001084c, `sw` at 0x1001096c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14c0, including `sw` at 0x10010734, `sw` at 0x10010858, `sw` at 0x10010974.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14d4, including `sw` at 0x10010744, `sw` at 0x10010868, `sw` at 0x10010984.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14d8, including `sw` at 0x10010750, `sw` at 0x10010874, `sw` at 0x10010990.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14dc, including `sw` at 0x1001075c, `sw` at 0x10010880, `sw` at 0x1001099c.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14e0, including `sw` at 0x10010764, `sw` at 0x10010888, `sw` at 0x100109ac.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14e4, including `sw` at 0x10010770, `sw` at 0x10010894, `sw` at 0x100109b4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14e8, including `sw` at 0x10010778, `sw` at 0x1001089c, `sw` at 0x100109bc.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14ec, including `sw` at 0x10010780, `sw` at 0x100108a4, `sw` at 0x100109c4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14f0, including `sw` at 0x10010788, `sw` at 0x100108ac, `sw` at 0x100109cc.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14f4, including `sw` at 0x10010790, `sw` at 0x100108b4, `sw` at 0x100109d4.
  14 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14f8, including `sw` at 0x10010798, `sw` at 0x100108bc, `sw` at 0x100109dc.
  The `jalr` at 0x10010698 calls sprintf with a0=a0+4996, a1=0x10021d48, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100107bc calls sprintf with a0=a0+4996, a1=0x10021d58, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100108e0 calls sprintf with a0=a0+4996, a1=0x10021d68, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100109fc calls sprintf with a0=a0+4996, a1=0x10024668, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010b1c calls sprintf with a0=a0+4996, a1=0x10021d78, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010c64 calls sprintf with a0=a0+4996, a1=0x10024670, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010d98 calls sprintf with a0=a0+4996, a1=0x10021d88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010ebc calls sprintf with a0=a0+4996, a1=0x10021d98, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10010fe0 calls sprintf with a0=a0+4996, a1=0x10021da8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011614 calls sprintf with a0=sym(szErrorStr), a1=0x10021db8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001066c targets 0x10011604, is taken when at(=[a0+5252]) >= 0x10 (unsigned), and falls through when at(=[a0+5252]) < 0x10 (unsigned).
  The `beq` branch at 0x100107a0 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100108c4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100109e4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010b00 targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010c4c targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010d7c targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010ea0 targets 0x10011638 and is always taken.
  The `beq` branch at 0x10010fc4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100110e8 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100111ec targets 0x10011638 and is always taken.
  The `beq` branch at 0x100112f0 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100113f4 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100114f8 targets 0x10011638 and is always taken.
  The `beq` branch at 0x100115fc targets 0x10011638 and is always taken.
  The `beq` branch at 0x10011624 targets 0x10011638 and is always taken.
  The return at 0x10011648 has v0 = one of 0x0, 0x2.
  The instructions from 0x1001162c to 0x10011634 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1001067c uses the jump table at 0x10021d08 with targets 0x10011604, 0x10010684, 0x100107a8, 0x10010d84, 0x100108cc, 0x100109ec, 0x100110f0, 0x100111f4, 0x100112f8, 0x10010ea8, 0x10010fcc, 0x10011604, 0x10010b08, 0x10010c54, 0x100113fc, 0x10011500.

- `vfcQueryOdysseyTarget` in `usr/gfx/dmconf` at 0x10011650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10011650-0x10011674 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0x10011664 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x1001166c has v0 = a1.

- `vfmtIsCmpCombinationValidForTarget` in `usr/gfx/dmconf` at 0x10011680 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x10011680-0x100119a8 (808 bytes).
  It occupies 808 bytes.
  The `lbu` at 0x100116b0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x100116ec loads 1 byte from a0 (arg0 at entry) +0xff.
  The `lbu` at 0x10011728 loads 1 byte from a0 (arg0 at entry) +0x1fe.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55c, including `lw` at 0x10011760, `lw` at 0x10011780.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xab4, including `lw` at 0x10011768, `lw` at 0x10011778.
  4 such `ldc1` accesses load 8 bytes from a0 (arg0 at entry) +0x550, including `ldc1` at 0x100117bc, `ldc1` at 0x10011804, `ldc1` at 0x10011830.
  5 such `ldc1` accesses load 8 bytes from a0 (arg0 at entry) +0xaa8, including `ldc1` at 0x1001180c, `ldc1` at 0x1001181c, `ldc1` at 0x10011838.
  The `lw` at 0x100118fc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x10011904 loads 4 bytes from a0 (arg0 at entry) +0x350.
  The `sb` at 0x1001194c stores 1 byte to a2 (arg2 at entry) +0x0.
  The `sb` at 0x1001198c stores 1 byte to ?.
  The `jalr` at 0x100116d0 calls sprintf with a0=0x10027790, a1=0x10021dd8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1001170c calls sprintf with a0=0x10027790, a1=0x10021e00, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011748 calls sprintf with a0=0x10027790, a1=0x10021e28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100117a4 calls sprintf with a0=0x10027790, a1=0x10021e58, a2=[a0+2740], a3=([a0+1372] + [a0+1372]).
  The `jalr` at 0x100117ec calls sprintf with a0=0x10027790, a1=0x10021e98, a2=[a0+2740], a3=?.
  The `jalr` at 0x100118cc calls snprintf with a0=sp-256, a1=0xc8, a2=0x10021ec0, a3=?, a5=a0 at entry (arg0), a6=a0 at entry (arg0), a7=a0 at entry (arg0).
  The `jalr` at 0x100118e4 calls sprintf with a0=0x10027790, a1=sp-256, a2=?, a3=?.
  The `jalr` at 0x10011928 calls sprintf with a0=0x10027790, a1=0x10021ef8, a2=[a0+848], a3=a0 at entry (arg0), a4=a0 at entry (arg0), a5=a0 at entry (arg0), a6=a0 at entry (arg0).
  The `jalr` at 0x10011974 calls strncpy with a0=a2 at entry (arg2), a1=0x10027790, a2=?, a3=?.
  The `bne` branch at 0x100116b4 targets 0x100116e4, is taken when at(=[a0]:1) != 0, and falls through when at(=[a0]:1) == 0.
  The `beq` branch at 0x100116dc targets 0x10011950 and is always taken.
  The `bne` branch at 0x100116f0 targets 0x10011720, is taken when a1(=[a0+255]:1) != 0, and falls through when a1(=[a0+255]:1) == 0.
  The `beq` branch at 0x10011718 targets 0x10011950 and is always taken.
  The `bne` branch at 0x1001172c targets 0x1001175c, is taken when a1(=[a0+510]:1) != 0, and falls through when a1(=[a0+510]:1) == 0.
  The `beq` branch at 0x10011754 targets 0x10011950 and is always taken.
  The `beq` branch at 0x1001176c targets 0x100117b8, is taken when a1(=[a0+1372]) == a2(=[a0+2740]), and falls through when a1(=[a0+1372]) != a2(=[a0+2740]).
  The `beq` branch at 0x10011788 targets 0x100117b8, is taken when a2(=[a0+2740]) == a3(=([a0+1372] + [a0+1372])), and falls through when a2(=[a0+2740]) != a3(=([a0+1372] + [a0+1372])).
  The `beq` branch at 0x100117b0 targets 0x10011950 and is always taken.
  The `bc1f` branch at 0x100117d0 targets 0x10011800, is taken when not (f0(=[a0+1360]:8) == f1 (c.eq.d at 0x100117c8)), and falls through when f0(=[a0+1360]:8) == f1 (c.eq.d at 0x100117c8).
  The `beq` branch at 0x100117f8 targets 0x10011950 and is always taken.
  The `bc1f` branch at 0x10011874 targets 0x100118f8, is taken when not (f2(=0x3f847ae147ae147b) < f3 (c.lt.d at 0x1001186c)), and falls through when f2(=0x3f847ae147ae147b) < f3 (c.lt.d at 0x1001186c).
  The `bc1f` branch at 0x10011890 targets 0x100118f8, is taken when not (f9(=0x3f947ae147ae147b) < f10 (c.lt.d at 0x10011888)), and falls through when f9(=0x3f947ae147ae147b) < f10 (c.lt.d at 0x10011888).
  The `beq` branch at 0x100118f0 targets 0x10011950 and is always taken.
  The `beq` branch at 0x1001190c targets 0x1001193c, is taken when a1(=[a1]) >= a2(=[a0+848]) (signed), and falls through when a1(=[a1]) < a2(=[a0+848]) (signed).
  The `beq` branch at 0x10011934 targets 0x10011950 and is always taken.
  The `blez` branch at 0x10011954 targets 0x10011990, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The return at 0x100119a0 has v0 = one of 0x0, 0x1.

- `vfmtIsCombinationValidForDmxTarget` in `usr/gfx/dmconf` at 0x100119b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x100119b0-0x10011ba4 (500 bytes).
  It occupies 500 bytes.
  The `lbu` at 0x100119e0 loads 1 byte from a0 (arg0 at entry) +0xff.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x354, including `lw` at 0x10011a1c, `lw` at 0x10011a50.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x148c, including `lw` at 0x10011a28, `lw` at 0x10011a84.
  The `lw` at 0x10011a34 loads 4 bytes from a0 (arg0 at entry) +0x1494.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1490, including `lw` at 0x10011a5c, `lw` at 0x10011a98.
  The `lw` at 0x10011a68 loads 4 bytes from a0 (arg0 at entry) +0x1498.
  The `lw` at 0x10011ad0 loads 4 bytes from a0 (arg0 at entry) +0x55c.
  The `lw` at 0x10011ad8 loads 4 bytes from a0 (arg0 at entry) +0x560.
  The `ldc1` at 0x10011af4 loads 8 bytes from a0 (arg0 at entry) +0x550.
  The `sb` at 0x10011b48 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `sb` at 0x10011b88 stores 1 byte to ?.
  The `jalr` at 0x10011a00 calls sprintf with a0=0x10027790, a1=0x10021f20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10011ab8 calls sprintf with a0=0x10027790, a1=0x10021f48, a2=?, a3=?.
  The `jalr` at 0x10011b24 calls sprintf with a0=0x10027790, a1=0x10021f80, a2=?, a3=[a0+1372], a4=[a0+1376].
  The `jalr` at 0x10011b70 calls strncpy with a0=a1 at entry (arg1), a1=0x10027790, a2=?, a3=?.
  The `bne` branch at 0x100119e4 targets 0x10011a14, is taken when at(=[a0+255]:1) != 0, and falls through when at(=[a0+255]:1) == 0.
  The `beq` branch at 0x10011a0c targets 0x10011b4c and is always taken.
  The `bne` branch at 0x10011a40 targets 0x10011aa4, is taken when a1(=[a0+852]) < a2(=([a0+5260] + [a0+5268])) (signed), and falls through when a1(=[a0+852]) >= a2(=([a0+5260] + [a0+5268])) (signed).
  The `bne` branch at 0x10011a74 targets 0x10011aa4, is taken when a2(=[a0+852]) < a3(=([a0+5264] + [a0+5272])) (signed), and falls through when a2(=[a0+852]) >= a3(=([a0+5264] + [a0+5272])) (signed).
  The `bltz` branch at 0x10011a88 targets 0x10011aa4, is taken when a3(=[a0+5260]) < 0 (signed), and falls through when a3(=[a0+5260]) >= 0 (signed).
  The `bgez` branch at 0x10011a9c targets 0x10011acc, is taken when a4(=[a0+5264]) >= 0 (signed), and falls through when a4(=[a0+5264]) < 0 (signed).
  The `beq` branch at 0x10011ac4 targets 0x10011b4c and is always taken.
  The `bc1f` branch at 0x10011b08 targets 0x10011b38, is taken when not (f0(=0x41a3ab6680000000) < f1 (c.lt.d at 0x10011b00)), and falls through when f0(=0x41a3ab6680000000) < f1 (c.lt.d at 0x10011b00).
  The `beq` branch at 0x10011b30 targets 0x10011b4c and is always taken.
  The `blez` branch at 0x10011b50 targets 0x10011b8c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The return at 0x10011b9c has v0 = one of 0x0, 0x1.

- `GLwCreateMDrawingArea` in `usr/gfx/dmconf` at 0x1001c9cc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1001c9cc-0x1001ca1c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1001ca08 loads 4 bytes from sym(glwMDrawingAreaWidgetClass) +0x0.
  The `jalr` at 0x1001ca04 calls XtCreateWidget with a0=a1 at entry (arg1), a1=[sym(glwMDrawingAreaWidgetClass)], a2=a0 at entry (arg0), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a2 at entry (arg2), a6=a0 at entry (arg0).
  The return at 0x1001ca14 has v0 = ret(XtCreateWidget).

- `GLwDrawingAreaMakeCurrent` in `usr/gfx/dmconf` at 0x1001ca1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1001ca1c-0x1001ca84 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1001ca1c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1001ca20 loads 1 byte from [a0+4] +0x14.
  The `lw` at 0x1001ca48 loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1001ca4c loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1001ca50 loads 4 bytes from [a0+88] +0x4.
  The `lw` at 0x1001ca70 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001ca74 loads 4 bytes from [a0+8] +0x58.
  The `lw` at 0x1001ca78 loads 4 bytes from [a0+8] +0x60.
  The `lw` at 0x1001ca80 loads 4 bytes from [[a0+8]+88] +0x4.
  The `jalr` at 0x1001ca58 calls glXMakeCurrent with a0=?, a1=?, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001ca40 targets 0x1001ca70, is taken when (at(=[[a0+4]+20]:1) & 0x4) == 0, and falls through when (at(=[[a0+4]+20]:1) & 0x4) != 0.
  The `beq` branch at 0x1001ca7c targets 0x1001ca54 and is always taken.
  The return at 0x1001ca68 has v0 = ret(glXMakeCurrent).

- `GLwDrawingAreaSwapBuffers` in `usr/gfx/dmconf` at 0x1001ca84 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/dmconf`.
  Range: 0x1001ca84-0x1001cae8 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x1001ca84 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1001ca88 loads 1 byte from [a0+4] +0x14.
  The `lw` at 0x1001caac loads 4 bytes from a0 (arg0 at entry) +0x58.
  The `lw` at 0x1001cab0 loads 4 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x1001cab4 loads 4 bytes from [a0+88] +0x4.
  The `lw` at 0x1001cad4 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1001cad8 loads 4 bytes from [a0+8] +0x58.
  The `lw` at 0x1001cadc loads 4 bytes from [a0+8] +0x60.
  The `lw` at 0x1001cae4 loads 4 bytes from [[a0+8]+88] +0x4.
  The `jalr` at 0x1001cabc calls glXSwapBuffers with a0=?, a1=?, a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x1001caa4 targets 0x1001cad4, is taken when (at(=[[a0+4]+20]:1) & 0x4) == 0, and falls through when (at(=[[a0+4]+20]:1) & 0x4) != 0.
  The `beq` branch at 0x1001cae0 targets 0x1001cab8 and is always taken.
  The return at 0x1001cacc has v0 = ret(glXSwapBuffers).
