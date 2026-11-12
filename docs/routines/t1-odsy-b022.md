# Routine role statements, odsy tier-1 batch 22

Each entry gives a role statement for one routine in an odsy binary. The statements are drawn from the rendered instruction facts for that routine: its registers, calls and constants. They describe software behavior, not hardware behavior. Where the facts do not settle a role, the entry says so.

- `glXSelectEventSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd820d58.
  This looks like a GLX request stub that sets up a command with `__glXSetupForCommand` at 0xd820d80 and branches on its return value. It reads and writes fields at offsets 108, 112 and 124 of its context argument, and it flushes the X connection through `_XFlush` at 0xd820dd4. Three calls at 0xd820da8, 0xd820e54 and 0xd820e70 have no resolved callee, so the event-mask path is only partly clear.
  Evidence grade: inferred.

- `glXDestroyGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8213d0.
  It sets up its command first through `__glXSetupForCommand` at 0xd8213f4. When that call returns nonzero, the routine adds drawable interest with `__glXAddDrawableInterest` at 0xd821410, removes it with `__glXRemoveDrawableInterest` at 0xd821428, frees the drawable private with `__glXFreeDrawablePrivate` at 0xd821450, and flushes through `_XFlush` at 0xd82149c. A zero return branches at 0xd821400 past those calls. The call order suggests a pbuffer teardown, but the exact meaning of the interest handling is not established by these facts.
  Evidence grade: inferred.

- `glXCreateGLXPbufferSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd823b00.
  This looks like the create side of the pbuffer pair, with `__glXSetupForCommand` at 0xd823b30, `__glXAddDrawableInterest` at 0xd823b74 and an error report through `__glXPostError` at 0xd823b9c. It flushes with `_XFlush` at 0xd823c4c and reads a reply with `_XReply` at 0xd823d2c. Several unresolved calls remain, so the attribute handling is unclear.
  Evidence grade: inferred.

- `__glXSendMakeCurrentRead` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd824394.
  The routine is large, 2460 bytes, and seems to send a make-current-for-read request. It sets up the command with `__glXSetupForCommand` at 0xd8243c0, flushes with `_XFlush` at 0xd82441c, and reads a reply with `_XReply` at 0xd8244b8. It reports a hidden error through `__glXPostHiddenError` at 0xd824518, and the many unresolved calls mean the full set of cases is not established here.
  Evidence grade: inferred.

- `glXWaitVideoSyncSGI` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd824750.
  The routine makes one `ioctl` call at 0xd8247ec, with its request argument loaded through a chain of pointers rooted at the address 0x1014. The name suggests a wait on the video sync counter, but the ioctl request number is not in the rendered facts, so the wait semantics stay open.
  Evidence grade: inferred.

- `glXCreateGLXPixmapWithConfigSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd827654.
  The shape matches the other GLX request stubs in this batch: `__glXSetupForCommand` at 0xd82767c, then `_XFlush` at 0xd8276d8. It makes four unresolved calls, at 0xd8276ac, 0xd827754, 0xd827780 and 0xd82779c. The routine most likely creates a pixmap-backed GLX drawable from a config, but the unresolved calls leave that open.
  Evidence grade: inferred.

- `isNotProxy` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd8342dc.
  The routine opens a device path, whose address 0xd840d08 is a constant, then calls `fcntl`, `ioctl` and `close` in turn. It looks like a probe of a device node to decide whether the context is a direct connection rather than a proxy. The return value and the meaning of the ioctl are not in the rendered facts, so the predicate's result is unclear.
  Evidence grade: inferred.

- `GetFBConfigsSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd838214.
  The routine is 1792 bytes and reads arguments through `a1` and `a0`. It flushes with `_XFlush` at 0xd838290 and reads a reply with `_XReply` at 0xd838304, which fits a query that returns a list of framebuffer configs. Most of its calls are unresolved, so the list-building logic is only partly clear.
  Evidence grade: inferred.

- `glXJoinSwapGroupSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd839878.
  This looks like a request stub for joining a swap group. It sets up the command with `__glXSetupForCommand` at 0xd8398a0 and flushes with `_XFlush` at 0xd8398f0. Two later unresolved calls, at 0xd839968 and 0xd839984, leave the join bookkeeping unclear.
  Evidence grade: inferred.

- `glXQueryMaxSwapBarriersSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd839ad0.
  The routine follows the query pattern: `__glXSetupForCommand` at 0xd839af8, `_XFlush` at 0xd839b48 and a reply read through `_XReply` at 0xd839bbc. It probably returns the maximum swap-barrier count to the caller. Several unresolved calls mean the exact reply fields are not established.
  Evidence grade: inferred.

- `glXDestroyHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd83aa40.
  The routine sets up a command with `__glXSetupForCommand` at 0xd83aa64, flushes with `_XFlush` at 0xd83aab4 and reads a reply with `_XReply` at 0xd83ab30. It fits a destroy request for a hyperpipe config, though the destroy request's arguments are not identified in these facts.
  Evidence grade: inferred.

