/*
 * PBJ.h - VPro (Odyssey) PB&J: the display-side chip behind the display FIFO
 *
 * Labels:
 *   established - read directly from a binary at the cited function/offset
 *   inferred    - a reasoned reading; the reasoning is given
 *   unknown     - not yet derived
 *
 * Release: IRIX 6.5.30m. IP30 (Octane2) kernel objects (software/kernel/ip30/),
 * checked against the IP35 set (software/kernel/ip35/) where noted, and
 * usr/gfx/gfxinit (N32, stripped). Prose and derivations: pbj/README.md.
 * Display FIFO word format and the addresses already decoded for timing,
 * cursor and display modes: DISPLAY.h. This header owns the address space
 * as a whole, the read-back window, identification, I2C, blanking,
 * genlock and the start-up sequence.
 */
#ifndef PBJ_H
#define PBJ_H

#include <stdint.h>

/* ===================================================================
 * 1. What PB&J is
 * ===================================================================
 * The name comes from gfxinit, which prints "PB&J version %d" for an
 * odsy board (string at file offset 0x228c8, printed by the routine at VA
 * 0x1000e03c that also prints "BUZZ version" and the memory size). The
 * value printed is word 68 of the board-information block that
 * gf_OdsyInfo (odsy.o) copies out from board record +200, i.e. record
 * +268. odsyGatherInfo (odsy_init.o) stores bits 2:0 of the 32-bit word
 * at board PIO offset 0x23380c there. established.
 *
 * That offset lies in the display read-back window (section 2): it is
 * display address 0x2701. So PB&J's version register sits in the same
 * 14-bit address space as the video timing generator, colour maps, the
 * cursor, the display-mode table and the I2C controllers, all of which
 * the host writes through the display FIFO. BUZZ's own revision comes
 * from a different place, the BUZZ PIO register at offset 0x04.
 * inferred: PB&J is the display back end the display FIFO feeds, the
 * part the kernel calls the DBE (odsyInitDBE sets it up, and the BUZZ
 * flags register names a DBE_OFLOW interrupt). Not proved: no string
 * links the name "PB&J" to "DBE"; the link is that the PB&J version is
 * a DBE-space register. What PB&J stands for: unknown.
 *
 * Everything the host does to PB&J goes through BUZZ's PIO window
 * (board base + 0x400000 for writes, + 0x220000 for reads; the BUZZ
 * register FIFO_LEVELS 0x106c reports the display FIFO level). How BUZZ
 * and PB&J are connected on the board, and how pixels reach PB&J:
 * unknown.
 */

/* ===================================================================
 * 2. Address space, writes and read-back
 * ===================================================================
 * Addresses are 14 bits (0x0000-0x3fff), one 32-bit register each.
 *
 * Depth: the display FIFO is inferred to hold 24 doublewords. The
 * 6.5.30 kernel objects pass odsy_poll_dfifo_level the constants 1, 7, 10
 * to 15 (taken from the immediate loaded before each call); calls whose
 * level is a variable were not counted. No level above 15 is passed, so
 * the kernel never relies on a deeper FIFO. What the level counts (free
 * entries below 24, or the fill) and the FIFO depth are unknown from the
 * binaries alone; a read of the body of odsy_poll_dfifo_level would
 * settle the sense of the level.
 *
 * Writes: display FIFO words (DISPLAY.h section 1). The FIFO consumes a
 * stream of 32-bit words, a header (type 31:28, address 27:14, count
 * 13:0) followed by COUNT data words written to consecutive addresses.
 * The kernel normally sends header and one data word as one 64-bit
 * store; gfP_OdsyBRDMGRsetColors packs runs of colour-map entries as
 * multi-word headers and pairs any two consecutive 32-bit words into a
 * doubleword regardless of where a header falls, and odsyLoadTimingTable
 * sends the line and frame tables the same way. established.
 *
 * Reads: board PIO + 0x220000 + 8 * address, 32-bit load at +4. The
 * window is 8 pages of 16 KB (gf_OdsyMapGfx maps exactly 0x220000-
 * 0x23ffff for clients), 0x4000 slots of 8 bytes, one per address.
 * established: odsySetDACGain loads +0x233604 (address 0x26c0), ORs in
 * bit 1 and writes the result back with header 0x39b00001 (type 3,
 * address 0x26c0); odsyInitDBE loads +0x232414 and +0x23241c and keeps
 * them as the driver's shadows of 0x2482 and 0x2483, which every later
 * write of those addresses starts from. So the window returns what the
 * display FIFO wrote at the same address.
 * The I2C routines read their two registers at +0 of the slot, not +4
 * (odsy_i2c_init_port_handle, odsy_i2c_read_comp_reg4: lw 0(base +
 * 0x220000 + 8 * address)). established as code. Whether the board
 * returns the register in both halves: unknown.
 * Reads are made only after odsy_poll_dfifo_level has seen the display
 * FIFO drain (level 0, 10, 14 or 15 depending on the caller); inferred
 * that a read does not wait for earlier FIFO writes on its own.
 */
