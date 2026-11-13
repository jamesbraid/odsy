# Board libraries of the install

The OpenGL libraries of the VPro install live in one directory per host and ABI under `usr/gfx/arch/`: `IP30ODSY` (o32), `IP30ODSY32` (N32) and `IP30ODSY64` (64-bit) for the Octane2, the same three with the prefix `IP35ODSY` for IP35 hosts, and, in the reading tree, the copies of the same directories from the 6.5.30m install media and from two patch releases under `builds/`. Each directory holds the same two files, `libGL.so` and `libGLcore.so`. Release IRIX 6.5.30m unless a row names a build. Counts below are read from the dynamic symbol tables and section headers of each file (**established**); the roles are **inferred** from the exports and imports, which this page states, and from `kernel/ioctls.md` and `opengl/opengl.md` for what the board calls do.

How the pair works, from the files: `libGL.so` lists `libGLcore.so` first among its needed libraries, then `libXsgivc.so`, `libXext.so`, `libX11.so.1` and `libc.so.1`, so it sits on top of the renderer and the X libraries; it exports the GLX client calls (83 names starting `glX`, among them `glXCreateContext`, `glXMakeCurrent`, `glXSwapBuffers`, `glXChooseVisual` and the video-sync pair `glXGetVideoSyncSGI` and `glXWaitVideoSyncSGI`) and the encoder routines of the GLX protocol (434 names starting `__glx`). `libGLcore.so` needs only `libm.so` and `libc.so.1`; it exports the whole GL API plus the board-specific renderer, 268 names that start `__glOdyssey`, with the entry points that create a context (`__glOdysseyCreateContext`), validate state against the hardware (`__glOdysseyValidate`, `__glOdysseyValidateHardware`), clear (`__glOdysseyClear`), draw bitmaps (`__glOdysseyRenderBitmap`), interpret display lists (`__glOdysseyDlistInterpret`) and run the accumulation and asynchronous-marker machinery (`__glOdysseyInitAccum`, `__glOdysseyAsyncCheck`). It reaches the board by writing the command stream into the windows the kernel maps for the process (`GFX_MAPALL` in `kernel/ioctls.md`) and by the private ioctls of the driver; there is no other path in these files.

Inside each directory the two files for IP30 and IP35 contain the same code. For every function name the code hashes are equal between `IP30ODSY*` and `IP35ODSY*`, and the byte differences between the IP30 and IP35 copies are in the dynamic-link tables (`.dynamic`, `.liblist`, `.got`) for o32 and N32, with a few hundred bytes of N32 debug tables in `libGLcore.so`, and in the relocation, symbol, data and debug tables of a relinked file for the 64-bit pair.

## The 6.5.30m install media libraries

These six entries describe the files of `builds/6.5.30-media`; the files in the installed Octane2 directories `usr/gfx/arch/IP30ODSY*` have the same functions, exports and entry addresses, and their byte differences from the media files are listed under the table for those directories below.

- `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGL.so`: **inferred.**
  The o32 GLX client library, 486700 bytes, 671 functions, 644 exported (`.mdebug` symbols as well as the dynamic table). The entry points are `glXCreateContext` at 0xd8127e8 (96 bytes), `glXMakeCurrent` at 0xd812940 (68 bytes), `glXSwapBuffers` at 0xd811aa4 (400 bytes), `glXChooseVisual` at 0xd80e650 (2716 bytes) and `__glXInit` at 0xd833e98 (336 bytes). It has 148 imports, nearly all of them GL entry points that `libGLcore.so` and the X libraries resolve.
- `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`: **inferred.**
  The o32 renderer, 3553860 bytes, 5169 functions and 4737 exports, 268 of them `__glOdyssey` routines. Its context entry `__glOdysseyCreateContext` is at 0xd96f6b0 and 5372 bytes long, `__glOdysseyValidateHardware` at 0xd96ae20 (4612 bytes), `__glOdysseyClear` at 0xd967240 (2324 bytes) and `__glOdysseyDlistInterpret` at 0xd9738d0 (492 bytes). This build has no DWARF; names and sizes come from the dynamic table and the `.mdebug` procedure table.
