/*
 * BUZZ_DECODE.h - VPro (Odyssey) "Buzz" graphics ASIC: command and image
 *                 header decode words (publish-safe subset)
 *
 * Purpose: the wire format of the words an emulator has to decode to move
 * pixels and bind textures: the COPY command, the eight-word image/DMA
 * header, the post-filter scale/bias command, the pixel-mode descriptor
 * words and the texture level and sampler words. Meant to be consumed by
 * public projects, so it carries bit positions, opcodes and enum values
 * only. No binary symbols, no addresses, no vendor identifiers.
 *
 * Derivation: derived from odsy RE binary analysis of the VPro command
 * FIFO, DMA path and texture state; see the odsy repository's RE notes
 * (docs/pixel-paths.md, docs/tokens.md, docs/texture-state.md,
 * docs/texture-formats.md, docs/buzz.md). Every fact is restated in our
 * own words. the shared decode-header check (defs.toml) checks this file against those
 * notes and against the publish-safe rules.
 *
 * Grades, on every field and value:
 *   established - read in full in the shipped software that builds or
 *                 consumes the word, and cross-checked where a second
 *                 reader exists. This is what the driver sends, not a
 *                 measurement of the silicon.
 *   inferred    - a reasoned reading; the reasoning is given.
 *   unknown     - not derived. No shipped software or published source
 *                 depends on it.
 * Board behaviour is never "established" here: nothing in this file was
 * measured on a board. A grade speaks about the word's layout, not about
 * what the hardware does with a value.
 *
 * Machine-parseable annotations (the shared decode-header check reads them):
 *   FIELD: <WORD>.<name> <hi>:<lo> <grade>     one per field
 *   TESTVEC: <value> as <WORD> => name=val, ...   a known real value
 * A single bit is written <n>:<n>. Do not reformat these lines.
 *
 * Words are 32 bits. Bit 31 is the most significant.
 */
#ifndef BUZZ_DECODE_H
#define BUZZ_DECODE_H

#include <stdint.h>

#define BUZZ_FIELD_GET(w, shift, mask) (((w) >> (shift)) & (mask))

/* ===================================================================
 * 1. Command-word framing (the two commands in this file)
 * ===================================================================
 *
 * A class-1 command word is 0x0001 in bits 31:16, a 4-bit operand count
 * in bits 13:10 and a block id in bits 9:0; the operands follow it.
 * The opcodes named here are the low 16 bits (count and id together):
 * the operand count is part of the opcode.
 *
 * established: both commands below are always sent with count 8, and
 * the kernel replay paths send exactly eight operands for them.
 */
#define BUZZ_CMD_CLASS1_PREFIX   0x00010000u /* established */

/* COPY: rectangle copy between two drawables or buffers, count 8, id 0x031.
 * established as the word the copy sender emits ahead of its eight words.
 * The id 0x031 is shared with the second of the four mode-1 post-filter
 * sets (section 5): a decoder must treat the 0x2031 stream as COPY
 * unless it has itself selected post-filter mode 1. The mode switch is
 * a register-block choice made by software; the hardware's own
 * disambiguation is unknown. */
#define BUZZ_OP_COPY             0x2031u /* established */
#define BUZZ_OP_COPY_WORDS       8

/* POSTFILTER: scale and bias, count 8, id 0x03b. established. */
#define BUZZ_OP_POSTFILTER       0x203bu /* established */
#define BUZZ_OP_POSTFILTER_WORDS 8

/* Texture level descriptor i (i = 0..63): count 3, id 0x280 + i.
 * Low 16 bits of the command word are 0x0e80 + i. established. */
#define BUZZ_OP_TEXLEVEL(i)      (0x0e80u + (i))
#define BUZZ_TEXLEVEL_COUNT      64

/* Sampler/texture-mode block: count 7, id 0x016, command word low
 * 16 bits 0x1c16; the sampler word is operand 4 (fifth). established. */
#define BUZZ_OP_TEXMODE          0x1c16u

/* ===================================================================
 * 2. The eight-word image header (host DMA read/write and COPY source)
 * ===================================================================
 *
 * Eight words, word 0 first. One layout, read (board to host) and write
 * (host to board) differ in words 4 and 7 only as noted. established:
 * every field below is the field the sender fills, read in full for the
 * read, write and copy senders.
 *
 *   word 0  board reference: bits 28:0 address or a drawable selector,
 *           bit 29 window-relative, bits 31:30 kept from the caller
 *   word 1  x in 15:0, y in 31:16 (the smaller corner)
 *   word 2  window word in 11:0 (the value 0x1000 is sent as 1)
 *   word 3  width in 15:0, height in 31:16
 *   word 4  pixel description (section 3)
 *   word 5  host row stride less the row bytes
 *   word 6  row bytes in 19:0
 *   word 7  host format/type/size control (section 4)
 *
 * Word 0.
 */
