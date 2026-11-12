# Routine role statements, odsy tier-1 batch 22

Each entry gives a role statement for one routine in an odsy binary. The statements are drawn from the rendered instruction facts for that routine: its registers, calls and constants. They describe software behavior, not hardware behavior. Where the facts do not settle a role, the entry says so.

- `glXSelectEventSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd820d58.
  Role (from name): a GLX request stub for selecting events. It calls `__glXSetupForCommand` at 0xd820d80 and tests its return at 0xd820d8c; a zero return branches to 0xd820e7c. It loads fields at offsets 108, 112 and 124 of its first argument. It calls `_XFlush` at 0xd820dd4 only when the field at offset 112 is below the field at offset 108 plus 24 (unsigned), which is the branch at 0xd820dc4 falling through. Three calls at 0xd820da8, 0xd820e54 and 0xd820e70 have no resolved callee, so the event-mask path is only partly clear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXDestroyGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8213d0.
  It calls `__glXSetupForCommand` at 0xd8213f4 first. When that call returns nonzero, the routine calls `__glXAddDrawableInterest` at 0xd821410, `__glXRemoveDrawableInterest` at 0xd821428 and `__glXFreeDrawablePrivate` at 0xd821450. It then calls `_XFlush` at 0xd82149c only when the field at offset 112 of its first argument is below the field at offset 108 plus 16 (unsigned). A zero return from the setup call branches at 0xd821400 past all of these. The call order suggests a pbuffer teardown, but the exact meaning of the interest handling is not established by these facts.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `glXCreateGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd823b00.
  Role (from name): the create side of the pbuffer pair. It calls `__glXSetupForCommand` at 0xd823b30 and `__glXAddDrawableInterest` at 0xd823b74. It calls `__glXPostError` at 0xd823b9c with 0xb and 0x10 only when `__glXAddDrawableInterest` returns zero, since a nonzero return branches past it at 0xd823b84. It calls `_XFlush` at 0xd823c4c only when a buffer-space compare at 0xd823c34 falls through, and it reads a reply with `_XReply` at 0xd823d2c. Several unresolved calls remain, so the attribute handling is unclear.
  Evidence grade: inferred.
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