- `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`: **inferred.**
  The N32 GLX client library, 516508 bytes, 673 functions. It has 652 exports against the o32 file's 644, and its `glXChooseVisual` is 6244 bytes at 0xd834784 where the o32 one is 2716, so the N32 build inlines more of the visual scoring. Other entry points are `glXMakeCurrent` at 0xd81f6c8 (60 bytes), `glXCreateContext` at 0xd832f24 (76 bytes), `glXSwapBuffers` at 0xd833d30 (356 bytes) and `__glXInit` at 0xd80dfd8 (532 bytes). The DWARF line addresses are stale and were dropped, so addresses come from the dynamic table.
- `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`: **inferred.**
  The N32 renderer, 3812732 bytes, 5216 functions and 4750 exports, the largest export set of the three ABIs, with DWARF (343828 bytes of `.debug_info`). `__glOdysseyCreateContext` is at 0xd96c610 and 12648 bytes long (the o32 one is 5372), `__glOdysseyValidateHardware` at 0xd968180 (4992 bytes), `__glOdysseyClear` at 0xd964aa0 (1996 bytes) and `__glOdysseyDlistInterpret` at 0xd972710 (588 bytes).
- `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`: **inferred.**
  The 64-bit GLX client library, 567424 bytes, 673 functions and 651 exports. Its addresses are small (`glXMakeCurrent` at 0x55a41cc, 60 bytes; `glXCreateContext` at 0x55b7ac4, 76 bytes; `glXSwapBuffers` at 0x55b88cc, 356 bytes; `glXChooseVisual` at 0x55b9324, 6352 bytes; `__glXInit` at 0x5592b48, 460 bytes) because the 64-bit linker places it low. Its DWARF line addresses are stale, so these come from the dynamic table.
- `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`: **inferred.**
  The 64-bit renderer, 4138224 bytes, 5137 functions and 4667 exports, the fewest of the three. `__glOdysseyCreateContext` is at 0x21b07b0 and 10812 bytes long, `__glOdysseyValidateHardware` at 0x21ac4a0 (5028 bytes), `__glOdysseyClear` at 0x21a8e30 (2008 bytes) and `__glOdysseyDlistInterpret` at 0x21b60f0 (620 bytes); it carries 403771 bytes of DWARF.

## Data for the other copies

One row per file. Columns: the file, its label, its role, ABI, size in bytes, bytes of code, exported names, exports starting `__glOdyssey`, exports starting `glX`, imported names, functions in the inventory and, for the patch builds, the function names present or missing against the 6.5.30m install media copy of the same directory and file.

### IP35 host directories

