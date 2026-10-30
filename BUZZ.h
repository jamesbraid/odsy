/*
 * BUZZ.h - VPro (Odyssey) graphics ASIC: command words and texture state
 *
 * Every definition carries a label:
 *   established - read directly from a binary at the cited function/offset
 *   inferred    - a reasoned reading; the reasoning is given
 *   unknown     - not yet derived
 *
 * Release: IRIX 6.5.30m, IP30 (Octane2) install with a V12 board; the
 * IP35 kernel objects (odsy_kernel_ip35/) are cited where they were read.
 * Binaries:
 *   libGLcore_n32.so  usr/gfx/arch/IP30ODSY32/libGLcore.so (N32, DWARF
 *                     names and line numbers only; no types)
 *   odyssey.a         usr/cpu/sysgen/IP30boot/odyssey.a (kernel objects)









 * Diagnostics: odydiags, Internal Support Tools 2.7, its microcode image
 *   usr/diags/ody/ucode/diagxform.bin (ucode/disasm/diagxform.lst)
 * Addresses are the N32 libGLcore virtual addresses printed in the
 * libglcore/asm/ODYSSEY/*.s headers.
 */
#ifndef BUZZ_H
#define BUZZ_H

#include <stdint.h>

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
/*
 * Per-vertex words (pass 2). The immediate-mode entry points in
 * libGLcore emit one fixed word per call, followed by its components:
 *   0x8080c800  Vertex2i/2s       0x8080cc03  Vertex3f/3d
 *   0x8080d005  four floats (clipped-vertex senders)
 *   0xc380c41e  TexCoord1i/1s     0xc380c820  TexCoord2i/2s
 *   0xc580cc08  Color3ub          0xc580c406  Indexi/s/ub
 *   0xc180cc19  three words from the clipped-vertex senders
 * established: __glOdylc_* functions and the CISend / RGBSend senders.
 * inferred structure: bits 31:24 name the attribute (0x80 position,
 * 0xc1, 0xc3 texture coordinate, 0xc5 colour or index), bit 23 and
 * bits 15:14 are set on every such word, bits 13:10 count the
 * components that follow, and bit 0 of the low field separates integer
 * (0) from float (1) forms (0x8080c800/c801, cc02/cc03, d004/d005;
 * 0xc380c41e/c41f, c820/c821 all occur).
 *
 * Pass 4: every lui/ori word of this form in libGLcore was collected
 * (docs/buzz.md section 2 has the table). The low 16 bits read like a
 * class-1 word (count in 13:10, id in 9:0) with bits 15:14 both set; bits
 * 31:24 are 0x80 for position or 0xc0 | slot for the other attributes
 * (inferred: ApplyParameterF/I in ody_attrib.s builds
 * 0xc080d000 | slot << 24 | opcode in a loop). The id numbers a type:
 * 0x00-0x05 Vertex2/3/4 integer then float, 0x06/0x07 Index, 0x08-0x0e
 * Color3 (ub us ui b s i f), 0x0f-0x15 Color4, 0x16-0x19 Normal3
 * (b s i f), 0x1e-0x25 TexCoord1-4 integer then float, 0x2f-0x32 and
 * 0x35-0x38 the clipped-vertex senders (slots 6-9 and 10-13). */
#define BUZZ_ATTR_WORD(slot, count, op) \
    ((((slot) == 0 ? 0x80u : (0xc0u | (slot))) << 24) | 0x00808000u | \
     0x4000u | ((count) << 10) | (op))
#define BUZZ_ATTR_SLOT_POS         0   /* established as values */
#define BUZZ_ATTR_SLOT_NORMAL      1
#define BUZZ_ATTR_SLOT_TEXCOORD    3
#define BUZZ_ATTR_SLOT_COLOR       5

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
 *   0x3b    8    post-filter scale/bias, per channel  0x10000 (see below)
 *   0x3e    3    texture offset words                 0x8000
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
#define BUZZ_REG_POSTFILTER        0x03b /* established, 8 words, pass 3
                                            corrects the id from 0x030 */
#define BUZZ_REG_POSTFILTER_ONE    0x03d /* established, 2 words */
#define BUZZ_REG_POSTFILTER_4SET(k) (0x030 + (k)) /* established, 8 words
                                            each, k < 4, other path */
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
 * 2191-2195 (mask 0x1ffff). Pass 4: the float is 2^n * clamp with
 * n = max(0, level size exponent - base level) and clamp defaulting to
 * 1.0, so the default value is the whole level size, not size - 1; the
 * conversion truncates and the mask wraps, it does not saturate; the old
 * bits 31:17 of the word are kept. docs/buzz.md section 3. */
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
/* Pass 3: the flag tested is object offset 0x57c, which TexImage setup
 * stores from its sixth size argument (level record at 0x554 + 0x44 per
 * level, width at 0x570, height at 0x574, depth at 0x578, 0x57c next).
 * The size code computes width - 2 * [0x57c] and height - 2 * [0x57c]
 * (the per-level size loop in ody_texture.c near line 1740), so 0x57c is
 * the level's border width. inferred (from those formulas, not from a
 * name). So bit 28 is set when level 0 has no border and TEXMODE6 bit 24
 * when it has one. */
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

