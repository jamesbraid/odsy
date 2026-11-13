Error occurred while processing instruction: sdc1 $f5, 0x90($sp)

Error occurred while processing instruction: sdc1 $f5, 0x90($sp)

Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
void __glClampAndScaleColor(void *arg0);            /* extern */
void *__glCreateSpecLUT(f32 *, s32);                /* extern */
? __glFreeSpecLUT(f32 *, void *);                   /* extern */
void __glNop(void *arg0);                           /* extern */
? __glim_Materialfv(?, ?, void *, s32, s32, f32, void *, f32, f32, f32, f32, f32, f32, f32, f32); /* extern */
f32 cosf(s8, s32, s32, s32, s64, f32, f32);         /* extern */
extern ? sub_0daf0000;

void __glOdysseySoftClipCopyMaterialOneSided(s32 arg0, void *arg1) {
    s32 *temp_v0;
    s32 temp_at;
    s32 temp_t0;
    s32 var_a3;
    s32 var_a4;

    var_a3 = 0x14;
    var_a4 = 0;
    temp_t0 = arg0 + 0x1681C;
    do {
        *(var_a4 + (arg1 + 0xD0)) = *(var_a4 + temp_t0);
        *(var_a4 + (arg1 + 0xD4)) = *(var_a4 + (temp_t0 + 4));
        var_a3 -= 4;
        *(var_a4 + (arg1 + 0xD8)) = *(var_a4 + (temp_t0 + 8));
        temp_v0 = var_a4 + (arg1 + 0xDC);
        temp_at = *(var_a4 + (temp_t0 + 0xC));
        var_a4 += 0x10;
        *temp_v0 = temp_at;
    } while (var_a3 > 0);
    arg1->unk190 = 0;
}

void __glOdysseySoftClipCopyMaterialTwoSided(s32 arg0, void *arg1) {
    s64 sp0;
    s32 *temp_at_2;
    s32 *temp_v0;
    s32 temp_at;
    s32 temp_t9;
    s32 var_a2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;

    var_a4 = 0x14;
    var_a3 = 0;
    sp0 = arg0 + 0x10000;
    do {
        *(var_a3 + (arg1 + 0xD0)) = *(var_a3 + (arg0 + 0x1681C));
        *(var_a3 + (arg1 + 0xD4)) = *(var_a3 + (arg0 + 0x16820));
        var_a4 -= 4;
        *(var_a3 + (arg1 + 0xD8)) = *(var_a3 + (arg0 + 0x16824));
        temp_v0 = var_a3 + (arg1 + 0xDC);
        temp_at = *(var_a3 + (arg0 + 0x16828));
        var_a3 += 0x10;
        *temp_v0 = temp_at;
    } while (var_a4 > 0);
    var_a2 = 0x14;
    var_a3_2 = 0;
    do {
        *(var_a3_2 + (arg1 + 0x120)) = *(var_a3_2 + (sp0 + 0x686C));
        *(var_a3_2 + (arg1 + 0x124)) = *(var_a3_2 + (sp0 + 0x6870));
        var_a2 -= 4;
        *(var_a3_2 + (arg1 + 0x128)) = *(var_a3_2 + (sp0 + 0x6874));
        temp_at_2 = var_a3_2 + (arg1 + 0x12C);
        temp_t9 = *(var_a3_2 + (sp0 + 0x6878));
        var_a3_2 += 0x10;
        *temp_at_2 = temp_t9;
    } while (var_a2 > 0);
    arg1->unk190 = 0;
}

void __glOdysseyChangeMaterialEmission(void *arg0, void *arg1) {
    arg1->unk30 = (f32) arg0->unk1B0;
    arg1->unk34 = (f32) arg0->unk1B4;
    arg1->unk38 = (f32) arg0->unk1B8;
    arg1->unk3C = (f32) arg0->unk1BC;
}

void __glOdysseyChangeMaterialSpecular(void *arg0, void *arg1) {
    arg1->unk20 = (f32) arg0->unk1B0;
    arg1->unk24 = (f32) arg0->unk1B4;
    arg1->unk28 = (f32) arg0->unk1B8;
    arg1->unk2C = (f32) arg0->unk1BC;
}

