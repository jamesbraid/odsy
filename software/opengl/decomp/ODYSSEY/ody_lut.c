s32 __glOdysseyCreatePMObj(s32, void *, s32, ?, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
? memset(s32, ?, ?);                                /* extern */

void __glOdysseyInitLUTs(void) {
    s64 sp28;
    s32 temp_s2;
    s32 temp_t9;
    s32 var_s0;
    s64 var_s1;

    temp_s2 = *(s32 *)0x1010;
    memset(temp_s2 + 0xA740, 0, 0x507C);
    var_s0 = temp_s2 + 0xA744;
    var_s1 = temp_s2 + 0x10000;
    sp28 = var_s1;
loop_1:
    var_s1->unk-50B8 = 1;
    var_s1->unk-50B4 = 6;
    var_s1->unk-58BC = -1;
    temp_t9 = __glOdysseyCreatePMObj(temp_s2, sp, var_s0, 0, 6, 8, 0, 0, 0, 0x100, 0x10, 1, 0, 0) & 0xFF;
    var_s0 += 0x80C;
    var_s1 += 0x80C;
    if (temp_t9 != 0) {
        if (var_s1 == (temp_s2 + 0x5078 + 0x10000)) {
            sp28->unk-58C0 = 1;
            return;
        }
        goto loop_1;
    }
}

/*
Decompilation failure in function __glOdysseyStoreLUT:

Unable to determine jump table for jr instruction at ody_lut.s line 179.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

u64 ResizeLUTData(void *arg0, s32 arg1) {
    u64 sp10;
    f64 var_f8;
    f64 var_f8_2;
    f64 var_f9;
    f64 var_f9_2;
    s16 temp_v1;
    s16 var_at;
    s32 *temp_a4;
    s32 *temp_a4_2;
    s32 temp_a1;
    s32 temp_a5_3;
    s32 temp_t0;
    s32 temp_t8;
    s32 var_a5;
    s32 var_t0;
    s32 var_t9;
    s64 temp_f15;
    u16 var_a1;
    u32 temp_a1_2;
    u32 temp_a5_4;
    u32 temp_a5_5;
    u32 temp_a5_6;
    u32 temp_t1;
    u32 temp_t1_2;
    u32 var_a3_3;
    u32 var_a4;
    u32 var_a4_3;
    u32 var_a7;
    u32 var_a7_2;
    u32 var_a7_3;
    u64 temp_a5;
    u64 temp_a5_2;
    u64 var_a4_2;
    void **var_t8;
    void **var_t8_2;
    void *temp_a3;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_t2;
    void *var_a0;
    void *var_a3;
    void *var_a3_2;
    void *var_a3_4;
    void *var_a3_5;
    void *var_a3_6;
    void *var_a6;
    void *var_t1;

    var_a0 = arg0;
    temp_a3 = *(void **)0x1010;
    switch (arg1) {                                 /* switch 1; irregular */
    default:                                        /* switch 1 */
        var_a6 = temp_a3 + 0x1718;
        switch (arg1) {                             /* switch 2; irregular */
        default:                                    /* switch 2 */
            return 0U;
        case 8:                                     /* switch 2 */
            /* fallthrough */
        case 9:                                     /* switch 2 */
            temp_a5 = (arg1 != 8) ? 0x1000U : 0x100U;
            var_a4 = temp_a5 >> 1;
            sp10 = temp_a5;
            if (var_a4 != 0) {
                var_a3 = var_a0;
                var_a1 = 1;
                do {
                    var_a3->unk0 = var_a1;
                    var_a3->unk2 = var_a1;
                    var_a3->unk4 = var_a1;
                    var_a3->unk6 = var_a1;
                    var_a1 += 2;
                    var_a3 += 8;
                } while (var_a1 < (u32) ((var_a4 * 2) + 1));
            }
            var_a0->unk0 = 0;
            var_a0->unk2 = 0;
            var_a0->unk4 = 0;
            var_a0->unk6 = 0;
            if (var_a4 < temp_a5) {
                var_a3_2 = var_a0 + (var_a4 * 8);
                do {
                    var_a3_2 += 8;
                    var_a3_2->unk-8 = 0;
                    var_a4 += 1;
                    var_a3_2->unk-6 = 0;
                    var_a3_2->unk-4 = 0;
                    var_a3_2->unk-2 = 0;
                } while (var_a4 < temp_a5);
            }
            return sp10;
        case 2:                                     /* switch 2 */
        case 3:                                     /* switch 2 */
            var_a6 = temp_a3 + 0x1718;
            if (arg1 != 1) {
                if (arg1 != 2) {
                    var_a6 = ((arg1 ^ 3) == 0) ? (temp_a3 + 0x1678) : NULL;
                } else {
                    var_a6 = temp_a3 + 0x15D8;
                }
            }
            /* fallthrough */
        case 1:                                     /* switch 2 */
block_44:
            temp_t8 = var_a6->unkC;
            temp_a5_2 = (temp_t8 >= 0x101) ? 0x1000U : 0x100U;
            var_a3_3 = temp_t8 * var_a6->unk4C;
            sp10 = temp_a5_2;
            var_f9 = (f64) ((u64) (temp_a5_2 << 0x20) >> 0x20) / (f64) temp_t8;
            if (var_a3_3 != 0) {
                var_a7 = 0;
                var_f8 = 0.0;
                var_a4_2 = 0;
loop_48:
                var_f8 += var_f9;
                var_f9 = second half of f64;
                temp_t1 = (s64) (var_f8 + 0.5) << 0;
                if (var_a4_2 < temp_t1) {
                    temp_a5_3 = var_a7 * 4;
                    var_a3_4 = (var_a4_2 * 8) + var_a0;
loop_55:
                    temp_a1 = var_a6->unk48;
                    var_a4_2 += 1;
                    if (temp_a1 != 0x8049) {
                        if (temp_a1 != 0x1909) {
                            if (temp_a1 != 0x1906) {
                                if (temp_a1 != 0x190A) {
                                    if (temp_a1 == 0x1907) {
                                        var_a3_4->unk0 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                                        var_a3_4->unk2 = (s16) ((s32) ((f64) (4095.0f * (var_a6->unk4 + temp_a5_3)->unk4) + 0.5) & 0xFFF);
                                        var_a3_4->unk6 = (s16) ((s32) M2C_ERROR(/* unknown instruction: madd.d $f16, $f4, $f6, $f7 */) & 0xFFF);
                                        var_a3_4->unk4 = (s16) ((s32) ((f64) (4095.0f * (var_a6->unk4 + temp_a5_3)->unk8) + 0.5) & 0xFFF);
                                        goto block_54;
                                    }
                                    if (temp_a1 == 0x1908) {
                                        var_a3_4->unk0 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                                        var_a3_4->unk2 = (s16) ((s32) ((f64) (4095.0f * (var_a6->unk4 + temp_a5_3)->unk4) + 0.5) & 0xFFF);
                                        var_a3_4->unk4 = (s16) ((s32) ((f64) (4095.0f * (var_a6->unk4 + temp_a5_3)->unk8) + 0.5) & 0xFFF);
                                        var_at = (s32) ((f64) (4095.0f * (var_a6->unk4 + temp_a5_3)->unkC) + 0.5) & 0xFFF;
                                        goto block_53;
                                    }
                                    return 0x500U;
                                }
                                var_a3_4->unk0 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                                var_a3_4->unk2 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                                var_a3_4->unk4 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                                var_a3_4->unk6 = (s16) ((s32) ((f64) (4095.0f * (var_a6->unk4 + temp_a5_3)->unk4) + 0.5) & 0xFFF);
                                goto block_54;
                            }
                            temp_v1 = (s32) M2C_ERROR(/* unknown instruction: madd.d $f0, $f4, $f6, $f7 */) & 0xFFF;
                            var_a3_4->unk4 = temp_v1;
                            var_a3_4->unk2 = temp_v1;
                            var_a3_4->unk0 = temp_v1;
                            var_at = (s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF;
                            goto block_53;
                        }
                        var_a3_4->unk0 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                        var_a3_4->unk2 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                        var_a3_4->unk6 = (s16) ((s32) M2C_ERROR(/* unknown instruction: madd.d $f27, $f4, $f6, $f7 */) & 0xFFF);
                        var_a3_4->unk4 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                        goto block_54;
                    }
                    var_a3_4->unk0 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                    var_a3_4->unk2 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                    var_a3_4->unk4 = (s16) ((s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF);
                    var_at = (s32) ((f64) (4095.0f * *(var_a6->unk4 + temp_a5_3)) + 0.5) & 0xFFF;
block_53:
                    var_a3_4->unk6 = var_at;
block_54:
                    var_a3_4 += 8;
                    if (temp_t1 != var_a4_2) {
                        goto loop_55;
                    }
                    var_a3_3 = var_a6->unkC * var_a6->unk4C;
                    goto block_47;
                }
block_47:
                var_a7 += var_a6->unk4C;
                if (var_a7 < var_a3_3) {
                    goto loop_48;
                }
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return sp10;
            }
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return sp10;
        }
        break;
    case 7:                                         /* switch 1 */
        if (temp_a3->unk448 < 0x101) {
            if ((temp_a3->unk454 < 0x101) && (temp_a3->unk460 < 0x101) && (temp_a3->unk46C < 0x101)) {
                sp10 = 0x100;
            } else {
                goto block_26;
            }
        } else {
block_26:
            sp10 = 0x1000;
        }
        var_t9 = 0;
        var_t8 = sp;
loop_29:
        temp_a6 = *var_t8;
        temp_a1_2 = temp_a6->unk0;
        var_f9_2 = (f64) ((u64) (sp10 << 0x20) >> 0x20) / (f64) temp_a1_2;
        if (temp_a1_2 != 0) {
            var_a5 = 0;
            var_a4_3 = 0;
            var_f8_2 = 0.0;
            var_a7_2 = 0;
loop_38:
            var_a7_2 += 1;
            var_f8_2 += var_f9_2;
            var_f9_2 = second half of f64;
            temp_f15 = (s64) (var_f8_2 + 0.5);
            temp_t1_2 = temp_f15 << 0;
            temp_t0 = temp_t1_2 - var_a4_3;
            if (var_a4_3 < temp_t1_2) {
                var_t0 = temp_t0 & 3;
                var_a3_5 = var_a0 + ((var_t9 + (var_a4_3 * 4)) * 2);
                if (var_t0 == 0) {

                } else {
                    do {
                        var_t0 -= 1;
                        var_a3_5 += 8;
                        var_a4_3 += 1;
                        var_a3_5->unk-8 = (s16) ((s32) ((f64) (4095.0f * *(temp_a6->unk8 + var_a5)) + 0.5) & 0xFFF);
                    } while (var_t0 != 0);
                }
                if ((temp_t0 >> 2) != 0) {
                    do {
                        var_a3_5->unk0 = (s16) ((s32) ((f64) (4095.0f * *(temp_a6->unk8 + var_a5)) + 0.5) & 0xFFF);
                        var_a3_5->unk8 = (s16) ((s32) ((f64) (4095.0f * *(temp_a6->unk8 + var_a5)) + 0.5) & 0xFFF);
                        var_a3_5->unk10 = (s16) ((s32) ((f64) (4095.0f * *(temp_a6->unk8 + var_a5)) + 0.5) & 0xFFF);
                        var_a3_5 += 0x20;
                        var_a4_3 += 4;
                        var_a3_5->unk-8 = (s16) ((s32) ((f64) (4095.0f * *(temp_a6->unk8 + var_a5)) + 0.5) & 0xFFF);
                    } while (var_a3_5 != (var_a0 + ((var_t9 + (temp_f15 * 4)) * 2)));
                }
            }
            var_a5 += 4;
            if (var_a7_2 < temp_a6->unk0) {
                goto loop_38;
            }
        }
        var_t8 += 4;
        var_t9 += 1;
        if (var_t8 != &sp10) {
            goto loop_29;
        }
        /* Duplicate return node #11. Try simplifying control flow for better match */
        return sp10;
    case 6:                                         /* switch 1 */
block_68:
        temp_t2 = var_a0 + 8;
        var_t8_2 = sp;
        var_t1 = var_a0 + 0x8000;
loop_70:
        var_a3_6 = var_a0;
        temp_a6_2 = *var_t8_2;
        var_a7_3 = 0;
loop_76:
        temp_a5_4 = (var_a7_3 >= (u32) temp_a6_2->unk0) ? 0U : var_a7_3;
        temp_a5_5 = temp_a5_4 + 1;
        temp_a4 = (temp_a5_4 * 4) + temp_a6_2->unk8;
        if (arg1 == 6) {
            var_a3_6->unk0 = (s16) ((s32) ((f64) (4095.0f * (bitwise f32) *temp_a4) + 0.5) & 0xFFF);
        } else {
            var_a3_6->unk0 = (s16) (*temp_a4 & 0xFFF);
        }
        temp_a5_6 = (temp_a5_5 >= (u32) temp_a6_2->unk0) ? 0U : temp_a5_5;
        temp_a4_2 = (temp_a5_6 * 4) + temp_a6_2->unk8;
        if (arg1 != 6) {
            var_a3_6->unk8 = (s16) (*temp_a4_2 & 0xFFF);
        } else {
            var_a3_6->unk8 = (s16) ((s32) ((f64) (4095.0f * (bitwise f32) *temp_a4_2) + 0.5) & 0xFFF);
        }
        var_a3_6 += 0x10;
        var_a7_3 = temp_a5_6 + 1;
        if (var_a3_6 != var_t1) {
            goto loop_76;
        }
        var_a0 += 2;
        var_t8_2 += 4;
        var_t1 += 2;
        if (var_a0 != temp_t2) {
            goto loop_70;
        }
        sp10 = 0x1000;
        /* Duplicate return node #11. Try simplifying control flow for better match */
        return sp10;
    case 4:                                         /* switch 1 */
        goto block_68;
    case 0:                                         /* switch 1 */
        var_a6 = temp_a3 + 0x1538;
        goto block_44;
    }
}
