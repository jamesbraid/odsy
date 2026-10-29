/*
 * BUZZ.h - VPro (Odyssey) graphics ASIC: command words and texture state
 *
 * Every definition carries a label:
 *   established - read directly from a binary at the cited function/offset
 *   inferred    - a reasoned reading; the reasoning is given
 *   unknown     - not yet derived
 *
 * Release: IRIX 6.5.30m, IP30 (Octane2) install with a V12 board.
 * Binaries:
 *   libGLcore_n32.so  usr/gfx/arch/IP30ODSY32/libGLcore.so (N32, DWARF
 *                     names and line numbers only; no types)
 *   odyssey.a         usr/cpu/sysgen/IP30boot/odyssey.a (kernel objects)
 * Addresses are the N32 libGLcore virtual addresses printed in the
 * libglcore/asm/ODYSSEY/*.s headers.
 */
#ifndef BUZZ_H
#define BUZZ_H

/* ===================================================================
 * 1. Command-FIFO word framing
 * ===================================================================
 *
 * Software writes a stream of 32-bit words: a command word followed by
 * the number of operand words it names.
 *
 * Class-1 command word (bits 31:16 == 0x0001):
 *
 *   31      16 15 14 13   10 9          0
 *   +---------+--+--+-------+------------+
 *   | 0x0001  | 0| P| COUNT |  REG ID    |
 *   +---------+--+--+-------+------------+
 *
 * established: __glOdysseyValidateHardware (0x0d968180) emits each
 * state block as (0x00010000 | COUNT << 10 | REG) followed by exactly
 * COUNT stores of operands, e.g. 0x00011c16 + 7 words, 0x00011013 + 4,
 * 0x00012030 + 8, 0x00010c3e + 3, 0x0001141b + 5, 0x00010e80|i + 3.
 *
 * inferred: REG names a register block, not one 32-bit register that
 * COUNT then walks. Blocks 0x16 (7 words) and 0x17 (4 words) and 0x1b
 * (5 words) would overlap if COUNT auto-incremented REG.
 */
#define BUZZ_CMD_CLASS1            0x00010000u /* established */
#define BUZZ_CMD_COUNT_SHIFT       10          /* established */
#define BUZZ_CMD_COUNT_MASK        0x00003c00u /* established, 4 bits */
#define BUZZ_CMD_REG_MASK          0x000003ffu /* established */
/*
 * P (bit 14): set on the primitive begin and end words (0x00014400 with
 * the primitive type as its one operand, 0x00014001 with none).
 * established as values: kernel textport odsy_sboxfi/odsy_pnt2i
 * (odsy_tport.o). Meaning of the bit: inferred (primitive control).
 */
#define BUZZ_CMD_PRIM              0x00004000u
#define BUZZ_CMD(reg, count) \
    (BUZZ_CMD_CLASS1 | ((count) << BUZZ_CMD_COUNT_SHIFT) | (reg))

/*
 * Words with another top byte (0x22008001, 0x23008003, 0x8080c800,
 * 0xc580c406, 0xce80cc08, 0x90008116) are a second family seen in the
 * same streams. established as values: odsy_color and odsy_sboxfi
 * (odsy_tport.o), __glOdysseyValidateHardware. Their bits 13:10 match
 * the number of operands that follow whenever bit 23 is set
 * (0xce80cc08 + 3, 0xc580c406 + 1, 0x8080c800 + 2); words with bit 23
 * clear are followed by no operands in every case read. inferred.
 */
#define BUZZ_WORD_VERTEX_XY        0x8080c800u /* + x, y: established operand
                                                  count in odsy_sboxfi */

/* ===================================================================
 * 2. Texture state
 * ===================================================================
 *
 * libGLcore keeps a shadow of the texture registers in each texture
 * object (layout in libglcore/include/glcore_odsy.h) and copies it to the
 * context in __glOdysseyValidateTextureState (0x0d9d2bb0). The context
 * copies are emitted by __glOdysseyValidateHardware when the matching
 * dirty bit is set:
 *
 *   REG   COUNT  words                              dirty bit
 *   0x16    7    TEXMODE0..TEXMODE6 (below)          0x0200
 *   0x13    4    LOD bias S, LOD bias T, min LOD,     0x4000
 *                max LOD
 *   0x30    8    post-filter scale/bias, per channel  (path at line 1911)
 *   0x3e    3    texture offset words                 unknown
 *   0x1b    5    texture environment                  0x0100
 *   0x280+i 3    level descriptor i, i = 0..63        0x0400
 *
 * established: register ids, counts and operand sources from
 * __glOdysseyValidateHardware; dirty bits from the setters below, which
 * OR them into the texture object's dirty word.
 */
