void *__glNamesLockData(void *, s32, f32 *, ?, ?, s32); /* extern */
? __glNamesUnlockData(void *, void *, s64);         /* extern */
s32 __glOdysseyDlistInterpret(s64, s32, u8, s32, s64, ?, s32); /* extern */
s32 __glOdysseyDlistInterpretPreclip(s64, s32, u8, s32, s64, ?, u8, u8); /* extern */
? __glOdysseyPushLoop(s32, s64);                    /* extern */
s32 __glSPDlistSpace(s64, s32 *, s32, s32, ? *, void *, s32 *, void *); /* extern */
? __glSPInterpret(s32, ?, s32);                     /* extern */
? __glSetError(s32, ?, ?, s32);                     /* extern */
? __glim_ArrayElementEXT();                         /* extern */
? __glsplc_AddIlist(? *, s32 *, s32, s32 *, s32, void *, void *); /* extern */
? __glsplc_CallList();                              /* extern */
? __glsplc_CallLists();                             /* extern */
? __glsplc_DrawArraysEXT();                         /* extern */
? __glsplc_DrawElements();                          /* extern */
? __glsplc_End(s32, ?, f32, f32, f32);              /* extern */
? __glsplc_EvalCoord1d();                           /* extern */
? __glsplc_EvalCoord1dv();                          /* extern */
? __glsplc_EvalCoord1f();                           /* extern */
? __glsplc_EvalCoord1fv();                          /* extern */
? __glsplc_EvalCoord2d();                           /* extern */
? __glsplc_EvalCoord2dv();                          /* extern */
? __glsplc_EvalCoord2f();                           /* extern */
? __glsplc_EvalCoord2fv();                          /* extern */
? __glsplc_EvalMesh1();                             /* extern */
? __glsplc_EvalMesh2();                             /* extern */
? __glsplc_EvalPoint1();                            /* extern */
? __glsplc_EvalPoint2();                            /* extern */
? __glsplc_Frustum();                               /* extern */
? __glsplc_LoadIdentity();                          /* extern */
? __glsplc_LoadMatrixd();                           /* extern */
? __glsplc_LoadMatrixf();                           /* extern */
? __glsplc_MultMatrixd();                           /* extern */
? __glsplc_MultMatrixf();                           /* extern */
? __glsplc_Ortho();                                 /* extern */
? __glsplc_PopAttrib();                             /* extern */
? __glsplc_PopMatrix();                             /* extern */
? __glsplc_Rotated();                               /* extern */
? __glsplc_Rotatef();                               /* extern */
? __glsplc_Scaled();                                /* extern */
? __glsplc_Scalef();                                /* extern */
? __glsplc_Translated();                            /* extern */
? __glsplc_Translatef();                            /* extern */
? __glsplc_Viewport();                              /* extern */
s32 __glOdysseyIsBboxClippedRange2(void *arg0, void *arg1, u8, s32, s64, ?, u8, ?); /* static */
extern s32 HQ2_READ_FIFO;
extern s32 __glOdylc_Vertex2dBbox;
extern ? __glOdylc_vertexBboxDispatchTable;
extern ? __glOdylc_vertexDispatchTable;
extern ? __glsple_Sentinel;
extern ? sub_0d970000;

void __glOdyim_ListParameterfvSGIX(f32 *arg0, s32 arg1, s64 arg2) {
    s64 sp0;
    f32 var_f4;
    void *temp_s0;
    void *temp_v0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg1 != 0x8182) {
            __glSetError(0x500, 0x180000, 0x8182);
        } else {
            sp0 = arg2;
            if (arg0 != NULL) {
                temp_v0 = __glNamesLockData(temp_s0, temp_s0->unk1340, arg0, 0x180000, 0x8182);
                if (temp_v0 != NULL) {
                    if ((f64) *sp0 < GLUE_F64((second half of f64), 0U)) {
                        var_f4 = 0.0f;
                    } else {
                        var_f4 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f1, $fcc1 */);
                    }
                    temp_v0->unk2C = var_f4;
                    __glNamesUnlockData(temp_s0, temp_v0);
                }
            } else {
                __glSetError(0x501, 0x180000, 0x8182);
            }
        }
    } else {
        __glSetError(0x502, 0x180000);
    }
}

void __glOdyim_ListParameterfSGIX(f32 fparg2) {
    f32 sp20;

    sp20 = fparg2;
    __glOdyim_ListParameterfvSGIX(&sp20);
}

void __glOdyim_ListParameterivSGIX(s32 *arg2) {
    __glOdyim_ListParameterfvSGIX(sp, (bitwise s32) (f32) *arg2);
}

void __glOdyim_ListParameteriSGIX(s32 arg2) {
    __glOdyim_ListParameterfvSGIX(sp, (bitwise s32) (f32) arg2);
}

void __glOdyim_GetListParameterfvSGIX(f32 *arg0, s32 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_a5;
    void *temp_v0;

    temp_a5 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg1 != 0x8182) {
            __glSetError(0x500, 0x180000, 0x8182, temp_a5);
        } else {
            sp0 = arg2;
            sp8 = (s64) temp_a5;
            if (arg0 != NULL) {
                temp_v0 = __glNamesLockData((void *) sp8, sp8->unk1340, arg0, 0x180000, 0x8182, temp_a5);
                if (temp_v0 != NULL) {
                    *sp0 = (f32) temp_v0->unk2C;
                    __glNamesUnlockData((void *) sp8, temp_v0, sp0);
                }
            } else {
                __glSetError(0x501, 0x180000, 0x8182, temp_a5);
            }
        }
    } else {
        __glSetError(0x502, 0x180000, 0x8182, temp_a5);
    }
}

void __glOdyim_GetListParameterivSGIX(s32 *arg2) {
    f32 sp0;

    sp0 = (f32) *arg2;
    __glOdyim_GetListParameterfvSGIX(sp);
    *arg2 = (s32) sp0;
}

void __glOdysseyDlistOptimizer(void) {

}

