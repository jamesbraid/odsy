? __glClampColorf(void *, void *, f32 *, s32, ?, s32); /* extern */
f32 __glOdysseyProgramFFTFilter(f32 *, f32 *, f32 *, f32 *, f32 *, f32 *, f32 *, f32 *); /* extern */
? __glOdysseyUpdateTransform();                     /* extern */
f32 *__glSetError(void *, f32 *, f32 *, s32, s32, s32, s32, s32); /* extern */
f32 ceilf(f32, ?);                                  /* extern */
f64 expf(s32, f32, f64, f32, f32, f64, f64, f64, f64); /* extern */
f32 logf(f32, f32, ?);                              /* extern */
? sub_0d980000(void *, f32 *);                      /* extern */

void CubicBezierFitConstant(void *arg0, void *arg1) {
    arg1->unkC = 0.0f;
    arg1->unk8 = 0.0f;
    arg1->unk4 = 0.0f;
    arg1->unk0 = (f32) arg0->unk4;
}

void CubicBezierFitLinear(void *arg0, void *arg1) {
    f32 temp_f1;

    temp_f1 = arg0->unk4;
    arg1->unkC = 0.0f;
    arg1->unk8 = 0.0f;
    arg1->unk0 = temp_f1;
    arg1->unk4 = (f32) (arg0->unkC - temp_f1);
}

f32 Phi(s32 arg0, f32 fparg1) {
    switch (arg0) {                                 /* irregular */
    default:
        return 0.0f;
    case 3:
        return (f32) ((second half of f64) * ((second half of f64) + (second half of f64)) * (second half of f64));
    case 0:
        return 1.0f;
    case 1:
        return (f32) ((f64) fparg1 + (second half of f64));
    case 2:
        return (f32) ((second half of f64) * ((second half of f64) + -0.6666666666666666));
    }
}

f32 Det3(f32 fparg1, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7, f32 arg_sp0) {
    M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f15, $f3 */);
    M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f16, $f3 */);
    M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f15, $f19 */);
    M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f12, $f2 */);
    return M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f14, $f1 */);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x68, 0x6c, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c], gap at: 0x70. */
void CubicBezierFitQuadratic(s32 arg0, s32 arg1, s64 arg2) {
    s64 spD8;
    f64 sp60;
    ? sp2C;
    f32 *sp20;
    ? sp1C;
    f32 *sp10;
    f32 *sp0;
    f32 **var_s4;
    f32 **var_s4_2;
    f32 **var_s5;
    f32 **var_s5_2;
    f32 *var_s3;
    f32 temp_f10;
    f32 temp_f20;
    f32 temp_f8;
    s32 var_s7;

    var_s4 = &sp20;
    var_s5 = &sp10;
    do {
        *var_s5 = NULL;
        var_s4->unk8 = 0.0f;
        var_s4->unk4 = 0.0f;
        var_s5 += 4;
        var_s4->unk0 = NULL;
        var_s4 += 0x10;
    } while (var_s5 != &sp1C);
    spD8 = arg2;
    if (arg0 > 0) {
        var_s7 = 0;
        var_s3 = NULL;
        do {
            var_s4_2 = &sp20;
            var_s5_2 = &sp10;
loop_5:
            __glOdysseyProgramFFTFilter(var_s3);
            *var_s5_2 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f1, $f2, $f0 */);
            __glOdysseyProgramFFTFilter(var_s3);
            __glOdysseyProgramFFTFilter(NULL);
            var_s4_2->unk0 = M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f20, $f0 */);
            if (1 != 3) {
                __glOdysseyProgramFFTFilter(var_s3);
                __glOdysseyProgramFFTFilter((f32 *)1);
                var_s4_2->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f20, $f0 */);
                if (2 != 3) {
                    __glOdysseyProgramFFTFilter(var_s3);
                    __glOdysseyProgramFFTFilter((f32 *)2);
                    var_s4_2->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f20, $f0 */);
                }
            }
            var_s3 += 1;
            var_s5_2 += 4;
            var_s4_2 += 0x10;
            if (var_s3 != (f32 *)3) {
                goto loop_5;
            }
            var_s7 += 1;
            var_s3 = NULL;
        } while (arg0 != var_s7);
    }
    sp0 = sp48;
    temp_f20 = __glOdysseyProgramFFTFilter(sp20, sp24, sp28, sp30, sp34, sp38, sp40, sp44);
    sp0 = sp48;
    temp_f8 = __glOdysseyProgramFFTFilter(sp10, sp24, sp28, sp14, sp34, sp38, sp18, sp44) / temp_f20;
    sp0 = sp48;
    unksp70 = (bitwise f64) temp_f8;
    temp_f10 = __glOdysseyProgramFFTFilter(sp20, sp10, sp28, sp30, sp14, sp38, sp40, sp18) / temp_f20;
    sp0 = sp18;
    sp60 = (bitwise f64) temp_f10;
    __glOdysseyProgramFFTFilter(sp20, sp24, sp10, sp30, sp34, sp14, sp40, sp44);
    M2C_ERROR(/* unknown instruction: nmsub.d $f12, $f12, $f13, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f15, $f16 */);
    spD8->unkC = 0.0f;
    spD8->unk8 = (f32) (second half of f64);
    spD8->unk4 = (f32) ((second half of f64) - (f64) (second half of f64));
    spD8->unk0 = (f32) (second half of f64);
}

