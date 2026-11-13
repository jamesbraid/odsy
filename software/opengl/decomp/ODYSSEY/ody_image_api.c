s64 __glCheckColorSubTableArgs(s64, s64, s64, u64, s64, s64, s32); /* extern */
s64 __glCheckColorTableArgs(s64, void *, s32, ?, s64, s64, s32); /* extern */
s32 __glCheckConvolutionFilterArgs(void *, s64, s64, s64, ?, s32 *, ?); /* extern */
s32 __glCheckDrawPixelArgs(void *, s64, s64, s32, s64); /* extern */
s32 __glCheckReadPixelArgs(void *, u64, s64, s32, s64); /* extern */
s32 __glElementsPerGroup(s32, ?, s64, s32, s32);    /* extern */
? __glFeedbackCopyPixels(void *, void *, u8, s64, s64); /* extern */
? __glFillImage(void *, s64, s32, u32, u32, s64, void *); /* extern */
s64 __glGetCurrentSetDefaultPixelXferState(void *, s32, s32, s32, ? *, s32, s64, s64); /* extern */
s32 __glOdysseyAsyncCheck(void *, ?, s32);          /* extern */
? __glOdysseyAsyncDropMarker(void *, ?);            /* extern */
? __glOdysseyCvtToFloat(void *, void *, s64, u32, s32, s32, s32); /* extern */
? __glOdysseyCvtToInternalFmt(void *, s64, s32, ?, ?); /* extern */
? __glOdysseyCvtToRGBA(void *, void *, s64, u32, s32); /* extern */
void *__glOdysseyGetFilter(void *);                 /* extern */
? __glOdysseyImageCalcSuitableHostFormatForDownload(?, ?, s32, s32 *, s32 *, s32, s32 *, s32, s32, f32); /* extern */
? __glOdysseyImageXfer(void *, void *, f32 *, s64, u32 *, u32, s64, s32); /* extern */
? __glOdysseyInitConvolutionState(s32);             /* extern */
? __glOdysseyScaleBiasFilter(void *, s64, void *);  /* extern */
void *__glOdysseySetCurrentFilter(void *, ?);       /* extern */
s64 __glOdysseyStoreLUT(?, ?);                      /* extern */
? __glRestoreCurrentPixelXferState(void *, s64);    /* extern */
? __glSetError(s64, void *, s64, s64, s64, s32, s32, ?); /* extern */
? __glSlowPickGetSeparableFilter(s32);              /* extern */
s32 __glSpecBytesPerElement(s64);                   /* extern */
s64 __glSpecElementsPerGroup(s32, s64, ?);          /* extern */
? __glim_DrawPixels(s64, s64, s64, s64, s64);       /* extern */
? __glim_PixelTransferf();                          /* extern */
f32 floorf(f32, s32, s64, s32, s32, ?, f32, f32, f32); /* extern */
void __glOdyim_PixelTexGenParameterfvSGIS(f32 *arg0, f32 *arg1); /* static */
void __glOdyim_PixelTexGenParameterivSGIS(s32 *arg0, s32 *arg1); /* static */
extern ? __glOdyssey_InternalUnpack;

void __glOdyim_DrawPixels(s64 arg0, s64 arg1, s32 arg2, s64 arg3, s64 arg4) {
    s32 spB4;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s32 sp38;
    s64 sp30;
    s64 sp28;                                       /* compiler-managed */
    s32 sp24;
    f32 temp_f1;
    f32 temp_f3;
    s32 temp_a3;
    s32 temp_a6_2;
    s32 temp_a7_2;
    s32 temp_ra;
    s32 temp_v0;
    s64 temp_a7;
    void *temp_a6;
    void *temp_s0;

    temp_a6 = *(void **)0x1018;
    sp60 = arg4;
    sp68 = arg3;
    temp_s0 = *(void **)0x1010;
    sp70 = arg1;
    sp78 = arg0;
    temp_a7 = temp_s0 + 0x10000;
    spB4 = arg2;
    if (temp_s0->unk16964 != 0) {
        if (temp_a6 != NULL) {
            goto block_3;
        }
        goto block_8;
    }
    if (temp_a6 == NULL) {
        goto block_9;
    }
block_3:
    if (temp_a6 != (void *)2) {
        __glSetError(0x502, temp_a6, temp_a7);
    } else {
block_8:
        temp_s0->unk16975 = 1;
        temp_s0->unk2E40(temp_s0, temp_a6, temp_a7);
        *(void *)0x1018 = NULL;
block_9:
        if (temp_s0->unk1C4 != 0) {
            if ((sp78 != 0) && (sp70 != 0) && (sp60 != 0)) {
                temp_ra = spB4 ^ 0x81A6;
                sp50 = (temp_ra == 0) ? 1 : 0;
                temp_a3 = (temp_ra == 0) ? 0x1902 : spB4;
                spB4 = temp_a3;
                if (__glCheckDrawPixelArgs(temp_s0, sp78, sp70, temp_a3, sp68) != 0) {
                    sp38 = 0;
                    sp30 = 0;
                    sp28 = 0;
                    temp_a6_2 = temp_s0->unk4C8;
                    if (temp_a6_2 != 0x85A4) {
                        if (temp_a6_2 != 0x85A3) {
                            sp58 = __glSpecElementsPerGroup(spB4, sp68);
                            sp28 = 0;
                            goto block_17;
                        }
                        if ((spB4 != 0x1907) && (spB4 != 0x1908) && (spB4 != 0x80E0) && (spB4 != 0x80E1)) {
                            __glSetError(0x502, (void *)2);
                        } else if ((sp68 != 0x1401) && (sp68 != 0x1403)) {
                            __glSetError(0x502, (void *)2);
                        } else {
                            sp58 = 2;
                            sp28 = 1;
                            spB4 = 0x1908;
block_17:
                            if (!(temp_s0->unk718 & 2) || (__glOdysseyAsyncCheck(temp_s0, 2) != 0)) {
                                temp_v0 = __glSpecBytesPerElement(sp68);
                                sp38 = 0;
                                unksp2C = (s32) sp60;
                                temp_a7_2 = temp_s0->unk4A8;
                                if (spB4 != 0x1902) {
                                    sp24 = (spB4 == 0x1901) ? 0 : sp24;
                                }
                                temp_f3 = (f32) ((u64) ((s64) temp_s0->unk4B0 << 0x20) >> 0x20);
                                sp40 = temp_f3;
                                temp_f1 = (f32) ((u64) ((s64) temp_s0->unk4AC << 0x20) >> 0x20);
                                sp48 = (f32) sp78 + temp_f3;
                                sp44 = temp_f1;
                                sp4C = (f32) sp70 + temp_f1;
                                __glOdysseyImageXfer(temp_s0 + 0x11D98, sp, &sp40, 0, NULL, temp_s0->unk4B4, (temp_a7_2 == 0) ? sp78 : (s64) temp_a7_2, temp_a7_2);
                                if (temp_s0->unk718 & 2) {
                                    __glOdysseyAsyncDropMarker(temp_s0, 2);
                                }
                            }
                        }
                    } else {
                        __glSetError(0x502);
                    }
                }
            }
        }
    }
}

void __glOdyim_ReadPixels(s64 arg0, s64 arg1, u64 arg2, s64 arg3, s32 arg4, s64 arg5, s64 arg6) {
    s32 spE4;
    u64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    u64 sp60;
    s64 sp58;
    s32 sp54;
    u32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s32 sp38;
    s64 sp30;
    s64 sp28;                                       /* compiler-managed */
    s64 sp20;                                       /* compiler-managed */
    s64 sp18;                                       /* compiler-managed */
    s64 sp10;                                       /* compiler-managed */
    s64 sp8;                                        /* compiler-managed */
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a4;
    u32 temp_a5;
    u32 temp_a7_2;
    u32 temp_lo;
    void *temp_s0;
    void *temp_v0_4;

    temp_v0 = *(s32 *)0x1018;
    sp80 = arg6;
    sp88 = arg5;
    sp90 = arg3;
    sp98 = arg2;
    temp_s0 = *(void **)0x1010;
    sp78 = arg1;
    sp70 = arg0;
    spE4 = arg4;
    if (temp_s0->unk16964 != 0) {
        if (temp_v0 != 0) {
            goto block_2;
        }
        goto block_7;
    }
    if (temp_v0 == 0) {
        goto block_8;
    }
block_2:
    if (temp_v0 != 2) {
        __glSetError(0x502);
    } else {
block_7:
        temp_s0->unk16975 = 1;
        temp_s0->unk2E40(temp_s0);
        *(void *)0x1018 = 0;
block_8:
        if ((sp98 != 0) && (sp90 != 0) && (sp80 != 0) && (temp_at = spE4 ^ 0x81A6, sp58 = (temp_at == 0) ? 1 : 0, temp_a3 = (temp_at == 0) ? 0x1902 : spE4, spE4 = temp_a3, (__glCheckReadPixelArgs(temp_s0, sp98, sp90, temp_a3, sp88) != 0))) {
            sp38 = 0;
            sp30 = 0;
            sp28 = 0;
            sp20 = 0;
            sp18 = 0;
            sp10 = 0;
            sp8 = 0;
            temp_v0_2 = temp_s0->unk49C;
            if (temp_v0_2 != 0x85A4) {
                if (temp_v0_2 != 0x85A3) {
                    sp68 = __glSpecElementsPerGroup(spE4, sp88, 0x1401);
                    sp28 = 0;
                    goto block_15;
                }
                if ((spE4 != 0x1907) && (spE4 != 0x1908) && (spE4 != 0x80E0) && (spE4 != 0x80E1)) {
                    __glSetError(0x502, (void *) sp88, 0x1401, sp88, 0x1403, 0x1908, 1, 2);
                } else if ((sp88 != 0x1401) && (sp88 != 0x1403)) {
                    __glSetError(0x502, (void *) sp88, 0x1401, sp88, 0x1403, 0x1908, 1, 2);
                } else {
                    sp68 = 2;
                    sp28 = 1;
                    spE4 = 0x1908;
block_15:
                    temp_a2 = temp_s0->unk718 & 4;
                    if ((temp_a2 == 0) || (__glOdysseyAsyncCheck(temp_s0, 4, temp_a2) != 0)) {
                        temp_v0_3 = __glSpecBytesPerElement(sp88);
                        var_a4 = spE4;
                        sp38 = 0;
                        unksp2C = (s32) sp80;
                        unkspC = (s32) sp88;
                        sp8 = var_a4;
                        temp_t2 = temp_s0->unk47C;
                        temp_lo = temp_v0_3 * sp68;
                        sp10 = (s32) ((temp_t2 == 0) ? sp98 : (u64) temp_t2);
                        temp_a7 = temp_s0->unk490;
                        unksp14 = (s32) ((temp_a7 == 0) ? sp90 : (s64) temp_a7);
                        temp_a7_2 = temp_s0->unk488;
                        sp18 = (temp_a7_2 >= temp_lo) ? temp_a7_2 : temp_lo;
                        temp_a3_2 = temp_s0->unk47C;
                        sp60 = (u64) temp_a3_2;
                        if (temp_a3_2 != 0) {
                            temp_v0_4 = __glOdysseySetCurrentFilter(temp_s0, 2);
                            temp_a4 = temp_v0_4->unk0;
                            if ((temp_a4 != 0x8011) && (temp_a4 != 0x8012)) {
                                var_a4 = sp8;
                                if (sp60 >= sp98) {
                                    goto block_21;
                                }
                            } else if (temp_v0_4->unk4 != 0x8016) {
                                var_a4 = sp8;
                                if (sp60 >= sp98) {
                                    goto block_21;
                                }
                            } else {
                                temp_a0 = temp_v0_4->unk40;
                                var_a4 = sp8;
                                if (sp60 >= (u32) (sp98 - ((temp_a0 >= 1) ? (temp_a0 - 1) : 0))) {
block_21:
                                    temp_s0->unk47C = 0;
                                    var_a4 = sp8;
                                }
                            }
                        }
                        if (var_a4 != 0x1902) {
                            unksp24 = (var_a4 == 0x1901) ? 0 : unksp24;
                        } else {
                            sp20 = (s32) sp58;
                        }
                        sp44 = (f32) sp78;
                        sp40 = (f32) sp70;
                        sp4C = (f32) (sp90 + sp78);
                        sp48 = (f32) (sp98 + sp70);
                        temp_a5 = temp_s0->unk484;
                        sp50 = temp_a5;
                        temp_a6 = temp_s0->unk480;
                        sp54 = temp_a6;
                        __glOdysseyImageXfer(sp, temp_s0 + 0x11DD4, &sp40, 0, &sp50, temp_a5, (s64) temp_a6, (s32) sp78);
                        if (temp_s0->unk718 & 4) {
                            __glOdysseyAsyncDropMarker(temp_s0, 4);
                        }
                        temp_s0->unk47C = (s32) sp60;
                    }
                }
            } else {
                __glSetError(0x502);
            }
        }
    }
}