#define BUZZ_REG_TEXMODE           0x016 /* established, 7 words */
#define BUZZ_REG_TEXLOD            0x013 /* established, 4 words */
#define BUZZ_REG_TEXENV            0x01b /* established, 5 words */
#define BUZZ_REG_POSTFILTER        0x030 /* established, 8 words */
#define BUZZ_REG_TEXOFFSET         0x03e /* established, 3 words */
#define BUZZ_REG_TEXLEVEL(i)       (0x280 + (i)) /* established, 3 words, i<64 */

/* --- TEXMODE0 (first word of block 0x16) ---------------------------- */
/* Bit 31: detail combine. 1 = GL_MODULATE, 0 = GL_ADD.
 * established: __glOdysseyTextureSetDetailMode (0x0d9d6370). */
#define TEXMODE0_DETAIL_MODULATE   0x80000000u
/* Bits 29:25: detail level as a positive count, min(-level, 15).
 * established: __glOdysseyTextureSetDetailLevel (0x0d9d6310). The field
 * is 5 bits wide but the driver never writes more than 15. */
#define TEXMODE0_DETAIL_LEVEL_SHIFT 25
#define TEXMODE0_DETAIL_LEVEL_MASK 0x3e000000u
/* Bit 27 set at object creation (0x08000000). established:
 * InitTextureObject (0x0d9cf5a0), source line 198. Meaning unknown; it
 * lies inside the detail-level field, so it reads as level 4. */
/* Bits 14:10, 9:5, 4:0: log2 size of the base level relative to
 * TEXTURE_BASE_LEVEL, clamped at 0, for three axes. established:
 * __glOdysseyValidateTexture (0x0d9d26d0) lines 2187-2189, from the
 * object's per-axis log2 sizes minus the base level. The axis order
 * (S in 14:10, T in 9:5, R in 4:0) is inferred from the object field
 * order. */
#define TEXMODE0_LOG2_S_SHIFT      10
#define TEXMODE0_LOG2_T_SHIFT      5
#define TEXMODE0_LOG2_R_SHIFT      0
#define TEXMODE0_LOG2_MASK         0x1fu

/* --- TEXMODE1..3 (S, T, R) -------------------------------------------- */
/* Bits 16:0: maximum clamp coordinate in whole texels:
 * trunc(2^log2size * TEXTURE_MAX_CLAMP_{S,T,R}_SGIX). Integer, no
 * fraction bits. established: __glOdysseyValidateTexture lines
 * 2191-2195 (mask 0x1ffff). */
#define TEXMODEn_MAX_CLAMP_MASK    0x0001ffffu
/* Bits 23:18: a 6-bit value set with the wrap mode: 0 for GL_REPEAT and
 * GL_CLAMP, 1 for GL_CLAMP_TO_EDGE, 63 for GL_CLAMP_TO_BORDER.
 * established: __glOdysseyTextureSet{S,T,R}Wrap (0x0d9d5bc0, 0x0d9d5c70,
 * 0x0d9d5d20). Meaning unknown: 1 and 63 look like an edge inset and a
 * border extent but nothing in the driver says so. */
#define TEXMODEn_WRAP_AUX_SHIFT    18
#define TEXMODEn_WRAP_AUX_MASK     0x00fc0000u

/* --- TEXMODE4 (fifth word) -------------------------------------------- */
/* Bit 28: set when the object's offset flag (object word 1404) is zero,
 * cleared otherwise; TEXMODE6 bit 24 is its complement. The same routine
 * zeroes the three TEXOFFSET words. established: SetTexOffsetValues
 * (0x0d9d2660). Meaning of the flag: unknown. */
#define TEXMODE4_NO_OFFSET         0x10000000u
/* Bits 25:23: 3-bit value from the current-texture lookup at
 * activation. established: __glOdysseyTextureActivate (0x0d9d1f90)
 * line 1941. Meaning unknown. */
