# Readings: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGL.so`

One entry per routine, filed here from the reading batches by binary.

- `glXDestroyHyperpipeConfigSGIX` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d9774 (o32)
  **Inferred.** Calls `__glXSetupForCommand` at 0xd8d9798, reads connection state at a0+1232 and a0+124, and makes byte, halfword and word stores at offsets 0 to 0x10, with a base the render does not resolve. It calls `_XFlush` at 0xd8d97e8 only when [a0+112] is below [a0+108]+32 (unsigned); otherwise the branch at 0xd8d97d8 skips it. It then calls `_XReply` at 0xd8d9864 with a1 = sp-40, a2 = 0 and a3 = 0. It returns 0x5c on one path and an unresolved value on another. Role (from name): the name matches a GLX SGIX hyperpipe destroy request and the facts show a request and reply, but the request layout is not traced.
  Reviewed: 2026-11-12