| File | Label | Role | Layer | Board access | ABI | Bytes | Code bytes | Exports | Board-renderer exports | GLX exports | Imports | Functions | Added vs media build | Removed vs media build | Context entry |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `usr/gfx/arch/IP35ODSY/libGL.so` | established | GLX client library | above the renderer | no direct access | o32 | 486700 | 208416 | 644 | 0 | 83 | 148 | 671 | - | - | `glXCreateContext` at 0xd8127e8 |
| `usr/gfx/arch/IP35ODSY/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | o32 | 3553860 | 1688912 | 4737 | 268 | 0 | 57 | 5169 | - | - | `__glOdysseyCreateContext` at 0xd96f6b0 |
| `usr/gfx/arch/IP35ODSY32/libGL.so` | established | GLX client library | above the renderer | no direct access | N32 | 516508 | 215052 | 652 | 0 | 83 | 148 | 673 | - | - | `glXCreateContext` at 0xd832f24 |
| `usr/gfx/arch/IP35ODSY32/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | N32 | 3812732 | 1656380 | 4750 | 268 | 0 | 40 | 5216 | - | - | `__glOdysseyCreateContext` at 0xd96c610 |
| `usr/gfx/arch/IP35ODSY64/libGL.so` | established | GLX client library | above the renderer | no direct access | 64-bit | 567424 | 215116 | 651 | 0 | 83 | 148 | 673 | - | - | `glXCreateContext` at 0x2167ac4 |
| `usr/gfx/arch/IP35ODSY64/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | 64-bit | 4138224 | 1671168 | 4667 | 268 | 0 | 40 | 5137 | - | - | `__glOdysseyCreateContext` at 0x21b07b0 |

- `usr/gfx/arch/IP35ODSY/libGL.so`: **inferred.**
  The o32 GLX client layer of the IP35 directory, 486700 bytes and 671 functions. It exports 644 names, 83 of them `glX` calls, and imports 148, nearly all of them GL entry points that `libGLcore.so` resolves. Its context entry, `glXCreateContext` at 0xd8127e8, is the client call that opens a context.
- `usr/gfx/arch/IP35ODSY/libGLcore.so`: **inferred.**
  The o32 board renderer of the IP35 directory, 3553860 bytes, 5169 functions and 4737 exports, 268 of them `__glOdyssey` routines. It holds 1688912 bytes of code, and its context entry `__glOdysseyCreateContext` sits at 0xd96f6b0. This is the file that writes command words into the windows the kernel maps for the process.
- `usr/gfx/arch/IP35ODSY32/libGL.so`: **inferred.**
  The N32 GLX client layer of the IP35 directory, 516508 bytes and 673 functions. Its 652 exports are the most of the three GLX client files, 83 of them `glX` names, and `glXCreateContext` at 0xd832f24 is its context entry.
- `usr/gfx/arch/IP35ODSY32/libGLcore.so`: **inferred.**
  The N32 board renderer of the IP35 directory, 3812732 bytes, 5216 functions and 4750 exports, the largest export count of the three renderers. It carries 268 `__glOdyssey` routines and imports 40 names, and its context entry `__glOdysseyCreateContext` sits at 0xd96c610.
- `usr/gfx/arch/IP35ODSY64/libGL.so`: **inferred.**
  The 64-bit GLX client layer of the IP35 directory, 567424 bytes, 673 functions and 651 exports, 83 of them `glX`. It imports 148 names, and `glXCreateContext` at 0x2167ac4 is its context entry.
- `usr/gfx/arch/IP35ODSY64/libGLcore.so`: **inferred.**
  The 64-bit board renderer of the IP35 directory, 4138224 bytes, 5137 functions and 4667 exports, 268 of them `__glOdyssey` routines. It holds 1671168 bytes of code, and `__glOdysseyCreateContext` at 0x21b07b0 is its context entry.

### Installed Octane2 directories (`usr/gfx/arch/IP30ODSY*`)

| File | Label | Role | Layer | Board access | ABI | Bytes | Code bytes | Exports | Board-renderer exports | GLX exports | Imports | Functions | Added vs media build | Removed vs media build | Context entry |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `usr/gfx/arch/IP30ODSY/libGL.so` | established | GLX client library | above the renderer | no direct access | o32 | 486700 | 208416 | 644 | 0 | 83 | 148 | 671 | - | - | `glXCreateContext` at 0xd8127e8 |
| `usr/gfx/arch/IP30ODSY/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | o32 | 3553860 | 1688912 | 4737 | 268 | 0 | 57 | 5169 | - | - | `__glOdysseyCreateContext` at 0xd96f6b0 |
| `usr/gfx/arch/IP30ODSY32/libGL.so` | established | GLX client library | above the renderer | no direct access | N32 | 516508 | 215052 | 652 | 0 | 83 | 148 | 673 | - | - | `glXCreateContext` at 0xd832f24 |
| `usr/gfx/arch/IP30ODSY32/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | N32 | 3812732 | 1656380 | 4750 | 268 | 0 | 40 | 5216 | - | - | `__glOdysseyCreateContext` at 0xd96c610 |
| `usr/gfx/arch/IP30ODSY64/libGL.so` | established | GLX client library | above the renderer | no direct access | 64-bit | 567424 | 215116 | 651 | 0 | 83 | 148 | 673 | - | - | `glXCreateContext` at 0x55b7ac4 |
| `usr/gfx/arch/IP30ODSY64/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | 64-bit | 4138224 | 1671168 | 4667 | 268 | 0 | 40 | 5137 | - | - | `__glOdysseyCreateContext` at 0x21b07b0 |

The installed files differ from the media files of the same name only in bytes of link-time tables: 68 bytes in the o32 `libGL.so` (6 in `.dynamic`, 16 in `.liblist`, 46 in `.got`), 151 in the N32 one, 37 in the o32 `libGLcore.so` and 115 in the N32 one (the library list holds the time stamps and checksums of the libraries each file was linked against), and many more in the two 64-bit files, whose dynamic symbol, relocation, data and debug tables were laid out again (13492 and 74932 differing bytes) while the function code is the same by name.

