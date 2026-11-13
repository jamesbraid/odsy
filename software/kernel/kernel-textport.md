# Textport streams driver routines, one entry each

Release IRIX 6.5.30m, the console terminal driver `tport.o` inside `tport.a` of the IP35 kernel build (`usr/cpu/sysgen/IP35boot/tport.a`). The IP30 build (`usr/cpu/sysgen/IP30boot/tport.a`) holds the same 22 routines with identical code except `gfx_earlyinit`, so each entry speaks for both builds unless it says otherwise; the code hashes in `evidence/inventory/functions.tsv` agree. Labels are **established** (the whole routine was read from the disassembly and the decompiled listing) or **inferred**.

The driver is a STREAMS module with a single global state record in `.bss` (208 bytes) that the first slot of the small-data table points to. Offsets below are into that record. +0 holds 0 before anything ran, -1 once the lock exists and 1 once a text port has been chosen; +4 is the spin lock `TPORT`; +8 and +16 are the read and write queues; +24 are state flags (bit 0 open, bit 1 opening, bit 2 output stopped, bit 3 transmitter running, bit 4 next input byte is literal); +28 is a service-needed flag; +32 and +36 are the callout identifiers of the transmit and receive timers; +40 is a 48-byte terminal-settings block copied from the default settings `def_stty_ld`, whose first four words the receive path reads as input, output, control and local flags; +88 is the index of the chosen text port in the table `tp_tab`; +92, +96 and +104 are the console-colour flag, the sync-on-green flag and the monitor-timing string pointer; +112 to +176 is a 64-byte receive ring with its producer pointer at +176 and consumer pointer at +184; +192 is the 64-byte message block being filled for the stream head; +200 and +202 are the rows and columns, +204 and +206 two more halfwords of the window size.

`tp_tab` is a table of 56-byte entries at `.data` +0xc8 and `tp_tab_size` (1) says how many; the entry's seven slots are `htp_init`, `htp_reinit`, `htp_write`, `htp_unblank`, `htp_winsize`, `htp_dogui` and `htp_guiop`, none defined in this archive. The linked kernel (`unix`) defines all seven, so the text port that draws on the screen is chosen at link time, not by this module. Message type numbers (0 data, 12 delay, 14 ioctl, 129 and 130 ioctl acknowledge and refusal, 134 flush) are the usual STREAMS ones; that reading of the numbers is **inferred**.


