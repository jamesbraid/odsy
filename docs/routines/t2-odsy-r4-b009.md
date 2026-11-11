# Tier-2 routine roles, odsy batch 9

Targets 225 to 249 of the t2list ranking (`--from-grade located`). Twelve are GLX client routines in the
Odyssey `libGL.so` and `libGLcore.so` builds for IP30ODSY32, IP30ODSY64 and IP30ODSY, one is the X server
`main` in `usr/gfx/arch/GENERIC/Xsgi`, and the rest are display-list and driver entry points in the same
libraries. Every role below comes from the rendered facts (offsets, callees, constants, return values).
The name is used only where it is cited as a hint, and each role is inferred.

- `glXQueryHyperpipeNetworkSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cb918
  **Inferred.** A GLX request-and-reply routine. It calls `__glXSetupForCommand` at 0xd8cb944, reads the
  context field at `[a0+1232]`, and sends its request with `_XReply` at 0xd8cb9dc, which takes a 0x11-word
  reply into a stack buffer. The reply is copied out through the caller's pointer in a1 (stores at
  0xd8cb94c, 0xd8cb9f4, 0xd8cba50), and per-context state is written at `a0+108`. The name suggests a
  query of the hyperpipe network; the reply layout follows from the `_XReply` arguments.

- `glXHyperpipeConfigSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cbba0
  **Inferred.** A GLX request routine with the same prologue as `glXQueryHyperpipeNetworkSGIX` above: it
  calls `__glXSetupForCommand`, reads `[a0+1232]`, and writes configuration fields at `a0+108` (halfword at
  +2, bytes at +0 and +1, words at +4, +0xc, +0x10, +0x14). It sends the request with `_XReply` and `_XFlush`
  and returns through a pointer stored at 0xd8cbd68. The name suggests setting the hyperpipe configuration.

- `glXQueryHyperpipeConfigSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8cc044
  **Inferred.** A GLX query. It calls `__glXSetupForCommand`, sends the request, then reads the reply with
  `_XRead` and `_XEatData`, allocating a result buffer with `malloc`. It writes the returned configuration
  fields at `a0+108` and flushes with `_XFlush`. The name suggests a query of the hyperpipe configuration.

- `__glOdylc_Color3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51790
  **Inferred.** A display-list entry point that reserves space for its command. It loads the dispatch pointer
  at abs 0x1010 and the field at `[0x1010]+0x13cc`, calls `__glSPDlistSpace` with a0=0 at 0xda517f8, and
  stores the new write position to abs 0x1034. It returns either the value at abs 0x1028 or the
  `__glSPDlistSpace` result, depending on the test at 0xda51818. The `Color3s` name fits a vertex-attribute
  entry point; the body shown here is the space-reservation path.

- `__glOdylc_Color4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52e10
  **Inferred.** The same reservation shape as `__glOdylc_Color3s` at 0xda51790: it reads the dispatch
  pointer at abs 0x1010 and `[0x1010]+0x13cc`, calls `__glSPDlistSpace` at 0xda52e7c, and stores the write
  position at abs 0x1034 (0xda52f0c). The return values are the same two candidates.

- `__glOdyim_Clear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54070
  **Inferred.** A clear entry point that works on the context through the dispatch pointer at abs 0x1010
  (fields at offsets 0x2d60, 0xc7c, 0xc90, 0x7a44, 0x16658 and 0x9750 are read or written). It calls
  `__glOdysseyClear` at 0xda54680 and `__glOdysseySetDrawbuf` at 0xdabd510, converts a window coordinate
  with `__glOdysseyWindowToNormalizedEyeZ`, and reports errors through `__glSetError`. The `im` in the name
  suggests the immediate-mode variant.

- `__glOdysseyClear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54680
  **Inferred.** A 1832-byte clear routine that checks context state before clearing. It calls
  `__glOdysseyValidateHardware` at 0xda54a6c with the mask at `a0+38340`, and branches on the context fields
  at `a0+38736` and `a0+31376` (bit 0x40) and on the clear-mask bits. Its exits return 0x10000 or 0x10046,
  chosen by the branch chain.

- `__glOdysseyFindWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55150
  **Inferred.** A 328-byte routine that stores the window's size as floats into the context at `a0+0x19cac`
  and `a0+0x19cb0` (`swc1` at 0xda551b4 and 0xda551c8), reading the source float at `a0+0x19cb4`. It fetches
  window fields from `a0+0x6a0`, `a0+0x6a4` and `a0+0xe74`, and calls `__glChangeWindowSize` at 0xdb12190
  with a3 set to `a0+0x20000`.

- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd290
  **Inferred.** It binds a drawable to the current context. It copies drawable fields from `a0+0xcdc`,
  `a0+0xd7c`, `a0+0xc8c` and `a0+0xd2c` into a block at `a0+0x16c50` through `a0+0x16c74`, clears the
  block with `bzero` (three calls), and issues `__glOdysseyIoctl` at 0xdabc870. It returns 0x1 on one path
  and 0x0 on the other.

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950
  **Inferred.** A 676-byte routine that reads a bitmap descriptor from its argument (byte at `a0+0xb8`, words
  at `a0+0x30` to `a0+0xc8`, floats loaded with `lwc1`), uses the constant at abs 0xdbde448, and reads the
  dispatch pointer at abs 0x1010. The name suggests a clipped bitmap send to the RGB path. It returns a
  64-bit status word, 0xffffffff8080d005 on the path ending at 0xdacbb10.

