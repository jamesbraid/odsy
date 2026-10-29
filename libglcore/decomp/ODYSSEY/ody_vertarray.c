? __glOdylc_Vertex4svBbox(void *, s32, s32, s32);   /* extern */
? __glSetError(u32, s64, s32);                      /* extern */
? __glim_ColorPointerEXT(?, s64, void *, ?);        /* extern */
? __glim_EdgeFlagPointerEXT(?, s64, void *, ?);     /* extern */
? __glim_IndexPointerEXT(?, s64, void *, ?);        /* extern */
? __glim_NormalPointerEXT(?, s64, void *, ?);       /* extern */
? __glim_TexCoordPointerEXT(?, s64, void *, ?);     /* extern */
? __glim_VertexPointerEXT(?, s64, void *, ?);       /* extern */
? sub_0d9e0000(u32);                                /* extern */
extern ? __glOdysseyArraysInt_C3F_V3F;
extern ? __glOdysseyArraysInt_N3F_V3F;
extern ? __glOdysseyArraysInt_V3F;
extern ? __glOdysseyArraysInt_V3F_N3F;
extern ? __glOdysseyArraysSep_C3F_V3F;
extern ? __glOdysseyArraysSep_N3F_V3F;
extern ? __glOdysseyArraysSep_N3S_V3F;
extern ? __glOdysseyArraysSep_T2F_V3F;
extern ? __glOdysseyElementsInt_C3F_V3F;
extern ? __glOdysseyElementsInt_N3F_V3F;
extern ? __glOdysseyElementsInt_T2F_V3F;
extern ? __glOdysseyElementsInt_V3F;
extern ? __glOdysseyElementsInt_V3F_N3F;
extern ? __glOdysseyElementsSep_C3F_V3F;
extern ? __glOdysseyElementsSep_N3F_V3F;
extern ? __glOdysseyElementsSep_N3S_V3F;

