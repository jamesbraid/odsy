/*
 * DMA_DECODE.h - VPro (Odyssey) "Buzz" graphics ASIC: host DMA engine
 *                descriptor words (publish-safe subset)
 *
 * Purpose: the layout of the words an emulator of the DMA engine has to
 * decode to run one host transfer: the two-doubleword kick that points the
 * engine at a descriptor, the 128-byte descriptor itself (the eight-word
 * image header plus a list of host page entries), and the completion-tag
 * command the driver queues behind a transfer. Meant to be consumed by
 * public projects, so it carries bit positions, field roles and enum values
 * only. No binary symbols, no source paths, no vendor identifiers, and no
 * address value of any kind: a field that holds an address is described by
 * its bit range and role, and its value is omitted.
 *
 * Derivation: derived from odsy RE binary analysis of the kernel-side DMA
 * path (the kick, the descriptor builder and the completion handling); see
 * the odsy repository's RE notes (docs/kernel.md, docs/pixel-paths.md,
 * docs/registers.md, docs/buzz.md). Every fact is restated in our own
 * words. the shared decode-header check (defs.toml) checks this file against those notes
 * and against the publish-safe rules.
 *
 * The eight-word image header inside the descriptor is BUZZ_DECODE.h
 * section 2 and is not repeated here; this file only says which of its
 * words the descriptor builder rewrites and which extra bits it sets.
 *
 * Grades, on every field and value:
 *   established - read in full in the shipped software that builds or
 *                 consumes the word. This is what the driver sends, not a
 *                 measurement of the silicon.
 *   inferred    - a reasoned reading; the reasoning is given.
 *   unknown     - not derived. No shipped software or published source
 *                 depends on it.
 * Board behaviour is never "established" here: nothing in this file was
 * measured on a board. A grade speaks about the word's layout, not about
 * what the hardware does with a value.
 *
 * Machine-parseable annotations (the shared decode-header check reads them):
 *   FIELD: <WORD>.<name> <hi>:<lo> <grade>        one per field
 *   ENUM: <WORD>.<name> <value> <label> <grade>   one per named value
 *   TESTVEC: <value> as <WORD> => name=val, ...   a known real value
 * A single bit is written <n>:<n>. Do not reformat these lines. Address
 * fields (names starting "addr") never appear in a TESTVEC or an example,
 * and every vector has zero in them.
 *
 * Words are 32 bits. Bit 31 is the most significant.
 */
#ifndef DMA_DECODE_H
#define DMA_DECODE_H

#include <stdint.h>

/* ===================================================================
 * 1. Sequence of one host transfer (established as the driver's order)
 * ===================================================================
 *
 *   1. the driver clears the DMA-done flag (bit 11 of the board flags
 *      register, a write-one-to-clear bit);
 *   2. one kick (section 2) per descriptor, each pointing at a 128-byte
 *      descriptor (section 3) in host memory;
 *   3. after the last kick, the transfer's closing commands and, for the
 *      last transfer of a request, the completion-tag command (section 4).
 * The engine then fetches the descriptor, walks its page list and moves
 * the pixels; how it does so is unknown beyond what the words below say.
 */
#define DMA_DONE_FLAG_BIT        11 /* established */

/* ===================================================================
 * 2. The kick: two doublewords to the command FIFO port
 * ===================================================================
 *
 * Each kick is two 64-bit stores, the high half of each doubleword first
 * (inferred, as for the other doubleword writes to this port). The host
 * physical address of the descriptor is split into a high and a low
 * 24-bit half; each half is spread over its word (rule below). The board
 * takes a 48-bit physical address: anything above 48 bits is dropped.
 *
 *   doubleword A  high word  KICK_A_HI: the kick id
 *                 low word   KICK_A_LO: address bits 47:24 (value omitted)
 *   doubleword B  high word  KICK_B_HI: address bits 23:0  (value omitted)
 *                 low word   KICK_B_LO: zero
 *
 * Spreading rule for each 24-bit half (established, arithmetic of the
 * routine that builds it): half bits 16:0 go to word bits 16:0, half bits
 * 23:17 go to word bits 29:23; word bits 22:17 and 31:30 are zero.
 */
#define DMA_KICK_ADDR_BITS       48 /* established */