/* --- TEXOFFSET block (0x3e, class-1 word 0x00010c3e) ---------------------
 * Three words from context offsets 0x8d6c, 0x8d70, 0x8d74, sent when
 * dirty bit 0x8000 is set; they are copies of texture object offsets
 * 0xd0, 0xd4, 0xd8, made by __glOdysseyTextureActivate. The only writer
 * of those object words is SetTexOffsetValues, which zeroes them for any
 * border value, and the default-state routine zeroes the context words.
 * So the driver always sends 0, 0, 0. established (a search of the
 * decompiled N32 texture code for stores to 0xd0-0xd8 finds only that
 * routine; the matches in ody_fft.c are another object). The fields'
 * meaning, and what the hardware does with the TEXMODE4/6 border flag
 * when they are zero: unknown. */

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

/* --- POSTFILTER block (pass 3 correction: 0x3b, not 0x30) ---------------
 * The eight words live in the context at 0x8cec-0x8d08 (scale R, bias R,
 * scale G, ... as below). Which register block they are sent to depends on a mode word
 * at context offset 0x8ce8, tested in __glOdysseyValidateHardware when
 * dirty bit 0x00010000 is set (asm at VA 0x0d968820, compares with 1, 2, 3):
 *   mode 1  four sets of eight words, 0x8cec, 0x8d0c, 0x8d2c, 0x8d4c, to
 *           blocks 0x00012030..0x00012033
 *   mode 2  one set of eight words from 0x8cec to block 0x0001203b
 *   mode 3  two words (0x8cec, 0x8cf0) to block 0x0001083d
 * Mode 2 is what __glOdysseyTextureActivate writes after copying the
 * texture object's words in (the accumulation code also sets it); so the
 * texture post-filter scale and bias go to block 0x3b. Mode 3 is written
 * by the context's default-state routine (ody_context.c, the routine that
 * also zeroes the offset words) together with 0x8cec = 0x1000 and
 * 0x8cf0 = 0: a single scale of 1.0 and bias 0, the identity. Mode 1
 * takes its words from the image-processing state (ody_image_utils.c
 * copies state offsets 0xa0-0xbc and the mode from 0xc0), not from a
 * texture object. established for all three. Why the hardware has three
 * layouts, and whether 0x30-0x33 are four colour channels or four
 * stages: unknown. The texture object's words come from
 * glTexParameter GL_POST_TEXTURE_FILTER_BIAS_SGIX (0x8179) and
 * _SCALE_SGIX (0x817a): four floats each, converted by floatToS312_Clamp,
 * scale R, G, B, A into object offsets 0xdc, 0xe4, 0xec, 0xf4 and bias
 * into 0xe0, 0xe8, 0xf0, 0xf8, which is the interleaved order below, and
 * the setter ORs 0x10000 into the object dirty word. established:
 * __glOdyim_TexParameterfv, the 0x817a and 0x8179 branches.
 *
 */
/* Word format. GL_POST_TEXTURE_FILTER_SCALE_SGIX / _BIAS_SGIX, interleaved per
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
 * SetDetailEntry (0x0d9d84c0).
 * Transport: sixteen class-1 words 0x00013e40 + j (j = 0..15), each
 * followed by 16 entries, i.e. register ids 0x240-0x24f with COUNT 15,
 * sent when context dirty bit 0x00100000 is set. established:
 * __glOdysseyValidateHardware (loops at VA 0x0d9686e0 and 0x0d968780).
 * The detail table's context copy is the 256 words at context offset
 * 0x87e4, filled from texture object offset 0xfc by
 * __glOdysseyTextureActivate (ody_texture.c, the copy loop that ends with
 * the dirty-word merge). established. */
#define BUZZ_REG_DETAIL(j)         (0x240 + (j)) /* established, j < 16 */

