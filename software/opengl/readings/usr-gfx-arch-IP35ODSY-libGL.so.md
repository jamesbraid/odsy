# Readings: `usr/gfx/arch/IP35ODSY/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `glXSelectEventSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd820d58.
  Role (from name): a GLX request stub for selecting events. It calls `__glXSetupForCommand` at 0xd820d80 and tests its return at 0xd820d8c; a zero return branches to 0xd820e7c. It loads fields at offsets 108, 112 and 124 of its first argument. It calls `_XFlush` at 0xd820dd4 only when the field at offset 112 is below the field at offset 108 plus 24 (unsigned), which is the branch at 0xd820dc4 falling through. Three calls at 0xd820da8, 0xd820e54 and 0xd820e70 have no resolved callee, so the event-mask path is only partly clear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXDestroyGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8213d0.
  It calls `__glXSetupForCommand` at 0xd8213f4 first. When that call returns nonzero, the routine calls `__glXAddDrawableInterest` at 0xd821410, `__glXRemoveDrawableInterest` at 0xd821428 and `__glXFreeDrawablePrivate` at 0xd821450. It then calls `_XFlush` at 0xd82149c only when the field at offset 112 of its first argument is below the field at offset 108 plus 16 (unsigned). A zero return from the setup call branches at 0xd821400 past all of these. The call order suggests a pbuffer teardown, but the exact meaning of the interest handling is not established by these facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXDestroyGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8213d0
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8213f4. A zero return branches at 0xd821400 to 0xd821534, past the calls below; a nonzero return falls through to `__glXAddDrawableInterest` at 0xd821410, then `__glXRemoveDrawableInterest` at 0xd821428 on the value `__glXAddDrawableInterest` returned, then `__glXFreeDrawablePrivate` at 0xd821450. It calls `_XFlush` at 0xd82149c only when the unsigned comparison at 0xd82148c falls through ([a0+112] below [a0+108]+16); when that branch is taken the call is skipped. Role (from name): destroys a pbuffer, which the add, remove and free sequence is consistent with.
  Reviewed: 2026-11-12