void AnalyzeVertarrays(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;

    arg0->unk16A1C = 0;
    arg0->unk16A14 = 0;
    arg0->unk16A18 = 0;
    arg0->unk16A10 = NULL;
    arg0->unk16A0C = NULL;
    temp_a2 = arg0->unk1518 & arg0->unk151C;
    if (temp_a2 != 0x37) {
        if (temp_a2 != 0x37037) {
            if (temp_a2 != 0x737) {
                if (temp_a2 != 0x337) {
                    if (temp_a2 == 0x02700037) {
                        temp_a2_2 = arg0->unk1454;
                        if (temp_a2_2 != 0x14) {
                            goto block_6;
                        }
                        if (arg0->unk13EC == 0x14) {
                            temp_a4 = arg0->unk1448;
                            if (arg0->unk13E0 == (temp_a4 + 8)) {
                                arg0->unk16A14 = temp_a4;
                                arg0->unk16A10 = &__glOdysseyElementsInt_T2F_V3F;
                                arg0->unk16A0C = (? *) M2C_ERROR(/* Read from unset register $t9 */);
                                return;
                            }
                        }
block_6:
                        if ((temp_a2_2 == 8) && (arg0->unk13EC == 0xC)) {
                            arg0->unk16A10 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
                            arg0->unk16A0C = &__glOdysseyArraysSep_T2F_V3F;
                            arg0->unk16A14 = (s32) arg0->unk1448;
                            arg0->unk16A18 = (s32) arg0->unk13E0;
                        }
                    }
                } else if ((arg0->unk1404 == 6) && (arg0->unk13EC == 0xC)) {
                    arg0->unk16A10 = &__glOdysseyElementsSep_N3S_V3F;
                    arg0->unk16A0C = &__glOdysseyArraysSep_N3S_V3F;
                    arg0->unk16A14 = (s32) arg0->unk13FC;
                    arg0->unk16A18 = (s32) arg0->unk13E0;
                }
            } else {
                temp_a2_3 = arg0->unk1404;
                switch (temp_a2_3) {                /* switch 2; irregular */
                case 12:                            /* switch 2 */
                    if (arg0->unk13EC == 0xC) {
                        arg0->unk16A10 = &__glOdysseyElementsSep_N3F_V3F;
                        arg0->unk16A0C = &__glOdysseyArraysSep_N3F_V3F;
                        arg0->unk16A14 = (s32) arg0->unk13FC;
                        arg0->unk16A18 = (s32) arg0->unk13E0;
                        return;
                    }
                    break;
                case 24:                            /* switch 2 */
                    if (arg0->unk13EC == 0x18) {
                        temp_a4_2 = arg0->unk13FC;
                        temp_a2_4 = arg0->unk13E0;
                        if (temp_a2_4 != (temp_a4_2 + 0xC)) {
                            if (temp_a2_4 == (temp_a4_2 - 0xC)) {
                                arg0->unk16A14 = temp_a2_4;
                                arg0->unk16A10 = &__glOdysseyElementsInt_V3F_N3F;
                                arg0->unk16A0C = &__glOdysseyArraysInt_V3F_N3F;
                                return;
                            }
                        } else {
                            arg0->unk16A14 = temp_a4_2;
                            arg0->unk16A10 = &__glOdysseyElementsInt_N3F_V3F;
                            arg0->unk16A0C = &__glOdysseyArraysInt_N3F_V3F;
                            return;
                        }
                    } else if ((temp_a2_3 == 0xC) && (arg0->unk13EC == 0xC)) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        arg0->unk16A10 = &__glOdysseyElementsSep_N3F_V3F;
                        arg0->unk16A0C = &__glOdysseyArraysSep_N3F_V3F;
                        arg0->unk16A14 = (s32) arg0->unk13FC;
                        arg0->unk16A18 = (s32) arg0->unk13E0;
                        return;
                    }
                    break;
                }
            }
        } else {
            temp_a2_5 = arg0->unk1420;
            switch (temp_a2_5) {                    /* switch 1; irregular */
            case 12:                                /* switch 1 */
                if (arg0->unk13EC == 0xC) {
                    arg0->unk16A10 = &__glOdysseyElementsSep_C3F_V3F;
                    arg0->unk16A0C = &__glOdysseyArraysSep_C3F_V3F;
                    arg0->unk16A14 = (s32) arg0->unk1414;
                    arg0->unk16A18 = (s32) arg0->unk13E0;
                    return;
                }
                break;
            case 24:                                /* switch 1 */
                if (arg0->unk13EC == 0x18) {
                    temp_a4_3 = arg0->unk1414;
                    if (arg0->unk13E0 == (temp_a4_3 + 0xC)) {
                        arg0->unk16A14 = temp_a4_3;
                        arg0->unk16A10 = &__glOdysseyElementsInt_C3F_V3F;
                        arg0->unk16A0C = &__glOdysseyArraysInt_C3F_V3F;
                        return;
                    }
                    goto block_13;
                }
block_13:
                if ((temp_a2_5 == 0xC) && (arg0->unk13EC == 0xC)) {
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    arg0->unk16A10 = &__glOdysseyElementsSep_C3F_V3F;
                    arg0->unk16A0C = &__glOdysseyArraysSep_C3F_V3F;
                    arg0->unk16A14 = (s32) arg0->unk1414;
                    arg0->unk16A18 = (s32) arg0->unk13E0;
                    return;
                }
                break;
            }
        }
    } else {
        if (arg0->unk13EC != 0xC) {
            return;
        }
        arg0->unk16A10 = &__glOdysseyElementsInt_V3F;
        arg0->unk16A0C = &__glOdysseyArraysInt_V3F;
        arg0->unk16A14 = (s32) arg0->unk13E0;
    }
}