/* FIELD: HDR_W0.ref 28:0 established */
/* FIELD: HDR_W0.window_rel 29:29 established */
/* FIELD: HDR_W0.kept 31:30 inferred */
#define BUZZ_HDR_W0_REF_MASK     0x1fffffffu /* established: in the
        memory-object path this holds the object's board address in
        16-byte units, inferred from the divide-by-16 the sender applies;
        for a window transfer a reserved value names the bound read or
        draw drawable (values in the odsy RE notes) */
#define BUZZ_HDR_W0_WINDOW_REL   (1u << 29)  /* established: the sender
        tests it to add the window origin. */

/* Words 1 and 3. */
/* FIELD: HDR_W1.x 15:0 established */
/* FIELD: HDR_W1.y 31:16 established */
/* FIELD: HDR_W3.width 15:0 established */
/* FIELD: HDR_W3.height 31:16 established */

/* Word 2. */
/* FIELD: HDR_W2.window_word 11:0 established */

/* Words 5 and 6. */
/* FIELD: HDR_W6.row_bytes 19:0 established */

/* ===================================================================
 * 3. Image header word 4: class/code, field geometry, pixel size
 * ===================================================================
 *
 * Bits:
 *   2:0    class   (read only; zero in a library-built write header)
 *   7:3    code    (read only; zero in a library-built write header)
 *   11:8   not written by the senders: unknown
 *   12     always set
 *   15:13  size field (read: the class field of the table below;
 *          write: the size field of the pixel as the board holds it)
 *   19:16  pixel-size / description field (see PIXEL SIZE below)
 *   23:20  first field code
 *   27:24  second field code
 *   28     set for a drawable
 *   31     front buffer
 *
 * READ HEADER SPLIT (established): class is bits 2:0 and code is bits
 * 7:3. This is NOT the split of the write header's low byte (section 4):
 * the write byte's format is 4:0 and its type is 8:5.
 * The read value 0x08 therefore decodes as class 0, code 1.
 */
/* FIELD: HDR_W4.class 2:0 established */
/* FIELD: HDR_W4.code 7:3 established */
/* FIELD: HDR_W4.bit12 12:12 established */
/* FIELD: HDR_W4.size_field 15:13 established */
/* FIELD: HDR_W4.pixel_size 18:16 inferred */
/* FIELD: HDR_W4.pixel_size_b19 19:19 unknown */
/* FIELD: HDR_W4.field_a 23:20 established */
/* FIELD: HDR_W4.field_b 27:24 established */
/* FIELD: HDR_W4.drawable 28:28 established */
/* FIELD: HDR_W4.front 31:31 established */
#define BUZZ_HDR_W4_CLASS_SHIFT   0
#define BUZZ_HDR_W4_CLASS_MASK    0x7u
#define BUZZ_HDR_W4_CODE_SHIFT    3
#define BUZZ_HDR_W4_CODE_MASK     0x1fu
#define BUZZ_HDR_W4_BIT12         (1u << 12)
#define BUZZ_HDR_W4_SIZEFLD_SHIFT 13
#define BUZZ_HDR_W4_SIZEFLD_MASK  0x7u
#define BUZZ_HDR_W4_PSIZE_SHIFT   16
#define BUZZ_HDR_W4_PSIZE_MASK    0x7u   /* 3 bits: 18:16, see below */
#define BUZZ_HDR_W4_FIELD_A_SHIFT 20
#define BUZZ_HDR_W4_FIELD_B_SHIFT 24
#define BUZZ_HDR_W4_FIELD_MASK    0xfu
#define BUZZ_HDR_W4_DRAWABLE      (1u << 28)
#define BUZZ_HDR_W4_FRONT         (1u << 31)

/*
 * PIXEL SIZE (the 19:16 versus 18:16 question). RESOLVED: the pixel-size
 * code is THREE bits, 18:16. Two different words carry a pixel-size code
 * and both are 18:16:
 *   - image header word 7 bits 18:16 (host bytes per pixel, section 4)
 *   - image header word 4 bits 18:16 (the pixel size of the described
 *     buffer; the kernel's own header builder for memory objects writes
 *     only the three bits 18:16)
 * Basis (word 7 established; word 4 inferred from the kernel's builder):
 * the code space is the eight-entry table below, so
 * a value never needs a fourth bit. The host-side lookup is a table of
 * exactly those eight codes, dumped and found to be its exact inverse,
 * and the kernel's request handler names word 7 bits 18:16 as the
 * pixel-size code. No shipped sender is known to set bit 19 of word 4
 * to a size.
 * Why the disagreement existed: the library copies word 4 bits 19:16 as
 * one 4-bit field from the buffer description, so a reader of that
 * copy sees four bits. The extra bit 19 is not a size bit as far as
 * any observed value shows: grade unknown. A decoder must read the size
 * from 18:16 and may treat a set bit 19 as "reserved, unknown" without
 * changing the size.
 * Bytes per pixel by code (established, host-side table and its
 * inverse):
 */
