# Install tools that touch the VPro board

The programs and scripts below ship beside the driver. For each: what it is for, how it reaches the board and its key entry points. Release IRIX 6.5.30m. **Established** means the file or the named routine was read in full; **inferred** is marked where it applies. Per-routine readings of the programs are in [vpro-tool-functions.md](vpro-tool-functions.md) and [diagnostics-and-libgl-functions.md](diagnostics-and-libgl-functions.md).

- `usr/gfx/startgfx`: **established.**
  A 1477-byte Bourne script that starts the window system.
  The `chkconfig` test at offset 837 stops it unless the `windowsystem` flag is on.
  The check at offset 909 looks for a login on the textport and, when one exists, turns the `tp` line of `/etc/inittab` from respawn to off and runs `telinit q`, so the textport driver stops competing with the X server for the board.
  The step at offset 1246 reads the platform class with `sysconf`, and unless it is the trusted one the script sends SIGHUP to a running `xdm` (offset 1304) or runs `/usr/bin/X11/xdm` (offset 1437).
  It never opens the graphics device: the board is reached later by the X server and its VPro module.
- `usr/gfx/stopgfx`: **established.**
  A 1654-byte script that stops the window system and gives the console back to the textport.
  After the same `windowsystem` flag test at offset 951, it turns the `tp` line of `/etc/inittab` back to respawn (offset 1125) and runs `telinit q`.
  It then sets the flag to off (offset 1510) and kills `XFree86` when that server is installed (offset 1588) and `Xsgi` otherwise (offset 1630).
  The board is released by the server's exit, not by anything the script does to the device.
- `usr/gfx/gfxtopology`: **established.**
  A 6294-byte Perl script that prints which graphics pipe sits behind which brick and port, and which keyboard and mouse belong to which pipe.
  It runs `hinv -mv` (offset 217), takes the graphics board line, and for lines that name an `ODY` part records its part number, revision and serial per hardware-graph location.
  When `/hw/gfx` is missing (offset 1158) it walks `/hw/nodenum` and lists `/hw/module/<node>/CGbrick/xtalk/*/agp/*/1a/fglrx`, the card-driver nodes of the CG-brick graphics cards (offset 1691); with `/hw/gfx` it lists the links (offset 2583) and classifies each by brick type: `IXbrick`, `Ibrick`, `Xbrick` or `Nbrick` give the `SN1` layout and a `slot` path the `SN0` one (offsets 2917 to 3363).
  It then matches `/etc/ioconfig.conf` (offset 3911) against `/hw/input` to place keyboards and mice, and marks a missing device with an asterisk.
  It touches only the hardware graph and `hinv`, never the board.
- `usr/gfx/gfxinfo`: **established.**
  One executable installed twice, as `gfxinfo` and as `usr/gfx/gfxinit`; `main` at 0x10005888 reads the program name it was run under and refuses any other ("I don't know who I am").
  Run as `gfxinfo` it takes `-v` and prints a board report; run as `gfxinit` it also takes `-d <dir>`, `-c`, `-f` and `-boards` and initialises the boards.
  It opens `/dev/opengl` with flags 0x802, counts boards with ioctl 0x65, asks each board for its record with ioctl 0x66 and hands the record to the routine of the family named in it; the VPro routines are `_odsy_info` (0x1000e03c) and `odsy_init` (0x1000e2c4), the same executable also carries the routines of the older display families.
  The microcode directory is `$GL_GRROOT` (empty when unset) plus `/usr/gfx/ucode/`; `odsy_init` loads `ODSY/buzz_xform.bin` through ioctl 0x6c.
  The environment variable `GFXINIT_DIAG`, when its value starts with FALSE, turns the diagnostic step off.
- `usr/gfx/gfxinit`: **established.**
  The second install of the `gfxinfo` executable, with the same 227 functions at the same addresses (`main` at 0x10005888) and the same program-name test, so run under this name it takes the initialising path.
  The 180 bytes that differ from `usr/gfx/gfxinfo` all lie in the library list at +0x300 (the time stamps of the five shared libraries: the `libc.so.1` stamp is 0x44c001b0 against 0x44c001ab, and the other four are 0x6adcba.. here, against 2006 stamps or 0x3be387c0 for `libm.so` in the other copy) and in 85 words of the global offset table around 0x272e0 to 0x27444, where the resolved library addresses differ.
  The checksums of `libXsgivc.so`, `libX11.so.1` and `libXext.so` in the list are equal and those of `libm.so` and `libc.so.1` differ, so the two copies were quickstarted against different library builds; that this happened when the files were installed is **inferred** from the stamp value of 0x6adcba.. being a date long after the 2006 release.