/* --- Table uploads 0x200-0x24f (pass 3) -------------------------------
 * __glOdysseyValidateHardware sends five 256-word tables, each as sixteen
 * class-1 words with COUNT 15 followed by 16 operands, taken from the
 * context in memory order. N32 context offsets, dirty bit that gates the
 * upload (the dirty word is context offset 0x16960):
 *
 *   ids          class-1 words   context offset  dirty bit   written by
 *   0x200-0x20f  0x00013e00+i    0x8d7c          0x400000    image paths
 *   0x210-0x21f  0x00013e10+i    0x917c          0x400000    (see below)
 *   0x220-0x22f  0x00013e20+i    0x7fe4          0x040000    not traced
 *   0x230-0x23f  0x00013e30+i    0x83e4          0x080000    nothing found
 *   0x240-0x24f  0x00013e40+i    0x87e4          0x100000    detail table
 *
 * The first two are sent together: for each i the 16 words of 0x200+i are
 * followed by the 16 words of 0x210+i (the code emits 0x00013e00 | i and
 * 0x00013e10 | i), then a settle group with a wait count of 0 (not 250).
 * The three tables from 0x220 up are adjacent in the context: 0x7fe4,
 * 0x83e4, 0x87e4 are 0x400 bytes apart. established: the loop bodies and
 * displacements in ody_context.s at labels .L0d968618, .L0d9686b8,
 * .L0d968758, .L0d968bfc; the dirty-bit tests are dsll32 tests of the
 * dirty word (t1 shifted left by 32 + n tests bit 31 - n).
 *
 * The 0x230-0x23f table: the 0x00080000 bit is not set by any immediate
 * OR into the dirty word in the decompiled N32 libGLcore, the context
 * region 0x83e4-0x87e3 has no store at any displacement the loop uses (a
 * search of every N32 asm file for the displacements -31772..-30749 off
 * the context-plus-0x10000 base finds only the loop itself), and the
 * 64-bit libGLcore carries the same three loops (0x3e20, 0x3e30, 0x3e40
 * at VA 0x31fc95c, 0x31fc9fc, 0x31fca98) with no store at the matching
 * displacement. So libGLcore never sends this table with data of its
 * own. established as a negative search over those binaries only. What
 * the hardware does with ids 0x230-0x23f: unknown. The dirty bit exists
 * and the table sits between the 0x7fe4 table and the detail table, so it
 * may be an unused sibling of the detail table: inferred, weak.
 *
 * Pass 7. The kernel resends the table on a context restore
 * (odsyRestoreRaster, sixteen 0x00013e30 | i words from hardware-shadow
 * offset 0x86c), so the board's context state includes it. The shadow is
 * the libGLcore context from offset 0x7b78 on: every shadow offset the
 * restore reads equals a context offset above minus 0x7b78 (0x46c, 0x86c,
 * 0xc6c, 0x1204 and 0x1604 for the five tables at 0x7fe4, 0x83e4, 0x87e4,
 * 0x8d7c, 0x917c; 0x1170/0x1174 for the post-filter mode and words at
 * 0x8ce8/0x8cec), and libGLcore puts context + 0x7b78 in the argument
 * of its first private ioctl, 0x6f640000 (gfP_OdsyMMattach), in
 * __glOdysseyInitKernel (ody_pmobj.c). established. So the
 * table the board receives is whatever the context holds at 0x83e4, which
 * no libGLcore code writes. Candidate use, inferred and weak: the
 * function table of GL_SGIS_sharpen_texture. It has the same (LOD,
 * weight) shape as the detail function that 0x240-0x24f carries, the
 * texture setters reject the sharpen filters, and libGLcore has an
 * Odyssey entry for glDetailTexFuncSGIS (__glOdyim_DetailTexFuncSGIS)
 * but only the generic ones for glSharpenTexFuncSGIS (__glce_, __gllc_,
 * __glle_), so a sharpen table would have no Odyssey writer. Nothing
 * names the table.
 *
 * The 0x200-0x21f pair are written by the image-processing code
 * (ody_image_api.c copies into context 0x8d7c; ody_image_chain.c at
 * line 2056 builds the same address). What they hold (a lookup table
 * of the image pipeline is the reading): inferred, not read further.
 * Per-id word order is memory order: the loop loads the word at
 * displacement d, then the one at d + 4, and stores them to the FIFO in
 * that order. established. */
#define BUZZ_REG_TABLE_200(i)      (0x200 + (i)) /* established, i < 16 */
#define BUZZ_REG_TABLE_210(i)      (0x210 + (i))
#define BUZZ_REG_TABLE_220(i)      (0x220 + (i))
#define BUZZ_REG_TABLE_230(i)      (0x230 + (i))
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
/* Block 0x021, three words: a control word (512 from the textport, the
 * blend factors when GL writes it: inferred from GL's blend paths), then
 * a constant colour as RG12 and BA12. The textport and the X server's
 * fills use the colour as the drawing colour. established as used. */
#define BUZZ_REG_CONSTCOLOR        0x021

/* ===================================================================
 * 5. FIFO ports, flow control and the textport stream
 * ===================================================================
 * Offsets are from the board's PIO base as the IP30 kernel maps it
 * (the pointer at board-info offset 824 in odyssey.a).
 */

/* Kernel command FIFO port. The kernel writes command and operand words
 * here with 32-bit stores, and in odsyInitCfifo also with 64-bit stores
 * (four doublewords after 0x00010854). established: odsy_tport.o (every
 * routine adds 0x110000 to the base), odsyInitCfifo (odsy_init.o).
 * How a 64-bit store splits into two words: inferred high word first,
 * from big-endian order; unknown on the board. */
#define ODSY_CFIFO_PORT            0x110000
/* User mappings. gf_OdsyMapGfx (odsy_map.o) maps board windows into a
 * client in 16 KB pages, offsets relative to the client's mapping base:
 *   +0x00000  board+0x100000  1 page   (mode 0)
 *   +0x04000  board+0x120000  1 page   (mode 2)
 * and only when bit 0x20 of the gfx structure's word 4 is set:
 *   +0x08000  board+0x000000  2 pages  (mode 2)
 *   +0x10000  board+0x110000  1 page   (mode 0)   the command FIFO port
 *   +0x14000  board+0x118000  1 page   (mode 2)
 *   +0x18000  board+0x200000  1 page   (mode 2)
 *   +0x1c000  board+0x220000  8 pages  (mode 2)
 *   +0x3c000  board+0x400000  1 page   (mode 2)   the display FIFO port
 * established: the v_mapkvsegment arguments. inferred: libGLcore's
 * stores to virtual 0x10000 reach board+0x110000, the same command FIFO
 * port the kernel uses, with the mapping placed at virtual 0; the mode
 * argument (0 for both FIFO-style windows at 0x100000 and 0x110000, 2
 * elsewhere) is the cache attribute, unknown which. */

/* Display FIFO port: 64-bit stores only, one per update (layout in
 * DISPLAY.h). established: gf_OdsySetDisplayMode (odsy_retrace.o),
 * odsy_mapcolor (odsy_tport.o): base + 0x400000, sd. */
#define ODSY_DFIFO_PORT            0x400000

