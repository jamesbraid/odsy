# Firmware and standalone images

Three shipped files carry code that runs before IRIX or outside it: the IP30 boot PROM image, the IP35 boot PROM image and the standalone diagnostic monitor of the IP30. Release IRIX 6.5.30m. **Established** is what was read in the file; **inferred** is marked.

- `usr/cpu/firmware/IP30prom.bin`: **established.**
  The flash image of the IP30 boot PROM, 879312 bytes of big-endian MIPS64 code with no header: the first word is a jump to 0xbfc003c0 (the reset vector `j` at +0x0) and the second a jump to 0xbfc003e0, followed by exception-vector jumps (0xbfc005d4) that fill the rest of the first page. Code addresses are the flash offset plus 0xbfc00000 (the image is also seen at 0x9fc00000 in the cached window, which is how its code builds addresses with `lui`).
  The board support is the standalone VPro driver, named in the error texts it prints: 50 strings begin with `odsy` between 0x96470 and 0xa0a40 and the text "ODYSSEY" appears twice, at 0x96590 and 0x96698 (the second as "SGI-ODYSSEY").
  The routines identified by their messages are `odsyGatherInfo` (reports an invalid BUZZ revision type, an unknown SDRAM CAS latency and an unknown number of banks; its code starts at flash offset 0x48384 and holds the three string references at 0x483d8, 0x484a4 and 0x485fc), `odsyReset` (invalid bank count, latency or size in MB), `odsyInitDBE` (cannot initialise the main or the option two-wire port) and `odsy_earlyinit` ("re-entered. Init code probably paniced!").
  The same image prints the texts of the two-wire monitor-agent routines (`odsy_i2c2abReset`, `odsy_i2c2abAttention`, `odsy_i2c2abIDRequest`), of `odsy_initDCD2DAC` ("failed to disable flash") and of `odsy_reconfigDCD2FPLD` (failures while reprogramming an FPGA).
  Where each of these routines starts, other than `odsyGatherInfo`, was not located.
- `usr/cpu/firmware/ip35prom.img`: **established.**
  The flash image of the IP35 boot PROM, 1480360 bytes. The first 63 bytes are zero, byte 63 is 0xd2 and the text `JFKSWCSM` fills bytes 64 to 71, then come the words 0x6 at +76 and 0x1696a8 at +84, which equals the file size in bytes.
  It has no VPro bring-up code of its own: the strings `odsy` and `ODYSSEY` occur once in all of it, the single `odsy` being an entry of a short table of graphics board names (`kona`, `mgras`, `odsy` and `unknown_gfx`) at flash offset 562048, next to the warnings "Warning: Unknown GFX board (0x%x) at Module %M Slot %d" and "Note: Found gfx widget with unknown subsystem".
  So the IP35 PROM only identifies a VPro board by its widget identity and leaves the initialisation to the kernel driver's IP35 build, which is **inferred** from the absence of `odsyReset`, `odsyGatherInfo` and the other driver messages that the IP30 image holds.
  This reading rests on the image alone.
- `sbin/stand/ide.IP30`: **established.**
  The IP30 standalone diagnostic monitor, an N64 executable of 1594880 bytes whose entry point is 0xa8000000208a8410 (a link address in the standalone window) with `.text` from 0xa800000020800180 and `.rodata` from 0xa8000000208f0000. It reaches the board itself, through the same code as the PROM, not through IRIX.
  Its strings include the VPro driver's error texts (`odsyGatherInfo: Invalid buzz rev type`, `odsyReset: invalid sdram size`, `odsyInitDBE(): cannot initialize main i2c port`, `odsy_earlyinit re-entered`) and the monitor-agent and option-card messages of `odsy_i2c2abReset`, `odsy_i2c2abAttention`, `odsy_i2c2abIDRequest`, `odsy_initDCD2DAC` and `odsy_reconfigDCD2FPLD`, the same set as in `IP30prom.bin`.
  It also carries the text "odsy: frame buffer/fullscreen accum config causes oversubscription of sdram.", which the board-manager code prints when a framebuffer and accumulation configuration would exceed the board memory.
  A search of its strings for `odsy` and `ODYSSEY` finds only the driver's own messages above and no test-command names.

## Transform microcode images

Two data files hold the program of the board's transform engine. Both are tables of 96-bit instructions (12 bytes each, big-endian) in the format of `ucode/buzz_isa.md`; every statement here is **established** by comparing the two files and the loaders named.

- `usr/gfx/ucode/ODSY/buzz_xform.bin`: **established.**
  The full program as the install ships it: 33528 bytes, exactly 2794 instructions, starting with the instruction bytes 04a400000120c00000080000 and ending with a zero instruction word and the word 1e167204.
  It reaches the board in two steps: `gfxinit` (`odsy_init` at 0x1000e2c4 in `usr/gfx/gfxinfo`) maps the file read-only and sends it with ioctl 0x6c, and the kernel's `gf_OdsyDownload` (offset 0x130 in `odsy_ucode.o`, 840 bytes) hands it to `odsyDownloadUcode`, which writes each instruction as six 16-bit FIFO words after an address word.
  Against the kernel's built-in copy it has 99 more instructions inserted at record 792 and 429 appended after the copy's end.
- `usr/gfx/ucode/ODSY-kernel/buzz_ucode_ip30.bin`: **established.**
  The array the kernel itself carries, written out unchanged by the extraction script: 27196 bytes, which is 2266 instructions of 12 bytes plus a four-byte trailer of 0xffffffff (the file's last four bytes). It begins with the same instruction bytes as the full program.
  The kernel sends it from `odsyInitCfifo` (offset 0x230c in `odsy_init.o`, 860 bytes) at board start-up, loading only the first 2048 instructions into the sequencer RAM, before any program from `gfxinit` replaces it.
  The IP35 kernel's copy is byte-identical (`ODSY-kernel/buzz_ucode_ip35.bin` has the same bytes, so the inventory folds it into this row).