void __glOdysseyChangeMaterialAmbient(void *arg0, void *arg1) {
    arg1->unk0 = (f32) arg0->unk1B0;
    arg1->unk4 = (f32) arg0->unk1B4;
    arg1->unk8 = (f32) arg0->unk1B8;
    arg1->unkC = (f32) arg0->unk1BC;
}

void __glOdysseyChangeMaterialDiffuse(void *arg0, void *arg1) {
    arg1->unk10 = (f32) arg0->unk1B0;
    arg1->unk14 = (f32) arg0->unk1B4;
    arg1->unk18 = (f32) arg0->unk1B8;
    arg1->unk1C = (f32) arg0->unk1BC;
}

void __glOdysseyChangeMaterialAmbientAndDiffuse(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;

    temp_f3 = arg0->unk1B0;
    arg1->unk0 = temp_f3;
    arg1->unk10 = temp_f3;
    temp_f2 = arg0->unk1B4;
    arg1->unk4 = temp_f2;
    arg1->unk14 = temp_f2;
    temp_f1 = arg0->unk1B8;
    arg1->unk8 = temp_f1;
    arg1->unk18 = temp_f1;
    temp_f0 = arg0->unk1BC;
    arg1->unkC = temp_f0;
    arg1->unk1C = temp_f0;
}

void __glOdysseyChangeFrontMaterialColor(void *arg0) {
    if (*(s32 *)0x1018 == 1) {
        arg0->unk2F2C();
    }
    arg0->unk19E90(arg0, arg0 + 0x1681C);
    arg0->unk19D8C = 0;
    __glClampAndScaleColor(arg0);
}

void __glOdysseyChangeBackMaterialColor(void *arg0) {
    if (*(s32 *)0x1018 == 1) {
        arg0->unk2F2C();
    }
    arg0->unk19E90(arg0, arg0 + 0x1686C);
    arg0->unk19D8D = 0;
    __glClampAndScaleColor(arg0);
}

void __glOdysseyChangeBothMaterialColors(void *arg0) {
    if (*(s32 *)0x1018 == 1) {
        arg0->unk2F2C();
    }
    arg0->unk19E90(arg0, arg0 + 0x1681C);
    arg0->unk19E90(arg0, arg0 + 0x1686C);
    arg0->unk19D8D = 0;
    arg0->unk19D8C = 0;
    __glClampAndScaleColor(arg0);
}

void __glOdysseyPickColorMaterialProcs(void *arg0) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;

    if (arg0->unkC94 != 0) {
        temp_a3 = arg0->unk700;
        if (temp_a3 & 0x80) {
            temp_a3_2 = arg0->unk568;
            switch (temp_a3_2) {                    /* switch 1; irregular */
            case 0x408:                             /* switch 1 */
                arg0->unk2F18 = __glOdysseyChangeBothMaterialColors;
                break;
            case 0x404:                             /* switch 1 */
                arg0->unk2F18 = (void (*)(void *)) M2C_ERROR(/* Read from unset register $t9 */);
                break;
            case 0x405:                             /* switch 1 */
                arg0->unk2F18 = __glOdysseyChangeBackMaterialColor;
                break;
            }
            temp_a3_3 = arg0->unk56C;
            switch (temp_a3_3) {                    /* switch 2; irregular */
            case 0x1602:                            /* switch 2 */
                arg0->unk19E90 = __glOdysseyChangeMaterialAmbientAndDiffuse;
                return;
            case 0x1600:                            /* switch 2 */
                arg0->unk19E90 = __glOdysseyChangeMaterialEmission;
                return;
            case 0x1202:                            /* switch 2 */
                arg0->unk19E90 = __glOdysseyChangeMaterialSpecular;
                return;
            case 0x1200:                            /* switch 2 */
                arg0->unk19E90 = __glOdysseyChangeMaterialAmbient;
                return;
            case 0x1201:                            /* switch 2 */
                arg0->unk19E90 = __glOdysseyChangeMaterialDiffuse;
                return;
            }
        } else {
            if (temp_a3 & 0x40) {
                arg0->unk2F18 = __glClampAndScaleColor;
                return;
            }
            arg0->unk2F18 = __glClampAndScaleColor;
        }
    } else {
        arg0->unk2F18 = __glNop;
    }
}