f32 Det4(f32 fparg1, f32 fparg5, f32 fparg6, f32 arg_sp0, f32 arg_sp8, f32 arg_sp10, f32 arg_sp18, f32 arg_sp20, f32 arg_sp28, f32 arg_sp30, f32 arg_sp38) {
    M2C_ERROR(/* unknown instruction: nmsub.s $f11, $f11, $f5, $f21 */);
    M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f5, $f10, $f3 */);
    M2C_ERROR(/* unknown instruction: nmsub.s $f2, $f2, $f21, $f7 */);
    M2C_ERROR(/* unknown instruction: nmsub.s $f6, $f6, $f21, $f3 */);
    M2C_ERROR(/* unknown instruction: nmsub.s $f3, $f3, $f7, $f8 */);
    M2C_ERROR(/* unknown instruction: nmsub.s $f1, $f1, $f10, $f7 */);
    M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f16, $f11 */);
    M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f16, $f6 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f19, $f1 */);
    M2C_ERROR(/* unknown instruction: msub.s $f4, $f4, $f17, $f11 */);
    M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f16, $f5 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f19, $f5 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f19, $f3 */);
    M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f18, $f3 */);
    M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f12, $f4 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f14, $f2 */);
    return M2C_ERROR(/* unknown instruction: nmsub.s $f0, $f0, $f15, $f1 */);
}

void CubicBezierFitCubic(s32 arg0, s32 arg1, s64 arg2) {
    s64 spE0;
    f32 *sp60;
    f32 *sp50;
    f32 *sp40;
    f32 sp38;
    f32 sp30;
    f32 sp28;
    f32 sp20;
    f32 sp18;
    f32 sp10;
    f32 sp8;
    f32 sp0;
    f32 **var_s4;
    f32 **var_s4_2;
    f32 **var_s5;
    f32 **var_s5_2;
    f32 *var_s3;
    f32 temp_f0;
    s32 var_s7;

    var_s4 = &sp50;
    var_s5 = &sp40;
    do {
        *var_s5 = NULL;
        var_s4->unkC = 0.0f;
        var_s4->unk8 = 0.0f;
        var_s4->unk4 = 0.0f;
        var_s5 += 4;
        var_s4->unk0 = NULL;
        var_s4 += 0x10;
    } while (var_s5 != &sp50);
    spE0 = arg2;
    if (arg0 > 0) {
        var_s7 = 0;
        var_s3 = NULL;
        do {
            var_s4_2 = &sp50;
            var_s5_2 = &sp40;
loop_5:
            __glOdysseyProgramFFTFilter(var_s3);
            *var_s5_2 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f1, $f2, $f0 */);
            __glOdysseyProgramFFTFilter(var_s3);
            __glOdysseyProgramFFTFilter(NULL);
            var_s4_2->unk0 = M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f20, $f0 */);
            __glOdysseyProgramFFTFilter(var_s3);
            __glOdysseyProgramFFTFilter((f32 *)1);
            var_s4_2->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f20, $f0 */);
            __glOdysseyProgramFFTFilter(var_s3);
            __glOdysseyProgramFFTFilter((f32 *)2);
            var_s4_2->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f20, $f0 */);
            __glOdysseyProgramFFTFilter(var_s3);
            __glOdysseyProgramFFTFilter((f32 *)3);
            var_s3 += 1;
            var_s5_2 += 4;
            var_s4_2->unkC = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f20, $f0 */);
            var_s4_2 += 0x10;
            if (var_s3 != (f32 *)4) {
                goto loop_5;
            }
            var_s7 += 1;
            var_s3 = NULL;
        } while (arg0 != var_s7);
    }
    sp28 = sp84;
    sp20 = sp80;
    sp18 = sp7C;
    sp10 = sp78;
    sp8 = sp74;
    sp0 = sp70;
    sp38 = sp8C;
    sp30 = sp88;
    temp_f0 = __glOdysseyProgramFFTFilter(sp50, sp54, sp58, sp5C, sp60, sp64, sp68, sp6C);
    sp10 = sp78;
    sp38 = sp8C;
    sp30 = sp88;
    sp28 = sp84;
    sp18 = sp7C;
    sp8 = sp74;
    sp20 = sp4C;
    sp0 = sp48;
    spE0->unk0 = (f32) (__glOdysseyProgramFFTFilter(sp40, sp54, sp58, sp5C, sp44, sp64, sp68, sp6C) / temp_f0);
    sp28 = sp4C;
    sp10 = sp78;
    sp38 = sp8C;
    sp30 = sp88;
    sp20 = sp80;
    sp18 = sp7C;
    sp8 = sp48;
    sp0 = sp70;
    spE0->unk4 = (f32) (__glOdysseyProgramFFTFilter(sp50, sp40, sp58, sp5C, sp60, sp44, sp68, sp6C) / temp_f0);
    sp30 = sp4C;
    sp38 = sp8C;
    sp28 = sp84;
    sp20 = sp80;
    sp18 = sp7C;
    sp10 = sp48;
    sp8 = sp74;
    sp0 = sp70;
    spE0->unk8 = (f32) (__glOdysseyProgramFFTFilter(sp50, sp54, sp40, sp5C, sp60, sp64, sp44, sp6C) / temp_f0);
    sp38 = sp4C;
    sp10 = sp78;
    sp30 = sp88;
    sp28 = sp84;
    sp20 = sp80;
    sp18 = sp48;
    sp8 = sp74;
    sp0 = sp70;
    __glOdysseyProgramFFTFilter(sp50, sp54, sp58, sp40, sp60, sp64, sp68, sp44);
    M2C_ERROR(/* unknown instruction: nmsub.d $f4, $f4, $f5, $f9 */);
    M2C_ERROR(/* unknown instruction: madd.d $f4, $f4, $f11, $f12 */);
    spE0->unkC = (f32) (second half of f64);
    spE0->unk8 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f6, $f11, $f8, $f6 */);
    spE0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f8, $f10 */);
    spE0->unk0 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f4, $f4, $f8, $f9 */);
}