#define BUZZ_PSIZE_2B   0 /* 2 bytes  - established */
#define BUZZ_PSIZE_4B   1 /* 4 bytes  - established */
#define BUZZ_PSIZE_8B   2 /* 8 bytes  - established */
#define BUZZ_PSIZE_16B  3 /* 16 bytes - established */
#define BUZZ_PSIZE_12B  4 /* 12 bytes - established */
#define BUZZ_PSIZE_1B   5 /* 1 byte   - established */
#define BUZZ_PSIZE_6B   6 /* 6 bytes  - established */
#define BUZZ_PSIZE_3B   7 /* 3 bytes  - established */
/* What the board does with these codes beyond choosing the stride: unknown. */

/* Read class (2:0) and code (7:3). established as the pairs a read
 * header carries (classes 0..4 occur; the code is a 5-bit selector, values
 * 0..14 occur). What the board does with a pair is unknown (inferred: it
 * names how the delivered component is taken from the stored pixel). The
 * size field in bits 15:13 follows the class: 0 for classes 0 and 1, 1 for
 * class 2, 2 for classes 3 and 4. */
/* class 0 code 1: one component in the first byte of a 2-byte field,
 * as for a colour-index byte read. established as a pair; the reading
 * "first byte of a 2-byte field" is inferred. */
#define BUZZ_RD_CODE_INDEX_BYTE 1

/* ===================================================================
 * 4. Image header word 7: format, type, size, path
 * ===================================================================
 *
 * Write header (host to board): established.
 *   4:0   format code
 *   8:5   type code     (4 bits; values up to 0xc occur)
 *   9     expand flag
 *   10    unpack byte-swap (inferred from the context flag it comes from)
 *   18:16 host bytes-per-pixel code (BUZZ_PSIZE_*)
 *   27    transform path (set when a scale/bias or flipped copy follows)
 *   30    differs flag (set when source and destination descriptions
 *         differ in their word 4)
 * Read header: bits 18:16 as above and bit 30 as above; the rest 0
 * as sent.
 * The kernel forces the top byte before queuing: bits 29, 28 and 25
 * set, bit 24 set for a board-to-host transfer, bits 27 and 30 kept
 * from the caller. established.
 */
/* FIELD: HDR_W7.format 4:0 established */
/* FIELD: HDR_W7.type 8:5 established */
/* FIELD: HDR_W7.expand 9:9 established */
/* FIELD: HDR_W7.swap 10:10 inferred */
/* FIELD: HDR_W7.size_field 15:13 established */
/* FIELD: HDR_W7.psize 18:16 established */
/* FIELD: HDR_W7.read_dir 24:24 established */
/* FIELD: HDR_W7.transform 27:27 established */
/* FIELD: HDR_W7.differs 30:30 established */
#define BUZZ_HDR_W7_FORMAT_SHIFT  0
#define BUZZ_HDR_W7_FORMAT_MASK   0x1fu
#define BUZZ_HDR_W7_TYPE_SHIFT    5
#define BUZZ_HDR_W7_TYPE_MASK     0xfu   /* bits 8:5; mask 0x1e0 in place */
#define BUZZ_HDR_W7_TYPE_INPLACE  0x000001e0u
#define BUZZ_HDR_W7_EXPAND        (1u << 9)
#define BUZZ_HDR_W7_SWAP          (1u << 10)
#define BUZZ_HDR_W7_SIZE_FIELD_SHIFT 13   /* bits 15:13; compared against HDR_W4.size_field on the copy path */
#define BUZZ_HDR_W7_SIZE_FIELD_MASK  0x7u
#define BUZZ_HDR_W7_PSIZE_SHIFT   16
#define BUZZ_HDR_W7_PSIZE_MASK    0x7u
#define BUZZ_HDR_W7_READ          (1u << 24)
#define BUZZ_HDR_W7_TRANSFORM     (1u << 27)
#define BUZZ_HDR_W7_DIFFERS       (1u << 30)

/* Format codes, with the Khronos enumerant each is chosen for.
 * established as the sender's mapping. Several enumerants share a code
 * and a destination class can change the choice (shown). */
