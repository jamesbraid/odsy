# X module functions, one entry each

Release IRIX 6.5.30m, `usr/lib/X11/dyDDX/odyssey.so` (stripped; names are from the dynamic symbol table, code from `ddx/asm/odyssey/odsy/odsy.s`). Each entry starts with the function, then its address and size from the symbol table. Labels are **established** (read from the assembly) or **inferred**. Request numbers are those of `docs/ioctls.md`.

- `odsyValidateSwapbuf` (offset 0x15c64f0, 276 bytes): **established.**
  Registers a window's swap-buffer id with the kernel. It packs three words, the clip id from its second argument at +12, a word from its first argument at +4 and a third from the second argument at +20, and sends them as resource-manager request 1012 on the descriptor kept in the screen private at +100. On failure it logs the errno value. It then stamps the first argument at +20 with the next value of a global serial counter (restarting at 1 once the counter passes 0x10000000), sets bit 3 of byte +4 in the window's private record and clears bit 3 of byte +5.
- `odsyBlankScreen` (offset 0x16e76e0, 308 bytes): **established.**
  Build: `usr/lib/X11/dyDDX/odyssey.so`; the kernel has a function of the same name with different code.
  Blanks or unblanks the display. It sends its mode argument as the 4-byte argument of private request 0x6f64001e (`gfP_OdsyBRDMGRsetBlanking`) on the descriptor at screen private +100 and returns 1 when the call succeeds, or logs the errno and returns 0. Before the call, mode 1 with the screen record's flag at +316 set runs two helper calls and clears the flag, and mode 0 with the flag clear runs the helpers with an argument of 1, so the flag at +316 tracks whether the screen saver already holds the screen blank.
