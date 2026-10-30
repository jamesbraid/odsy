# X module (`odyssey.so`) functions read in full, one entry each

Release IRIX 6.5.30m, `usr/lib/X11/dyDDX/odyssey.so` (N32, `$gp` resolved with `ghidra/scripts/IrixGp.java` before reading). Each entry names the function, its address in the module and its size in bytes. Labels are **established** for functions whose whole listing was read next to the decompilation, and **inferred** for anything less. The role lists of the whole module are in [odyssey-so-functions.md](odyssey-so-functions.md). Offsets such as +0x1b4 in a screen record are the X server's own `ScreenRec` and window-record fields; the module keeps two screen-private slots, the board record (`odsyScreenPrivateIndex`) and the video-control record (`vcScreenPrivateIndex`).

## Stub and one-line routines

- `odsyInitAllocator` (`usr/lib/X11/dyDDX/odyssey.so`, 0x1694d40, 8 bytes): **established.**
  Reports success without doing any work: the listing is two instructions, `jr ra` at 0x1694d40 and `li v0,1` in its delay slot at 0x1694d44, and no state is read or written.
- `odsyQueryMaxSwapBarrier` (`usr/lib/X11/dyDDX/odyssey.so`, 0x1636cf0, 8 bytes): **established.**
  Also returns 1 and nothing else, through `li v0,1` at 0x1636cf4 behind the return at 0x1636cf0; it does not read its arguments or the board record, and no limit is written for the caller.
- `odsyInstallFakeColormap` (`usr/lib/X11/dyDDX/odyssey.so`, 0x163f030, 8 bytes): **established.**
  Does nothing: `jr ra` at 0x163f030 and a no-op at 0x163f034, and no argument is read.
- `odsyStoreFakeColors` (`usr/lib/X11/dyDDX/odyssey.so`, 0x1623c70, 8 bytes): **established.**
  Returns at once: the return is at 0x1623c70 with a no-op delay slot at 0x1623c74, and no argument or global is read or written.
- `odsyWakeupHandler..M` (`usr/lib/X11/dyDDX/odyssey.so`, 0x158f8f0, 8 bytes): **established.**
  Returns at once: the whole routine is the return at 0x158f8f0 and the no-op after it at 0x158f8f4, so it reads and writes nothing.
- `rrmUndoubleBufferWindow` (`usr/lib/X11/dyDDX/odyssey.so`, 0x161bda0, 8 bytes): **established.**
  Returns at once: the routine is `jr ra` at 0x161bda0 followed by a no-op at 0x161bda4 and reads or changes no window or board state.
- `odsyScanAudioInventory..K` (`usr/lib/X11/dyDDX/odyssey.so`, 0x15931e0, 36 bytes): **established.**
  Tests one record: when the word at +4 of the first argument is 10 it stores 0 through the second argument and returns 1 (`li v0,1` at 0x15931fc), otherwise it returns 0 at 0x15931f4 and stores nothing.
- `odsySetColor` (`usr/lib/X11/dyDDX/odyssey.so`, 0x16ffb80, 56 bytes): **established.**
  Guard against a call that must not happen: it prints "odsySetColor: should not be called." with `ErrorF` (the call at 0x16ffba0) and returns; it sets no colour and touches no board register.
- `odsyInitWindowType` (`usr/lib/X11/dyDDX/odyssey.so`, 0x1631730, 80 bytes): **established.**
  Stores the window type halfword of the window's resource-manager private (at +2): it is 1 when the window's frame-buffer-layer private has a nonzero word at +0x18 (branch at 0x1631768, store at 0x1631774) and 0 otherwise (store at 0x163177c). The two private records are found through `rrmWindowPrivateIndex` and `nfbWindowPrivateIndex` in the window's private array at +0x84.
- `rrmNeedCID` (`usr/lib/X11/dyDDX/odyssey.so`, 0x1586c00, 96 bytes): **established.**
  Returns 0 or 1 from two stored numbers. It loads the screen's resource-manager record word at +8 and the object at +0x34 of the first argument; with no object it answers 0 when that screen word is nonzero and 1 when it is zero (branch at 0x1586c50), and with an object it answers 1 when the screen word is below the object's word at +4 (the compare at 0x1586c3c) and 0 otherwise.

## Screen controls, genlock and timing-file output

- `odsySetScrnGlock` (`usr/lib/X11/dyDDX/odyssey.so`, 0x169c100, 120 bytes): **established.**
  Records the screen's genlock source. The third argument must be -1 or -2 (the two values `setmon` passes to the input-sync call, -2 for its external source); any other value prints "odsySetScrnGlock: Invalid sync source: %d" with `ErrorF` (the call at 0x169c134) and the value is not stored, while a valid one is stored at +0x18 of the video-control screen record by the delay-slot store at 0x169c168.
- `odsySetExternalLock..GD` (`usr/lib/X11/dyDDX/odyssey.so`, 0x165a130, 72 bytes): **established.**
  Selects which external lock input the screen follows. The second argument is stored at +0x30 of the video-control screen record only when it is not negative and is below the record's count at +0x2c (the branches at 0x165a150 and 0x165a160, the store at 0x165a16c); an out-of-range number is ignored without a message.
- `odsyGenlockHandler..FD` (`usr/lib/X11/dyDDX/odyssey.so`, 0x15ff550, 92 bytes): **established.**
  Handler run when genlock status changes. It stores its second argument at +0x1c of the video-control screen record (the store at 0x15ff58c), calls `odsyBlankScreen` with mode 0 and the screen at 0x15ff590, and returns 0.
- `odsyQryCntrl..JD` (`usr/lib/X11/dyDDX/odyssey.so`, 0x16de370, 140 bytes): **established.**
  Answers a control query for one screen. For control 10 it writes 0 at +0x20 of the reply block; for control 5 it converts the integer at +0x7c of the board's screen record to a float stored at +0x10 of the reply (the `cvt.s.W` at 0x16de3e8); for control 11 it tests the bit selected by the second argument in the mask at +0x134 of the board record and writes 1 or 0 at +0x28 of the reply (the stores at 0x16de3cc and 0x16de3f8); every other control returns with the reply untouched.
- `odsyWriteTTfilename` (`usr/lib/X11/dyDDX/odyssey.so`, 0x169c180, 176 bytes): **established.**
  Writes the three-line timing-table file that `setmon` also writes: it opens the path in the first argument for writing (the call to `fopen` at 0x169c1a0; a failure returns 10), then prints the format name with "%s" and the two integers (the colour depth and the accumulation type) each with "%d" and a newline, closes the file and returns 0.
