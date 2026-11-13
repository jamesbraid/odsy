? __glConvertResult(f32 *, ?, f32 *, s64, s64, s32, s64, f32 *); /* extern */
? __glDoGet(u32, s64, s64, s64);                    /* extern */
s32 __glOdyim_LightEnviSGIX(f32 *);                 /* extern */
f32 *__glOdysseyGetCurrentTexture(void *, f32 *, f32 *); /* extern */
s32 __glOdysseyIsTextureResident(s64, s64);         /* extern */
s32 __glSetError(s64, f32 *, f32 *, s32, s32, void *, ?); /* extern */
? __glUnScaleColorf(s32, s32, void *, ?, s32, s32, void *, ?); /* extern */
? __glUnScaleColori(f32 *, s64, s32, ?, f32 *, s32, ?, ?); /* extern */
? __glim_GetMaterialfv(?, void *, s32, ?, ?);       /* extern */
? __glim_GetMaterialiv(?, void *, s32, ?, ?);       /* extern */
f32 floorf(f32, f32, f32, f32, s32, f32, f32, f32); /* extern */
? memcpy(s64, s32, s32);                            /* extern */
? __glOdyDecodeShadowFormat(s32, s64, s64, s32, s64); /* static */
void __glOdysseyUpdateRasterPos(f32 *arg0, s64, u8, s32, s32, s64, f32 *); /* static */
extern s32 HQ2_READ_FIFO;
extern ? sub_0daf0000;