void __glOdyim_CopyPixels(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp30;
    s32 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 temp_f18;
    f32 temp_f19;
    f32 var_f10;
    f32 var_f9;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_f11;
    s32 temp_f12;
    s32 temp_f17;
    s32 temp_f21;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a3_2;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_t1;
    s32 var_v0;
    s32 var_v0_2;
    s64 temp_v0_4;
    s64 var_a3;
    s64 var_a4;
    u8 var_a2;
    u8 var_t2;
    void *temp_s0;

    temp_v0 = *(s32 *)0x1018;
    spB0 = arg4;
    spB8 = arg2;
    sp98 = arg1;
    temp_s0 = *(void **)0x1010;
    spA0 = arg0;
    spA8 = temp_s0 + 0x10000;
    if (temp_s0->unk16964 != 0) {
        if (temp_v0 != 0) {
            goto block_2;
        }
        goto block_7;
    }
    if (temp_v0 == 0) {
        goto block_8;
    }
block_2:
    if (temp_v0 != 2) {
        __glSetError(0x502, (void *) spA8);
    } else {
block_7:
        ((void *) spA8)->unk6975 = 1;
        temp_s0->unk2E40(temp_s0, (void *) spA8);
        *(void *)0x1018 = 0;
block_8:
        var_a2 = temp_s0->unk1C4;
        if (var_a2 != 0) {
            var_a3 = spB8;
            if (var_a3 != 0) {
                var_a4 = spB8;
                if (arg3 != 0) {
                    if ((var_a4 >= 0) && (arg3 >= 0)) {
                        temp_v0_2 = temp_s0->unk704;
                        temp_t0 = (temp_v0_2 & 0x20000) != 0;
                        temp_v0_3 = (temp_v0_2 & 0x20) != 0;
                        switch (spB0) {             /* irregular */
                        default:
                            __glSetError(0x500);
                            break;
                        case 0x1801:
                            if (temp_s0->unkC99 != 0) {
                                var_a6 = 1;
                                if (temp_v0_3 == 0) {
                                    var_a6 = 1;
                                    if (temp_t0 == 0) {
                                        var_a6 = 0;
                                    }
                                }
block_21:
                                var_t1 = var_a6 & 0xFF;
                                temp_a6 = temp_s0->unkC84;
                                var_t2 = temp_s0->unkDD0;
                                if (temp_a6 != 0x1C01) {
                                    if (temp_a6 == 0x1C00) {
                                        if (var_t1 != 0) {
                                            goto block_25;
                                        }
block_51:
                                        if (temp_v0_3 != 0) {
                                            goto block_52;
                                        }
                                        if (temp_t0 != 0) {
                                            if (temp_v0_3 == 0) {
                                                goto block_71;
                                            }
block_52:
                                            goto block_26;
                                            goto block_27;
                                        }
                                        if (var_t2 != 0) {
                                            if (((u32) spA8->unk1E1C < (u32) spB8) || ((u32) spA8->unk1E18 < (u32) arg3)) {
                                                if (((f64) temp_s0->unk2E8 == 1.0) && ((f64) temp_s0->unk2EC == 1.0)) {
                                                    var_f9 = (f32) arg3;
                                                    var_f10 = (f32) spB8;
                                                    goto block_73;
                                                }
block_25:
                                                if (temp_v0_3 != 0) {
block_26:
                                                    var_v0 = (s32) ((f32) ((u64) ((s64) spA8->unk1DBC << 0x20) >> 0x20) - (temp_s0->unk174 - (f32) temp_s0->unkE50));
                                                } else {
block_71:
                                                    var_v0 = (s32) ((f32) ((u64) ((s64) spA8->unk1DBC << 0x20) >> 0x20) - (temp_s0->unk174 - (f32) temp_s0->unkE50));
                                                }
block_27:
                                                var_f10 = (f32) spB8;
                                                var_f9 = (f32) arg3;
                                                M2C_ERROR(/* unknown instruction: madd.s $f3, $f7, $f5, $f10 */);
                                                M2C_ERROR(/* unknown instruction: madd.s $f11, $f13, $f6, $f9 */);
                                                temp_f12 = (s32) M2C_ERROR(/* unknown instruction: movf.s $f12, $f3, $fcc3 */);
                                                temp_a2 = spA0 + spB8;
                                                if (var_t1 != 0) {
                                                    goto block_28;
                                                }
                                                temp_f17 = (s32) M2C_ERROR(/* unknown instruction: movf.s $f7, $f3, $fcc0 */);
                                                if (((spA0 >= temp_f17) ? spA0 : (s64) temp_f17) >= ((temp_f12 >= temp_a2) ? temp_a2 : temp_f12)) {
                                                    goto block_73;
                                                }
block_28:
                                                temp_f11 = (s32) M2C_ERROR(/* unknown instruction: movf.s $f4, $f11, $fcc2 */);
                                                if (temp_t0 != 0) {
                                                    var_a5 = (sp98 + (arg3 * 2)) - 1;
                                                    var_a4_2 = temp_f11 < var_a5;
                                                } else {
                                                    var_a5 = sp98 + arg3;
                                                    var_a4_2 = temp_f11 < var_a5;
                                                }
                                                if (var_t1 != 0) {
                                                    goto block_31;
                                                }
                                                temp_f21 = (s32) M2C_ERROR(/* unknown instruction: movf.s $f8, $f11, $fcc1 */);
                                                if (((sp98 >= temp_f21) ? sp98 : (s64) temp_f21) >= ((var_a4_2 == 0) ? var_a5 : temp_f11)) {
                                                    goto block_73;
                                                }
block_31:
                                                sp28 = temp_s0->unk4A0;
                                                sp20 = temp_s0->unk498;
                                                sp18 = temp_s0->unk490;
                                                sp10 = temp_s0->unk488;
                                                sp8 = temp_s0->unk480;
                                                sp0 = temp_s0->unk478;
                                                sp88 = spB8 * arg3;
                                                temp_a7 = temp_s0->unk4C4;
                                                temp_a5 = temp_s0->unk4C0;
                                                sp30.unk4 = (s32) temp_s0->unk4A8;
                                                sp30.unk8 = (s32) temp_s0->unk4AC;
                                                sp30.unkC = (s32) temp_s0->unk4B0;
                                                sp30.unk10 = (s32) temp_s0->unk4B4;
                                                sp30.unk14 = (s32) temp_s0->unk4B8;
                                                sp30.unk18 = (s32) temp_s0->unk4BC;
                                                sp30.unk1C = temp_a5;
                                                sp30.unk20 = temp_a7;
                                                sp30.unk24 = (s32) temp_s0->unk4C8;
                                                sp30.unk28 = (s32) temp_s0->unk4CC;
                                                sp30 = temp_s0->unk4A4;
                                                if (spB0 != 0x1801) {
                                                    if (spB0 == 0x1802) {
                                                        var_a3_2 = 0x1405;
                                                        sp64 = 0x1405;
                                                        var_v0_2 = 0x1901;
                                                        sp60 = 0x1901;
                                                    } else {
                                                        __glOdysseyImageCalcSuitableHostFormatForDownload(0, 0, spA8->unk1DCC, &sp60, &sp64, temp_a5, &sp30, temp_a7, temp_f12, (f32) var_v0);
                                                        var_a3_2 = sp64;
                                                        var_v0_2 = sp60;
                                                    }
                                                    if (var_a3_2 != 0x1403) {
                                                        if (var_a3_2 == 0x1405) {
                                                            goto block_66;
                                                        }
                                                        goto block_37;
                                                    }
                                                    if (var_v0_2 != 0x1908) {
                                                        goto block_62;
                                                    }
                                                    if (spB8 >= 0x801) {
                                                        sp64 = 0x1401;
                                                    } else {
block_62:
                                                        sp88 *= 2;
                                                    }
                                                    if (var_v0_2 == 0x1908) {
                                                        goto block_64;
                                                    }
                                                } else {
                                                    sp64 = 0x1405;
                                                    var_v0_2 = 0x1902;
                                                    sp60 = 0x1902;
block_66:
                                                    sp88 *= 4;
block_37:
                                                    if (var_v0_2 == 0x1908) {
block_64:
                                                        sp88 *= 4;
                                                    }
                                                }
                                                temp_v0_4 = temp_s0->unk0(temp_s0, sp88);
                                                if (temp_v0_4 != 0) {
                                                    sp78 = 0;
                                                    sp90 = temp_v0_4;
                                                    temp_s0->unk478 = (s32) __glOdyssey_InternalUnpack.unk0;
                                                    temp_s0->unk47C = (s32) __glOdyssey_InternalUnpack.unk4;
                                                    temp_s0->unk480 = (s32) __glOdyssey_InternalUnpack.unk8;
                                                    temp_s0->unk484 = (s32) __glOdyssey_InternalUnpack.unkC;
                                                    temp_s0->unk488 = (s32) __glOdyssey_InternalUnpack.unk10;
                                                    temp_s0->unk48C = (s32) __glOdyssey_InternalUnpack.unk14;
                                                    temp_s0->unk490 = (s32) __glOdyssey_InternalUnpack.unk18;
                                                    temp_s0->unk494 = (s32) __glOdyssey_InternalUnpack.unk1C;
                                                    temp_s0->unk498 = (s32) __glOdyssey_InternalUnpack.unk20;
                                                    temp_s0->unk49C = (s32) __glOdyssey_InternalUnpack.unk24;
                                                    temp_s0->unk4A0 = (s32) __glOdyssey_InternalUnpack.unk28;
                                                    temp_s0->unk4A4 = (s32) __glOdyssey_InternalUnpack.unk0;
                                                    temp_s0->unk4A8 = (s32) __glOdyssey_InternalUnpack.unk4;
                                                    temp_s0->unk4AC = (s32) __glOdyssey_InternalUnpack.unk8;
                                                    temp_s0->unk4B0 = (s32) __glOdyssey_InternalUnpack.unkC;
                                                    temp_s0->unk4B4 = (s32) __glOdyssey_InternalUnpack.unk10;
                                                    temp_s0->unk4B8 = (s32) __glOdyssey_InternalUnpack.unk14;
                                                    temp_s0->unk4BC = (s32) __glOdyssey_InternalUnpack.unk18;
                                                    temp_s0->unk4C0 = (s32) __glOdyssey_InternalUnpack.unk1C;
                                                    temp_s0->unk4C4 = (s32) __glOdyssey_InternalUnpack.unk20;
                                                    temp_s0->unk4C8 = (s32) __glOdyssey_InternalUnpack.unk24;
                                                    temp_s0->unk4CC = (s32) __glOdyssey_InternalUnpack.unk28;
                                                    sp80 = __glGetCurrentSetDefaultPixelXferState(temp_s0);
                                                    __glOdyim_ReadPixels(spA0, sp98, (u64) spB8, arg3, sp60, (s64) sp64, sp90);
                                                    __glRestoreCurrentPixelXferState(temp_s0, sp80);
                                                    __glOdyim_DrawPixels(spB8, arg3, sp60, (s64) sp64, sp90);
                                                    temp_s0->unk4A0 = sp28;
                                                    temp_s0->unk498 = sp20;
                                                    temp_s0->unk490 = sp18;
                                                    temp_s0->unk488 = sp10;
                                                    temp_s0->unk480 = sp8;
                                                    temp_s0->unk478 = sp0;
                                                    temp_a4 = sp30.unk20;
                                                    temp_a5_2 = sp30.unk24;
                                                    temp_a6_2 = sp30.unk28;
                                                    temp_a7_2 = sp30.unk1C;
                                                    temp_s0->unk4A4 = sp30;
                                                    temp_s0->unk4A8 = (s32) sp30.unk4;
                                                    temp_s0->unk4AC = (s32) sp30.unk8;
                                                    temp_s0->unk4B0 = (s32) sp30.unkC;
                                                    temp_s0->unk4B4 = (s32) sp30.unk10;
                                                    temp_s0->unk4B8 = (s32) sp30.unk14;
                                                    temp_s0->unk4BC = (s32) sp30.unk18;
                                                    temp_s0->unk4C0 = temp_a7_2;
                                                    temp_s0->unk4CC = temp_a6_2;
                                                    temp_s0->unk4C8 = temp_a5_2;
                                                    temp_s0->unk4C4 = temp_a4;
                                                    __glOdyim_DrawPixels((s64) temp_s0, temp_v0_4, (s32) &sp30, (s64) sp28, (s64) temp_a4, temp_a5_2, temp_a6_2, temp_a7_2);
                                                } else {
                                                    __glSetError(0x505);
                                                }
                                            } else {
                                                var_f9 = (f32) arg3;
                                                var_f10 = (f32) spB8;
                                                goto block_73;
                                            }
                                        } else {
                                            var_f9 = (f32) arg3;
                                            var_f10 = (f32) spB8;
block_73:
                                            temp_f19 = (f32) sp98;
                                            temp_f18 = (f32) spA0;
                                            sp68 = temp_f18;
                                            sp6C = temp_f19;
                                            sp74 = temp_f19 + var_f9;
                                            sp70 = temp_f18 + var_f10;
                                            __glOdysseyImageXfer(temp_s0 + 0x11D98, temp_s0 + 0x11DD4, &sp68, spB0, NULL);
                                        }
                                    }
                                } else {
block_79:
                                    __glFeedbackCopyPixels(temp_s0, temp_s0 + 0xF0, var_a2, var_a3, var_a4);
                                }
                            } else {
                                (? (*)(?))0x1801(0x502);
                            }
                            break;
                        case 0x1800:
                            var_t2 = 0;
                            if (temp_s0->unkDD0 != 0) {
                                temp_t1 = temp_s0->unk4D4;
                                temp_a6_3 = temp_s0->unk760;
                                if ((temp_t1 != temp_a6_3) && ((temp_s0->unkC96 == 0) || (temp_a6_3 != 0x408))) {
                                    var_a2 = temp_s0->unkC97;
                                    var_a3 = 0x404;
                                    if (var_a2 != 0) {
                                        if (temp_a6_3 != (s32) 0x404) {
                                            var_a4 = 0x405;
                                            goto block_47;
                                        }
                                        if ((temp_t1 == 0x400) || (var_a4 = 0x405, (temp_t1 == 0x401))) {
                                            goto block_58;
                                        }
block_47:
                                        if (temp_a6_3 != (s32) 0x405) {
                                            goto block_48;
                                        }
                                        if (temp_t1 != 0x402) {
                                            var_t2 = 0;
                                            if (temp_t1 == 0x403) {
                                                goto block_58;
                                            }
                                        } else {
                                            goto block_58;
                                        }
                                    } else {
block_48:
                                        var_t2 = 0;
                                    }
                                } else {
block_58:
                                    var_t2 = 1;
                                }
                            }
                            temp_a6_4 = temp_s0->unkC84;
                            if (temp_a6_4 != 0x1C01) {
                                var_t1 = 0;
                                if (temp_a6_4 == 0x1C00) {
                                    goto block_51;
                                }
                            } else {
                                goto block_79;
                            }
                            break;
                        case 0x1802:
                            if (temp_s0->unkC9A != 0) {
                                var_a6 = 1;
                                if (temp_v0_3 == 0) {
                                    var_a6 = 1;
                                    if (temp_t0 == 0) {
                                        var_a6 = 0;
                                    }
                                }
                                goto block_21;
                            }
                            M2C_ERROR(/* Read from unset register $t9 */)(0x502);
                            break;
                        }
                    } else {
                        __glSetError(0x501);
                    }
                }
            }
        }
    }
}