void __glOdysseyComputeLightState(f32 *arg0, s32 arg2) {
    s64 sp40;
    f32 sp8;
    f32 temp_f20;
    f32 temp_f2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_s5;
    s32 var_s6;
    s32 var_s7;
    s64 temp_a4;
    u32 var_s3;
    void **var_s4;
    void **var_s8;
    void *temp_a1;
    void *temp_v0;
    void *var_s0;
    void *var_s1;

    var_a2 = arg2;
    var_s3 = arg0->unk708;
    var_s0 = arg0->unk6DF8;
    var_a1 = arg0->unkE04;
    var_s8 = arg0 + 0x6E4C;
    var_s1 = arg0->unk630;
    if (var_a1 > 0) {
        var_s7 = 0;
        var_s5 = var_s0 + 0xA0;
        var_s6 = var_s0 + 0x74;
        var_s4 = var_s0 + 0xC8;
        var_a3 = var_s3 & 1;
loop_13:
        if (var_a3 != 0) {
            *var_s8 = var_s0;
            var_s0->unk60 = var_s1;
            var_s0->unk74 = (f32) var_s1->unk40;
            var_s0->unk78 = (f32) var_s1->unk44;
            var_s0->unk7C = (f32) var_s1->unk48;
            var_s0->unk80 = (f32) var_s1->unk4C;
            temp_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $zero, $fcc1 */);
            sp40 = temp_a4;
            var_s8 = var_s4;
            var_s0->unk9C = (u8) temp_a4;
            if (temp_a4 != 0) {
                var_s0->unk94 = cosf(1, var_a1, var_a2, var_a3, temp_a4, var_s1->unk64 * 0.017453292f, 0.017453292f);
                if (sp40 != 0) {
                    temp_a1 = var_s0->unkD8;
                    temp_f20 = var_s1->unk60;
                    if (temp_a1 != NULL) {
                        if (var_s0->unk70 != temp_f20) {
                            var_s0->unk70 = temp_f20;
                            if (temp_a1 == NULL) {

                            } else {
                                goto block_3;
                            }
                            goto block_4;
                        }
                    } else {
                        var_s0->unk70 = temp_f20;
                        if (temp_a1 != NULL) {
block_3:
                            __glFreeSpecLUT(arg0, temp_a1);
                        }
block_4:
                        temp_v0 = __glCreateSpecLUT(arg0);
                        var_s0->unkD8 = temp_v0;
                        var_s0->unkD0 = (f32) temp_v0->unk4;
                        var_s0->unkCC = (void *) (temp_v0 + 0x10);
                        var_s0->unkD4 = (f32) temp_v0->unk8;
                    }
                }
            }
            temp_f2 = var_s1->unk68;
            var_s0->unk64 = temp_f2;
            if (temp_f2 != 0.0f) {
                var_s0->unk98 = (f32) (arg0->unkDD8 / var_s1->unk68);
            }
            var_s0->unk68 = (f32) var_s1->unk6C;
            var_s0->unk6C = (f32) var_s1->unk70;
            if (arg0->unkC95 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f10, $f26 */);
                var_s0->unkC0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f30 */);
                M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f9, $f26 */);
                var_s0->unkC4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f30 */);
            }
            if (arg0->unk584 != 0) {
                goto block_10;
            }
            if ((var_s0->unk9C == 0) && (var_s0->unk80 == 0.0f)) {
                __glCreateSpecLUT(sp, var_s6);
                var_s0->unkB0 = sp0;
                var_s0->unkB4 = sp4;
                var_s0->unkB8 = sp8;
                sp8 += arg0->unkDD8;
                arg0->unk2EB8(var_s5, sp);
                var_s0->unkDC = 0;
            } else {
block_10:
                var_s0->unkDC = 1;
            }
            var_a1 = arg0->unkE04;
        }
        var_s4 += 0xE0;
        var_s6 += 0xE0;
        var_s5 += 0xE0;
        var_s7 += 1;
        var_s0 += 0xE0;
        var_a2 = var_s7 < var_a1;
        var_s1 += 0x74;
        var_s3 = var_s3 >> 1;
        var_a3 = var_s3 & 1;
        if (var_a2 != 0) {
            goto loop_13;
        }
    }
    *var_s8 = NULL;
}