s32 GetTexDim(u32 arg0) {
    if (arg0 >= 0x8064U) {
        if (arg0 > 0x8064U) {
            if (arg0 >= 0x8070U) {
                if (arg0 > 0x8070U) {
                    if (arg0 == 0x8095) {
                        /* Duplicate return node #5. Try simplifying control flow for better match */
                        return 2;
                    }
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #13. Try simplifying control flow for better match */
                return 3;
            }
            if (arg0 == 0x806F) {
                return 3;
            }
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        return 2;
    }
    if (arg0 >= 0xDE1U) {
        if (arg0 >= 0xDE2U) {
            if (arg0 == 0x8063) {
                /* Duplicate return node #9. Try simplifying control flow for better match */
                return 1;
            }
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return 0;
        }
        return 2;
    }
    if (arg0 != 0xDE0) {
        return 0;
    }
    return 1;
}

void __glOdyim_GetTexLevelParameterfv(f32 *arg0, s32 arg1, u32 arg2, s64 arg3) {
    s64 sp0;
    f32 *temp_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0_2;
    void *temp_s2;
    void *temp_s2_2;

    sp0 = arg3;
    temp_s2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetCurrentTexture(temp_s2, arg0);
        if (temp_v0 != NULL) {
            if ((arg1 >= 0) && (arg1 < temp_s2->unkE94)) {
                temp_s2_2 = temp_v0 + (arg1 * 0x44) + 0x554;
                temp_v0_2 = __glOdyim_LightEnviSGIX(arg0);
                if (arg2 >= 0x805DU) {
                    if (arg2 > 0x805DU) {
                        if (arg2 >= 0x8060U) {
                            if (arg2 > 0x8060U) {
                                if (arg2 >= 0x8071U) {
                                    if (arg2 <= 0x8071U) {
                                        temp_a0 = temp_s2_2->unk24;
                                        if (temp_v0_2 < 3) {
                                            *sp0 = (f32) (temp_a0 - (temp_s2_2->unk28 * 2));
                                        } else {
                                            *sp0 = (f32) temp_a0;
                                        }
                                    } else {
                                        goto block_28;
                                    }
                                } else if (arg2 == 0x8061) {
                                    *sp0 = (f32) temp_s2_2->unk40;
                                } else {
                                    goto block_28;
                                }
                            } else {
                                *sp0 = (f32) temp_s2_2->unk3C;
                            }
                        } else if (arg2 >= 0x805FU) {
                            if (arg2 <= 0x805FU) {
                                *sp0 = (f32) temp_s2_2->unk38;
                            } else {
                                goto block_28;
                            }
                        } else if (arg2 == 0x805E) {
                            *sp0 = (f32) temp_s2_2->unk34;
                        } else {
                            goto block_28;
                        }
                    } else {
                        *sp0 = (f32) temp_s2_2->unk30;
                    }
                } else if (arg2 >= 0x1003U) {
                    if (arg2 >= 0x1004U) {
                        if (arg2 >= 0x805CU) {
                            if (arg2 <= 0x805CU) {
                                *sp0 = (f32) temp_s2_2->unk2C;
                                return;
                            }
                            goto block_28;
                        }
                        if (arg2 == 0x1005) {
                            *sp0 = (f32) temp_s2_2->unk28;
                        } else {
                            goto block_28;
                        }
                    } else {
                        *sp0 = (f32) ((u64) ((s64) temp_s2_2->unk18 << 0x20) >> 0x20);
                    }
                } else if (arg2 >= 0x1001U) {
                    if (arg2 < 0x1002U) {
                        temp_a0_2 = temp_s2_2->unk20;
                        if (temp_v0_2 < 2) {
                            *sp0 = (f32) (temp_a0_2 - (temp_s2_2->unk28 * 2));
                        } else {
                            *sp0 = (f32) temp_a0_2;
                        }
                    } else {
                        goto block_28;
                    }
                } else if (arg2 == 0x1000) {
                    *sp0 = (f32) temp_s2_2->unk1C;
                } else {
block_28:
                    __glSetError(0x501);
                }
            } else {
                __glSetError(0x501);
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_GetTexLevelParameteriv(f32 *arg0, s32 arg1, u32 arg2, s64 arg3) {
    s64 sp0;
    f32 *temp_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v0_2;
    void *temp_s2;
    void *temp_s2_2;

    sp0 = arg3;
    temp_s2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetCurrentTexture(temp_s2, arg0);
        if (temp_v0 != NULL) {
            if ((arg1 >= 0) && (arg1 < temp_s2->unkE94)) {
                temp_s2_2 = temp_v0 + (arg1 * 0x44) + 0x554;
                temp_v0_2 = __glOdyim_LightEnviSGIX(arg0);
                if (arg2 >= 0x805DU) {
                    if (arg2 > 0x805DU) {
                        if (arg2 >= 0x8060U) {
                            if (arg2 > 0x8060U) {
                                if (arg2 >= 0x8071U) {
                                    if (arg2 <= 0x8071U) {
                                        temp_a0 = temp_s2_2->unk24;
                                        if (temp_v0_2 < 3) {
                                            *sp0 = (s32) (temp_a0 - (temp_s2_2->unk28 * 2));
                                        } else {
                                            *sp0 = temp_a0;
                                        }
                                    } else {
                                        goto block_28;
                                    }
                                } else if (arg2 == 0x8061) {
                                    *sp0 = (s32) temp_s2_2->unk40;
                                } else {
                                    goto block_28;
                                }
                            } else {
                                *sp0 = (s32) temp_s2_2->unk3C;
                            }
                        } else if (arg2 >= 0x805FU) {
                            if (arg2 <= 0x805FU) {
                                *sp0 = (s32) temp_s2_2->unk38;
                            } else {
                                goto block_28;
                            }
                        } else if (arg2 == 0x805E) {
                            *sp0 = (s32) temp_s2_2->unk34;
                        } else {
                            goto block_28;
                        }
                    } else {
                        *sp0 = (s32) temp_s2_2->unk30;
                    }
                } else if (arg2 >= 0x1003U) {
                    if (arg2 >= 0x1004U) {
                        if (arg2 >= 0x805CU) {
                            if (arg2 <= 0x805CU) {
                                *sp0 = (s32) temp_s2_2->unk2C;
                                return;
                            }
                            goto block_28;
                        }
                        if (arg2 == 0x1005) {
                            *sp0 = (s32) temp_s2_2->unk28;
                        } else {
                            goto block_28;
                        }
                    } else {
                        *sp0 = (s32) temp_s2_2->unk18;
                    }
                } else if (arg2 >= 0x1001U) {
                    if (arg2 < 0x1002U) {
                        temp_a0_2 = temp_s2_2->unk20;
                        if (temp_v0_2 < 2) {
                            *sp0 = (s32) (temp_a0_2 - (temp_s2_2->unk28 * 2));
                        } else {
                            *sp0 = temp_a0_2;
                        }
                    } else {
                        goto block_28;
                    }
                } else if (arg2 == 0x1000) {
                    *sp0 = (s32) temp_s2_2->unk1C;
                } else {
block_28:
                    __glSetError(0x501);
                }
            } else {
                __glSetError(0x501);
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x500);
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_GetClipPlane(s32 arg0, void *arg1, s32 arg2) {
    f32 *temp_a3;
    s32 temp_a5;
    s32 var_a2;
    s32 var_a4;

    var_a2 = arg2;
    temp_a5 = arg0 * 0x10;
    temp_a3 = *(f32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a4 = arg0 - 0x3000;
        if (var_a4 >= 0) {
            var_a2 = arg0 < 0x3006;
            var_a4 = -0x30000;
            if (var_a2 != 0) {
                arg1->unk0 = (f64) *(0xFFFD0000 + (s32) (temp_a3->unk6D4 + temp_a5));
                arg1->unk8 = (f64) (temp_a3->unk6D4 + temp_a5 + 0xFFFD0000)->unk4;
                arg1->unk10 = (f64) (temp_a3->unk6D4 + temp_a5 + 0xFFFD0000)->unk8;
                arg1->unk18 = (f64) (temp_a3->unk6D4 + temp_a5 + 0xFFFD0000)->unkC;
                return;
            }
        }
        __glSetError(0x500, (f32 *) var_a2, temp_a3, var_a4, temp_a5);
    } else {
        __glSetError(0x502, temp_a3, (f32 *) temp_a5);
    }
}

s32 __glOdyGetFromHardware(void *arg0, s32 arg1) {
    s32 temp_a4_2;
    s32 temp_t0;
    s32 var_a2;
    u16 *temp_a6;
    u16 temp_a3;
    void *temp_a4;

    var_a2 = 0x4C0;
    temp_t0 = arg0->unk16D3C;
    temp_a4 = arg0->unk16D24;
    temp_a3 = (arg0->unkA6B4 + 1) & 0xFFFF;
    arg0->unkA6B4 = temp_a3;
    temp_a6 = arg0->unk16C98 + (temp_t0 * 2);
    temp_a4_2 = temp_a4->unk7C + 1;
    if (arg1 != 0) {
        var_a2 = 0x4C2;
        if (arg1 != 1) {
            if (arg1 != 2) {
                var_a2 = ((arg1 ^ 3) == 0) ? 0x4C3 : 0x4C0;
            }
        } else {
            var_a2 = 0x4C1;
        }
    }
    HQ2_READ_FIFO = var_a2;
    HQ2_READ_FIFO = temp_a4_2;
    HQ2_READ_FIFO = 0x10A5A;
    HQ2_READ_FIFO = temp_t0;
    HQ2_READ_FIFO = (s32) temp_a3;
    if ((temp_a4->unk7C != temp_a4_2) && (*temp_a6 != temp_a3)) {
loop_6:
        if ((temp_a4->unk7C != temp_a4_2) && (*temp_a6 != temp_a3) && (temp_a4->unk7C != temp_a4_2)) {
            if (*temp_a6 != temp_a3) {
                goto loop_6;
            }
        }
    }
    return 0;
}

/*
Decompilation failure in function __glOdyDecodeShadowFormat:

Unable to determine jump table for jr instruction at ody_get.s line 927.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyGetFromShadow(f32 *arg0, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a3;

    sp10 = arg4;
    sp8 = arg3;
    sp0 = arg2;
    sp18 = (s64) arg0->unk16D24;
    if (__glOdyGetFromHardware() >= 0) {
        temp_a3 = sp0 * 0x14;
        __glOdyDecodeShadowFormat(sp18 + temp_a3, sp8, sp10, temp_a3, sp0);
    }
}

void __glOdysseyDoGet(u32 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp528;
    s64 sp520;
    s64 sp518;
    f32 sp38C;
    f32 sp388;
    f32 sp1F8;
    u8 sp190;
    f32 sp4;
    f32 *temp_a7;
    f32 *var_t0;
    f32 *var_t1;
    f32 *var_t3;
    f64 temp_f4;
    f64 temp_f4_2;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s64 var_a1;
    s64 var_a6;
    u8 *var_t2;
    u8 temp_a2;

    var_a1 = arg1;
    temp_a7 = *(f32 **)0x1010;
    var_a6 = arg3;
    if (*(s32 *)0x1018 != 1) {
        temp_a3 = arg0 < 0x812BU;
        temp_a4 = arg0 > 0x812BU;
        if (temp_a3 == 0) {
            if (temp_a4 == 0) {
                sp528 = var_a1;
                var_t1 = &sp388;
                sp520 = arg2;
                var_t3 = &sp1F8;
                var_t2 = &sp190;
                var_t0 = &sp4;
                goto block_4;
            }
            sp528 = var_a1;
            sp520 = arg2;
            if (arg0 >= 0x835EU) {
                var_t1 = &sp388;
                if (arg0 <= 0x835EU) {
                    var_t3 = &sp1F8;
                    var_t2 = &sp190;
                    var_t0 = &sp4;
block_4:
                    goto block_5;
                }
                if (arg0 >= 0x83EEU) {
                    if (arg0 <= 0x83EEU) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    if (arg0 >= 0x846DU) {
                        if (arg0 <= 0x846DU) {
                            var_t3 = &sp1F8;
                            var_t0 = sp;
                            var_t2 = &sp190;
                            sp38C = 4096.0f;
                            var_t1 = &sp388 + 8;
                            sp388 = 1.0f;
                            goto block_5;
                        }
                        sp518 = var_a6;
                        if (arg0 == 0x846E) {
                            var_t3 = &sp1F8;
                            var_t0 = sp;
                            var_t2 = &sp190;
                            sp38C = 4096.0f;
                            var_t1 = &sp388 + 8;
                            sp388 = 1.0f;
                            goto block_5;
                        }
                        goto block_18;
                    }
                    sp518 = var_a6;
                    if (arg0 == 0x83EF) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_a6 = (s64) temp_a7->unk19DB8;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    goto block_18;
                }
                if (arg0 >= 0x8360U) {
                    var_t1 = &sp388;
                    if (arg0 <= 0x8360U) {
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_a6 = (s64) temp_a7->unkE3C;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    sp518 = var_a6;
                    if (arg0 == 0x8361) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    goto block_18;
                }
                sp518 = var_a6;
                if (arg0 == 0x835F) {
                    var_t1 = &sp388;
                    var_t3 = &sp1F8;
                    var_t2 = &sp190;
                    var_t0 = &sp4;
                    goto block_5;
                }
                goto block_18;
            }
            if (arg0 >= 0x832CU) {
                if (arg0 <= 0x832CU) {
                    var_t1 = &sp388;
                    var_t3 = &sp1F8;
                    var_t2 = &sp190;
                    var_t0 = &sp4;
                    goto block_5;
                }
                if (arg0 >= 0x835CU) {
                    var_t1 = &sp388;
                    if (arg0 <= 0x835CU) {
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    sp518 = var_a6;
                    if (arg0 == 0x835D) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    goto block_18;
                }
                sp518 = var_a6;
                if (arg0 == 0x832D) {
                    var_t1 = &sp388;
                    var_t3 = &sp1F8;
                    var_t2 = &sp190;
                    var_t0 = &sp4;
                    goto block_5;
                }
                goto block_18;
            }
            if (arg0 >= 0x8199U) {
                if (arg0 > 0x8199U) {
                    sp518 = var_a6;
                    if (arg0 == 0x8329) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    goto block_18;
                }
                __glConvertResult(temp_a7, 0, temp_a7 + 0x1646C, sp520, sp528, 4, var_a6, temp_a7);
            } else {
                if (arg0 >= 0x8198U) {
                    sp518 = var_a6;
                    if (arg0 <= 0x8198U) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    goto block_18;
                }
                sp518 = var_a6;
                if (arg0 == 0x812C) {
                    var_t1 = &sp388;
                    var_t3 = &sp1F8;
                    var_t2 = &sp190;
                    var_t0 = &sp4;
                    goto block_5;
                }
                goto block_18;
            }
        } else if (arg0 >= 0xB70U) {
            sp528 = var_a1;
            sp520 = arg2;
            if (arg0 < 0xB71U) {
                temp_f4 = temp_a7->unk165E8;
                if (temp_f4 < GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U)) {
                    sp1F8 = 0.0f;
                } else {
                    sp1F8 = (f32) temp_f4;
                }
                temp_f4_2 = temp_a7->unk165F0;
                var_a6 = (s64) &sp1F8;
                var_t3 = var_a6 + 8;
                if (temp_f4_2 > 1.0) {
                    var_a6->unk4 = 1.0f;
                } else {
                    var_a6->unk4 = (f32) temp_f4_2;
                }
                var_t1 = &sp388;
                var_t0 = sp;
                var_t2 = &sp190;
                goto block_5;
            }
            if (arg0 >= 0x8068U) {
                if (arg0 <= 0x8068U) {
                    var_t1 = &sp388;
                    var_t3 = &sp1F8;
                    var_t2 = &sp190;
                    var_t0 = &sp4;
                    goto block_5;
                }
                if (arg0 >= 0x806AU) {
                    if (arg0 <= 0x806AU) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    sp518 = var_a6;
                    if (arg0 == 0x812A) {
                        __glConvertResult(temp_a7, 0, temp_a7 + 0x16434, sp520, sp528, temp_a7->unk16430 * 2, var_a6, temp_a7);
                    } else {
                        goto block_18;
                    }
                } else {
                    sp518 = var_a6;
                    if (arg0 == 0x8069) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    goto block_18;
                }
            } else {
                if (arg0 >= 0xD32U) {
                    if (arg0 < 0xD33U) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    sp518 = var_a6;
                    if (arg0 == 0x803A) {
                        var_t1 = &sp388;
                        var_t3 = &sp1F8;
                        var_t2 = &sp190;
                        var_t0 = &sp4;
                        goto block_5;
                    }
                    goto block_18;
                }
                sp518 = var_a6;
                if (arg0 == 0xC33) {
                    var_t1 = &sp388;
                    var_t3 = &sp1F8;
                    var_t0 = sp;
                    sp190 = temp_a7->unkC97;
                    var_t2 = &sp190 + 1;
block_5:
                    if (var_t0 == sp) {
                        if (var_t1 == &sp388) {
                            if (var_t2 == &sp190) {
                                if (var_t3 != &sp1F8) {
                                    __glConvertResult(temp_a7, 5, &sp1F8, sp520, sp528, (s32) (var_t3 - &sp1F8) >> 2, var_a6, temp_a7);
                                }
                            } else {
                                M2C_ERROR(/* Read from unset register $t9 */)(temp_a7, 4, &sp190, sp520, sp528, var_t2 - &sp190, var_a6, temp_a7);
                            }
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(temp_a7, 0, &sp388, sp520, sp528, (s32) (var_t1 - &sp388) >> 2, var_a6, temp_a7);
                        }
                    } else {
                        __glConvertResult(temp_a7, 3, sp, sp520, sp528, (s32) (var_t0 - sp) >> 2, var_a6, temp_a7);
                    }
                } else {
                    goto block_18;
                }
            }
        } else {
            sp528 = var_a1;
            sp520 = arg2;
            if (arg0 >= 0xB04U) {
                if (arg0 >= 0xB05U) {
                    var_a1 = 0xB05;
                    if (arg0 >= 0xB06U) {
                        if (arg0 >= 0xB07U) {
                            sp518 = var_a6;
                            if (arg0 == 0xB43) {
                                __glOdyGetFromShadow(temp_a7, 0, 6, sp528, sp520, var_a6, temp_a7);
                            } else {
                                goto block_18;
                            }
                        } else {
                            goto block_16;
                        }
                    } else {
                        sp518 = var_a6;
                        if (arg0 == 0xB05) {
                            goto block_16;
                        }
                        goto block_18;
                    }
                } else {
block_16:
                    temp_a2 = temp_a7->unkA73C;
                    sp518 = var_a6;
                    if (temp_a2 != 0) {
                        __glOdysseyUpdateRasterPos(temp_a7, var_a1, temp_a2, temp_a3, temp_a4, var_a6, temp_a7);
                    }
                    goto block_18;
                }
            } else {
                temp_a0 = arg0 < 0xB02U;
                if (temp_a0 == 0) {
                    if (arg0 >= 0xB03U) {
                        sp518 = var_a6;
                        if (arg0 == 0xB03) {
                            __glOdyGetFromShadow(temp_a7, 0, 4, sp528, sp520, var_a6, temp_a7);
                        } else {
                            goto block_18;
                        }
                    } else {
                        __glOdyGetFromShadow(temp_a7, 0, 2, sp528, sp520, var_a6, temp_a7);
                    }
                } else if (arg0 >= 0xB01U) {
                    sp518 = var_a6;
                    if (temp_a0 != 0) {
                        __glOdyGetFromShadow(temp_a7, 0, 0, sp528, sp520, var_a6, temp_a7);
                    } else {
                        goto block_18;
                    }
                } else {
                    sp518 = var_a6;
                    if (arg0 == 0xB00) {
                        __glOdyGetFromShadow(temp_a7, 0, 1, sp528, sp520, var_a6, temp_a7);
                    } else {
block_18:
                        __glDoGet(arg0, sp528, sp520, sp518);
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, (f32 *) var_a6, temp_a7);
    }
}

void __glOdyim_GetDoublev(void) {
    __glOdysseyDoGet(2U, (s64) (&sub_0daf0000 - 0x7138), 0x171990);
}

void __glOdyim_GetFloatv(void) {
    __glOdysseyDoGet(1U, (s64) (&sub_0daf0000 - 0x7128), 0x171950);
}

void __glOdyim_GetIntegerv(void) {
    __glOdysseyDoGet(3U, (s64) (&sub_0daf0000 - 0x7118), 0x171910);
}

void __glOdyim_GetBooleanv(void) {
    __glOdysseyDoGet(4U, (s64) (&sub_0daf0000 - 0x7108), 0x1718D0);
}

void __glOdysseyUpdateRasterPos(f32 *arg0) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_a1;

    sp8 = (s64) *(s32 *)0x1010;
    sp0 = arg0 + 0x10000;
    sp10 = (s64) arg0->unk16D24;
    if (__glOdyGetFromHardware((void *)3) >= 0) {
        temp_a1 = sp8 + 0x180;
        if (sp8->unkC94 != 0) {
            __glOdyDecodeShadowFormat(sp10 + 0x3C, temp_a1, 1);
        } else {
            __glOdyDecodeShadowFormat(sp10 + 0x28, temp_a1, 1);
        }
        __glOdyDecodeShadowFormat(sp10 + 0x50, sp8 + 0x120, 1);
        sp0->unk-58C4 = 0;
    }
}