s32 __glOdysseyIsBboxClippedRange(void *arg0, void *arg1) {
    f64 spC0;
    f64 spB8;
    f64 spB0;
    f64 spA8;
    f64 spA0;
    f64 sp98;
    f64 sp90;
    f64 sp88;
    f64 sp80;
    f64 sp78;
    f64 sp70;
    f64 sp68;
    f64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f11;
    f32 temp_f11_2;
    f32 temp_f11_3;
    f32 temp_f11_4;
    f32 temp_f11_5;
    f32 temp_f11_6;
    f32 temp_f11_7;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f12_6;
    f32 temp_f12_7;
    f32 temp_f12_8;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f15_2;
    f32 temp_f15_3;
    f32 temp_f15_4;
    f32 temp_f15_5;
    f32 temp_f15_6;
    f32 temp_f15_7;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f25;
    f32 temp_f27;
    f32 temp_f27_2;
    f32 temp_f27_3;
    f32 temp_f27_4;
    f32 temp_f29;
    f32 temp_f31;
    f32 temp_f31_2;
    f32 temp_f31_3;
    f32 temp_f4;
    f32 temp_f4_10;
    f32 temp_f4_11;
    f32 temp_f4_12;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 temp_f4_7;
    f32 temp_f4_8;
    f32 temp_f4_9;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 temp_f6_7;
    f32 temp_f6_8;
    f32 temp_f8;
    f32 temp_f8_10;
    f32 temp_f8_11;
    f32 temp_f8_2;
    f32 temp_f8_3;
    f32 temp_f8_4;
    f32 temp_f8_5;
    f32 temp_f8_6;
    f32 temp_f8_7;
    f32 temp_f8_8;
    f32 temp_f8_9;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 temp_f9_3;
    f32 temp_f9_4;
    f32 temp_f9_5;
    f32 temp_f9_6;
    f32 temp_f9_7;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f10_3;
    f32 var_f12;
    f32 var_f13;
    f32 var_f18;
    f32 var_f19;
    f32 var_f21;
    f32 var_f21_2;
    f32 var_f23;
    f32 var_f29;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f8;
    f32 var_f9;
    f32 var_f9_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a7;
    s32 var_t1;
    void *temp_a4;

    temp_a4 = arg0->unk7414;
    if (arg0->unk16738 != 0) {
        return __glOdysseyIsBboxClippedRange2(temp_a4);
    }
    temp_f14 = arg0->unk95BC;
    temp_f11 = arg0->unk95B8;
    temp_f27 = arg1->unk0;
    temp_f17 = arg0->unk95C0;
    temp_f18 = arg1->unk10;
    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f11, $f27 */);
    temp_f13 = temp_a4->unkB8;
    M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f13, $f27 */);
    temp_f4 = arg0->unk95C4 + M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f17, $f18 */);
    temp_f12 = arg1->unk4 - temp_f27;
    temp_f10 = temp_a4->unkE8 + M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f18, $f19 */);
    sp0 = temp_f4;
    if (temp_f4 > 0.0f) {
        temp_f9 = M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f11, $f12 */);
        var_f6 = temp_f10;
        var_f5 = temp_f4;
        temp_f8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f10, $f13, $f12 */);
        var_f23 = temp_f13 * temp_f12;
        var_f21 = temp_f11 * temp_f12;
        sp10 = temp_f9;
        if (temp_f9 > 0.0f) {
            var_a5 = 1;
            if ((temp_f8 * temp_f4) < (temp_f9 * temp_f10)) {
                var_f6 = temp_f8;
                var_f5 = temp_f9;
                var_a4 = 4;
            } else {
                goto block_10;
            }
            goto block_11;
        }
        return 1;
    }
    temp_f9_2 = M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f11, $f12 */);
    temp_f8_2 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f10, $f13, $f12 */);
    var_f5 = -temp_f4;
    var_f23 = temp_f13 * temp_f12;
    var_f21 = temp_f11 * temp_f12;
    var_f6 = -temp_f10;
    sp10 = temp_f9_2;
    if (!(temp_f9_2 > 0.0f)) {
        var_a5 = 0;
        if ((var_f6 * temp_f9_2) < (var_f5 * temp_f8_2)) {
            var_f5 = -temp_f9_2;
            var_a4 = 4;
            var_f6 = -temp_f8_2;
        } else {
block_10:
            var_a4 = 0;
        }
block_11:
        temp_f31 = arg1->unkC;
        spC0 = (bitwise f64) temp_f31;
        temp_f31_2 = temp_f31 - arg1->unk8;
        temp_f10_2 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f9, $f14, $f31 */);
        temp_f4_2 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f8, $f16, $f31 */);
        temp_f25 = temp_a4->unkC8 * temp_f31_2;
        temp_f13_2 = temp_f14 * temp_f31_2;
        sp18 = temp_f10_2;
        if (temp_f10_2 > 0.0f) {
            if (var_a5 != 0) {
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f4, $fcc6 */);
                var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f10, $fcc6 */);
                var_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $v1, $fcc6 */);
                goto block_14;
            }
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 1;
        }
        if (var_a5 != 0) {
            return 1;
        }
        if ((var_f6 * temp_f10_2) < (temp_f4_2 * var_f5)) {
            var_f5 = -temp_f10_2;
            var_a4 = 6;
            var_f6 = -temp_f4_2;
        }
block_14:
        temp_f9_3 = arg1->unk14;
        spA8 = (bitwise f64) temp_f9_3;
        temp_f9_4 = temp_f9_3 - temp_f18;
        temp_f8_3 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f10, $f17, $f9 */);
        temp_f4_3 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f19, $f9 */);
        spB8 = (bitwise f64) temp_f9_4;
        temp_f16 = temp_a4->unkD8 * temp_f9_4;
        temp_f9_5 = temp_f17 * temp_f9_4;
        sp1C = temp_f8_3;
        if (temp_f8_3 > 0.0f) {
            if (var_a5 != 0) {
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f4, $fcc0 */);
                spB0 = (bitwise f64) temp_f9_5;
                var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f8, $fcc0 */);
                var_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $a2, $fcc0 */);
                goto block_17;
            }
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 1;
        }
        if (var_a5 != 0) {
            return 1;
        }
        spB0 = (bitwise f64) temp_f9_5;
        if ((var_f6 * temp_f8_3) < (temp_f4_3 * var_f5)) {
            var_f5 = -temp_f8_3;
            var_a4 = 7;
            var_f6 = -temp_f4_3;
        }
block_17:
        temp_f9_6 = temp_f8_3 - temp_f13_2;
        temp_f4_4 = temp_f4_3 - temp_f25;
        sp14 = temp_f9_6;
        if (temp_f9_6 > 0.0f) {
            if (var_a5 != 0) {
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f4, $fcc2 */);
                var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f9, $fcc2 */);
                var_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $a3, $fcc2 */);
                goto block_20;
            }
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 1;
        }
        if (var_a5 != 0) {
            return 1;
        }
        if ((temp_f9_6 * var_f6) < (temp_f4_4 * var_f5)) {
            var_f5 = temp_f13_2 - temp_f8_3;
            var_a4 = 5;
            var_f6 = -temp_f4_4;
        }
block_20:
        temp_f8_4 = temp_f9_6 - var_f21;
        temp_f4_5 = temp_f4_4 - var_f23;
        sp4 = temp_f8_4;
        if (temp_f8_4 > 0.0f) {
            if (var_a5 != 0) {
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f4, $fcc4 */);
                var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f8, $fcc4 */);
                var_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $a6, $fcc4 */);
                goto block_23;
            }
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 1;
        }
        if (var_a5 != 0) {
            return 1;
        }
        if ((temp_f8_4 * var_f6) < (temp_f4_5 * var_f5)) {
            var_f5 = var_f21 - temp_f9_6;
            var_a4 = 1;
            var_f6 = -temp_f4_5;
        }
block_23:
        temp_f9_7 = temp_f8_4 + temp_f13_2;
        temp_f4_6 = temp_f25 + temp_f4_5;
        spC = temp_f9_7;
        if (temp_f9_7 > 0.0f) {
            if (var_a5 != 0) {
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f4, $fcc6 */);
                var_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f9, $fcc6 */);
                var_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $a7, $fcc6 */);
                var_f9 = second half of f64;
                goto block_26;
            }
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 1;
        }
        if (var_a5 != 0) {
            return 1;
        }
        var_f9 = second half of f64;
        if ((temp_f9_7 * var_f6) < (temp_f4_6 * var_f5)) {
            var_f8 = (second half of f64) - (bitwise f32) spB0;
            var_f10 = temp_f4_6 - temp_f16;
            var_f5 = -(second half of f64);
            var_f6 = -temp_f4_6;
            sp8 = var_f8;
            if (!(var_f8 > 0.0f)) {
                var_a4 = 3;
                goto block_51;
            }
            goto block_184;
        }
block_26:
        var_f8 = var_f9 - (bitwise f32) spB0;
        var_f10 = temp_f4_6 - temp_f16;
        sp8 = var_f8;
        if (var_f8 > 0.0f) {
            if (var_a5 != 0) {
                var_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $t0, $fcc0 */);
                var_t1 = var_a4 * 4;
                goto block_29;
            }
block_184:
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 1;
        }
block_51:
        if (var_a5 != 0) {
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 1;
        }
        var_t1 = var_a4 * 4;
        if ((var_f8 * var_f6) < (var_f10 * var_f5)) {
            sp20 = (bitwise f64) temp_f27;
            sp28 = (bitwise f64) temp_f18;
            sp30 = spC0;
            if (sp8 > 0.0f) {
                var_a7 = 0;
                var_a5_2 = 0;
                var_f4 = sp8;
                var_a6 = 2;
                goto block_30;
            }
            var_a7 = 0;
            var_f4 = sp8;
            var_a5_2 = 0;
            var_a6 = 2;
            goto block_56;
        }
block_29:
        var_f4 = *(sp + var_t1);
        var_a7 = var_a4 & 4;
        var_a5_2 = var_a4 & 1;
        var_a6 = var_a4 & 2;
        sp20 = M2C_ERROR(/* unknown instruction: movz.s $f16, $f27, $a7 */);
        sp28 = M2C_ERROR(/* unknown instruction: movz.s $f21, $f18, $a5 */);
        sp30 = M2C_ERROR(/* unknown instruction: movz.s $f19, $f15, $a6 */);
        if (var_f4 > 0.0f) {
block_30:
            M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f13, $f15 */);
            M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f13, $f19 */);
            M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f13, $f18 */);
            sp60 = (f64) arg0->unk9598;
            var_f19 = var_f4;
            sp58 = (f64) arg0->unk95A0;
            var_f18 = var_f4;
            var_f9_2 = var_f4;
            temp_f6 = arg0->unk9594 + M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f13, $f29 */);
            var_f21_2 = temp_f6;
            var_f10_2 = temp_f6;
        } else {
block_56:
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f18, $f21 */);
            M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f18, $f15 */);
            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f18, $f19 */);
            var_f9_2 = -var_f4;
            sp58 = second half of f64;
            var_f19 = var_f9_2;
            var_f18 = var_f9_2;
            var_f10_2 = -(arg0->unk9594 + M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f18, $f29 */));
            sp60 = (f64) arg0->unk9598;
            var_f21_2 = var_f10_2;
        }
        M2C_ERROR(/* unknown instruction: movf.s $f3, $f2, $fcc3 */);
        M2C_ERROR(/* unknown instruction: movf.s $f1, $f3, $fcc2 */);
        sp50 = (f64) arg0->unk9590;
        sp70 = M2C_ERROR(/* unknown instruction: movf.s $f2, $f1, $fcc0 */);
        temp_f27_2 = M2C_ERROR(/* unknown instruction: movf.s $f27, $f1, $fcc1 */);
        sp68 = M2C_ERROR(/* unknown instruction: movf.s $f0, $f1, $fcc7 */);
        if (var_a7 != 0) {
            var_f29 = -(bitwise f32) sp68;
            if (var_a6 != 0) {
                goto block_59;
            }
            goto block_155;
        }
        var_f29 = (bitwise f32) sp68;
        if (var_a6 == 0) {
block_155:
            var_f12 = (bitwise f32) sp70;
            var_f13 = second half of f64;
            if (var_a5_2 == 0) {
                goto block_156;
            }
            goto block_60;
        }