#define BUZZ_FMT_DEPTH_STENCIL 0  /* GL_STENCIL_INDEX, GL_DEPTH_COMPONENT */
#define BUZZ_FMT_INDEX         1  /* GL_COLOR_INDEX */
#define BUZZ_FMT_LUMINANCE     2  /* GL_LUMINANCE; GL_ALPHA into dest class 0/3 */
#define BUZZ_FMT_INTENSITY     3  /* GL_INTENSITY */
#define BUZZ_FMT_RED           4  /* GL_RED */
#define BUZZ_FMT_GREEN         5  /* GL_GREEN */
#define BUZZ_FMT_BLUE          6  /* GL_BLUE */
#define BUZZ_FMT_ALPHA         7  /* GL_ALPHA into other destination classes */
#define BUZZ_FMT_LUM_ALPHA     8  /* GL_LUMINANCE_ALPHA */
#define BUZZ_FMT_RGB           9  /* GL_RGB */
#define BUZZ_FMT_RGBA          0xb /* GL_RGBA; 0xc with packed REV types */
#define BUZZ_FMT_ABGR          0xc /* GL_ABGR_EXT; 0xb with 4_4_4_4_REV or 8_8_8_8_REV */
#define BUZZ_FMT_BGR           0xd /* GL_BGR; 9 with 5_6_5_REV */
#define BUZZ_FMT_BGRA          0x11 /* GL_BGRA; 0x10 with the four REV types */
/* Codes 0xa and 0xe are RGBA variants the sender picks under a context
 * mode: established as values, meaning unknown. */

/* Type codes. established. */
#define BUZZ_TYPE_BYTE         2   /* GL_BYTE, GL_UNSIGNED_BYTE, 8_8_8_8 and REV */
#define BUZZ_TYPE_SHORT        3   /* short types */
#define BUZZ_TYPE_INT          4   /* int types; the only depth/stencil source types */
#define BUZZ_TYPE_332          5   /* UNSIGNED_BYTE_3_3_2 and 2_3_3_REV */
#define BUZZ_TYPE_4444         6   /* UNSIGNED_SHORT_4_4_4_4 and REV */
#define BUZZ_TYPE_5551         7   /* UNSIGNED_SHORT_5_5_5_1 and REV */
#define BUZZ_TYPE_1010102      8   /* UNSIGNED_INT_10_10_10_2 and REV */
#define BUZZ_TYPE_565          0xa /* UNSIGNED_SHORT_5_6_5 and REV */
#define BUZZ_TYPE_BYTE_12      0xb /* byte types into a 12-bit-per-channel dest */
#define BUZZ_TYPE_565_CLASS10  0xc /* 5_6_5 types into destination class 10 */

/*
 * TESTVEC lines: known real values and their decode. Format is fixed;
 * a consumer may assert against them.
 *
 * Write word 7, low bits (format 4:0, type 8:5, expand 9:9):
 * TESTVEC: 0x41 as HDR_W7 => format=1, type=2, expand=0
 * TESTVEC: 0x42 as HDR_W7 => format=2, type=2, expand=0
 * TESTVEC: 0x4b as HDR_W7 => format=11, type=2, expand=0
 * TESTVEC: 0x61 as HDR_W7 => format=1, type=3, expand=0
 * TESTVEC: 0x6b as HDR_W7 => format=11, type=3, expand=0
 * TESTVEC: 0x16c as HDR_W7 => format=12, type=11, expand=0
 * A complete write word 7 seen for an 8-bit index upload:
 * TESTVEC: 0x32050041 as HDR_W7 => format=1, type=2, psize=5, read_dir=0, transform=0, differs=0
 *
 * Read word 4, low byte (class 2:0, code 7:3):
 * TESTVEC: 0x08 as HDR_W4 => class=0, code=1
 * A full word 4 seen for an 8-bit index window copy (front, fields 3/3,
 * size code 3 for a 16-byte pixel):
 * TESTVEC: 0x83331008 as HDR_W4 => class=0, code=1, bit12=1, size_field=0, pixel_size=3, field_a=3, field_b=3, drawable=0, front=1
 * A word 4 reported for a movie transfer; decoded by layout only and NOT
 * independently derived. This is an illustrative example, not a conformance
 * vector: do not assert a generator against it.
 * EXAMPLE (unverified): 0x82233000 as HDR_W4 => class=0, code=0, bit12=1, size_field=1, pixel_size=3, field_a=2, field_b=2, drawable=0, front=1
 */