void __glOdyim_GetTexParameterfv(f32 *arg0, u32 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    f32 *temp_a1;
    f32 *temp_v0;
    s32 var_a1;

    sp0 = arg2;
    temp_a1 = *(f32 **)0x1010;
    sp8 = (s64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetCurrentTexture((void *) sp8, arg0, (f32 *)0x170000);
        if (temp_v0 != NULL) {
            var_a1 = 0x813B;
            if (arg1 >= 0x813BU) {
                if (arg1 > 0x813BU) {
                    if (arg1 >= 0x818FU) {
                        if (arg1 > 0x818FU) {
                            if (arg1 >= 0x8369U) {
                                var_a1 = 0x836A;
                                if (arg1 > 0x8369U) {
                                    if (arg1 >= 0x836BU) {
                                        if (arg1 <= 0x836BU) {
                                            sp0->unk0 = (f32) temp_v0->unk50;
                                        } else {
                                            goto block_26;
                                        }
                                    } else if (arg1 == 0x836A) {
                                        sp0->unk0 = (f32) temp_v0->unk4C;
                                    } else {
                                        goto block_26;
                                    }
                                } else {
                                    sp0->unk0 = (f32) temp_v0->unk48;
                                }
                            } else if (arg1 >= 0x8191U) {
                                if (arg1 > 0x8191U) {
                                    goto block_25;
                                }
                            } else if (arg1 == 0x8190) {
                                sp0->unk0 = (f32) temp_v0->unk6C;
                            } else {
                                goto block_26;
                            }
                        } else {
                            sp0->unk0 = (f32) temp_v0->unk68;
                        }
                    } else if (arg1 >= 0x8179U) {
                        if (arg1 > 0x8179U) {
                            if (arg1 >= 0x818EU) {
                                if (arg1 <= 0x818EU) {
                                    sp0->unk0 = (f32) temp_v0->unk64;
                                } else {
                                    goto block_26;
                                }
                            } else if (arg1 == 0x817A) {
                                sp0->unk0 = (f32) temp_v0->unk80;
                                sp0->unk4 = (f32) temp_v0->unk84;
                                sp0->unk8 = (f32) temp_v0->unk88;
                                sp0->unkC = (f32) temp_v0->unk8C;
                            } else {
                                goto block_26;
                            }
                        } else {
                            sp0->unk0 = (f32) temp_v0->unk70;
                            sp0->unk4 = (f32) temp_v0->unk74;
                            sp0->unk8 = (f32) temp_v0->unk78;
                            sp0->unkC = (f32) temp_v0->unk7C;
                        }
                    } else {
                        if (arg1 >= 0x813DU) {
                            if (arg1 <= 0x813DU) {
                                sp0->unk0 = (f32) temp_v0->unk60;
                                return;
                            }
block_25:
                            goto block_26;
                        }
                        if (arg1 == 0x813C) {
                            sp0->unk0 = (f32) temp_v0->unk5C;
                        } else {
                            goto block_26;
                        }
                    }
                } else {
                    sp0->unk0 = (f32) temp_v0->unk58;
                }
            } else {
                var_a1 = 0x8067;
                if (arg1 >= 0x8067U) {
                    if (arg1 > 0x8067U) {
                        if (arg1 >= 0x809BU) {
                            if (arg1 > 0x809BU) {
                                if (arg1 >= 0x813AU) {
                                    var_a1 = arg1 > 0x813AU;
                                    if (var_a1 == 0) {
                                        sp0->unk0 = (f32) temp_v0->unk54;
                                    } else {
                                        goto block_26;
                                    }
                                } else if (arg1 == 0x809C) {
                                    sp0->unk0 = (f32) temp_v0->unk504;
                                } else {
                                    goto block_26;
                                }
                            } else {
                                sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk44 << 0x20) >> 0x20);
                            }
                        } else {
                            if (arg1 >= 0x809AU) {
                                if (arg1 <= 0x809AU) {
                                    sp0->unk0 = (f32) temp_v0->unk40;
                                    return;
                                }
                                goto block_26;
                            }
                            if (arg1 == 0x8072) {
                                sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk24 << 0x20) >> 0x20);
                            } else {
                                goto block_26;
                            }
                        }
                    } else {
                        sp0->unk0 = (f32) __glSetError(sp8, temp_v0);
                    }
                } else if (arg1 >= 0x2802U) {
                    if (arg1 >= 0x2803U) {
                        if (arg1 >= 0x8066U) {
                            if (arg1 <= 0x8066U) {
                                sp0->unk0 = (f32) temp_v0->unk3C;
                            } else {
                                goto block_26;
                            }
                        } else if (arg1 == 0x2803) {
                            sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk20 << 0x20) >> 0x20);
                        } else {
block_26:
                            __glSetError(0x500, (f32 *) var_a1);
                        }
                    } else {
                        sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk1C << 0x20) >> 0x20);
                    }
                } else {
                    switch (arg1) {                 /* irregular */
                    case 0x2801:
                        sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk14 << 0x20) >> 0x20);
                        break;
                    case 0x1004:
                        sp0->unk0 = (f32) temp_v0->unk2C;
                        sp0->unk4 = (f32) temp_v0->unk30;
                        sp0->unk8 = (f32) temp_v0->unk34;
                        sp0->unkC = (f32) temp_v0->unk38;
                        break;
                    default:
                        sp0->unk0 = (f32) ((u64) ((s64) temp_v0->unk18 << 0x20) >> 0x20);
                        break;
                    }
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x500);
        }
    } else {
        __glSetError(0x502, temp_a1, (f32 *)0x170000);
    }
}