void __glOdyim_PixelZoom(f32 fparg0, f32 fparg1) {
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1->unk2EC = fparg1;
        temp_a1->unk2E8 = fparg0;
        *(void *)0x1018 = 2;
        temp_a1->unk2E24 = (s32) (temp_a1->unk2E24 | 0x10);
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glOdyim_PixelTransferf(void) {
    __glim_PixelTransferf();
}

void __glOdyim_PixelTransferi(s32 arg1) {
    __glOdyim_PixelTransferf((f32) arg1);
}

/*
Decompilation failure in function __glOdyim_PixelMapfv:

Unable to determine jump table for jr instruction at ody_image_api.s line 1652.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdyim_PixelMapuiv:

Unable to determine jump table for jr instruction at ody_image_api.s line 1729.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdyim_PixelMapusv:

Unable to determine jump table for jr instruction at ody_image_api.s line 1804.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdysseyConvolutionFilter(void *arg0, s64 arg1, s32 arg2, u32 arg3, u32 arg4, s64 arg5, s32 arg6, s32 arg7) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s32 sp8;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a6_2;
    s32 temp_ra;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 var_a4;
    s32 var_a7;
    s32 var_t2;
    s32 var_t3;
    s32 var_t8;
    s64 temp_lo;
    s64 temp_lo_2;
    s64 temp_lo_3;
    s64 temp_lo_4;
    void *temp_a0_2;
    void *temp_a6;
    void *temp_v0;
    void *var_a5;
    void *var_s1;

    if (arg6 != 0x8010) {
        sp40 = arg5;
        var_s1 = ((arg6 ^ 0x8011) == 0) ? (arg0 + 0x354) : sp0;
    } else {
        sp40 = arg5;
        var_s1 = arg0 + 0x300;
    }
    var_s1->unk0 = arg6;
    temp_v0 = arg0->unk0(arg0, 0x790);
    if (temp_v0 != NULL) {
        temp_v0_2 = arg3 < 0x1908U;
        temp_a1 = arg3 < 0x1909U;
        if (temp_v0_2 == 0) {
            if (temp_a1 == 0) {
                if (arg3 >= 0x8000U) {
                    if (arg3 > 0x8000U) {
                        if (arg3 >= 0x80E1U) {
                            if (arg3 <= 0x80E1U) {
                                goto block_9;
                            }
                            goto block_72;
                        }
                        if (arg3 != 0x80E0) {
                            goto block_72;
                        }
                        goto block_14;
                    }
                    goto block_9;
                }
                if (arg3 >= 0x190AU) {
                    if (arg3 < 0x190BU) {
                        temp_lo = arg1 * arg2;
                        sp38 = temp_lo;
                        sp48 = temp_lo * 2;
                        goto block_18;
                    }
                    goto block_72;
                }
                if (arg3 != 0x1909) {
                    goto block_72;
                }
                goto block_17;
            }
block_9:
            temp_lo_2 = arg1 * arg2;
            sp38 = temp_lo_2;
            sp48 = temp_lo_2 * 4;
            goto block_18;
        }
        temp_a0 = arg3 < 0x1905U;
        if (temp_a0 == 0) {
            if (arg3 >= 0x1906U) {
                if (arg3 >= 0x1907U) {
                    if (temp_v0_2 != 0) {
block_14:
                        temp_lo_3 = arg1 * arg2;
                        sp38 = temp_lo_3;
                        sp48 = temp_lo_3 * 3;
                        goto block_18;
                    }
                    goto block_72;
                }
                if (arg3 != 0x1906) {
                    goto block_72;
                }
                goto block_17;
            }
            goto block_17;
        }
        if (arg3 >= 0x1904U) {
            if (temp_a0 != 0) {
                goto block_17;
            }
            goto block_72;
        }
        if (arg3 != 0x1903) {
block_72:
            __glSetError(0x500, (void *) temp_a1);
        } else {
block_17:
            temp_lo_4 = arg1 * arg2;
            sp38 = temp_lo_4;
            sp48 = temp_lo_4;
block_18:
            if (arg7 != 0) {
                sp8.unk28 = (s32) arg0->unk4CC;
                sp8.unk24 = (s32) arg0->unk4C8;
                sp8.unk20 = (s32) arg0->unk4C4;
                sp8.unk1C = (s32) arg0->unk4C0;
                sp8.unk18 = (s32) arg0->unk4BC;
                sp8.unk14 = (s32) arg0->unk4B8;
                sp8.unk10 = (s32) arg0->unk4B4;
                sp8.unkC = (s32) arg0->unk4B0;
                sp8.unk8 = (s32) arg0->unk4AC;
                sp8.unk4 = (s32) arg0->unk4A8;
                sp8 = arg0->unk4A4;
                arg0->unk4A4 = (s32) __glOdyssey_InternalUnpack.unk0;
                arg0->unk4A8 = (s32) __glOdyssey_InternalUnpack.unk4;
                arg0->unk4AC = (s32) __glOdyssey_InternalUnpack.unk8;
                arg0->unk4B0 = (s32) __glOdyssey_InternalUnpack.unkC;
                arg0->unk4B4 = (s32) __glOdyssey_InternalUnpack.unk10;
                arg0->unk4B8 = (s32) __glOdyssey_InternalUnpack.unk14;
                arg0->unk4BC = (s32) __glOdyssey_InternalUnpack.unk18;
                arg0->unk4C0 = (s32) __glOdyssey_InternalUnpack.unk1C;
                arg0->unk4C4 = (s32) __glOdyssey_InternalUnpack.unk20;
                arg0->unk4C8 = (s32) __glOdyssey_InternalUnpack.unk24;
                arg0->unk4CC = (s32) __glOdyssey_InternalUnpack.unk28;
            }
            __glFillImage(arg0, arg1, arg2, arg3, arg4, sp40, var_s1->unk50);
            if (arg7 != 0) {
                arg0->unk4A4 = sp8;
                arg0->unk4A8 = (s32) sp8.unk4;
                arg0->unk4AC = (s32) sp8.unk8;
                arg0->unk4B0 = (s32) sp8.unkC;
                arg0->unk4B4 = (s32) sp8.unk10;
                arg0->unk4B8 = (s32) sp8.unk14;
                arg0->unk4BC = (s32) sp8.unk18;
                arg0->unk4C0 = (s32) sp8.unk1C;
                arg0->unk4CC = (s32) sp8.unk28;
                arg0->unk4C8 = (s32) sp8.unk24;
                arg0->unk4C4 = (s32) sp8.unk20;
            }
            if (arg4 >= 0x8034U) {
                switch (arg4);                      /* irregular */
            } else {
                if (arg4 >= 0x1404U) {
                    if (arg4 >= 0x1405U) {
                        if (arg4 >= 0x8032U) {
                            if (arg4 <= 0x8032U) {
                            case 0x8363:
                                if ((arg3 != 0x1907) && (arg3 != 0x80E0)) {
                                    __glSetError(0x500, (void *)0x80E0);
                                } else {
                                    __glOdysseyCvtToFloat(var_s1->unk50, temp_v0, sp48, arg4);
                                }
                                goto block_46;
                            }
                            if (arg4 != 0x8033) {
                                goto block_84;
                            }
                        case 0x8035:
                        case 0x8365:
                        case 0x8368:
                            if ((arg3 != 0x1908) && (arg3 != 0x8000) && (arg3 != 0x80E1)) {
                                __glSetError(0x500);
                            } else {
                                __glOdysseyCvtToFloat(var_s1->unk50, temp_v0, sp48, arg4);
                            }
                            goto block_46;
                        }
                        if (arg4 >= 0x1406U) {
                            temp_a4 = arg4 < 0x1407U;
                            if (temp_a4 != 0) {
                                __glOdysseyCvtToFloat(var_s1->unk50, temp_v0, sp48, arg4, temp_a4);
                                goto block_46;
                            }
                            goto block_84;
                        }
                        if (arg4 != 0x1405) {
                            goto block_84;
                        }
                        goto block_69;
                    }
                    goto block_69;
                }
                temp_v0_3 = arg4 < 0x1402U;
                if (temp_v0_3 == 0) {
                    if ((arg4 < 0x1403U) || (arg4 == 0x1403)) {
                        goto block_69;
                    }
                    goto block_84;
                }
                if (arg4 >= 0x1401U) {
                    if (temp_v0_3 == 0) {
                        goto block_84;
                    }
                    goto block_69;
                }
                if (arg4 != 0x1400) {
block_84:
                    __glSetError(0x500);
                } else {
block_69:
                    __glOdysseyCvtToFloat(var_s1->unk50, temp_v0, sp48, arg4);
block_46:
                    if (arg1 > 0) {
                        var_t8 = 0;
                        var_a4 = 0;
loop_52:
                        var_t8 += 1;
                        if (arg2 > 0) {
                            var_t3 = arg2 & 3;
                            var_t2 = 0;
                            var_a7 = var_a4 * 4;
                            var_a5 = var_a7 + temp_v0;
                            if (var_t3 == 0) {

                            } else {
                                do {
                                    *(var_s1->unk50 + var_a7) = var_a5->unk0;
                                    (var_s1->unk50 + var_a7)->unk4 = (f32) var_a5->unk4;
                                    (var_s1->unk50 + var_a7)->unk8 = (f32) var_a5->unk8;
                                    var_a5 += 0x10;
                                    var_t2 += 1;
                                    var_t3 -= 1;
                                    var_a4 += 4;
                                    temp_a6 = var_s1->unk50 + var_a7;
                                    var_a7 += 0x10;
                                    temp_a6->unkC = (f32) var_a5->unk-4;
                                } while (var_t3 != 0);
                            }
                            if ((arg2 >> 2) != 0) {
                                do {
                                    *(var_s1->unk50 + var_a7) = var_a5->unk0;
                                    (var_s1->unk50 + var_a7)->unk4 = (f32) var_a5->unk4;
                                    (var_s1->unk50 + var_a7)->unk8 = (f32) var_a5->unk8;
                                    (var_s1->unk50 + var_a7)->unkC = (f32) var_a5->unkC;
                                    temp_ra = var_a7 + 0x10;
                                    *(var_s1->unk50 + temp_ra) = var_a5->unk10;
                                    (var_s1->unk50 + temp_ra)->unk4 = (f32) var_a5->unk14;
                                    (var_s1->unk50 + temp_ra)->unk8 = (f32) var_a5->unk18;
                                    (var_s1->unk50 + temp_ra)->unkC = (f32) var_a5->unk1C;
                                    temp_a6_2 = var_a7 + 0x20;
                                    *(var_s1->unk50 + temp_a6_2) = var_a5->unk20;
                                    (var_s1->unk50 + temp_a6_2)->unk4 = (f32) var_a5->unk24;
                                    (var_s1->unk50 + temp_a6_2)->unk8 = (f32) var_a5->unk28;
                                    (var_s1->unk50 + temp_a6_2)->unkC = (f32) var_a5->unk2C;
                                    temp_v1 = var_a7 + 0x30;
                                    *(var_s1->unk50 + temp_v1) = var_a5->unk30;
                                    (var_s1->unk50 + temp_v1)->unk4 = (f32) var_a5->unk34;
                                    (var_s1->unk50 + temp_v1)->unk8 = (f32) var_a5->unk38;
                                    var_a5 += 0x40;
                                    var_t2 += 4;
                                    var_a4 += 0x10;
                                    var_a7 += 0x40;
                                    (var_s1->unk50 + temp_v1)->unkC = (f32) var_a5->unk-4;
                                } while (arg2 != var_t2);
                            }
                        }
                        if (arg1 != var_t8) {
                            goto loop_52;
                        }
                    }
                    temp_a0_2 = var_s1->unk50;
                    temp_a4_2 = sp48 * 4;
                    __glOdysseyCvtToRGBA(temp_a0_2 + temp_a4_2, temp_a0_2 + (sp38 * 0x10), sp38, arg3, temp_a4_2);
                    __glOdysseyScaleBiasFilter(var_s1, sp38, var_s1->unk50);
                    temp_a2 = var_s1->unk8;
                    if ((temp_a2 != 0x1906) && (temp_a2 != 0x1907) && (temp_a2 != 0x1908) && (temp_a2 != 0x1909) && (temp_a2 != 0x190A) && (temp_a2 != 0x8049)) {
                        __glSetError(0x500);
                    } else {
                        __glOdysseyCvtToInternalFmt(var_s1->unk50, sp38, temp_a2, 0x1906, 0x1907);
                        var_s1->unkC = 4;
                        var_s1->unk8 = 0x1908;
                        if (temp_v0 != NULL) {
                            arg0->unkC(arg0, temp_v0);
                        }
                        __glOdysseyInitConvolutionState(arg6);
                    }
                }
            }
        }
    } else {
        __glSetError(0x505);
    }
}