void __glOdyim_DrawArraysEXT(u32 arg0, s32 arg1, s32 arg2) {
    ? (*temp_s1)(s32);
    s32 temp_s2;
    s32 var_s0;
    void *temp_s3;

    temp_s3 = *(void **)0x1010;
    var_s0 = arg1;
    if (*(s32 *)0x1018 != 1) {
        if ((arg1 >= 0) && (arg2 >= 0)) {
            if (arg0 < 0xAU) {
                if (temp_s3->unk16988 != 0) {
                    goto block_5;
                }
                if (temp_s3->unk16A1C != 0) {
                    __glOdylc_Vertex4svBbox(temp_s3, 1);
                }
                if (temp_s3->unk16A0C != NULL) {
                    sub_0d9e0000(arg0);
                    if (arg2 > 0) {
                        temp_s3->unk16A0C(var_s0, arg2, temp_s3->unk16A14, temp_s3->unk16A18);
                    }
                    temp_s3->unk17F4->unk2C();
                } else {
block_5:
                    if ((temp_s3->unkE1C != 1) || (temp_s3->unk1524 != 0)) {
                        temp_s1 = temp_s3->unk17F4->unk318;
                        __glSetError(arg0);
                        temp_s2 = var_s0 + arg2;
                        if (var_s0 < temp_s2) {
                            do {
                                temp_s1(var_s0);
                                var_s0 += 1;
                            } while (temp_s2 != var_s0);
                        }
                        temp_s3->unk17F4->unk2C();
                    } else {
                        *(temp_s3->unk31AC + (temp_s3->unk1528 * 4))(arg0, var_s0, arg2);
                    }
                }
            } else {
                __glSetError(0x500U, 1);
            }
        } else {
            __glSetError(0x501U, 1);
        }
    } else {
        __glSetError(0x502U, 1);
    }
}

void __glOdyim_DrawElements(u32 arg0, s64 arg1, s32 arg2, s64 arg3) {
    s64 sp8;
    s64 sp0;
    ? (*temp_s1)(s32);
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_s2;
    s32 var_a2;
    s64 temp_s3;
    s64 var_a1;
    s64 var_s0;
    s64 var_s0_2;
    s64 var_s0_3;
    void *temp_s5;

    var_a1 = arg1;
    var_a2 = arg2;
    temp_s5 = *(void **)0x1010;
    temp_s2 = var_a2;
    temp_s3 = var_a1;
    if (*(s32 *)0x1018 != 1) {
        if (var_a1 >= 0) {
            if (arg0 < 0xAU) {
                var_a1 = 0x1403;
                if (var_a2 != 0x1401) {
                    var_a2 = 0x1405;
                    if (var_a2 != 0x1403) {
                        if (temp_s2 != 0x1405) {
                            goto block_6;
                        }
                        goto block_8;
                    }
                }
block_8:
                temp_a4 = temp_s5->unk16988;
                sp0 = arg3;
                if (temp_a4 == 0) {
                    temp_a1 = temp_s5->unk16A1C;
                    sp8 = temp_s5 + 0x10000;
                    if (temp_a1 != 0) {
                        __glOdylc_Vertex4svBbox(temp_s5, temp_a1, var_a2, temp_a4);
                    }
                    if ((sp8->unk6A10 == NULL) || (temp_s2 != 0x1405)) {
                        goto block_13;
                    }
                    temp_s5->unk17F4->unk1C(arg0);
                    if (temp_s3 > 0) {
                        sp8->unk6A10(temp_s3, sp0, sp8->unk6A14, sp8->unk6A18);
                    }
                    temp_s5->unk17F4->unk2C();
                } else {
block_13:
                    temp_s1 = temp_s5->unk17F4->unk318;
                    sub_0d9e0000(arg0);
                    if (temp_s2 != 0x1401) {
                        if (temp_s2 != 0x1403) {
                            if ((temp_s2 == 0x1405) && (temp_s3 > 0)) {
                                var_s0 = sp0;
                                do {
                                    temp_s1(*var_s0);
                                    var_s0 += 4;
                                } while (var_s0 != ((temp_s3 * 4) + sp0));
                            }
                        } else if (temp_s3 > 0) {
                            var_s0_2 = sp0;
                            do {
                                temp_s1((s32) *var_s0_2);
                                var_s0_2 += 2;
                            } while (var_s0_2 != ((temp_s3 * 2) + sp0));
                        }
                    } else if (temp_s3 > 0) {
                        var_s0_3 = sp0;
                        do {
                            temp_s1((s32) *var_s0_3);
                            var_s0_3 += 1;
                        } while (var_s0_3 != (temp_s3 + sp0));
                    }
                    *(? (**)())0x107C();
                }
            } else {
block_6:
                __glSetError(0x500U, var_a1, var_a2);
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501);
        }
    } else {
        __glSetError(0x502U);
    }
}