#define PBJ_READ_BASE              0x220000u /* established */
#define PBJ_READ_ADDR(a)           (PBJ_READ_BASE + 8u * (a) + 4u)
#define PBJ_ADDR_BITS              14

/* Type field. Types 3 and 7 are the only ones the drivers use. Type 7
 * (bit 30 set) is used for display-mode words (0x2900 + id), the cursor
 * control word 0x2581, colour-map loads from the X server
 * (gfP_OdsyBRDMGRsetColors) and the cursor position when cursor control
 * bit 2 is set; type 3 for everything the kernel loads at start-up or
 * mode set, and for the textport's colour map (odsy_mapcolor).
 * established as uses. inferred: bit 30 asks PB&J to apply the write at
 * the next vertical blank, type 3 applies at once. Basis: every type-7
 * user is something that would tear if changed mid-frame (the X server
 * colour-map load is sent as type 7 by the 6.5.30 kernel, the textport
 * colour map, frame and line tables and start-up registers as type 3).
 * Bits 29:28 (both set in both types) are probably a target field, one
 * bit per BUZZ chip of a two-BUZZ board (inferred from the name alone;
 * unknown). No shipped code sends another type value. */
#define PBJ_TYPE_NOW               3 /* established as used */
#define PBJ_TYPE_SYNCED            7 /* established as used; meaning inferred */

/* ===================================================================
 * 3. Address map as the kernel uses it
 * ===================================================================
 * Every address the IP30 and IP35 kernel objects write is listed (IP35
 * lit8 headers are identical); DISPLAY.h holds the per-field detail for
 * timing, cursor and modes.
 */
#define PBJ_CMAP(i)                (i)      /* colour-map entries from 0;
                                               established as the address
                                               of odsy_mapcolor and
                                               setColors; the top: unknown */
#define PBJ_LINE_TABLE             0x2000   /* DISPLAY.h VTG_LINE_TABLE */
#define PBJ_FRAME_TABLE            0x2400
#define PBJ_VTG_CTRL0              0x2481   /* genlock bit 1, see 5 */
#define PBJ_OUT_CTRL_A             0x2482   /* blank clears bit 5 */
#define PBJ_OUT_CTRL_B             0x2483   /* blank clears bits 5, 1, 0 */
#define PBJ_CURSOR_IMAGE_A         0x2500
#define PBJ_CURSOR_POS             0x2580
#define PBJ_CURSOR_CTRL            0x2581
#define PBJ_CURSOR_COLORS          0x2590
#define PBJ_CURSOR_IMAGE_B         0x25c0
#define PBJ_REG_2600               0x2600
#define PBJ_REG_2680               0x2680
#define PBJ_DAC_CTRL               0x26c0   /* bit 0 blank, bit 1 gain */
#define PBJ_CLOCK_CTRL             0x2700   /* DISPLAY.h VTG_MODE */
#define PBJ_ID                     0x2701   /* bits 2:0 version, bit 10 */
#define PBJ_I2C_OPT_CTRL           0x2740   /* port 1, "opt" */
#define PBJ_I2C_OPT_DATA           0x2741
#define PBJ_I2C_MAIN_CTRL          0x2780   /* port 0, "main" */
#define PBJ_I2C_MAIN_DATA          0x2781
#define PBJ_REG_27C0(i)            (0x27c0 + (i)) /* i < 12 */
#define PBJ_GENLOCK_CTRL           0x27cc   /* bit 6 tested by genlock */
#define PBJ_GENLOCK_STATUS         0x27cd   /* read only by the driver */
#define PBJ_FB_BASE_B              0x2800   /* odsyConfigFb, section 6 */
#define PBJ_FB_BASE_A              0x2801
#define PBJ_REG_2802               0x2802
#define PBJ_REG_2803               0x2803
#define PBJ_REG_2804               0x2804
#define PBJ_REG_2805               0x2805
#define PBJ_REG_2806               0x2806
#define PBJ_FB_PITCH               0x2807
#define PBJ_FB_DEPTH               0x2809
#define PBJ_MODE(id)               (0x2900 + (id)) /* DISPLAY.h section 2 */
#define PBJ_REG_2B00               0x2b00

/* --- Identification word, address 0x2701 ------------------------------
 * Bits 2:0: PB&J version (above). established.
 * Bit 10: odsyInitDBE reads 0x2701 and, when bit 10 is clear and the
 * option has not been probed yet (record +296), reads register 0 of the
 * device at I2C address 0x1f on the "opt" port; a low nibble of 3 is
 * stored in record +298 and that device's register 7 in record +300.
 * gfxinit prints "Dual Channel Display option" when information word 98
 * (record +298) is 3, and the genlock and blanking code take a separate
 * path for that case (an extra semaphore, "DCD" devices). established as
 * code. inferred: bit 10 set means no option card on the opt port. */
