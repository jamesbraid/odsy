/*
 * glcore_odsy.h - OpenGL driver structures in the IP30 Odyssey libGLcore
 *
 * Source: IRIX 6.5.30m usr/gfx/arch/IP30ODSY32/libGLcore.so (N32). Its
 * DWARF carries function and variable names and line numbers but no
 * types, so every layout here is recovered from loads and stores in the
 * named functions. Labels: established (read from the cited function),
 * inferred, unknown. Hardware meaning of the shadow words is in BUZZ.h.
 */
#ifndef GLCORE_ODSY_H
#define GLCORE_ODSY_H

#include <stdint.h>

/*
 * Texture object, as touched by ody_texture.c. Offsets in bytes.
 * Only fields with an established use are named; the gaps are unknown.
 */
#define TEXOBJ_TARGET          12   /* GL target (0x806f = 3D). established:
                                       SetRWrap, ValidateTexture */
#define TEXOBJ_DIRTY_STATE     16   /* 2 = needs validation. established:
                                       SetMinFilter, SetMaxClamp */
#define TEXOBJ_MIN_FILTER      20   /* GL enum. established: SetMinFilter */
#define TEXOBJ_MAG_FILTER      24   /* GL enum. established: SetMagFilter */
#define TEXOBJ_WRAP_S          28   /* GL enum. established: SetSWrap */
#define TEXOBJ_WRAP_T          32   /* established: SetTWrap */
#define TEXOBJ_WRAP_R_REQ      36   /* as requested. established: SetRWrap */
#define TEXOBJ_WRAP_R          40   /* REPEAT unless 3D. established */
#define TEXOBJ_DETAIL_LEVEL    64   /* established: SetDetailLevel */
#define TEXOBJ_DETAIL_MODE     68   /* established: SetDetailMode */
#define TEXOBJ_MAX_CLAMP_S     72   /* float. established: TexParameterfv */
#define TEXOBJ_MAX_CLAMP_T     76   /* float */
#define TEXOBJ_MAX_CLAMP_R     80   /* float */
#define TEXOBJ_MIN_LOD         84   /* float. established */
#define TEXOBJ_MAX_LOD         88   /* float, default 1000. established */
#define TEXOBJ_BASE_LEVEL      92   /* int. established */
#define TEXOBJ_MAX_LEVEL       96   /* int, default 1000. established:
                                       InitTextureObject line 185 */
#define TEXOBJ_LOD_BIAS_S      100  /* float. established */
#define TEXOBJ_LOD_BIAS_T      104  /* float. established */
#define TEXOBJ_LOD_BIAS_R      108  /* float, never sent. established */
#define TEXOBJ_PF_BIAS         112  /* float[4]. established */
#define TEXOBJ_PF_SCALE        128  /* float[4]. established */
#define TEXOBJ_LOG2_S          144  /* int. established: ValidateTexture */
#define TEXOBJ_LOG2_T          148  /* int */
#define TEXOBJ_LOG2_R          152  /* int */
#define TEXOBJ_HWDIRTY         160  /* bits ORed into the context's dirty
                                       word at validation, then cleared.
                                       established: ValidateTextureState
                                       line 2494 */
#define TEXOBJ_HW_TEXMODE      164  /* uint32[7]: register block 0x16 */
#define TEXOBJ_HW_LOD          192  /* uint32[4]: register block 0x13 */
#define TEXOBJ_HW_TEXOFFSET    208  /* uint32[3]: register block 0x3e */
#define TEXOBJ_HW_POSTFILTER   220  /* uint32[8]: register block 0x30,
                                       scale/bias interleaved */
#define TEXOBJ_HW_DETAIL       252  /* uint32[256]: detail function table.
                                       established: InitTextureObject
                                       (bzero 1024 bytes) */
#define TEXOBJ_LEVELS          1388 /* per-level records, 68 bytes each:
                                       +0 internal format, +4 width,
                                       +8 height, +12 depth, +16 border.
                                       inferred from ValidateTexture's
                                       mip-chain completeness check */
#define TEXOBJ_LEVEL_STRIDE    68

/*
 * Context: the texture register blocks are mirrored in the context
 * before emission. Offsets from the context base; 0x10000 + n written
 * as such where the code addresses them from base + 0x10000.
 * established: __glOdysseyValidateTextureState, __glOdysseyValidateHardware.
 */
#define GC_HW_TEXENV           31920      /* uint32[5]: block 0x1b */
#define GC_HW_TEXMODE          31940      /* uint32[7]: block 0x16 */
#define GC_HW_TEXLEVEL         31968      /* uint32[3] x 64: blocks 0x280+i */
#define GC_HW_DIRTY            (0x10000 + 26976) /* dirty word tested by
                                                    ValidateHardware */
#define GC_HW_TEXLOD           (0x10000 - 26844) /* uint32[4]: block 0x13 */
#define GC_HW_TEXOFFSET        (0x10000 - 29332) /* uint32[3]: block 0x3e */
#define GC_HW_POSTFILTER       (0x10000 - 29460) /* uint32[8]: block 0x30 */

/*
 * User command FIFO: the context stores every command and operand word
 * to address 0x10000 (a fixed user mapping) with plain 32-bit stores
 * and no barrier between them. established: __glOdysseyValidateHardware
 * (lui $a2,0x1; sw ...,0($a2)).
 */
#define ODSY_USER_FIFO_VADDR   0x10000u

#endif /* GLCORE_ODSY_H */