#define TEXMODE4_ACT_SHIFT         23
#define TEXMODE4_ACT_MASK          0x03800000u
/* Bits 22:18 and 0 are not taken from the texture object: the context
 * keeps its own copy and merges them in. established:
 * __glOdysseyValidateTextureState line 2476 (mask 0x007c0001). Meaning
 * unknown. */
#define TEXMODE4_CTX_BITS          0x007c0001u
/* Bit 17: set for GL_LINEAR_MIPMAP_LINEAR and whenever either filter is
 * GL_PHASE_SGIX; cleared for every other min/mag pair. established:
 * __glOdysseyTextureSetMinFilter (0x0d9d5e40), SetMagFilter (0x0d9d61a0).
 * inferred: marks that both the spatial and the LOD interpolation are
 * linear. GL_NEAREST_MIPMAP_LINEAR does not set it. */
#define TEXMODE4_TRILINEAR         0x00020000u
/* Bits 13:12, 11:10, 9:8: wrap mode for S, T and R. R is forced to
 * REPEAT unless the target is GL_TEXTURE_3D. established:
 * __glOdysseyTextureSet{S,T,R}Wrap. */
#define TEXMODE4_WRAP_S_SHIFT      12
#define TEXMODE4_WRAP_T_SHIFT      10
#define TEXMODE4_WRAP_R_SHIFT      8
#define BUZZ_WRAP_REPEAT           0 /* established, GL_REPEAT */
#define BUZZ_WRAP_EDGE             1 /* established, GL_CLAMP_TO_EDGE */
#define BUZZ_WRAP_CLAMP            2 /* established, GL_CLAMP */
#define BUZZ_WRAP_BORDER           3 /* established, GL_CLAMP_TO_BORDER */
/* Bits 7:5: minification filter. established: SetMinFilter. */
#define TEXMODE4_MIN_SHIFT         5
#define TEXMODE4_MIN_MASK          0x000000e0u
#define BUZZ_MIN_NEAREST           0 /* GL_NEAREST */
#define BUZZ_MIN_LINEAR            1 /* GL_LINEAR */
#define BUZZ_MIN_NEAREST_MIP_NEAREST 2 /* also GL_NEAREST when the mag
                                          filter is a detail filter */
#define BUZZ_MIN_LINEAR_MIP_NEAREST 3
#define BUZZ_MIN_NEAREST_MIP_LINEAR 4 /* the GL default; object init
                                         writes TEXMODE4 = 0x82 */
#define BUZZ_MIN_LINEAR_MIP_LINEAR 5 /* also GL_LINEAR when the mag
                                        filter is a detail filter */
/* GL_FILTER4_SGIS and the sharpen filters are rejected by the setters
 * with GL_INVALID_ENUM. established: SetMinFilter, SetMagFilter. */
/* Bits 4:1: magnification filter. established: SetMagFilter. */
#define TEXMODE4_MAG_SHIFT         1
#define TEXMODE4_MAG_MASK          0x0000001eu
#define BUZZ_MAG_NEAREST           0 /* GL_NEAREST */
#define BUZZ_MAG_LINEAR            1 /* GL_LINEAR and GL_PHASE_SGIX */
#define BUZZ_MAG_DETAIL            2 /* GL_LINEAR_DETAIL_SGIS */
#define BUZZ_MAG_DETAIL_ALPHA      3 /* GL_LINEAR_DETAIL_ALPHA_SGIS */
#define BUZZ_MAG_DETAIL_COLOR      4 /* GL_LINEAR_DETAIL_COLOR_SGIS */

/* --- TEXMODE5, TEXMODE6: border colour ------------------------------- */
/* Four unsigned 12-bit channels: R in TEXMODE5 23:12, G in 11:0, B in
 * TEXMODE6 23:12, A in 11:0. Conversion is floatTo12: x <= 0 -> 0,
 * otherwise trunc(x * 4096) clamped to 4095 (so 1.0 -> 4095, and the
 * conversion truncates, never rounds). established: floatTo12
 * (0x0d9cfa20) and __glOdyim_TexParameterfv GL_TEXTURE_BORDER_COLOR
 * (lines 4306-4312). */
#define BUZZ_COLOR12_HI_SHIFT      12
#define BUZZ_COLOR12_MASK          0xfffu
/* TEXMODE6 bit 24: complement of TEXMODE4 bit 28. established:
 * SetTexOffsetValues. */
