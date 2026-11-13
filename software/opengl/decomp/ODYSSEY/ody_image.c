s32 __glOdysseyCreatePMObj(void *, void *, s32, s32, ?, s64); /* extern */
s64 __glOdysseyImageChainCreate(void *, void *, s32, s64); /* extern */
s32 __glOdysseyImageChainFree(void *, void *, void *, u8, u8, u8, u8); /* extern */
? __glOdysseyImageLoadBuzzRasterState(?);           /* extern */
? __glOdysseyImageSaveUserBuzzRasterState();        /* extern */
void *__glOdysseyImageTilingCreate(s32, s64, s64);  /* extern */
? __glOdysseyImageTilingFree(void *);               /* extern */
? __glOdysseyInitLUTs(s32, s32, s32, s32 *, s32, s32, ?, ?, ?, s64); /* extern */
s32 __glOdysseyStoreLUT(?);                         /* extern */
? __glOdysseyUpdateRasterPos(void *, ?, s32, u8, s32, ?); /* extern */
? __glSetError(?);                                  /* extern */
f64 ceil(f64, s32, s32, s32, void *, void *, ?, void *, f64, ?); /* extern */

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c], gap at: 0x38. */
s32 __glOdysseyImageInit(void) {
    s64 sp80;
    f64 temp_f0;
    f64 temp_f0_2;
    s32 *temp_a3_5;
    s32 *temp_t2;
    s32 *temp_t2_2;
    s32 *temp_t2_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a5_2;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s2_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a5;
    s64 temp_f13;
    void *temp_a4_2;
    void *temp_a5;
    void *temp_a7;
    void *temp_s2;
    void *temp_s3;
    void *var_s0;
    void *var_s0_2;
    void *var_s0_3;
    void *var_s1;
    void *var_s1_2;

    temp_s2 = *(void **)0x1010;
    temp_s3 = temp_s2 + 0x10000;
    var_a5 = (0xFFFF0000 & temp_s2->unk11D7C) | 0x1000;
    temp_s2->unk11CC4 = (s32) ((temp_s2->unk11CC4 & ~7) | 1);
    temp_s2->unk11D84 = 2;
    temp_s2->unk11D60 = 2;
    temp_s2->unk11D7C = var_a5;
    temp_s2->unk11D74 = (s32) ((0xFFFF0000 & temp_s2->unk11D74) | 0x1000);
    temp_s2->unk11D6C = (s32) ((0xFFFF0000 & temp_s2->unk11D6C) | 0x1000);
    temp_s2->unk11CE8 = (s32) ((((temp_s2->unk11CE8 & ~0x03800000) | 0x03000000) & ~0x700000) | 0x600000 | 0x40000);
    temp_s2->unk11D64 = (s32) ((0xFFFF0000 & temp_s2->unk11D64) | 0x1000);
    temp_s2->unk11E1C = 0x200;
    temp_s2->unk11D04 = (s32) ((((temp_s2->unk11D04 & ~0xC) | 8) & ~3) | 2);
    temp_s2->unk11D94 = (s32) (temp_s2->unk11D94 | 0xFFF | 0xFF000 | 0x100000 | 0x200000 | 0x400000 | 0x800000 | 0x01000000);
    temp_s2->unk11E20 = 7.999756f;
    temp_s2->unk11D1C = (s32) (temp_s2->unk11D1C | 1);
    temp_s2->unk11D0C = (s32) ((0xFFFF1FFF & ((temp_s2->unk11D0C & ~0xC00) | 0x400)) | 0x2000);
    temp_s2->unk11CFC = (s32) ((0xFFFF1FFF & ((((((temp_s2->unk11CFC & ~0x70) | 0x50) & ~0x380) | 0x100) & ~0x1C00) | 0x800)) | 0x4000 | 0x08000000);
    temp_s2->unk11E18 = 0x40;
    temp_s2->unk11E14 = 0x8356;
    temp_s2->unk11E10 = 0x8356;
    unksp50 = (s64) (temp_s2 + 0x18 + 0x10000);
    var_s1 = temp_s2 + 0xA6F4;
    var_s0 = temp_s3;
loop_1:
    var_s0->unk-5904 = 0;
    var_s0->unk-5908 = 0;
    var_s0->unk-590C = -1;
    var_a5 = (s32) unksp50;
    if (__glOdysseyCreatePMObj(temp_s2, sp, (s32) var_s1, 0, -1, (s64) var_a5) == 0) {
        temp_s2->unkA6F0 = 0;
        /* Duplicate return node #3. Try simplifying control flow for better match */
        return 0;
    }
    var_s0 += 0xC;
    var_s1 += 0xC;
    if (var_s0 == var_a5) {
        var_s0_2 = temp_s3;
loop_6:
        temp_a3 = temp_s2->unk11E1C;
        temp_a2 = temp_s2->unk11E18;
        temp_v0 = temp_s2->unk0(temp_s2, temp_a2 * temp_a3 * 0x10, temp_a2, temp_a3);
        var_s0_2->unk-58F4 = temp_v0;
        if (temp_v0 == 0) {
            temp_s2->unkA6F0 = 0;
            __glSetError(0x505);
            return 0;
        }
        var_s0_2 += 4;
        if (var_s0_2 == (temp_s2 + 8 + 0x10000)) {
            unksp48 = (s64) (temp_s2 + 0x24 + 0x10000);
            var_s0_3 = temp_s3;
            var_s1_2 = temp_s2 + 0xA714;
loop_10:
            var_s0_3->unk-58E4 = 0;
            var_s0_3->unk-58E8 = 0;
            var_s0_3->unk-58EC = -1;
            if (__glOdysseyCreatePMObj(temp_s2, sp, (s32) var_s1_2, 0) == 0) {
                temp_s2->unkA6F0 = 0;
                return 0;
            }
            var_s0_3 += 0xC;
            var_s1_2 += 0xC;
            if (var_s0_3 == unksp48) {
                temp_a3_2 = temp_s2->unk11E1C;
                temp_a2_2 = temp_s2->unk11E18;
                temp_v0_2 = __glOdysseyCreatePMObj(temp_s2, (void *) (temp_a2_2 * temp_a3_2 * 0x10), temp_a2_2, temp_a3_2);
                temp_s2->unkA738 = temp_v0_2;
                if (temp_v0_2 != 0) {
                    temp_a4 = temp_s2->unk11E1C;
                    temp_s2->unk119EF = 1;
                    temp_s2->unk119E4 = 1;
                    temp_s2->unk119E8 = 0;
                    temp_s2->unk11A1C = 1;
                    sp80 = (s64) temp_v0_2;
                    temp_s2->unk11A08 = (s32) temp_s2->unk11E18;
                    temp_s2->unk11A04 = temp_a4;
                    temp_f0 = ceil((f64) ((f32) ((u64) ((s64) temp_a4 << 0x20) >> 0x20) * 0.0625f), second half of f64);
                    temp_s2->unk11A14 = 0;
                    temp_s2->unk11A10 = 2;
                    temp_s2->unk11A0C = 2;
                    temp_s2->unk11A18 = 0xC;
                    temp_a2_3 = temp_s2->unkA718;
                    temp_a1 = temp_s2->unkA714;
                    temp_a3_3 = temp_s2->unkA71C;
                    unksp30 = (s64) temp_a3_3;
                    temp_s2->unk119FC = temp_a3_3;
                    unksp40 = (s64) temp_a1;
                    temp_s2->unk119F4 = temp_a1;
                    unksp38 = (s64) temp_a2_3;
                    temp_s2->unk119F8 = temp_a2_3;
                    var_a0 = 4;
                    temp_s2->unk11A20 = (s32) temp_s2->unk119E4;
                    var_a2 = 0xE;
                    temp_s2->unk11A00 = (s32) (s64) temp_f0;
                    do {
                        var_a2 -= 2;
                        *(var_a0 + (temp_s2 + 0x11A20)) = *(var_a0 + (temp_s2 + 0x119E4));
                        temp_t2 = var_a0 + (temp_s2 + 0x11A24);
                        temp_t1 = *(var_a0 + (temp_s2 + 0x119E8));
                        var_a0 += 8;
                        *temp_t2 = temp_t1;
                    } while (var_a2 > 0);
                    temp_s2_2 = temp_s2->unkA720;
                    temp_s0 = temp_s2->unkA724;
                    temp_s1 = temp_s2->unkA728;
                    temp_a3_4 = (s32) temp_s2->unk119E4;
                    temp_a4_2 = temp_s2 + 0x119E8;
                    temp_s2->unk11A5C = temp_a3_4;
                    temp_a5 = temp_s2 + 0x11A60;
                    temp_s2->unk11A38 = temp_s1;
                    temp_a7 = temp_s2 + 0x11A5C;
                    temp_s2->unk11A34 = temp_s0;
                    var_a2_2 = 4;
                    var_a0_2 = 0xE;
                    temp_s2->unk11A30 = temp_s2_2;
                    do {
                        var_a0_2 -= 2;
                        *(var_a2_2 + temp_a7) = *(var_a2_2 + (temp_s2 + 0x119E4));
                        temp_t2_2 = var_a2_2 + temp_a5;
                        temp_t1_2 = *(var_a2_2 + temp_a4_2);
                        var_a2_2 += 8;
                        *temp_t2_2 = temp_t1_2;
                    } while (var_a0_2 > 0);
                    temp_s2->unk11AA3 = 1;
                    temp_ra = temp_s2->unk11E1C;
                    temp_s2->unk11A98 = 1;
                    temp_s2->unk11A9C = 0;
                    temp_s2->unk11AD0 = 1;
                    temp_s2->unk11ABC = (s32) temp_s2->unk11E18;
                    temp_s2->unk11A74 = (s32) temp_s2->unkA734;
                    temp_s2->unk11A70 = (s32) temp_s2->unkA730;
                    temp_s2->unk11A6C = (s32) temp_s2->unkA72C;
                    temp_s2->unk11AB8 = temp_ra;
                    temp_f0_2 = ceil((bitwise f64) var_a0_2, temp_a1, var_a2_2, temp_a3_4, temp_a4_2, temp_a5, 8, temp_a7, (f64) ((f32) ((u64) ((s64) temp_ra << 0x20) >> 0x20) * 0.0625f), second half of f64);
                    temp_s2->unk11AC4 = 2;
                    temp_s2->unk11AC0 = 2;
                    temp_s2->unk11AC8 = 0;
                    temp_s2->unk11ACC = 0xC;
                    temp_s2->unk11AAC = (s32) unksp38;
                    temp_s2->unk11AA8 = (s32) unksp40;
                    temp_s2->unk11AB0 = (s32) unksp30;
                    temp_f13 = (s64) temp_f0_2;
                    var_a0_3 = 4;
                    var_a2_3 = 0xE;
                    temp_s2->unk11AD4 = (s32) temp_s2->unk11A98;
                    temp_s2->unk11AB4 = (s32) temp_f13;
                    do {
                        var_a2_3 -= 2;
                        *(var_a0_3 + (temp_s2 + 0x11AD4)) = *(var_a0_3 + (temp_s2 + 0x11A98));
                        temp_t2_3 = var_a0_3 + (temp_s2 + 0x11AD8);
                        temp_t1_3 = *(var_a0_3 + (temp_s2 + 0x11A9C));
                        var_a0_3 += 8;
                        *temp_t2_3 = temp_t1_3;
                    } while (var_a2_3 > 0);
                    temp_s2->unk11AEC = temp_s1;
                    temp_s2->unk11AE8 = temp_s0;
                    temp_s2->unk11AE4 = temp_s2_2;
                    var_a0_4 = 4;
                    var_a2_4 = 0xE;
                    temp_s2->unk11B10 = (s32) temp_s2->unk11A98;
                    do {
                        var_a2_4 -= 2;
                        *(var_a0_4 + (temp_s2 + 0x11B10)) = *(var_a0_4 + (temp_s2 + 0x11A98));
                        temp_a3_5 = var_a0_4 + (temp_s2 + 0x11B14);
                        temp_a1_2 = *(var_a0_4 + (temp_s2 + 0x11A9C));
                        var_a0_4 += 8;
                        *temp_a3_5 = temp_a1_2;
                    } while (var_a2_4 > 0);
                    temp_s2->unk11B78 = (s32) sp80;
                    temp_s2->unk11B64 = 1;
                    temp_s2->unk11B58 = 0x1403;
                    temp_s2->unk11B54 = 0x1908;
                    temp_s2->unk11B4C = 1;
                    temp_s2->unk11B50 = 0;
                    temp_s2->unk11B84 = 0;
                    temp_s2->unk11B28 = temp_s1;
                    temp_s2->unk11B24 = temp_s0;
                    temp_s2->unk11B20 = temp_s2_2;
                    temp_a4_3 = temp_s2->unk11E1C;
                    temp_a5_2 = temp_s2->unk11E18;
                    temp_s2->unk11B60 = temp_a5_2;
                    temp_s2->unk11B5C = temp_a4_3;
                    __glOdysseyInitLUTs(var_a0_4, temp_a1_2, var_a2_4, temp_a3_5, temp_a4_3, temp_a5_2, 1, 0x1908, second half of f64, temp_f13);
                    if (__glOdysseyStoreLUT(9) != 0) {
                        temp_s2->unkA6F0 = 0;
                        return 0;
                    }
                    temp_s2->unkA6F0 = 1;
                    return 1;
                }
                temp_s2->unkA6F0 = 0;
                __glSetError(0x505);
                return 0;
            }
            goto loop_10;
        }
        goto loop_6;
    }
    goto loop_1;
}