void __glOdysseySeparableFilter(void *arg0, s64 arg1, s64 arg2, u32 arg3, u32 arg4, s64 arg5, s64 arg6, s64 arg7, u8 arg_sp4) {
    s64 spA8;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f0;
    f32 temp_f15;
    f32 temp_f21;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_lo;
    s32 temp_ra;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 var_a3;
    s32 var_a3_3;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_t2;
    s32 var_v0_2;
    s32 var_v0_3;
    s64 temp_at;
    s64 temp_s6;
    s64 temp_v0_4;
    s64 var_a1;
    s64 var_a7_2;
    u32 temp_v1;
    u32 var_a7;
    u32 var_v0;
    void *temp_s1;
    void *temp_t3;
    void *temp_v0;
    void *temp_v0_2;
    void *var_a1_2;
    void *var_a3_2;
    void *var_a4;
    void *var_a4_2;
    void *var_a4_3;
    void *var_a6;

    sp30 = arg7;
    sp40 = arg6;
    sp58 = arg5;
    temp_s6 = arg2 + arg1;
    temp_at = (temp_s6 * 0x10) + 0x790;
    sp60 = temp_at;
    temp_v0 = arg0->unk8(arg0->unk3F8, temp_at);
    arg0->unk3F8 = temp_v0;
    if (temp_v0 != NULL) {
        spA8 = arg2;
        arg0->unk3A8 = (s32) sp30;
        temp_v0_2 = arg0->unk0(arg0, sp60);
        var_a1 = spA8;
        if (temp_v0_2 != NULL) {
            temp_v0_3 = arg3 < 0x1908U;
            if (temp_v0_3 == 0) {
                if (arg3 >= 0x1909U) {
                    if (arg3 >= 0x8000U) {
                        var_a1 = arg2 * 4;
                        if (arg3 > 0x8000U) {
                            if (arg3 >= 0x80E1U) {
                                if (arg3 <= 0x80E1U) {
                                    goto block_8;
                                }
                                goto block_105;
                            }
                            var_a1 = arg2 * 4;
                            if (arg3 != 0x80E0) {
                                goto block_105;
                            }
                            goto block_15;
                        }
                        goto block_9;
                    }
                    if (arg3 >= 0x190AU) {
                        if (arg3 < 0x190BU) {
                            var_a1 = arg2 * 2;
                            sp50 = temp_s6 * 2;
                            goto block_19;
                        }
                        goto block_105;
                    }
                    if (arg3 != 0x1909) {
                        goto block_105;
                    }
                    goto block_18;
                }
block_8:
                var_a1 = arg2 * 4;
block_9:
                sp50 = temp_s6 * 4;
                goto block_19;
            }
            temp_a2 = arg3 < 0x1905U;
            if (temp_a2 == 0) {
                if (arg3 >= 0x1906U) {
                    if (arg3 >= 0x1907U) {
                        if (temp_v0_3 != 0) {
                            var_a1 = arg2 * 4;
block_15:
                            var_a1 -= arg2;
                            sp50 = temp_s6 * 3;
                            goto block_19;
                        }
                        goto block_105;
                    }
                    if (arg3 != 0x1906) {
                        goto block_105;
                    }
                    goto block_18;
                }
                goto block_18;
            }
            if (arg3 >= 0x1904U) {
                if (temp_a2 != 0) {
                    goto block_18;
                }
                goto block_105;
            }
            if (arg3 != 0x1903) {
block_105:
                __glSetError(0x500, (void *) var_a1);
            } else {
block_18:
                sp50 = temp_s6;
block_19:
                temp_v0_4 = arg4 < 0x8034U;
                if (temp_v0_4 == 0) {
                    sp38 = temp_v0_4;
                    if (arg4 > 0x8034U) {
                        if (arg4 >= 0x8364U) {
                            if (arg4 > 0x8364U) {
                                if (arg4 >= 0x8367U) {
                                    if (arg4 > 0x8367U) {
                                        var_v0 = (u32) var_a1 >> 0x1F;
                                        if (arg4 != 0x8368) {
                                            goto block_119;
                                        }
                                        goto block_132;
                                    }
                                    goto block_131;
                                }
                                if (arg4 >= 0x8366U) {
                                    var_a7 = (u32) var_a1 >> 0x1F;
                                    if (arg4 > 0x8366U) {
                                        goto block_119;
                                    }
                                    goto block_36;
                                }
                                var_a7 = (u32) var_a1 >> 0x1F;
                                if (arg4 != 0x8365) {
                                    goto block_119;
                                }
                                goto block_36;
                            }
                            goto block_35;
                        }
                        if (arg4 >= 0x8362U) {
                            if (arg4 > 0x8362U) {
                                if (arg4 == 0x8363) {
                                    goto block_35;
                                }
                                goto block_119;
                            }
                            goto block_31;
                        }
                        if (arg4 >= 0x8036U) {
                            if (arg4 <= 0x8036U) {
block_131:
                                var_v0 = (u32) var_a1 >> 0x1F;
                                goto block_132;
                            }
                            goto block_118;
                        }
                        var_v0 = (u32) var_a1 >> 0x1F;
                        if (arg4 != 0x8035) {
                            goto block_119;
                        }
block_132:
                        sp48 = arg0->unk3F8 + (((s32) (var_v0 + var_a1) >> 1) * 2);
                        goto block_38;
                    }
                    goto block_35;
                }
                sp38 = temp_v0_4;
                if (arg4 >= 0x1404U) {
                    if (arg4 >= 0x1405U) {
                        if (arg4 >= 0x8032U) {
                            if (arg4 <= 0x8032U) {
block_31:
                                temp_v1 = (u32) var_a1 >> 0x1F;
                                temp_a0 = (s32) MULTU_HI(((temp_v1 == 0) ? var_a1 : -var_a1), ((0xAAAA << 0x10) | 0xAAAB)) >> 1;
                                sp48 = arg0->unk3F8 + ((temp_v1 == 0) ? temp_a0 : -temp_a0);
                                goto block_38;
                            }
                            if (arg4 != 0x8033) {
block_118:
                                goto block_119;
                            }
block_35:
                            var_a7 = (u32) var_a1 >> 0x1F;
block_36:
                            var_a7_2 = arg0->unk3F8 + ((s32) (var_a7 + var_a1) >> 1);
                            goto block_37;
                        }
                        if (arg4 >= 0x1406U) {
                            if (arg4 < 0x1407U) {
                                var_a7_2 = arg0->unk3F8 + (var_a1 * 4);
                                goto block_37;
                            }
                            goto block_119;
                        }
                        if (arg4 == 0x1405) {
                            goto block_111;
                        }
                        goto block_119;
                    }
block_111:
                    sp48 = arg0->unk3F8 + (var_a1 * 4);
                    goto block_38;
                }
                temp_v0_5 = arg4 < 0x1402U;
                if (temp_v0_5 == 0) {
                    if ((arg4 < 0x1403U) || (arg4 == 0x1403)) {
                        sp48 = arg0->unk3F8 + (var_a1 * 2);
                        goto block_38;
                    }
                    goto block_119;
                }
                if (arg4 >= 0x1401U) {
                    if (temp_v0_5 == 0) {
                        goto block_119;
                    }
                    goto block_116;
                }
                if (arg4 == 0x1400) {
block_116:
                    var_a7_2 = var_a1 + arg0->unk3F8;
block_37:
                    sp48 = var_a7_2;
block_38:
                    if (arg_sp4 != 0) {
                        sp28 = arg0->unk4CC;
                        sp24 = arg0->unk4C8;
                        sp20 = arg0->unk4C4;
                        sp1C = arg0->unk4C0;
                        sp18 = arg0->unk4BC;
                        sp14 = arg0->unk4B8;
                        sp10 = arg0->unk4B4;
                        spC = arg0->unk4B0;
                        sp8 = arg0->unk4AC;
                        sp4 = arg0->unk4A8;
                        sp0 = arg0->unk4A4;
                        arg0->unk4A4 = (s32) __glOdyssey_InternalUnpack.unk0;
                        arg0->unk4A8 = (s32) __glOdyssey_InternalUnpack.unk4;
                        arg0->unk4AC = (s32) __glOdyssey_InternalUnpack.unk8;
                        arg0->unk4B0 = (s32) __glOdyssey_InternalUnpack.unkC;
                        arg0->unk4B4 = (s32) __glOdyssey_InternalUnpack.unk10;
                        arg0->unk4B8 = (s32) __glOdyssey_InternalUnpack.unk14;
                        arg0->unk4BC = (s32) __glOdyssey_InternalUnpack.unk18;
                        arg0->unk4C0 = (s32) __glOdyssey_InternalUnpack.unk1C;
                        arg0->unk4C4 = (s32) __glOdyssey_InternalUnpack.unk20;
                        arg0->unk4C8 = (s32) __glOdyssey_InternalUnpack.unk24;
                        arg0->unk4CC = (s32) __glOdyssey_InternalUnpack.unk28;
                    }
                    __glFillImage(arg0, arg2, 1, arg3, arg4, sp40, arg0->unk3F8);
                    __glFillImage(arg0, arg1, 1, arg3, arg4, sp58, (void *) sp48);
                    var_a1_2 = arg0 + 0x4A4;
                    if (arg_sp4 != 0) {
                        arg0->unk4A4 = sp0;
                        arg0->unk4A8 = sp4;
                        arg0->unk4AC = sp8;
                        arg0->unk4B0 = spC;
                        arg0->unk4B4 = sp10;
                        arg0->unk4B8 = sp14;
                        arg0->unk4BC = sp18;
                        arg0->unk4C0 = sp1C;
                        arg0->unk4CC = sp28;
                        arg0->unk4C8 = sp24;
                        arg0->unk4C4 = sp20;
                    }
                    if (sp38 == 0) {
                        switch (arg4) {             /* irregular */
                        default:
                            var_a1_2 = (void *) (arg4 < 0x8367U);
                            if (var_a1_2 == NULL) {
                                if ((arg4 > 0x8367U) && (arg4 != 0x8368)) {
                                    goto block_128;
                                }
                                goto block_71;
                            }
                            if (arg4 >= 0x8366U) {
                                if (arg4 > 0x8366U) {
                                    goto block_128;
                                }
                                goto block_71;
                            }
                            if (arg4 != 0x8365) {
                                goto block_128;
                            }
                            goto block_71;
                        }
                    } else {
                        temp_a4 = arg4 < 0x1404U;
                        temp_v0_6 = arg4 < 0x1402U;
                        if (temp_a4 == 0) {
                            temp_a5 = arg4 < 0x1405U;
                            if (temp_a5 == 0) {
                                temp_a6 = arg4 < 0x8032U;
                                if (temp_a6 == 0) {
                                    if (arg4 <= 0x8032U) {
                                    case 0x8363:
                                        if ((arg3 != 0x1907) && (arg3 != 0x80E0)) {
                                            __glSetError(0x500, var_a1_2);
                                        } else {
                                            __glOdysseyCvtToFloat(arg0->unk3F8, temp_v0_2, sp50, arg4);
                                        }
                                        goto block_75;
                                    }
                                    if (arg4 != 0x8033) {
                                        goto block_128;
                                    }
                                case 0x8035:
block_71:
                                    if ((arg3 != 0x1908) && (arg3 != 0x8000) && (arg3 != 0x80E1)) {
                                        __glSetError(0x500, (void *)0x80E1);
                                    } else {
                                        __glOdysseyCvtToFloat(arg0->unk3F8, temp_v0_2, sp50, arg4);
                                    }
                                    goto block_75;
                                }
                                if (arg4 >= 0x1406U) {
                                    if (arg4 < 0x1407U) {
                                        __glOdysseyCvtToFloat(arg0->unk3F8, temp_v0_2, sp50, arg4, temp_a4, temp_a5, temp_a6);
                                        goto block_75;
                                    }
                                    goto block_128;
                                }
                                if (arg4 != 0x1405) {
                                    goto block_128;
                                }
                                goto block_99;
                            }
                            goto block_99;
                        }
                        if (temp_v0_6 == 0) {
                            if ((arg4 < 0x1403U) || (arg4 == 0x1403)) {
                                goto block_99;
                            }
                            goto block_128;
                        }
                        if (arg4 >= 0x1401U) {
                            if (temp_v0_6 == 0) {
                                goto block_128;
                            }
                            goto block_99;
                        }
                        if (arg4 != 0x1400) {
block_128:
                            __glSetError(0x500, var_a1_2);
                        } else {
block_99:
                            __glOdysseyCvtToFloat(arg0->unk3F8, temp_v0_2, sp50, arg4, temp_a4);
block_75:
                            temp_s1 = temp_v0_2 + (temp_s6 * 0x10);
                            __glOdysseyCvtToRGBA(temp_v0_2 + (sp50 * 4), temp_s1, temp_s6, arg3);
                            __glOdysseyScaleBiasFilter(arg0 + 0x3A8, temp_s6, temp_v0_2);
                            temp_lo = arg2 * arg1;
                            var_a3 = temp_lo * 4;
                            if (arg2 < temp_s6) {
                                var_a5 = temp_lo * 0x10;
                                var_v0_2 = arg1 & 3;
                                var_a4 = temp_v0_2 + (arg2 * 0x10);
                                if (var_v0_2 != 0) {
                                    do {
                                        *(arg0->unk3F8 + var_a5) = var_a4->unk0;
                                        (arg0->unk3F8 + var_a5)->unk4 = (f32) var_a4->unk4;
                                        (arg0->unk3F8 + var_a5)->unk8 = (f32) var_a4->unk8;
                                        var_v0_2 -= 1;
                                        var_a5 += 0x10;
                                        temp_f0 = var_a4->unkC;
                                        var_a4 += 0x10;
                                        var_a3 += 4;
                                        (arg0->unk3F8 + var_a5)->unk-4 = temp_f0;
                                    } while (var_v0_2 != 0);
                                }
                                if ((arg1 >> 2) != 0) {
                                    do {
                                        *(arg0->unk3F8 + var_a5) = var_a4->unk0;
                                        (arg0->unk3F8 + var_a5)->unk4 = (f32) var_a4->unk4;
                                        (arg0->unk3F8 + var_a5)->unk8 = (f32) var_a4->unk8;
                                        temp_t0 = var_a5 + 0x10;
                                        (arg0->unk3F8 + temp_t0)->unk-4 = (f32) var_a4->unkC;
                                        *(arg0->unk3F8 + temp_t0) = var_a4->unk10;
                                        (arg0->unk3F8 + temp_t0)->unk4 = (f32) var_a4->unk14;
                                        (arg0->unk3F8 + temp_t0)->unk8 = (f32) var_a4->unk18;
                                        temp_a0_2 = var_a5 + 0x20;
                                        (arg0->unk3F8 + temp_a0_2)->unk-4 = (f32) var_a4->unk1C;
                                        *(arg0->unk3F8 + temp_a0_2) = var_a4->unk20;
                                        (arg0->unk3F8 + temp_a0_2)->unk4 = (f32) var_a4->unk24;
                                        (arg0->unk3F8 + temp_a0_2)->unk8 = (f32) var_a4->unk28;
                                        temp_t9 = var_a5 + 0x30;
                                        (arg0->unk3F8 + temp_t9)->unk-4 = (f32) var_a4->unk2C;
                                        *(arg0->unk3F8 + temp_t9) = var_a4->unk30;
                                        (arg0->unk3F8 + temp_t9)->unk4 = (f32) var_a4->unk34;
                                        (arg0->unk3F8 + temp_t9)->unk8 = (f32) var_a4->unk38;
                                        var_a4 += 0x40;
                                        var_a5 += 0x40;
                                        var_a3 += 0x10;
                                        (arg0->unk3F8 + var_a5)->unk-4 = (f32) var_a4->unk-4;
                                    } while (var_a4 != temp_s1);
                                }
                            }
                            var_a5_2 = var_a3 * 4;
                            if (arg2 > 0) {
                                var_v0_3 = arg2 & 3;
                                var_a4_2 = temp_v0_2;
                                temp_t3 = temp_v0_2 + (arg2 * 0x10);
                                if (var_v0_3 != 0) {
                                    do {
                                        *(arg0->unk3F8 + var_a5_2) = var_a4_2->unk0;
                                        (arg0->unk3F8 + var_a5_2)->unk4 = (f32) var_a4_2->unk4;
                                        (arg0->unk3F8 + var_a5_2)->unk8 = (f32) var_a4_2->unk8;
                                        var_v0_3 -= 1;
                                        var_a5_2 += 0x10;
                                        temp_f21 = var_a4_2->unkC;
                                        var_a4_2 += 0x10;
                                        (arg0->unk3F8 + var_a5_2)->unk-4 = temp_f21;
                                    } while (var_v0_3 != 0);
                                }
                                var_a3_2 = var_a4_2;
                                if ((arg2 >> 2) != 0) {
                                    do {
                                        *(arg0->unk3F8 + var_a5_2) = var_a3_2->unk0;
                                        (arg0->unk3F8 + var_a5_2)->unk4 = (f32) var_a3_2->unk4;
                                        (arg0->unk3F8 + var_a5_2)->unk8 = (f32) var_a3_2->unk8;
                                        temp_ra = var_a5_2 + 0x10;
                                        (arg0->unk3F8 + temp_ra)->unk-4 = (f32) var_a3_2->unkC;
                                        *(arg0->unk3F8 + temp_ra) = var_a3_2->unk10;
                                        (arg0->unk3F8 + temp_ra)->unk4 = (f32) var_a3_2->unk14;
                                        (arg0->unk3F8 + temp_ra)->unk8 = (f32) var_a3_2->unk18;
                                        temp_t0_2 = var_a5_2 + 0x20;
                                        (arg0->unk3F8 + temp_t0_2)->unk-4 = (f32) var_a3_2->unk1C;
                                        *(arg0->unk3F8 + temp_t0_2) = var_a3_2->unk20;
                                        (arg0->unk3F8 + temp_t0_2)->unk4 = (f32) var_a3_2->unk24;
                                        (arg0->unk3F8 + temp_t0_2)->unk8 = (f32) var_a3_2->unk28;
                                        temp_a1 = var_a5_2 + 0x30;
                                        (arg0->unk3F8 + temp_a1)->unk-4 = (f32) var_a3_2->unk2C;
                                        *(arg0->unk3F8 + temp_a1) = var_a3_2->unk30;
                                        (arg0->unk3F8 + temp_a1)->unk4 = (f32) var_a3_2->unk34;
                                        (arg0->unk3F8 + temp_a1)->unk8 = (f32) var_a3_2->unk38;
                                        var_a3_2 += 0x40;
                                        var_a5_2 += 0x40;
                                        (arg0->unk3F8 + var_a5_2)->unk-4 = (f32) var_a3_2->unk-4;
                                    } while (var_a3_2 != temp_t3);
                                }
                                var_a6 = temp_v0_2;
                                var_t2 = 0;
                                var_a3_3 = 0;
loop_93:
                                var_t2 += 1;
                                if (arg1 > 0) {
                                    var_a5_3 = var_a3_3 * 4;
                                    var_a4_3 = temp_t3;
                                    if (arg1 & 1) {
                                        *(arg0->unk3F8 + var_a5_3) = var_a6->unk0 * temp_t3->unk0;
                                        (arg0->unk3F8 + var_a5_3)->unk4 = (f32) (var_a6->unk4 * temp_t3->unk4);
                                        (arg0->unk3F8 + var_a5_3)->unk8 = (f32) (var_a6->unk8 * temp_t3->unk8);
                                        var_a5_3 += 0x10;
                                        var_a3_3 += 4;
                                        var_a4_3 = temp_t3 + 0x10;
                                        (arg0->unk3F8 + var_a5_3)->unk-4 = (f32) (var_a6->unkC * temp_t3->unkC);
                                    }
                                    if ((arg1 >> 1) != 0) {
                                        do {
                                            *(arg0->unk3F8 + var_a5_3) = var_a6->unk0 * var_a4_3->unk0;
                                            (arg0->unk3F8 + var_a5_3)->unk4 = (f32) (var_a6->unk4 * var_a4_3->unk4);
                                            (arg0->unk3F8 + var_a5_3)->unk8 = (f32) (var_a6->unk8 * var_a4_3->unk8);
                                            temp_t8 = var_a5_3 + 0x10;
                                            (arg0->unk3F8 + temp_t8)->unk-4 = (f32) (var_a6->unkC * var_a4_3->unkC);
                                            *(arg0->unk3F8 + temp_t8) = var_a6->unk0 * var_a4_3->unk10;
                                            (arg0->unk3F8 + temp_t8)->unk4 = (f32) (var_a6->unk4 * var_a4_3->unk14);
                                            (arg0->unk3F8 + temp_t8)->unk8 = (f32) (var_a6->unk8 * var_a4_3->unk18);
                                            temp_f15 = var_a4_3->unk1C;
                                            var_a4_3 += 0x20;
                                            var_a5_3 += 0x20;
                                            var_a3_3 += 8;
                                            (arg0->unk3F8 + var_a5_3)->unk-4 = (f32) (var_a6->unkC * temp_f15);
                                        } while (var_a4_3 != temp_s1);
                                    }
                                }
                                var_a6 += 0x10;
                                if (arg2 != var_t2) {
                                    goto loop_93;
                                }
                            }
                            arg0->unkC(arg0, temp_v0_2);
                            temp_a2_2 = arg0->unk3B0;
                            if ((temp_a2_2 != 0x1906) && (temp_a2_2 != 0x1907) && (temp_a2_2 != 0x1908) && (temp_a2_2 != 0x1909) && (temp_a2_2 != 0x190A) && (temp_a2_2 != 0x8049)) {
                                __glSetError(0x500);
                            } else {
                                __glOdysseyCvtToInternalFmt(arg0->unk3F8, temp_lo + temp_s6, temp_a2_2);
                                arg0->unk3B4 = 4;
                                arg0->unk3B0 = 0x1908;
                                __glOdysseyInitConvolutionState((s32) sp30);
                            }
                        }
                    }
                } else {
block_119:
                    __glSetError(0x500, (void *) var_a1);
                }
            }
        } else {
            __glSetError(0x505, (void *) var_a1);
        }
    } else {
        __glSetError(0x505);
    }
}