void vvec(void *arg0, void *arg1, void *arg2) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 temp_f6;
    s32 temp_a4;
    s32 temp_f3;

    temp_a4 = arg2->unkC * 2;
    if ((arg1->unkC * 2) != 0) {
        temp_f4 = arg2->unk0;
        if (temp_a4 != 0) {
            temp_f3 = arg1->unkC;
            arg0->unk0 = (f32) (temp_f4 * (bitwise f32) temp_f3);
            arg0->unk4 = (f32) (arg2->unk4 * (bitwise f32) temp_f3);
            arg0->unk8 = (f32) (arg2->unk8 * (bitwise f32) temp_f3);
            arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f2, $f2, $f4, $f6 */);
            arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f1, $f1, $f4, $f5 */);
            arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f0, $f0, $f3, $f4 */);
            return;
        }
        arg0->unk0 = temp_f4;
        arg0->unk4 = (f32) arg2->unk4;
        arg0->unk8 = (f32) arg2->unk8;
        return;
    }
    temp_f5 = arg1->unk0;
    temp_f4_2 = arg1->unk8;
    temp_f6 = arg1->unk4;
    if (temp_a4 != 0) {
        arg0->unk8 = (f32) -temp_f4_2;
        arg0->unk4 = (f32) -temp_f6;
        arg0->unk0 = (f32) -temp_f5;
        return;
    }
    arg0->unk8 = (f32) (arg2->unk8 - temp_f4_2);
    arg0->unk4 = (f32) (arg2->unk4 - temp_f6);
    arg0->unk0 = (f32) (arg2->unk0 - temp_f5);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x60, 0x64, 0xc0, 0xc4, 0xc8, 0xcc, 0xd0, 0xd4, 0xe8, 0xec, 0xf0, 0xf4, 0xf8, 0xfc, 0x100, 0x104, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x120, 0x124, 0x138, 0x13c], gap at: 0x68. */
