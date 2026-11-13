s32 __glErrorCheckMaterial(f32);                    /* extern */
? __glOdyim_Disable(s32);                           /* extern */
? __glOdyim_Enable(s32);                            /* extern */
? __glSetError(s32);                                /* extern */
? __glim_Disable(s32);                              /* extern */
? __glim_Enable(s32);                               /* extern */
? sub_0d9f0000(s64, s64);                           /* extern */

void __glOdyim_SoftClipEnable(s32 arg0) {
    if ((arg0 == 0xB50) || (arg0 == 0xB57)) {
        __glim_Enable(arg0);
    }
    __glOdyim_Enable(arg0);
}

void __glOdyim_SoftClipDisable(s32 arg0) {
    if ((arg0 == 0xB50) || (arg0 == 0xB57)) {
        __glim_Disable(arg0);
    }
    __glOdyim_Disable(arg0);
}

void SoftClipApplyParameterF(void *arg0, u32 arg1, void *arg2) {
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;

    if (arg1 >= 0x1600U) {
        if (arg1 >= 0x1601U) {
            if (arg1 >= 0x1602U) {
                if (arg1 >= 0x1603U) {
                    if (arg1 == 0x1603) {
                        arg0->unk44 = (f32) arg2->unk0;
                        arg0->unk4C = (f32) arg2->unk4;
                        arg0->unk48 = (f32) arg2->unk8;
                    }
                } else {
                    temp_f19 = arg2->unk0;
                    arg0->unk0 = temp_f19;
                    arg0->unk10 = temp_f19;
                    temp_f18 = arg2->unk4;
                    arg0->unk4 = temp_f18;
                    arg0->unk14 = temp_f18;
                    temp_f17 = arg2->unk8;
                    arg0->unk8 = temp_f17;
                    arg0->unk18 = temp_f17;
                    temp_f16 = arg2->unkC;
                    arg0->unkC = temp_f16;
                    arg0->unk1C = temp_f16;
                }
            } else if (arg1 == 0x1601) {
                arg0->unk40 = (f32) arg2->unk0;
            }
        } else {
            arg0->unk30 = (f32) arg2->unk0;
            arg0->unk34 = (f32) arg2->unk4;
            arg0->unk38 = (f32) arg2->unk8;
            arg0->unk3C = (f32) arg2->unkC;
        }
    } else if (arg1 >= 0x1201U) {
        if (arg1 >= 0x1202U) {
            if (arg1 == 0x1202) {
                arg0->unk20 = (f32) arg2->unk0;
                arg0->unk24 = (f32) arg2->unk4;
                arg0->unk28 = (f32) arg2->unk8;
                arg0->unk2C = (f32) arg2->unkC;
            }
        } else {
            arg0->unk10 = (f32) arg2->unk0;
            arg0->unk14 = (f32) arg2->unk4;
            arg0->unk18 = (f32) arg2->unk8;
            arg0->unk1C = (f32) arg2->unkC;
        }
    } else {
        if (arg1 != 0x1200) {
            return;
        }
        arg0->unk0 = (f32) arg2->unk0;
        arg0->unk4 = (f32) arg2->unk4;
        arg0->unk8 = (f32) arg2->unk8;
        arg0->unkC = (f32) arg2->unkC;
    }
}

void __glOdyim_SoftClipMaterialfv(f32 *arg0, s64 arg1, f32 *arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp0 = (s64) arg2;
    sp8 = arg1;
    sp10 = (s64) *(s32 *)0x1010;
    temp_v0 = __glErrorCheckMaterial(*arg2);
    if (temp_v0 != 0) {
        __glSetError(temp_v0);
    } else {
        if (*(s32 *)0x1018 == 1) {
            sub_0d9f0000(sp10);
        }
        sp10->unk168C5 = 1;
        sp10->unk168C4 = 1;
        switch (arg0) {                             /* irregular */
        case 0x408:
            __glOdyim_SoftClipDisable(sp10 + 0x1681C, sp8, sp0, 0x408);
            __glOdyim_SoftClipDisable(sp10 + 0x1686C, sp8, sp0);
            sp10->unk19D8D = 0;
            sp10->unk19D8C = 0;
            return;
        case 0x404:
            __glOdyim_SoftClipDisable(sp10 + 0x1681C, sp8, sp0, 0x1681C);
            sp10->unk19D8C = 0;
            return;
        case 0x405:
            __glOdyim_SoftClipDisable(sp10 + 0x1686C, sp8, sp0, 0x1686C);
            sp10->unk19D8D = 0;
            return;
        }
    }
}