void __glOdyim_GetTexParameteriv(f32 *arg0, u32 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    f32 *temp_a1;
    f32 *temp_v0;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f13_4;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    s32 temp_f15;
    s32 temp_f15_2;
    s32 temp_f15_3;
    s64 var_a1;

    sp0 = arg2;
    temp_a1 = *(f32 **)0x1010;
    sp8 = (s64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetCurrentTexture((void *) sp8, arg0, (f32 *)0x170000);
        if (temp_v0 != NULL) {
            var_a1 = 0x813A;
            if (arg1 >= 0x813AU) {
                if (arg1 > 0x813AU) {
                    if (arg1 >= 0x8190U) {
                        if (arg1 > 0x8190U) {
                            if (arg1 >= 0x836AU) {
                                if (arg1 > 0x836AU) {
                                    if (arg1 == 0x836B) {
                                        sp0->unk0 = (s32) temp_v0->unk50;
                                    } else {
                                        goto block_28;
                                    }
                                } else {
                                    sp0->unk0 = (s32) temp_v0->unk4C;
                                }
                            } else if (arg1 >= 0x8369U) {
                                if (arg1 <= 0x8369U) {
                                    sp0->unk0 = (s32) temp_v0->unk48;
                                } else {
                                    goto block_28;
                                }
                            } else if (arg1 == 0x8191) {

                            } else {
                                goto block_28;
                            }
                        } else {
                            sp0->unk0 = (s32) temp_v0->unk6C;
                        }
                    } else if (arg1 >= 0x813DU) {
                        if (arg1 > 0x813DU) {
                            if (arg1 >= 0x818FU) {
                                if (arg1 <= 0x818FU) {
                                    sp0->unk0 = (s32) temp_v0->unk68;
                                    return;
                                }
                                goto block_28;
                            }
                            if (arg1 == 0x818E) {
                                sp0->unk0 = (s32) temp_v0->unk64;
                            } else {
                                goto block_28;
                            }
                        } else {
                            sp0->unk0 = (s32) temp_v0->unk60;
                        }
                    } else {
                        var_a1 = arg1 < 0x813CU;
                        if (var_a1 == 0) {
                            if (arg1 <= 0x813CU) {
                                sp0->unk0 = (s32) temp_v0->unk5C;
                            } else {
                                goto block_28;
                            }
                        } else if (arg1 == 0x813B) {
                            sp0->unk0 = (s32) temp_v0->unk58;
                        } else {
                            goto block_28;
                        }
                    }
                } else {
                    sp0->unk0 = (s32) temp_v0->unk54;
                }
            } else if (arg1 >= 0x8066U) {
                if (arg1 > 0x8066U) {
                    if (arg1 >= 0x809AU) {
                        if (arg1 > 0x809AU) {
                            var_a1 = sp0;
                            if (arg1 >= 0x809CU) {
                                if (arg1 <= 0x809CU) {
                                    var_a1->unk0 = (s32) temp_v0->unk504;
                                } else {
                                    goto block_28;
                                }
                            } else if (arg1 == 0x809B) {
                                sp0->unk0 = (s32) temp_v0->unk44;
                            } else {
                                goto block_28;
                            }
                        } else {
                            sp0->unk0 = (s32) temp_v0->unk40;
                        }
                    } else {
                        var_a1 = 0x8072;
                        if (arg1 >= 0x8072U) {
                            if (arg1 <= 0x8072U) {
                                sp0->unk0 = (s32) temp_v0->unk24;
                            } else {
                                goto block_28;
                            }
                        } else {
                            unksp20 = (s64) temp_v0;
                            if (arg1 == 0x8067) {
                                sp0->unk0 = __glOdysseyIsTextureResident(sp8, unksp20);
                            } else {
                                goto block_28;
                            }
                        }
                    }
                } else {
                    sp0->unk0 = (s32) temp_v0->unk3C;
                }
            } else {
                var_a1 = arg1 < 0x2801U;
                if (var_a1 == 0) {
                    if (arg1 >= 0x2802U) {
                        if (arg1 >= 0x2803U) {
                            if (arg1 < 0x2804U) {
                                sp0->unk0 = (s32) temp_v0->unk20;
                            } else {
                                goto block_28;
                            }
                        } else {
                            var_a1 = sp0;
                            if (arg1 == 0x2802) {
                                var_a1->unk0 = (s32) temp_v0->unk1C;
                            } else {
                                goto block_28;
                            }
                        }
                    } else {
                        sp0->unk0 = (s32) temp_v0->unk14;
                    }
                } else {
                    if (arg1 >= 0x2800U) {
                        if (var_a1 != 0) {
                            sp0->unk0 = (s32) temp_v0->unk18;
                            return;
                        }
                        goto block_28;
                    }
                    unksp20 = (s64) temp_v0;
                    if (arg1 != 0x1004) {
block_28:
                        __glSetError(0x500, (f32 *) var_a1);
                    } else {
                        temp_f14 = sp8->unkDEC;
                        temp_f13 = unksp20->unk2C * temp_f14;
                        temp_f15 = (s32) floorf(sp8->unkDD4 * temp_f13, temp_f13, temp_f14);
                        sp0->unk0 = temp_f15;
                        temp_f14_2 = sp8->unkDEC;
                        temp_f13_2 = unksp20->unk30 * temp_f14_2;
                        temp_f15_2 = (s32) floorf((bitwise f32) sp0, sp8->unkDD4 * temp_f13_2, temp_f13_2, temp_f14_2, temp_f15);
                        sp0->unk4 = temp_f15_2;
                        temp_f14_3 = sp8->unkDEC;
                        temp_f13_3 = unksp20->unk34 * temp_f14_3;
                        temp_f15_3 = (s32) floorf(sp8->unkDD4 * temp_f13_3, temp_f13_3, temp_f14_3, (bitwise f32) temp_f15_2);
                        sp0->unk8 = temp_f15_3;
                        temp_f14_4 = sp8->unkDEC;
                        temp_f13_4 = unksp20->unk38 * temp_f14_4;
                        sp0->unkC = (s32) floorf(sp8->unkDD4 * temp_f13_4, temp_f13_4, temp_f14_4, (bitwise f32) temp_f15_3);
                    }
                }
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x500);
        }
    } else {
        __glSetError(0x502, temp_a1, (f32 *)0x170000);
    }
}