#define TEXMODE6_HAS_OFFSET        0x01000000u

/* --- TEXLOD block (0x13) --------------------------------------------- */
/* All four words are signed fixed point with 8 fraction bits in 14 bits
 * (two's complement, mask 0x3fff): trunc(x * 256) & 0x3fff.
 *   word 0: GL_TEXTURE_LOD_BIAS_S_SGIX, clamped to [-32, 31.99609375]
 *   word 1: GL_TEXTURE_LOD_BIAS_T_SGIX, same clamp
 *   word 2: GL_TEXTURE_MIN_LOD, clamped to [-15, 15]
 *   word 3: min(GL_TEXTURE_MAX_LOD, MAX_LEVEL - BASE_LEVEL), clamped to
 *           [-15, 15]
 * established: floatToS58_Clamp (0x0d9cfa60), TexParameterfv lines
 * 4381-4387 and 4422-4429, __glOdysseyTextureSetMaxLOD (0x0d9d5de0).
 * GL_TEXTURE_LOD_BIAS_R_SGIX is stored in the object only and never
 * reaches a register. established: TexParameterfv line 4434.
 * The LOD the hardware computes and compares against these is therefore
 * carried with at least 8 fraction bits. inferred. */
#define BUZZ_LOD_FRAC_BITS         8
#define BUZZ_LOD_MASK              0x3fffu

/* --- POSTFILTER block (0x30) ----------------------------------------- */
/* GL_POST_TEXTURE_FILTER_SCALE_SGIX / _BIAS_SGIX, interleaved per
 * channel: scale R, bias R, scale G, bias G, scale B, bias B, scale A,
 * bias A. Each is signed 3.12 in 16 bits: clamp to [-8, 7.999755859375],
 * trunc(x * 4096) & 0xffff. Default scale 4096 (1.0), bias 0.
 * established: floatToS312_Clamp (0x0d9cfaa0), TexParameterfv lines
 * 4357-4376, InitTextureObject lines 221-233. */
#define BUZZ_S312_ONE              4096

/* --- TEXENV block (0x1b) --------------------------------------------- */
/* Word 0 bits 2:0: environment mode. established:
 * __glOdysseyTextureSetOp (0x0d9d7ad0). */
#define BUZZ_TEXENV_REPLACE        1 /* GL_REPLACE, GL_REPLACE_EXT */
#define BUZZ_TEXENV_MODULATE       2
#define BUZZ_TEXENV_DECAL          3
#define BUZZ_TEXENV_BLEND          4
#define BUZZ_TEXENV_ADD            5
/* Words 1 and 2: GL_TEXTURE_ENV_COLOR as four unsigned 12-bit channels
 * packed like the border colour (floatTo12). For GL_ADD the driver
 * writes all ones (0xffffff, 0xffffff) instead. established:
 * __glOdysseyTextureSetOp lines 4803-4814. Words 3 and 4: unknown. */

/* --- Detail texture function table ----------------------------------- */
/* 256 entries. Entry i serves LOD -i/32, so the table spans LOD 0 down
 * to -255/32. The driver fills it by linear interpolation between the
 * application's (LOD, weight) points, holding the first point's weight
 * above the highest point and the last point's below the lowest.
 * Bits 23:12 of each entry: weight as unsigned 0.12, trunc(w * 4096),
 * with w clamped to [0, 1] and 1.0 written as 4095. Bits 25 and 27 are
 * cleared on every write; bits 11:0 are preserved (another table shares
 * the entry; unknown). established: __glOdysseyTextureSetDetailTable
 * (0x0d9d8590, constant 0.03125 at _lit8_3fa0000000000000) and
 * SetDetailEntry (0x0d9d84c0). Register id carrying the table: unknown
 * (it is copied with the texture state at line 2492, 256 words). */
#define BUZZ_DETAIL_ENTRIES        256
#define BUZZ_DETAIL_LOD_STEP_DEN   32 /* entry i <-> LOD -i/32 */
#define BUZZ_DETAIL_WEIGHT_SHIFT   12
#define BUZZ_DETAIL_WEIGHT_MASK    0x00fff000u