- `glXCreateGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd823b00.
  Role (from name): the create side of the pbuffer pair. It calls `__glXSetupForCommand` at 0xd823b30 and `__glXAddDrawableInterest` at 0xd823b74. It calls `__glXPostError` at 0xd823b9c with 0xb and 0x10 only when `__glXAddDrawableInterest` returns zero, since a nonzero return branches past it at 0xd823b84. It calls `_XFlush` at 0xd823c4c only when a buffer-space compare at 0xd823c34 falls through, and it reads a reply with `_XReply` at 0xd823d2c. Several unresolved calls remain, so the attribute handling is unclear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXCreateGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd823b00
  **Inferred.** Calls `__glXSetupForCommand` at 0xd823b30 (a nonzero return branches at 0xd823b40 to 0xd823b50) and `__glXAddDrawableInterest` at 0xd823b74. When `__glXAddDrawableInterest` returns zero (the `bne` at 0xd823b84 falls through) it calls `__glXPostError` at 0xd823b9c with a1=0xb, a2=0x10 and a3=0x0. Later it calls `_XFlush` at 0xd823c4c only when the unsigned comparison at 0xd823c34 falls through, then `_XReply` at 0xd823d2c. When `_XReply` returns zero it calls `__glXPostHiddenError` at 0xd823d88 with a2=0x11, then `__glXRemoveDrawableInterest` at 0xd823d9c and `__glXFreeDrawablePrivate` at 0xd823db8. `_XFlush` is not the last call. Role (from name): creates a pbuffer.
  Reviewed: 2026-11-12

- `__glXSendMakeCurrentRead` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd824394.
  Role (from name): it may send a make-current-for-read request. The routine is large, 2460 bytes. It calls `__glXSetupForCommand` at 0xd8243c0, calls `_XFlush` at 0xd82441c only when a buffer-space compare at 0xd82440c falls through, and reads a reply with `_XReply` at 0xd8244b8. It calls `__glXPostHiddenError` at 0xd824518 only when that `_XReply` returns zero, since a nonzero return branches past it at 0xd8244c0. A second `_XReply` at 0xd8245e4 and a second `__glXPostHiddenError` at 0xd824644 follow the same pattern. The many unresolved calls mean the full set of cases is not established here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXWaitVideoSyncSGI` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd824750.
  Role (from name): a wait on the video sync counter. The routine makes one `ioctl` call at 0xd8247ec. Its request argument (a1) is 0x3ff, and its first argument is loaded as [[0x1014] + ([[0x1014]+264] << 2)] + 4, a pointer chain rooted at the address 0x1014. The third argument is a2 = sp-20 and the fourth is a0 at entry. The routine returns one of 0x0, 0x5 and 0x6. What the request does and what the return values mean are not established.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd827654.
  Role (from name): it most likely creates a pixmap-backed GLX drawable from a config. The shape matches the other GLX request stubs in this batch: it calls `__glXSetupForCommand` at 0xd82767c, and it calls `_XFlush` at 0xd8276d8 only when a buffer-space compare at 0xd8276c8 falls through. It makes four calls with no resolved callee, at 0xd8276ac, 0xd827754, 0xd827780 and 0xd82779c, so the drawable setup stays open.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `isNotProxy` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8342dc.
  Role (from name): a predicate on whether the connection is not a proxy. The routine calls `open` at 0xd834328 with the constant path address 0xd840d08 and flags 0x802, calls `fcntl` at 0xd834350 with a1 = 0x2 and a2 = 0x5, and calls `ioctl` at 0xd834388 with request 0x65 and at 0xd834400 with request 0x66. It calls `close` at several points on different paths, and it calls `strchr` at 0xd83444c with 0x3a (a colon) before comparing characters. It returns 0x0 or 0x1. What each value means and what the ioctls ask for are not established.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd838214.
  Role (from name): a query that returns a list of framebuffer configs. The routine is 1792 bytes. It calls `_XFlush` at 0xd838290 only when a buffer-space compare at 0xd838280 falls through, and it reads a reply with `_XReply` at 0xd838304. Most of its calls are unresolved, so the list-building logic is only partly clear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXJoinSwapGroupSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd839878.
  Role (from name): a request stub for joining a swap group. It calls `__glXSetupForCommand` at 0xd8398a0 and calls `_XFlush` at 0xd8398f0 only when a buffer-space compare at 0xd8398e0 falls through. Two later calls with no resolved callee, at 0xd839968 and 0xd839984, leave the join bookkeeping unclear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd839ad0.
  Role (from name): a query that probably returns the maximum swap-barrier count to the caller. It calls `__glXSetupForCommand` at 0xd839af8, calls `_XFlush` at 0xd839b48 only when a buffer-space compare at 0xd839b38 falls through, and reads a reply with `_XReply` at 0xd839bbc. It returns 0x0 or 0x1. Several unresolved calls mean the exact reply fields are not established.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd83aa40.
  Role (from name): a destroy request for a hyperpipe config. The routine calls `__glXSetupForCommand` at 0xd83aa64, calls `_XFlush` at 0xd83aab4 only when a buffer-space compare at 0xd83aaa4 falls through, and reads a reply with `_XReply` at 0xd83ab30. The destroy request's arguments are not identified in these facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd83abe0.
  Role (from name): a query that probably fills caller buffers from the reply. This is a 700-byte stub that begins with the same setup, flush and reply sequence as its destroy counterpart: `__glXSetupForCommand` at 0xd83ac08, `_XFlush` at 0xd83ac60 (only when a buffer-space compare at 0xd83ac50 falls through) and `_XReply` at 0xd83acdc. It then calls `malloc` at 0xd83adb4 and `_XRead` at 0xd83ae3c into the allocated buffer, and `_XEatData` at 0xd83add8 when the allocation returns zero. The field layout is not in these facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12
