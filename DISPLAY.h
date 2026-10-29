/*
 * DISPLAY.h - VPro (Odyssey) display FIFO, display modes and scanout
 *
 * Labels: established (read from the cited binary and function or
 * offset), inferred (reasoning given), unknown.
 * Release: IRIX 6.5.30m, IP30 (Octane2), V12.
 * Binaries: odyssey.a (kernel objects), usr/lib/X11/dyDDX/odyssey.so
 * (X server module, stripped; addresses are its virtual addresses and
 * file offsets).
 */
#ifndef DISPLAY_H
#define DISPLAY_H

#include <stdint.h>

/* ===================================================================
 * 1. Display FIFO words
 * ===================================================================
 * One 64-bit store to base + 0x400000 (BUZZ.h ODSY_DFIFO_PORT) per
 * update. The high 32 bits are a header, the low 32 bits the data:
 *
 *   63    60 59          46 45     32 31                    0
 *   +-------+--------------+---------+-----------------------+
 *   | TYPE  |   ADDRESS    |  COUNT  |         DATA          |
 *   +-------+--------------+---------+-----------------------+
 *
 * established: gf_OdsySetDisplayMode (odsy_retrace.o) builds the header
 * as ((0x2900 + id) << 14) | 0x70000001; odsy_mapcolor (odsy_tport.o)
 * as (index << 14) | 0x30000001. Both put the data in the low word.
 * inferred: bits 13:0 of the header are a word count (1 in every use
 * read) and bits 31:28 a target selector; the split between the two
 * fields is not tested by any other value.
 */
#define DFIFO_HDR(type, addr)      (((uint32_t)(type) << 28) | \
                                    ((uint32_t)(addr) << 14) | 1u)
#define DFIFO_TYPE_CMAP            3   /* established as used */
#define DFIFO_TYPE_DISPLAY         7   /* established as used */

/* Colour map entry (type 3, ADDRESS = entry index): three 10-bit
 * channels, R in 29:20, G in 19:10, B in 9:0. The kernel widens 8-bit
 * input by repeating the top two bits: c10 = c8 << 2 | c8 >> 6.
 * established: odsy_mapcolor. The kernel waits for the display FIFO to
 * drain fully (level 0) before the write. */
#define CMAP_R_SHIFT               20
#define CMAP_G_SHIFT               10
#define CMAP_B_SHIFT               0
#define CMAP_CHAN_MASK             0x3ffu

/* Display-mode table (type 7, ADDRESS = 0x2900 + id): one mode word per
 * display id. Bit 30 of the caller's mode is a software buffer flag: the
 * kernel strips it before the write and instead toggles the id's bit in
 * a driver mask, writing the id's bit to base + 0x10c4 or base + 0x10cc.
 * Ids below 32 only take that path. established: gf_OdsySetDisplayMode.
 * inferred: 0x10c4/0x10cc select front/back buffer per id. The kernel
 * waits for the display FIFO level to fall to 15 or less first. */
#define DISPLAY_MODE_ADDR(id)      (0x2900 + (id))
#define DISPLAY_MODE_SWFLAG        0x40000000u /* stripped by the kernel */

/* ===================================================================
 * 2. Display-mode words
 * ===================================================================
 * The X module does not build mode words; it carries them as constants
 * in two tables of {id, class, mode} triples in .sdata:
 *   table A: file offset 0x218248, VA 0x01738248
 *   table B: file offset 0x218380, VA 0x01738380
 * Only the colour-map field (below) is changed at run time, by
 * odsyValidateMode and odsyChangeDIDCmap, which then pass the word to
 * the kernel with ioctl 1017. established.
 *
 *   id  class  A mode     B mode    bits 23:12  11:9  8:4   3:0
 *    0    0    0x4b5f00   -         0x4b5       7     0x10  0
 *    1    0    0x4b5f10   -         0x4b5       7     0x11  0
 *    2    0    0x4b5f20   -         0x4b5       7     0x12  0
 *    3    0    0x4b5f30   -         0x4b5       7     0x13  0
 *    4    0    0x4b5100   -         0x4b5       0     0x10  0
 *    5    0    0x4b5c00   -         0x4b5       6     0x00  0
 *    6    0    0x4b4600   -         0x4b4       3     0x00  0
 *    7    0    0x520e00   -         0x520       7     0x00  0
 *    8    1    0x4b59a6   -         0x4b5       4     0x1a  6
 *    9    1    0x4b57a6   -         0x4b5       3     0x1a  6
 *   10    1    0x5215a6   -         0x521       2     0x1a  6
 *   11    1    0x5213a6   -         0x521       1     0x1a  6
 *   12    1    0x600da6   -         0x600       6     0x1a  6
 *   13    1    0x521590   -         0x521       2     0x19  0
 *   14    0    0x4b5f01   -         0x4b5       7     0x10  1
 *   15    0    0x521101   0x965101  0x521/965   0     0x10  1
 *   16    0    0x521c01   0x965c01  0x521/965   6     0x00  1
 *   17    0    0x520601   0x964601  0x520/964   3     0x00  1
 *   18    1    0x5219a7   0x9659a7  0x521/965   4     0x1a  7
 *   19    1    0x5217a7   0x9657a7  0x521/965   3     0x1a  7
 *   20    3    -          0x9655a6  0x965       2     0x1a  6
 *   21    3    -          0x9653a6  0x965       1     0x1a  6
 *   22    3    -          0xa40da6  0xa40       6     0x1a  6
 *   23    2    -          0x964e00  0x964       7     0x00  0
 * (Table B repeats ids 0-14 of table A unchanged; ids 32-36 follow in
 * both with another layout: {0x3c00, 0xa1..0xc3}.) established.
 *
 * Bits 8:4: colour-map group. odsyChangeDIDCmap rewrites bits 8:4 for
 * ids below 32 and bits 7:3 otherwise. Group 26 (0x1a) appears on every
 * class-1/3 mode. established. inferred: group 26 is the gamma map used
 * by TrueColor windows and 16-19 are colour-index maps.
 */