/* COUNT encoding: a class-1 word with COUNT 15 is followed by 16
 * operands. established: odsy_drawbitmap sends 0x00013c4e and
 * 0x00013c4f each followed by 16 words (offsets 0..60 and 64..124 of
 * its bitmap buffer). COUNT 1..7 are followed by exactly COUNT words
 * (section 1). Whether COUNT 8..14 also mean themselves: unknown. */

/* --- Ordering of posted writes ---------------------------------------
 * The kernel textport (ODSY_SET_GC) issues a MIPS sync after every FIFO
 * store; odsy_sboxfi, odsy_pnt2i and odsy_drawbitmap do not, and bracket
 * the whole primitive with wbflush calls under the textport spinlock.
 * libGLcore issues no barrier between user FIFO stores.
 * established: odsy_tport.o, __glOdysseyValidateHardware.
 * inferred: the board accepts words in store order and needs no per-word
 * fence; the syncs in ODSY_SET_GC are the driver's choice, not a
 * protocol requirement (the other textport routines omit them). */

/* --- Command FIFO initialisation: odsyInitCfifo (odsy_init.o) ---------
 * established, in the order the stores reach the FIFO port (board PIO
 * base + 0x110000):
 *   1. 0x00010854, 0, 0x0fffffff   class-1 block 0x054, COUNT 2, with two












 *      binaries read here; the operands look like the bounds of a range
 *   2. five doubleword stores (high word first is inferred, big-endian):
 *        0x000006b0_00000000  0x000006b1_00000100  0x000006b3_00005e50
 *        0x000006b2_00007dc0  0x000007b5_00000001
 *      (.lit8 offsets 0x30-0x48 of odsy_init.o, and 107 << 36 for the
 *      first). established as values and order. What the block numbers



 *      the values exactly:






 *      the values only: 0x100 = 256, 0x7dc0 = 32192 = 32768 - 576, and



 *                checked)

 *      configure is unknown from the binaries read here. Arithmetic on



 *      blocks back. These are the only stores to those register ids in any
 *      kernel object: every .lit8, .data and .rodata of odyssey.a, gfx.o
 *      and rrm.o was searched for the pairs, and the disassembly for
 *      immediate loads of 0x6b0-0x6b3 and 0x7b5. The 0x6b8 pair found in
 *      odsy_init.o .data lies inside the buzz_ucode array, not a store.
 *   3. 0x00010046                  pad word, then a 2000 us delay.
 *   4. A read of board + 0x201594 must return 0x003d0046. established as
 *      the comparison; what the register is: unknown. inferred: an
 *      identification or ready word of the board, because the microcode
 *      load below is skipped when it differs (the routine then drops
 *      flow control and returns 1, an error).
 *   5. Microcode load, only when step 4 matched: header words 0x2e008380,
 *      0x2600807f, 0x27008000, then 12288 words. Each word takes one
 *      16-bit value h from the buzz_ucode array (odsy_init.o .data offset
 *      0x7d0, 27196 bytes; the loop reads the first 24576) and emits
 *      0x40008000 | (h & 0x3ff) | ((h >> 10) << 23). The values are
 *      taken in groups of six in reverse order (h[5] first, h[0] last,
 *      then h[11]..h[6], and so on, 2048 groups). established. The
 *      array is not buzz_xform.bin: that image goes through
 *      odsyDownloadUcode (odsy_ucode.o), a separate path, though the
 *      array is an older build of the same program. The header words set
 *      sequencer registers 0x2e and 0x26 and the write address (0x27);
 *      format and meaning in ucode/buzz_isa.md.
 *   6. 0x000007f0_3b9aca00         one more doubleword (value 10^9), the
 *                                  last FIFO store of the routine.

 *      unknown from the binaries read here (a hardware-sync timeout is




 * After that flow control is attached (HEART credit tnum written into
 * the flow configuration register, flow-off register written 0).
 *
 * Water marks: unknown. Which of 0x6b2 and 0x6b3 is the high mark and


 * read here. The CFIFO_HW and CFIFO_LW status bits (0x1064) and flags




 * compare against these registers is inferred from their names only.
 *
 * The host side has its own, fixed threshold. odsyHiwaterInterrupt
 * compares the HEART credit count for this board against
 * gfx_flow_credit_bias_get, and the IP30 kernel returns the constant
 * 552 (/unix, the function is `li v0,552`). The count is the HEART
 * per-widget credit register shifted left by 3 (gfx_flow_credit_count_get
 * reads the doubleword at 0xaff00060 + 8 * tnum and shifts it left by 3;
 * gfx_flow_credit_total_get is the table word at +24, also shifted
 * left by 3). So the 552 and the board marks are different quantities;
 * 552 is not derived from them in any code read. established.
 *
 * IP35 (6.5.30, odsy_kernel_ip35/): odsyInitCfifo stores the same five
 * doublewords with the same values, so the water marks do not depend on
 * the host; the board-side flow registers are the same too. The host-side
 * credit source differs: IP35 has no HEART access and its bias is 544
 * (a record field), not 552. Details and the register offsets IP35
 * programs are in docs/buzz.md section 1. established. */