void FogFitCurve(s32 arg0, f32 *arg1, f32 *arg3) {
    s64 sp10;
    f32 *var_a3;
    f32 temp_f10;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f4;
    s32 var_a4;
    s32 var_t8;
    void *temp_at;
    void *temp_s0;

    var_a3 = arg3;
    var_f4 = 1.0f;
    temp_s0 = (arg0 * 8) + arg1;
    temp_at = *(void **)0x1010;
    temp_at->unk16468 = (f32) (temp_s0->unk-8 - arg1->unk0);
    sp10 = temp_at + 0x10000;
    temp_at->unk16464 = (f32) arg1->unk0;
    if (arg0 != 1) {
        var_f4 = (f32) ((second half of f64) / (f64) (second half of f64));
    }
    var_a4 = arg0 & 3;
    temp_f5 = -arg1->unk0;
    if (arg0 > 0) {
        var_a3 = arg1;
        var_t8 = arg0 >> 2;
        if (var_a4 != 0) {
            do {
                temp_f6 = *var_a3 + temp_f5;
                var_a4 -= 1;
                var_a3 += 8;
                var_a3->unk-8 = (f32) (var_f4 * temp_f6);
            } while (var_a4 != 0);
            var_t8 = arg0 >> 2;
        }
        if (var_t8 != 0) {
            do {
                temp_f8 = var_a3->unk8;
                temp_f10 = var_a3->unk18 + temp_f5;
                temp_f7 = var_a3->unk0;
                temp_f9 = var_a3->unk10 + temp_f5;
                var_a3 += 0x20;
                var_a3->unk-8 = (f32) (var_f4 * temp_f10);
                var_a3->unk-10 = (f32) (var_f4 * temp_f9);
                var_a3->unk-18 = (f32) (var_f4 * (temp_f8 + temp_f5));
                var_a3->unk-20 = (f32) (var_f4 * (temp_f7 + temp_f5));
            } while (var_a3 != temp_s0);
        }
    }
    switch (arg0) {                                 /* irregular */
    default:
        __glOdysseyProgramFFTFilter(arg1, sp, var_a3, (f32 *) var_a4, (f32 *)1);
        break;
    case 3:
        __glOdysseyProgramFFTFilter(arg1, sp, var_a3, (f32 *) var_a4, (f32 *)1);
        break;
    case 1:
        __glOdysseyProgramFFTFilter(arg1, sp, var_a3, (f32 *) var_a4, (f32 *)1);
        break;
    case 2:
        __glOdysseyProgramFFTFilter(arg1, sp, var_a3, (f32 *) var_a4, (f32 *)1);
        break;
    }
    sp10->unk6454 = (f32) arg1->unk4;
    sp10->unk6458 = (f32) ((f64) sp0 + (second half of f64));
    sp10->unk645C = (f32) ((f64) sp0 + (((f64) sp4 * 2.0) / (second half of f64)) + (second half of f64));
    sp10->unk6460 = (f32) temp_s0->unk-4;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x90, 0x94], gap at: 0x80. */