/* FIELD: KICK_A_HI.id 11:0 established */
/* FIELD: KICK_A_LO.addr_lo 16:0 established */
/* FIELD: KICK_A_LO.addr_hi 29:23 established */
/* FIELD: KICK_B_HI.addr_lo 16:0 established */
/* FIELD: KICK_B_HI.addr_hi 29:23 established */
/* FIELD: KICK_B_LO.zero 31:0 established */
#define DMA_KICK_A_HI_ID_SHIFT       0
#define DMA_KICK_A_HI_ID_MASK        0xfffu
#define DMA_KICK_A_LO_ADDR_LO_SHIFT  0
#define DMA_KICK_A_LO_ADDR_LO_MASK   0x1ffffu
#define DMA_KICK_A_LO_ADDR_HI_SHIFT  23
#define DMA_KICK_A_LO_ADDR_HI_MASK   0x7fu
#define DMA_KICK_B_HI_ADDR_LO_SHIFT  0
#define DMA_KICK_B_HI_ADDR_LO_MASK   0x1ffffu
#define DMA_KICK_B_HI_ADDR_HI_SHIFT  23
#define DMA_KICK_B_HI_ADDR_HI_MASK   0x7fu
#define DMA_KICK_B_LO_ZERO_SHIFT     0
#define DMA_KICK_B_LO_ZERO_MASK      0xffffffffu

/* Kick id. Two values occur. 0xe01 is the id of every transfer the driver
 * issues itself, reads and writes alike: the id does not carry the
 * direction (that is a descriptor bit, section 3). 0xe03 is sent only by
 * the driver's diagnostic transfer, when its caller sets a flag; the
 * diagnostic tool names that flag as its asynchronous-transfer option, so
 * the reading "0xe03 asks for an asynchronous transfer" is inferred from
 * the option's name alone. What the board does differently for 0xe03:
 * unknown. The ids lie above the 10-bit block id of the class-1 command
 * words, so this doubleword form has a wider register space than they do.
 * The grade on each value is for the value, not for the meaning. */
/* ENUM: KICK_A_HI.id 0xe01 plain established */
/* ENUM: KICK_A_HI.id 0xe03 variant established */
#define DMA_KICK_A_HI_ID_PLAIN       0xe01
#define DMA_KICK_A_HI_ID_VARIANT     0xe03

/* ===================================================================
 * 3. The descriptor: one 128-byte table entry
 * ===================================================================
 *
 * established. One host request is cut into one or more descriptors. A
 * request whose byte length is at most 147456 is one
 * descriptor; a longer one is cut into bands of whole rows, each band at
 * most that long, and a single row longer than that is refused. That the
 * limit is the most the engine's page list can cover per descriptor is
 * inferred: twelve page entries of up to 16384 bytes each, plus slack for
 * a start that is not page aligned, come to about that size.
 *
 *   bytes   0..31   the eight-word image header (BUZZ_DECODE.h, HDR_W0..W7)
 *   bytes  32..127  the page list: up to twelve 8-byte page entries
 *
 * Header words as the descriptor builder leaves them. Only these differ
 * from the caller's header, and each is a field already defined in
 * BUZZ_DECODE.h:
 *   word 1  x in 15:0 and y in 31:16, set to this descriptor's corner
 *   word 3  width in 15:0 and height in 31:16, set to this descriptor's size
 *   word 6  row bytes in 19:0, set to bytes per pixel times the width, the
 *           bytes per pixel taken from the pixel-size code in word 7
 *           bits 18:16 (BUZZ_PSIZE_*)
 * Every other header word, including word 0 (the board side reference,
 * so the board-side base address of the transfer), word 2, word 4 and
 * word 5 (host row stride), passes through unchanged. The host side base
 * of the transfer is the page list below plus the descriptor's own address
 * in the kick.
 */
#define DMA_ENTRY_BYTES          128   /* established */
#define DMA_ENTRY_HDR_BYTES      32    /* established */
#define DMA_PAGE_ENTRY_BYTES     8     /* established */
#define DMA_ENTRY_PAGES_MAX      12    /* established */
#define DMA_PAGE_CHUNK_BYTES     16384 /* established: the largest chunk a
        page entry is built from; whether it is a page size or only a
        software chunk size: inferred */
#define DMA_ENTRY_MAX_BYTES      0x24000 /* 147456; established as the split rule */