/* ===================================================================
 * 5. COPY block (opcode 0x2031) and POSTFILTER block (0x203b)
 * ===================================================================
 *
 * COPY operands, word 0 first (established for the header words the
 * sender stores, inferred for the overlap splitting that sets bits 31:30):
 *   0  source reference     = image header word 0
 *   1  source x/y           = image header word 1
 *   2  mixed word           (below)
 *   3  width/height         = image header word 3
 *   4  source description   = a read header's word 4
 *   5  destination ref      = image header word 0 of the destination
 *   6  destination x/y      = image header word 1 of the destination
 *   7  destination control  = a write header's word 7 with the extra
 *                             bits below
 * Operand 2: bits 11:0 source window word, bits 15:12 destination's
 * second field code, bits 27:16 destination window word, bit 31
 * destination front.
 * Operand 7 extras: bits 29:28 set when a context flag word is
 * zero (what the flag is: unknown), bit 27 = HDR_W7.transform, bit 30 set when the
 * destination y lies inside the source y range, bit 31 set when the
 * destination x lies inside the source x range (overlap handling,
 * inferred). Operand 7 bits 23:20 hold the destination's first field
 * code (the second goes to operand 2 bits 15:12) and bits 19:16 are one
 * 4-bit size field (established from the sender's stores).
 *
 * Destination buffer selection (established for the fields the sender
 * fills; board use inferred). The destination DRAWABLE/base is operand 5,
 * an image-header word 0 (the reserved value 0x30000010 names the bound
 * draw drawable; otherwise a board address, unit inferred as 16 bytes
 * from the sender's divide-by-16 and not reconciled with the memory
 * manager's shift-left-by-5 extent word). FRONT vs BACK within that
 * drawable is operand 2 bit 31 (COPY_W2.dst_front). The destination
 * buffer is NOT taken from operand 7: bits 23:20 are the destination's
 * first field code and 19:16 a 4-bit size field, so no buffer select is
 * there. The sender sets operand 2 bit 31 from the GL draw-buffer
 * selection at copy time (cleared for three of the draw-buffer values,
 * set otherwise; established); the swap state is not an input, and the
 * swap routine sends no copy words. Whether the bit tracks the displayed
 * buffer across a swap is therefore NOT shown by any copy-path evidence;
 * the swap tracking seen in the kernel belongs to bit 31 of registers
 * 0x608/0x609, a separate bit (see docs/pixel-paths.md). Both buffer bases reach the board: the make-current reply carries
 * a first and a second buffer location (established), sent on in the
 * drawable descriptor block 0x017 (word 0 the first/draw buffer location;
 * word 3 inferred to be the second). So the bit most plausibly selects
 * between two bases the board already holds rather than driving base
 * arithmetic (inferred, weakly: the kernel's pixel-buffer attach path with
 * its flag bit 1 set writes zero as the second base, and what that bit
 * means is not traced); which of the two it picks is board behaviour,
 * unknown (no shipped software reads the result back).
 *
 * Index copy rule (inferred; discriminating test is unknown): a copy
 * whose source word 4 is class 0 code 1, whose destination word 7 is
 * format 1 (COLOR_INDEX) with type 2 and whose destination names a
 * 2-byte index field leaves the index unchanged. The upper byte of the
 * 2-byte field is unknown for values above 0xff.
 * A copy with HDR_W7.transform set, mismatched component classes, or
 * different field sizes takes the converting path: board arithmetic
 * unknown.
 */
/* FIELD: COPY_W2.src_window 11:0 established */
/* FIELD: COPY_W2.dst_field_b 15:12 established */
/* FIELD: COPY_W2.dst_window 27:16 established */
/* FIELD: COPY_W2.dst_front 31:31 established */
/* FIELD: COPY_W7.dst_field_a 23:20 established */
/* FIELD: COPY_W7.size_code 19:16 established */
/* FIELD: COPY_W7.clamp_off 29:28 inferred */
/* FIELD: COPY_W7.dst_y_in_src 30:30 inferred */
/* FIELD: COPY_W7.dst_x_in_src 31:31 inferred */

/* POSTFILTER operands (count 8): per channel R, G, B, A in this order,
 * scale then bias: scale R, bias R, scale G, bias G, scale B, bias B,
 * scale A, bias A. Each word holds a signed 3.12 fixed-point value in
 * bits 15:0, written as trunc(x * 4096) & 0xffff after clamping to
 * [-8, 7.999755859375]; bits 31:16 are kept. established.
 * Identity: scale 0x1000, bias 0. Reset/default: scale 0x1000, bias 0
 * (established as the value the library loads).
 * The library sends this block before each image copy, so an unsigned
 * copy sees the identity. For signed component types the library
 * sends a final pass of scale 2.0 and bias 1/4096 (words 0x2000 and
 * 0x0001); that is a library choice, board behaviour unknown.
 * Alternate layouts of the same operand set exist (mode-dependent
 * register blocks); this header documents the mode that drives it.
 */
/* FIELD: PF.value 15:0 established */
#define BUZZ_PF_FRAC_BITS      12
#define BUZZ_PF_ONE            0x1000u /* established */
#define BUZZ_PF_MIN_X4096      (-8 * 4096)
#define BUZZ_PF_MAX_X4096      32767