void __glOdyim_GetTexEnvfv(s32 arg0, s32 arg1, f32 *arg2) {
    f32 *temp_t0;
    s32 temp_a7;

    temp_t0 = *(f32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x2300) {
            __glSetError(0x500, (f32 *)0x2200, arg2, arg0);
        } else if (arg1 != 0x2200) {
            if (arg1 != 0x2201) {
                __glSetError(0x500, (f32 *)0x2200, (f32 *)0x2201, (s32) arg2, arg0);
            } else {
                temp_a7 = arg0 * 0x24;
                __glConvertResult(temp_t0, 5, temp_t0->unk9B4 + temp_a7 + 0xFFFB1404, 1, (s64) arg2, 4, 0xFFFB1404, (f32 *) temp_a7);
            }
        } else {
            *arg2 = (f32) ((u64) ((s64) *(0xFFFB1400 + (s32) (temp_t0->unk9B4 + (arg0 * 0x24))) << 0x20) >> 0x20);
        }
    } else {
        __glSetError(0x502, arg2, (f32 *) arg0);
    }
}

void __glOdyim_GetTexEnviv(f32 *arg0, s32 arg1, f32 *arg2) {
    f32 *temp_t0;
    s32 temp_a7;

    temp_t0 = *(f32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != (f32 *)0x2300) {
            __glSetError(0x500, arg2, arg0);
        } else if (arg1 != 0x2200) {
            if (arg1 != 0x2201) {
                __glSetError(0x500, (f32 *)0x2200, (f32 *)0x2201, (s32) arg2, (s32) arg0);
            } else {
                temp_a7 = (s32) (((s32) arg0 * 8) + arg0) * 4;
                __glConvertResult(temp_t0, 5, temp_t0->unk9B4 + temp_a7 + 0xFFFB1404, 3, (s64) arg2, 4, 0xFFFB1404, (f32 *) temp_a7);
            }
        } else {
            *arg2 = *(0xFFFB1400 + (s32) (temp_t0->unk9B4 + ((s32) (((s32) arg0 * 8) + arg0) * 4)));
        }
    } else {
        __glSetError(0x502, arg2, arg0);
    }
}