s32 __glOdysseyImageClose(void) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    temp_s1->unkA704 = 0;
    temp_s1->unkA700 = -1;
    temp_s1->unkA6F8 = 0;
    temp_s1->unkA6F4 = -1;
    temp_a1 = temp_s1->unkA70C;
    if (temp_a1 != 0) {
        temp_s1->unkC(temp_s1, temp_a1);
    }
    temp_a1_2 = temp_s1->unkA710;
    if (temp_a1_2 != 0) {
        temp_s1->unkC(temp_s1, temp_a1_2);
    }
    temp_s1->unkA730 = 0;
    temp_s1->unkA72C = -1;
    temp_s1->unkA724 = 0;
    temp_s1->unkA720 = -1;
    temp_s1->unkA718 = 0;
    temp_s1->unkA714 = -1;
    temp_a1_3 = temp_s1->unkA738;
    if (temp_a1_3 != 0) {
        temp_s1->unkC(temp_s1, temp_a1_3);
    }
    temp_s1->unkA6F0 = 0;
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94], gap at: 0x60. */
void __glOdysseyImageXfer(void *arg0, void *arg1, s32 arg2, s64 arg3, s64 arg4) {
    s64 sp30;
    s64 sp28;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_lo;
    s32 var_s1;
    s32 var_s3;
    s64 temp_v0_2;
    u8 temp_a5;
    u8 var_a2;
    void *temp_s2;
    void *temp_v0;
    void *temp_v0_3;
    void *var_s0;

    sp30 = arg4;
    sp28 = arg3;
    temp_v0 = *(void **)0x1010;
    if (temp_v0->unkA73C == 1) {
        temp_a4 = arg0->unk38;
        if (temp_a4 != 0) {
            temp_a5 = arg0->unkA;
            if ((temp_a5 == 0) && ((temp_a6 = temp_v0->unk700 & 0x40030000, (temp_a6 != 0)) || ((arg1->unk8 == 0x1902) && (temp_v0->unk760 != 0) && (temp_v0->unk75C != 0)))) {
                __glOdysseyUpdateRasterPos(temp_v0, 0x170000, temp_a4, temp_a5, temp_a6, 0x40030000);
            }
        }
    }
    __glOdysseyImageSaveUserBuzzRasterState();
    __glOdysseyImageLoadBuzzRasterState(0);
    temp_v0_2 = __glOdysseyImageChainCreate(arg0, arg1, arg2, sp28);
    unksp58 = temp_v0_2;
    if (temp_v0_2 != 0) {
        temp_v0_3 = __glOdysseyImageTilingCreate(arg2, unksp58, sp30);
        if (temp_v0_3 != NULL) {
            temp_lo = temp_v0_3->unk0 * temp_v0_3->unk4;
            if (temp_lo != 0) {
                var_s1 = 0;
loop_7:
                temp_s2 = temp_v0_3->unk8 + var_s1;
                if ((temp_s2->unk44 == 0) && (var_s0 = unksp58->unk4, var_s3 = 0, (var_s0 != NULL))) {
loop_17:
                    if (*var_s0->unk44 != 0) {

                    }
                    var_a2 = *var_s0->unk48;
                    if (var_a2 != 0) {
                        var_a2 = (u8) (temp_s2 + 0x14);
                        if ((var_s3 == 0) && (var_s0->unk0 != 8)) {

                        } else {
                            var_a2 = (u8) (temp_s2 + 0x24);
                        }
                    }
                    if (__glOdysseyImageChainFree(var_s0, sp, (void *) var_a2, temp_s2->unk0, temp_s2->unk1, temp_s2->unk2, temp_s2->unk3) & 0xFF) {
                        temp_a2 = var_s0->unk0;
                        if (temp_a2 != 8) {
                            if (temp_a2 == 0xE) {
                                temp_s2->unk20 = (f32) ((f64) temp_s2->unk20 * 0.5);
                            }
                        } else {
                            var_s3 = 1;
                        }
                        var_s0 = var_s0->unk4C;
                        if (var_s0 != NULL) {
                            goto loop_17;
                        }
                        goto block_6;
                    }
                    __glSetError(0x505);
                    __glOdysseyImageChainFree((void *) unksp58);
                    __glOdysseyImageTilingFree(temp_v0_3);
                    __glOdysseyImageLoadBuzzRasterState(1);
                } else {
block_6:
                    var_s1 += 0x48;
                    if (var_s1 != (temp_lo * 0x48)) {
                        goto loop_7;
                    }
                    goto block_27;
                }
            } else {
block_27:
                __glOdysseyImageChainFree((void *) unksp58);
                __glOdysseyImageTilingFree(temp_v0_3);
                __glOdysseyImageLoadBuzzRasterState(1);
            }
        } else {
            __glOdysseyImageChainFree((void *) unksp58);
            __glOdysseyImageLoadBuzzRasterState(1);
        }
    } else {
        __glOdysseyImageLoadBuzzRasterState(1);
    }
}

/*
Decompilation failure in function __glOdysseyImageCalcFieldFormat:

Unable to determine jump table for jr instruction at ody_image.s line 1175.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyImageDescribeWindow:

Unable to determine jump table for jr instruction at ody_image.s line 1378.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/