/* ===================================================================
 * 6. Pixel-mode descriptor words
 * ===================================================================
 *
 * Two descriptor words describe a drawable's pixel storage (the same
 * encoding is sent for a render target and for an on-board mipmap
 * destination). First word: bits 11:0 the window word (same value as
 * image header word 2). Second word:
 */
/* FIELD: PIXMODE_W1.field_format 6:4 established */
/* FIELD: PIXMODE_W1.layout 9:7 established */
/* FIELD: PIXMODE_W1.storage 12:10 established */
/* FIELD: PIXMODE_W1.size_field 15:13 established */
/* FIELD: PIXMODE_W1.index_class 19:19 established */
/* FIELD: PIXMODE_W1.bit21 21:21 unknown */
/* FIELD: PIXMODE_W1.storage3 22:22 inferred */
/* FIELD: PIXMODE_W1.bit27 27:27 unknown */
/* FIELD: PIXMODE_W0.window_word 11:0 established */
/* Field format (bits 6:4), by pixel class of the described buffer.
 * established as the value chosen; inferred meaning: component layout.
 * -1 means the class is refused. */
#define BUZZ_FIELDFMT_INDEX     0 /* classes 16, 17 (colour index) */
#define BUZZ_FIELDFMT_ONE       2 /* classes 0-5: one channel */
#define BUZZ_FIELDFMT_TWO       3 /* classes 6, 9: two channels */
#define BUZZ_FIELDFMT_RGBA      5 /* classes 7, 10, 12, 13 */
#define BUZZ_FIELDFMT_RGBA_SHORT_A 6 /* classes 8, 11: short alpha */
/* Bit 19 is set for colour-index classes (established). Bit 22 is set
 * when the storage code is 3 (inferred reading of the stored value).
 * Bit 21 comes from a bind reply and bit 27 from two description flags:
 * meanings unknown. Storage and layout code values are small integers
 * (storage 0..3, layout 0..6) used as table keys; their meaning is
 * unknown beyond that table. */

/* ===================================================================
 * 7. Texture level descriptors (blocks 0x280 + i, three words)
 * ===================================================================
 */
/* Word 0. */
/* FIELD: TEXLEVEL_W0.addr 28:0 established */
/* FIELD: TEXLEVEL_W0.kept 31:29 unknown */
/* Word 1. */
/* FIELD: TEXLEVEL_W1.pitch 11:0 established */
/* FIELD: TEXLEVEL_W1.format_index 25:20 established */
/* FIELD: TEXLEVEL_W1.offset_code 28:26 established */
/* FIELD: TEXLEVEL_W1.size_code 31:30 established */
/* Word 2. */
/* FIELD: TEXLEVEL_W2.bits 11:0 established */
/* Word 0 bits 28:0: a per-level value taken from the allocation; that it
 * is the level's board-memory address is inferred. Word 1 bits 11:0:
 * the level width in 16-texel units, rounded up to an even count; when
 * the count would be 4096 the field is stored as 1 (established as
 * arithmetic, board reading of the pitch inferred). Bits 25:20 the
 * texel format index (0..49 used, six bits wide); 31:30 the size code
 * (0 for 2-byte texels, 1 for 4, 2 for 8: log2 bytes minus one,
 * inferred); 28:26 the offset code (0 or 2). Word 1 bit 29 and bits
 * 19:12 are never written by the software (inferred zero; board
 * meaning unknown). Word 2 bits 11:0 ARE written by texture activation for
 * 3D targets, as the base-2 ceiling of the slice tile count (the 3D slice
 * exponent; the texture-state decode header carries it as a 3D slice
 * field); for non-3D targets the mipmap builder and the pixel-to-texture
 * move clear them. Board reading inferred. */
#define BUZZ_TEXLEVEL_W1_PITCH_MASK    0x00000fffu
#define BUZZ_TEXLEVEL_W1_FMT_SHIFT     20
#define BUZZ_TEXLEVEL_W1_FMT_MASK      0x3fu
#define BUZZ_TEXLEVEL_W1_OFFS_SHIFT    26
#define BUZZ_TEXLEVEL_W1_OFFS_MASK     0x7u
#define BUZZ_TEXLEVEL_W1_SIZE_SHIFT    30
#define BUZZ_TEXLEVEL_W1_SIZE_MASK     0x3u

/* ===================================================================
 * 8. Sampler word (operand 4 of the texture-mode block)
 * ===================================================================
 *
 * established as the fields the software sets. Reset/default written at
 * texture-object creation: 0x82 = minification NEAREST_MIPMAP_LINEAR,
 * magnification LINEAR, no colour table (decode in the TESTVEC below).
 */