void __glOdysseyValidateFog(void *arg0) {
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f32 sp4;
    f32 temp_f13;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f15;
    f32 temp_f17;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f4;
    f32 var_f20;
    f32 var_f22;
    f32 var_f22_2;
    f32 var_f28;
    f32 var_f6;
    f32 var_f7;
    f64 temp_f14;
    f64 temp_f16;
    f64 temp_f18;
    f64 temp_f28;
    f64 temp_f4_2;
    f64 temp_f4_3;
    f64 var_f7_2;
    s32 temp_a0;
    s32 var_a0;

    if (arg0->unk16740 != 0) {
        __glOdysseyUpdateTransform();
    }
    temp_a0 = arg0->unk634;
    temp_f24 = (f32) arg0->unk165C8;
    sp38 = (bitwise f64) (f32) (second half of f64);
    switch (temp_a0) {                              /* irregular */
    default:
        var_f28 = sp10;
        var_f7 = (bitwise f32) sp38 - temp_f24;
block_7:
        var_f7_2 = (f64) var_f7;
        var_f6 = second half of f64;
        break;
    case 0x800:
        temp_f22 = arg0->unk648;
        temp_f17 = fabsf((bitwise f32) sp38);
        temp_f18 = (f64) temp_f17;
        temp_f20 = M2C_ERROR(/* unknown instruction: movf.s $f20, $f16, $fcc5 */);
        temp_f14 = (f64) temp_f22 * (second half of f64);
        temp_f13 = (second half of f64) / temp_f20;
        sp38 = (bitwise f64) temp_f13;
        temp_f26 = -(temp_f22 * temp_f20);
        sp28 = expf(temp_a0, (f32) (((f64) temp_f20 * temp_f14) / 3.0), (bitwise f64) temp_f13, (f32) temp_f14, second half of f64, (f64) M2C_ERROR(/* unknown instruction: movf.s $f16, $f17, $fcc6 */), (f64) temp_f17, temp_f18, second half of f64);
        sp30 = expf((bitwise s32) (f32) ((f64) temp_f26 / 3.0), second half of f64);
        expf((bitwise s32) temp_f26);
        M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f0, $f31 */);
        M2C_ERROR(/* unknown instruction: nmsub.d $f31, $f31, $f0, $f3 */);
        M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f1, $f8 */);
        var_f7_2 = (f64) ((bitwise f32) sp38 - (temp_f24 / temp_f20));
        var_f6 = (f32) (second half of f64);
        sp4 = 1.0f;
        var_f28 = (f32) (((second half of f64) + M2C_ERROR(/* unknown instruction: nmsub.d $f31, $f31, $f1, $f2 */)) / (second half of f64));
        break;
    case 0x801:
        temp_f22_2 = arg0->unk648;
        temp_f15 = fabsf((bitwise f32) sp38);
        temp_f16 = (f64) temp_f15;
        temp_f20_2 = M2C_ERROR(/* unknown instruction: movf.s $f20, $f14, $fcc7 */);
        temp_f28 = (f64) temp_f20_2;
        sp38 = second half of f64;
        sp20 = expf(temp_a0, (f32) (temp_f28 * (temp_f28 * (second half of f64))), second half of f64, M2C_ERROR(/* unknown instruction: movf.s $f14, $f15, $fcc0 */), temp_f15, temp_f16, second half of f64);
        sp18 = expf((bitwise s32) (f32) (temp_f28 * (temp_f28 * ((f64) (second half of f64) / (second half of f64)))), second half of f64);
        expf((bitwise s32) -(temp_f20_2 * (temp_f22_2 * temp_f22_2 * temp_f20_2)));
        M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f0, $f31 */);
        M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f1, $f8 */);
        M2C_ERROR(/* unknown instruction: nmsub.d $f31, $f31, $f0, $f2 */);
        var_f7_2 = (f64) ((bitwise f32) sp38 - (temp_f24 / temp_f20_2));
        var_f6 = (f32) (second half of f64);
        sp4 = 1.0f;
        var_f28 = (f32) (((f64) ((second half of f64) * 18.0f) + M2C_ERROR(/* unknown instruction: nmsub.d $f31, $f31, $f1, $f2 */)) / (second half of f64));
        break;
    case 0x2601:
        temp_f4 = arg0->unk654;
        var_f28 = second half of f64;
        if (temp_f4 > 0.0f) {
            sp4 = temp_f4;
            var_f7 = (bitwise f32) sp38 - temp_f24;
            var_f28 = 0.33333334f;
            goto block_7;
        }
        var_f7_2 = (f64) ((bitwise f32) sp38 - temp_f24);
        var_f6 = second half of f64;
        if (temp_f4 < 0.0f) {
            var_f28 = 0.6666667f;
            var_f6 = 0.33333334f;
            sp4 = -temp_f4;
        } else {
            sp4 = (f32) (1024.0 / var_f7_2);
        }
        break;
    case 0x812A:
        var_f28 = arg0->unk1645C;
        temp_f4_2 = (f64) arg0->unk16468;
        var_f22 = 1.0f;
        if (temp_f4_2 != GLUE_F64(M2C_ERROR(/* Read from unset register $f9 */), 0U)) {
            var_f22 = (f32) (1.0 / temp_f4_2);
        }
        sp4 = var_f22;
        var_f7 = (bitwise f32) sp38 - temp_f24;
        goto block_7;
    }
    if (arg0->unk704 & 0x10) {

    }
    var_f20 = (f32) ((second half of f64) * ((second half of f64) + M2C_ERROR(/* unknown instruction: nmsub.d $f23, $f23, $f25, $f27 */)));
    temp_f4_3 = (f64) var_f20;
    temp_f22_3 = (f32) (var_f7_2 / (arg0->unk6B0 - arg0->unk6A8)) * (second half of f64);
    sp4 = temp_f22_3;
    if (temp_f4_3 < -8.0) {
        if (temp_f4_3 < -1024.0) {
            var_f20 = -8.0f;
            var_f22_2 = (f32) ((f64) (second half of f64) * (second half of f64));
            var_a0 = 7;
        } else {
            unksp80 = (bitwise f64) var_f6;
            unksp88 = second half of f64;
            var_a0 = ((s32) ceilf((f32) ((f64) logf(-var_f20) / (second half of f64)), second half of f64) - 3) & 0xFF;
            temp_f14_2 = (f32) ((1 << var_a0) & 0xFF);
            var_f22_2 = temp_f22_3 / temp_f14_2;
            var_f20 /= temp_f14_2;
        }
        goto block_13;
    }
    var_f6 = second half of f64;
    var_a0 = 7;
    if (temp_f4_3 > 7.99609375) {
        if (temp_f4_3 > 1023.5) {
            var_f20 = 7.9960938f;
            var_f22_2 = (f32) ((f64) (second half of f64) * (second half of f64));
        } else {
            unksp80 = (bitwise f64) (second half of f64);
            unksp88 = second half of f64;
            var_a0 = (s32) ceilf((f32) ((f64) logf(1e-44f, (f32) (temp_f4_3 / 7.99609375), second half of f64) / (second half of f64)), second half of f64) & 0xFF;
            temp_f14_3 = (f32) ((1 << var_a0) & 0xFF);
            var_f22_2 = temp_f22_3 / temp_f14_3;
            var_f6 = second half of f64;
            var_f20 /= temp_f14_3;
        }
block_13:
        sp4 = var_f22_2;
    } else {
        var_a0 = 0;
    }
    arg0->unk7C10 = (s32) ((arg0->unk7C10 & 0xFF000000) | (M2C_ERROR(/* unknown instruction: movf $t3, $t8, $fcc2 */) & 0xFFFFFF));
    arg0->unk7C14 = (s32) (((s32) (256.0f * var_f20) & 0xFFF) | (-0x1000 & (((var_a0 << 0xC) & 0x7000) | (arg0->unk7C14 & ~0x7000))));
    arg0->unk7C18 = (s32) (((s32) (256.0f * var_f6) & 0xFFF) | (-0x1000 & ((0xFFF000 & (((s32) (256.0f * (second half of f64)) & 0xFFF) << 0xC)) | (0xFF000FFF & arg0->unk7C18))));
    arg0->unk7C1C = (s32) (((s32) (256.0f * (bitwise f32) (second half of f64)) & 0xFFF) | (-0x1000 & ((0xFFF000 & (((s32) (256.0f * var_f28) & 0xFFF) << 0xC)) | (0xFF000FFF & arg0->unk7C1C))));
    arg0->unk16960 = (s32) (arg0->unk16960 | 8);
    *(s32 *)0x1018 = 2;
}