void __glOdysseyGetSeparableFilter(void *arg0) {
    s64 sp18;
    s32 temp_a7;
    s32 temp_at;

    temp_a7 = arg0->unk3B4;
    temp_at = arg0->unk3F8;
    sp18 = (s64) temp_at;
    arg0->unk3F8 = (s32) (temp_at + (temp_a7 * (arg0->unk3E8 * arg0->unk3EC) * 4));
    __glSlowPickGetSeparableFilter(temp_a7);
    arg0->unk3F8 = (s32) sp18;
}

void __glOdyim_CopyConvolutionFilter1DEXT(s64 arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s32 sp8C;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    s64 temp_a6;
    s64 temp_a7;
    s64 temp_v0_2;
    void *temp_s0;

    sp58 = arg4;
    sp50 = arg3;
    sp48 = arg2;
    sp60 = arg0;
    sp8C = arg1;
    temp_v0 = *(s32 *)0x1018;
    temp_s0 = *(void **)0x1010;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError(0x502);
        } else {
            temp_s0->unk2E40(temp_s0);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        if (__glCheckConvolutionFilterArgs(temp_s0, sp60, sp58, 1, 0x1908, &sp8C, 0x1406) != 0) {
            if (sp60 != 0x8010) {
                __glSetError(0x500, (void *)0x8010);
            } else {
                temp_s0->unk340 = (s32) sp58;
                temp_s0->unk308 = sp8C;
                temp_s0->unk30C = __glElementsPerGroup(sp8C, 0x8010, sp58, sp8C);
                if (sp58 > 0) {
                    temp_v0_2 = temp_s0->unk0(temp_s0, sp58 * 0x10);
                    sp40 = temp_v0_2;
                    if (temp_v0_2 != 0) {
                        sp38 = temp_v0_2;
                        temp_a6 = temp_s0->unk490;
                        temp_a7 = temp_s0->unk498;
                        sp28 = temp_s0->unk4A0;
                        sp20 = temp_a7;
                        sp18 = temp_a6;
                        sp10 = temp_s0->unk488;
                        sp8 = temp_s0->unk480;
                        sp0 = temp_s0->unk478;
                        temp_s0->unk478 = (s32) __glOdyssey_InternalUnpack.unk0;
                        temp_s0->unk47C = (? *) __glOdyssey_InternalUnpack.unk4;
                        temp_s0->unk480 = (s32) __glOdyssey_InternalUnpack.unk8;
                        temp_s0->unk484 = (s32) __glOdyssey_InternalUnpack.unkC;
                        temp_s0->unk488 = (s32) __glOdyssey_InternalUnpack.unk10;
                        temp_s0->unk48C = (s32) __glOdyssey_InternalUnpack.unk14;
                        temp_s0->unk490 = (s32) __glOdyssey_InternalUnpack.unk18;
                        temp_s0->unk494 = (s32) __glOdyssey_InternalUnpack.unk1C;
                        temp_s0->unk498 = (s32) __glOdyssey_InternalUnpack.unk20;
                        temp_s0->unk49C = (s32) __glOdyssey_InternalUnpack.unk24;
                        temp_s0->unk4A0 = (s32) __glOdyssey_InternalUnpack.unk28;
                        sp30 = __glGetCurrentSetDefaultPixelXferState(temp_s0, __glOdyssey_InternalUnpack.unk10, __glOdyssey_InternalUnpack.unkC, __glOdyssey_InternalUnpack.unk8, __glOdyssey_InternalUnpack.unk4, __glOdyssey_InternalUnpack.unk0, temp_a6, temp_a7);
                        __glOdyim_ReadPixels(sp48, sp50, (u64) sp58, 1, 0x1908, 0x1403, sp38);
                        temp_s0->unk4A0 = sp28;
                        temp_s0->unk498 = sp20;
                        temp_s0->unk490 = sp18;
                        temp_s0->unk488 = sp10;
                        temp_s0->unk480 = sp8;
                        temp_s0->unk478 = sp0;
                        __glRestoreCurrentPixelXferState(temp_s0, sp30);
                        goto block_13;
                    }
                    __glSetError(0x505);
                } else {
                    sp40 = 0;
block_13:
                    temp_s0->unk3160(temp_s0, sp58, 1, 0x1908, 0x1403, sp40, sp60, 1);
                    if (sp40 != 0) {
                        temp_s0->unkC(temp_s0, sp40);
                    }
                }
            }
        }
    }
}

void __glOdyim_CopyConvolutionFilter2DEXT(s64 arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s32 sp9C;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;
    s64 temp_a7;
    s64 temp_v0_2;
    void *temp_s0;

    sp58 = arg5;
    sp60 = arg4;
    sp50 = arg3;
    sp48 = arg2;
    sp68 = arg0;
    sp9C = arg1;
    temp_v0 = *(s32 *)0x1018;
    temp_s0 = *(void **)0x1010;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError(0x502);
        } else {
            temp_s0->unk2E40(temp_s0);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        if (__glCheckConvolutionFilterArgs(temp_s0, sp68, sp60, sp58, 0x1908, &sp9C, 0x1406) != 0) {
            if (sp68 != 0x8011) {
                __glSetError(0x500, (void *)0x8011);
            } else {
                temp_s0->unk398 = (s32) sp58;
                temp_s0->unk394 = (s32) sp60;
                temp_s0->unk35C = sp9C;
                temp_s0->unk360 = __glElementsPerGroup(sp9C, 0x8011, sp58, (s32) sp60, sp9C);
                if (sp60 > 0) {
                    if (sp58 > 0) {
                        temp_v0_2 = temp_s0->unk0(temp_s0, sp60 * sp58 * 0x10, sp60, sp58);
                        if (temp_v0_2 != 0) {
                            sp38 = temp_v0_2;
                            sp40 = temp_v0_2;
                            temp_a7 = temp_s0->unk490;
                            sp20 = temp_s0->unk498;
                            sp18 = temp_a7;
                            sp10 = temp_s0->unk488;
                            sp8 = temp_s0->unk480;
                            sp28 = temp_s0->unk4A0;
                            sp0 = temp_s0->unk478;
                            temp_s0->unk478 = (s32) __glOdyssey_InternalUnpack.unk0;
                            temp_s0->unk47C = (s32) __glOdyssey_InternalUnpack.unk4;
                            temp_s0->unk480 = (? *) __glOdyssey_InternalUnpack.unk8;
                            temp_s0->unk484 = (s32) __glOdyssey_InternalUnpack.unkC;
                            temp_s0->unk488 = (s32) __glOdyssey_InternalUnpack.unk10;
                            temp_s0->unk48C = (s32) __glOdyssey_InternalUnpack.unk14;
                            temp_s0->unk490 = (s32) __glOdyssey_InternalUnpack.unk18;
                            temp_s0->unk494 = (s32) __glOdyssey_InternalUnpack.unk1C;
                            temp_s0->unk498 = (s32) __glOdyssey_InternalUnpack.unk20;
                            temp_s0->unk49C = (s32) __glOdyssey_InternalUnpack.unk24;
                            temp_s0->unk4A0 = (s32) __glOdyssey_InternalUnpack.unk28;
                            sp30 = __glGetCurrentSetDefaultPixelXferState(temp_s0, __glOdyssey_InternalUnpack.unk14, __glOdyssey_InternalUnpack.unk10, __glOdyssey_InternalUnpack.unkC, __glOdyssey_InternalUnpack.unk8, __glOdyssey_InternalUnpack.unk4, (s64) __glOdyssey_InternalUnpack.unk0, temp_a7);
                            __glOdyim_ReadPixels(sp48, sp50, (u64) sp60, sp58, 0x1908, 0x1403, sp38);
                            temp_s0->unk4A0 = sp28;
                            temp_s0->unk498 = sp20;
                            temp_s0->unk490 = sp18;
                            temp_s0->unk488 = sp10;
                            temp_s0->unk480 = sp8;
                            temp_s0->unk478 = sp0;
                            __glRestoreCurrentPixelXferState(temp_s0, sp30);
                            goto block_13;
                        }
                        __glSetError(0x505);
                    } else {
                        sp40 = 0;
                        goto block_13;
                    }
                } else {
                    sp40 = 0;
block_13:
                    temp_s0->unk3160(temp_s0, sp60, sp58, 0x1908, 0x1403, sp40, sp68, 1);
                    if (sp40 != 0) {
                        temp_s0->unkC(temp_s0, sp40);
                    }
                }
            }
        }
    }
}