#define PBJ_ID_VERSION_MASK        0x7u
#define PBJ_ID_NO_OPTION           0x400u   /* inferred */

/* ===================================================================
 * 4. I2C controllers
 * ===================================================================
 * Two ports, each a pair of PB&J registers: port 0 ("main", 0x2780 and
 * 0x2781) and port 1 ("opt", 0x2740 and 0x2741). odsy_i2c_init_port_handle
 * stores the two addresses in the port handle at +24 and +26 and two
 * driver shadow words (board record +0x8614/+0x8618 for port 0,
 * +0x860c/+0x8610 for port 1); odsyInitDBE initialises both and logs
 * "cannot initialize main/opt i2c port" on failure. established.
 * odsy_i2c_read_comp_reg4 reads the first register, clears bits 12, 8
 * and 10 in its shadow, and writes it back with a type-3 header; then it
 * polls the second register for bit 9 (sll 22 then sign test), up to 133
 * times. established as code. Bit meanings: unknown. The
 * clock parts (section 5), the monitor DDC channel, the compositor, the
 * "Denali" and "Rainier" parts and the dual-channel option all sit on
 * these ports (function names in odsy_i2c.o, odsy_ddc.o, odsy_denali.o,
 * odsy_rainier.o, odsy_compositor.o). established as names. */

/* ===================================================================
 * 5. Genlock (odsyGenlockInterrupt, odsy_intr.o)
 * ===================================================================
 * Entered from the flags interrupt for FLAGS_GEN_LOCK_INTR (BUZZ.h).
 * established, in order:
 *   1. wait for the display FIFO to drain; read 0x27cd (+0x233e6c).
 *   2. bit 0 clear: log "Invalid GenState" and return.
 *   3. read 0x27cc (+0x233e64); continue only if its bit 6 is set.
 *   4. take the clock locks (and the option semaphore when record +298
 *      is 3). If the board's clock variant (record +292) is not
 *      positive, read register 7 of the clock part at I2C address 0x26
 *      (the message calls it ODSY_PLL_OscDiv_ADDR).
 *   5. 0x27cd bit 1 set, the "(lost)" case in the messages:
 *        variant > 0 (clock part at 0x58): write its registers 1, 2, 5
 *          and 6 ("ami_pll_0x1".."0x6") with the low bytes of timing
 *          structure words 132, 136, 148, 152 (kept at record +0x861c..
 *          +0x8628 by odsyLoadTimingTable) - the free-running values
 *          the mode load programmed;
 *        variant <= 0 (part at 0x26): register 0 ("pll_input_control")
 *          = 0x01, register 7 ("pll_osc_div") = old value | 0x80;
 *        then clear bit 1 of the 0x2481 shadow (record +0xb3d4) and
 *        write 0x2481; notify the resource manager with 0.
 *      0x27cd bit 1 clear, the "(got)" case:
 *        variant > 0: registers 1, 2, 5, 6 ("gen_ami_pll_0x1"..) from
 *          structure words 236, 240, 244, 248 (record +0x862c..+0x8638);
 *        variant <= 0: register 0 = 0x11, register 7 = old & 0x7f;
 *        then set bit 1 of 0x2481; notify with 1.
 *      Both are skipped when record +0xb3d0 is nonzero.
 * So timing-structure words 236-248 are the clock settings for running
 * locked to an external reference, and 132-152 the free-running ones;
 * 0x2481 bit 1 is set while locked. established from the code and the
 * message text; "locked" as the meaning of 0x2481 bit 1 is inferred.
 * Register 0 of the 0x26 part differing by 0x10 between the cases reads
 * as an input-select bit (external reference against crystal): inferred.
 */
#define PBJ_GENSTAT_VALID          0x1u     /* established ("GenState") */
#define PBJ_GENSTAT_LOST           0x2u     /* established ("(lost)") */
#define PBJ_GENCTRL_ENABLED        0x40u    /* inferred */
#define PBJ_VTG_CTRL0_LOCKED       0x2u     /* inferred */
#define PBJ_PLL_INPUT_CONTROL      0        /* part 0x26, established name */
#define PBJ_PLL_OSC_DIV            7        /* part 0x26, established name */
#define PBJ_PLL_I2C_ADDR_A         0x26     /* clock variant <= 0 */
#define PBJ_PLL_I2C_ADDR_AMI       0x58     /* clock variant > 0, "AMI" */