block_59:
        var_f13 = second half of f64;
        var_f12 = -(bitwise f32) sp70;
        if (var_a5_2 != 0) {
block_60:
            sp48 = (bitwise f64) var_f12;
            sp40 = (bitwise f64) arg0->unk958C;
            sp38 = (f64) arg0->unk9588;
            sp80 = (bitwise f64) arg0->unk959C;
            sp88 = (bitwise f64) -temp_f27_2;
        } else {
block_156:
            sp88 = (bitwise f64) temp_f27_2;
            sp48 = (bitwise f64) var_f12;
            sp40 = (bitwise f64) arg0->unk958C;
            sp38 = (f64) arg0->unk9588;
            sp80 = (bitwise f64) arg0->unk959C;
        }
        temp_f16_2 = M2C_ERROR(/* unknown instruction: madd.s $f16, $f4, $f29, $f11 */);
        temp_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f29, $f31 */);
        temp_f6_2 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f29, $f1 */);
        temp_f27_3 = temp_f16_2 * var_f13;
        spA0 = (bitwise f64) (var_f29 * temp_f11);
        temp_f15 = temp_f16_2 * var_f10_2;
        sp98 = (bitwise f64) (var_f29 * (bitwise f32) sp60);
        temp_f8_5 = var_f9_2 * temp_f5;
        sp90 = (bitwise f64) (var_f29 * (bitwise f32) sp38);
        temp_f12_2 = var_f9_2 * temp_f6_2;
        if (temp_f16_2 > 0.0f) {
            if (temp_f12_2 < temp_f15) {
                var_f10_2 = temp_f6_2;
                var_f9_2 = temp_f16_2;
            } else {
                var_f21_2 = M2C_ERROR(/* unknown instruction: movt.s $f21, $f6, $fcc7 */);
                var_f18 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f16, $fcc7 */);
            }
            if (temp_f8_5 < temp_f27_3) {
                var_f13 = temp_f5;
                var_f19 = temp_f16_2;
            } else {
                M2C_ERROR(/* unknown instruction: movt.s $f25, $f5, $fcc2 */);
                M2C_ERROR(/* unknown instruction: movt.s $f23, $f16, $fcc2 */);
            }
        } else {
            if (temp_f15 < temp_f12_2) {
                var_f9_2 = -temp_f16_2;
                var_f10_2 = -temp_f6_2;
            } else if (temp_f12_2 < temp_f15) {
                var_f18 = -temp_f16_2;
                var_f21_2 = -temp_f6_2;
            }
            if (temp_f27_3 < temp_f8_5) {
                var_f19 = -temp_f16_2;
                var_f13 = -temp_f5;
            } else if ((temp_f5 * var_f18) < (temp_f16_2 * var_f21_2)) {

            }
        }
        temp_f4_7 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f16, $f27, $f14 */);
        temp_f31_3 = (bitwise f32) sp48 * temp_f14;
        temp_f5_2 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f27, $f29 */);
        temp_f6_3 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f27, $f0 */);
        temp_f29 = (bitwise f32) sp48 * (bitwise f32) sp80;
        temp_f27_4 = (bitwise f32) sp48 * (bitwise f32) sp40;
        temp_f12_3 = var_f13 * temp_f4_7;
        temp_f11_2 = var_f10_2 * temp_f4_7;
        temp_f8_6 = temp_f5_2 * var_f19;
        temp_f15_2 = temp_f6_3 * var_f9_2;
        if (temp_f4_7 > 0.0f) {
            if (temp_f15_2 < temp_f11_2) {
                var_f10_2 = temp_f6_3;
                var_f9_2 = temp_f4_7;
            } else {
                var_f21_2 = M2C_ERROR(/* unknown instruction: movt.s $f21, $f6, $fcc6 */);
                var_f18 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f4, $fcc6 */);
            }
            if (temp_f8_6 < temp_f12_3) {
                var_f13 = temp_f5_2;
                var_f19 = temp_f4_7;
            } else {
                M2C_ERROR(/* unknown instruction: movt.s $f25, $f5, $fcc4 */);
                M2C_ERROR(/* unknown instruction: movt.s $f23, $f4, $fcc4 */);
            }
        } else {
            if (temp_f11_2 < temp_f15_2) {
                var_f9_2 = -temp_f4_7;
                var_f10_2 = -temp_f6_3;
            } else if ((temp_f6_3 * var_f18) < (var_f21_2 * temp_f4_7)) {
                var_f18 = -temp_f4_7;
                var_f21_2 = -temp_f6_3;
            }
            if (temp_f12_3 < temp_f8_6) {
                var_f19 = -temp_f4_7;
                var_f13 = -temp_f5_2;
            } else if ((temp_f5_2 * var_f18) < (var_f21_2 * temp_f4_7)) {

            }
        }
        temp_f4_8 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f14, $f17 */);
        temp_f5_3 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f14, $f0 */);
        temp_f6_4 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f14, $f15 */);
        temp_f12_4 = var_f13 * temp_f4_8;
        temp_f11_3 = var_f10_2 * temp_f4_8;
        temp_f8_7 = temp_f5_3 * var_f19;
        sp78 = (bitwise f64) ((second half of f64) * (bitwise f32) sp58);
        temp_f15_3 = temp_f6_4 * var_f9_2;
        if (temp_f4_8 > 0.0f) {
            if (temp_f15_3 < temp_f11_3) {
                var_f10_2 = temp_f6_4;
                var_f9_2 = temp_f4_8;
            } else {
                var_f21_2 = M2C_ERROR(/* unknown instruction: movt.s $f21, $f6, $fcc5 */);
                var_f18 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f4, $fcc5 */);
            }
            if (temp_f8_7 < temp_f12_4) {
                var_f13 = temp_f5_3;
                var_f19 = temp_f4_8;
            } else {
                M2C_ERROR(/* unknown instruction: movt.s $f25, $f5, $fcc6 */);
                M2C_ERROR(/* unknown instruction: movt.s $f23, $f4, $fcc6 */);
            }
        } else {
            if (temp_f11_3 < temp_f15_3) {
                var_f9_2 = -temp_f4_8;
                var_f10_2 = -temp_f6_4;
            } else if ((temp_f6_4 * var_f18) < (var_f21_2 * temp_f4_8)) {
                var_f18 = -temp_f4_8;
                var_f21_2 = -temp_f6_4;
            }
            if (temp_f12_4 < temp_f8_7) {
                var_f19 = -temp_f4_8;
                var_f13 = -temp_f5_3;
            } else if ((temp_f5_3 * var_f18) < (var_f21_2 * temp_f4_8)) {

            }
        }
        temp_f4_9 = temp_f4_8 - temp_f31_3;
        temp_f5_4 = temp_f5_3 - temp_f29;
        temp_f12_5 = var_f13 * temp_f4_9;
        temp_f11_4 = var_f10_2 * temp_f4_9;
        temp_f6_5 = temp_f6_4 - temp_f27_4;
        temp_f8_8 = temp_f5_4 * var_f19;
        temp_f15_4 = temp_f6_5 * var_f9_2;
        if (temp_f4_9 > 0.0f) {
            if (temp_f15_4 < temp_f11_4) {
                var_f10_2 = temp_f6_5;
                var_f9_2 = temp_f4_9;
            } else {
                var_f21_2 = M2C_ERROR(/* unknown instruction: movt.s $f21, $f6, $fcc4 */);
                var_f18 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f4, $fcc4 */);
            }
            if (temp_f8_8 < temp_f12_5) {
                var_f13 = temp_f5_4;
                var_f19 = temp_f4_9;
            } else {
                M2C_ERROR(/* unknown instruction: movt.s $f25, $f5, $fcc0 */);
                M2C_ERROR(/* unknown instruction: movt.s $f23, $f4, $fcc0 */);
            }
        } else {
            if (temp_f11_4 < temp_f15_4) {
                var_f9_2 = -temp_f4_9;
                var_f10_2 = -temp_f6_5;
            } else if ((temp_f6_5 * var_f18) < (var_f21_2 * temp_f4_9)) {
                var_f18 = -temp_f4_9;
                var_f21_2 = -temp_f6_5;
            }
            if (temp_f12_5 < temp_f8_8) {
                var_f19 = -temp_f4_9;
                var_f13 = -temp_f5_4;
            } else if ((temp_f5_4 * var_f18) < (var_f21_2 * temp_f4_9)) {

            }
        }
        temp_f4_10 = temp_f4_9 - (second half of f64);
        temp_f5_5 = temp_f5_4 - (bitwise f32) sp98;
        temp_f12_6 = var_f13 * temp_f4_10;
        temp_f6_6 = temp_f6_5 - (bitwise f32) sp90;
        temp_f11_5 = var_f10_2 * temp_f4_10;
        temp_f8_9 = temp_f5_5 * var_f19;
        temp_f15_5 = temp_f6_6 * var_f9_2;
        if (temp_f4_10 > 0.0f) {
            if (temp_f15_5 < temp_f11_5) {
                var_f10_2 = temp_f6_6;
                var_f9_2 = temp_f4_10;
            } else {
                var_f21_2 = M2C_ERROR(/* unknown instruction: movt.s $f21, $f6, $fcc3 */);
                var_f18 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f4, $fcc3 */);
            }
            if (temp_f8_9 < temp_f12_6) {
                var_f13 = temp_f5_5;
                var_f19 = temp_f4_10;
            } else {
                M2C_ERROR(/* unknown instruction: movt.s $f25, $f5, $fcc2 */);
                M2C_ERROR(/* unknown instruction: movt.s $f23, $f4, $fcc2 */);
            }
        } else {
            if (temp_f11_5 < temp_f15_5) {
                var_f9_2 = -temp_f4_10;
                var_f10_2 = -temp_f6_6;
            } else if ((temp_f6_6 * var_f18) < (var_f21_2 * temp_f4_10)) {
                var_f18 = -temp_f4_10;
                var_f21_2 = -temp_f6_6;
            }
            if (temp_f12_6 < temp_f8_9) {
                var_f19 = -temp_f4_10;
                var_f13 = -temp_f5_5;
            } else if ((temp_f5_5 * var_f18) < (var_f21_2 * temp_f4_10)) {

            }
        }
        temp_f4_11 = temp_f31_3 + temp_f4_10;
        temp_f5_6 = temp_f29 + temp_f5_5;
        temp_f12_7 = var_f13 * temp_f4_11;
        temp_f11_6 = var_f10_2 * temp_f4_11;
        temp_f6_7 = temp_f27_4 + temp_f6_6;
        temp_f8_10 = temp_f5_6 * var_f19;
        temp_f15_6 = temp_f6_7 * var_f9_2;
        if (temp_f4_11 > 0.0f) {
            if (temp_f15_6 < temp_f11_6) {
                var_f9_2 = temp_f4_11;
            } else {
                var_f21_2 = M2C_ERROR(/* unknown instruction: movt.s $f21, $f6, $fcc2 */);
                var_f18 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f4, $fcc2 */);
            }
            if (temp_f8_10 < temp_f12_7) {
                var_f13 = temp_f5_6;
                var_f19 = temp_f4_11;
            } else {
                M2C_ERROR(/* unknown instruction: movt.s $f25, $f5, $fcc4 */);
                M2C_ERROR(/* unknown instruction: movt.s $f23, $f4, $fcc4 */);
            }
            goto block_139;
        }
        if (temp_f11_6 < temp_f15_6) {
            var_f9_2 = -temp_f4_11;
        } else if ((temp_f6_7 * var_f18) < (var_f21_2 * temp_f4_11)) {
            var_f18 = -temp_f4_11;
            var_f21_2 = -temp_f6_7;
        }
        if (temp_f12_7 < temp_f8_10) {
            var_f19 = -temp_f4_11;
            var_f13 = -temp_f5_6;
            goto block_139;
        }
        var_f10_3 = second half of f64;
        if ((temp_f5_6 * var_f18) < (var_f21_2 * temp_f4_11)) {
block_139:
            var_f10_3 = second half of f64;
        }
        temp_f4_12 = temp_f4_11 - ((second half of f64) * temp_f17);
        temp_f6_8 = temp_f6_7 - ((second half of f64) * (bitwise f32) sp50);
        temp_f12_8 = var_f13 * temp_f4_12;
        temp_f15_7 = temp_f6_8 * var_f9_2;
        temp_f5_7 = temp_f5_6 - (bitwise f32) sp78;
        temp_f11_7 = var_f10_3 * temp_f4_12;
        temp_f8_11 = temp_f5_7 * var_f19;
        if (temp_f4_12 > 0.0f) {
            if (temp_f15_7 < temp_f11_7) {
                var_f10_3 = temp_f6_8;
                var_f9_2 = temp_f4_12;
            } else {
                var_f21_2 = M2C_ERROR(/* unknown instruction: movt.s $f21, $f6, $fcc1 */);
                var_f18 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f4, $fcc1 */);
            }
            if (temp_f8_11 < temp_f12_8) {

            } else {
                M2C_ERROR(/* unknown instruction: movt.s $f25, $f5, $fcc6 */);
                M2C_ERROR(/* unknown instruction: movt.s $f23, $f4, $fcc6 */);
            }
        } else {
            if (temp_f11_7 < temp_f15_7) {
                var_f9_2 = -temp_f4_12;
                var_f10_3 = -temp_f6_8;
            } else if ((temp_f6_8 * var_f18) < (var_f21_2 * temp_f4_12)) {
                var_f18 = -temp_f4_12;
                var_f21_2 = -temp_f6_8;
            }
            if (temp_f12_8 < temp_f8_11) {

            } else if ((temp_f5_7 * var_f18) < (var_f21_2 * temp_f4_12)) {

            }
        }
        if (!((arg0->unk19D94 * 2.0f) < ((var_f21_2 / var_f18) - (var_f10_3 / var_f9_2)))) {
            return M2C_ERROR(/* unknown instruction: movf $v0, $zero, $fcc7 */);
        }
        return 1;
    }
    return 1;
}