void __glOdyim_GetDetailTexFuncSGIS(f32 *arg0, s64 arg1) {
    s64 sp0;
    f32 *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp0 = arg1;
        if (arg0 != (f32 *)0xDE1) {
            __glSetError(0x500, arg0);
        } else {
            temp_v0 = __glOdysseyGetCurrentTexture(*(void **)0x1010, arg0, arg0);
            memcpy(sp0, temp_v0->unk508, temp_v0->unk504 * 2 * 4);
        }
    } else {
        __glSetError(0x502, arg0);
    }
}

void __glOdyim_GetMaterialfv(s32 arg0, s32 arg1, s32 arg2, s32 arg5) {
    s32 var_a5;
    void *temp_a4;

    var_a5 = arg5;
    temp_a4 = *(void **)0x1010;
    if (temp_a4->unk700 & 0x80) {
        var_a5 = temp_a4->unk568;
        if ((var_a5 == arg0) || ((var_a5 == 0x408) && ((arg0 == 0x404) || (arg0 == 0x405)))) {
            var_a5 = temp_a4->unk56C;
            if (var_a5 != arg1) {
                if (var_a5 == 0x1602) {
                    if ((arg1 != 0x1200) && (arg1 != 0x1201)) {
                        goto block_9;
                    }
                    goto block_12;
                }
                goto block_10;
            }
block_12:
            temp_a4->unk17F4->unk1F0(0xB00, arg2, 0x405, temp_a4, var_a5, 0x1602, 0x1200);
        } else {
            goto block_10;
        }
    } else {
block_9:
block_10:
        __glim_GetMaterialfv(0x405, temp_a4, var_a5, 0x1602, 0x1200);
    }
}