/* --- Precision not visible in the driver ------------------------------ */
/* Sub-texel position bits, bilinear and trilinear weight widths, and the
 * LOD fraction used to blend mip levels: unknown. No register field the
 * driver writes carries them; the narrowest software-visible quantities
 * are the 8-bit LOD fraction above, the 0.12 detail weight and the
 * 12-bit colour channels. */

/* ===================================================================
 * 3. Texel formats
 * ===================================================================
 * The driver's internal texture format index (0..49). CalcTexelSizes
 * (0x0d9d01d0, jump table jtbl_0dae9514) gives the component widths it
 * reports, and a storage class; ChooseSuitableBuzzTexObjFormat
 * (0x0d9cfdc0) picks the index from the GL internal format.
 * All rows established from those two functions; the class meaning is
 * inferred: 0 = 8- or 16-bit texel, 1 = 32-bit, 2 = 48-bit (it is 0 for
 * every 8/16-bit layout and 2 only for 12/12/12/12).
 *
 *  idx  layout          class  chosen for GL internal format
 *  0,1  A8              0      GL_ALPHA, ALPHA4, ALPHA8 (0)
 *  2,3  I8              0      INTENSITY, INTENSITY4, INTENSITY8 (2)
 *  4,5  L8              0      1, LUMINANCE, LUMINANCE4, LUMINANCE8 (4)
 *  6,7  R3 G3 B2        0      not chosen by this function
 *  8    A12             0      ALPHA12, ALPHA16
 *  9    I12             0      INTENSITY12, INTENSITY16
 *  10   L12             0      LUMINANCE12, LUMINANCE16
 *  11   L8 A8           0      2, LUMINANCE_ALPHA, L4A4, L6A2, L8A8
 *  12   R4 G4 B4 A4     0      R3_G3_B2, RGB4, RGBA2, RGBA4
 *  13   R5 G5 B5 A1     0      RGB5, RGB5_A1
 *  16   L12 A12         1      L12A4, L12A12, L16A16
 *  17   R8 G8 B8 A8     1      3, 4, RGB, RGBA, RGB8, RGBA8
 *  18   R10 G10 B10 A2  1      RGB10, RGB10_A2
 *  32,33 R12 G12 B12 A12 2     RGB12, RGB16, RGBA12, RGBA16 (33)
 *  48   R8 G8 B8 (ICC)  0      GL_R5_G6_B5_ICC_SGIX
 *  49   R8 G8 B8 A8 (ICC) 1    GL_R5_G6_B5_A8_ICC_SGIX
 *  others               -      none (CalcTexelSizes reports zero)
 *
 * Even/odd pairs (0/1, 2/3, 4/5, 6/7, 32/33) share a layout; the
 * difference is unknown. The ICC formats are activated with half the
 * row length of the others (__glOdysseyTextureActivate lines 1897-1904).
 * Whether the index is the hardware's own encoding: unknown.
 */
#define BUZZ_TEXFMT_A8             0
#define BUZZ_TEXFMT_I8             2
#define BUZZ_TEXFMT_L8             4
#define BUZZ_TEXFMT_RGB332         6
#define BUZZ_TEXFMT_A12            8
#define BUZZ_TEXFMT_I12            9
#define BUZZ_TEXFMT_L12            10
#define BUZZ_TEXFMT_LA88           11
#define BUZZ_TEXFMT_RGBA4444       12
#define BUZZ_TEXFMT_RGB5A1         13
#define BUZZ_TEXFMT_LA1212         16
#define BUZZ_TEXFMT_RGBA8888       17
#define BUZZ_TEXFMT_RGB10A2        18
#define BUZZ_TEXFMT_RGBA12         32
#define BUZZ_TEXFMT_ICC_565        48
#define BUZZ_TEXFMT_ICC_565A8      49

/* ===================================================================
 * 4. Colour precision
 * ===================================================================
 * Colour operands in raster state are 12 bits per channel (border,
 * environment and fill colours). When the kernel textport turns an
 * 8-bit colour into one, it widens each channel by repeating its top
 * nibble: c12 = c8 << 4 | c8 >> 4, and alpha 0xfff. established:
 * ODSY_SET_GC (odsy_tport.o), the operands of block 0x21 (0x00010c21).
 */
#define BUZZ_REG_FILLCOLOR         0x021 /* 3 words: unknown (512 from the
                                            textport), RG12, BA12;
                                            established as used */

#endif /* BUZZ_H */