void __glOdyim_ConvolutionParameterfvEXT(void *arg1, s64 arg2) {
    s64 sp0;
    s32 temp_f4;
    void *temp_v0;

    sp0 = arg2;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetFilter();
        if (temp_v0 != NULL) {
            switch (arg1) {                         /* switch 1; irregular */
            default:                                /* switch 1 */
                __glSetError(0x500, (void *)0x8015, 0x8013, 0x8154, sp0);
                break;
            case 0x8154:                            /* switch 1 */
                temp_v0->unk30 = (f32) sp0->unk0;
                temp_v0->unk34 = (f32) sp0->unk4;
                temp_v0->unk38 = (f32) sp0->unk8;
                temp_v0->unk3C = (f32) sp0->unkC;
                return;
            case 0x8013:                            /* switch 1 */
                temp_f4 = (s32) sp0->unk0;
                switch (temp_f4) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, (void *)0x8152, 0x8013, 0x8154);
                    break;
                case 0x8152:                        /* switch 2 */
                    temp_v0->unk4 = 0x8152;
                    break;
                case 0x8016:                        /* switch 2 */
                    temp_v0->unk4 = 0x8016;
                    break;
                case 0x8151:                        /* switch 2 */
                    temp_v0->unk4 = 0x8151;
                    break;
                case 0x8153:                        /* switch 2 */
                    temp_v0->unk4 = 0x8153;
                    break;
                case 0x8150:                        /* switch 2 */
                    temp_v0->unk4 = 0x8150;
                    break;
                }
                break;
            case 0x8014:                            /* switch 1 */
                temp_v0->unk10 = (f32) sp0->unk0;
                temp_v0->unk14 = (f32) sp0->unk4;
                temp_v0->unk18 = (f32) sp0->unk8;
                temp_v0->unk1C = (f32) sp0->unkC;
                return;
            case 0x8015:                            /* switch 1 */
                temp_v0->unk20 = (f32) sp0->unk0;
                temp_v0->unk24 = (f32) sp0->unk4;
                temp_v0->unk28 = (f32) sp0->unk8;
                temp_v0->unk2C = (f32) sp0->unkC;
                return;
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_ConvolutionParameterfEXT(s32 arg1, f32 fparg2) {
    if (arg1 != 0x8013) {
        __glSetError(0x500);
    } else {
        __glOdyim_ConvolutionParameterfvEXT(sp);
    }
}

void __glOdyim_ConvolutionParameterivEXT(void *arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_a0;
    void *temp_a1;
    void *temp_v0;

    sp8 = arg2;
    temp_a1 = *(void **)0x1010;
    sp0 = (s64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetFilter(temp_a1);
        if (temp_v0 != NULL) {
            switch (arg1) {                         /* switch 1; irregular */
            default:                                /* switch 1 */
                __glSetError(0x500, (void *)0x8015, 0x8013, 0x8154);
                break;
            case 0x8013:                            /* switch 1 */
                temp_a0 = sp8->unk0;
                switch (temp_a0) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, (void *)0x8152, 0x8013, 0x8154);
                    break;
                case 0x8152:                        /* switch 2 */
                    temp_v0->unk4 = 0x8152;
                    return;
                case 0x8016:                        /* switch 2 */
                    temp_v0->unk4 = 0x8016;
                    break;
                case 0x8151:                        /* switch 2 */
                    temp_v0->unk4 = 0x8151;
                    break;
                case 0x8153:                        /* switch 2 */
                    temp_v0->unk4 = 0x8153;
                    break;
                case 0x8150:                        /* switch 2 */
                    temp_v0->unk4 = 0x8150;
                    break;
                }
                break;
            case 0x8154:                            /* switch 1 */
                M2C_ERROR(/* Read from unset register $t9 */)(sp0, temp_v0 + 0x30, sp8, 0x8154);
                break;
            case 0x8014:                            /* switch 1 */
                temp_v0->unk10 = (f32) sp8->unk0;
                temp_v0->unk14 = (f32) sp8->unk4;
                temp_v0->unk18 = (f32) sp8->unk8;
                temp_v0->unk1C = (f32) sp8->unkC;
                return;
            case 0x8015:                            /* switch 1 */
                temp_v0->unk20 = (f32) sp8->unk0;
                temp_v0->unk24 = (f32) sp8->unk4;
                temp_v0->unk28 = (f32) sp8->unk8;
                temp_v0->unk2C = (f32) sp8->unkC;
                return;
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502, temp_a1);
    }
}

void __glOdyim_ConvolutionParameteriEXT(s32 arg1, s32 arg2) {
    if (arg1 != 0x8013) {
        __glSetError(0x500);
    } else {
        __glOdyim_ConvolutionParameterivEXT(sp);
    }
}

