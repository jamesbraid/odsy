# Odsy routine roles, rows 350 to 374 of the ranked list

Each entry names a routine from the rendered facts of its exact binary range. The facts give addresses, calls, constants and memory accesses. They do not give what a routine means as a whole, so every grade here is **inferred**, and the roles are guesses from names and call order where the text says so. Routines are the located, hardware-linked rows of the odsy inventory, taken in ranked order from position 350 on. All 25 rendered and passed the grader; none were rejected.

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfa80: **inferred.**
  `__glOdyim_ScratchColor3i` makes no calls. It stores four words to the absolute address 0x4000 (`sw` at 0xbebfa88, 0xbebfa8c and 0xbebfa90, plus one more in the same group) and returns at 0xbebfa94 with v0 unset. The name suggests it sets a color scratch word from three integer components, but the facts do not show where the stored values come from, and nothing in the range shows who reads 0x4000.

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfb80: **inferred.**
  `__glOdyim_ScratchColor3s` has the same shape as the entry at 0xbebfa80: four stores to the absolute address 0x4000 (`sw` at 0xbebfb88, 0xbebfb8c and 0xbebfb90, plus one more), no calls, and a return at 0xbebfb94. The name suggests a three-component short color. The facts give no source for the values and no reader for 0x4000.

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfd80: **inferred.**
  `__glOdyim_ScratchColor3ui` is the same four-store pattern to 0x4000 (`sw` at 0xbebfd88, 0xbebfd8c and 0xbebfd90, plus one more), with no calls and a return at 0xbebfd94. The name suggests an unsigned-int color. The facts do not show the value sources.

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfe80: **inferred.**
  `__glOdyim_ScratchColor3us` stores four words to 0x4000 (`sw` at 0xbebfe88, 0xbebfe8c and 0xbebfe90, plus one more) and returns at 0xbebfe94 with no calls. The name suggests an unsigned-short color. Value sources and the reader of 0x4000 are not in the facts.

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebff80: **inferred.**
  `__glOdyim_ScratchColor4b` is 32 bytes with no calls. It stores five words to 0x4000 (`sw` at 0xbebff88, 0xbebff8c and 0xbebff90, plus two more) and returns at 0xbebff98. The name suggests a four-component byte color. The facts do not show the stored values.

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0100: **inferred.**
  `__glOdyim_ScratchColor4dv` loads four doubles from its argument record, at offsets +0x0, +0x8, +0x10 and +0x18 (`ldc1` at 0xbec0100 through 0xbec0118). It then makes five stores to 0x4000: one `sw` at 0xbec0120 and four `swc1` (named at 0xbec0128, 0xbec0130 and 0xbec0134). It makes no calls and returns at 0xbec0138. The name suggests a four-component double color written as scratch words, which fits the loads. The facts do not say how the doubles become the stored words, so the conversion is open.

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0280: **inferred.**
  `__glOdyim_ScratchColor4i` is 32 bytes, with five stores to 0x4000 (`sw` at 0xbec0288, 0xbec028c and 0xbec0290, plus two more) and no calls. It returns at 0xbec0298. The name suggests a four-component int color. Value sources are not in the facts.

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0380: **inferred.**
  `__glOdyim_ScratchColor4s` matches the 4i entry: five stores to 0x4000 (`sw` at 0xbec0388, 0xbec038c and 0xbec0390, plus two more), no calls, return at 0xbec0398. The name suggests a four-component short color.

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0480: **inferred.**
  `__glOdyim_ScratchColor4ub` is the same five-store pattern to 0x4000 (`sw` at 0xbec0488, 0xbec048c and 0xbec0490, plus two more), with no calls and a return at 0xbec0498. The name suggests a four-component unsigned-byte color.

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0580: **inferred.**
  `__glOdyim_ScratchColor4ui` stores five words to 0x4000 (`sw` at 0xbec0588, 0xbec058c and 0xbec0590, plus two more), makes no calls and returns at 0xbec0598. The name suggests a four-component unsigned-int color.

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0680: **inferred.**
  `__glOdyim_ScratchColor4us` stores five words to 0x4000 (`sw` at 0xbec0688, 0xbec068c and 0xbec0690, plus two more), makes no calls and returns at 0xbec0698. The name suggests a four-component unsigned-short color.

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0780: **inferred.**
  `__glOdyim_ScratchIndexd` is 24 bytes with no calls. It stores one word to 0x4000 with `sw` at 0xbec078c and one with `swc1` at 0xbec0794, then returns at 0xbec0790. The name suggests a double color index written as an integer word and a float word. The facts give the width of each store but not its source, so the conversion is unclear.

