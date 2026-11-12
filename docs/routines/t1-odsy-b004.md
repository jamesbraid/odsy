# Routine roles, tier-1 reading batch 4

Role statements for 25 routines from the libGL and libGLcore builds in `builds/vpro-patch-4103/usr/gfx/arch/`. Each statement comes only from the rendered facts (registers, calls and constants) of the exact binary named in its header, and cites instruction addresses. Every grade is Inferred: these facts show what the code does on the model's terms, not what the hardware must do. Where the facts do not settle a purpose, the statement says so.

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` at 0xd8d2e68 (o32).
  The routine reads a word at +0x24 of its first argument and compares it with 0x40 (branch at 0xd8d2e98). It then opens a device path (call at 0xd8d2eb4, path constant at 0xd8dd42c), runs fcntl (0xd8d2edc) and two ioctls with requests 0x65 and 0x66 (0xd8d2f14, 0xd8d2f8c), and calls close at five sites (0xd8d2ef4, 0xd8d2f2c, 0xd8d2f68, 0xd8d2fa4, 0xd8d2fbc). A strchr for ':' (0xd8d2fd8) is followed by a character scan, and the single return gives 0 or 1 (0xd8d3054). The name suggests a proxy test, but the ioctl meanings are not in the facts, so the purpose is partly open.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3ef20 (o32).
  The routine calls ceil four times (0xda3efa0, 0xda3f058, 0xda3f108, 0xda3f2f4) and memset on a 4-byte stack slot (0xda3f3a0). It tests values against a mask of 0x78 (branches around 0xda3efd4 and 0xda3f324) and tests a double compare at 0xda3f698. It also performs 73 stores to the absolute address 0x4000 (49 word and 24 float), and the facts do not say what that address is. One indirect call has no resolved target (0xda3f724).
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8aa140 (n32).
  The routine flushes the X connection (_XFlush at 0xd8aa2d4) and reads a reply (_XReply at 0xd8aa1fc, _XRead at 0xd8aa510). It calls malloc, free and memset, then calls __glXOverrideVisualGetVisualInfo (0xd8aae94), frees its returned value (0xd8aaec4) and calls XFree (0xd8aaee0). Returns are 0 or 1. Thirteen indirect calls are unresolved, so the rest of the routine is not fully legible.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8acdc0 (n32).
  The routine first calls __glXSetupForCommand (0xd8acdf8), then calls _XReply (0xd8acec8), _XRead (0xd8acefc) and _XFlush (0xd8acf84, 0xd8ad0a0). It allocates a 16-byte buffer with malloc (0xd8acee4), passes it to _XRead and frees it (0xd8acf30). It calls __glXPostHiddenError at two sites (0xd8ad07c, 0xd8ad0f0), each followed by a return of 0. The request layout is not in the facts, so the exact wire format is unknown.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `isNotProxy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c1618 (n32).
  This is the same device-probe shape as the o32 copy at 0xd8d2e68: open (0xd8c1650), fcntl (0xd8c1674), two ioctls (0xd8c168c, 0xd8c16e4) and a strchr (0xd8c1708), with close calls at five sites. Nine return sites give 0 or 1. The ioctl requests are 0x65 and 0x66, as in the o32 copy, and their meanings are not in the facts, so this copy confirms the structure but not the purpose.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8c18f8 (n32).
  The routine initializes the client library (__glXInitialize, 0xd8c1930) and reads two environment variables with getenv (0xd8c1a28, 0xd8c1fb8). It calls __glXCreateDirectContext (0xd8c1af4) on a calloc'd structure, sets up vertex-array state (__glXInitVertexArrayState, 0xd8c1bb8) and calls __glXFindVisualConfig (0xd8c2008), with __glXOverrideVisualsIdToXid calls at several sites. The last path before the final _XFlush calls fprintf (0xd8c2164) and then exit with status 0 (0xd8c2170). The facts do not say which condition leads there.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4fb80 (n32).
  The routine calls ceil four times (0xda4fbc8, 0xda4fbf4, 0xda4fc2c, 0xda500d0) and memset (0xda501d4). One call has an unresolved target (0xda5032c). Its return value is either a ceil result or an unresolved value. Its shape matches the o32 copy at 0xda3ef20, so the two are probably one routine built for two ABIs.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `DrawBitmapUsingPolyStipple` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50370 (n32).
  The routine calls __glOdysseyUpdateRasterPos (0xda504d8) and __glOdysseyImageCalcOdyEyeSpaceRasterPosZ (0xda504e4). It also calls __glSetError (0xda50ad4) and makes one __glOdysseyIoctl call (0xda50b58). Thirty-five indirect calls with unresolved targets lie between 0xda50a30 and 0xda50dbc, and these facts do not name them. The bitmap-to-stipple mapping is therefore only partly open.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyInitDefaultValues` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda59020 (n32).
  Role (from name): sets default GL state. The routine makes a long run of per-state setter calls: twenty __glOdyim_Disable calls, plus Enable, CullFace, FrontFace, ShadeModel, LightModeli, Fogfv and Fogi, ColorMask, DepthMask, StencilMask, PolygonMode, the alpha, stencil, depth, logic-op and blend setters, line, point and polygon-offset setters, and the material and fragment-lighting setters. Among them it calls the image initializer (0xda59528) early, and the lighting, fragment-lighting, fragment-material and texture-driver initializers (0xda59b90, 0xda59b9c, 0xda59ba8, 0xda59bb4) after the fragment-lighting setters. It reads an environment variable with getenv (0xda59ce4), makes further setter calls after it, and returns 0 or 1.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6fb60 (n32).
  The routine loads a global pointer from abs 0x1010 and reads floats from its third argument (lwc1 at +0x0, +0x4, +0x8 and +0xc). It writes words at arg0 +0x0 through +0x1c and a block reached through the global pointer at +0x9750, and it makes 21 stores to abs 0x4000. The return value is read through the global pointer chain [[0x1010]+31676]. Role (from name): applies a float material value. The facts do not say which material fields it targets, so that part is open.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `ApplyMaterialI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda70250 (n32).
  This is the sibling of ApplyMaterialF at 0xda6fb60, with the same global-pointer and abs 0x4000 structure. The difference in the facts is that its third argument is read with integer loads (lw at +0x0, +0x4, +0x8 and +0xc) and it also reads floats from [0x1010] +0xde8, alongside the abs float reads the F variant makes. The return value comes from the same chain as the F variant. The integer-to-material mapping is not visible in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `AddConvolutionBorders` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda85ce0 (n32).
  The routine is about 9.5 KB long and makes seven calls to __glOdysseyProgramTexFilter (for example 0xda85e3c, 0xda861d4), twenty-six calls to __glOdysseyImageMovePixelsTexture (for example 0xda85f20, 0xda86050), and over a hundred floorf and ceilf calls. Role (from name): adds border texels for convolution, perhaps by moving pixel rows or columns into a border region. The facts do not show which edge each call fills, so the per-edge mapping is open.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `OpenPipeMemReference` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa610 (n32).
  The routine makes three stores to arg0 +0x9750 and 17 stores to abs 0x4000. It calls __glOdysseyMIPS_SYNC twice (0xdaaa71c, 0xdaaa7a8) with one __glOdysseyIoctl (0xdaaa780) between them in address order. It returns 1 on one path and 0 on another. The name suggests a reference taken on a pipe memory object. The facts do not show the object's layout or the order in which the calls run.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `LookupKnownGroup` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab0a0 (n32).
  The routine calls LookupCSetId (0xdaab0ec), AddKnownGroup (0xdaab168), LookupCoresidRange (0xdaab188) and RemoveKnownGroup (0xdaab208). It clears a 0x54-byte record with bzero (0xdaab150) and calls __glSetError with code 0x505 (0xdaab1d8). It returns 0 on four paths and a call result on two (the LookupCSetId result at 0xdaab110 and an unresolved value at 0xdaab1a8). Role (from name): find, add or remove over a table of groups. The exact mode selection is open.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `LookupCoresidRange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab230 (n32).
  The routine indexes a table by (a2 << 2) + a1 at +0xc (0xdaab240), clears a structure with bzero (0xdaab2b8), and makes an ioctl call (0xdaab318). It writes three fields through arg1 (+0x4, +0x8 and +0x50, at 0xdaab3e4, 0xdaab410 and 0xdaab418) and calls __glSetError (0xdaab37c). Role (from name): looks up a range in a coresident group. The table's fields are not labelled, so the meaning of each field is partly open.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `DownsampleTextureThruHW` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab4350 (n32).
  The routine reads fields of the global pointer block at +0x7ed8, +0x7ed4, +0x7ed0, +0x7f00, +0x7b20 and +0x168d0, and it calls __glOdysseyImageLogBase2 twice (0xdab448c, 0xdab44b8) and __glOdysseyImageCalcFieldFormat (0xdab4778). Its last call is __glOdysseyValidateHardware (0xdab4954). The facts do not show the downsample dispatch itself, so this reads as a preparation step, and the step that actually runs the downsample is not in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab5590 (n32).
  The routine reads three fields of arg1 (+0x534, +0x53c, +0x540) and writes arg1 fields +0x538 and +0x558 through +0x594. It calls __glOdysseyClosePMObjReference twice (0xdab55b4, 0xdab563c) and calls __glSetError with code 0x505 at two sites (0xdab56b4, 0xdab56c8). Role (from name): releases a texture's reference to an object and clears its state fields. The field names are not in the facts, so the exact state cleared is open.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950 (n32).
  The routine reads a byte flag at arg0 +0xb8, reads float fields at arg0 +0x90 through +0xac among others, and loads one float from abs 0xdbde448. It emits 95 stores to abs 0x4000 (20 word stores and 75 float stores). The return value is the constant 0xffffffff8080d005, and the facts do not explain it. Role (from name): sends a clipped bitmap in RGB form. The meaning of the 0x4000 window is unknown.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `CISendClippedBmFmN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc140 (n32).
  Role (from name): the color-index sibling of RGBSendClippedBmFmTN at 0xdacb950. The routine reads the same flag at arg0 +0xb8 and float fields at +0x10, +0x14, +0x18, +0x1c, +0x90, +0xa0, +0xc0, +0xc4 and +0xc8, and it emits 50 stores to abs 0x4000 (11 word and 39 float). It returns the same constant 0xffffffff8080d005. The reading of the flag as a mode switch is an inference from the sibling pair, not from the facts.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `GetFBConfigsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf6dd14 (n64).
  This is the n64 build of the GetFBConfigsSGIX routine at 0xd8aa140. It uses the same X-connection pattern: _XReply (0xcf6ddd0), _XFlush (0xcf6dea8), _XRead (0xcf6e0e4), malloc and free (0xcf6de48, 0xcf6df68, 0xcf6df88), memset (0xcf6dfe8), __glXOverrideVisualGetVisualInfo (0xcf6ea68) and XFree (0xcf6eab4). It returns 0 or 1.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glXSendMakeCurrentRead` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf7098c (n64).
  This is the n64 build of __glXSendMakeCurrentRead at 0xd8acdc0, with the same call sequence: __glXSetupForCommand (0xcf709c4), _XReply (0xcf70a94, 0xcf70bf4), malloc, _XRead, free, _XFlush, and two __glXPostHiddenError calls (0xcf70c48, 0xcf70cbc). The request layout is not in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `CreateContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` at 0xcf856c8 (n64).
  This is the n64 build of CreateContext at 0xd8c18f8. It initializes the client library (0xcf85700), reads environment variables with getenv (0xcf85800, 0xcf85dbc), and calls __glXCreateDirectContext (0xcf858cc). It also sets up vertex-array state, calls __glXOverrideVisualsIdToXid at several sites, and calls __glXFindVisualConfig (0xcf85e14). The last path before the final _XFlush calls fprintf (0xcf85f74) and then exit with status 0 (0xcf85f80).
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb334010 (n64).
  This is the n64 build of the stippled-quad routine. It calls ceil at 0xb334060, 0xb33408c, 0xb3340c4 and 0xb334570, and memset at 0xb334688. Its return value is either a ceil result or an unresolved value. The shape matches the o32 and n32 builds, so the three are probably one routine for three ABIs.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `DrawBitmapUsingPolyStipple` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb334830 (n64).
  This is the n64 build of the polygon-stipple bitmap routine. It calls __glOdysseyUpdateRasterPos (0xb3349b8), __glOdysseyImageCalcOdyEyeSpaceRasterPosZ (0xb3349c4), __glSetError (0xb334fb4) and __glOdysseyIoctl (0xb335038). Like the n32 build at 0xda50370, it has a run of thirty-five indirect calls with unresolved targets (0xb334f10 to 0xb3352a0). Its return value is unresolved, [a0+48208] or the __glSetError result.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xb335c70 (n64).
  The routine is 276 bytes long and makes one call, to __glSPDlistSpace (0xb335cd8), which is conditional on a compare against the value at abs 0x1048. Its return value is either that loaded value or the __glSPDlistSpace result. The name suggests a color setter that is compiled into a display list, and the single space-reservation call is consistent with that reading, but the facts do not show what is stored.
  Grade: inferred.
  Reviewed: 2026-11-12 (sonnet)