void __glOdyim_GetConvolutionParameterfvEXT(s32 arg0, u32 arg1, s64 arg2) {
    s64 sp0;
    s32 var_a1;
    s64 var_a2;
    s64 var_a3;
    s64 var_a4;
    void *temp_v0;

    sp0 = arg2;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetFilter();
        if (temp_v0 != NULL) {
            var_a4 = 0x801B;
            var_a3 = 0x8019;
            if (arg0 != 0x8010) {
                goto block_3;
            }
            if ((arg1 == 0x8019) || (arg1 == 0x801B)) {
                __glSetError(0x500);
            } else {
block_3:
                var_a1 = arg1 < 0x8018U;
                var_a2 = arg1 > 0x8018U;
                if (var_a1 == 0) {
                    if (var_a2 != 0) {
                        var_a3 = arg1 < 0x801BU;
                        var_a2 = sp0;
                        var_a4 = arg1 > 0x801BU;
                        if (var_a3 == 0) {
                            if (var_a4 != 0) {
                                if (arg1 == 0x8154) {
                                    sp0->unk0 = (f32) temp_v0->unk30;
                                    sp0->unk4 = (f32) temp_v0->unk34;
                                    sp0->unk8 = (f32) temp_v0->unk38;
                                    sp0->unkC = (f32) temp_v0->unk3C;
                                } else {
                                    goto block_13;
                                }
                            } else {
                                sp0->unk0 = 11.0f;
                            }
                        } else {
                            var_a1 = arg1 > 0x801AU;
                            if (arg1 >= 0x801AU) {
                                if (var_a1 == 0) {
                                    var_a2->unk0 = 11.0f;
                                } else {
                                    goto block_13;
                                }
                            } else if (arg1 == 0x8019) {
                                sp0->unk0 = (f32) temp_v0->unk44;
                            } else {
                                goto block_13;
                            }
                        }
                    } else {
                        sp0->unk0 = (f32) temp_v0->unk40;
                    }
                } else if (arg1 >= 0x8015U) {
                    if (arg1 > 0x8015U) {
                        if (arg1 == 0x8017) {
                            sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk8 << 0x20) >> 0x20);
                            return;
                        }
                        goto block_13;
                    }
                    sp0->unk0 = (f32) temp_v0->unk20;
                    sp0->unk4 = (f32) temp_v0->unk24;
                    sp0->unk8 = (f32) temp_v0->unk28;
                    sp0->unkC = (f32) temp_v0->unk2C;
                } else {
                    if (arg1 >= 0x8014U) {
                        if (arg1 <= 0x8014U) {
                            sp0->unk0 = (f32) temp_v0->unk10;
                            sp0->unk4 = (f32) temp_v0->unk14;
                            sp0->unk8 = (f32) temp_v0->unk18;
                            sp0->unkC = (f32) temp_v0->unk1C;
                            return;
                        }
                        goto block_13;
                    }
                    if (arg1 == 0x8013) {
                        sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk4 << 0x20) >> 0x20);
                    } else {
block_13:
                        __glSetError(0x500, (void *) var_a1, var_a2, var_a3, var_a4);
                    }
                }
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_GetConvolutionParameterivEXT(void *arg0, u32 arg1, s64 arg2) {
    s64 sp30;
    s64 sp8;
    s64 sp0;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f13_4;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_f15;
    s32 temp_f15_2;
    s32 temp_f15_3;
    s64 var_a2;
    void *temp_v0;

    sp8 = arg2;
    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetFilter(arg0);
        if (temp_v0 != NULL) {
            if (arg0 != (void *)0x8010) {
                goto block_3;
            }
            if ((arg1 == 0x8019) || (arg1 == 0x801B)) {
                __glSetError(0x500, (void *)0x801B);
            } else {
block_3:
                temp_a1 = arg1 < 0x8018U;
                var_a2 = arg1 > 0x8018U;
                if (temp_a1 == 0) {
                    if (var_a2 != 0) {
                        temp_a3 = arg1 < 0x801BU;
                        if (temp_a3 == 0) {
                            temp_a4 = arg1 > 0x801BU;
                            if (temp_a4 != 0) {
                                sp30 = (s64) temp_v0;
                                if (arg1 != 0x8154) {
                                    goto block_8;
                                }
                                temp_f14 = sp30->unk30;
                                temp_f13 = sp0->unkDEC * temp_f14;
                                temp_f15 = (s32) floorf(4.5956e-41f, temp_a1, var_a2, temp_a3, temp_a4, 0x8154, sp0->unkDD4 * temp_f13, temp_f13, temp_f14);
                                sp8->unk0 = temp_f15;
                                temp_f14_2 = sp30->unk34;
                                temp_f13_2 = sp0->unkDEC * temp_f14_2;
                                temp_f15_2 = (s32) floorf(sp0->unkDD4 * temp_f13_2, (bitwise s32) temp_f13_2, (bitwise s64) temp_f14_2, temp_f15);
                                sp8->unk4 = temp_f15_2;
                                temp_f14_3 = sp30->unk38;
                                temp_f13_3 = sp0->unkDEC * temp_f14_3;
                                temp_f15_3 = (s32) floorf((bitwise f32) sp8, (bitwise s32) (sp0->unkDD4 * temp_f13_3), (bitwise s64) temp_f13_3, (bitwise s32) temp_f14_3, temp_f15_2);
                                sp8->unk8 = temp_f15_3;
                                temp_f14_4 = sp30->unk3C;
                                temp_f13_4 = sp0->unkDEC * temp_f14_4;
                                sp8->unkC = (s32) floorf(sp0->unkDD4 * temp_f13_4, (bitwise s32) temp_f13_4, (bitwise s64) temp_f14_4, temp_f15_3);
                            } else {
                                sp8->unk0 = 0xB;
                            }
                        } else if (arg1 >= 0x801AU) {
                            if (arg1 <= 0x801AU) {
                                sp8->unk0 = 0xB;
                            } else {
                                goto block_8;
                            }
                        } else if (arg1 == 0x8019) {
                            sp8->unk0 = (s32) temp_v0->unk44;
                        } else {
                            goto block_8;
                        }
                    } else {
                        sp8->unk0 = (s32) temp_v0->unk40;
                    }
                } else if (arg1 >= 0x8015U) {
                    if (arg1 > 0x8015U) {
                        if (arg1 == 0x8017) {
                            sp8->unk0 = (s32) temp_v0->unk8;
                        } else {
                            goto block_8;
                        }
                    } else {
                        sp8->unk0 = (s32) temp_v0->unk20;
                        sp8->unk4 = (s32) temp_v0->unk24;
                        sp8->unk8 = (s32) temp_v0->unk28;
                        sp8->unkC = (s32) temp_v0->unk2C;
                    }
                } else {
                    var_a2 = 0x8013;
                    if (arg1 >= 0x8014U) {
                        if (arg1 <= 0x8014U) {
                            sp8->unk0 = (s32) temp_v0->unk10;
                            sp8->unk4 = (s32) temp_v0->unk14;
                            sp8->unk8 = (s32) temp_v0->unk18;
                            sp8->unkC = (s32) temp_v0->unk1C;
                            return;
                        }
                        goto block_8;
                    }
                    if (arg1 == 0x8013) {
                        sp8->unk0 = (s32) temp_v0->unk4;
                    } else {
block_8:
                        __glSetError(0x500, (void *) temp_a1, var_a2);
                    }
                }
            }
        } else {
            __glSetError(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_ColorTableSGI(void *arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s32 spBC;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_s0;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_a1;
    s32 var_a2;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_v0_2;
    s64 temp_v0_4;
    s64 var_t2;

    sp68 = arg5;
    sp78 = arg4;
    sp70 = arg3;
    sp80 = arg2;
    sp88 = (s64) *(s32 *)0x1010;
    temp_v0 = *(s32 *)0x1018;
    spBC = arg1;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError(0x502);
        } else {
            sp88->unk2E40(sp88);
            *(void *)0x1018 = 0;
            goto block_5;
        }
    } else {
block_5:
        temp_v0_2 = __glCheckColorTableArgs(sp88, arg0, spBC, 0, sp70, sp78);
        if (temp_v0_2 != 0) {
            __glSetError(temp_v0_2);
        } else {
            if ((arg0 != (void *)0x80BD) && (arg0 != (void *)0x80D3)) {
                var_t2 = 1;
                if (arg0 != (void *)0x80D4) {
                    var_t2 = 1;
                    if (arg0 != (void *)0x80D5) {
                        var_t2 = 0;
                    }
                }
            } else {
                var_t2 = 1;
            }
            if (arg0 != (void *)0x80BC) {
                if (arg0 != (void *)0x80BD) {
                    if (sp80 >= 0) {
                        if (sp80 > 0) {
                            if (sp80 & (sp80 - 1)) {
                                goto block_18;
                            }
                            goto block_27;
                        }
block_27:
                        if (sp80 >= 0x1001) {
                            goto block_28;
                        }
                        goto block_30;
                    }
                    goto block_18;
                }
                goto block_21;
            }
block_21:
            if ((sp80 >= 0) && ((sp80 <= 0) || !(sp80 & (sp80 - 1)))) {
                if (sp80 >= 0x101) {
block_28:
                    if (var_t2 != 0) {
                        spBC = 0;
                        goto block_30;
                    }
                    sp18 = 0x8031;
                    goto block_19;
                }
block_30:
                sp18 = temp_v0_2;
                if (temp_v0_2 == 0) {
                    if ((var_t2 != 0) || (sp20 = var_t2, sp18 = temp_v0_2, ((sp80 < 0x801) != 0))) {
                        sp20 = var_t2;
                        sp18 = temp_v0_2;
                        sp88->unk31B0(sp88, arg0, spBC, sp80, sp70, sp78, sp68, 0);
                        *(void *)0x1018 = 2;
                        sp88->unk2E24 = (s32) (sp88->unk2E24 | 0x11);
                        if (sp20 == 0) {
                            goto block_37;
                        }
                    } else {
                        sp88->unk31B0(sp88, arg0, spBC, sp80, sp70, sp78, 0, 1);
                        if (sp68 != 0) {
                            sp60 = sp68;
                            sp8 = __glSpecElementsPerGroup((s32) sp70, sp78);
                            temp_v0_3 = __glSpecBytesPerElement(sp78);
                            if (sp80 > 0) {
                                sp58 = 0;
                                sp10 = sp8 * temp_v0_3;
                                do {
                                    temp_a3 = (sp80 < 0x800) ? sp80 : 0x800;
                                    sp28 = temp_a3;
                                    sp88->unk31B4(sp88, arg0, sp58, temp_a3, sp70, sp78, sp60, 0);
                                    temp_a4 = sp80 - sp28;
                                    sp80 = temp_a4;
                                    sp58 += sp28;
                                    sp60 += sp10 * sp28;
                                } while (temp_a4 > 0);
                            }
                        }
                        *(void *)0x1018 = 2;
                        sp88->unk2E24 = (s32) (sp88->unk2E24 | 0x11);
block_37:
                        switch (arg0) {             /* irregular */
                        case 0x80D0:
                            sp18 = __glOdysseyStoreLUT(0, 2);
                            break;
                        case 0x80BC:
                            temp_v0_4 = __glOdysseyStoreLUT(1, 2);
                            var_a2 = 0x200;
                            var_a1 = 0;
                            sp38 = 0x20;
                            sp18 = temp_v0_4;
                            sp0 = sp88 + 0x10000;
                            sp50 = sp88 + 0x8D8C;
                            sp48 = sp88 + 0xAF64;
                            sp40 = sp88 + 0x8D84;
                            temp_s0 = sp88 + 0xAF54;
                            sp30 = temp_s0 + 8;
                            do {
                                *(var_a1 + (sp88 + 0x8D7C)) = *(var_a1 + temp_s0);
                                *(var_a1 + (sp88 + 0x8D80)) = *(var_a1 + (temp_s0 + 4));
                                *(var_a1 + sp40) = *(var_a1 + sp30);
                                *(var_a1 + (sp88 + 0x8D88)) = *(var_a1 + (sp88 + 0xAF60));
                                *(var_a1 + sp50) = *(var_a1 + sp48);
                                *(var_a1 + (sp88 + 0x8D90)) = *(var_a1 + (sp88 + 0xAF68));
                                *(var_a1 + (sp88 + 0x8D94)) = *(var_a1 + (sp88 + 0xAF6C));
                                var_a2 -= 8;
                                *(var_a1 + (sp88 + 0x8D98)) = *(var_a1 + (sp88 + 0xAF70));
                                var_a1 += sp38;
                            } while (var_a2 > 0);
                            sp88->unk7CD4 = (s32) ((sp88->unk7CD4 & ~0x700000) | ((sp0->unk-48A8 << 0x14) & 0x700000));
                            sp0->unk6960 = (s32) (sp0->unk6960 | 0x400200);
                            *(void *)0x1018 = 2;
                            break;
                        case 0x80D1:
                            sp18 = __glOdysseyStoreLUT(2, 0x80D2);
                            break;
                        case 0x80D2:
                            sp18 = M2C_ERROR(/* Read from unset register $t9 */)(3, 0x80D2);
                            break;
                        }
                        if (sp18 != 0) {
                            __glSetError(sp18);
                        }
                    }
                } else {
                    goto block_19;
                }
            } else {
block_18:
                sp18 = 0x501;
block_19:
                __glSetError(sp18);
            }
        }
    }
}

void __glOdyim_CopyColorTableSGI(void *arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s32 arg6) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp30;
    s32 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_t9;
    s32 var_a6;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a5;
    void *temp_s1;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != (void *)0x80BD) && (arg0 != (void *)0x80D3) && (var_a5 = 0x80D4, (arg0 != (void *)0x80D4)) && (var_a6 = 0x80D5, sp78 = arg2, sp70 = arg3, (arg0 != (void *)0x80D5))) {
            temp_v0 = __glCheckColorTableArgs((s64) temp_s1, arg0, arg1, 0, 0x1908, 0x1406, 0x80D5);
            if (temp_v0 != 0) {
                __glSetError(temp_v0);
            } else if (arg4 > 0) {
                temp_v0_2 = temp_s1->unk0(temp_s1, arg4 * 0x10, &__glOdyssey_InternalUnpack);
                sp80 = temp_v0_2;
                if (temp_v0_2 != 0) {
                    sp60 = temp_v0_2;
                    temp_t0 = temp_s1->unk478;
                    temp_t1 = temp_s1->unk480;
                    temp_t2 = temp_s1->unk488;
                    temp_t3 = temp_s1->unk490;
                    temp_t8 = temp_s1->unk498;
                    temp_t9 = temp_s1->unk4A0;
                    sp28 = temp_t9;
                    sp20 = temp_t8;
                    sp18 = temp_t3;
                    sp10 = temp_t2;
                    sp8 = temp_t1;
                    sp0 = temp_t0;
                    temp_s1->unk478 = (s32) __glOdyssey_InternalUnpack.unk0;
                    temp_s1->unk47C = (s32) __glOdyssey_InternalUnpack.unk4;
                    temp_s1->unk480 = (s32) __glOdyssey_InternalUnpack.unk8;
                    temp_s1->unk484 = (s32) __glOdyssey_InternalUnpack.unkC;
                    temp_s1->unk488 = (s32) __glOdyssey_InternalUnpack.unk10;
                    temp_s1->unk48C = (s32) __glOdyssey_InternalUnpack.unk14;
                    temp_s1->unk490 = (s32) __glOdyssey_InternalUnpack.unk18;
                    temp_s1->unk494 = (s32) __glOdyssey_InternalUnpack.unk1C;
                    temp_s1->unk498 = (s32) __glOdyssey_InternalUnpack.unk20;
                    temp_s1->unk49C = (s32) __glOdyssey_InternalUnpack.unk24;
                    temp_s1->unk4A0 = (s32) __glOdyssey_InternalUnpack.unk28;
                    sp68 = __glGetCurrentSetDefaultPixelXferState(temp_s1, __glOdyssey_InternalUnpack.unk14, __glOdyssey_InternalUnpack.unk10, __glOdyssey_InternalUnpack.unkC, &__glOdyssey_InternalUnpack, __glOdyssey_InternalUnpack.unk8, (s64) __glOdyssey_InternalUnpack.unk4, (s64) __glOdyssey_InternalUnpack.unk0);
                    __glOdyim_ReadPixels(sp78, sp70, (u64) arg4, 1, 0x1908, 0x1403, sp60);
                    temp_s1->unk498 = temp_t8;
                    temp_s1->unk490 = temp_t3;
                    temp_s1->unk4A0 = temp_t9;
                    temp_s1->unk488 = temp_t2;
                    temp_s1->unk480 = temp_t1;
                    temp_s1->unk478 = temp_t0;
                    __glRestoreCurrentPixelXferState(temp_s1, sp68);
                    goto block_11;
                }
                __glSetError(0x505);
            } else {
                sp80 = 0;
block_11:
                sp30.unk4 = (s32) temp_s1->unk4A8;
                sp30.unk8 = (s32) temp_s1->unk4AC;
                sp30.unkC = (s32) temp_s1->unk4B0;
                sp30.unk10 = (s32) temp_s1->unk4B4;
                sp30.unk18 = (s32) temp_s1->unk4BC;
                sp30.unk1C = (s32) temp_s1->unk4C0;
                sp30.unk20 = (s32) temp_s1->unk4C4;
                sp30.unk24 = (s32) temp_s1->unk4C8;
                sp30.unk28 = (s32) temp_s1->unk4CC;
                sp30.unk14 = (s32) temp_s1->unk4B8;
                sp30 = temp_s1->unk4A4;
                temp_s1->unk4A4 = (s32) __glOdyssey_InternalUnpack.unk0;
                temp_s1->unk4A8 = (s32) __glOdyssey_InternalUnpack.unk4;
                temp_s1->unk4AC = (s32) __glOdyssey_InternalUnpack.unk8;
                temp_s1->unk4B0 = (s32) __glOdyssey_InternalUnpack.unkC;
                temp_s1->unk4B4 = (s32) __glOdyssey_InternalUnpack.unk10;
                temp_s1->unk4B8 = (s32) __glOdyssey_InternalUnpack.unk14;
                temp_s1->unk4BC = (s32) __glOdyssey_InternalUnpack.unk18;
                temp_s1->unk4C0 = (s32) __glOdyssey_InternalUnpack.unk1C;
                temp_s1->unk4C4 = (s32) __glOdyssey_InternalUnpack.unk20;
                temp_s1->unk4C8 = (s32) __glOdyssey_InternalUnpack.unk24;
                temp_s1->unk4CC = (s32) __glOdyssey_InternalUnpack.unk28;
                __glOdyim_ColorTableSGI(arg0, arg1, arg4, 0x1908, 0x1403, sp80, __glOdyssey_InternalUnpack.unkC, __glOdyssey_InternalUnpack.unk8);
                temp_s1->unk4A4 = sp30;
                temp_s1->unk4A8 = (s32) sp30.unk4;
                temp_s1->unk4AC = (s32) sp30.unk8;
                temp_s1->unk4B0 = (s32) sp30.unkC;
                temp_s1->unk4B4 = (s32) sp30.unk10;
                temp_s1->unk4B8 = (s32) sp30.unk14;
                temp_s1->unk4BC = (s32) sp30.unk18;
                temp_s1->unk4C0 = (s32) sp30.unk1C;
                temp_s1->unk4CC = (s32) sp30.unk28;
                temp_s1->unk4C8 = (s32) sp30.unk24;
                temp_s1->unk4C4 = (s32) sp30.unk20;
                if (sp80 != 0) {
                    __glOdyim_ColorTableSGI(temp_s1, (s32) sp80);
                }
            }
        } else {
            __glSetError(0x500, (void *)0x170000, 0x80BD, 0x80D3, var_a5, var_a6);
        }
    } else {
        __glSetError(0x502, (void *)0x170000);
    }
}

void __glOdyim_ColorSubTable(s64 arg0, s64 arg1, u64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 sp70;
    s64 sp68;
    u64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 *temp_v0_3;
    s32 temp_at;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a2;
    s64 temp_a7;
    s64 temp_v0_2;
    s64 var_a3;

    sp40 = arg5;
    sp50 = arg4;
    sp58 = arg3;
    sp60 = arg2;
    sp48 = arg1;
    sp68 = arg0;
    temp_v0 = *(s32 *)0x1018;
    sp70 = (s64) *(s32 *)0x1010;
    if (temp_v0 != 0) {
        if (temp_v0 != 2) {
            __glSetError(0x502);
        } else {
            sp70->unk2E40(sp70);
            *(void *)0x1018 = 0;
            goto block_6;
        }
    } else {
block_6:
        temp_v0_2 = __glCheckColorSubTableArgs(sp70, sp68, sp48, sp60, sp58, sp50);
        if (temp_v0_2 != 0) {
            __glSetError(temp_v0_2);
        } else if (sp60 != 0) {
            unksp80 = temp_v0_2;
            if (sp40 != 0) {
                sp70->unk31B4(sp70, sp68, sp48, sp60, sp58, sp50, sp40, 0);
                *(void *)0x1018 = 2;
                var_a3 = unksp80;
                sp70->unk2E24 = (s32) (sp70->unk2E24 | 0x11);
                switch (sp68) {                     /* irregular */
                case 0x80D0:
                    var_a3 = __glOdysseyStoreLUT(0, 0x80D1);
                    break;
                case 0x80BC:
                    var_a2 = 0x200;
                    var_a1 = 0;
                    var_a3 = __glOdysseyStoreLUT(1, 0x80D1);
                    sp10 = 0x20;
                    sp0 = sp70 + 0x10000;
                    sp20 = sp70 + 0xAF70;
                    sp18 = sp70 + 0x8D98;
                    sp8 = sp70 + 0x8D80;
                    sp28 = sp70 + 0x8D90;
                    temp_a7 = sp70 + 0xAF54;
                    sp38 = temp_a7;
                    sp30 = temp_a7 + 4;
                    do {
                        *(var_a1 + (sp70 + 0x8D7C)) = *(var_a1 + sp38);
                        *(var_a1 + sp8) = *(var_a1 + sp30);
                        *(var_a1 + (sp70 + 0x8D84)) = *(var_a1 + (temp_a7 + 8));
                        *(var_a1 + (sp70 + 0x8D88)) = *(var_a1 + (sp70 + 0xAF60));
                        *(var_a1 + (sp70 + 0x8D8C)) = *(var_a1 + (sp70 + 0xAF64));
                        *(var_a1 + sp28) = *(var_a1 + (sp70 + 0xAF68));
                        *(var_a1 + (sp70 + 0x8D94)) = *(var_a1 + (sp70 + 0xAF6C));
                        var_a2 -= 8;
                        temp_v0_3 = var_a1 + sp18;
                        temp_at = *(var_a1 + sp20);
                        var_a1 += sp10;
                        *temp_v0_3 = temp_at;
                    } while (var_a2 > 0);
                    sp70->unk7CD4 = (s32) ((sp70->unk7CD4 & ~0x700000) | ((sp0->unk-48A8 << 0x14) & 0x700000));
                    sp0->unk6960 = (s32) (sp0->unk6960 | 0x400200);
                    *(void *)0x1018 = 2;
                    break;
                case 0x80D1:
                    var_a3 = M2C_ERROR(/* Read from unset register $t9 */)(2, 0x80D1);
                    break;
                case 0x80D2:
                    var_a3 = M2C_ERROR(/* Read from unset register $t9 */)(3, 0x80D1, sp68, var_a3, 0x80D2);
                    break;
                }
                if (var_a3 != 0) {
                    __glSetError(var_a3);
                }
            }
        }
    }
}