/* --- The settle sequence ----------------------------------------------
 * After every textport primitive and at the start of a hardware
 * validation that follows a context change, the drivers send:
 *     0x00010443, N, 0x00010046, 0x00010046     N = 250
 *     0x00010019
 *     0x00010443, 150, 0x00010046 x4
 *     0x00010443, 250, 0x00010046, 0x00010046
 * (the first group twice when kernel flag word 7036 is set).
 * established: odsy_sboxfi, odsy_pnt2i, odsy_drawbitmap, ODSY_SET_GC;
 * the 250-and-two form alone in __glOdysseyValidateHardware.
 * Register 0x043 takes one operand (a count: 150 or 250); 0x046 and
 * 0x019 take none.
 * Pass 2: __glOdysseyFlush (0x0d9d97a0) is exactly the full sequence
 * above, and __glOdysseyFinish starts with it twice. libGLcore sets a
 * context flag (context + 0x10000 - 26576) after each primitive's end
 * word and, before the next register block, sends the short form
 * (0x043 with 250, two 0x046) and clears the flag; a second flag
 * (-26892) makes glClear send it at once. established: ody_clear.c,
 * ody_prim.c, ody_unixcontext.c.
 * inferred: 0x043 + count is a wait that lets the primitive in flight
 * drain before later state lands, 0x046 is a no-op filler and 0x019 is
 * a pipeline flush (it appears only in flush, finish, buffer swap,
 * draw-buffer and make-current changes, pipe-memory object opens, pixel
 * copies and the kernel textport). */
#define BUZZ_REG_WAIT              0x043 /* 1 operand. inferred wait */
#define BUZZ_REG_PAD               0x046 /* 0 operands. inferred no-op */
#define BUZZ_REG_FLUSH             0x019 /* 0 operands. inferred flush */

/* --- Textport primitives --------------------------------------------
 * Filled rectangle (odsy_sboxfi) and point (odsy_pnt2i):
 *     0x00014400, 7                begin, primitive 7 (quads, as GL)
 *     0x8080c800, x, y             per vertex, y counted from the top:
 *                                  y_hw = height - y + 1 (+2 for the
 *                                  far edge of a box)
 *     0x00014001                   end
 * odsy_pnt2i sends primitive 0 with one vertex. established.
 * Glyph (odsy_drawbitmap): 0x0001043f, 6, then 0x00013c4e + 16 words and
 * 0x00013c4f + 16 words of bitmap rows, then a quad as above.
 * established. Colour (ODSY_SET_GC): 0x00010c21 with the textport colour
 * widened to 12 bits a channel (section 4); 0x00010404 + one word of
 * raster mode; 0x00010424 + one word. established. */

/* --- DMA kick: odsy_DmaRegion_DoTransfer and odsyDMAOp (odsy_dma.o) ---
 * Pass 3. A host-memory transfer is started with two doubleword stores to
 * the command FIFO port, high word first (inferred, as for the other
 * doubleword writes):
 *     word A: 0x00000e01 or 0x00000e03 (high), PACK(phys >> 24) (low)
 *     word B: PACK(phys & 0xffffff) (high), 0 (low)
 *     PACK(x) = (x & 0x1ffff) | ((x & 0xfe0000) << 6)
 * so each 24-bit half of the physical address is split after bit 16 and
 * the upper seven bits sit six places higher (bits 29:23 of the word).
 * Anything of phys >> 24 above 24 bits is dropped, so the board takes a
 * 48-bit physical address. The id is 0xe03 when the caller's flag 4 is
 * set (odsy_DmaRegion_DoTransfer) or when a per-transfer flag word is
 * nonzero (odsyDMAOp), else 0xe01. established (docs/kernel.md, MMxfr):
 * every driver transfer, read or write, uses 0xe01; the direction is bit
 * 24 of entry word 7, set by gfP_OdsyMMxfr for reads. Only the diagnostic
 * ioctl reaches 0xe03; what it selects on the board: unknown. The id 0xe01 is above the
 * class-1 REG field (10 bits), so the doubleword form has a wider
 * register space than the class-1 words, which also carries 0x6b0-0x6b3
 * and 0x7b5. established: arithmetic of both routines.
 *
 * odsyDMAOp, in order (established unless marked):
 *   - locks the user buffer (useracc; unuseracc on the way out), builds a page list with
 *     generatePageTable and a work list with ConstructTftchWarList, and
 *     allocates a context-set id (OdsyAllocCSetId);
 *   - writes 0x800 (the DMA_DONE_FLAG bit) to the flags-clear register
 *     0x101c before the first kick (board record offset 5844 holds a
 *     7-bit transfer counter that it increments);
 *   - kicks each 128-byte table entry's physical address (the entries
 *     are at the work list pointer plus 128 per index) with the pair
 *     above;
 *   - then, when bit 27 of the word at offset 28 of the transfer
 *     structure is set, sends 0x00014001 (primitive end), the whole settle
 *     sequence (0x443/250, 0x46 x2, 0x019, 0x443/150, 0x46 x4, 0x443/250,
 *     0x46 x2), and, if a completion tag is wanted, the class-1 word
 *     0x00010a5a with two operands: a record word (offset 5840) ORed with
 *     0x8000, and a tag of the form 0x5a00 | an 8-bit value.
 *     inferred: block 0x5a marks the end of the transfer and returns the
 *     tag through DMA_DONE_FLAG; not confirmed.
 *   - odsyDmaInterrupt (the DMA interrupt vector, separate from the flags
 *     vector) calls odsyDMAIrptWakeup; odsySsyncInterrupt calls
 *     odsyDMAWakeup. The flags handler also logs DMA_DONE_FLAG and
 *     DMA_CMD_OFLO (a fatal flag). What each wake-up tests: not read.
 *
 * Page list format from generatePageTable (odsy_DmaRegion_BuildXlatTbl
 * allocates pages * 8 + 40 bytes, pages = ceil(length / 16384), zeroed):
 * a 32-byte header copied from the region record, then 8-byte entries.
 * Each entry is two 32-bit words: word 0 = the physical address >> 16,
 * word 1 = (physical address & 0xffff) << 16 | a 16-bit byte count. The
 * walk consumes the buffer through alenlist chunks of up to 16384 bytes
 * and treats the region as rows (a 16-bit row count at record offset +12
 * bits 31:16, a 20-bit row length in bytes at +24, a stride at +20), so
 * the table describes a two-dimensional transfer. The word-1 count's
 * exact unit and the row semantics are inferred from the loop shape and
 * not confirmed; the header's contents are unknown. */

