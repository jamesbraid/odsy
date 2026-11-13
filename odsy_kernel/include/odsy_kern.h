/*
 * odsy_kern.h - IP30 Odyssey kernel driver structures (odyssey.a)
 *
 * Source: IRIX 6.5.30m usr/cpu/sysgen/IP30boot/odyssey.a. The objects'
 * DWARF has names and line tables only, so every offset below comes
 * from loads and stores in the named functions. Labels: established,
 * inferred, unknown. Register offsets and command words are in BUZZ.h
 * and DISPLAY.h.
 */
#ifndef ODSY_KERN_H
#define ODSY_KERN_H

#include <stdint.h>

/*
 * Per-board driver record (the pointer every odsy_* routine loads from
 * the board table OdsyBoardspp). Offsets in bytes. Offsets written as
 * 0x10000 + n are addressed from a base + 0x10000 register in the code.
 */
#define BI_GFX                 72     /* gfx structure; word 4 bit 0x20
                                         enables the extended user map
                                         (gf_OdsyMapGfx), bit 0x2 set
                                         while the FIFO is reinitialised
                                         (odsyInitCfifo). established */
#define BI_PARKED              104    /* 1 while a writer is parked on
                                         the high-water path.
                                         established: odsyHiwaterInterrupt,
                                         odsyLowaterInterrupt */
#define BI_FIFO_TIMER_ON       120    /* set with the FIFO timer.
                                         established: odsyHiwaterInterrupt */
#define BI_PIPE_NR             790    /* int16 board/pipe number.
                                         established: odsy_tpinit,
                                         odsyFifoTimeout */
#define BI_FLOW                808    /* HEART flow-control handle passed
                                         to gfx_flow_*. established */
#define BI_FLOW_BROKEN         816    /* nonzero: flow control already
                                         failed; hiwater only reports.
                                         established */
#define BI_PIO                 824    /* PIO base of the board; all
                                         register, FIFO and DFIFO offsets
                                         are added to it. established */
#define BI_SCREEN_W            232    /* uint16, copied to the textport.
                                         established: odsy_tpinit */
#define BI_SCREEN_H            234    /* uint16. established */
#define BI_SWAP_MUTEX          28504  /* mutex taken by the display-mode
                                         path. established:
                                         gf_OdsySetDisplayMode */
#define BI_BUFSEL_MASK         28528  /* one bit per display id < 32:
                                         current buffer selection.
                                         established */
#define BI_SWAP_PENDING_MASK   28560  /* ids with a pending buffer
                                         validation. established */
#define BI_DFIFO_SEMA          0x8530 /* "odsy dfifo sema". established */
#define BI_DFIFO_LOCK          0x8540 /* spinlock around DFIFO updates.
                                         established */
#define BI_FLOW_DETACHED       0x85c8 /* 1 after the board leaves flow
                                         control. established:
                                         odsyInitCfifo */
#define BI_FIFO_LOCK           0xb440 /* spinlock of the high/low-water
                                         handlers. established */
#define BI_FIFO_TIMER          (0x10000 - 19388) /* timeout id.
                                         established: odsyFifoTimer */
#define BI_RETRACE_SYNC        (0x10000 - 19352) /* nonzero: display
                                         updates wait for retrace.
                                         inferred from
                                         gf_OdsySetDisplayMode */
#define BI_INTR_SHADOW         (0x10000 - 31312) /* driver copy of the
                                         interrupt enables; bit 0x200 is
                                         the low-water enable.
                                         established: odsyHiwaterInterrupt,
                                         odsyLowaterInterrupt */
#define BI_FLOW_CFG_SHADOW     (0x10000 - 31292) /* copy of register
                                         0x1074. established:
                                         odsyInitCfifo */

/* Swap-scheduling state in the board record (pass 10). All established:
 * gf_OdsySchedSwapBuf, odsyRetraceHandler, odsySwapBuffer. Offsets are
 * plain bytes from the record base; the swap path is in devices/display/README.md. */
#define BI_RETRACE_CV          28520  /* condition variable woken by the
                                         retrace handler */
#define BI_SWAP_LIST_HEAD      28536  /* swap group at the head of the
                                         swap list */
#define BI_SWAP_PENDING_REG    28544  /* last mask written to board
                                         +0x10bc */
#define BI_SWAP_DEFERRED       28548  /* ids whose swap waits for retrace */
#define BI_SWAP_PENDING_ID     28568  /* one bit per id with a swap in
                                         flight */
#define BI_SWAP_BUFSEL         28572  /* front/back bit per id */
#define BI_SWAP_DRAW_BUFSEL    28576  /* second per-id bitmap, from the
                                         drawable's word at +580 */
#define BI_SWAP_ID_REC         28584  /* 40-byte record per id (< 32):
                                         +0 drawable, +8 halfword, +12
                                         retrace target, +16 group mask,
                                         +24 group, +36 repeat counter */
#define BI_SWAP_ID_REC_SIZE    40
#define BI_BUSY_COUNT          80     /* requests in flight: raised and
                                         lowered around make-current and
                                         RRM_SwapBuf */
#define BI_RETRACE_COUNT       128    /* retrace counter used as the
                                         swap-interval base */

/* Probe results kept in the record by odsyGatherInfo (devices/board/README.md).
 * All established; meanings of the sources are inferred there. */
#define BI_SDRAM_MB            252    /* int: 32, 64, 128 (33 = size code 3
                                         before odsyReset rewrites it) */
#define BI_SDRAM_CASL          256    /* int: 2 or 3 */
#define BI_SDRAM_BANKS         260    /* int: 2 or 4 */
#define BI_BUZZ_REV            264    /* int: 1 to 7 */
#define BI_REG_233_380C        268    /* bits 2:0 of board +0x23380c */
#define BI_BUZZ_REV_FLAG       280    /* 1 when strap value was 9 to 15 */
#define BI_CLOCK_VARIANT       292    /* bits 27:24 of board +0x106c */
#define BI_MASTER_ID           792    /* byte, xwidget master id */
#define BI_WIDGET_ID           793    /* byte, xwidget id */

/* Default 1500-tick timeout before a parked FIFO writer gives up and
 * the board is torn down ("CFIFO timeout"). established: odsyFifoTimer,
 * odsyFifoTimeout. */
#define ODSY_FIFO_TIMEOUT_TICKS 1500

/* odsy_poll_dfifo_level(pio, n): spin in 5 us steps, at most 10000
 * times, until the display FIFO level (register 0x106c bits 6:0) is
 * <= n; returns 1 and logs "odsy dfifo timeout" on expiry.
 * established: odsy_flow.o. */
#define ODSY_DFIFO_POLL_US     5
#define ODSY_DFIFO_POLL_TRIES  10000

/* Textport state (static in odsy_tport.o, gp-relative): colour words at
 * +188, +192, +196 sent with register 0x021; raster mode at +132 sent
 * with register 0x004; +128 the operand of register 0x03f; flag +7036
 * doubles the leading settle group; +11112 the operand of register
 * 0x024 (12 or the caller's value). established: ODSY_SET_GC,
 * odsy_sboxfi, odsy_drawbitmap. odsy_tpinit replays a 4165-word image
 * (16660 bytes of driver data) into the command FIFO after reset.
 * established. */
#define TP_CTX_WORDS           4165

#endif /* ODSY_KERN_H */
