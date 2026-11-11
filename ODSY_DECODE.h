/*
 * ODSY_DECODE.h - VPro (Odyssey) graphics board: widget identity, board
 *                 register map and the board-level configuration words
 *                 (publish-safe subset)
 *
 * Purpose: what an emulator or a driver of the whole board has to know
 * before it can reach the graphics chip and the display back end: how the
 * crossbar identifies the board, where each register block and FIFO port
 * sits in the board's PIO window, and how the words that describe the
 * board (identity revision, memory straps, memory configuration) are laid
 * out. Meant to be consumed by public projects, so it carries bit
 * positions, field roles, enum values and register positions only. No
 * binary symbols, no source paths, no vendor identifiers.
 *
 * Scope: the board PIO window, plus the one host-chip word the driver
 * programs for the board's flow control (section 8). The command stream is BUZZ_DECODE.h,
 * TEXTURE_DECODE.h and DMA_DECODE.h; the display half is DISPLAY_DECODE.h
 * and PBJ_DECODE.h, whose register offsets are in the display's own
 * address space behind the display FIFO port and are not repeated here.
 * Bit-level layout of the flags, status and interrupt words is not in this
 * file; only their position is.
 *
 * Derivation: derived from odsy RE binary analysis of the board's kernel
 * driver (reset, attach, interrupt set-up and flow control), the firmware
 * that reports the board's straps, and the public Linux crossbar widget
 * layout for the widget header; see the odsy repository's RE notes
 * (board, registers, kernel). Every fact is restated in our own words. The
 * odsy publish-safe check verifies this file against those notes and
 * against the publish-safe rules.
 *
 * Grades, on every field, value and position:
 *   established - read in full in the shipped software that uses it, or
 *                 published. This is what the software does, not a
 *                 measurement of the silicon.
 *   inferred    - a reasoned reading; the reasoning is in the notes.
 *   unknown     - not derived. No shipped software or published source
 *                 depends on it.
 * Board behaviour is never "established" here: nothing in this file was
 * measured on a board. A grade speaks about the layout, not about what the
 * hardware does with a value.
 *
 * Machine-parseable annotations (the odsy check reads them):
 *   FIELD: <WORD>.<name> <hi>:<lo> <grade>        one per field
 *   ENUM: <WORD>.<name> <value> <label> <grade>   one per named value
 *   TESTVEC: <value> as <WORD> => name=val, ...   a known real value
 *   EXAMPLE (unverified): <value> as <WORD> => name=val, ...
 * A single bit is written <n>:<n>. Do not reformat these lines. The
 * EXAMPLE lines below are layout illustrations, not recorded values.
 *
 * Words are 32 bits. Bit 31 is the most significant. Positions are byte
 * distances from the start of the board's PIO window; a word at a position
 * ending in 4 or c is the low word of an 8-byte register slot.
 */
#ifndef ODSY_DECODE_H
#define ODSY_DECODE_H

#include <stdint.h>

/* ===================================================================
 * 1. Identity on the crossbar
 * ===================================================================
 *
 * The board is a crossbar widget with this manufacturer and part number.
 * Both the kernel driver and the firmware match a widget on the pair, and
 * the diagnostic monitor recognises the board by the part number. Its PIO
 * window is this many bytes long.
 */
#define ODSY_WIDGET_MFR              35 /* established */
#define ODSY_WIDGET_PART             0xc013 /* established */
#define ODSY_PIO_WINDOW_BYTES        0x401000 /* established */

/* ===================================================================
 * 2. Board register positions
 * ===================================================================
 *
 * Names are role labels in our own words. The access width every position
 * is used with is 32 bits unless stated here: the
 * context-save request port and the display FIFO port take 64-bit stores
 * only, and the command FIFO port and the second command-word window
 * take 32- or 64-bit stores. Whether any register reads back is unknown
 * unless the grade comes with a load in the notes. The positions of the
 * widget header follow the public crossbar widget layout; the kernel
 * driver never touches the request-timeout slot in that header.
 */