s32 __glOdysseyIsBboxClippedRange2(void *arg0, void *arg1) {
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f7_3;
    f32 var_f4;

    temp_f7 = arg1->unk18;
    if ((arg0->unk9588 * temp_f7) < 0.0f) {

    }
    temp_f7_2 = arg1->unk1C;
    if ((arg0->unk9598 * temp_f7) < 0.0f) {

    }
    if ((arg0->unk958C * temp_f7_2) > 0.0f) {
        M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f7 */);
    } else {
        M2C_ERROR(/* unknown instruction: nmsub.s $f4, $f4, $f9, $f7 */);
    }
    if ((arg0->unk959C * temp_f7_2) > 0.0f) {
        M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f7 */);
    } else {
        M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f5, $f9, $f7 */);
    }
    temp_f7_3 = arg1->unk20;
    if ((arg0->unk9590 * temp_f7_3) > 0.0f) {
        var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f7 */);
    } else {
        var_f4 = M2C_ERROR(/* unknown instruction: nmsub.s $f4, $f4, $f9, $f7 */);
    }
    if ((arg0->unk95A0 * temp_f7_3) > 0.0f) {
        M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f7 */);
    } else {
        M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f5, $f9, $f7 */);
    }
    if (!((f32) ((second half of f64) * ((f64) fabsf(arg0->unk95C4) * 2.0)) < var_f4)) {
        return M2C_ERROR(/* unknown instruction: movf $v0, $zero, $fcc7 */);
    }
    return 1;
}