/* Header word 7 as the descriptor builder leaves it. The kernel forces the
 * top byte before it builds descriptors: bits 29, 28 and 25 always set,
 * bit 24 set for a board-to-host transfer, bits 27 and 30 kept from the
 * caller. Bits 24, 27 and 30 are the same bits as HDR_W7.read_dir,
 * HDR_W7.transform and HDR_W7.differs in BUZZ_DECODE.h. Bit 31 is added
 * by the builder to the last descriptor of a board-to-host request. */
/* FIELD: ENTRY_W7.read_dir 24:24 established */
/* FIELD: ENTRY_W7.fixed25 25:25 established */
/* FIELD: ENTRY_W7.transform 27:27 established */
/* FIELD: ENTRY_W7.fixed28 28:28 established */
/* FIELD: ENTRY_W7.fixed29 29:29 established */
/* FIELD: ENTRY_W7.differs 30:30 established */
/* FIELD: ENTRY_W7.irq_after 31:31 inferred */
#define DMA_ENTRY_W7_READ_DIR_SHIFT   24
#define DMA_ENTRY_W7_READ_DIR_MASK    0x1u
#define DMA_ENTRY_W7_FIXED25_SHIFT    25
#define DMA_ENTRY_W7_FIXED25_MASK     0x1u
#define DMA_ENTRY_W7_TRANSFORM_SHIFT  27
#define DMA_ENTRY_W7_TRANSFORM_MASK   0x1u
#define DMA_ENTRY_W7_FIXED28_SHIFT    28
#define DMA_ENTRY_W7_FIXED28_MASK     0x1u
#define DMA_ENTRY_W7_FIXED29_SHIFT    29
#define DMA_ENTRY_W7_FIXED29_MASK     0x1u
#define DMA_ENTRY_W7_DIFFERS_SHIFT    30
#define DMA_ENTRY_W7_DIFFERS_MASK     0x1u
#define DMA_ENTRY_W7_IRQ_AFTER_SHIFT  31
#define DMA_ENTRY_W7_IRQ_AFTER_MASK   0x1u

/* Direction (bit 24): the descriptor, not the kick id, says which way the
 * pixels go. established as the value the driver sets. */
/* ENUM: ENTRY_W7.read_dir 0 write established */
/* ENUM: ENTRY_W7.read_dir 1 read established */
#define DMA_ENTRY_W7_READ_DIR_WRITE   0
#define DMA_ENTRY_W7_READ_DIR_READ    1

/* Addressing path (bit 27): 0 is the plain path, one descriptor per
 * request with the pixels stored as they are; 1 is the transform path, in
 * which the driver first sends a fixed prologue and the pixels run through
 * the scale and bias and rectangle stages (BUZZ_DECODE.h section 5).
 * established as what the driver sends; what the board does differently
 * beyond that: unknown. */
/* ENUM: ENTRY_W7.transform 0 plain established */
/* ENUM: ENTRY_W7.transform 1 transform established */
#define DMA_ENTRY_W7_TRANSFORM_PLAIN      0
#define DMA_ENTRY_W7_TRANSFORM_TRANSFORM  1

/* Bits 29, 28 and 25: always set in every descriptor. The board's reading
 * of each: unknown. Bit 31: the driver sets it only on the last
 * descriptor of a board-to-host request, and adds that request to a list
 * of transfers that complete by interrupt. That it asks the board for an
 * interrupt after the descriptor is inferred from the list. Reads finish
 * on that interrupt together with the tag; writes finish on the tag alone. */

/* Page entry: 8 bytes, two words, one per run of host memory in order.
 * established as the arithmetic the page-list builder performs; the unit
 * of the count is inferred from the loop that fills it (bytes). The
 * address fields hold the run's host physical address; values omitted.
 *   word 0  the physical address shifted right by 16 (bits 47:16)
 *   word 1  the physical address bits 15:0 in 31:16, the count in 15:0 */
/* FIELD: PAGE_W0.addr 31:0 established */
/* FIELD: PAGE_W1.addr_lo 31:16 established */
/* FIELD: PAGE_W1.count 15:0 inferred */
#define DMA_PAGE_W0_ADDR_SHIFT        0
#define DMA_PAGE_W0_ADDR_MASK         0xffffffffu
#define DMA_PAGE_W1_ADDR_LO_SHIFT     16
#define DMA_PAGE_W1_ADDR_LO_MASK      0xffffu
#define DMA_PAGE_W1_COUNT_SHIFT       0
#define DMA_PAGE_W1_COUNT_MASK        0xffffu