void __glOdyim_SoftClipMaterialf(s32 arg1, f32 fparg2) {
    f32 sp20;

    sp20 = fparg2;
    if (arg1 != 0x1601) {
        __glSetError(0x500);
    } else {
        __glOdyim_SoftClipMaterialfv(&sp20);
    }
}

void SoftClipApplyParameterI(void *arg0, u32 arg1, void *arg2) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f8;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    if (arg1 >= 0x1600U) {
        if (arg1 >= 0x1601U) {
            if (arg1 >= 0x1602U) {
                if (arg1 >= 0x1603U) {
                    if (arg1 == 0x1603) {
                        arg0->unk44 = (f32) arg2->unk0;
                        arg0->unk4C = (f32) arg2->unk4;
                        arg0->unk48 = (f32) arg2->unk8;
                    }
                } else {
                    temp_f16 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f17, $f9, $f17, $f11 */);
                    arg0->unk0 = temp_f16;
                    arg0->unk10 = temp_f16;
                    temp_f14 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f15, $f9, $f15, $f11 */);
                    arg0->unk4 = temp_f14;
                    arg0->unk14 = temp_f14;
                    temp_f12 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f13, $f9, $f13, $f11 */);
                    arg0->unk8 = temp_f12;
                    arg0->unk18 = temp_f12;
                    temp_f8 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                    arg0->unkC = temp_f8;
                    arg0->unk1C = temp_f8;
                }
            } else if (arg1 == 0x1601) {
                arg0->unk40 = (f32) arg2->unk0;
            }
        } else {
            arg0->unk30 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f27, $f15, $f27, $f17 */));
            arg0->unk34 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f23, $f15, $f23, $f17 */));
            arg0->unk38 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f19, $f15, $f19, $f17 */));
            arg0->unk3C = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */));
        }
    } else if (arg1 >= 0x1201U) {
        if (arg1 >= 0x1202U) {
            if (arg1 == 0x1202) {
                arg0->unk20 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f12, $f4, $f12, $f6 */));
                arg0->unk24 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f10, $f4, $f10, $f6 */));
                arg0->unk28 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f8, $f6 */));
                arg0->unk2C = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */));
            }
        } else {
            arg0->unk10 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f7, $f31, $f7, $f1 */));
            arg0->unk14 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f5, $f31, $f5, $f1 */));
            arg0->unk18 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f3, $f31, $f3, $f1 */));
            arg0->unk1C = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */));
        }
    } else {
        if (arg1 != 0x1200) {
            return;
        }
        arg0->unk0 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f1, $f19, $f1, $f23 */));
        arg0->unk4 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f31, $f19, $f31, $f23 */));
        arg0->unk8 = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f27, $f19, $f27, $f23 */));
        arg0->unkC = (f32) (temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */));
    }
}

void __glOdyim_SoftClipMaterialiv(s32 *arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp0 = arg2;
    sp8 = arg1;
    sp10 = (s64) *(s32 *)0x1010;
    temp_v0 = __glErrorCheckMaterial((f32) *arg2);
    if (temp_v0 != 0) {
        __glSetError(temp_v0);
    } else {
        if (*(s32 *)0x1018 == 1) {
            sub_0d9f0000(sp10, sp10);
        }
        sp10->unk168C5 = 1;
        sp10->unk168C4 = 1;
        switch (arg0) {                             /* irregular */
        case 0x408:
            __glOdyim_SoftClipMaterialf(sp10 + 0x1681C, (bitwise f32) sp8, sp0, 0x408);
            __glOdyim_SoftClipMaterialf(sp10 + 0x1686C, (bitwise f32) sp8, sp0);
            sp10->unk19D8D = 0;
            sp10->unk19D8C = 0;
            return;
        case 0x404:
            __glOdyim_SoftClipMaterialf(sp10 + 0x1681C, (bitwise f32) sp8, sp0, 0x1681C);
            sp10->unk19D8C = 0;
            return;
        case 0x405:
            __glOdyim_SoftClipMaterialf(sp10 + 0x1686C, (bitwise f32) sp8, sp0, 0x1686C);
            sp10->unk19D8D = 0;
            return;
        }
    }
}

void __glOdyim_SoftClipMateriali(s32 arg1, s32 arg2) {
    s32 sp24;

    sp24 = arg2;
    if (arg1 != 0x1601) {
        __glSetError(0x500);
    } else {
        __glOdyim_SoftClipMaterialiv(&sp24);
    }
}