void __glOdyim_DrawRangeElements(u32 arg1, u32 arg2, s64 arg3, s64 arg4, s32 arg5) {
    if (arg2 < arg1) {
        __glSetError(0x501U, arg3);
        return;
    }
    __glOdyim_DrawElements((u32) arg3, arg4, arg5, arg3);
}

void __glOdyim_ColorPointerEXT(void) {
    (*(void **)0x1010)->unk16A1C = 1;
    __glim_ColorPointerEXT(0x116090);
}

void __glOdyim_ColorPointer(s64 arg3) {
    void *temp_a5;

    if (*(s32 *)0x1018 != 1) {
        temp_a5 = *(void **)0x1010;
        temp_a5->unk16A1C = 1;
        __glim_ColorPointerEXT(0, arg3, temp_a5, 1);
    } else {
        __glSetError(0x502U, arg3, 1);
    }
}

void __glOdyim_EdgeFlagPointerEXT(void) {
    (*(void **)0x1010)->unk16A1C = 1;
    __glim_EdgeFlagPointerEXT(0x115FD0);
}

void __glOdyim_EdgeFlagPointer(s64 arg1) {
    void *temp_a3;

    if (*(s32 *)0x1018 != 1) {
        temp_a3 = *(void **)0x1010;
        temp_a3->unk16A1C = 1;
        __glim_EdgeFlagPointerEXT(0, arg1, temp_a3, 1);
    } else {
        __glSetError(0x502U, arg1, 1);
    }
}

void __glOdyim_IndexPointerEXT(void) {
    (*(void **)0x1010)->unk16A1C = 1;
    __glim_IndexPointerEXT(0x115F10);
}

void __glOdyim_IndexPointer(s64 arg2) {
    void *temp_a4;

    if (*(s32 *)0x1018 != 1) {
        temp_a4 = *(void **)0x1010;
        temp_a4->unk16A1C = 1;
        __glim_IndexPointerEXT(0, arg2, temp_a4, 1);
    } else {
        __glSetError(0x502U, arg2, 1);
    }
}

void __glOdyim_NormalPointerEXT(void) {
    (*(void **)0x1010)->unk16A1C = 1;
    __glim_NormalPointerEXT(0x115E50);
}

void __glOdyim_NormalPointer(s64 arg2) {
    void *temp_a4;

    if (*(s32 *)0x1018 != 1) {
        temp_a4 = *(void **)0x1010;
        temp_a4->unk16A1C = 1;
        __glim_NormalPointerEXT(0, arg2, temp_a4, 1);
    } else {
        __glSetError(0x502U, arg2, 1);
    }
}

void __glOdyim_TexCoordPointerEXT(void) {
    (*(void **)0x1010)->unk16A1C = 1;
    __glim_TexCoordPointerEXT(0x115D90);
}

void __glOdyim_TexCoordPointer(s64 arg3) {
    void *temp_a5;

    if (*(s32 *)0x1018 != 1) {
        temp_a5 = *(void **)0x1010;
        temp_a5->unk16A1C = 1;
        __glim_TexCoordPointerEXT(0, arg3, temp_a5, 1);
    } else {
        __glSetError(0x502U, arg3, 1);
    }
}

void __glOdyim_VertexPointerEXT(void) {
    (*(void **)0x1010)->unk16A1C = 1;
    __glim_VertexPointerEXT(0x115CD0);
}

void __glOdyim_VertexPointer(s64 arg3) {
    void *temp_a5;

    if (*(s32 *)0x1018 != 1) {
        temp_a5 = *(void **)0x1010;
        temp_a5->unk16A1C = 1;
        __glim_VertexPointerEXT(0, arg3, temp_a5, 1);
    } else {
        __glSetError(0x502U, arg3, 1);
    }
}