void __glOdyim_Fogfv(u32 arg0, f32 *arg1, s32 arg3, s32 arg6, s32 arg7) {
    f32 *temp_a2;
    f32 *var_a1;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f4;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    void *temp_s0;
    void *var_a0;

    var_a1 = arg1;
    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s0 = *(void **)0x1010;
    var_a4 = 1;
    temp_a2 = var_a1;
    if (*(s32 *)0x1018 != 1) {
        temp_a5 = arg0 < 0xB62U;
        if (arg0 >= 0xB64U) {
            if (arg0 < 0xB65U) {
                var_a0 = temp_s0 + 0x10000;
                temp_s0->unk650 = (f32) temp_a2->unk0;
                temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                goto block_4;
            }
            var_a3 = arg0 < 0xB67U;
            if (arg0 >= 0xB66U) {
                var_a1 = (f32 *)0x2601;
                if (var_a3 == 0) {
                    var_a4 = 0x8199;
                    if (arg0 == 0x8199) {
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk1646C = (f32) temp_a2->unk0;
                        temp_s0->unk16470 = (f32) temp_a2->unk4;
                        temp_s0->unk16474 = (f32) temp_a2->unk8;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                        temp_s0->unk16478 = (f32) temp_a2->unkC;
                        goto block_4;
                    }
                    goto block_8;
                }
                __glClampColorf(temp_s0, temp_s0 + 0x638, temp_a2, var_a3, 1, temp_a5);
                if (temp_s0->unkC94 != 0) {
                    temp_f6 = temp_s0->unk638;
                    if ((f64) temp_f6 >= 1.0) {
                        var_f5 = 4095.0f;
                    } else {
                        var_f5 = temp_f6 * 4096.0f;
                    }
                    temp_a0 = (0xFFF000 & ((s64) var_f5 << 0xC)) | (0xFF000FFF & temp_s0->unk7C08);
                    temp_s0->unk7C08 = temp_a0;
                    if ((f64) temp_s0->unk63C >= 1.0) {
                        var_f5_2 = 4095.0f;
                    } else {
                        var_f5_2 = (second half of f64) * 4096.0f;
                    }
                    temp_s0->unk7C08 = (s32) ((-0x1000 & temp_a0) | (((s64) var_f5_2 << 0) & 0xFFF));
                    if ((f64) temp_s0->unk640 >= 1.0) {
                        var_f5_3 = 4095.0f;
                    } else {
                        var_f5_3 = (second half of f64) * 4096.0f;
                    }
                    temp_a0_2 = (0xFFF000 & ((s64) var_f5_3 << 0xC)) | (0xFF000FFF & temp_s0->unk7C0C);
                    temp_s0->unk7C0C = temp_a0_2;
                    if ((f64) temp_s0->unk644 >= 1.0) {
                        var_f4 = 4095.0f;
                    } else {
                        var_f4 = (second half of f64) * 4096.0f;
                    }
                    temp_s0->unk7C0C = (s32) ((-0x1000 & temp_a0_2) | (((s64) var_f4 << 0) & 0xFFF));
                }
                var_a0 = temp_s0 + 0x10000;
                goto block_5;
            }
            var_a1 = (f32 *)0xB65;
            var_a7 = 0x812A;
            if (arg0 == 0xB65) {
                temp_a5_2 = (s64) temp_a2->unk0 << 0;
                switch (temp_a5_2) {                /* irregular */
                default:
                    __glSetError((void *)0x500, (f32 *)0x2601, temp_a2, 0x800, 1, temp_a5_2, 0x801, 0x812A);
                    break;
                case 0x800:
                    /* fallthrough */
                case 0x801:
                case 0x812A:
                    /* fallthrough */
                case 0x2601:
                    var_a0 = temp_s0 + 0x10000;
                    temp_s0->unk634 = temp_a5_2;
                    temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                    goto block_4;
                }
            } else {
                goto block_8;
            }
        } else {
            var_a6 = arg0 < 0xB63U;
            if (temp_a5 == 0) {
                if (var_a6 != 0) {
                    temp_f4 = var_a1->unk0;
                    if (!(temp_f4 < 0.0f)) {
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk648 = temp_f4;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                        goto block_4;
                    }
                    M2C_ERROR(/* Read from unset register $t9 */)(0x501, temp_a2, 1, temp_a5, var_a6);
                } else {
                    if (arg0 == 0xB63) {
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk64C = (f32) var_a1->unk0;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
block_4:
                        *(void *)0x1018 = 2;
                        goto block_5;
                    }
                    goto block_8;
                }
            } else {
                var_a1 = (f32 *)0xB61;
                if (arg0 == 0xB61) {
                    temp_f4_2 = (f32) ((s32) temp_a2->unk0 & ((1 << temp_s0->unkCB4) - 1));
                    temp_s0->unk658 = temp_f4_2;
                    if (temp_s0->unkC95 != 0) {
                        temp_s0->unk7C08 = (s32) (((((s32) temp_f4_2 & 0xFFFF) << 0xC) & 0xFFF000) | (temp_s0->unk7C08 & ~0xFFF000));
                    }
                    var_a0 = temp_s0 + 0x10000;
block_5:
                    var_a0->unk6960 = (s32) (var_a0->unk6960 | 8);
                    *(void *)0x1018 = 2;
                    if (temp_s0->unk634 == 0x2601) {
                        temp_f4_3 = temp_s0->unk64C;
                        temp_f5 = temp_s0->unk650;
                        if (temp_f4_3 != temp_f5) {
                            temp_s0->unk654 = (f32) (temp_s0->unkDD8 / (temp_f5 - temp_f4_3));
                            return;
                        }
                        temp_s0->unk654 = 0.0f;
                    }
                } else {
block_8:
                    __glSetError((void *)0x500, var_a1, temp_a2, var_a3, var_a4, temp_a5, var_a6, var_a7);
                }
            }
        }
    } else {
        __glSetError((void *)0x502, temp_a2, (f32 *)1);
    }
}