s32 __glOdysseyDlistPush(s64 arg0, u8 arg2, s32 arg3, s32 arg6) {
    s64 sp28;
    s64 sp8;
    s64 sp0;
    s32 temp_a1;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_v0;
    s64 var_a0;
    s64 var_v0_2;
    u8 temp_a2;
    u8 temp_a6;
    u8 temp_a7;
    u8 var_a2;
    void *temp_a0;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_v0;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg6;
    temp_v0 = *(void **)0x1010;
    temp_a1 = temp_v0->unk16988;
    if (!(temp_a1 & ~0x10)) {
        var_a2 = temp_v0->unkC94;
        var_a6 = 1;
        var_a3 = 1;
        if (!(temp_v0->unk169F0 & ((var_a2 == 0) ? 1 : 2))) {
            temp_a7 = temp_v0->unk169FC;
            if (temp_a7 != 0) {
                var_v0_2 = arg0 + 4;
                if (temp_v0->unk169FD != 0) {
                    return __glOdysseyDlistInterpretPreclip(arg0, temp_a1, var_a2, 1, arg0, 0x10000, 1U, temp_a7);
                }
                goto block_10;
            }
            temp_a0 = temp_v0->unk16A00;
            if ((temp_a0->unk40 != 0) && (temp_v0->unk95B8 == temp_a0->unk30) && (temp_v0->unk95BC == temp_a0->unk34) && (temp_v0->unk95C0 == temp_a0->unk38) && (temp_v0->unk95C4 == temp_a0->unk3C)) {
                temp_v0->unk169FD = 0U;
                temp_v0->unk169FC = 1U;
            } else {
                temp_a0->unk40 = 0U;
            }
            if (temp_v0->unk16988 & 0x10) {
                temp_a1_2 = temp_v0->unk169F8;
                temp_a2 = temp_a1_2->unk24;
                sp0 = (s64) temp_v0;
                if (temp_a2 != 0) {
                    sp28 = arg0;
                    temp_v0->unk169FC = 1U;
                    if (__glOdysseyIsBboxClippedRange((void *) sp0, temp_a1_2, temp_a2, 1, arg0, 0x10000, 1, temp_a7) != 0) {
                        if (sp0->unk19DB8 == 0x1101) {
                            temp_v0->unk169FF = 1;
                        }
                        temp_v0->unk169FD = 1U;
                        var_v0 = __glOdysseyDlistInterpretPreclip(arg0, 1);
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        return var_v0;
                    }
                    temp_v0->unk169FD = 0U;
                    goto block_9;
                }
                var_v0 = __glOdysseyDlistInterpretPreclip(arg0, (s32) temp_a1_2, temp_a2, 1, arg0, 0x10000, 1U, temp_a7);
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return var_v0;
            }
            if (!(temp_v0->unk169F4 & 0x10) || (temp_v0->unk19DBC != 1)) {
                goto block_9;
            }
            temp_a1_3 = temp_v0->unk169F8;
            temp_a6 = temp_a1_3->unk24;
            sp0 = (s64) temp_v0;
            if (temp_a6 != 0) {
                sp28 = arg0;
                temp_v0->unk169FC = 1U;
                if (__glOdysseyIsBboxClippedRange2((void *) sp0, temp_a1_3, var_a2, 1, arg0, 0x10000, temp_a6, 1) != 0) {
                    temp_v0->unk169FD = 1U;
                    temp_v0->unk169FF = 1;
                    var_v0 = __glOdysseyDlistInterpretPreclip(arg0);
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    return var_v0;
                }
                temp_v0->unk169FD = 0U;
block_9:
                var_v0_2 = arg0 + 4;
block_10:
                var_s0 = arg0->unk0;
                var_a0 = var_v0_2;
                if (var_v0_2 & 4) {
                    var_s0 -= 1;
                    var_a0 = arg0 + 8;
                    HQ2_READ_FIFO = arg0->unk4;
                }
                if (var_s0 != 0) {
                    sp8 = var_a0;
                    __glOdysseyPushLoop(var_s0, sp8);
                }
                return var_a0 + (var_s0 * 4);
            }
            var_v0 = __glOdysseyDlistInterpretPreclip(arg0, (s32) temp_a1_3, var_a2, 1, arg0, 0x10000, temp_a6, temp_a7);
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return var_v0;
        }
    }
    var_v0 = __glOdysseyDlistInterpret(arg0, temp_a1, var_a2, var_a3, arg0, 0x10000, var_a6);
    return var_v0;
}

void *__glOdyle_Begin(s32 *arg0) {
    *(? (**)(s32))0x106C(*arg0);
    return arg0 + 4;
}

s32 __glOdyle_End(s32 arg0) {
    *(? (**)())0x107C();
    return arg0;
}

s32 Bogus(s32 arg0) {
    return arg0;
}

void __glOdysseyDlistInitState(void *arg0, void *arg7) {
    s64 sp10;
    ? *var_a4;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *var_a1;
    s32 *var_a6;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    void *var_a5;
    void *var_a7;
    void *var_t9;

    var_a7 = arg7;
    *(s32 *)0x1034 = 0;
    *(s32 *)0x1030 = 0;
    *(s32 *)0x1028 = 0;
    *(s32 *)0x102C = 0;
    arg0->unk13DC = 0;
    arg0->unk13D8 = 0;
    arg0->unk13D4 = 0;
    arg0->unk13D0 = 0;
    arg0->unk13CC = 0;
    arg0->unk13B8 = __glOdysseyDlistPush;
    arg0->unk13B4 = (s32) (M2C_ERROR(/* Read from unset register $t9 */) - 0x3C60);
    var_a5 = arg0 + 0x1D20;
    var_a6 = arg0 + 0x1D28;
    var_a1 = &__glOdylc_Vertex2dBbox;
    if ((arg0->unk19DB4 != 0) && (arg0->unk19DC4 > 0)) {
        var_t9 = arg0 + 0x10000;
        arg0->unk169BC = -3.4028235e38f;
        arg0->unk169C4 = -3.4028235e38f;
        arg0->unk169CC = -3.4028235e38f;
        arg0->unk169D0 = 0.0f;
        arg0->unk169D4 = 0.0f;
        arg0->unk169D8 = 0.0f;
        arg0->unk16990 = -3.4028235e38f;
        arg0->unk16998 = -3.4028235e38f;
        arg0->unk169A0 = -3.4028235e38f;
        arg0->unk169B8 = 3.4028235e38f;
        arg0->unk169C0 = 3.4028235e38f;
        arg0->unk169C8 = 3.4028235e38f;
        arg0->unk169DC = 1;
        arg0->unk169E0 = 0;
        arg0->unk1698C = 3.4028235e38f;
        arg0->unk16994 = 3.4028235e38f;
        arg0->unk1699C = 3.4028235e38f;
        var_a3 = 0x18;
        var_a4 = &__glOdylc_vertexBboxDispatchTable;
        var_a2 = 0;
        if (arg0->unk1D20 != &__glOdylc_Vertex2dBbox) {
            var_a7 = &__glOdylc_vertexBboxDispatchTable + 8;
            do {
                var_a1 = var_a2 + var_a5;
                *var_a1 = *(var_a2 + &__glOdylc_vertexBboxDispatchTable);
                *(var_a2 + (arg0 + 0x1D24)) = *(var_a2 + (&__glOdylc_vertexBboxDispatchTable + 4));
                var_a3 -= 4;
                *(var_a2 + var_a6) = *(var_a2 + var_a7);
                temp_v0 = var_a2 + (arg0 + 0x1D2C);
                temp_at = *(var_a2 + (&__glOdylc_vertexBboxDispatchTable + 0xC));
                var_a2 += 0x10;
                *temp_v0 = temp_at;
            } while (var_a3 > 0);
        }
    } else {
        var_a6 = &__glOdylc_Vertex2dBbox;
        var_t9 = arg0 + 0x10000;
        arg0->unk169DC = 0;
        var_a2 = 0x18;
        var_a3_2 = 0;
        var_a5 = arg0->unk1D20;
        var_a4 = arg0 + 0x1D20;
        var_a7 = arg0 + 0x1D2C;
        if (var_a5 == &__glOdylc_Vertex2dBbox) {
            var_a6 = arg0 + 0x1D24;
            var_a5 = &__glOdylc_vertexDispatchTable + 4;
            do {
                var_a1 = var_a3_2 + var_a4;
                *var_a1 = *(var_a3_2 + &__glOdylc_vertexDispatchTable);
                *(var_a3_2 + var_a6) = *(var_a3_2 + var_a5);
                var_a2 -= 4;
                *(var_a3_2 + (arg0 + 0x1D28)) = *(var_a3_2 + (&__glOdylc_vertexDispatchTable + 8));
                temp_v0_2 = var_a3_2 + var_a7;
                temp_at_2 = *(var_a3_2 + (&__glOdylc_vertexDispatchTable + 0xC));
                var_a3_2 += 0x10;
                *temp_v0_2 = temp_at_2;
            } while (var_a2 > 0);
        }
    }
    var_a0 = *(void *)0x1028;
    var_a3_3 = var_a0 < 1;
    if (var_a3_3 != 0) {
        sp10 = (s64) var_t9;
        temp_v0_3 = __glSPDlistSpace(1, var_a1, var_a2, var_a3_3, var_a4, var_a5, var_a6, var_a7);
        var_a0 = temp_v0_3;
        var_a3_3 = temp_v0_3 < 1;
    }
    if (var_a3_3 != 0) {
        var_a2_2 = 0;
    } else {
        var_a0 -= 1;
        var_a2_2 = *(void *)0x1030;
    }
    *(void *)0x1030 = (s32) (var_a2_2 + 4);
    *(void *)0x1028 = var_a0;
    *(void *)0x1034 = 0;
    var_t9->unk69EC = 0;
    var_t9->unk69E8 = 1;
    var_t9->unk69E4 = 0;
    if (arg0->unk19DE4 != 0) {
        return;
    }
    var_t9->unk69E8 = 0xFF676980;
}