### Patch 4103 (`builds/vpro-patch-4103`)

| File | Label | Role | Layer | Board access | ABI | Bytes | Code bytes | Exports | Board-renderer exports | GLX exports | Imports | Functions | Added vs media build | Removed vs media build | Context entry |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so` | established | GLX client library | above the renderer | no direct access | o32 | 451872 | 199680 | 609 | 0 | 80 | 148 | 650 | 1 | 22 | `glXCreateContext` at 0xd8b11c4 |
| `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | o32 | 3436908 | 1623376 | 4673 | 249 | 0 | 51 | 5103 | 12 | 78 | `__glOdysseyCreateContext` at 0xda4ba44 |
| `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so` | established | GLX client library | above the renderer | no direct access | N32 | 464860 | 208380 | 617 | 0 | 80 | 148 | 650 | 1 | 24 | `glXCreateContext` at 0xd8c2198 |
| `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | N32 | 3446300 | 1575852 | 4687 | 249 | 0 | 40 | 5155 | 12 | 73 | `__glOdysseyCreateContext` at 0xda5b150 |
| `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so` | established | GLX client library | above the renderer | no direct access | 64-bit | 513624 | 209324 | 617 | 0 | 80 | 148 | 650 | 1 | 24 | `glXCreateContext` at 0xcf85fa8 |
| `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | 64-bit | 3760880 | 1589248 | 4605 | 249 | 0 | 40 | 5076 | 12 | 73 | `__glOdysseyCreateContext` at 0xb33f5a0 |

- `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGL.so`: **inferred.**
  The o32 GLX client layer of patch 4103, 451872 bytes and 650 functions. It exports 609 names, 80 of them `glX` calls, against 644 and 83 in the media build. Against that build it gains one function and loses 22, and its context entry `glXCreateContext` is at 0xd8b11c4.
- `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`: **inferred.**
  The o32 board renderer of patch 4103, 3436908 bytes, 5103 functions and 4673 exports, 249 of them `__glOdyssey` routines. Its symbol names include `hardAccumulate24`, `hardAccumulate31` and `hardMult31`, the 24-bit and 31-bit accumulation routines the media build does not have, and no `BindHyperpipe` or `QueryHyperpipeAttrib`. Its context entry is `__glOdysseyCreateContext` at 0xda4ba44.
- `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGL.so`: **inferred.**
  The N32 GLX client layer of patch 4103, 464860 bytes with 650 functions and 617 exports, 80 of them `glX` names. It gains one function and loses 24 against the media build. Its `glXCreateContext` entry is at 0xd8c2198.
- `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`: **inferred.**
  The N32 board renderer of patch 4103, 3446300 bytes, 5155 functions and 4687 exports, with 249 `__glOdyssey` routines and 40 imports. Its code is 1575852 bytes. It gains twelve functions and loses 73 against the media build, and its context entry `__glOdysseyCreateContext` sits at 0xda5b150.
- `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGL.so`: **inferred.**
  The 64-bit GLX client layer of patch 4103, 513624 bytes and 650 functions. Its 617 exports include 80 `glX` names, and it gains one function and loses 24 against the media build. `glXCreateContext` at 0xcf85fa8 is the context entry.
- `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY64/libGLcore.so`: **inferred.**
  The 64-bit board renderer of patch 4103, 3760880 bytes, 5076 functions and 4605 exports, the fewest of the three renderers in this build. It carries 249 `__glOdyssey` routines and 1589248 bytes of code, and it gains twelve functions and loses 73 against the media build. `__glOdysseyCreateContext` at 0xb33f5a0 is its context entry.

### Patch 4104 (`builds/vpro-patch-4104`)

