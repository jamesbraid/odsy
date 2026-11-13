# Odsy routine roles, rows 350 to 374 of the ranked list

Each entry names a routine from the rendered facts of its exact binary range. The facts give addresses, calls, constants and memory accesses. They do not give what a routine means as a whole, so every grade here is **inferred**, and the roles are guesses from names and call order where the text says so. Routines are the located, hardware-linked rows of the odsy inventory, taken in ranked order from position 350 on. All 25 rendered and passed the grader; none were rejected.

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfa80: **inferred.**
  `__glOdyim_ScratchColor3i` makes no calls. It stores four words to the absolute address 0x4000 (`sw` at 0xbebfa88, 0xbebfa8c and 0xbebfa90, plus one more in the same group) and returns at 0xbebfa94 with v0 unset. The name suggests it sets a color scratch word from three integer components, but the facts do not show where the stored values come from, and nothing in the range shows who reads 0x4000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfb80: **inferred.**
  `__glOdyim_ScratchColor3s` has the same shape as the entry at 0xbebfa80: four stores to the absolute address 0x4000 (`sw` at 0xbebfb88, 0xbebfb8c and 0xbebfb90, plus one more), no calls, and a return at 0xbebfb94. The name suggests a three-component short color. The facts give no source for the values and no reader for 0x4000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfd80: **inferred.**
  `__glOdyim_ScratchColor3ui` is the same four-store pattern to 0x4000 (`sw` at 0xbebfd88, 0xbebfd8c and 0xbebfd90, plus one more), with no calls and a return at 0xbebfd94. The name suggests an unsigned-int color. The facts do not show the value sources.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfe80: **inferred.**
  `__glOdyim_ScratchColor3us` stores four words to 0x4000 (`sw` at 0xbebfe88, 0xbebfe8c and 0xbebfe90, plus one more) and returns at 0xbebfe94 with no calls. The name suggests an unsigned-short color. Value sources and the reader of 0x4000 are not in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebff80: **inferred.**
  `__glOdyim_ScratchColor4b` is 32 bytes with no calls. It stores five words to 0x4000 (`sw` at 0xbebff88, 0xbebff8c and 0xbebff90, plus two more) and returns at 0xbebff98. The name suggests a four-component byte color. The facts do not show the stored values.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0100: **inferred.**
  `__glOdyim_ScratchColor4dv` loads four doubles from its argument record, at offsets +0x0, +0x8, +0x10 and +0x18 (`ldc1` at 0xbec0100 through 0xbec0118). It then makes five stores to 0x4000: one `sw` at 0xbec0120 and four `swc1` (named at 0xbec0128, 0xbec0130 and 0xbec0134). It makes no calls and returns at 0xbec0138. The name suggests a four-component double color written as scratch words, which fits the loads. The facts do not say how the doubles become the stored words, so the conversion is open.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0280: **inferred.**
  `__glOdyim_ScratchColor4i` is 32 bytes, with five stores to 0x4000 (`sw` at 0xbec0288, 0xbec028c and 0xbec0290, plus two more) and no calls. It returns at 0xbec0298. The name suggests a four-component int color. Value sources are not in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0380: **inferred.**
  `__glOdyim_ScratchColor4s` matches the 4i entry: five stores to 0x4000 (`sw` at 0xbec0388, 0xbec038c and 0xbec0390, plus two more), no calls, return at 0xbec0398. The name suggests a four-component short color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0480: **inferred.**
  `__glOdyim_ScratchColor4ub` is the same five-store pattern to 0x4000 (`sw` at 0xbec0488, 0xbec048c and 0xbec0490, plus two more), with no calls and a return at 0xbec0498. The name suggests a four-component unsigned-byte color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0580: **inferred.**
  `__glOdyim_ScratchColor4ui` stores five words to 0x4000 (`sw` at 0xbec0588, 0xbec058c and 0xbec0590, plus two more), makes no calls and returns at 0xbec0598. The name suggests a four-component unsigned-int color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0680: **inferred.**
  `__glOdyim_ScratchColor4us` stores five words to 0x4000 (`sw` at 0xbec0688, 0xbec068c and 0xbec0690, plus two more), makes no calls and returns at 0xbec0698. The name suggests a four-component unsigned-short color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0780: **inferred.**
  `__glOdyim_ScratchIndexd` is 24 bytes with no calls. It stores one word to 0x4000 with `sw` at 0xbec078c and one with `swc1` at 0xbec0794, then returns at 0xbec0790. The name suggests a double color index written as an integer word and a float word. The facts give the width of each store but not its source, so the conversion is unclear.
  Reviewed: 2026-11-12