void __glOdyim_GetMaterialiv(s32 arg0, s32 arg1, s32 arg2, s32 arg5) {
    s32 var_a5;
    void *temp_a4;

    var_a5 = arg5;
    temp_a4 = *(void **)0x1010;
    if (temp_a4->unk700 & 0x80) {
        var_a5 = temp_a4->unk568;
        if ((var_a5 == arg0) || ((var_a5 == 0x408) && ((arg0 == 0x404) || (arg0 == 0x405)))) {
            var_a5 = temp_a4->unk56C;
            if (var_a5 != arg1) {
                if (var_a5 == 0x1602) {
                    if ((arg1 != 0x1200) && (arg1 != 0x1201)) {
                        goto block_9;
                    }
                    goto block_12;
                }
                goto block_10;
            }
block_12:
            temp_a4->unk17F4->unk1F4(0xB00, arg2, 0x405, temp_a4, var_a5, 0x1602, 0x1200);
        } else {
            goto block_10;
        }
    } else {
block_9:
block_10:
        __glim_GetMaterialiv(0x405, temp_a4, var_a5, 0x1602, 0x1200);
    }
}

void __glOdyim_GetFogFuncSGIS(void) {
    f32 *temp_a4;

    temp_a4 = *(f32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        memcpy((s64) (temp_a4 + 0x16434), temp_a4->unk16430 * 8, (s32) temp_a4);
    } else {
        __glSetError(0x502, temp_a4);
    }
}

/*
Decompilation failure in function __glOdyim_GetFragmentLightfvSGIX:

Unable to determine jump table for jr instruction at ody_get.s line 4059.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdyim_GetFragmentLightivSGIX:

Unable to determine jump table for jr instruction at ody_get.s line 4310.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_GetFragmentMaterialfvSGIX(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_a4;
    s32 var_a6;
    void *temp_a6;

    temp_a4 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x404) {
            var_a6 = 0x16544;
            if (arg0 != 0x405) {
                __glSetError(0x500, (f32 *)0x404, (f32 *)0x405, temp_a4, arg2, (void *)0x16544);
            } else {
                goto block_4;
            }
        } else {
            var_a6 = 0x164F4;
block_4:
            temp_a6 = temp_a4 + var_a6;
            switch (arg1) {                         /* irregular */
            default:
                __glSetError(0x500, (f32 *)0x404, (f32 *)0x405, temp_a4, arg2, temp_a6, 0x1603);
                break;
            case 0x1202:
                arg2->unk0 = (f32) temp_a6->unk20;
                arg2->unk4 = (f32) temp_a6->unk24;
                arg2->unk8 = (f32) temp_a6->unk28;
                arg2->unkC = (f32) temp_a6->unk2C;
                return;
            case 0x1603:
                arg2->unk0 = (f32) temp_a6->unk44;
                arg2->unk4 = (f32) temp_a6->unk4C;
                arg2->unk8 = (f32) temp_a6->unk48;
                return;
            case 0x1601:
                arg2->unk0 = (f32) temp_a6->unk40;
                break;
            case 0x1200:
                arg2->unk0 = (f32) temp_a6->unk0;
                arg2->unk4 = (f32) temp_a6->unk4;
                arg2->unk8 = (f32) temp_a6->unk8;
                arg2->unkC = (f32) temp_a6->unkC;
                return;
            case 0x1201:
                arg2->unk0 = (f32) temp_a6->unk10;
                arg2->unk4 = (f32) temp_a6->unk14;
                arg2->unk8 = (f32) temp_a6->unk18;
                arg2->unkC = (f32) temp_a6->unk1C;
                break;
            case 0x1600:
                __glUnScaleColorf(temp_a4, arg2, temp_a6 + 0x30, 0x405, temp_a4, arg2, temp_a6, 0x1603);
                break;
            }
        }
    } else {
        __glSetError(0x502, (f32 *) temp_a4, (f32 *) arg2, 0x10000);
    }
}