| File | Label | Role | Layer | Board access | ABI | Bytes | Code bytes | Exports | Board-renderer exports | GLX exports | Imports | Functions | Added vs media build | Removed vs media build | Context entry |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGL.so` | established | GLX client library | above the renderer | no direct access | o32 | 451872 | 199680 | 609 | 0 | 80 | 148 | 650 | 1 | 22 | `glXCreateContext` at 0xd8b11c4 |
| `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | o32 | 3436908 | 1623376 | 4673 | 249 | 0 | 51 | 5103 | 12 | 78 | `__glOdysseyCreateContext` at 0xda4ba44 |
| `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so` | established | GLX client library | above the renderer | no direct access | N32 | 464860 | 208380 | 617 | 0 | 80 | 148 | 650 | 1 | 24 | `glXCreateContext` at 0xd8c2198 |
| `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | N32 | 3446300 | 1575852 | 4687 | 249 | 0 | 40 | 5155 | 12 | 73 | `__glOdysseyCreateContext` at 0xda5b150 |
| `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so` | established | GLX client library | above the renderer | no direct access | 64-bit | 513624 | 209324 | 617 | 0 | 80 | 148 | 650 | 1 | 24 | `glXCreateContext` at 0xcf95fa8 |
| `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` | established | board renderer | renders and queues commands | mapped windows and ioctls | 64-bit | 3760880 | 1589248 | 4605 | 249 | 0 | 40 | 5076 | 12 | 73 | `__glOdysseyCreateContext` at 0xbd5f5a0 |

- `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGL.so`: **inferred.**
  The o32 GLX client layer of patch 4104, 451872 bytes, the same size as patch 4103's copy, with the same 650 functions and 609 exports. Its context entry `glXCreateContext` is at 0xd8b11c4, the address patch 4103 gives. The file hash differs from patch 4103's, but `.text`, `.rodata`, `.data` and the symbol tables are byte for byte the same: the differences are in `.dynamic` (the MIPS time stamp, 2000-11-03 03:36:44 in patch 4103 and 06:23:48 in patch 4104), `.liblist`, `.mdebug` and the quickstart `.got` slots that hold addresses inside other shared libraries.
- `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY/libGLcore.so`: **inferred.**
  The o32 board renderer of patch 4104, 3436908 bytes, 5103 functions and 4673 exports, the counts patch 4103 gives. Its context entry `__glOdysseyCreateContext` is at 0xda4ba44, and it gains twelve functions and loses 78 against the media build.
- `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGL.so`: **inferred.**
  The N32 GLX client layer of patch 4104, 464860 bytes, with 617 exports against 650 functions. Its context entry `glXCreateContext` sits at 0xd8c2198, the same place as in patch 4103, and it gains one function and loses 24 against the media build.
- `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`: **inferred.**
  The N32 board renderer of patch 4104, 3446300 bytes, 5155 functions and 4687 exports. Its context entry `__glOdysseyCreateContext` is at 0xda5b150, and against the media build it gains twelve functions and loses 73.
- `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGL.so`: **inferred.**
  The 64-bit GLX client layer of patch 4104, 513624 bytes, 617 exports and 650 functions. Its context entry `glXCreateContext` is at 0xcf95fa8, 0x10000 above patch 4103's copy.
- `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`: **inferred.**
  The 64-bit board renderer of patch 4104, 3760880 bytes, 5076 functions and 4605 exports, 249 of them `__glOdyssey` routines. Its context entry `__glOdysseyCreateContext` is at 0xbd5f5a0, not at the 0xb33f5a0 that patch 4103 gives, and it gains twelve functions and loses 73 against the media build.

The IP35 directories and the media copies (the six entries above) have the same exports, imports and function counts as the installed IP30 files in every row. The two patch builds are smaller than the media build and differ in the same way in every ABI: each lacks the media copy's GLX query-function group (`glXGetProcAddress`, `glXGetProcAddressARB`, `glXGetCurrentDrawableEXT` and the `__glx_Get...` filter and parameter routines) and has `GetBoardName` instead, and each `libGLcore.so` lacks the media copy's soft-clip and hyperpipe query routines (`BindHyperpipe`, `QueryHyperpipeAttrib`, `__glOdysseySoftClipRenderTriangleFast` and others) while adding twelve routines for 24-bit and 31-bit hardware accumulation (`hardAccumulate24`, `hardAccumulate31`, `hardMult31`, `__glOdyim_HardAccum31`, `__glOdysseyValidateClipmap` and others). Patch 4103 and patch 4104 have equal export counts in every ABI; their byte differences are in the dynamic-link tables and debug tables, with seventeen code bytes differing in the two `libGLcore.so` files of the N32 and 64-bit ABIs (one function, `AllocateGfxMemForTexture`, differs in the 64-bit file).