/* widget header */
#define ODSY_BOARD_WIDGET_ID          0x4 /* established */
#define ODSY_BOARD_WIDGET_STATUS      0xc /* established */
#define ODSY_BOARD_ERR_ADDR_HI        0x14 /* established */
#define ODSY_BOARD_ERR_ADDR_LO        0x1c /* established */
#define ODSY_BOARD_WIDGET_CONTROL     0x24 /* established */
/* Request timeout: the position is the public widget layout's, the register
 * is 20 bits wide (the firmware diagnostic's mask) and the kernel driver
 * never touches it. What it times and in what unit is unknown. */
#define ODSY_BOARD_REQ_TIMEOUT        0x2c /* established */
#define ODSY_BOARD_REQ_TIMEOUT_BITS   20 /* established */
#define ODSY_BOARD_REQ_TIMEOUT_MASK   0xfffffu /* established: the firmware
        diagnostic's table lists the register with this mask; its table
        slot is 0x28 and the word is the slot plus 4 (the pairing is
        inferred, the position is the public widget layout's) */
#define ODSY_BOARD_INTR_DEST_HI       0x34 /* established */
#define ODSY_BOARD_INTR_DEST_LO       0x3c /* established */
#define ODSY_BOARD_ERR_COMMAND        0x44 /* established */
#define ODSY_BOARD_XBAR_INTR_CONFIG   0x5c /* inferred */

/* system block */
#define ODSY_BOARD_SDRAM_CONFIG 0x1004 /* established */
#define ODSY_BOARD_ABORT              0x100c /* inferred */
#define ODSY_BOARD_FLAGS              0x1014 /* established */
#define ODSY_BOARD_FLAG_CLEAR         0x101c /* established */
#define ODSY_BOARD_FLAG_INTR_ENABLE   0x1034 /* established */
#define ODSY_BOARD_FLAG_INTR_DISABLE  0x103c /* established */
#define ODSY_BOARD_INTR_CTL_HI        0x1044 /* established */
#define ODSY_BOARD_INTR_CTL_LO        0x104c /* established */
#define ODSY_BOARD_INTR_VECTOR        0x1054 /* established */
#define ODSY_BOARD_INTR_HEADER        0x105c /* inferred */
#define ODSY_BOARD_STATUS0            0x1064 /* established */
#define ODSY_BOARD_LEVELS_STRAPS      0x106c /* established */
#define ODSY_BOARD_FLOW_CONFIG        0x1074 /* established */
#define ODSY_BOARD_FLOW_OFF           0x107c /* inferred */
#define ODSY_BOARD_FLOW_CLEAR         0x1084 /* established */
/* The firmware labels these four registers (scan configuration, scan
 * address high, scan address low, scan go) and the kernel only zeroes
 * them. established as the firmware's labels; what a scan go does is
 * unknown. */
#define ODSY_BOARD_SCAN_CONFIG        0x108c /* established, label only */
#define ODSY_BOARD_SCAN_ADDR_HI       0x109c /* established, label only */
#define ODSY_BOARD_SCAN_ADDR_LO       0x10a4 /* established, label only */
#define ODSY_BOARD_SCAN_GO            0x10ac /* established, label only */
#define ODSY_BOARD_SWAP_TRIGGER       0x10b4 /* inferred */
#define ODSY_BOARD_SWAP_TIMING        0x10bc /* inferred */
#define ODSY_BOARD_BUFFER_B_SET       0x10c4 /* inferred */
#define ODSY_BOARD_BUFFER_B_CLEAR     0x10cc /* established */
#define ODSY_BOARD_BUFFER_B_STATE     0x10d4 /* inferred */

/* context-save and statistics group */
#define ODSY_BOARD_CTX_SAVE_ADDR_HI   0x4004 /* established */
#define ODSY_BOARD_CTX_SAVE_ADDR_LO   0x400c /* established */
#define ODSY_BOARD_MASTER_ID_A        0x4014 /* established */
#define ODSY_BOARD_STATS_ADDR_HI      0x401c /* established */
#define ODSY_BOARD_STATS_ADDR_LO      0x4024 /* established */
#define ODSY_BOARD_STATS_CONTROL      0x402c /* established */
#define ODSY_BOARD_SHADOW_ADDR_HI     0x4034 /* established */
#define ODSY_BOARD_SHADOW_ADDR_LO     0x403c /* established */
#define ODSY_BOARD_MASTER_ID_B        0x4044 /* established */
/* Three more words of the same group. The driver stores zero to each once
 * at reset and nothing reads them, so the stores are established and the
 * roles are inferred from position and from the pairs above: an address
 * pair for a diagnostic history region (upper then lower half, as the
 * statistics address pair above is) and a mode word. Which address
 * bits the board keeps and the mode bit positions are unknown. */
#define ODSY_BOARD_DIAG_ADDR_HI       0x404c /* inferred */
#define ODSY_BOARD_DIAG_ADDR_LO       0x4054 /* inferred */
#define ODSY_BOARD_DIAG_MODE          0x405c /* inferred */

/* FIFO ports and windows */
#define ODSY_BOARD_CMD_FIFO_PORT      0x110000 /* established */
#define ODSY_BOARD_CTX_SAVE_PORT      0x118000 /* established */
#define ODSY_BOARD_CMD_WINDOW_2       0x120000 /* inferred */
#define ODSY_BOARD_DISPLAY_FIFO_PORT  0x400000 /* established */

/* ===================================================================
 * 3. Identity word (widget header)
 * ===================================================================
 *
 * The driver reads the identity word first and takes its top nibble as a
 * revision type. Types 1, 2 and 3 are one variant (A) with the type as the
 * revision; types 9 to 15 are the other variant (B), stored with 8 taken
 * off. Types 0 and 4 to 8 are rejected as invalid. That the top bit is a
 * variant flag and the low three bits of the nibble the revision is
 * inferred from that split; the software only ever uses the pair. The
 * part number and manufacturer number sit in the same word, by the
 * public widget layout, and are not decoded here.
 */
/* FIELD: WIDGET_ID.variant 31:31 inferred */
/* FIELD: WIDGET_ID.revision 30:28 inferred */
#define ODSY_WIDGET_ID_VARIANT_SHIFT   31
#define ODSY_WIDGET_ID_VARIANT_MASK    0x1u
#define ODSY_WIDGET_ID_REVISION_SHIFT  28
#define ODSY_WIDGET_ID_REVISION_MASK   0x7u
#define ODSY_REV_TYPE_B_BIAS           8 /* established */

/* The established form of the same field: the driver reads bits 31:28 as
 * one revision type and dispatches on it. Types 1 to 3 and 9 to 15 are
 * accepted; 0 and 4 to 8 are rejected as invalid. The split into variant
 * and revision above is the inferred reading of that type. */
#define ODSY_WIDGET_ID_TYPE_SHIFT      28 /* established */
#define ODSY_WIDGET_ID_TYPE_MASK       0xfu /* established */
#define ODSY_WIDGET_ID_TYPE_A_FIRST    1 /* established */
#define ODSY_WIDGET_ID_TYPE_A_LAST     3 /* established */
#define ODSY_WIDGET_ID_TYPE_B_FIRST    9 /* established */
#define ODSY_WIDGET_ID_TYPE_B_LAST     15 /* established */

/* Layout illustration: type 10 is variant B, revision 2.
 * EXAMPLE (unverified): 0xa0000000 as WIDGET_ID => variant=1, revision=2
 */

/* ===================================================================
 * 3a. Widget control word and master-id word
 * ===================================================================
 *
 * Widget control (position 0x24): the driver saves it before each link
 * reset, restores it afterwards (the reset clears it), and ends its
 * start-up with the widget's own id ORed with 0x4200. By the public
 * widget layout that sets bit 9 (the system is big-endian) and puts the
 * value 4 in the crossbar credit field, bits 15:12. The field positions
 * are published; that the driver writes this value is established.
 *
 * Master-id word (position 0x4014): written once by the reset. Bits 15:0
 * hold the value 0x12, bits 18 and 24 are set, bits 19:16 are clear and
 * the widget's master id is in bits 23:20. established as the layout of
 * the word the driver writes; what each part means is unknown. The twin
 * word (ODSY_BOARD_MASTER_ID_B) puts the id in a different place.
 */
/* FIELD: WIDGET_CONTROL.big_endian 9:9 established */
/* FIELD: WIDGET_CONTROL.credit 15:12 established */
#define ODSY_WIDGET_CONTROL_BIG_ENDIAN_SHIFT 9
#define ODSY_WIDGET_CONTROL_BIG_ENDIAN_MASK  0x1u
#define ODSY_WIDGET_CONTROL_CREDIT_SHIFT     12
#define ODSY_WIDGET_CONTROL_CREDIT_MASK      0xfu
/* TESTVEC: 0x4200 as WIDGET_CONTROL => big_endian=1, credit=4
 */
/* FIELD: MASTER_ID.code 15:0 established */
/* FIELD: MASTER_ID.bit18 18:18 established */
/* FIELD: MASTER_ID.master 23:20 established */
/* FIELD: MASTER_ID.bit24 24:24 established */
#define ODSY_MASTER_ID_CODE_SHIFT     0
#define ODSY_MASTER_ID_CODE_MASK      0xffffu
#define ODSY_MASTER_ID_BIT18_SHIFT    18
#define ODSY_MASTER_ID_BIT18_MASK     0x1u
#define ODSY_MASTER_ID_MASTER_SHIFT   20
#define ODSY_MASTER_ID_MASTER_MASK    0xfu
#define ODSY_MASTER_ID_BIT24_SHIFT    24
#define ODSY_MASTER_ID_BIT24_MASK     0x1u
#define ODSY_MASTER_ID_CODE_VALUE     0x12 /* established */
/* Layout illustration: master id 3.
 * EXAMPLE (unverified): 0x1340012 as MASTER_ID => code=18, bit18=1, master=3, bit24=1
 */

/* ===================================================================
 * 4. Levels and straps word
 * ===================================================================
 *
 * The top byte is set by the board itself and is read once, at attach:
 * the memory size code, the bank count, the CAS latency and the board
 * revision. No driver code writes it. Size code 3 is a 32 MB board to
 * both the kernel and the firmware (the kernel records it as 33 and
 * programs the controller as if it were the 128 MB code; why the board
 * distinguishes it is unknown). The low half holds two FIFO fill levels,
 * counted in doublewords. The firmware labels the bank and latency bits
 * the same way; that they configure an SDRAM controller is inferred.
 */
/* FIELD: STRAP.sdram_size 31:30 established */
/* FIELD: STRAP.banks 29:29 established */
/* FIELD: STRAP.cas 28:28 established */
/* FIELD: STRAP.board_rev 27:24 established */
/* FIELD: STRAP.command_level 15:7 inferred */
/* FIELD: STRAP.display_level 6:0 established */
#define ODSY_STRAP_SDRAM_SIZE_SHIFT     30
#define ODSY_STRAP_SDRAM_SIZE_MASK      0x3u
#define ODSY_STRAP_BANKS_SHIFT          29
#define ODSY_STRAP_BANKS_MASK           0x1u
#define ODSY_STRAP_CAS_SHIFT            28
#define ODSY_STRAP_CAS_MASK             0x1u
#define ODSY_STRAP_BOARD_REV_SHIFT      24
#define ODSY_STRAP_BOARD_REV_MASK       0xfu
#define ODSY_STRAP_COMMAND_LEVEL_SHIFT  7
#define ODSY_STRAP_COMMAND_LEVEL_MASK   0x1ffu
#define ODSY_STRAP_DISPLAY_LEVEL_SHIFT  0
#define ODSY_STRAP_DISPLAY_LEVEL_MASK   0x7fu

/* ENUM: STRAP.sdram_size 0 mb32 established */
/* ENUM: STRAP.sdram_size 1 mb64 established */
/* ENUM: STRAP.sdram_size 2 mb128 established */
/* ENUM: STRAP.sdram_size 3 mb32_alt established */
/* ENUM: STRAP.banks 0 two established */
/* ENUM: STRAP.banks 1 four established */
/* ENUM: STRAP.cas 0 cas3 established */
/* ENUM: STRAP.cas 1 cas2 established */
#define ODSY_STRAP_SDRAM_SIZE_MB32      0
#define ODSY_STRAP_SDRAM_SIZE_MB64      1
#define ODSY_STRAP_SDRAM_SIZE_MB128     2
#define ODSY_STRAP_SDRAM_SIZE_MB32_ALT  3
#define ODSY_STRAP_BANKS_TWO            0
#define ODSY_STRAP_BANKS_FOUR           1
#define ODSY_STRAP_CAS_CAS3             0
#define ODSY_STRAP_CAS_CAS2             1

/* Layout illustration: 128 MB, four banks, latency 3, board revision 1,
 * the combination a published firmware transcript of a large board shows
 * (no raw strap word of any board has been published).
 * EXAMPLE (unverified): 0xa1000000 as STRAP => sdram_size=2, banks=1, cas=0, board_rev=1
 */

/* ===================================================================
 * 5. Memory configuration word
 * ===================================================================
 *
 * Written only by the driver's reset, which copies the decoded straps
 * into it: first the host's widget number, then the bank count, latency
 * and size, then a pulse on the reset bit (cleared, set, written,
 * cleared again, with a wait after each store) and finally the enable
 * bit. Size code 3 of the straps is written as the 128 MB code. The word
 * is believed to configure the board's SDRAM controller (inferred); the
 * widths of its other bits and whether it reads back are unknown.
 */
/* FIELD: SDRAM_CFG.cas 1:1 established */
/* FIELD: SDRAM_CFG.banks 2:2 established */
/* FIELD: SDRAM_CFG.size 4:3 established */
/* FIELD: SDRAM_CFG.reset 5:5 inferred */
/* FIELD: SDRAM_CFG.enable 8:8 inferred */
/* FIELD: SDRAM_CFG.host_id 22:19 established */
#define ODSY_SDRAM_CFG_CAS_SHIFT      1
#define ODSY_SDRAM_CFG_CAS_MASK       0x1u
#define ODSY_SDRAM_CFG_BANKS_SHIFT    2
#define ODSY_SDRAM_CFG_BANKS_MASK     0x1u
#define ODSY_SDRAM_CFG_SIZE_SHIFT     3
#define ODSY_SDRAM_CFG_SIZE_MASK      0x3u
#define ODSY_SDRAM_CFG_RESET_SHIFT    5
#define ODSY_SDRAM_CFG_RESET_MASK     0x1u
#define ODSY_SDRAM_CFG_ENABLE_SHIFT   8
#define ODSY_SDRAM_CFG_ENABLE_MASK    0x1u
#define ODSY_SDRAM_CFG_HOST_ID_SHIFT  19
#define ODSY_SDRAM_CFG_HOST_ID_MASK   0xfu

/* ENUM: SDRAM_CFG.size 0 mb32 established */
/* ENUM: SDRAM_CFG.size 1 mb64 established */
/* ENUM: SDRAM_CFG.size 2 mb128 established */
/* ENUM: SDRAM_CFG.banks 0 two established */
/* ENUM: SDRAM_CFG.banks 1 four established */
/* ENUM: SDRAM_CFG.cas 0 cas3 established */
/* ENUM: SDRAM_CFG.cas 1 cas2 established */
#define ODSY_SDRAM_CFG_SIZE_MB32      0
#define ODSY_SDRAM_CFG_SIZE_MB64      1
#define ODSY_SDRAM_CFG_SIZE_MB128     2
#define ODSY_SDRAM_CFG_BANKS_TWO      0
#define ODSY_SDRAM_CFG_BANKS_FOUR     1
#define ODSY_SDRAM_CFG_CAS_CAS3       0
#define ODSY_SDRAM_CFG_CAS_CAS2       1

/* ===================================================================
 * 6. Board kinds software can tell apart
 * ===================================================================
 *
 * Software distinguishes only a memory size (32 or 128 MB) and the
 * variant of section 3. Published product names map onto the four
 * combinations as follows (inferred; one published sample of the 32 MB
 * variant-A product reports variant B and is unresolved):
 *
 *   product  memory  variant
 *   V6       32 MB   A
 *   V8       128 MB  A
 *   V10      32 MB   B
 *   V12      128 MB  B
 *
 * What the host's windowing software does with the kind (established as
 * the software's behaviour, not as a property of the silicon): below the
 * memory threshold the four 12-bit-component pixel formats are not
 * offered and 24-bit accumulation is refused; at or above it, the
 * variant picks which of the 12-bit formats are offered. A 32 MB board
 * of either variant is offered the same formats.
 */
#define ODSY_RGBA12_MIN_MEMORY_MB     128 /* established */

/* ===================================================================
 * 7. Statistics control word
 * ===================================================================
 *
 * The driver's statistics request builds one control word from a 24-byte
 * argument supplied by its caller and stores it to the board (position
 * 0x402c). Bits 3:0 are the low nibble of the same argument byte that
 * gives the size of the host-memory statistics region (the region is
 * (2 << n) * 32 bytes for n = that byte), bits 4, 5 and 6 are bit 0 of
 * three further bytes, bits 10:8 are the low three bits of another, bit 7
 * is cleared, and two bits are always set: bit 31 and bit 27. That the
 * two always-set bits are constants of the driver's word is established;
 * what any field selects on the board is unknown. The same word, with the
 * same fixed bits, is built by the older driver build as well.
 */
/* FIELD: STATS_CTL.size_exp 3:0 established */
/* FIELD: STATS_CTL.flag_a 4:4 established */
/* FIELD: STATS_CTL.flag_b 5:5 established */
/* FIELD: STATS_CTL.flag_c 6:6 established */
/* FIELD: STATS_CTL.select 10:8 established */
/* FIELD: STATS_CTL.fixed_mid 27:27 established */
/* FIELD: STATS_CTL.fixed_top 31:31 established */
#define ODSY_STATS_CTL_SIZE_EXP_SHIFT   0
#define ODSY_STATS_CTL_SIZE_EXP_MASK    0xfu
#define ODSY_STATS_CTL_FLAG_A_SHIFT     4
#define ODSY_STATS_CTL_FLAG_A_MASK      0x1u
#define ODSY_STATS_CTL_FLAG_B_SHIFT     5
#define ODSY_STATS_CTL_FLAG_B_MASK      0x1u
#define ODSY_STATS_CTL_FLAG_C_SHIFT     6
#define ODSY_STATS_CTL_FLAG_C_MASK      0x1u
#define ODSY_STATS_CTL_SELECT_SHIFT     8
#define ODSY_STATS_CTL_SELECT_MASK      0x7u
#define ODSY_STATS_CTL_FIXED_MID_SHIFT  27
#define ODSY_STATS_CTL_FIXED_MID_MASK   0x1u
#define ODSY_STATS_CTL_FIXED_TOP_SHIFT  31
#define ODSY_STATS_CTL_FIXED_TOP_MASK   0x1u
/* The two always-set bits of every word the driver writes.
 * TESTVEC: 0x88000000 as STATS_CTL => fixed_mid=1, fixed_top=1
 */
#define ODSY_STATS_CTL_FIXED_BITS       0x88000000u /* established */

/* ===================================================================
 * 8. Host flow-control mode word
 * ===================================================================
 *
 * Not a board register: the board's driver also programs one 64-bit word
 * of the host chip (at register offset 0x40 from the host chip's base,
 * the public Linux layout's flow-control mode register) when a processor
 * attaches to the board's credit record, and rewrites it when the
 * processor detaches. For processor number n the attach sets bit n + 8
 * and writes the value n into the two-bit field at bits 2n + 11 : 2n + 10;
 * the detach clears bit n + 8 and sets both bits of that field. Both are
 * read-modify-write under the driver's own lock. The processor numbers
 * seen index two per-processor register pairs, so n is 0 or 1 here. The
 * positions and values are established as what the driver does; what the
 * host chip does with the fields is inferred (the public Linux layout
 * calls the registers' purpose unknown, "possibly graphics flow
 * control"), so the field names say only when the driver sets them. Fields for processor 0 and processor 1 are listed
 * separately because the per-processor positions differ.
 */
#define ODSY_HOST_FLOW_MODE_OFFSET      0x40 /* established */
/* FIELD: HOST_FLOW_MODE.attach_cpu0 8:8 established */
/* FIELD: HOST_FLOW_MODE.attach_cpu1 9:9 established */
/* FIELD: HOST_FLOW_MODE.owner_cpu0 11:10 established */
/* FIELD: HOST_FLOW_MODE.owner_cpu1 13:12 established */
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU0_SHIFT 8
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU0_MASK  0x1u
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU1_SHIFT 9
#define ODSY_HOST_FLOW_MODE_ATTACH_CPU1_MASK  0x1u
#define ODSY_HOST_FLOW_MODE_OWNER_CPU0_SHIFT  10
#define ODSY_HOST_FLOW_MODE_OWNER_CPU0_MASK   0x3u
#define ODSY_HOST_FLOW_MODE_OWNER_CPU1_SHIFT  12
#define ODSY_HOST_FLOW_MODE_OWNER_CPU1_MASK   0x3u
/* Layout illustration: processor 1 attached (bit 9 set, owner field 1).
 * EXAMPLE (unverified): 0x1200 as HOST_FLOW_MODE => attach_cpu0=0, attach_cpu1=1, owner_cpu0=0, owner_cpu1=1
 */

/* ===================================================================
 * 9. Two board words the driver reads
 * ===================================================================
 *
 * Both positions are in the board's PIO window (section 2) and take 32-bit
 * reads. The driver reads each once and tests it; nothing else in the
 * shipped software reads either.
 *
 * Start-up probe. Before it loads the geometry microcode the driver reads
 * this word and compares it with a fixed value; on a mismatch it skips the
 * load, drops flow control and reports failure. The comparison and both
 * values are established; that the word is an identification or ready
 * word is inferred from the skipped load, and what the register is stays
 * unknown.
 */
#define ODSY_BOARD_STARTUP_PROBE_POS    0x201594 /* established */
#define ODSY_BOARD_STARTUP_PROBE_VALUE  0x003d0046u /* established */

/*
 * Display-chip identification read-back. The driver reads this word at
 * board attach and keeps bits 2:0 as the display chip's version; the word
 * is display-space register 0x2701 (PBJ_DECODE.h, PBJ.id) seen through the
 * board's display read-back window. The position and the kept bits are
 * established; the other bits of the word are the unknown ones PBJ_DECODE.h
 * lists.
 */
#define ODSY_BOARD_DISPLAY_ID_POS       0x23380c /* established */
#define ODSY_BOARD_DISPLAY_ID_VERSION_MASK 0x7u /* established */

#endif /* ODSY_DECODE_H */