void __glOdyim_Fogf(s32 arg0, f32 *arg2, s32 arg3, f32 fparg1) {
    f32 sp18;
    f32 *var_a2;
    s32 var_a3;

    var_a2 = arg2;
    var_a3 = arg3;
    sp18 = fparg1;
    if ((arg0 != 0xB61) && (arg0 != 0xB62) && (arg0 != 0xB63) && (var_a2 = (f32 *)0xB64, (arg0 != 0xB64)) && (var_a3 = 0xB65, (arg0 != 0xB65))) {
        __glSetError((void *)0x500, (f32 *)0xB63, (f32 *)0xB64, 0xB65);
    } else {
        __glOdyim_Fogfv((u32) &sp18, var_a2, var_a3);
    }
}

void __glOdyim_Fogiv(u32 arg0, s32 arg1, s32 arg3, s32 arg6, s32 arg7) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f4;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    s32 var_a7;
    void *temp_s0;
    void *var_a0;

    var_a1 = arg1;
    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s0 = *(void **)0x1010;
    var_a4 = 1;
    temp_a2 = var_a1;
    if (*(s32 *)0x1018 != 1) {
        temp_a5 = arg0 < 0xB62U;
        if (arg0 >= 0xB64U) {
            var_a1 = arg0 < 0xB66U;
            if (arg0 < 0xB65U) {
                var_a0 = temp_s0 + 0x10000;
                temp_s0->unk650 = (f32) temp_a2->unk0;
                temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                goto block_4;
            }
            var_a3 = arg0 < 0xB67U;
            if (var_a1 == 0) {
                if (var_a3 == 0) {
                    var_a4 = 0x8199;
                    if (arg0 == 0x8199) {
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk1646C = (f32) temp_a2->unk0;
                        temp_s0->unk16470 = (f32) temp_a2->unk4;
                        temp_s0->unk16474 = (f32) temp_a2->unk8;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                        temp_s0->unk16478 = (f32) temp_a2->unkC;
                        goto block_4;
                    }
                    goto block_8;
                }
                __glSetError(temp_s0, temp_s0 + 0x638, (f32 *) temp_a2, var_a3, 1, temp_a5);
                if (temp_s0->unkC94 != 0) {
                    temp_f6 = temp_s0->unk638;
                    if ((f64) temp_f6 >= 1.0) {
                        var_f5 = 4095.0f;
                    } else {
                        var_f5 = temp_f6 * 4096.0f;
                    }
                    temp_a0 = (0xFFF000 & ((s64) var_f5 << 0xC)) | (0xFF000FFF & temp_s0->unk7C08);
                    temp_s0->unk7C08 = temp_a0;
                    if ((f64) temp_s0->unk63C >= 1.0) {
                        var_f5_2 = 4095.0f;
                    } else {
                        var_f5_2 = (second half of f64) * 4096.0f;
                    }
                    temp_s0->unk7C08 = (s32) ((-0x1000 & temp_a0) | (((s64) var_f5_2 << 0) & 0xFFF));
                    if ((f64) temp_s0->unk640 >= 1.0) {
                        var_f5_3 = 4095.0f;
                    } else {
                        var_f5_3 = (second half of f64) * 4096.0f;
                    }
                    temp_a0_2 = (0xFFF000 & ((s64) var_f5_3 << 0xC)) | (0xFF000FFF & temp_s0->unk7C0C);
                    temp_s0->unk7C0C = temp_a0_2;
                    if ((f64) temp_s0->unk644 >= 1.0) {
                        var_f4 = 4095.0f;
                    } else {
                        var_f4 = (second half of f64) * 4096.0f;
                    }
                    temp_s0->unk7C0C = (s32) ((-0x1000 & temp_a0_2) | (((s64) var_f4 << 0) & 0xFFF));
                }
                var_a0 = temp_s0 + 0x10000;
                goto block_5;
            }
            var_a1 = 0xB65;
            var_a6 = 0x812A;
            if (arg0 == 0xB65) {
                temp_a4 = temp_a2->unk0;
                switch (temp_a4) {                  /* irregular */
                default:
                    __glSetError((void *)0x500, (f32 *)0x2601, (f32 *) temp_a2, 0x800, temp_a4, 0x801, 0x812A);
                    break;
                case 0x800:
                    /* fallthrough */
                case 0x801:
                    /* fallthrough */
                case 0x2601:
                case 0x812A:
                    var_a0 = temp_s0 + 0x10000;
                    temp_s0->unk634 = temp_a4;
                    temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                    goto block_4;
                }
            } else {
                goto block_8;
            }
        } else {
            var_a6 = arg0 < 0xB63U;
            if (temp_a5 == 0) {
                var_a7 = 0xB63;
                if (var_a6 != 0) {
                    temp_a4_2 = var_a1->unk0;
                    if (temp_a4_2 >= 0) {
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk648 = (f32) temp_a4_2;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
                        goto block_4;
                    }
                    __glSetError((void *)0x501, (f32 *) temp_a2, (f32 *) temp_a4_2, temp_a5, var_a6, 0xB63);
                } else {
                    if (arg0 == 0xB63) {
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk64C = (f32) var_a1->unk0;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x1000);
block_4:
                        *(void *)0x1018 = 2;
                        goto block_5;
                    }
                    goto block_8;
                }
            } else {
                var_a3 = 0xB61;
                if (arg0 == 0xB61) {
                    temp_f4 = (f32) (var_a1->unk0 & ((1 << temp_s0->unkCB4) - 1));
                    temp_s0->unk658 = temp_f4;
                    if (temp_s0->unkC95 != 0) {
                        temp_s0->unk7C08 = (s32) (((((s32) temp_f4 & 0xFFFF) << 0xC) & 0xFFF000) | (temp_s0->unk7C08 & ~0xFFF000));
                    }
                    var_a0 = temp_s0 + 0x10000;
block_5:
                    var_a0->unk6960 = (s32) (var_a0->unk6960 | 8);
                    *(void *)0x1018 = 2;
                    if (temp_s0->unk634 == 0x2601) {
                        temp_f4_2 = temp_s0->unk64C;
                        temp_f5 = temp_s0->unk650;
                        if (temp_f4_2 != temp_f5) {
                            temp_s0->unk654 = (f32) (temp_s0->unkDD8 / (temp_f5 - temp_f4_2));
                            return;
                        }
                        temp_s0->unk654 = 0.0f;
                    }
                } else {
block_8:
                    __glSetError((void *)0x500, (f32 *) var_a1, (f32 *) temp_a2, var_a3, var_a4, temp_a5, var_a6, var_a7);
                }
            }
        }
    } else {
        __glSetError((void *)0x502, (f32 *) temp_a2, (f32 *)1);
    }
}