void __glOdysseySoftClipCalcRGBColor(void *arg0, s64 arg1, void *arg2, s32 arg3, s32 arg4) {
    f32 sp50;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp30;
    f32 sp20;
    f32 sp10;
    ? temp_s3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    f32 var_f28;
    f32 var_f30;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f4_5;
    f32 var_f4_6;
    f32 var_f4_7;
    f32 var_f5;
    f32 var_f8;
    s32 temp_a0_3;
    s32 temp_f10;
    s32 temp_f12;
    s32 temp_s4;
    s32 var_a3;
    s32 var_a4;
    u8 *var_s0;
    u8 temp_a0;
    u8 temp_s4_2;
    void *temp_a0_2;
    void *temp_s3_2;
    void *var_s0_2;
    void *var_s2;
    void *var_s5;

    var_a3 = arg3;
    var_a4 = arg4;
    if (arg0->unk588 != 0x81FA) {
        goto block_1;
    }
    var_a3 = 0x40030000;
    var_a4 = 1;
    if (arg0->unk700 & 0x40030000) {
        unkspA8 = 1;
    } else {
block_1:
        unkspA8 = 0;
    }
    temp_a0 = arg2->unk190;
    temp_f4 = arg2->unk28;
    temp_f5 = arg2->unk24;
    temp_f6 = arg2->unk20;
    if (arg1 != 0) {
        var_s5 = arg0 + 0x6E24;
        unkspB8 = (s64) (arg2 + 0x180);
        unkspB0 = (s64) (arg2 + 0xA0);
        unksp80 = (bitwise f64) -temp_f4;
        unksp78 = (bitwise f64) -temp_f5;
        var_s0 = arg0 + 0x19D8D;
        unksp88 = (bitwise f64) -temp_f6;
        var_s2 = (temp_a0 == 0) ? (arg2 + 0x120) : (arg0 + 0x1686C);
        if (temp_a0 != 0) {
            goto block_4;
        }
        goto block_67;
    }
    var_s5 = arg0 + 0x6DFC;
    unkspB8 = (s64) (arg2 + 0x170);
    unkspB0 = (s64) (arg2 + 0x90);
    unksp80 = (bitwise f64) temp_f4;
    unksp78 = (bitwise f64) temp_f5;
    var_s0 = arg0 + 0x19D8C;
    unksp88 = (bitwise f64) temp_f6;
    var_s2 = (temp_a0 == 0) ? (arg2 + 0xD0) : (arg0 + 0x1681C);
    if (temp_a0 == 0) {
        goto block_67;
    }
block_4:
    if (*var_s0 == 0) {
block_67:
        temp_s4 = arg0->unk700;
        arg0->unk700 = (s32) (temp_s4 & ~0x80);
        unksp98 = arg1;
        temp_s3 = (unksp98 != 0) ? 0x405 : 0x404;
        __glim_Materialfv(temp_s3, 0x1200, sp, var_a3, var_a4, var_s2->unk0, var_s2->unk4, var_s2->unk8, var_s2->unkC);
        __glim_Materialfv(temp_s3, 0x1201, sp, var_s2->unk10, var_s2->unk14, var_s2->unk18, var_s2->unk1C);
        __glim_Materialfv(temp_s3, 0x1202, sp, var_s2->unk20, var_s2->unk24, var_s2->unk28, var_s2->unk2C);
        temp_f12 = var_s2->unk30;
        __glim_Materialfv(temp_s3, 0x1600, sp, temp_f12, temp_f12, var_s2->unk34, var_s2->unk38, var_s2->unk3C);
        __glim_Materialfv(temp_s3, 0x1601, sp, var_s2->unk40);
        arg0->unk700 = (s32) (arg0->unk700 | (temp_s4 & 0x80));
        if (arg2->unk190 != 0) {
            *var_s0 = 1;
        } else {
            *var_s0 = 0;
        }
    }
    temp_s4_2 = arg0->unk584;
    var_f24 = var_s5->unk8;
    var_f26 = var_s5->unk4;
    var_f22 = var_s5->unk0;
    var_s0_2 = arg0->unk6E4C;
    unksp70 = (bitwise f64) arg0->unkDD8;
    unkspD8 = M2C_ERROR(/* unknown instruction: movf $at, $zero, $fcc0 */);
    if (var_s0_2 != NULL) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
        // At instruction: sdc1 $f5, 0x90($sp)
loop_10:
        temp_a0_2 = (arg1 * 3) + var_s0_2;
        if ((var_s0_2->unkDC != 0) || (unkspD8 != 0)) {
            __glOdysseyComputeLightState(&sp10, (s32) temp_s3_2, var_s0_2 + 0x74);
            arg0->unk2EB8(&sp20, &sp10);
            if (temp_s4_2 != 0) {
                __glOdysseyComputeLightState(&sp30, (s32) temp_s3_2, &sub_0daf0000);
                arg0->unk2EB8(&sp30, &sp30);
                sp48 = sp28 + sp38;
                sp44 = sp24 + sp34;
                sp40 = sp20 + sp30;
            } else {
                sp44 = sp24;
                sp40 = sp20;
                sp48 = arg0->unkDD8 + sp28;
            }
            arg0->unk2EB8(&sp50, &sp40);
            temp_a0_3 = M2C_ERROR(/* unknown instruction: movt $a0, $zero, $fcc1 */);
            if (temp_a0_3 != 0) {
                if ((var_s0_2->unk68 == 0.0f) && (var_s0_2->unk6C == 0.0f)) {
                    var_f5 = var_s0_2->unk98;
                } else {
                    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f11, $f11 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f10 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f6, $f9 */);
                    var_f5 = arg0->unkDD8 / M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                }
            } else {
                var_f5 = arg0->unkDD8;
            }
            var_f4 = var_f5;
            if ((var_s0_2->unk9C != 0) && (temp_a0_3 != 0)) {
                M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                temp_f6_2 = -M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                if ((var_s0_2->unkD0 <= temp_f6_2) && (var_s0_2->unk94 <= temp_f6_2)) {
                    temp_f10 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
                    if (temp_f10 < 0x100) {
                        var_f4 = *(var_s0_2->unkCC + (temp_f10 * 4)) * var_f5;
                    }
                } else {
                    var_f4 = 0.0f;
                }
            }
            if (var_f4 != 0.0f) {
                M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f14, $f15 */);
                if (M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */) > 0.0f) {
                    M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */);
                    var_f8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f11 */) - var_s5->unk18;
                    if (var_s5->unk10 == 0.0f) {
                        var_f8 = arg0->unkDD8;
                    }
                    if (var_f8 >= 0.0f) {
                        if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f8 */) < 0x100) {

                        }
                        if (unkspA0 != 0) {

                        } else {
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f16, $f8 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f18, $f8 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f17, $f8 */);
                        }
                    }
                    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f15, $f12 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f14, $f12 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f13, $f12 */);
                }
                var_f30 = M2C_ERROR(/* unknown instruction: madd.s $f30, $f30, $f10, $f4 */);
                var_f28 = M2C_ERROR(/* unknown instruction: madd.s $f28, $f28, $f11, $f4 */);
                var_f24 = M2C_ERROR(/* unknown instruction: madd.s $f24, $f24, $f6, $f4 */);
                var_f26 = M2C_ERROR(/* unknown instruction: madd.s $f26, $f26, $f7, $f4 */);
                var_f22 = M2C_ERROR(/* unknown instruction: madd.s $f22, $f22, $f5, $f4 */);
                unksp90 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
            }
        } else {
            M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f7, $f8 */);
            var_f24 += temp_a0_2->unk8;
            var_f26 += temp_a0_2->unk4;
            var_f22 += temp_a0_2->unk0;
            if (M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */) > 0.0f) {
                M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                var_f4_2 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */) - var_s5->unk18;
                if (var_s5->unk10 == 0.0f) {
                    var_f4_2 = arg0->unkDD8;
                }
                if (var_f4_2 >= 0.0f) {
                    if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f4 */) < 0x100) {

                    }
                    if (unkspA0 != 0) {
                        var_f30 = M2C_ERROR(/* unknown instruction: madd.s $f30, $f30, $f8, $f4 */);
                        var_f28 = M2C_ERROR(/* unknown instruction: madd.s $f28, $f28, $f6, $f4 */);
                        unksp90 = M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f7, $f4 */);
                    } else {
                        M2C_ERROR(/* unknown instruction: madd.s $f24, $f24, $f8, $f4 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f26, $f26, $f7, $f4 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f22, $f22, $f6, $f4 */);
                    }
                }
                var_f24 = M2C_ERROR(/* unknown instruction: madd.s $f24, $f24, $f19, $f5 */);
                var_f26 = M2C_ERROR(/* unknown instruction: madd.s $f26, $f26, $f18, $f5 */);
                var_f22 = M2C_ERROR(/* unknown instruction: madd.s $f22, $f22, $f17, $f5 */);
            }
        }
        var_s0_2 = var_s0_2->unkC8;
        if (var_s0_2 != NULL) {
            goto loop_10;
        }
    } else {
        var_f30 = 0.0f;
        var_f28 = 0.0f;
        unksp90 = GLUE_F64(M2C_ERROR(/* Read from unset register $f15 */), 0U);
    }
    var_f4_3 = 0.0f;
    if (var_f22 > 0.0f) {
        var_f4_3 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f22, $fcc6 */);
    }
    unkspB0->unk0 = var_f4_3;
    if (var_f26 > 0.0f) {
        var_f4_4 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f26, $fcc0 */);
    } else {
        var_f4_4 = 0.0f;
    }
    unkspB0->unk4 = var_f4_4;
    if (var_f24 > 0.0f) {
        var_f4_5 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f24, $fcc2 */);
    } else {
        var_f4_5 = 0.0f;
    }
    unkspB0->unk8 = var_f4_5;
    var_f4_6 = 0.0f;
    unkspB0->unkC = (f32) var_s5->unk24;
    if (var_f28 > 0.0f) {
        var_f4_6 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f28, $fcc4 */);
    }
    unkspB8->unk0 = var_f4_6;
    if ((bitwise f32) unksp90 > 0.0f) {
        var_f4_7 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f11, $fcc6 */);
    } else {
        var_f4_7 = 0.0f;
    }
    unkspB8->unk4 = var_f4_7;
    if (var_f30 > 0.0f) {
        unkspB8->unkC = 0.0f;
        unkspB8->unk8 = (f32) M2C_ERROR(/* unknown instruction: movt.s $f12, $f30, $fcc0 */);
        return;
    }
    unkspB8->unkC = 0.0f;
    unkspB8->unk8 = 0.0f;
}