/* --- Board registers used for flow control --------------------------- */
/* flags (printed as "odsy flags: %R" by odsyPrintRegs with this bit
 * table) and status0 ("odsy status0: %R"). Names, masks and widths
 * established from the register-description tables in odsy_init.o
 * .data (offset 0x0 and 0x460); the register offsets from
 * odsyPrintRegs, which loads base+0x1014 and base+0x1064. */
#define ODSY_REG_FLAGS             0x1014
#define   FLAGS_GEN_LOCK_INTR            (1u << 31)
#define   FLAGS_CLOCK_STOPPED_INTR       (1u << 30)
#define   FLAGS_READ_DURING_DIAG_ERR     (1u << 29)
#define   FLAGS_PUSH_CMD_ERROR           (1u << 28)
#define   FLAGS_GFX_OFLOW_INTR           (1u << 27)
#define   FLAGS_CFIFO_HW_FLAG            (1u << 25)
#define   FLAGS_DBE_OFLOW_INTR           (1u << 24)
#define   FLAGS_XFORM_DFIFO_OFLOW_INTR   (1u << 23)
#define   FLAGS_XFORM_IFIFO_INTR         (1u << 22)
#define   FLAGS_XFORM_UCODE_OFLOW_INTR   (1u << 21)
#define   FLAGS_XFORM_PTABLE_OFLOW_INTR  (1u << 20)
#define   FLAGS_GFX_XTALK_STALL          (1u << 18)
#define   FLAGS_HOST_FLAG_INTR           (0xfu << 14) /* 4-bit field */
#define   FLAGS_PRIV_VIOLATE_GFX         (1u << 13)
#define   FLAGS_CTXSW_DONE               (1u << 12)
#define   FLAGS_DMA_DONE_FLAG            (1u << 11)
#define   FLAGS_DMA_CMD_OFLO_INTR        (1u << 10)
#define   FLAGS_CFIFO_LW_FLAG            (1u << 9)
#define   FLAGS_ILLEGAL_OUT_FORMAT       (1u << 8)
#define   FLAGS_MULTGET_INTR             (1u << 7)
#define   FLAGS_CORRECTABLE_ECC_ERROR    (1u << 4)
#define   FLAGS_MLT_CORRECTABLE_ECC_ERROR (1u << 3)
#define   FLAGS_UNCORRECTABLE_ECC_ERROR  (1u << 2)
#define   FLAGS_SYNC_TIMEOUT_FLAG        (1u << 1)
#define   FLAGS_HEURISTIC_OVERFLOW       (1u << 0)
#define ODSY_REG_STATUS0           0x1064
#define   STATUS0_CFIFO_ENABLED          (1u << 28)
#define   STATUS0_SHIFT_DONE             (1u << 27)
#define   STATUS0_ONE_SHIFT_DONE         (1u << 26)
#define   STATUS0_SCAN_DONE              (1u << 25)
#define   STATUS0_CLK_DISABLED           (1u << 24)
#define   STATUS0_XFORM_ACTV             (1u << 23)
#define   STATUS0_CTXSW_ACTV             (1u << 22)
#define   STATUS0_DMA_DONE               (1u << 21)
#define   STATUS0_COPY_DONE              (1u << 20)
#define   STATUS0_CFIFO_LW               (1u << 17) /* below low water */
#define   STATUS0_CFIFO_MT               (1u << 16) /* empty */
#define   STATUS0_CFIFO_HW               (1u << 15) /* above high water */
#define   STATUS0_XRFIFO_LW              (1u << 14)
#define   STATUS0_XRFIFO_HW              (1u << 13)
#define   STATUS0_RASTER_SYNC_SRC        (3u << 11) /* 2-bit field */
#define   STATUS0_CFIFO_SYNC_SRC         (3u << 9)  /* 2-bit field */
#define   STATUS0_DMA_SYNC_SRC           (3u << 7)  /* 2-bit field */
#define   STATUS0_GFX_REG_RD_ACTV        (1u << 4)
#define   STATUS0_SYNC_PUSH_ACTV         (1u << 3)
#define   STATUS0_PERF_STATS_PUSH_ACTV   (1u << 2)
#define   STATUS0_DIAG_HIST_PUSH_ACTV    (1u << 0)
/* The three *_SYNC_SRC fields share one value-name table (odsy_init.o
 * .data 0x410): 0 and 1 "unset", 2 SRC_DMA, 3 SRC_PIX_PIPE. established. */