#define MODE_CMAP_SHIFT            4
#define MODE_CMAP_MASK             0x1f0u
#define MODE_CMAP_GAMMA            26
/*
 * Bits 11:9: pixel-format code. Across the TrueColor (group 26) modes it
 * takes 4, 3, 2, 1 and 6; across colour-index modes 7, 6, 3 and 0.
 * established as values. The mapping to visual depth:
 *   4 -> 12-bit TrueColor (4 bits a channel)
 *   3 -> 15-bit TrueColor (5 bits a channel)
 *   2 -> 24-bit TrueColor (8 bits a channel)
 *   1 -> 30-bit TrueColor (10 bits a channel)
 *   6 -> 30-bit TrueColor, second layout (bits 23:12 0x600 / 0xa40)
 * inferred: the code falls by one as the channel widens through 4, 5, 8
 * and 10 bits, and the 4- and 5-bit visuals are the only narrow ones
 * the X module encodes pixels for (section 3). Reading the X visual
 * table that binds each id to a depth would make it established.
 * Among colour-index modes 7 is the 8-bit group modes, 6 the group-0
 * mode 5 (inferred: 12-bit index) and 3 and 0 are unexplained.
 */
#define MODE_FMT_SHIFT             9
#define MODE_FMT_MASK              0xe00u
#define MODE_FMT_RGB10             1 /* inferred */
#define MODE_FMT_RGB8              2 /* inferred */
#define MODE_FMT_RGB5              3 /* inferred */
#define MODE_FMT_RGB4              4 /* inferred */
#define MODE_FMT_RGB10_ALT         6 /* inferred */
/* Bits 3:0: 6 on single-buffered TrueColor modes, 7 on the
 * double-buffered ones (ids 18-19, table B), 1 on ids 14-17, 0 on the
 * rest. Bits 23:12: 0x4b5, 0x521, 0x965, 0x520, 0x964, 0x600, 0xa40.
 * established as values; meaning unknown. */

/* ===================================================================
 * 3. Narrow TrueColor visuals: how pixels are stored and shown
 * ===================================================================
 * The X module's fill path (odsyDrawMonoPixels, VA 0x0156bf5c-0x0156c3f0)
 * turns a TrueColor pixel value p into a drawing colour two ways. For a
 * 12-bit pixel (fields p[3:0], p[7:4], p[11:8]):
 *   12-bit colour operands of register 0x021 (BUZZ.h):
 *       R = p[3:0] << 8, G = p[7:4] << 8, B = p[11:8] << 8, A = 0xf00
 *   8-bit vertex colour words after 0xc580cc08:
 *       R = p[3:0] << 4, G = p[7:4] << 4, B = p[11:8] << 4
 * For a 15-bit pixel (p[4:0], p[9:5], p[14:10]):
 *       R = p[4:0] << 7 ... , A = 0x800      (12-bit operands)
 *       R = p[4:0] << 3 ...                  (8-bit words)
 * established: odsyDrawMonoPixels, both paths, both depths.
 *
 * So X stores a narrow channel value v in the TOP N bits of the channel
 * with the low bits zero, never replicated.
 *
 * Every TrueColor mode, narrow or wide, uses colour-map group 26
 * (section 2). With one shared map, a 12-bit window's white (p = 0xfff,
 * stored 0xf0 a channel) would show at the level of 24-bit 0xf0 unless
 * scanout itself widens the top four bits. inferred: for format codes 4
 * and 3, scanout takes the top N bits of each stored channel (N = 4, 5)
 * and widens them to full range before the colour map, which
 * confirms the reading that bits 11:9 select the channel width and
 * scanout keeps the top N bits.
 *
 * Whether widening repeats the top bits or scales is not shown by the
 * driver: unknown. Repeating gives 0xf -> 0xff and is the only choice
 * that maps the X module's 0x0 and 0xf to the map's ends. Whether the
 * board stores the low bits at all for a narrow window (readback,
 * blending and logic ops would see them): unknown. The X module's own
 * readback path for 15-bit data, odsyReadConvertPixels, widens 1-5-5-5
 * halfwords by repeating the top three bits of each channel; that is the
 * server's conversion for 16-bit data, not evidence of how the board
 * scans out.
 */

#endif /* DISPLAY_H */