void __glOdyim_Fogi(s32 arg0, s32 arg1, f32 *arg2, s32 arg3) {
    s32 sp1C;
    f32 *var_a2;
    s32 var_a3;

    var_a2 = arg2;
    var_a3 = arg3;
    sp1C = arg1;
    if ((arg0 != 0xB61) && (arg0 != 0xB62) && (var_a2 = (f32 *)0xB64, (arg0 != 0xB63)) && (arg0 != 0xB64) && (var_a3 = 0xB65, (arg0 != 0xB65))) {
        __glSetError((void *)0x500, (f32 *)0xB63, (f32 *)0xB64, 0xB65);
    } else {
        __glOdyim_Fogiv((u32) &sp1C, var_a2, var_a3);
    }
}

void __glOdyim_FogFuncSGIS(s32 arg0, void *arg1) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_v0;
    f32 *var_a7;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f9;
    f32 var_f4;
    f32 var_f5;
    f64 temp_f5;
    s32 temp_a1;
    s32 temp_a3;
    s32 var_a6;
    s64 temp_a1_2;
    s64 temp_a2;
    void *temp_s0;
    void *var_a4;
    void *var_a5;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 > 0) {
            temp_a2 = temp_s0 + 0x10000;
            temp_a3 = arg0 > 4;
            temp_a1 = (temp_a3 == 0) ? arg0 : 4;
            temp_s0->unk16430 = temp_a1;
            sp10 = temp_a2;
            sp8 = (s64) temp_a1;
            temp_a1_2 = temp_a1 * 8;
            sp0 = temp_a1_2;
            temp_v0 = __glSetError(temp_s0, (f32 *) temp_a1_2, (f32 *) temp_a2, temp_a3);
            if (temp_v0 != NULL) {
                var_a7 = temp_v0;
                if (((f64) arg1->unk0 < GLUE_F64(M2C_ERROR(/* Read from unset register $f9 */), 0U)) || (temp_f5 = (f64) arg1->unk4, var_f4 = second half of f64, var_a6 = 0, (temp_f5 < GLUE_F64(M2C_ERROR(/* Read from unset register $f9 */), 0U))) || (temp_f5 > 1.0)) {
                    goto block_6;
                }
                sp10->unk6434 = (f32) (second half of f64);
                var_f5 = arg1->unk4;
                sp10->unk6438 = var_f5;
                if (sp8 >= 2) {
                    var_a7 = temp_v0;
                    var_a4 = arg1 + 8;
                    var_a6 = 0;
                    var_a5 = temp_s0 + 0x10008;
loop_14:
                    temp_f9 = var_a4->unk0;
                    var_a5->unk6434 = temp_f9;
                    var_a5->unk6438 = (f32) var_a4->unk4;
                    temp_f7 = var_a4->unk0;
                    temp_f6 = var_a4->unk4;
                    if (!(temp_f7 < var_f4) && !((f64) temp_f6 < GLUE_F64(temp_f9, 0U)) && !(var_f5 < temp_f6)) {
                        var_a5 += 8;
                        if ((temp_f7 != var_f4) || (temp_f6 != var_f5)) {
                            if (var_a6 <= 0) {
                                if (temp_f6 < var_f5) {
                                    goto block_12;
                                }
                            } else {
block_12:
                                var_a7->unk0 = var_f4;
                                var_a7->unk4 = var_f5;
                                var_f5 = var_a4->unk4;
                                var_a7 += 8;
                                var_a6 += 1;
                                var_f4 = var_a4->unk0;
                            }
                        }
                        var_a4 += 8;
                        if (var_a4 != (sp0 + arg1)) {
                            goto loop_14;
                        }
                        goto block_22;
                    }
block_6:
                    temp_s0->unkC(temp_s0, temp_v0);
                    __glSetError((void *)0x501);
                } else {
block_22:
                    var_a7->unk4 = var_f5;
                    var_a7->unk0 = var_f4;
                    __glOdysseyProgramFFTFilter(var_a6 + 1, temp_v0);
                    sub_0d980000(temp_s0, temp_v0);
                }
            } else {
                __glSetError((void *)0x505);
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, 0x170000);
        }
    } else {
        __glSetError((void *)0x502, (f32 *)0x170000);
    }
}