void *callSetError(s32 *arg0) {
    __glSetError(*arg0);
    return arg0 + 4;
}

void __glOdylc_Error(s64 arg0) {
    s64 sp0;
    s32 *temp_a1;
    s32 *temp_a3;
    s32 *var_a1;
    s32 *var_s0;
    s32 temp_a2;
    s32 temp_a4;
    s32 var_a4;
    s32 var_s1;
    s64 temp_s1;
    s64 temp_v0;
    s64 var_a4_2;
    void *temp_a5;
    void *temp_a6;

    temp_a3 = *(s32 **)0x1030;
    temp_a5 = *(void **)0x1010;
    sp0 = arg0;
    temp_a4 = *(s32 *)0x1034;
    if (temp_a4 != 0) {
        temp_a6 = temp_a3 + (temp_a4 * 0xFFFFFFFC);
        temp_a6->unk-4 = temp_a4;
        temp_a2 = *(void *)0x1034;
        __glsplc_AddIlist(temp_a5->unk13B8, (temp_a3 + (temp_a2 * 0xFFFFFFFC)) - 4, temp_a2, temp_a3, temp_a4, temp_a5, temp_a6);
        var_a4 = *(s32 *)0x1028;
    } else {
        *(void *)0x1030 = (s32 *) (temp_a3 - 4);
        var_a4 = *(void *)0x1028 + 1;
        *(void *)0x1028 = var_a4;
    }
    var_s1 = var_a4 < 1;
    unksp10 = (s64) var_a4;
    if (var_s1 != 0) {
        temp_v0 = __glSPDlistSpace(1);
        unksp10 = temp_v0;
        var_s1 = temp_v0 < 1;
    }
    var_s0 = NULL;
    if (var_s1 == 0) {
        var_s0 = *(void *)0x1030;
        temp_s1 = unksp10 - 1;
        unksp10 = temp_s1;
        var_s1 = temp_s1 < 1;
    }
    __glsplc_AddIlist(&sub_0d970000 + 0x4C20, var_s0);
    temp_a1 = var_s0 + 4;
    *(void *)0x1030 = temp_a1;
    var_a4_2 = unksp10;
    *(void *)0x1028 = (s32) var_a4_2;
    if (var_s1 != 0) {
        var_a4_2 = __glSPDlistSpace(1, temp_a1);
    }
    if (var_a4_2 > 0) {
        var_a4_2 -= 1;
        var_a1 = *(void *)0x1030;
    } else {
        var_a1 = NULL;
    }
    *(void *)0x1030 = (s32 *) (var_a1 + 4);
    *(void *)0x1028 = (s32) var_a4_2;
    *(void *)0x1034 = 0;
    if (var_s0 != NULL) {
        *var_s0 = (s32) sp0;
    }
}

s32 *__glSPDlalloc(s32 arg0, s32 arg1) {
    s64 sp8;
    s64 sp0;
    s32 *temp_a3;
    s32 *temp_v0;
    s32 *var_s0;
    s32 *var_v0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a0;
    s32 var_a1;
    s64 temp_v0_2;
    s64 var_a0_2;
    void *temp_s1;

    temp_v0 = *(s32 **)0x1030;
    temp_s1 = *(void **)0x1010;
    temp_a4 = *(s32 *)0x1034;
    if (temp_a4 != 0) {
        temp_a3 = temp_v0 + (temp_a4 * 0xFFFFFFFC);
        temp_a3->unk-4 = temp_a4;
        temp_a2 = *(void *)0x1034;
        __glsplc_AddIlist(temp_s1->unk13B8, (temp_v0 + (temp_a2 * 0xFFFFFFFC)) - 4, temp_a2, temp_a3, temp_a4);
        var_a0 = *(s32 *)0x1028;
    } else {
        *(void *)0x1030 = (s32 *) (temp_v0 - 4);
        var_a0 = *(void *)0x1028 + 1;
        *(void *)0x1028 = var_a0;
    }
    temp_a1 = arg0 >> 2;
    sp8 = (s64) temp_a1;
    var_a1 = var_a0 < temp_a1;
    sp0 = (s64) var_a0;
    if (var_a1 != 0) {
        temp_v0_2 = __glSPDlistSpace((sp8 >= 0x400) ? sp8 : 1, (s32 *) var_a1);
        sp0 = temp_v0_2;
        var_a1 = temp_v0_2 < sp8;
    }
    if (var_a1 != 0) {
        var_s0 = NULL;
    } else {
        var_s0 = *(void *)0x1030;
        sp0 -= sp8;
    }
    __glsplc_AddIlist(*(temp_s1->unk13B4 + (arg1 * 4)), var_s0);
    *(void *)0x1028 = (s32) sp0;
    var_a0_2 = sp0;
    *(void *)0x1030 = &var_s0[sp8];
    if (sp0 <= 0) {
        var_a0_2 = __glSPDlistSpace(1);
    }
    if (var_a0_2 > 0) {
        var_a0_2 -= 1;
        var_v0 = *(void *)0x1030;
    } else {
        var_v0 = NULL;
    }
    *(void *)0x1030 = (s32 *) (var_v0 + 4);
    *(void *)0x1028 = (s32) var_a0_2;
    *(void *)0x1034 = 0;
    if (arg1 != 0x16) {
        temp_s1->unk169E4 = 0;
        return var_s0;
    }
    temp_a4_2 = temp_s1->unk169E8 + 1;
    temp_s1->unk169E8 = temp_a4_2;
    if (temp_a4_2 != 1) {
        temp_s1->unk169E4 = 0;
        return var_s0;
    }
    return var_s0;
}

s32 *__glSPDlalloc2(s64 arg0, s32 arg1) {
    s64 sp48;
    s64 sp40;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_a3;
    s32 *var_s0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_s0;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    s32 var_v0_2;
    s64 temp_s0_2;
    s64 temp_t8;
    s64 var_a0_2;
    s64 var_v0;
    void *temp_s1;

    temp_a4 = *(s32 *)0x1030;
    temp_s1 = *(void **)0x1010;
    temp_a5 = *(s32 *)0x1034;
    var_v0 = arg0;
    if (temp_a5 != 0) {
        temp_a3 = temp_a4 + (temp_a5 * 0xFFFFFFFC);
        temp_a3->unk-4 = temp_a5;
        temp_a2 = *(void *)0x1034;
        sp40 = arg0;
        __glsplc_AddIlist(temp_s1->unk13B8, (temp_a4 + (temp_a2 * 0xFFFFFFFC)) - 4, temp_a2, temp_a3, temp_a4, (void *) temp_a5);
        var_v0 = sp40;
        var_a0 = *(s32 *)0x1028;
        var_a5 = *(void *)0x1030;
    } else {
        var_a5 = temp_a4 - 4;
        *(void *)0x1030 = var_a5;
        var_a0 = *(void *)0x1028 + 1;
        *(void *)0x1028 = var_a0;
    }
    temp_s0 = var_v0 >> 2;
    temp_t8 = (var_a5 >> 2) & 1;
    sp8 = (s64) temp_s0;
    temp_s0_2 = temp_s0 + temp_t8;
    var_a4 = var_a0 < temp_s0_2;
    var_a1 = var_a0;
    sp0 = temp_t8;
    if (var_a4 != 0) {
        temp_v0 = __glSPDlistSpace((temp_s0_2 >= 0x400) ? temp_s0_2 : 1, (s32 *) var_a1);
        var_a1 = temp_v0;
        var_a4 = temp_v0 < temp_s0_2;
    }
    sp48 = temp_s0_2;
    if (var_a4 != 0) {
        var_s0 = NULL;
        sp10 = (s64) var_a1;
    } else {
        temp_a4_2 = *(void *)0x1030;
        sp10 = var_a1 - sp48;
        var_s0 = (s32 *) temp_a4_2;
        if (sp0 != 0) {
            var_s0 = (temp_a4_2 & 4) ? (temp_a4_2 + 4) : var_s0;
        }
    }
    __glsplc_AddIlist(*(temp_s1->unk13B4 + (arg1 * 4)), var_s0);
    *(void *)0x1028 = (s32) sp10;
    var_a0_2 = sp10;
    *(void *)0x1030 = (s32) &var_s0[sp8];
    if (sp10 <= 0) {
        var_a0_2 = __glSPDlistSpace(1);
    }
    if (var_a0_2 > 0) {
        var_a0_2 -= 1;
        var_v0_2 = *(void *)0x1030;
    } else {
        var_v0_2 = 0;
    }
    *(void *)0x1030 = (s32) (var_v0_2 + 4);
    *(void *)0x1028 = (s32) var_a0_2;
    *(void *)0x1034 = 0;
    if (arg1 != 0x16) {
        temp_s1->unk169E4 = 0;
        return var_s0;
    }
    temp_a4_3 = temp_s1->unk169E8 + 1;
    temp_s1->unk169E8 = temp_a4_3;
    if (temp_a4_3 != 1) {
        temp_s1->unk169E4 = 0;
        return var_s0;
    }
    return var_s0;
}