- `usr/gfx/setmon`: **established.**
  The command-line tool that sets the display format, colour-buffer depth and accumulation-buffer type of a pipe.
  Its `main` at 0x10008e88 parses a long option list and, for a VPro board, calls `odysetmon` (0x1000d864), which works through the X video-control extension and a timing file `/var/X11/Xvc/Odyssey%d_TimingTable` rather than through the driver.
  Format files come from `/usr/gfx/ucode/ODSY/vof` through `vfmtFindOdyFormatFile` (0x1001d040), and `odyDoFramelock` (0x1000d580) selects the framelock target format as platform parameter 3.
  The tool reaches the board only through the X server, which loads the format with the driver's timing-table request.
- `usr/bin/X11/xsetmon`: **established.**
  A graphical front end for the same settings as `setmon`, built with a C++ toolkit: its forms list the video formats and format combinations of a screen (`XSGIvcListVideoFormatsInCombination`), set per-channel rectangles, output phase, blanking and gain, and show channel and sync-port information (`XSGIvcQueryChannelInfo`).
  Every access goes through the X video-control extension, so the board is reached only through the X server.
  `doDownloadFormatButton` at 0x10027fd0 (2296 bytes) is the action that loads the chosen format, and `usage__7xsetmonGv` at 0x1002c610 prints the command-line form.
- `usr/gfx/dmconf`: **established.**
  A graphical tool that picks a format combination for a screen with a digital-video option and downloads it.
  Its main window class has one action per broadcast format (the 1080-line interlaced and progressive rates, 720-line progressive, 525-line and 625-line interlaced), and its download action calls `XSGIvcLoadVideoFormatCombination`, with `XSGIvcNVLoadVideoFormatCombination` for the non-volatile copy.
  The combination files come from the format directories of four display families (`/usr/gfx/ucode/KONA/dg4/vfo`, `/usr/gfx/ucode/STINGRAY/vfo`, `/usr/gfx/ucode/VOYAGER/vfo` and `/usr/gfx/ucode/ODSY/vof`) and `/var/X11/Xvc/SG2_formats`, and the tool refuses a display without the video-control extension ("XSGIvc not supported on target display").
  It never opens the graphics device; the board sees only what the X server loads.
- `usr/gfx/sgcombine`: **established.**
  An editor for the `.cmb` combination files of [display-files.md](display-files.md), also a toolkit program.
  It reads a combination with `vfmtReadCmp1Combination` and the formats it names with `vfmtReadCmp1OdyFormat`, `vfmtReadCmp1Format` and `vfmtReadCmp1SG2Format`, edits the tiling and video properties in its windows, checks that the result is valid for the target with `vfmtIsCmpCombinationValidForTarget`, saves with `vfmtWriteCmp1Combination` and, at its download button (`doDownloadButton__23StcombineMainFrameClassGP10_WidgetRecPv` at 0x10012360, 668 bytes), loads it through the X server with `XSGIvcLoadVideoFormatCombination`.
- `usr/sbin/Confidence/dualchannel`: **established.**
  A confidence test for the dual-channel option card, started from the 32-bit entry `__start` at 0x4033e0 into `main` at 0x403520.
  It reaches the card's two-wire bus through the graphics device: the program issues the bus ioctl 0x560b on a CRIME board (the `addiu` of 22027 at 0x4047b8 is the first of five such calls) and the private ioctl 0x6f640021 on a VPro board (the `lui` of 0x6f64 at 0x404874 is the first of five), and it draws its patterns through GL.
  Each routine of the program has an entry in [vpro-tool-functions.md](vpro-tool-functions.md).

## `xsetmon` gamma and sync routines

Read in full from the N32 executable `usr/bin/X11/xsetmon`. The tool reaches the board only through the X video-control extension, so each routine below ends in `XSGIvc...` calls and the X server does the hardware work. The single-precision constant pool of this build holds 1.0 at +0x00 and 65535.0 (word 0x477fff00) at +0x18.

- `vCalculateGammaCurve__GfiPUs` (`usr/bin/X11/xsetmon`, offset 0x100235e0, 200 bytes): **established.**
  Build: `usr/bin/X11/xsetmon`.
  Fills a table of 16-bit gamma values for a power curve. The first argument is the gamma exponent as a float in the first floating-point argument register, the second the entry count and the third the output array. With a count of zero or less it returns at once. Otherwise it forms 1.0 divided by the exponent and, for each index from 0 to the count minus 1, calls `pow` (0x10023658) with the index divided by the count (both converted to float, so the last entry uses (count-1)/count and the table never reaches the full-scale input) raised to that reciprocal as doubles, multiplies the result as a float by 65535.0, truncates to an integer with `trunc.w.s` and stores the low halfword at the next 2-byte slot (the `sh` at 0x1002367c, in the delay slot of the loop branch).