- `main` in `usr/bin/X11/xsetmon` at 0x1003ca70: **inferred.**
  `main` of the `xsetmon` utility. It calls `InitEZ__Gv` (0x1003ca90), `setlocale` (0x1003caa0), `XtSetLanguageProc` (0x1003cab4), `setFallbacks__5VkAppSGPPc` (0x1003cac4) and `__nw__GUi` with 0x140 (0x1003cad4). When the allocation returns nonzero it builds the `xsetmon` object with its constructor (0x1003cb04), calls `createWindows__7xsetmonGv` (0x1003cb2c) and then `setTitle__7xsetmonGv` (0x1003cb64). A field at offset +136 of the global controls one extra unknown call at 0x1003cb58, and a second unknown call at 0x1003cb84 is followed by `exit` with 0 (0x1003cb90). The call order fits a standard toolkit application start, with the unknown calls probably the event loop, but the facts do not name it and do not show the window contents.

- `main` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10218270: **inferred.**
  `main` of the X server image, 5600 bytes. I read the call list and the named globals, not every one of its 400-odd access lines. It calls `ProcessCommandLine` (0x102182f0) and `OsInit` (0x10218460), sets up client resources (`InitClientResources`, 0x10218498), the screen table (`Xalloc` at 0x102184d8, `InitOutput` at 0x1021855c), atoms, events, callbacks, extensions (`InitExtensions`, 0x1021858c), input (`InitInput`, 0x10218e54) and devices (`InitAndStartDevices`, 0x10218e5c), then fonts and the default font and cursor (`InitFonts` at 0x10218e74, `CreateRootCursor` at 0x10218ea8). It calls `Dispatch` twice, which suggests the request loop, and `FatalError` on each failure path. The error-recovery branch around `CreateWellKnownSockets` (0x10219470) and a `sysconf` check against 0x101 are not explained by the facts.

- `glXSelectEventSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd820d58: **inferred.**
  `glXSelectEventSGIX` calls `__glXSetupForCommand` (0xd820d80) and returns at once to 0xd820e7c when that call returns 0. Otherwise it writes a small request into the buffer pointed to by argument 0 +0x6c (`sb` at 0xd820df4 and 0xd820e1c, `sh` at 0xd820df0, `sw` at 0xd820e20 through 0xd820e3c) and flushes with `_XFlush` (0xd820dd4). It passes the constant 0x10 to the helper at 0xd820e54, which may mean a 16-byte request, though the facts do not confirm the size. The name points to the SGIX event-selection request. The meaning of the two other helpers (0xd820da8, 0xd820e70) and the return value, which is one of [a0+124] or unknown, are open.

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8213d0: **inferred.**
  `glXDestroyGLXPbufferSGIX` runs the command setup (`__glXSetupForCommand`, 0xd8213f4). When that call returns nonzero, it adds interest in the drawable argument (`__glXAddDrawableInterest`, 0xd821410), then removes that interest (`__glXRemoveDrawableInterest`, 0xd821428) and frees the drawable private (`__glXFreeDrawablePrivate`, 0xd821450) on the value the add returned. A zero return branches at 0xd821400 past those calls to 0xd821534. The call order suggests it tears down the client record for a pbuffer. The same nonzero path also writes a request into the buffer at argument 0 +0x6c, flushes (0xd82149c) and calls a helper with 0x10 (0xd82150c). Whether the nonzero path always frees, and what the return value means beyond being one of [a0+124] or unknown at 0xd821540, are not established.

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823b00: **inferred.**
  `glXCreateGLXPbufferSGIX` runs the command setup (0xd823b30) and adds interest in the drawable (`__glXAddDrawableInterest`, 0xd823b74). It posts error code 0xb with `__glXPostError` (0xd823b9c) when setup fails. It copies argument 1 fields at +0x24 and +0x48 (0xd823cb4, 0xd823cc4) into the request buffer at argument 0 +0x6c, flushes (0xd823c4c) and reads a reply with `_XReply` (0xd823d2c). On a bad reply it posts hidden error 0x11 (`__glXPostHiddenError`, 0xd823d88) and removes and frees the interest it added. The return is 0 or a pointer-like value (0xd823e2c). The facts do not say what the reply holds or what the pbuffer record stores, so the role is inferred from the name.

- `__glXSendMakeCurrentRead` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824394: **inferred.**
  `__glXSendMakeCurrentRead` runs the command setup (0xd8243c0), flushes (0xd82441c) and writes a request built from argument 0 fields and argument 1 +0x14 (0xd8244a8) into the buffer at argument 0 +0x6c. It reads a reply with `_XReply` into argument 3 (0xd8244b8), and in a second branch it allocates a 16-byte block (`malloc` at 0xd824670), reads 0x10 bytes into it with `_XRead` (0xd824690), loads four words from it and frees it (0xd8246f0). Two hidden-error paths post codes 0x11 and 0x1a (0xd824518, 0xd824644). The name points to a make-current-with-read request, but the facts do not say what the 16-byte read holds or how the two reply paths differ. It returns 0 or 1 (0xd824748).

- `glXWaitVideoSyncSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd824750: **inferred.**
  `glXWaitVideoSyncSGI` loads the process global at absolute 0x1014. It reads the word at +0x108 as an index into an array held in that global, reads the pointer at +0x114 and two fields of the record it points to (+0xc4 and +0xcc, at 0xd824788 and 0xd8247b0). It then takes the entry's +4 word as the file descriptor for `ioctl` with request 0x3ff (0xd8247ec), using a stack buffer for the output (sp-20) and argument 0 as the third argument. It stores a 4-byte result through argument 2 (0xd824804). It returns 0, 5 or 6 (0xd824810), and the facts do not say what 5 and 6 mean. The name is the video-sync wait extension, so the ioctl probably waits on the retrace count, but the request number and the device are not named in the facts.

- `glXCreateGLXPixmapWithConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd827654: **inferred.**
  `glXCreateGLXPixmapWithConfigSGIX` runs the command setup (`__glXSetupForCommand`, 0xd82767c) and writes a request into the buffer at argument 0 +0x6c, with fields taken from argument 1 +0x24 and +0x48 (0xd827730, 0xd82773c). It stores to argument 0 +0x60, +0x64 and +0x6c, and flushes with `_XFlush` on one path (0xd8276d8). Three unnamed helpers follow (0xd8276ac, 0xd827754 with the constant 0x10, and 0xd827780), and the routine returns 0 or a pointer-like value (0xd8277b8). The name points to creating a GLX pixmap from a config, but the facts do not show what the helpers do.

- `isNotProxy` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8342dc: **inferred.**
  `isNotProxy` opens a path string at 0xd840d08 with flags 0x802 (`open` at 0xd834328), sets a descriptor flag with `fcntl` (0xd834350), and issues two `ioctl` calls, with requests 0x65 (0xd834388) and 0x66 (0xd834400), each followed by `close`. It then searches its argument string for a colon with `strchr` (0xd83444c) and returns 0 or 1 (0xd8344c8). The name suggests a check that the display is not a proxy, but the facts do not show the rule that maps the ioctl results to 0 or 1. Treat the meaning of the result as open.

- `GetFBConfigsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd838214: **inferred.**
  `GetFBConfigsSGIX` calls an unnamed routine on entry (0xd838264), flushes (0xd838290), and reads a reply with `_XReply` into a stack buffer (0xd838304). It allocates with `malloc` (0xd838404, 0xd838484), clears a block with `memset` (0xd838504), and reads more data with `_XRead` (0xd83859c). It calls `__glXOverrideVisualGetVisualInfo` with argument 0, the constant 3 and two stack slots (0xd838874), then reads words at +0x14, +0x18 and +0x1c of the record it returns (0xd838888 through 0xd838898). It frees the memory with `free` and `XFree` (0xd8388a8, 0xd8388d0) and returns 0 or 1 (0xd83890c). The name points to the list of framebuffer configs for a display, which fits the visual-info lookup. The facts do not show how the list is built.

- `glXJoinSwapGroupSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839878: **inferred.**
  `glXJoinSwapGroupSGIX` runs the command setup (`__glXSetupForCommand`, 0xd8398a0), flushes with `_XFlush` (0xd8398f0) and writes a request into the buffer at argument 0 +0x6c (`sh` at 0xd83990c, `sb` at 0xd839938, `sw` at 0xd83993c through 0xd839950). It calls two unnamed routines (0xd8398c4, 0xd839984) and one with the constant 0x10 (0xd839968). The facts show no reply read. The name points to joining a swap group. It returns [a0+124] or an unknown value (0xd83999c). The role of the unnamed calls is open.

- `glXQueryMaxSwapBarriersSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd839ad0: **inferred.**
  `glXQueryMaxSwapBarriersSGIX` runs the command setup (`__glXSetupForCommand`, 0xd839af8), writes a request into the buffer at argument 0 +0x6c (`sh` at 0xd839b64, `sb` at 0xd839b94, `sw` at 0xd839b98 and 0xd839bac), flushes (0xd839b48) and reads a reply with `_XReply` into a stack buffer (0xd839bbc). It stores the reply result through argument 2 (0xd839c58). It returns 0 or 1 (0xd839c68). The name suggests a query for the maximum swap barrier count, which fits the reply, but the field that holds it is not named in the facts.

- `glXDestroyHyperpipeConfigSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd83aa40: **inferred.**
  `glXDestroyHyperpipeConfigSGIX` runs the command setup (`__glXSetupForCommand`, 0xd83aa64), writes a request into the buffer at argument 0 +0x6c (`sh` at 0xd83aad0, `sb` at 0xd83ab00, `sw` at 0xd83ab04 through 0xd83ab28), flushes (0xd83aab4) and reads a reply with `_XReply` into a stack buffer (0xd83ab30). It makes several unnamed calls (0xd83aa88, 0xd83ab54, 0xd83ab70, 0xd83aba0, 0xd83abbc). It returns either the constant 0x5c or an unknown value (0xd83abd8). The name suggests destroying a hyperpipe config, but the facts do not show the request code or the meaning of 0x5c.