- `ApplyParameterF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95e7cc.
  Role (from name): it pushes a float parameter to the hardware program state. The routine calls `__glOdysseySetProgram` through the pointer at 0xd9dc0b8, at 0xd95e9fc, with a0 loaded from 0x1010, a1 loaded from offset 42664 of that, a2 = 0x33 and a3 = 0x8000. The facts show no constant 0x39. The meaning of 0x33 and 0x8000 is not identified here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `ApplyParameterI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95eef0.
  Role (from name): an integer parameter variant of its float sibling. The routine is 12000 bytes. It calls `__glOdysseySetProgram` through the pointer at 0xd9dc0b8, at 0xd95f0f4, with a0 loaded from 0x1010, a1 loaded from offset 42664 of that, a2 = 0x33 and a3 loaded from 0x1010. The float sibling passes 0x8000 as a3, so the two calls differ in that slot. Most of the body is not summarized by these facts, so its parameter handling is partly open.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd961dd0.
  Role (from name): a stipple load and quad submission, probably with size rounding. The routine has four `ceil` call sites, at 0xd961e50, 0xd961f08, 0xd961fb8 and 0xd9621a4. It calls `memset` at 0xd962258 on a stack buffer at sp-68 with value 0 and length 4, only when the branch at 0xd96223c falls through (s8 nonzero), inside a loop whose back edge is the branch at 0xd962324. A further call with no resolved callee at 0xd9625e4 takes a0 plus 32768 as its first argument. The buffer layout is not established.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96284c.
  Role (from name): a bitmap draw path using polygon stipple. The routine is large, 16292 bytes. It calls `__glOdysseyIoctl` through the pointer at 0xd9eb890 at 0xd9629e8 with a1 = 0x6f64000d. It calls `__glOdysseyUpdateRasterPos` at 0xd962a8c only when the byte at offset 42812 of its first argument is nonzero, since a zero value branches past it at 0xd962a7c. It then calls `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` at 0xd962a9c. Calls with no resolved callee at 0xd962b64, 0xd962b84 and 0xd962b9c, the last two with first arguments 0xba0 and 0x1701, leave the stipple submission only partly clear.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9637b0.
  Role (from name): the byte variant of a display-list color entry point that reserves list space. The routine is 292 bytes. It calls `__glSPDlistSpace` at 0xd96382c with a null first argument, only when the branch at 0xd963818 falls through, which needs the value loaded from 0x1028 to be below a bound that is 4 or 5. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96458c.
  Role (from name): the unsigned-int variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd964608 with a null first argument, only when the branch at 0xd9645f4 falls through, which needs the value loaded from 0x1028 to be below a bound that is 4 or 5. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965168.
  Role (from name): the four-component signed-int variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd9651e8 with a null first argument, only when the branch at 0xd9651d4 falls through, which needs the value loaded from 0x1028 to be below a bound that is 5 or 6. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965630.
  Role (from name): the four-component unsigned-byte variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd9656b0 with a null first argument, only when the branch at 0xd96569c falls through, which needs the value loaded from 0x1028 to be below a bound that is 5 or 6. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965894.
  Role (from name): the four-component unsigned-int variant of a display-list color entry point that reserves list space. It calls `__glSPDlistSpace` at 0xd965914 with a null first argument, only when the branch at 0xd965900 falls through, which needs the value loaded from 0x1028 to be below a bound that is 5 or 6. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd966bb0.
  Role (from name): the immediate-mode clear entry. The routine calls `__glSetError` with 0x502 at 0xd966c54 on some paths, and with 0x501 at 0xd966c7c only when the mask in its first argument has bits set outside 0x4700. Those codes look like the GL invalid-operation and invalid-value enums. On some paths it calls `__glOdysseyIoctl` through the pointer at 0xd9eb890 at 0xd966e34 with a1 = 0x6f64000d, and it calls `__glOdysseyWindowToNormalizedEyeZ` at 0xd967044, which by name converts a window coordinate. Its clear logic itself is partly open because some calls are unresolved.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyClear` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd967240.
  Role (from name): the top-level clear that validates state before submitting a hardware request. The routine calls `__glOdysseyValidateHardware` at 0xd9677d8 only when the word at offset 92512 of its first argument is nonzero. On some paths it then issues `__glOdysseyIoctl` through 0xd9eb890 at 0xd96788c, and calls `__glOdysseyValidateHardware` again at 0xd967918, so the ioctl lies between the two validate calls, not after them. The clear-mask handling is not in the rendered facts, so that part stays open.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `ApplyViewport` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd968540.
  Role (from name): the viewport update that follows a window-size lookup. The routine calls `__glOdysseyFindWindowSize` at 0xd968568 and `__glUpdateViewport` at 0xd96857c, then calls `__glOdysseyImageDescribeWindow` with first arguments at offsets 73112 and 73172 from its context argument at 0xd968638 and 0xd968658. Two more describe calls, at offset 73332 at 0xd968690 and offset 73272 at 0xd9686b0, run only when both branches at 0xd96866c and 0xd96867c fall through, that is when the bytes at offsets 3224 and 73973 are nonzero. The meaning of those offsets is not established here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyInitDefaultValues` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96c9a0.
  Role (from name): default-state setup for a new context. The routine calls `bzero` at 0xd96cce0 on offset 35816 from its first argument with a1 = 0x40. It calls `__glOdyim_DrawBuffer` with 0x405 at 0xd96d098 only when the byte at offset 3222 is nonzero (the branch at 0xd96d088 falls through), and with 0x404 at 0xd96d0b0. It calls `__glOdysseyImageInit` at 0xd96d178. It then calls `__glOdyim_Disable` many times, the first two with 0xb10 at 0xd96d198 and 0xb42 at 0xd96d1ac, and calls many other state setters such as `__glOdyim_CullFace`, `__glOdyim_BlendFunc` and `__glOdysseyInitLighting`. The full set of defaults is not listed here.
  Evidence grade: inferred.
  Reviewed: 2026-11-12