/* ===================================================================
 * 6. Start-up and scanout set-up
 * ===================================================================
 * odsyInitDBE (odsy_init.o), established, in order:
 *   1. wait for display FIFO level <= 10; write 0x2b00 = 0 five times,
 *      then 0x2700 = 0x0006d3e0 (bits 14:12 = 5, 17:15 = 5, bit 18 set,
 *      low bits 0x3e0); wait for the FIFO to drain;
 *   2. read 0x2483 and 0x2482 into the driver's shadows (record +0xb3d8,
 *      +0xb3dc);
 *   3. set up the two I2C ports; read 0x2701 and probe the option
 *      (section 3); probe the monitor (DDC), compositor, "Rainier" and
 *      "Denali" parts over I2C;
 *   4. odsyConfigFb with 1280 x 1024 at 8 (arguments 0x500, 0x400, 8);
 *   5. with the caller's quick flag set (odsyReset does), write 0x2802 = 0
 *      and 0x2803 = 0; otherwise write 0x2802 = 1280, 0x2803 = 1024 and
 *      call odsyLoadTimingTable (software/kernel/kernel.md, odsyInitDBE).
 * The default timing is then loaded by odsyLoadTimingTable (DISPLAY.h).
 *
 * odsyConfigFb (odsy_brdmgr.o) lays out the frame buffer in 16 x 16
 * tiles and tells PB&J where it is, established:
 *   0x2800 = start of the second buffer region (record +0x5d8),
 *   0x2801 = start of the first region (record +0x550),
 *            both are tile counts shifted left by 9, rounded up to a
 *            multiple of four first;
 *   0x2802 = 0, 0x2803 = 0;
 *   0x2807 = width in 16-pixel tiles, rounded up to even;
 *   0x2809 = pixel size code: 2 for 8 bits, 3 for 16, 4 for 32.
 * inferred: 0x2800/0x2801 are the scanout base addresses of the two
 * buffers and 0x2807/0x2809 the scanout pitch and depth. 0x2802 and
 * 0x2803 also receive timing words 176 and 180 (1280 and 1024 in the
 * built-in timings, and 2 * word 176 on one path) from
 * odsyLoadTimingTable, so their reading as active size in DISPLAY.h is
 * weaker than it looked: a pan offset is equally consistent. unknown.
 *
 * Blanking (odsyBlankScreen, mode 2, no dual-channel option): 0x26c0 |= 1,
 * 0x2482 &= ~0x20, 0x2483 &= ~0x23. Unblanking restores 0x2483 |= 0x23.
 * odsySetDACGain sets or clears 0x26c0 bit 1. established. Bit names
 * beyond the routine names: unknown. */
#define PBJ_DAC_BLANK              0x1u     /* inferred from odsyBlankScreen */
#define PBJ_DAC_GAIN               0x2u     /* inferred from odsySetDACGain */
#define PBJ_OUT_B_ENABLES          0x23u    /* established as the mask */
#define PBJ_FB_DEPTH_8             2        /* established */
#define PBJ_FB_DEPTH_16            3
#define PBJ_FB_DEPTH_32            4
#define PBJ_CLOCK_CTRL_INIT        0x0006d3e0u /* established */

/* ===================================================================
 * 7. DMA and interrupts
 * ===================================================================
 * DMA: no kernel object starts a transfer to or from PB&J. Every write
 * is a PIO doubleword to the display FIFO port and every read a PIO load
 * from the read-back window. A base-register scan of the IP30
 * disassembly finds 27 functions storing to +0x400000, in odsy_brdmgr,
 * odsy_ddc, odsy_i2c, odsy_init, odsy_intr and odsy_retrace, plus the
 * textport's odsy_mapcolor; none is in odsy_dma.o, and the DMA kick
 * (BUZZ.h) carries no display address. established as a negative search
 * over the IP30 objects; IP35 has the same display-FIFO headers. How PB&J
 * fetches pixels from BUZZ's memory for scanout: unknown.
 *
 * Interrupts reach the host only through BUZZ's interrupt sources
 * (BUZZ.h, buzz/README.md section 6). Those that concern PB&J:
 *   flags bit 31 GEN_LOCK_INTR  -> odsyGenlockInterrupt (section 5)
 *   flags bit 30 CLOCK_STOPPED  -> logged, not fatal
 *   flags bit 24 DBE_OFLOW      -> logged, tears the board down
 *   flags bit 23 XFORM_DFIFO_OFLOW -> logged, tears the board down
 *   source 3                    -> odsyRetraceHandler
 * established as the handler table and messages. inferred: DBE_OFLOW is
 * PB&J's own overflow; whether XFORM_DFIFO is the same display FIFO is
 * unknown (the name pairs it with BUZZ's transform unit). GEN_LOCK is
 * masked at start-up (initial enable 0x79e4259e has bit 31 clear) and
 * odsyLoadTimingTable sets enable bit 31 before writing 0x27cc.
 */

#endif /* PBJ_H */