- `__glXOpenGraphicsDevice` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf707bc
  **Inferred.** It opens a graphics device node by index. An index at or above 0x41 takes a fatal path, and
  the per-device table at `[0x1028]:8 + a0<<2` is read for the entry. It calls `open` at 0xcf70838 with flags
  0x802, `fcntl` at 0xcf70858 with commands 2 and 5, and `ioctl` at 0xcf708fc with request 0x65 on the
  opened descriptor. Failures go through `__glXFatal` with messages at 0xcfa35d0 to 0xcfa3630.

- `__glXGetDrawableAttributes` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf865dc
  **Inferred.** A drawable-attribute query over the X connection. It calls `__glXSetupForCommand` at
  0xcf8660c and sends the request, reads the reply with `_XRead` into a `malloc`ed buffer, and frees it with
  `free`. It copies the returned attribute values into the caller's structure at `a2` (words at +0x0, +0x10,
  +0x14, doublewords at +0x8, +0x18, +0x28, bytes at +0x20 and +0x21), using a table at 0xcfb48e0.

- `glXWaitVideoSyncSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf87734
  **Inferred.** It waits for vertical sync on the device whose descriptor is read from the table at
  `[0x1028]:8` (entry offsets 0x104, 0x108, 0x118, 0x128). It issues `ioctl` at 0xcf877d4 with request
  0x3ff, and returns 0x5 or 0x6 depending on the result test at 0xcf8777c. The name suggests the SGI video
  sync wait.

- `__glOdylc_Color4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd56530
  **Inferred.** The same reservation shape as `__glOdylc_Color3s`: it calls `__glSPDlistSpace` at 0xbd5659c
  with a0=0 and returns either the value at `[0x1048]` or the call's result (returns at 0xbd56628 and
  0xbd56648).

- `ApplyMaterialF` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd741a0
  **Inferred.** A 1764-byte routine that sets a material property. It makes no calls in the rendered body
  and reads the material table through `[0x1020]:8+41160`, which it returns at 0xbd7434c. The name suggests
  a single-float material setter; the branch structure in the body is consistent with that.

- `__glOdylc_Normal3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdae430
  **Inferred.** The reservation shape again: it calls `__glSPDlistSpace` at 0xbdae484 with a0=0 and returns
  either `[0x1060]+4` (at 0xbdae500) or the call's result (at 0xbdae528).

- `OpenPipeMemReference` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdafa70
  **Inferred.** A 496-byte routine that sends a pipe request through `__glOdysseyIoctl` at 0xbdc1ef0 with
  request 0x6f640003, bracketing it with two `__glOdysseyMIPS_SYNC` calls (0xbdafb7c and 0xbdafc08). It
  returns 0x1 on one path (0xbdafbb0) and 0x0 on the other (0xbdafc24). The request number carries the ASCII
  bytes "od" in its high half, as the other Odyssey ioctls in this batch do.

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdb4f40
  **Inferred.** The reservation shape again: it calls `__glSPDlistSpace` at 0xbdb4f90 with a0=0 and returns
  either `[0x1060]+2` (at 0xbdb5000) or the call's result (at 0xbdb5028).

- `main` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10218270
  **Inferred.** The X server startup routine. It parses the command line with `ProcessCommandLine` at
  0x102182f0, runs `OsInit` at 0x10218460, resets the well-known sockets, allocates the client and screen
  tables with `Xalloc` (0x40 bytes at 0x102184d8), and initializes atoms, events and the callback manager
  through `InitAtoms`, `InitEvents` and `InitCallbackManager`. Failures go through `FatalError` at
  0x102182a4.

- `glXDestroyGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8213d0
  **Inferred.** It destroys a GLX pbuffer. It calls `__glXSetupForCommand` at 0xd8213f4, registers and then
  removes drawable interest with `__glXAddDrawableInterest` (0xd821410) and `__glXRemoveDrawableInterest`
  (0xd821428), frees the drawable private with `__glXFreeDrawablePrivate` at 0xd821450, and flushes with
  `_XFlush` at 0xd82149c.

- `glXCreateGLXPbufferSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd823b00
  **Inferred.** It creates a GLX pbuffer over the X connection. It calls `__glXSetupForCommand` at 0xd823b30,
  registers drawable interest with `__glXAddDrawableInterest` at 0xd823b74, and reports error 0xb through
  `__glXPostError` at 0xd823b9c. Its reply comes from `_XReply` at 0xd823d2c. The other failure path reports
  through `__glXPostHiddenError` with code 0x11 at 0xd823d88, and it removes the interest before returning.

- `__glOdylc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xd9d72f4
  **Inferred.** The reservation shape again: it calls `__glSPDlistSpace` at 0xd9d735c with a0=0, a2 and a3
  taken from the arguments and `[0x1028]`, and returns either its result or the value at 0xd9d73fc.

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda091f0
  **Inferred.** A 136-byte routine that issues `__glOdysseyIoctl` at 0xda0924c with request 0x6f640018,
  passing the caller's arguments, and returns 0x0 or 0x1 from the result. The name suggests the hyperpipe
  stereo switch.

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda093b4
  **Inferred.** A 132-byte query that issues `__glOdysseyIoctl` at 0xda0940c with request 0x6f640016,
  passing the caller's arguments, and returns 0x0 or 0x1 from the result. The name suggests a pixel-average
  query, the read side of the request in `__glOdysseyHyperpipeStereo`.

- `__glXGetDrawableAttributes` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd823fec
  **Inferred.** The same drawable-attribute query as the IP30ODSY64 build at 0xcf865dc, in the IP30ODSY32
  build. It calls `__glXSetupForCommand` at 0xd824020, sends the request, reads the reply with `_XReply` at
  0xd8240d0 and 0xd8241c4, and allocates a result buffer with `malloc` at 0xd8240f4. It flushes with
  `_XFlush` at 0xd82422c.