/* FIFO levels. Bits 6:0: display FIFO level; odsy_poll_dfifo_level
 * waits (5 us steps, at most 10000) until it is <= its argument: 15
 * before a display-mode write, 12 inside the swap path, 0 before a
 * colour-map write. Bits 15:7: inferred command FIFO level, 9 bits;
 * odsy_tpinit waits for it to read zero before resetting the FIFO.
 * established: odsy_flow.o, odsy_retrace.o, odsy_tport.o. */
#define ODSY_REG_FIFO_LEVELS       0x106c
#define   LEVELS_DFIFO_MASK              0x7fu
#define   LEVELS_CFIFO_SHIFT             7
#define   LEVELS_CFIFO_MASK              0x1ffu
/* Flow-control setup. Bits 16:12 take the HEART flow-control credit
 * target number (gfx_flow_credit_tnum_get) when the kernel attaches the
 * board to flow control; the other bits keep a driver copy (board-info
 * 0x10000-31292). established: odsyInitCfifo. odsy_tpinit writes 0. */
#define ODSY_REG_FLOW_CFG          0x1074
#define   FLOW_CFG_TNUM_SHIFT            12
#define   FLOW_CFG_TNUM_MASK             0x1f000u
/* Written 0 when the kernel attaches flow control, 1 when it detaches
 * or before the textport reinitialises. established: odsyInitCfifo,
 * odsy_tpinit. inferred: 1 disables credit flow control. */
#define ODSY_REG_FLOW_OFF          0x107c
/* odsy_tpinit pulses this 0, 1, 0 before odsyInitCfifo. established.
 * inferred: command FIFO reset. */
#define ODSY_REG_CFIFO_RESET       0x1084
/* Low-water interrupt handling, all writes of 0x200 (the CFIFO_LW_FLAG
 * bit). odsyHiwaterInterrupt, after HEART reports credits below its
 * bias: write 0x101c; if STATUS0_CFIFO_LW is already set write 0x1014
 * (the flags register itself); then write 0x1034.
 * odsyLowaterInterrupt: write 0x103c. established.
 * inferred: 0x101c clears the flag, 0x1034 enables and 0x103c disables
 * the low-water interrupt, and a write to 0x1014 sets flag bits. The
 * driver waits 10 polls of 1 us for credits to recover before it parks
 * the writer, then a 1500-tick timeout ends in odsyFifoTimeout
 * ("CFIFO timeout"). The high- and low-water marks themselves are never
 * written through these registers; see the 0x6b0-0x6b3 candidates in
 * the command FIFO section. */
#define ODSY_REG_FLAGS_CLR         0x101c /* inferred */
#define ODSY_REG_INTR_ENABLE       0x1034 /* inferred */
#define ODSY_REG_INTR_DISABLE      0x103c /* inferred */

/* --- Flags interrupt handler: odsyFlagInterrupt (odsy_intr.o) ---------
 * established. The handler reads flags (0x1014) and the register at
 * 0x1034, and works on pending = flags & [0x1034]. It is therefore an
 * interrupt-enable mask, upgrading the earlier inferred label; the same
 * routine's last step writes `pending` to 0x101c (the clear register).
 * 0x103c is written 0x200 by odsyLowaterInterrupt, and 0x1034 is written
 * 0x200 by odsyHiwaterInterrupt; both stay inferred as set and clear
 * forms of the one enable. Bit actions, in the order tested:
 *   bit 9  CFIFO_LW_FLAG        odsyLowaterInterrupt (wake the writer)
 *   bit 31 GEN_LOCK_INTR        odsyGenlockInterrupt (re-programs the
 *                               display PLL over I2C, see DISPLAY.h)
 *   bits 30, 29, 28, 27, 25, 24, 23, 22, 21, 20, 18, 17:14, 13, 11, 10,
 *   8, 7, 4, 2, 1, 0: log a message that names the bit
 *   (CLOCK_STOPPED, READ_DURING_DIAG_ERROR, PUSH_CMD_ERROR,
 *   GFX_OFLOW, CFIFO HW, DBE_OFLOW, DFIFO_OFLOW, XFORM_IFIFO_OFLOW,
 *   XFORM_UCODE_OFLOW, XFORM_PTABLE_OFLOW, GFX_XTALK_STALL, HOST_FLAG,
 *   PRIV_VIOLATE_GFX, DMA_DONE_FLAG, DMA_CMD_OFLO, ILLEGAL_OUT_FORMAT,
 *   MULTGET, CORRECTABLE_ECC (bit 4, the text adds a running count and
 *   "single" or "multiple" by bit 3), UNCORRECTABLE_ECC, SYNC_TIMEOUT,
 *   HEURISTIC_OVERFLOW). Bit 12 CTXSW_DONE and bit 26 are not tested.
 * Then, if the raw flags (before the enable mask) intersect
 * 0x39f02587, the handler calls odsy_teardown (the board is shut down);
 * otherwise it clears the pending bits. The teardown set is bits 29,
 * 28, 27, 24-20, 13, 10, 8, 7, 2, 1, 0: every logged bit except the two
 * ECC-correctable bits, CLOCK_STOPPED, XTALK_STALL, HOST_FLAG, DMA_DONE
 * and CFIFO HW. Note the test uses the raw flags: a set flag that is not
 * enabled still tears the board down when any other interrupt arrives.
 * established as code; the practical reading is inferred.
 *
 * Initial enable mask. odsyInitInterrupts builds the value in a record
 * shadow and stores it to 0x1034 with a chain of read-modify-writes:
 * clear bit 31; set 30, 29, 28, 27; clear 25; set 24, 23, 22, 21 and 18;
 * clear 17:14 (mask 0xfffc3fff); set 13; clear 12 and 11; set 10; clear 9;
 * set 8, 7, 4, 3, 2, 1; clear 0. Bits 26, 20, 19, 6, 5 are never touched.
 * established. If the shadow starts at zero (inferred: the record is
 * cleared by odsyZeroOut, not re-checked here) the final mask is
 * 0x79e4259e. Bit 9 is added later by the high-water path.
 * So at start-up GEN_LOCK (31), CFIFO_HW (25), the host flags (17:14),
 * DMA_DONE (11), CFIFO_LW (9) and HEURISTIC_OVERFLOW (0) are masked
 * off, and PTABLE_OFLOW (20) stays masked although it is in the
 * teardown set. */