- `main` in `usr/bin/X11/xsetmon` at 0x1003ca70: **inferred.**
  `main` of the `xsetmon` utility (role from the name and path). It calls `InitEZ__Gv` (0x1003ca90), `setlocale` (0x1003caa0), `XtSetLanguageProc` (0x1003cab4), `setFallbacks__5VkAppSGPPc` (0x1003cac4) and `__nw__GUi` with 0x140 (0x1003cad4). Only the constructor call (0x1003cb04) depends on the allocation: when `__nw__GUi` returns nonzero it builds the `xsetmon` object with `__ct__7xsetmonGPcPiPPcP16XrmOptionDescReci`, and when it returns zero the branch at 0x1003cae0 skips it. Both outcomes then reach `createWindows__7xsetmonGv` (0x1003cb2c) and `setTitle__7xsetmonGv` (0x1003cb64). One extra unknown call at 0x1003cb58 runs only when the word at +136 of the record the global `xsetmonApp` points to is nonzero. A second unknown call at 0x1003cb84 runs only when a byte read at 0x1003cb6c is nonzero; `exit` with 0 (0x1003cb90) follows on both paths. The call order fits a standard toolkit application start, with the unknown calls probably the event loop, but the facts do not name it and do not show the window contents.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10218270: **inferred.**
  `main` of the X server image, 5600 bytes. This covers the call list and the named globals, not every access line. It calls `ProcessCommandLine` (0x102182f0) and `OsInit` (0x10218460). A branch at 0x10218470 compares `serverGeneration` with 1: one side runs `CreateWellKnownSockets` (0x10219470), the other `ResetWellKnownSockets` (0x10218478). It then sets up client resources (`InitClientResources`, 0x10218498) and the screen table (`Xalloc` at 0x102184d8, `InitOutput` at 0x1021855c), and calls atoms, events and callback-manager setup (`InitAtoms`, `InitEvents`, `InitCallbackManager`), extensions (`InitExtensions`, 0x1021858c), input (`InitInput`, 0x10218e54) and devices (`InitAndStartDevices`, 0x10218e5c), then fonts and the default font and cursor (`InitFonts` at 0x10218e74, `CreateRootCursor` at 0x10218ea8). `Dispatch` has two call sites (0x10219084 and 0x102190a4), one on each side of the branch at 0x10218fe4 on `panoramiXDisabled`, each after a `CreateConnectionBlock` call; that suggests the request loop. Many failure branches call `FatalError`. A `sysconf` check against 0x101 (0x102197b8) is reached when the word at 0x102c5d74 is zero; the facts do not explain it.
  Reviewed: 2026-11-12

- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820d58: **inferred.**
  `glXSelectEventSGIX` calls `__glXSetupForCommand` (0xd820d80) and, when that call returns 0, skips to the epilogue at 0xd820e7c. Otherwise it writes a small request into the buffer pointed to by argument 0 +0x6c (`sb` at 0xd820df4 and 0xd820e1c, `sh` at 0xd820df0, `sw` at 0xd820e20 through 0xd820e3c). `_XFlush` (0xd820dd4) runs only when the buffer-space compare at 0xd820dc4 ([a0+112] against [a0+108]+24) falls through. It passes the constant 0x10 to the helper at 0xd820e54, which runs only when [a0+1232] is nonzero; this may mean a 16-byte request, though the facts do not confirm the size. The name points to the SGIX event-selection request. The meaning of the two other helpers (0xd820da8, 0xd820e70) and of the return value, which is one of [a0+124] or unknown, are open.
  Reviewed: 2026-11-12

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8213d0: **inferred.**
  `glXDestroyGLXPbufferSGIX` runs the command setup (`__glXSetupForCommand`, 0xd8213f4). When that call returns nonzero, it adds interest in the drawable argument (`__glXAddDrawableInterest`, 0xd821410), then removes that interest (`__glXRemoveDrawableInterest`, 0xd821428) and frees the drawable private (`__glXFreeDrawablePrivate`, 0xd821450), both on the value the add returned. The branch at 0xd82143c, on a word at +0x14 of that value, only decides whether a store at 0xd821444 runs before the free. A zero return from the setup call branches at 0xd821400 past all of this to 0xd821534. The call order suggests it tears down the client record for a pbuffer. The same nonzero path also writes a request into the buffer at argument 0 +0x6c, calls `_XFlush` (0xd82149c) only when the buffer-space compare at 0xd82148c falls through, and calls a helper with 0x10 (0xd82150c) when [a0+1232] is nonzero. What the return value means beyond being one of [a0+124] or unknown at 0xd821540 is not established.
  Reviewed: 2026-11-12

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823b00: **inferred.**
  `glXCreateGLXPbufferSGIX` runs the command setup (0xd823b30); when it returns 0 the routine returns 0 with no error posted. Otherwise it calls an unnamed helper (0xd823b5c) and then adds interest in the drawable (`__glXAddDrawableInterest`, 0xd823b74). It posts error code 0xb with `__glXPostError` (0xd823b9c) when that add returns 0. It copies argument 1 fields at +0x24 and +0x48 (0xd823cb4, 0xd823cc4) into the request buffer at argument 0 +0x6c, calls `_XFlush` (0xd823c4c) only when the buffer-space compare at 0xd823c34 falls through, and reads a reply with `_XReply` (0xd823d2c). When `_XReply` returns 0 it posts hidden error 0x11 (`__glXPostHiddenError`, 0xd823d88), removes and frees the interest it added, and returns 0. When `_XReply` returns nonzero it removes the interest (0xd823e10) and returns the result of the helper at 0xd823b5c, a pointer-like value (0xd823e2c). The facts do not say what the reply holds or what the pbuffer record stores, so the role is inferred from the name.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824394: **inferred.**
  `__glXSendMakeCurrentRead` runs the command setup (0xd8243c0). A branch at 0xd8243f4 on a stack local the facts do not name skips the first request to the second one at 0xd82453c. The first request is written into the buffer at argument 0 +0x6c (`_XFlush` at 0xd82441c only when the buffer-space compare at 0xd82440c falls through), with fields from argument 0 and argument 1 +0x14 (0xd8244a8), and its reply is read with `_XReply` into argument 3 (0xd8244b8). A second request follows (flush at 0xd824558, again conditional) and a second `_XReply` into argument 3 (0xd8245e4). A failed first reply posts hidden error 0x11 (0xd824518) and a failed second reply posts 0x1a (0xd824644). After the second reply, failed or not, when the word at argument 3 +4 is nonzero, it allocates a 16-byte block (`malloc` at 0xd824670), reads 0x10 bytes into it with `_XRead` (0xd824690), loads four words from it and frees it (0xd8246f0). The name points to a make-current-with-read request, but the facts do not say what the 16-byte read holds or how the two reply paths differ. It returns 0 or 1 (0xd824748).
  Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824750: **inferred.**
  `glXWaitVideoSyncSGI` loads the word at absolute 0x1014, a process global. It reads the word at +0x114 of that value and, when it is nonzero, a field at +0xc4 of the record it points to (0xd824788); if either is zero it returns 5. Arguments 0 and 1 are range-checked (the branches at 0xd82479c and 0xd8247a4), and a failed check returns 6. Otherwise it reads +0xcc of the record (0xd8247b0) and calls `ioctl` with request 0x3ff (0xd8247ec). The file descriptor is the word at [global + 4*[global+0x108] + 4], and the third `ioctl` argument is a stack buffer (sp-20); argument 0 is also passed in a3, which the facts do not tie to the ioctl. After the call it stores a 4-byte word from the stack buffer through argument 2 (0xd824804) and returns 0. The routine returns 0, 5 or 6 (0xd824810). The name is the video-sync wait extension, so the ioctl probably waits on the retrace count, but the request number and the device are not named in the facts.
  Reviewed: 2026-11-12

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827654: **inferred.**
  `glXCreateGLXPixmapWithConfigSGIX` runs the command setup (`__glXSetupForCommand`, 0xd82767c) and writes a request into the buffer at argument 0 +0x6c, with fields taken from argument 1 +0x24 and +0x48 (0xd827730, 0xd82773c). It stores to argument 0 +0x60, +0x64 and +0x6c, and flushes with `_XFlush` on one path (0xd8276d8). Three unnamed helpers follow (0xd8276ac, 0xd827754 with the constant 0x10, and 0xd827780), and the routine returns 0 or a pointer-like value (0xd8277b8). The name points to creating a GLX pixmap from a config, but the facts do not show what the helpers do.
  Reviewed: 2026-11-12

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8342dc: **inferred.**
  `isNotProxy` compares the word at argument 0 +0x24 with 0x40 and, when it is 0x40 or more, returns 0 without opening anything. Otherwise it opens a path string at 0xd840d08 with flags 0x802 (`open` at 0xd834328) and calls `fcntl` with command 2 (0xd834350). It then issues `ioctl` with request 0x65 (0xd834388); a result of 0 or below closes the descriptor and returns 0. It issues a second `ioctl` with request 0x66 (0xd834400) only when the word at argument 0 +0x24 is below the first result (otherwise it closes and returns 0), and closes the descriptor after it (0xd834418 on failure, 0xd834430 otherwise). It then searches the string at argument 0 +0x80 for a colon with `strchr` (0xd83444c) and returns 0 or 1 (0xd8344c8). The name suggests a check that the display is not a proxy, but the facts do not show the rule that maps the ioctl results to 0 or 1. Treat the meaning of the result as open.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838214: **inferred.**
  `GetFBConfigsSGIX` calls an unnamed routine near entry (0xd838264) only when [a0+1232] is nonzero, calls `_XFlush` (0xd838290) only when the buffer-space compare at 0xd838280 falls through, and reads a reply with `_XReply` into a stack buffer (0xd838304). It allocates with `malloc` (0xd838404, 0xd838484), clears a block with `memset` (0xd838504), and reads more data with `_XRead` (0xd83859c). It calls `__glXOverrideVisualGetVisualInfo` with argument 0, the constant 3 and two stack slots (0xd838874); when that returns nonzero it reads words at +0x14, +0x18 and +0x1c of the record it returns (0xd838888 through 0xd838898) and frees that record with `free` (0xd8388a8). It calls `XFree` (0xd8388d0) and returns 0 or 1 (0xd83890c). The name points to the list of framebuffer configs for a display, which fits the visual-info lookup. The facts do not show how the list is built.
  Reviewed: 2026-11-12

- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839878: **inferred.**
  `glXJoinSwapGroupSGIX` runs the command setup (`__glXSetupForCommand`, 0xd8398a0), calls `_XFlush` (0xd8398f0) only when the buffer-space compare at 0xd8398e0 falls through, and writes a request into the buffer at argument 0 +0x6c (`sh` at 0xd83990c, `sb` at 0xd839938, `sw` at 0xd83993c through 0xd839950). It calls two unnamed routines (0xd8398c4, 0xd839984) and one with the constant 0x10 (0xd839968), each only when its guard word ([a0+1232] or [a0+124]) is nonzero. The facts show no reply read. The name points to joining a swap group. It returns [a0+124] or an unknown value (0xd83999c). The role of the unnamed calls is open.
  Reviewed: 2026-11-12

- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839ad0: **inferred.**
  `glXQueryMaxSwapBarriersSGIX` runs the command setup (`__glXSetupForCommand`, 0xd839af8), writes a request into the buffer at argument 0 +0x6c (`sh` at 0xd839b64, `sb` at 0xd839b94, `sw` at 0xd839b98 and 0xd839bac), calls `_XFlush` (0xd839b48) only when the buffer-space compare at 0xd839b38 falls through, and reads a reply with `_XReply` into a stack buffer (0xd839bbc). It stores a word from that buffer through argument 2 (0xd839c58). It returns 0 or 1 (0xd839c68). The name suggests a query for the maximum swap barrier count, which fits the reply, but the field that holds it is not named in the facts.
  Reviewed: 2026-11-12

- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83aa40: **inferred.**
  `glXDestroyHyperpipeConfigSGIX` runs the command setup (`__glXSetupForCommand`, 0xd83aa64), writes a request into the buffer at argument 0 +0x6c (`sh` at 0xd83aad0, `sb` at 0xd83ab00, `sw` at 0xd83ab04 through 0xd83ab28), calls `_XFlush` (0xd83aab4) only when the buffer-space compare at 0xd83aaa4 falls through, and reads a reply with `_XReply` into a stack buffer (0xd83ab30). It makes several unnamed calls (0xd83aa88, 0xd83ab54, 0xd83ab70, 0xd83aba0, 0xd83abbc), each guarded by a word the facts show at [a0+1232] or [a0+124]. It returns either the constant 0x5c or an unknown value (0xd83abd8). The name suggests destroying a hyperpipe config, but the facts do not show the request code or the meaning of 0x5c.
  Reviewed: 2026-11-12