void __glOdyim_GetFragmentMaterialivSGIX(s32 arg0, s32 arg1, s64 arg2, f32 *arg4, s64 arg5) {
    s64 sp8;
    s64 sp0;
    f32 *temp_s0;
    f32 *var_a4;
    f32 temp_f13;
    f32 temp_f13_10;
    f32 temp_f13_11;
    f32 temp_f13_12;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f13_4;
    f32 temp_f13_5;
    f32 temp_f13_6;
    f32 temp_f13_7;
    f32 temp_f13_8;
    f32 temp_f13_9;
    f32 temp_f14;
    f32 temp_f14_10;
    f32 temp_f14_11;
    f32 temp_f14_12;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f14_5;
    f32 temp_f14_6;
    f32 temp_f14_7;
    f32 temp_f14_8;
    f32 temp_f14_9;
    s32 temp_f15;
    s32 temp_f15_2;
    s32 temp_f15_3;
    s32 temp_f15_4;
    s32 temp_f15_5;
    s32 temp_f15_6;
    s32 temp_f15_7;
    s32 temp_f15_8;
    s32 temp_f15_9;
    s64 var_a5;

    var_a4 = arg4;
    var_a5 = arg5;
    temp_s0 = *(f32 **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp8 = arg2;
        if (arg0 != 0x404) {
            var_a4 = (f32 *)0x405;
            if (arg0 != 0x405) {
                __glSetError(0x500, (f32 *)0x404, (f32 *)0x405);
            } else {
                var_a5 = temp_s0 + 0x16544;
                sp0 = var_a5;
                goto block_5;
            }
        } else {
            sp0 = (s64) (temp_s0 + 0x164F4);
block_5:
            switch (arg1) {                         /* irregular */
            default:
                __glSetError(0x500, (f32 *) sp0, var_a4, (s32) var_a5, 0x1603, (void *)0x1601);
                break;
            case 0x1202:
                temp_f14 = temp_s0->unkDEC;
                temp_f13 = sp0->unk20 * temp_f14;
                temp_f15 = (s32) floorf((bitwise f32) sp0, (bitwise f32) var_a4, (bitwise f32) var_a5, 7.896e-42f, 0x1601, temp_s0->unkDD4 * temp_f13, temp_f13, temp_f14);
                sp8->unk0 = temp_f15;
                temp_f14_2 = temp_s0->unkDEC;
                temp_f13_2 = sp0->unk24 * temp_f14_2;
                temp_f15_2 = (s32) floorf(temp_s0->unkDD4 * temp_f13_2, temp_f13_2, temp_f14_2, (bitwise f32) temp_f15);
                sp8->unk4 = temp_f15_2;
                temp_f14_3 = temp_s0->unkDEC;
                temp_f13_3 = sp0->unk28 * temp_f14_3;
                temp_f15_3 = (s32) floorf(temp_s0->unkDD4 * temp_f13_3, temp_f13_3, temp_f14_3, (bitwise f32) temp_f15_2);
                sp8->unk8 = temp_f15_3;
                temp_f14_4 = temp_s0->unkDEC;
                temp_f13_4 = sp0->unk2C * temp_f14_4;
                sp8->unkC = (s32) floorf((bitwise f32) sp0, (bitwise f32) sp8, temp_s0->unkDD4 * temp_f13_4, temp_f13_4, (bitwise s32) temp_f14_4, (bitwise f32) temp_f15_3);
                return;
            case 0x1603:
                M2C_ERROR(/* Read from unset register $t9 */)(temp_s0, 0, sp0 + 0x44, 3, sp8, 3, 0x1603);
                break;
            case 0x1601:
                __glConvertResult(temp_s0, 0, sp0 + 0x40, 3, sp8, 1, 0x1603, (f32 *)0x1601);
                break;
            case 0x1600:
                __glUnScaleColori(temp_s0, sp8, sp0 + 0x30, 0x404, var_a4, (s32) var_a5, 0x1603, 0x1601);
                break;
            case 0x1200:
                temp_f14_5 = temp_s0->unkDEC;
                temp_f13_5 = sp0->unk0 * temp_f14_5;
                temp_f15_4 = (s32) floorf((bitwise f32) sp0, (bitwise f32) var_a4, (bitwise f32) var_a5, 7.896e-42f, 0x1601, temp_s0->unkDD4 * temp_f13_5, temp_f13_5, temp_f14_5);
                sp8->unk0 = temp_f15_4;
                temp_f14_6 = temp_s0->unkDEC;
                temp_f13_6 = sp0->unk4 * temp_f14_6;
                temp_f15_5 = (s32) floorf(temp_s0->unkDD4 * temp_f13_6, temp_f13_6, temp_f14_6, (bitwise f32) temp_f15_4);
                sp8->unk4 = temp_f15_5;
                temp_f14_7 = temp_s0->unkDEC;
                temp_f13_7 = sp0->unk8 * temp_f14_7;
                temp_f15_6 = (s32) floorf(temp_s0->unkDD4 * temp_f13_7, temp_f13_7, temp_f14_7, (bitwise f32) temp_f15_5);
                sp8->unk8 = temp_f15_6;
                temp_f14_8 = temp_s0->unkDEC;
                temp_f13_8 = sp0->unkC * temp_f14_8;
                sp8->unkC = (s32) floorf(temp_s0->unkDD4 * temp_f13_8, temp_f13_8, temp_f14_8, (bitwise f32) temp_f15_6);
                return;
            case 0x1201:
                temp_f14_9 = temp_s0->unkDEC;
                temp_f13_9 = sp0->unk10 * temp_f14_9;
                temp_f15_7 = (s32) floorf((bitwise f32) sp0, (bitwise f32) var_a4, (bitwise f32) var_a5, 7.896e-42f, 0x1601, temp_s0->unkDD4 * temp_f13_9, temp_f13_9, temp_f14_9);
                sp8->unk0 = temp_f15_7;
                temp_f14_10 = temp_s0->unkDEC;
                temp_f13_10 = sp0->unk14 * temp_f14_10;
                temp_f15_8 = (s32) floorf(temp_s0->unkDD4 * temp_f13_10, temp_f13_10, temp_f14_10, (bitwise f32) temp_f15_7);
                sp8->unk4 = temp_f15_8;
                temp_f14_11 = temp_s0->unkDEC;
                temp_f13_11 = sp0->unk18 * temp_f14_11;
                temp_f15_9 = (s32) floorf(temp_s0->unkDD4 * temp_f13_11, temp_f13_11, temp_f14_11, (bitwise f32) temp_f15_8);
                sp8->unk8 = temp_f15_9;
                temp_f14_12 = temp_s0->unkDEC;
                temp_f13_12 = sp0->unk1C * temp_f14_12;
                sp8->unkC = (s32) floorf(temp_s0->unkDD4 * temp_f13_12, temp_f13_12, temp_f14_12, (bitwise f32) temp_f15_9);
                return;
            }
        }
    } else {
        __glSetError(0x502);
    }
}