f32 __glOdysseySoftClipCalcCIColor(void *arg0, s32 arg1, void *arg2, void *arg6, void *arg7) {
    s64 sp78;
    s64 sp70;
    f32 sp50;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp30;
    f32 sp20;
    f32 sp10;
    ? temp_s4;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f6;
    f32 var_f0;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f5;
    s32 temp_f10;
    u8 *var_s0;
    u8 temp_a4;
    u8 temp_s4_2;
    void *temp_s3;
    void *var_a6;
    void *var_a7;
    void *var_s0_2;
    void *var_s6;

    var_a6 = arg6;
    var_a7 = arg7;
    temp_a4 = arg2->unk190;
    if (arg1 != 0) {
        var_s6 = arg0 + 0x6E24;
        sp78 = (s64) (arg2 + 0xA0);
        var_s0 = arg0 + 0x19D8D;
        sp70 = (s64) ((temp_a4 == 0) ? (arg2 + 0x120) : (arg0 + 0x1686C));
        if (temp_a4 != 0) {
            goto block_2;
        }
        goto block_40;
    }
    sp78 = (s64) (arg2 + 0x90);
    var_a7 = arg2 + 0xD0;
    var_s6 = arg0 + 0x6DFC;
    var_a6 = (temp_a4 == 0) ? var_a7 : (arg0 + 0x1681C);
    var_s0 = arg0 + 0x19D8C;
    sp70 = (s64) var_a6;
    if (temp_a4 == 0) {
        goto block_40;
    }
block_2:
    if (*var_s0 == 0) {
block_40:
        temp_f15 = sp70->unk10;
        temp_f14 = sp70->unk14;
        temp_f13 = sp70->unk18;
        temp_f12 = sp70->unk1C;
        temp_s4 = (arg1 != 0) ? 0x405 : 0x404;
        __glim_Materialfv(temp_s4, 0x1201, sp, (s32) temp_a4, arg1, (bitwise f32) var_a6, var_a7, temp_f12, temp_f13, temp_f14, temp_f15, temp_f15, temp_f14, temp_f13, temp_f12);
        __glim_Materialfv(temp_s4, 0x1202, sp, sp70->unk20, sp70->unk24, sp70->unk28, sp70->unk2C);
        __glim_Materialfv(temp_s4, 0x1603, sp, (bitwise s32) sp70->unk44, (bitwise s32) sp70->unk4C, sp70->unk48);
        if (arg2->unk190 != 0) {
            *var_s0 = 1;
        } else {
            *var_s0 = 0;
        }
    }
    var_f0 = arg2->unk6C;
    var_s0_2 = arg0->unk6E4C;
    temp_s4_2 = arg0->unk584;
    if (var_s0_2 != NULL) {
        temp_s3 = arg2 + 0x60;
loop_8:
        if ((var_s0_2->unkDC != 0) || (M2C_ERROR(/* unknown instruction: movf $fp, $zero, $fcc0 */) != 0)) {
            __glOdysseyComputeLightState(&sp10, (s32) temp_s3, var_s0_2 + 0x74);
            arg0->unk2EB8(&sp20, &sp10);
            if (temp_s4_2 != 0) {
                __glOdysseyComputeLightState(&sp30, (s32) temp_s3, &sub_0daf0000 - 0x3080 + 0x10);
                arg0->unk2EB8(&sp30, &sp30);
                sp48 = sp28 + sp38;
                sp44 = sp24 + sp34;
                sp40 = sp20 + sp30;
            } else {
                sp44 = sp24;
                sp40 = sp20;
                sp48 = arg0->unkDD8 + sp28;
            }
            var_f0 = arg0->unk2EB8(&sp50, &sp40);
            if (var_s0_2->unk80 != 0.0f) {
                if ((var_s0_2->unk68 == 0.0f) && (var_s0_2->unk6C == 0.0f)) {
                    var_f5 = var_s0_2->unk98;
                } else {
                    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f11, $f11 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f10 */);
                    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f6, $f9 */);
                    var_f5 = arg0->unkDD8 / M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                }
            } else {
                var_f5 = arg0->unkDD8;
            }
            var_f4 = var_f5;
            if (var_s0_2->unk9C != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                temp_f6 = -M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                if ((var_s0_2->unkD0 <= temp_f6) && (var_s0_2->unk94 <= temp_f6)) {
                    temp_f10 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
                    if (temp_f10 < 0x100) {
                        var_f4 = *(var_s0_2->unkCC + (temp_f10 * 4)) * var_f5;
                    }
                } else {
                    var_f4 = 0.0f;
                }
            }
            if (var_f4 != 0.0f) {
                M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f7, $f26 */);
                if (M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f24 */) > 0.0f) {
                    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f22, $f8 */);
                    if ((M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f24, $f7 */) - var_s6->unk18) >= 0.0f) {
                        if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f6 */) < 0x100) {

                        }
                        M2C_ERROR(/* unknown instruction: madd.s $f30, $f30, $f1, $f2 */);
                    }
                    M2C_ERROR(/* unknown instruction: madd.s $f28, $f28, $f3, $f6 */);
                }
            }
        } else {
            M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f7, $f22 */);
            if (M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f24 */) > 0.0f) {
                M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f22 */);
                var_f4_2 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f24 */) - var_s6->unk18;
                if (var_s6->unk10 == 0.0f) {
                    var_f4_2 = arg0->unkDD8;
                }
                M2C_ERROR(/* unknown instruction: madd.s $f28, $f28, $f11, $f5 */);
                if (var_f4_2 >= 0.0f) {
                    if ((s32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f4 */) < 0x100) {

                    }
                    M2C_ERROR(/* unknown instruction: madd.s $f30, $f30, $f10, $f4 */);
                }
            }
        }
        var_s0_2 = var_s0_2->unkC8;
        if (var_s0_2 != NULL) {
            goto loop_8;
        }
        M2C_ERROR(/* unknown instruction: movf.s $f10, $f30, $fcc5 */);
        M2C_ERROR(/* unknown instruction: madd.s $f9, $f11, $f9, $f12 */);
        M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
        *sp78 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f8, $f9, $fcc4 */);
        return var_f0;
    }
    M2C_ERROR(/* unknown instruction: movf.s $f31, $f3, $fcc7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f29, $f0, $f29, $f1 */);
    M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
    *sp78 = (f32) M2C_ERROR(/* unknown instruction: movf.s $f27, $f29, $fcc6 */);
    return sp70->unk48 - sp70->unk44;
}

void __glOdysseySoftClipFlatShade(void *arg0, void *arg1) {
    void *temp_at;

    temp_at = arg0->unk6DE0;
    arg1->unk90 = (f32) temp_at->unk90;
    arg1->unk94 = (f32) temp_at->unk94;
    arg1->unk98 = (f32) temp_at->unk98;
    arg1->unk9C = (f32) temp_at->unk9C;
    arg1->unkA0 = (f32) temp_at->unkA0;
    arg1->unkA4 = (f32) temp_at->unkA4;
    arg1->unkA8 = (f32) temp_at->unkA8;
    arg1->unkAC = (f32) temp_at->unkAC;
    arg1->unk170 = (f32) temp_at->unk170;
    arg1->unk174 = (f32) temp_at->unk174;
    arg1->unk178 = (f32) temp_at->unk178;
    arg1->unk17C = (f32) temp_at->unk17C;
    arg1->unk180 = (f32) temp_at->unk180;
    arg1->unk184 = (f32) temp_at->unk184;
    arg1->unk188 = (f32) temp_at->unk188;
    arg1->unk18C = (f32) temp_at->unk18C;
}