- `glXQueryHyperpipeConfigSGIX` in `usr/gfx/arch/IP35ODSY/libGL.so` at 0xd83abe0.
  This is a 700-byte query stub with the same setup, flush and reply sequence as its destroy counterpart: `__glXSetupForCommand` at 0xd83ac08, `_XFlush` at 0xd83ac60 and `_XReply` at 0xd83acdc. It probably fills caller buffers from the reply, but the field layout is not in these facts.
  Evidence grade: inferred.

- `ApplyParameterF` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95e7cc.
  The routine calls `__glOdysseySetProgram` through the pointer at 0xd9dc0b8, at 0xd95e9fc, with the first argument loaded from 0x1010 and the constant 0x39. The name suggests it pushes a float parameter to the hardware program state. The meaning of the constant 0x39 is not identified here.
  Evidence grade: inferred.

- `ApplyParameterI` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd95eef0.
  It makes the same `__glOdysseySetProgram` call with constant 0x39, at 0xd95f0f4, as its float sibling. The name suggests an integer parameter variant. The routine is 12000 bytes, and most of its body is not summarized by these facts, so its parameter handling is partly open.
  Evidence grade: inferred.

- `LoadAndSendStippledQuads` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd961dd0.
  The routine calls `ceil` four times, at 0xd961e50, 0xd961f08, 0xd961fb8 and 0xd9621a4, and clears a stack buffer with `memset` at 0xd962258. It makes a further unresolved call at 0xd9625e4 with a base offset of 32768. The name suggests a stipple load and quad submission, probably with size rounding, but the buffer layout is not established.
  Evidence grade: inferred.

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96284c.
  This is a large bitmap draw path, 16292 bytes. It issues an ioctl through the pointer at 0xd9eb890 at 0xd9629e8, updates the raster position with `__glOdysseyUpdateRasterPos` at 0xd962a8c, and calls `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` at 0xd962a9c. Unresolved calls at 0xd962b64, 0xd962b84 and 0xd962b9c, the last two with constants 0xba0 and 0x1701, leave the stipple submission only partly clear.
  Evidence grade: inferred.

- `__glOdylc_Color3b` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd9637b0.
  The routine is 292 bytes and calls `__glSPDlistSpace` with a null first argument at 0xd96382c. The `lc` in the name suggests a display-list color entry point that reserves list space. The rendered facts do not show how the color arguments are converted, so this role is tentative.
  Evidence grade: inferred.

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96458c.
  This is the unsigned-int variant of the same display-list color routine. It calls `__glSPDlistSpace` with a null first argument at 0xd964608. The argument conversion is not in these facts, so the same tentative reading applies.
  Evidence grade: inferred.

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965168.
  This is the four-component signed-int variant of the display-list color routine. It calls `__glSPDlistSpace` with a null first argument at 0xd9651e8. The four-component conversion is not in these facts, so its role is tentative.
  Evidence grade: inferred.

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965630.
  This is the four-component unsigned-byte variant of the display-list color routine. It calls `__glSPDlistSpace` with a null first argument at 0xd9656b0. The byte-to-float conversion is not in these facts, so the reading is tentative.
  Evidence grade: inferred.

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd965894.
  This is the four-component unsigned-int variant of the display-list color routine. It calls `__glSPDlistSpace` with a null first argument at 0xd965914. The argument conversion is not in these facts, so the reading stays tentative.
  Evidence grade: inferred.

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd966bb0.
  The routine reports errors through `__glSetError` with code 0x502 at 0xd966c54 and code 0x501 at 0xd966c7c, which look like the GL invalid-operation and invalid-value enums. It issues an ioctl through the pointer at 0xd9eb890 at 0xd966e34 and converts window coordinates with `__glOdysseyWindowToNormalizedEyeZ` at 0xd967044. Its clear logic itself is partly open because some calls are unresolved.
  Evidence grade: inferred.

- `__glOdysseyClear` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd967240.
  The routine calls `__glOdysseyValidateHardware` at 0xd9677d8 and again at 0xd967918, then issues an ioctl through 0xd9eb890 at 0xd96788c. It looks like the top-level clear that validates state before submitting a hardware request. The clear-mask handling is not in the rendered facts, so that part stays open.
  Evidence grade: inferred.

- `ApplyViewport` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd968540.
  The routine calls `__glOdysseyFindWindowSize` at 0xd968568 and `__glUpdateViewport` at 0xd96857c, then describes window state through `__glOdysseyImageDescribeWindow` four times, at offsets 73112, 73172, 73332 and 73272 from its context argument. It looks like the viewport update that follows a window-size lookup. The meaning of those four offsets is not established here.
  Evidence grade: inferred.

- `__glOdysseyInitDefaultValues` in `usr/gfx/arch/IP35ODSY/libGLcore.so` at 0xd96c9a0.
  The routine clears a context block with `bzero` at 0xd96cce0, starting at offset 35816 from its argument. It sets the draw buffer twice, with the enum values 0x405 and 0x404 at 0xd96d098 and 0xd96d0b0 through `__glOdyim_DrawBuffer`. It also calls `__glOdysseyImageInit` at 0xd96d178 and disables two capabilities, 0xb10 and 0xb42, through `__glOdyim_Disable`. It looks like default-state setup for a new context, though the full set of defaults is not listed here.
  Evidence grade: inferred.