/* --- Crossbar error interrupt: odsyXtErrorInterrupt (odsy_intr.o) -----
 * A second interrupt source, separate from the flags register. It reads
 * the word at board + 0x0c and tests three bits, then reads +0x44 (error
 * header), +0x1c, +0x14. established as loads and messages:
 *   bit 8  "Response Time-out Error"
 *   bit 7  "Address Error": prints 0 as the high address, +0x1c as the
 *          low address, +0x44 as the header and +0x14 & 0xffff0000 as
 *          the high error, calls odsyPrintRegs, then logs "xt.error: %R"
 *          with a 480-byte bit-description table copied to the stack
 *          (the table's contents were not read). It is the only case
 *          that calls odsy_teardown
 *   bit 6  "Packet Format Error"
 *   none   "unknown xt interrupt"
 * The handler then writes 0 to +0x44 (clears the header). For the two
 * non-address cases it also prints "Fatal widget error (header=...)".
 * Register names (a crossbar widget's error and header words): inferred
 * from the message text only. Bits 8, 7, 6 in the order tested are
 * established; whether any other bit of +0x0c matters: unknown. */

/* --- Context save and switch (odsy_ctxsw.o), pass 4 -------------------
 * established: gf_OdsyPcxSwap, gfP_OdsySaveHwShadow (IP30; IP35 not
 * diffed). A context is saved by one doubleword store to board +
 * 0x118000: (7 << 40) | (slot << 16) | 1, slot 7 bits, where slot is
 * the incoming context's (pass 5) and 127 means none (the constant
 * 0x00000700_007f0001, a save without a switch). The driver zeroes the
 * word at +2300 of the outgoing context's record first and waits up to
 * 1500 ticks for it to become nonzero; no driver code writes it, so the
 * writer is inferred to be the board. The incoming context's record
 * address is announced at board + 0x4004 (bits 47:32) and + 0x400c
 * (bits 31:0) after the save, so inferred the board saves into the
 * record announced when the context was switched in. Switching a context
 * in sends class-1 block 0x050 with operands ((slot << 12) & 0x7f000) |
 * x | 0xf and 0, then 0x00014400 (operand 0), 0x00014001 and two class-0
 * writes (id 0x340 = 0x1ed, id 0x341 = 0). Details, the saved record's
 * vertex ring and the restore routines: docs/buzz.md section 4. */
#define BUZZ_CTX_SAVE_OFFSET       0x118000u /* established */
#define BUZZ_CTX_SAVE_WORD(slot)   ((7ull << 40) | ((uint64_t)(slot) << 16) | 1)
#define BUZZ_CTX_SLOT_NONE         127       /* established */
#define BUZZ_CTX_SAVE_ADDR_HI      0x4004u   /* established, 16 bits */
#define BUZZ_CTX_SAVE_ADDR_LO      0x400cu   /* established, 32 bits */
#define BUZZ_REG_CTX_SELECT        0x050     /* established, 2 words */

/* Class-0 words: bits 31:16 zero, COUNT in 13:10, id in 9:0, followed by
 * COUNT operands, like class 1 without bit 16. established as values:
 * 0x740 + 0x1ed and 0x741 + 0 (gf_OdsyPcxSwap), 0x4c0 + n with one
 * operand (__glOdyGetFromHardware, n < 4). The field split is inferred
 * from the operand counts matching COUNT = 1. */
#define BUZZ_CMD0(reg, count)      (((count) << 10) | (reg))
/* Block 0x5a: two operands, a host location and a 16-bit tag. inferred:
 * the board writes the tag to that location (libGLcore polls a mapped
 * halfword for it; docs/buzz.md section 4). */
#define BUZZ_REG_TAG_WRITEBACK     0x05a

/* --- Reset, memory and strap registers (pass 6) ----------------------
 * docs/kernel.md, docs/board.md. established as stores and loads in
 * odsyReset and odsyGatherInfo; names inferred. */
#define ODSY_REG_MEMCFG            0x1004 /* banks bit 2, CAS latency bit 1,
                                           * size bits 4:3, master id bits
                                           * 22:19, bit 5 init pulse, bit 8 */
#define ODSY_REG_RESET             0x100c /* 0x200 or 0x16d, then 0 */
#define ODSY_REG_STRAP             0x106c /* bits 31:24 board config strap
                                           * (same register as FIFO_LEVELS) */
#define ODSY_REG_REVISION          0x0004 /* bits 31:28 BUZZ revision type */

#endif /* BUZZ_H */