- `tp_open` (`tport.o`, offset 0x0, 416 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Opens the console stream (arguments: read queue, device number pointer, open flag, credentials). Followed through every return in the decompiled listing. It finds the write queue with `WR`, returns 6 when the open flag is nonzero (module push) or when the device number has any bit of 0x3ffff set, and calls `tp_initlock`. A state that already has flag bit 0 or 1 set returns 0 at once, so a second open shares the first.
  Otherwise it sets flag value 2 (opening), allocates a 64-byte block with `allocb` (waiting with `strwaitbuf` and retrying; a wait that fails clears the flags and returns 63) and pushes the line-discipline module named by the first string of the read-only data, `stty_ld`, with `strdrv_push`. A push failure frees the block and returns its error. On success it stores the state in the private pointer of both queues, points the ring pointers at +112, records both queues, copies 48 bytes of `def_stty_ld` into +40, writes 9600 (0x2580) at +56, sets bit 7 of the word at +48, clears bit 5 of the word at +40, replaces flag bit 1 with bit 0 and returns 0.

- `tp_open` (`tport.o`, offset 0x0, 416 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/tport.a(tport.o)`.
  Open entry of the console stream in the IP30 build (arguments: read queue, device number pointer, open flag, credentials); the listing is instruction for instruction the IP35 one (the first routine of the member, so the inventory carries no code hash for either row). Its refusals come first: the open flag set returns 6, as does a device number with any of the low 18 bits set, and an already open or opening state returns 0 after `tp_initlock` has run.
  A first open sets the opening flag, allocates the 64-byte receive block with `allocb`, waiting through `strwaitbuf` and giving up with 63, then pushes the `stty_ld` discipline with `strdrv_push`. Success wires the queues, ring pointers and a copy of `def_stty_ld` into the state, sets 9600 baud in the word at +56 and the open flag, and returns 0; a failed push frees the block and returns the push's error.

- `tp_close` (`tport.o`, offset 0x1a0, 164 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Closes the console stream and clears the state (no argument is used). The body was read to its single return. Under the spin lock `TPORT`, taken with interrupts blocked, it cancels each of the two timers whose identifiers are nonzero with `untimeout` and zeroes them, then, only when a pending message block exists (the pointer at +192), flushes the receive ring with `tp_flushr` and frees the block with `freemsg`, zeroes the queue pointers at +8 and +16 and the flags at +24, releases the lock and returns 0.

- `tp_wput` (`tport.o`, offset 0x244, 1156 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Write-side put procedure of the stream (arguments: write queue, message). The decompiled listing and the jump structure were followed for each message type and each ioctl number. A data message (type 0) goes to `putq` and then `tp_start`. A delay message (type 12) is freed. A flush message (type 134) calls `sdrv_flush`; when the flag byte in the message has bit 1 it clears state flag bit 2 and calls `tp_start`, and when it has bit 0 it flushes the receive ring under the lock with `tp_flushr`. Any other type but ioctl goes to `sdrv_error`.
  An ioctl (type 14) reads its command from the first word of the message and its data from the continuation block, and replies by turning the message around as type 129 (accept) or 130 (refuse) with `qreply`. Command 0x5405 and command 0x5421 take no data (the latter sets bit 14 of the settings word at +40) and accept with a zero count. Command 0x5406 takes one word: 0 sets flag bit 2 and calls `tp_stop`, 1 clears it and calls `tp_start`, 2 and 3 do nothing, anything else stores 22 in the error field. Command 0x54c9 copies the 48-byte settings block out and sets the count to 48; commands 0x54ca, 0x54cb and 0x54cc copy 48 bytes in. Command 0x40087468 needs a count of 8, calls `tp_gwinsize` and copies the four window halfwords from +200 out. Commands 0x74700001 and 0x74700002 call `tp_dogui` and refuse when it returns 0; the second then passes the data to `tp_guiop` and refuses when that returns a negative number. Every other command is refused.

- `tp_xmit_qenable` (`tport.o`, offset 0x6c8, 88 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Timer callback that wakes the stream after a transmit delay (argument: the queue). It checks the transmit timer identifier at +32 and, when it is zero, calls `assfail` with the expression text `tp.tp_txtimeoid`, the file name the Odyssey stack text-port source unit and line 360; if the identifier is still zero afterwards it returns. Otherwise it zeroes +32 and calls `qenable` on the queue it was given.

- `tp_xmit` (`tport.o`, offset 0x720, 96 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Arms the transmit timer. When flag bit 3 (transmitter running) is set and the timer identifier at +32 is zero, it sets the service-needed flag at +28 and stores in +32 the result of `streams_timeout` called with the stream monitor, `tp_xmit_qenable`, a delay argument of -100, the read queue at +8 and two zeros. With the flag clear or a timer already pending it does nothing.

- `tp_tx` (`tport.o`, offset 0x780, 292 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Sends up to 16 bytes of queued output to the screen driver. With flag bit 0 clear or bit 2 set it calls `tp_stop`. Otherwise it takes the next message from the write queue with `getq`; an empty queue calls `tp_stop`. A message of type 0 has its unread bytes counted from the read pointer to the write pointer; at most 16 go to `tp_write`, the read pointer advances, `sysinfo_outch_add` counts them, and a fully consumed block is freed with `freeb` while its continuation block becomes the message. What remains is returned to the head of the queue with `putbq`, and `tp_xmit` re-arms the timer when any byte went out. A message of any other type reaches `panic` with the text "bad tport msg" and the type.

- `tp_start` (`tport.o`, offset 0x8a4, 76 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Starts the transmitter. At raised interrupt level (`spltty`) it tests flag bit 3; when clear it sets it and calls `tp_tx` once, then restores the level with `splx`. A running transmitter is left alone.

- `tp_stop` (`tport.o`, offset 0x8f0, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Stops the transmitter. Under `spltty` it clears flag bit 3 when it was set and restores the level with `splx`. It does not cancel a pending timer.

- `tp_rcv_qenable` (`tport.o`, offset 0x934, 88 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Timer callback that wakes the stream for received keyboard bytes (argument: the queue). It tests the receive timer identifier at +36; zero calls `assfail` with the expression text `tp.tp_rxtimeoid`, the file name the Odyssey stack text-port source unit and line 477, and a still-zero identifier returns. Otherwise it zeroes +36 and calls `qenable` on the queue.

- `tp_rcv` (`tport.o`, offset 0x98c, 388 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Keyboard byte handler registered with `gl_setporthandler` (argument: the raw key code). It calls `tp_unblank`, then `kb_translate` to turn the code into characters in a buffer on its stack, and returns 1 whatever happens. For a positive count, under the lock, it queues the characters in the receive ring when flag bit 0 is set. If the ring was empty and no receive timer is pending it sets the service-needed flag and starts one with `streams_timeout` and `tp_rcv_qenable`. Each character is stored at the producer pointer, which wraps from the ring end at +176 back to +112; when `kdebug` is nonzero a character of value 1 instead calls `debug` with the text "ring"; when the next slot would meet the consumer pointer the character is dropped.

- `tp_rsrv` (`tport.o`, offset 0xb10, 376 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Read-side service procedure, which also drives output (argument: the queue). It re-registers `tp_rcv` as the keyboard port handler when `keyboard_check` is nonzero. It needs a 64-byte message block: without one it tries `allocb` and on failure asks `bufcall` to run it again. Under the lock, when the service-needed flag is set, it feeds every byte between the consumer and producer pointers of the ring to `tp_rx`, wrapping at +176, stores the consumer pointer and clears the flag. When the block holds data and `canput` accepts, it passes the block upstream with `putnext` and allocates a fresh one. Finally it runs `tp_tx` under the lock, so queued screen output also leaves the write queue from this service routine. It returns 0.

- `tp_rx` (`tport.o`, offset 0xc88, 376 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Processes one received character (argument: the byte). It does nothing unless flag bit 0 is set and bit 7 of the control word at +48 (receiver enabled, **inferred**) is set; it then counts the byte with `sysinfo_rawch_add`. When bit 10 of the input flags at +40 is set (output flow control, **inferred** from its use) it compares the 7-bit byte with the characters at +73 and +74: the byte at +73 clears flag bit 2 and calls `tp_start` and is not stored; the byte at +74 sets bit 2, calls `tp_stop` and is not stored; while output is stopped and bit 11 of the input flags is set, any byte except the one at +74 also restarts it, and so does that byte when the byte at +64 is zero. A byte equal to the one at +80, when the byte at +64 is nonzero, is stored and sets flag bit 4, and the next byte skips the flow-control tests. Remaining bytes are stored in the message block at +192 if room is left, with bit 7 stripped when `kbdtype` is zero and bit 5 of the input flags is set.

- `tp_flushr` (`tport.o`, offset 0xe00, 36 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Empties the receive state. It sets the consumer pointer at +184 and the producer pointer at +176 to the ring start at +112, copies the read pointer of the message block at +192 into its write pointer to discard collected bytes, and clears the service-needed flag at +28.

- `tp_guiop` (`tport.o`, offset 0xe24, 104 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Forwards a graphics-operation request to the chosen text port (arguments passed through unchanged). With +0 not equal to 1 it returns -1. It indexes `tp_tab` by the word at +88 (56 bytes per entry), calls the seventh slot (`htp_guiop`) when it is nonzero and returns its result, or returns 0 when the slot is empty.

- `tp_write` (`tport.o`, offset 0xe8c, 80 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Draws characters through the chosen text port (arguments passed through: pointer and count). With +0 equal to 1 it indexes `tp_tab` by the word at +88 and calls the third slot (`htp_write`). It returns nothing and does nothing when no text port was chosen.

- `tp_unblank` (`tport.o`, offset 0xedc, 80 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Wakes a blanked screen through the chosen text port. With +0 equal to 1 it indexes `tp_tab` by the word at +88 and calls the fourth slot (`htp_unblank`); otherwise it returns at once.

- `tp_gwinsize` (`tport.o`, offset 0xf2c, 92 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Fetches the console window size into +200 and +202. When the fifth slot of the chosen `tp_tab` entry (`htp_winsize`) is nonzero it is called with the addresses of those two halfwords; otherwise 40 goes to +200 and 80 to +202. The halfwords at +204 and +206 are not written here.

- `tpcons_write` (`tport.o`, offset 0xf88, 64 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Console output entry for the kernel (arguments passed through). It calls the third slot of the `tp_tab` entry selected by +88 (`htp_write`) without testing that a text port was chosen or that the slot is set.

- `tp_init` (`tport.o`, offset 0xfc8, 456 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Brings up the text port (no arguments; returns 1 on success and 0 otherwise). Read through both branches. When +0 is already 1 it calls the second slot of the chosen entry (`htp_reinit`) with the console flag, monitor string and sync flag, registers `tp_rcv` on the keyboard port with `gl_setporthandler` and returns 1. Otherwise the boot argument `console`, if given, must start with 'g' or 'G' (default 'g'), and the argument `gfx` must be given and start with 'a'; either failing returns 0. The state then takes: +92 is 1 when `console` started with 'G'; +104 is the `monitor` argument when given, else the string "60"; +96 is 1 when `sync_on_green` is absent or starts with 'y', 'Y' or '1', else 0; +88 is 0. For each of the `tp_tab_size` entries it calls the first slot (`htp_init`) with those three values; the first to return nonzero makes it call `tp_initlock`, set +0 to 1, call `keyboard_init`, register `tp_rcv` and return 1, and each failure advances +88. When all fail it returns 0.

- `tp_initlock` (`tport.o`, offset 0x1190, 68 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Creates the driver's spin lock once. When +0 is zero it calls `spinlock_init` on +4 with the name "TPORT" and stores -1 at +0; otherwise it does nothing.

- `tp_dogui` (`tport.o`, offset 0x11d4, 92 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Asks whether the chosen text port supports graphics operations. With +0 nonzero it indexes `tp_tab` by the word at +88, calls the sixth slot (`htp_dogui`) when it is set and returns 1 if that returns nonzero; every other path returns 0.

- `gfx_earlyinit` (`tport.o`, offset 0x1230, 64 bytes): **established.**
  Build: `usr/cpu/sysgen/IP35boot/tport.a(tport.o)`.
  Early graphics probe of the IP35 build (no arguments; size 64 bytes here against 36 in the IP30 build). It calls `kona_earlyinit` and returns at once when that returns nonzero; on zero it calls `odsy_earlyinit` and returns when that returns nonzero; on zero it calls `vga_earlyinit`. It is a priority chain: each probe is tried only after the one before it returned zero (that zero means no board is **inferred**).

- `gfx_earlyinit` (`tport.o`, offset 0x1230, 36 bytes): **established.**
  Build: `usr/cpu/sysgen/IP30boot/tport.a(tport.o)`.
  Early graphics probe of the IP30 build (no arguments; 36 bytes). It calls `odsy_earlyinit` and then `mgras_earlyinit`, one after the other, with no test of either result, and returns after the second.