void RemoveIlists(s32 arg0) {
    s64 sp8;
    s64 sp0;
    s32 temp_a5_2;
    s32 temp_v0;
    s64 temp_a2;
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    sp8 = (s64) temp_a5;
    temp_a5_2 = temp_a5->unk13DC;
    if (arg0 >= temp_a5_2) {
        return;
    }
    temp_a2 = temp_a5_2 - arg0;
    sp0 = temp_a2;
    temp_v0 = sp8->unk8(sp8, sp8->unk13D8, temp_a2 * 8, arg0, temp_a5_2);
    sp8->unk13DC = (s32) sp0;
    sp8->unk13D8 = temp_v0;
}

void __glsplc_Begin(s64 arg0, s32 arg3, u32 arg4, void *arg5, s32 arg6, void *arg7) {
    s64 sp8;
    s64 sp0;
    s32 *temp_t3;
    s32 *temp_v0_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a6;
    s64 var_a4_2;
    u32 var_a4;
    void *temp_a2_2;
    void *temp_a5;
    void *temp_a6;
    void *temp_v0;
    void *var_a5;
    void *var_a7;

    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_v0 = *(void **)0x1010;
    sp8 = arg0;
    if (temp_v0->unk169E4 != 0) {
        var_a4 = 1;
        if (temp_v0->unk169E8 == 1) {
            var_a3 = *(s32 *)0x1034;
            if (var_a3 == 0) {
                var_a4 = temp_v0->unk13DC;
                var_a6 = var_a4 * 8;
                var_a5 = temp_v0->unk13D8 + var_a6;
                if (var_a4 >= 3U) {
                    var_a7 = var_a5->unk-8;
                    if ((var_a5->unk-10 == temp_v0->unk13B8) && (var_a7 == temp_v0->unk13B4->unk58) && (temp_v0->unk169EC == 0) && (sp8 != 2)) {
                        temp_t3 = var_a5->unk-C;
                        temp_a4 = *temp_t3;
                        temp_a6 = *(void **)0x1030;
                        if (temp_a6 != (temp_t3 + (temp_a4 * 4) + 8)) {
                            __glSPDlalloc2(1, var_a3, temp_a4, var_a5, temp_a6, var_a7);
                        } else {
                            temp_a3 = var_a3 + temp_a4;
                            *(void *)0x1034 = temp_a3;
                            *(void *)0x1030 = (void *) (temp_a6 - 4);
                            temp_a2 = *(s32 *)0x1028 + 1;
                            *(void *)0x1028 = temp_a2;
                            __glSPDlalloc2(2, temp_a2, temp_a3, (void *) temp_a4, var_a5, temp_a6, var_a7);
                        }
                        var_a3_2 = *(void *)0x1028;
                        temp_a5 = *(void *)0x1030;
                        if (*(void *)0x1034 != 0) {
                            if (var_a3_2 < 3) {
                                sp0 = 0;
                                unksp20 = (s64) temp_a5;
                                goto block_22;
                            }
                            var_a4_2 = 0;
                            goto block_24;
                        }
                        var_a4_2 = ((s32) temp_a5 & 4) != 0;
                        if (var_a3_2 < (var_a4_2 + 3)) {
                            unksp20 = (s64) temp_a5;
                            sp0 = var_a4_2;
block_22:
                            temp_v0_2 = __glSPDlistSpace(0);
                            var_a3_2 = temp_v0_2;
                            if (temp_v0_2 != 0) {
                                var_a4_2 = ((s32) *(void *)0x1030 & 4) ? 1 : sp0;
block_24:
                                goto block_25;
                            }
                            *(void *)0x1030 = (void *) (unksp20 - 4);
                            *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
                            return;
                        }
block_25:
                        temp_a2_2 = *(void *)0x1030 + (var_a4_2 * 4);
                        temp_a2_2->unk0 = 0x14001;
                        temp_a2_2->unk4 = 0x14400;
                        temp_a2_2->unk8 = (s32) sp8;
                        *(void *)0x1030 = (void *) (temp_a2_2 + 0xC);
                        *(void *)0x1028 = (s32) ((var_a3_2 - var_a4_2) - 3);
                        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
                        temp_v0->unk169E8 = 0;
                        goto block_14;
                    }
                }
            }
        }
    }
    temp_v0_3 = __glSPDlalloc(4, 3, var_a3, var_a4, var_a5, var_a6, var_a7);
    if (temp_v0_3 != NULL) {
        *temp_v0_3 = (s32) sp8;
        if (temp_v0->unk169E8 > 0) {
            temp_v0->unk169E8 = 0;
            temp_v0->unk169E4 = 1U;
        } else {
            temp_v0->unk169E4 = 0U;
        }
block_14:
        temp_v0->unk169EC = (u8) (sp8 == 2);
        if (temp_v0->unk169DC != 0) {
            temp_v0->unk169A0 = -3.4028235e38f;
            temp_v0->unk16998 = -3.4028235e38f;
            temp_v0->unk16990 = -3.4028235e38f;
            temp_v0->unk1699C = 3.4028235e38f;
            temp_v0->unk16994 = 3.4028235e38f;
            temp_v0->unk1698C = 3.4028235e38f;
        }
    }
}

void __glOdysplc_End(f32 fparg0, f32 fparg1, f32 fparg2) {
    f32 temp_f10;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    void *temp_a1;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    temp_a1 = *(void **)0x1010;
    if (temp_a1->unk169DC != 0) {
        temp_f6 = temp_a1->unk1698C;
        if (temp_f6 < temp_a1->unk169B8) {
            temp_a1->unk169B8 = temp_f6;
        }
        temp_f9 = temp_a1->unk16990;
        if (temp_a1->unk169BC < temp_f9) {
            temp_a1->unk169BC = temp_f9;
        }
        temp_f5 = temp_a1->unk16994;
        if (temp_f5 < temp_a1->unk169C0) {
            temp_a1->unk169C0 = temp_f5;
        }
        temp_f10 = temp_a1->unk16998;
        if (temp_a1->unk169C4 < temp_f10) {
            temp_a1->unk169C4 = temp_f10;
        }
        temp_f7 = temp_a1->unk1699C;
        if (temp_f7 < temp_a1->unk169C8) {
            temp_a1->unk169C8 = temp_f7;
        }
        temp_f8 = temp_a1->unk169A0;
        temp_f4 = temp_f9 - temp_f6;
        if (temp_a1->unk169CC < temp_f8) {
            temp_a1->unk169CC = temp_f8;
        }
        var_f12 = temp_a1->unk169D0;
        if (var_f12 < temp_f4) {
            temp_a1->unk169D0 = temp_f4;
        }
        var_f13 = temp_a1->unk169D4;
        temp_f4_2 = temp_f10 - temp_f5;
        if (var_f13 < temp_f4_2) {
            temp_a1->unk169D4 = temp_f4_2;
        }
        var_f14 = temp_a1->unk169D8;
        temp_f4_3 = temp_f8 - temp_f7;
        if (var_f14 < temp_f4_3) {
            temp_a1->unk169D8 = temp_f4_3;
        }
    }
    __glsplc_End(temp_a1 + 0x10000, 0x10000, var_f12, var_f13, var_f14);
}

