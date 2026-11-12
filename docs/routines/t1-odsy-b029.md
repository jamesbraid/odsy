# Tier-1 routine readings, batch 29

Role statements for the located routines in the hardware-facing tier-1 list at ranks 725 to 746 (22 routines). Each statement is drawn from the rendered facts for its exact binary range: register use, stores, calls and constants. None of them establishes hardware behavior. The immediate-mode entries in `libGLcore.so` store to one absolute address, and what that address maps to is not confirmed.

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319940
  **Inferred.** The name suggests the immediate-mode four-coordinate integer vertex call. The body is five word stores to the absolute address 0x10000 (`sw` at 0x231996c, 0x2319970 and 0x2319974 among them) and it returns with v0 = 0x10000 at 0x231997c. The facts do not show which argument register feeds which store, so the vertex layout is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231e800
  **Inferred.** The name suggests the texture-coordinate call with three doubles. The body has one word store at 0x231e818 and three single-float stores at 0x231e81c, 0x231e820 and 0x231e828, all to 0x10000, then returns v0 = 0x10000 at 0x231e824. The split of the double arguments into those stores is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231ef00
  **Inferred.** The name suggests a three-byte color entry that writes into a scratch record. The body is four word stores to 0x10000 (`sw` at 0x231ef0c, 0x231ef10 and 0x231ef14) followed by a return with v0 = 0x10000 at 0x231ef18. The record layout the stores fill is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231efc0
  **Inferred.** The name suggests the three-component double color call. The body makes one word store at 0x231efd8 and three single-float stores at 0x231efdc, 0x231efe0 and 0x231efe8, all to 0x10000, and returns v0 = 0x10000 at 0x231efe4. Which store carries which component is not established.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f000
  **Inferred.** The name suggests the same three-double color call as `Color3d`, with a scratch destination. The body is one word store at 0x231f018 and three single-float stores at 0x231f01c, 0x231f020 and 0x231f028, all to 0x10000, then a return with v0 = 0x10000 at 0x231f024. The facts do not separate it from `Color3d` beyond its address.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f200
  **Inferred.** The name suggests the three-integer color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f20c, 0x231f210 and 0x231f214) and a return with v0 = 0x10000 at 0x231f218. No argument loads appear in the facts, so the source of the stored values is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f300
  **Inferred.** The name suggests the three-short color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f30c, 0x231f310 and 0x231f314) and a return with v0 = 0x10000 at 0x231f318. The width of the stored values is not confirmed beyond the word stores.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f500
  **Inferred.** The name suggests the three-unsigned-integer color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f50c, 0x231f510 and 0x231f514) and a return with v0 = 0x10000 at 0x231f518. The facts do not show the stored values' origin.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f600
  **Inferred.** The name suggests the three-unsigned-short color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f60c, 0x231f610 and 0x231f614) and a return with v0 = 0x10000 at 0x231f618. Its facts have the same shape as `ScratchColor3i`, `ScratchColor3s` and `ScratchColor3ui` in this batch, and nothing in them separates it from those.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f700
  **Inferred.** The name suggests the four-byte color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231f70c, 0x231f710 and 0x231f714 among them) and a return with v0 = 0x10000 at 0x231f71c. The facts do not show how the four components map onto the five stored words.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f8c0
  **Inferred.** The name suggests the color call taking a pointer to four doubles. The facts show four 8-byte `ldc1` loads from the argument in a0 at offsets 0x0, 0x8, 0x10 and 0x18 (at 0x231f8c0, 0x231f8cc, 0x231f8d4 and 0x231f8dc), then one word store at 0x231f8e4 and four single-float stores at 0x231f8ec, 0x231f8f4 and 0x231f8f8 among them, all to 0x10000. It returns v0 = 0x10000 at 0x231f8fc.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fa80
  **Inferred.** The name suggests the four-integer color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fa8c, 0x231fa90 and 0x231fa94 among them) and a return with v0 = 0x10000 at 0x231fa9c. The facts do not show which argument becomes which stored word.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fb80
  **Inferred.** The name suggests the four-short color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fb8c, 0x231fb90 and 0x231fb94 among them) and a return with v0 = 0x10000 at 0x231fb9c. The width of the stored values beyond the word stores is not established.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fc80
  **Inferred.** The name suggests the four-unsigned-byte color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fc8c, 0x231fc90 and 0x231fc94 among them). The facts do not show the mapping from the byte arguments to those stores.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fd80
  **Inferred.** The name suggests the four-unsigned-integer color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fd8c, 0x231fd90 and 0x231fd94 among them). The facts show no argument loads, so the stored values' origin is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fe80
  **Inferred.** The name suggests the four-unsigned-short color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fe8c, 0x231fe90 and 0x231fe94 among them). Its facts have the same shape as `ScratchColor4i`, `ScratchColor4s`, `ScratchColor4ub` and `ScratchColor4ui` in this batch, and the difference between them is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231ff80
  **Inferred.** The name suggests the double color-index call with a scratch destination. The body makes one word store at 0x231ff90 and one single-float store at 0x231ff98, both to 0x10000. The facts do not show how the double argument is split across those two stores.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/dmconf` at 0x10008850
  **Inferred.** This looks like the startup path of the display configuration tool. It calls `InitEZ__Gv` at 0x10008874 with its own four entry arguments and `vfcDoCommandLine` at 0x10008890 with two stack addresses and two data symbols (`combination`, `work_order`). It then allocates and constructs an application object (`__ct__5VkAppGPcPiPPcP16XrmOptionDescReci` at 0x1000890c) and a window-class object (`__ct__17DmconfWindowClassGPCcP3ArgUi` at 0x10008984), each constructor call guarded by a null check on the allocation. Two indirect calls at 0x100089dc and 0x10008a04 have no resolved callee, so the later control flow is partly open. It calls `exit` at 0x100088a0 with a0 = 0.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/gfxinfo` at 0x10005888
  **Inferred.** This looks like a graphics information query tool. It parses options with `getopt` at 0x100059e0 and 0x10005a2c, opens a device node at 0x10005a78 (`open` with flags 0x802), and sends `ioctl` request 0x65 at 0x10005ab8, the only direct `ioctl` call in the facts. It reports through `syslog` and `fprintf` on its error paths, calls `malloc` at 0x10005ae0 (size not shown), and parses FIFO settings with `sscanf` at 0x100060b0 to 0x100060e0. Several callees are indirect, so the full query sequence is partly open.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/gfxinit` at 0x10005888
  **Inferred.** The rendered facts match `main` in `usr/gfx/gfxinfo` line for line, including the `ioctl` request 0x65, the device `open` with flags 0x802 and the `sscanf` FIFO parsing. Both binaries put this routine at the same address with the same size (2192 bytes), so the code is probably the same build of one source file, but that is not verified here. The purpose inferred from the name is a graphics init step, which the facts do not confirm.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/setmon` at 0x10008e8c
  **Inferred.** This looks like a monitor and screen setting tool. It reads an environment variable with `getenv` at 0x10008eb4 and parses it with `strchr` and `atoi`, opens a device with flags 0x802 at 0x10008fe8, and issues `ioctl` request 0x65 at 0x1000900c (a2 = 0) and request 0x66 at 0x100090c8 and 0x100091a0 with a2 = 0x100427e0. It calls `realloc` on the info buffer at 0x10009164, with the size taken from offset 0x24 of that buffer, parses options with `getopt` at 0x10009240 and 0x10009288, and calls `Usage` from many sites, among them 0x1000926c and 0x100093a0. The meaning of the 0x66 request is not established.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/sgcombine` at 0x1000fba0
  **Inferred.** This has the same startup shape as `dmconf`. It calls `InitEZ__Gv` at 0x1000fbc0 and `vfcDoCommandLine` at 0x1000fbd8, then constructs an application object (`__ct__5VkAppGPcPiPPcP16XrmOptionDescReci` at 0x1000fc2c), a window-class object (`__ct__20StcombineWindowClassGPCcP3ArgUi` at 0x1000fc84) and a file-browser object (`__ct__22SmallFormatFileBrowserGPCc` at 0x1000fce8). Its two indirect calls at 0x1000fcb4 and 0x1000fd18 have no resolved callees, so what the combine window does is unknown.
  Reviewed: 2026-11-12