/* Unused page entries and any contents of the page list the builder does
 * not fill: unknown. The meaning of the row stride, the board-side base
 * and the pixel-size code to the engine beyond the header words above is
 * as BUZZ_DECODE.h says: unknown. */

/* ===================================================================
 * 4. The completion tag: a class-1 command with two operands
 * ===================================================================
 *
 * established. The command word is 0x0001 in bits 31:16 and the low 16
 * bits below (BUZZ_DECODE.h section 1 framing): operand count 2 in bits
 * 13:10 and block id 0x25a in bits 9:0. The odsy RE notes call this block
 * by the shorthand 0x5a; decoding the recorded word with the framing of
 * BUZZ_DECODE.h gives 0x25a, and that difference is unresolved. The word
 * itself is the recorded fact.
 *
 * The driver queues the command behind the last descriptor of a request.
 * Operand 0 names the host halfword the tag is written to, as a small
 * index with bit 15 set (the meaning of bit 15 is unknown). Operand 1 is
 * the tag: a marker 0x5a in bits 15:8 and a running count of finished
 * requests in bits 7:0, which the driver keeps to 7 bits (0..127). The
 * driver sees a request done when the halfword shows the marker and a
 * count that has reached it. That the board's engine writes the tag to the
 * host halfword is inferred: no host code stores the marker there.
 */
#define DMA_TAG_CMD_LOW16        0x0a5au /* established */
#define DMA_TAG_CMD_COUNT        2       /* established */
#define DMA_TAG_CMD_ID           0x25a   /* decoded from the word above */

/* FIELD: TAG_W0.slot 14:0 inferred */
/* FIELD: TAG_W0.flag 15:15 established */
/* FIELD: TAG_W1.tag 7:0 established */
/* FIELD: TAG_W1.marker 15:8 established */
#define DMA_TAG_W0_SLOT_SHIFT    0
#define DMA_TAG_W0_SLOT_MASK     0x7fffu
#define DMA_TAG_W0_FLAG_SHIFT    15
#define DMA_TAG_W0_FLAG_MASK     0x1u
#define DMA_TAG_W1_TAG_SHIFT     0
#define DMA_TAG_W1_TAG_MASK      0xffu
#define DMA_TAG_W1_MARKER_SHIFT  8
#define DMA_TAG_W1_MARKER_MASK   0xffu
/* ENUM: TAG_W1.marker 0x5a tag established */
#define DMA_TAG_W1_MARKER_TAG    0x5a
/* ENUM: TAG_W0.flag 1 set established */
#define DMA_TAG_W0_FLAG_SET      1

/*
 * TESTVEC lines: known real values and their decode. Format is fixed;
 * a consumer may assert against them. The recorded values are the two
 * kick ids and the tag word with a zero count (the notes write the tag as
 * the marker ORed with the count).
 * TESTVEC: 0xe01 as KICK_A_HI => id=3585
 * TESTVEC: 0xe03 as KICK_A_HI => id=3587
 * TESTVEC: 0x5a00 as TAG_W1 => marker=90, tag=0
 *
 * Layout-only examples, decoded by the header's ranges and NOT recorded as
 * seen values: not conformance vectors, do not assert a generator against
 * them. The top byte of word 7 for a write and for a read as the notes
 * describe it, with the rest zero; a page entry word 1 with a 512-byte
 * count and a zero address part; operand 0 of the tag command with slot 0.
 * EXAMPLE (unverified): 0x32000000 as ENTRY_W7 => read_dir=0, fixed25=1, transform=0, fixed28=1, fixed29=1, differs=0, irq_after=0
 * EXAMPLE (unverified): 0x33000000 as ENTRY_W7 => read_dir=1, fixed25=1, transform=0, fixed28=1, fixed29=1, differs=0, irq_after=0
 * EXAMPLE (unverified): 0xb3000000 as ENTRY_W7 => read_dir=1, fixed25=1, transform=0, fixed28=1, fixed29=1, differs=0, irq_after=1
 * EXAMPLE (unverified): 0x00000200 as PAGE_W1 => count=512
 * EXAMPLE (unverified): 0x8000 as TAG_W0 => slot=0, flag=1
 */

#endif /* DMA_DECODE_H */