- `vGammaScalarChanged__19GammaMapEditorClassGf` (`usr/bin/X11/xsetmon`, offset 0x10026610, 168 bytes): **established.**
  Build: `usr/bin/X11/xsetmon`.
  Reacts to a change of the single gamma value in the gamma map editor (the editor is the first argument; the float argument arrives in the second floating-point register and is moved to the first at 0x10026634). It calls `vCalculateGammaCurve__GfiPUs` (0x1002663c) with the entry count from the word at editor +84 and the output array from the word at +80, then sends the table to the server with `XSGIvcStoreGammaColors16` (0x10026668; the first two arguments are the words at +312 and +316 of the global application object, the third is the word that editor +88 points to, then the count at +84, the word at +96 and the array at +80), calls `XSync` (0x10026680) on the same display with 0, and finally calls `calculateDrawing__19GammaMapEditorClassGv` (0x1002668c) and `redraw__19GammaMapEditorClassCGi` (0x1002669c, with 1) to repaint the curve.
- `vLoadDrawTable__19GammaMapEditorClassGPUs` (`usr/bin/X11/xsetmon`, offset 0x10028ff0, 240 bytes): **established.**
  Build: `usr/bin/X11/xsetmon`.
  Loads a ready-made gamma table (the second argument, an array of 16-bit values) into the editor and the server. It copies as many halfwords as the count at editor +84, to both the array at +80 and the array at +100, two entries per loop pass with the exit test between the halves (loop 0x10029028 to 0x10029068); a count of zero or less skips the copy. It then makes the same server call as `vGammaScalarChanged__19GammaMapEditorClassGf`: `XSGIvcStoreGammaColors16` at 0x10029090, `XSync` at 0x100290a8, `calculateDrawing__19GammaMapEditorClassGv` at 0x100290b4 and `redraw__19GammaMapEditorClassCGi` at 0x100290c4 with 1. After the copy it reloads the word at +96 for the store call, not the array at +100.
- `vWindowToGamma__19GammaMapEditorClassCGPC6XPointRiT2` (`usr/bin/X11/xsetmon`, offset 0x10027000, 76 bytes): **established.**
  Build: `usr/bin/X11/xsetmon`.
  Converts a window point to gamma-plot coordinates (arguments: editor, pointer to a point of two halfwords x then y, then two output words). The x output is the point's x (the signed halfword at +0) as a float times the float at editor +160, truncated to an integer. The y output is the unsigned halfword at editor +150 minus the point's y (the signed halfword at +2) as a float times the float at editor +164, truncated, so y is measured up from the bottom of the window. It calls nothing, and the second store is in the delay slot of the return (0x10027048).
- `iSplineIndexToGammaIndex__19GammaMapEditorClassCGi` (`usr/bin/X11/xsetmon`, offset 0x10028dd0, 56 bytes): **established.**
  Build: `usr/bin/X11/xsetmon`.
  Maps the index of a spline control point (the second argument, call it p) to an index in the gamma table. Let n be the word at editor +172 minus 1 and m the word at +152. When p equals n it returns m minus 1, the last table entry. Otherwise it returns p times the signed integer quotient m / n, which truncates before the multiply, so the points are evenly spaced only when m divides evenly. A `teq` of n against zero sits in the delay slot of the return (0x10028e04) and traps on a zero n when p differs from n.
- `changeSyncFormat__17SyncSelectorFrameGPC25SyncFormatDescriptorClass` (`usr/bin/X11/xsetmon`, offset 0x100224f0, 100 bytes): **established.**
  Build: `usr/bin/X11/xsetmon`.
  Switches the output sync format of a channel (arguments: the sync selector frame, a format descriptor). It calls `XSGIvcSetOutputSync` (0x10022528) with the display (the word at +312 of the global application object), the word at +132 of the display structure, the words at frame +52 and +56, and the descriptor's first word as the fifth argument, then calls `XFlush` (0x1002253c) on the display and returns its result.
- `DisplayCombination__21SetmonMasterFormClassGPCc` (`usr/bin/X11/xsetmon`, offset 0x10024aa0, 52 bytes): **established.**
  Build: `usr/bin/X11/xsetmon`.
  Forwards a request to show a format combination by name (the second argument) to the contents list held by the master form. It calls `DisplayCombination__28CombinationContentsListClassGPCc` (0x10024abc) with the list object loaded from the word at form +36 in the delay slot, passes the name through and returns that routine's result.