/* FIELD: SAMPLER.colour_table 0:0 established */
/* FIELD: SAMPLER.mag 4:1 established */
/* FIELD: SAMPLER.min 7:5 established */
/* FIELD: SAMPLER.wrap_r 9:8 established */
/* FIELD: SAMPLER.wrap_t 11:10 established */
/* FIELD: SAMPLER.wrap_s 13:12 established */
/* FIELD: SAMPLER.image_flag14 14:14 established */
/* FIELD: SAMPLER.trilinear 17:17 established */
/* FIELD: SAMPLER.image_flag18 18:18 established */
/* FIELD: SAMPLER.table_fmt 22:20 established */
/* FIELD: SAMPLER.activation 25:23 established */
/* FIELD: SAMPLER.no_offset 28:28 established */
#define BUZZ_SAMPLER_WRAP_REPEAT   0 /* established */
#define BUZZ_SAMPLER_WRAP_EDGE     1 /* established: clamp to edge */
#define BUZZ_SAMPLER_WRAP_CLAMP    2 /* established */
#define BUZZ_SAMPLER_WRAP_BORDER   3 /* established: clamp to border */
#define BUZZ_SAMPLER_MIN_NEAREST            0 /* established */
#define BUZZ_SAMPLER_MIN_LINEAR             1 /* established */
#define BUZZ_SAMPLER_MIN_NEAREST_MIP_NEAREST 2 /* established */
#define BUZZ_SAMPLER_MIN_LINEAR_MIP_NEAREST 3 /* established */
#define BUZZ_SAMPLER_MIN_NEAREST_MIP_LINEAR 4 /* established */
#define BUZZ_SAMPLER_MIN_LINEAR_MIP_LINEAR  5 /* established */
#define BUZZ_SAMPLER_MAG_NEAREST       0 /* established */
#define BUZZ_SAMPLER_MAG_LINEAR        1 /* established */
#define BUZZ_SAMPLER_MAG_DETAIL        2 /* established */
#define BUZZ_SAMPLER_MAG_DETAIL_ALPHA  3 /* established */
#define BUZZ_SAMPLER_MAG_DETAIL_COLOR  4 /* established */
/* Colour-table format code (22:20): 0 none, 1 alpha, 2 luminance,
 * 3 luminance-alpha, 4 intensity, 5 RGB, 6 RGBA. established.
 * Bit 17 is set for trilinear (linear spatially and across levels).
 * Bits 14 and 18 are set by image-transfer steps; board meaning unknown.
 * Bit 19 is never set. Bits 25:23 meaning unknown.
 * TESTVEC: 0x82 as SAMPLER => colour_table=0, mag=1, min=4
 */

/* ===================================================================
 * 7. Blocks and words the senders and replay paths use
 * ===================================================================
 *
 * Block ids that the shipped software sends but that no other section
 * names. Each id is the low ten bits of a command word (section 1); the
 * grade says whether the id, count and word are what the sender emits
 * (established) and, where a role is given, how it was reached.
 *
 * Alpha test, id 0x01e, command word 0x0001041e, one operand: the
 * comparison in bits 14:12 and the reference in bits 11:0. The
 * comparison is the GL comparison enum minus 0x200 (0 never, 1 less,
 * 2 equal, 3 less-or-equal, 4 greater, 5 not-equal, 6 greater-or-equal,
 * 7 always); the reference is the clamped 0..1 value scaled by 4096, with
 * 1.0 sent as 4095. The sender keeps the other bits of the word.
 * established as the sender's arithmetic; the pass sets for each
 * comparison under reference 0.5 (less-or-equal passes alpha 0.3 and 0.5,
 * equal passes 0.5 only, never passes none, always passes all) are read
 * from the stored frames of the vendor's board simulator, not from a
 * board, and agree with this reading.
 */
/* FIELD: ALPHA_TEST.reference 11:0 established */
/* FIELD: ALPHA_TEST.func 14:12 established */
#define BUZZ_ALPHA_TEST_REFERENCE_SHIFT 0
#define BUZZ_ALPHA_TEST_REFERENCE_MASK  0xfffu
#define BUZZ_ALPHA_TEST_FUNC_SHIFT      12
#define BUZZ_ALPHA_TEST_FUNC_MASK       0x7u
#define BUZZ_ALPHA_TEST_FUNC_NEVER      0 /* established */
#define BUZZ_ALPHA_TEST_FUNC_LESS       1 /* established */
#define BUZZ_ALPHA_TEST_FUNC_EQUAL      2 /* established */
#define BUZZ_ALPHA_TEST_FUNC_LEQUAL     3 /* established */
#define BUZZ_ALPHA_TEST_FUNC_GREATER    4 /* established */
#define BUZZ_ALPHA_TEST_FUNC_NOTEQUAL   5 /* established */
#define BUZZ_ALPHA_TEST_FUNC_GEQUAL     6 /* established */
#define BUZZ_ALPHA_TEST_FUNC_ALWAYS     7 /* established */
#define BUZZ_BLK_ALPHA_TEST             0x01e /* established */
/* Under reference 0.5: less-or-equal as bits 14:12 = 3, reference 0x800.
 * TESTVEC: 0x3800 as ALPHA_TEST => func=3, reference=2048
 */