void __glOdysplc_CallList(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_CallList();
}

void __glOdysplc_CallLists(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_CallLists();
}

void __glOdysplc_PopAttrib(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_PopAttrib();
}

void __glOdysplc_EvalCoord1d(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord1d();
}

void __glOdysplc_EvalCoord1dv(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord1dv();
}

void __glOdysplc_EvalCoord1f(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord1f();
}

void __glOdysplc_EvalCoord1fv(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord1fv();
}

void __glOdysplc_EvalCoord2d(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord2d();
}

void __glOdysplc_EvalCoord2dv(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord2dv();
}

void __glOdysplc_EvalCoord2f(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord2f();
}

void __glOdysplc_EvalCoord2fv(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalCoord2fv();
}

void __glOdysplc_EvalMesh1(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalMesh1();
}

void __glOdysplc_EvalMesh2(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalMesh2();
}

void __glOdysplc_EvalPoint1(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalPoint1();
}

void __glOdysplc_EvalPoint2(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_EvalPoint2();
}

void __glOdysplc_Frustum(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Frustum();
}

void __glOdysplc_Ortho(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Ortho();
}

void __glOdysplc_LoadIdentity(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_LoadIdentity();
}

void __glOdysplc_LoadMatrixf(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_LoadMatrixf();
}

void __glOdysplc_LoadMatrixd(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_LoadMatrixd();
}

void __glOdysplc_MultMatrixf(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_MultMatrixf();
}

void __glOdysplc_MultMatrixd(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_MultMatrixd();
}

void __glOdysplc_PopMatrix(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_PopMatrix();
}

void __glOdysplc_Rotated(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Rotated();
}

void __glOdysplc_Rotatef(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Rotatef();
}

void __glOdysplc_Scaled(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Scaled();
}

void __glOdysplc_Scalef(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Scalef();
}

void __glOdysplc_Translated(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Translated();
}

void __glOdysplc_Translatef(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Translatef();
}

void __glOdysplc_Viewport(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_Viewport();
}

void __glOdysplc_DrawElements(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_DrawElements();
}

void __glOdysplc_DrawArraysEXT(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glsplc_DrawArraysEXT();
}

void __glOdyim_ArrayElementEXT(void) {
    (*(void **)0x1010)->unk169DC = 0;
    __glim_ArrayElementEXT();
}

void __glsplc_AddSentinel(void) {
    s32 *temp_a3;
    s32 temp_a2;
    s32 temp_a4;
    void *temp_a5;
    void *temp_a6;

    temp_a3 = *(s32 **)0x1030;
    temp_a4 = *(s32 *)0x1034;
    temp_a5 = *(void **)0x1010;
    if (temp_a4 != 0) {
        temp_a6 = temp_a3 + (temp_a4 * 0xFFFFFFFC);
        temp_a6->unk-4 = temp_a4;
        temp_a2 = *(void *)0x1034;
        __glsplc_AddIlist(temp_a5->unk13B8, (temp_a3 + (temp_a2 * 0xFFFFFFFC)) - 4, temp_a2, temp_a3, temp_a4, temp_a5, temp_a6);
    } else {
        *(void *)0x1030 = (s32 *) (temp_a3 - 4);
        *(void *)0x1028 = (s32) (*(s32 *)0x1028 + 1);
    }
    __glsplc_AddIlist(&__glsple_Sentinel, NULL);
}

void ExecuteDlist(void *arg0, void *arg1) {
    s32 *temp_v0;
    s32 temp_a3;

    temp_v0 = arg1->unk14;
    unksp8 = (s64) temp_v0;
    temp_a3 = *temp_v0 & 3;
    arg0->unk169F0 = temp_a3;
    arg0->unk16A04 = -1;
    arg0->unk16A00 = temp_v0;
    arg0->unk169FF = 0U;
    arg0->unk169FE = 0U;
    arg0->unk169FC = 0;
    arg0->unk169F8 = (void *) (temp_v0 + 4);
    arg0->unk169F4 = (s32) (*temp_v0 & 0x1C);
    __glSPInterpret(arg1->unk10, 0x182480, temp_a3);
    if (arg0->unk169FF != 0) {
        if (arg0->unk169FE != 0) {
            unksp8->unk40 = 0;
            return;
        }
        unksp8->unk40 = 1;
        unksp8->unk30 = (f32) arg0->unk95B8;
        unksp8->unk34 = (f32) arg0->unk95BC;
        unksp8->unk38 = (f32) arg0->unk95C0;
        unksp8->unk3C = (f32) arg0->unk95C4;
    }
}

void ExecuteDlistNomem(void) {
    __glSetError(0x505);
}

void makeDLState(void *arg0, void *arg1) {
    s64 sp10;
    f32 temp_f10;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    void *temp_v0;

    sp10 = (s64) arg0;
    temp_v0 = arg0->unk1398(0x44);
    arg1->unk14 = temp_v0;
    if (temp_v0 != NULL) {
        if (sp10->unk169DC != 0) {
            if ((u32) sp10->unk169E0 < (u32) sp10->unk19DC4) {
                temp_v0->unk28 = 0;
            } else {
                temp_f10 = sp10->unk1698C;
                if (temp_f10 < sp10->unk169B8) {
                    sp10->unk169B8 = temp_f10;
                }
                temp_f9 = sp10->unk16990;
                if (sp10->unk169BC < temp_f9) {
                    sp10->unk169BC = temp_f9;
                }
                temp_f6 = sp10->unk16994;
                if (temp_f6 < sp10->unk169C0) {
                    sp10->unk169C0 = temp_f6;
                }
                temp_f8 = sp10->unk16998;
                if (sp10->unk169C4 < temp_f8) {
                    sp10->unk169C4 = temp_f8;
                }
                temp_f7 = sp10->unk1699C;
                temp_f4 = temp_f9 - temp_f10;
                if (temp_f7 < sp10->unk169C8) {
                    sp10->unk169C8 = temp_f7;
                }
                temp_f5 = sp10->unk169A0;
                if (sp10->unk169CC < temp_f5) {
                    sp10->unk169CC = temp_f5;
                }
                if (sp10->unk169D0 < temp_f4) {
                    sp10->unk169D0 = temp_f4;
                }
                temp_f4_2 = temp_f8 - temp_f6;
                if (sp10->unk169D4 < temp_f4_2) {
                    sp10->unk169D4 = temp_f4_2;
                }
                temp_f4_3 = temp_f5 - temp_f7;
                if (sp10->unk169D8 < temp_f4_3) {
                    sp10->unk169D8 = temp_f4_3;
                }
                temp_v0->unk4 = (f32) sp10->unk169B8;
                temp_v0->unk8 = (f32) sp10->unk169BC;
                temp_v0->unkC = (f32) sp10->unk169C0;
                temp_v0->unk10 = (f32) sp10->unk169C4;
                temp_v0->unk14 = (f32) sp10->unk169C8;
                temp_v0->unk18 = (f32) sp10->unk169CC;
                temp_v0->unk1C = (f32) sp10->unk169D0;
                temp_v0->unk20 = (f32) sp10->unk169D4;
                temp_v0->unk24 = (f32) sp10->unk169D8;
                temp_v0->unk28 = (s32) sp10->unk169DC;
                temp_v0->unk2C = (u32) sp10->unk169E0;
                temp_v0->unk40 = 0;
            }
        } else {
            temp_v0->unk28 = 0;
        }
        temp_v0->unk0 = (s32) (((u32) arg1->unk20 >> 0x10) & 0x1F);
    }
}

void __glOdysseySPBalloc(? (**arg0)(s32, u32), u32 *arg1) {
    u32 var_a3;

    var_a3 = *arg1;
    if (var_a3 < 0x400U) {
        *arg1 = 0x400;
        var_a3 = 0x400;
    }
    *arg0(var_a3 * 4, var_a3);
}

void __glOdysseySPBfree(void *arg0) {
    arg0->unkC();
}

void __glOdysseySPCompMachdep(void *arg1) {
    __glsplc_AddSentinel();
    if (arg1->unk14 != 0) {
        arg1->unk8 = (void *) (&sub_0d970000 + 0x6110);
        return;
    }
    arg1->unk8 = (void *) (&sub_0d970000 + 0x6200);
}