void __glOdyim_CopyColorSubTable(s64 arg0, s64 arg1, s64 arg2, s64 arg3, u64 arg4, s64 arg5, s32 arg6) {
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s32 sp30;
    s32 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_a6;
    s64 temp_s4;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a5;
    void *temp_s0;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != 0x80BD) && (arg0 != 0x80D3) && (var_a5 = 0x80D4, (arg0 != 0x80D4)) && (var_a6 = 0x80D5, sp68 = arg3, sp60 = arg2, (arg0 != 0x80D5))) {
            temp_v0 = __glCheckColorSubTableArgs((s64) temp_s0, arg0, arg1, arg4, 0x1908, 0x1406, 0x80D5);
            if (temp_v0 != 0) {
                __glSetError(temp_v0);
            } else if (arg4 != 0) {
                temp_v0_2 = temp_s0->unk0(temp_s0, arg4 * 0x10);
                if (temp_v0_2 != 0) {
                    sp70 = temp_v0_2;
                    sp28 = temp_s0->unk4A0;
                    sp20 = temp_s0->unk498;
                    sp18 = temp_s0->unk490;
                    sp8 = temp_s0->unk480;
                    sp10 = temp_s0->unk488;
                    sp0 = temp_s0->unk478;
                    temp_s0->unk478 = (s32) __glOdyssey_InternalUnpack.unk0;
                    temp_s0->unk47C = (s32) __glOdyssey_InternalUnpack.unk4;
                    temp_s0->unk480 = (s32) __glOdyssey_InternalUnpack.unk8;
                    temp_s0->unk484 = (s32) __glOdyssey_InternalUnpack.unkC;
                    temp_s0->unk488 = (s32) __glOdyssey_InternalUnpack.unk10;
                    temp_s0->unk48C = (s32) __glOdyssey_InternalUnpack.unk14;
                    temp_s0->unk490 = (s32) __glOdyssey_InternalUnpack.unk18;
                    temp_s0->unk494 = (s32) __glOdyssey_InternalUnpack.unk1C;
                    temp_s0->unk498 = (s32) __glOdyssey_InternalUnpack.unk20;
                    temp_s0->unk49C = (s32) __glOdyssey_InternalUnpack.unk24;
                    temp_s0->unk4A0 = (s32) __glOdyssey_InternalUnpack.unk28;
                    temp_s4 = __glGetCurrentSetDefaultPixelXferState(temp_s0, __glOdyssey_InternalUnpack.unk10, __glOdyssey_InternalUnpack.unkC, __glOdyssey_InternalUnpack.unk8, &__glOdyssey_InternalUnpack);
                    __glOdyim_ReadPixels(sp60, sp68, arg4, 1, 0x1908, 0x1403, sp70);
                    temp_s0->unk498 = sp20;
                    temp_s0->unk490 = sp18;
                    temp_s0->unk4A0 = sp28;
                    temp_s0->unk488 = sp10;
                    temp_s0->unk480 = sp8;
                    temp_s0->unk478 = sp0;
                    __glRestoreCurrentPixelXferState(temp_s0, temp_s4);
                    sp30.unk4 = (s32) temp_s0->unk4A8;
                    sp30.unk8 = (s32) temp_s0->unk4AC;
                    sp30.unkC = (s32) temp_s0->unk4B0;
                    sp30.unk10 = (s32) temp_s0->unk4B4;
                    sp30.unk1C = (s32) temp_s0->unk4C0;
                    sp30.unk20 = (s32) temp_s0->unk4C4;
                    sp30.unk24 = (s32) temp_s0->unk4C8;
                    sp30.unk28 = (s32) temp_s0->unk4CC;
                    sp30.unk14 = (s32) temp_s0->unk4B8;
                    sp30.unk18 = (s32) temp_s0->unk4BC;
                    sp30 = temp_s0->unk4A4;
                    temp_s0->unk4A4 = (s32) __glOdyssey_InternalUnpack.unk0;
                    temp_s0->unk4A8 = (s32) __glOdyssey_InternalUnpack.unk4;
                    temp_s0->unk4AC = (s32) __glOdyssey_InternalUnpack.unk8;
                    temp_s0->unk4B0 = (s32) __glOdyssey_InternalUnpack.unkC;
                    temp_s0->unk4B4 = (s32) __glOdyssey_InternalUnpack.unk10;
                    temp_s0->unk4B8 = (s32) __glOdyssey_InternalUnpack.unk14;
                    temp_s0->unk4BC = (s32) __glOdyssey_InternalUnpack.unk18;
                    temp_s0->unk4C0 = (s32) __glOdyssey_InternalUnpack.unk1C;
                    temp_s0->unk4C4 = (s32) __glOdyssey_InternalUnpack.unk20;
                    temp_s0->unk4C8 = (s32) __glOdyssey_InternalUnpack.unk24;
                    temp_s0->unk4CC = (s32) __glOdyssey_InternalUnpack.unk28;
                    __glOdyim_ColorSubTable(arg0, arg1, arg4, 0x1908, 0x1403, sp70, __glOdyssey_InternalUnpack.unkC, __glOdyssey_InternalUnpack.unk8);
                    temp_s0->unk4A4 = sp30;
                    temp_s0->unk4A8 = (s32) sp30.unk4;
                    temp_s0->unk4AC = (s32) sp30.unk8;
                    temp_s0->unk4B0 = (s32) sp30.unkC;
                    temp_s0->unk4B4 = (s32) sp30.unk10;
                    temp_s0->unk4B8 = (s32) sp30.unk14;
                    temp_s0->unk4BC = (s32) sp30.unk18;
                    temp_s0->unk4C0 = (s32) sp30.unk1C;
                    temp_s0->unk4CC = (s32) sp30.unk28;
                    temp_s0->unk4C8 = (s32) sp30.unk24;
                    temp_s0->unk4C4 = (s32) sp30.unk20;
                    __glOdyim_ColorSubTable((s64) temp_s0, sp70);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0x505);
                }
            }
        } else {
            __glSetError(0x500, (void *)0x170000, 0x80BD, 0x80D3, var_a5, var_a6);
        }
    } else {
        __glSetError(0x502, (void *)0x170000);
    }
}

void __glOdysseyDrawPixels(void *arg0, s64 arg1, s64 arg2, s32 arg3, s64 arg4, s64 arg5, s32 arg6, s32 arg7) {
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 var_a7;
    void *temp_t0;

    var_a7 = arg7;
    temp_t0 = arg0 + 0x4A4;
    if (arg6 != 0) {
        sp20 = arg0->unk4C4;
        sp1C = arg0->unk4C0;
        sp18 = arg0->unk4BC;
        sp14 = arg0->unk4B8;
        sp8 = arg0->unk4AC;
        spC = arg0->unk4B0;
        sp10 = arg0->unk4B4;
        sp24 = arg0->unk4C8;
        sp28 = arg0->unk4CC;
        sp4 = arg0->unk4A8;
        sp0 = arg0->unk4A4;
        arg0->unk4A4 = (s32) __glOdyssey_InternalUnpack.unk0;
        temp_t0->unk4 = (s32) __glOdyssey_InternalUnpack.unk4;
        temp_t0->unk8 = (s32) __glOdyssey_InternalUnpack.unk8;
        temp_t0->unkC = (s32) __glOdyssey_InternalUnpack.unkC;
        temp_t0->unk10 = (s32) __glOdyssey_InternalUnpack.unk10;
        temp_t0->unk14 = (s32) __glOdyssey_InternalUnpack.unk14;
        temp_t0->unk18 = (s32) __glOdyssey_InternalUnpack.unk18;
        temp_t0->unk1C = (s32) __glOdyssey_InternalUnpack.unk1C;
        temp_t0->unk20 = (s32) __glOdyssey_InternalUnpack.unk20;
        temp_t0->unk24 = (s32) __glOdyssey_InternalUnpack.unk24;
        var_a7 = __glOdyssey_InternalUnpack.unk28;
        temp_t0->unk28 = var_a7;
    }
    __glOdyim_DrawPixels(arg1, arg2, arg3, arg4, arg5, var_a7);
    if (arg6 != 0) {
        arg0->unk4A4 = sp0;
        arg0->unk4A8 = sp4;
        arg0->unk4AC = sp8;
        arg0->unk4B0 = spC;
        arg0->unk4B4 = sp10;
        arg0->unk4B8 = sp14;
        arg0->unk4BC = sp18;
        arg0->unk4C0 = sp1C;
        arg0->unk4CC = sp28;
        arg0->unk4C8 = sp24;
        arg0->unk4C4 = sp20;
    }
}

void __glOdyim_PixelTexGenParameteriSGIS(s32 arg0, s32 arg1) {
    s32 sp1C;

    sp1C = arg1;
    if ((arg0 != 0x8354) && (arg0 != 0x8355)) {
        __glSetError(0x500);
    } else {
        __glOdyim_PixelTexGenParameterivSGIS(&sp1C);
    }
}

void __glOdyim_PixelTexGenParameterivSGIS(s32 *arg0, s32 *arg1) {
    s32 temp_a0;
    s32 temp_a0_2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != (s32 *)0x8354) {
            if (arg0 != (s32 *)0x8355) {
                __glSetError(0x500, (void *)0x8354, (s64) temp_a3, 0x8355, 0x8356, 0xB04);
            } else {
                temp_a0 = *arg1;
                if ((temp_a0 == 0x8356) || (temp_a0 == 0xB04)) {
                    temp_a3->unk11E14 = temp_a0;
                    return;
                }
                __glSetError(0x500, (void *)0x8354, (s64) temp_a3, 0x8355, 0x8356, 0xB04, temp_a3 + 0x11E14);
            }
        } else {
            temp_a0_2 = *arg1;
            if ((temp_a0_2 == 0x8356) || (temp_a0_2 == 0xB04)) {
                temp_a3->unk11E10 = temp_a0_2;
                return;
            }
            __glSetError(0x500, (void *)0x8354, (s64) temp_a3, 0x8355, 0x8356, 0xB04);
        }
    } else {
        __glSetError(0x502, temp_a3, 0x8356, 0xB04);
    }
}

void __glOdyim_GetPixelTexGenParameterivSGIS(s32 arg0, s32 *arg1) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x8354) {
            if (arg0 != 0x8355) {
                __glSetError(0x500, (void *)0x8354, (s64) temp_a3, 0x8355, 0x11E14);
            } else {
                *arg1 = temp_a3->unk11E14;
            }
        } else {
            *arg1 = temp_a3->unk11E10;
        }
    } else {
        __glSetError(0x502, temp_a3, 0x8355, 0x10000);
    }
}

void __glOdyim_PixelTexGenParameterfSGIS(s32 arg0, f32 fparg1) {
    f32 sp18;

    sp18 = fparg1;
    if ((arg0 != 0x8354) && (arg0 != 0x8355)) {
        __glSetError(0x500);
    } else {
        __glOdyim_PixelTexGenParameterfvSGIS(&sp18);
    }
}

void __glOdyim_PixelTexGenParameterfvSGIS(f32 *arg0, f32 *arg1) {
    f32 temp_f4;
    f32 temp_f4_2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != (f32 *)0x8354) {
            if (arg0 != (f32 *)0x8355) {
                __glSetError(0x500, (void *)0x8354, (s64) temp_a3, 0x8355, 0x11E14);
            } else {
                temp_f4 = *arg1;
                if ((temp_f4 == 33622.0f) || (temp_f4 == 2820.0f)) {
                    temp_a3->unk11E14 = (s32) (s64) temp_f4;
                    return;
                }
                __glSetError(0x500, (void *)0x8354, (s64) temp_a3, 0x8355, 0x11E14);
            }
        } else {
            temp_f4_2 = *arg1;
            if ((temp_f4_2 == 33622.0f) || (temp_f4_2 == 2820.0f)) {
                temp_a3->unk11E10 = (s32) (s64) temp_f4_2;
                return;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(0x500, 0x8354, temp_a3, 0x11E14);
        }
    } else {
        __glSetError(0x502, temp_a3, 0x11E14);
    }
}

void __glOdyim_GetPixelTexGenParameterfvSGIS(s32 arg0, f32 *arg1) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x8354) {
            if (arg0 != 0x8355) {
                __glSetError(0x500, (void *)0x8354, (s64) temp_a3, 0x8355, temp_a3 + 0x11E14, 0x10000);
            } else {
                *arg1 = (f32) ((u64) ((s64) temp_a3->unk11E14 << 0x20) >> 0x20);
            }
        } else {
            *arg1 = (f32) ((u64) ((s64) temp_a3->unk11E10 << 0x20) >> 0x20);
        }
    } else {
        __glSetError(0x502, temp_a3, 0x8355, 0x10000);
    }
}

void __glOdyim_SoftDrawPixels(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_a7;
    void *temp_a6;
    void *temp_t0;

    temp_a6 = *(void **)0x1018;
    sp10 = arg4;
    sp20 = arg3;
    temp_t0 = *(void **)0x1010;
    sp18 = arg2;
    sp8 = arg1;
    temp_a7 = temp_t0 + 0x10000;
    sp0 = arg0;
    if (temp_t0->unk16964 != 0) {
        if (temp_a6 != NULL) {
            goto block_2;
        }
        goto block_4;
    }
    if (temp_a6 == NULL) {
        goto block_5;
    }
block_2:
    if (temp_a6 != (void *)2) {
        __glSetError(0x502, temp_a6, temp_a7);
    } else {
block_4:
        temp_t0->unk16975 = 1;
        temp_t0->unk2E40(temp_t0, temp_a6, temp_a7);
        *(void *)0x1018 = NULL;
block_5:
        __glim_DrawPixels(sp0, sp8, sp18, sp20, sp10);
    }
}