/* Frame pixel as stored in the vendor simulator's reference frames: red in
 * bits 31:24, green 23:16, blue 15:8 and alpha 7:0, each component the
 * colour in 0..1 scaled as floor(256 c) and limited to 255. established
 * for the colours the reference frames draw (0.1 to 1.0), by rebuilding
 * the stored frames with a matching checksum; the frames are the
 * simulator's output, not a board's. Values below 0.1 are not tested.
 */
/* FIELD: FRAME_PIXEL.alpha 7:0 established */
/* FIELD: FRAME_PIXEL.blue 15:8 established */
/* FIELD: FRAME_PIXEL.green 23:16 established */
/* FIELD: FRAME_PIXEL.red 31:24 established */
#define BUZZ_FRAME_PIXEL_ALPHA_SHIFT 0
#define BUZZ_FRAME_PIXEL_BLUE_SHIFT  8
#define BUZZ_FRAME_PIXEL_GREEN_SHIFT 16
#define BUZZ_FRAME_PIXEL_RED_SHIFT   24
#define BUZZ_FRAME_PIXEL_COMPONENT_MASK 0xffu
/* Colours 0.5, 0.6, 0.7 and 1.0 as red, green, blue and alpha.
 * TESTVEC: 0x8099b3ff as FRAME_PIXEL => red=128, green=153, blue=179, alpha=255
 */

/* Other block ids, each sent with the operand count in the comment. The
 * role, where given, is inferred and said so. */
#define BUZZ_BLK_IMAGE_SELECTS      0x01d /* established id; sent to select the
        window destination of a host-to-board pixel move; roles of the
        selects inferred */
#define BUZZ_BLK_GAMMA_FIT          0x045 /* established id, word 0x00010845,
        two operands; gamma-ramp fitting parameters, role inferred, field
        split unknown */
#define BUZZ_BLK_PIO_PIXELS         0x170 /* established id; leads a
        host-written pixel burst: the word 0x4570, then the bare word
        0x71, then the pixel groups; fields unknown beyond the copied
        format and type bits of the image header's word 7 */
#define BUZZ_BLK_TABLE_DATA         0x1a2 /* established id; the 16-word data
        port of the table that sequencer register 0x31 indexes */
#define BUZZ_SEQ_REG_TABLE_INDEX    0x31  /* established */
#define BUZZ_BLK_SLOT_PAIR          0x1ea /* established id,
        four operands (the first operand of two slot entries, each with
        bit 31 flipped as a second operand); role inferred */
#define BUZZ_SLOT4_DEFAULT_WORD     0xc480c426u /* established: opcode 0x26,
        attribute slot 4, one operand; the word the driver stores as that
        slot's default; what slot 4 carries is unknown */

/* Colour-mode select words. A sequencer word is (register << 24) | 0x8000 |
 * the value (see the table-index register above). Two registers are sent as
 * a pair before colour words: an RGB fill sends value 0 to register 0x22 and
 * value 2 to register 0x23, a colour-index fill sends 1 and 3. established
 * as the register numbers and values on the paths that send them (the kernel
 * text port sends the index pair before every fill; the public OpenBSD
 * console driver sends the RGB pair before its fill). The reading of the
 * pair as a colour-handling mode is inferred, the reset value is unknown,
 * and no shipped path relies on the reset mode. */
#define BUZZ_SEQ_REG_COLOUR_MODE_A     0x22 /* established */
#define BUZZ_SEQ_REG_COLOUR_MODE_B     0x23 /* established */
#define BUZZ_SEQ_COLOUR_MODE_A_RGB     0 /* established */
#define BUZZ_SEQ_COLOUR_MODE_A_INDEX   1 /* established */
#define BUZZ_SEQ_COLOUR_MODE_B_RGB     2 /* established */
#define BUZZ_SEQ_COLOUR_MODE_B_INDEX   3 /* established */
#define BUZZ_SEQ_WORD_COLOUR_A_RGB     0x22008000u /* established */
#define BUZZ_SEQ_WORD_COLOUR_B_RGB     0x23008002u /* established */
#define BUZZ_SEQ_WORD_COLOUR_A_INDEX   0x22008001u /* established */
#define BUZZ_SEQ_WORD_COLOUR_B_INDEX   0x23008003u /* established */

#endif /* BUZZ_DECODE_H */
