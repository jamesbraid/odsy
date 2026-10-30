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
