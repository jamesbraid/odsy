Error occurred while processing instruction: c.lt.d $f9, $f10

Error occurred while processing instruction: c.lt.d $f9, $f10

Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
? __glConvertStipple();                             /* extern */
? __glCopyColorTableScaleBias(void *, void *, void *, s64 *, s32, s32, s32, s32 *); /* extern */
? __glCopyConvolutionPixelModeState(void *, void *); /* extern */
s64 __glErrorCheckMaterial(s32, f32, f32);          /* extern */
? __glInvertTransposeMatrix(void *, void *);        /* extern */
? __glOdyim_BindTexture(s32, s32);                  /* extern */
? __glOdyim_Color4fv(f32 *);                        /* extern */
? __glOdyim_DepthRange(f64, ?);                     /* extern */
? __glOdyim_DetailTexFuncSGIS(s32, s32, s32);       /* extern */
? __glOdyim_FinishAsyncSGIX(s64, void *, s64, ?, s32, s32, u64, s64); /* extern */
? __glOdyim_TexEnvfv(?, ?, void *);                 /* extern */
? __glOdyim_TexEnviv(?, ?, void *, s64 *, s32, void *, void *, s32); /* extern */
? __glOdyim_TexParameterfv(s32, ?, s64);            /* extern */
? __glOdyim_TexParameteriv(s32, ?, s64);            /* extern */
? __glOdysseyFindWindowSize(s64, s32, void *, ?, s32, ?, s32, u8); /* extern */
f64 __glOdysseyNormalizedEyeToWindowZ(f32, ?);      /* extern */
? __glOdysseySetDrawbuf(void *, void *, ?, s64, void *, s64, s32, s32); /* extern */
? __glOdysseySetProgram(void *, s32, s32, s32, ?, s32, s32, ?); /* extern */
? __glReadjustZCounts(void *, s32);                 /* extern */
f32 __glSetError(s64, void *, void *, s64, s32, s32, s32, u64); /* extern */
? __glUpdateViewportTransform(void *);              /* extern */
? __glim_Hint(?, void *, ?, ?, ?);                  /* extern */
u8 __glim_IsEnabled(s32, s32, void *, s32, s32, s32, s32); /* extern */
? __glim_Materialiv(s32, s32, s64);                 /* extern */
? __text0(s32, s32, s32, s32 *, s32, s32, ?, void *); /* extern */
? memcpy(void *, void *, s32, s32, s64, s64, s64, s64); /* extern */
? sub_0d960000(void *, s32, u32, s64);              /* extern */
void __glOdyim_Materialfv(s32 arg0, s32 arg1, f32 *arg2); /* static */
void __glOdyim_PolygonOffsetEXT(void *fparg0, f32 fparg1); /* static */
extern s32 HQ2_READ_FIFO;
extern ? sub_0daf0000;

void ValidateColorMaterial(void *arg0, s32 arg2, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_s3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_at;
    s32 var_ra;
    s32 var_s2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v1;

    var_a2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a3 = 0x10000;
    temp_s3 = arg0->unk1697C;
    if (arg0->unk700 & 0x80) {
        temp_a2 = arg0->unk568;
        if (temp_a2 != 0x404) {
            var_a0 = 0x10;
            if (temp_a2 != 0x405) {
                var_a0 = ((temp_a2 ^ 0x408) == 0) ? 0x11 : 0;
            }
        } else {
            var_a0 = 1;
        }
        var_a2 = arg0->unk56C;
        var_a4 = 0x1202;
        if (var_a2 != 0x1600) {
            var_a3 = 4;
            if (var_a2 != 0x1202) {
                var_a5 = 0x1200;
                var_a6 = 0x1201;
                if (var_a2 != 0x1200) {
                    var_a3 = 2;
                    if (var_a2 != 0x1201) {
                        var_a7 = var_a2 ^ 0x1602;
                        var_a3 = (var_a7 == 0) ? 3 : 0;
                    }
                } else {
                    var_a3 = 1;
                }
            }
        } else {
            var_a3 = 8;
        }
        var_s2 = var_a3 * var_a0;
        if ((temp_s3 ^ var_s2) != 0) {
            goto block_10;
        }
    } else {
        var_s2 = 0;
        if (temp_s3 != 0) {
block_10:
            arg0->unk17F4->unk1F0(0xB00, sp, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
            temp_s1 = temp_s3 & ~var_s2;
            if (temp_s1 != 0) {
                var_t9 = temp_s1 & 2;
                if (temp_s1 & 1) {
                    __glOdyim_Materialfv(0x404, 0x1200, sp);
                    var_t9 = temp_s1 & 2;
                }
                var_ra = temp_s1 & 4;
                if (var_t9 != 0) {
                    __glOdyim_Materialfv(0x404, 0x1201, sp);
                    var_ra = temp_s1 & 4;
                }
                var_at = temp_s1 & 8;
                if (var_ra != 0) {
                    __glOdyim_Materialfv(0x404, 0x1202, sp);
                    var_at = temp_s1 & 8;
                }
                var_v0 = temp_s1 & 0x10;
                if (var_at != 0) {
                    __glOdyim_Materialfv(0x404, 0x1600, sp);
                    var_v0 = temp_s1 & 0x10;
                }
                var_v1 = temp_s1 & 0x20;
                if (var_v0 != 0) {
                    __glOdyim_Materialfv(0x405, 0x1200, sp);
                    var_v1 = temp_s1 & 0x20;
                }
                var_a0_2 = temp_s1 & 0x40;
                if (var_v1 != 0) {
                    __glOdyim_Materialfv(0x405, 0x1201, sp);
                    var_a0_2 = temp_s1 & 0x40;
                }
                var_a1 = temp_s1 & 0x80;
                if (var_a0_2 != 0) {
                    __glOdyim_Materialfv(0x405, 0x1202, sp);
                    var_a1 = temp_s1 & 0x80;
                }
                if (var_a1 != 0) {
                    __glOdyim_Materialfv(0x405, 0x1600, sp);
                }
            }
            arg0->unk1697C = var_s2;
            if (arg0->unkC94 != 0) {
                arg0->unkA228 = var_s2;
                HQ2_READ_FIFO = (var_s2 & 0x3FF) | ((var_s2 >> 0xA) << 0x17) | 0x35008000;
            }
            __glOdyim_Color4fv(sp);
        }
    }
}

u8 __glOdyim_IsEnabled(u32 arg0, s32 arg2, s32 arg5, s32 arg6, s32 arg7) {
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    u8 var_a0;
    void *temp_a3;

    var_a2 = arg2;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a4 = 1;
    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a1 = arg0 > 0x8401U;
        if (arg0 >= 0x8401U) {
            if (var_a1 != 0) {
                var_a2 = arg0 < 0x8410U;
                var_a5 = arg0 > 0x8410U;
                if (var_a2 == 0) {
                    var_a1 = 0x8411;
                    if (var_a5 != 0) {
                        var_a6 = arg0 < 0x8412U;
                        var_a7 = arg0 > 0x8412U;
                        if (var_a6 == 0) {
                            if ((var_a7 != 0) && (arg0 != 0x8413)) {
                                goto block_18;
                            }
                            /* Duplicate return node #26. Try simplifying control flow for better match */
                            return (temp_a3->unk1647C & (1 << (arg0 + 0xFFFF7BF4))) != 0;
                        }
                        if (arg0 == 0x8411) {
                            goto block_25;
                        }
                        goto block_18;
                    }
                    goto block_25;
                }
                var_a1 = arg0 < 0x840EU;
                var_a5 = 0x840F;
                if (var_a1 == 0) {
                    var_a2 = arg0 > 0x840EU;
                    if ((var_a2 != 0) && (arg0 != 0x840F)) {
                        goto block_18;
                    }
                    /* Duplicate return node #26. Try simplifying control flow for better match */
                    return (temp_a3->unk1647C & (1 << (arg0 + 0xFFFF7BF4))) != 0;
                }
                var_a1 = arg0 < 0x840DU;
                var_a2 = arg0 > 0x840DU;
                if (var_a1 == 0) {
                    if (var_a2 != 0) {
                        goto block_18;
                    }
                    /* Duplicate return node #26. Try simplifying control flow for better match */
                    return (temp_a3->unk1647C & (1 << (arg0 + 0xFFFF7BF4))) != 0;
                }
                var_a2 = 0x840C;
                if (arg0 == 0x840C) {
block_25:
                    return (temp_a3->unk1647C & (1 << (arg0 + 0xFFFF7BF4))) != 0;
                }
                goto block_18;
            }
            return (temp_a3->unk704 & 0x2000) != 0;
        }
        if (arg0 >= 0x835CU) {
            if (arg0 > 0x835CU) {
                if (arg0 >= 0x83EEU) {
                    if (arg0 > 0x83EEU) {
                        if (arg0 == 0x8400) {
                            var_a0 = (temp_a3->unk704 & 0x1000) != 0;
                        } else {
                            goto block_18;
                        }
                    } else {
                        var_a0 = temp_a3->unk19DB4;
                    }
                } else {
                    var_a4 = arg0 < 0x835EU;
                    var_a5 = arg0 > 0x835EU;
                    if (var_a4 == 0) {
                        if (var_a5 == 0) {
                            var_a0 = (temp_a3->unk718 & 4) != 0;
                        } else {
                            goto block_18;
                        }
                    } else {
                        var_a4 = 0x835D;
                        if (arg0 == 0x835D) {
                            var_a0 = (temp_a3->unk718 & 2) != 0;
                        } else {
                            goto block_18;
                        }
                    }
                }
                /* Duplicate return node #19. Try simplifying control flow for better match */
                return var_a0;
            }
            return (temp_a3->unk718 & 1) != 0;
        }
        var_a6 = arg0 < 0x832CU;
        var_a7 = arg0 > 0x832CU;
        if (var_a6 == 0) {
            if (var_a7 != 0) {
                if (arg0 == 0x8353) {
                    var_a0 = (temp_a3->unk704 & 0x4000) != 0;
                } else {
                    goto block_18;
                }
            } else {
                var_a0 = (temp_a3->unk718 & 8) != 0;
            }
        } else {
            var_a1 = 0x10000;
            if (arg0 >= 0x8198U) {
                var_a1 = arg0 > 0x8198U;
                if (var_a1 == 0) {
                    var_a0 = (temp_a3->unk704 & 0x10) != 0;
                } else {
                    goto block_18;
                }
            } else if (arg0 == 0x803A) {
                var_a0 = (temp_a3->unk704 & 0x10000) != 0;
            } else {
block_18:
                var_a0 = __glim_IsEnabled(var_a1, var_a2, temp_a3, var_a4, var_a5, var_a6, var_a7);
            }
        }
        /* Duplicate return node #19. Try simplifying control flow for better match */
        return var_a0;
    }
    __glSetError(0x502, temp_a3, (void *)1);
    var_a0 = 0;
    return var_a0;
}

void __glOdyim_Hint(s32 arg0, s32 arg1) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg1 != 0x1100) && (arg1 != 0x1101) && (arg1 != 0x1102)) {
            __glSetError(0x500, (void *)0x1101, temp_a3, 1, 0x1102, 0x83EF);
        } else if (arg0 != 0x83EF) {
            __glim_Hint(0x1101, temp_a3, 1, 0x10000, 0x83EF);
        } else if (temp_a3->unk19DB8 != arg1) {
            temp_a3->unk19DB8 = arg1;
            if (temp_a3->unk19DB4 != 0) {
                temp_a3->unk19DC0 = 1;
                temp_a3->unk16964 = (s32) (temp_a3->unk16964 | 0x400);
                *(void *)0x1018 = 2;
            }
        }
    } else {
        __glSetError(0x502, (void *)0x1101, temp_a3, 1, 0x83EF);
    }
}

void __glOdyim_Enable(u64 arg0, s32 arg1, s32 arg4, s32 arg6, u64 arg7) {
    s64 sp0;
    s32 temp_a2_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_t8;
    s64 var_a3;
    u64 var_a7;
    u8 temp_a7;
    void *temp_a2;

    var_a1 = arg1;
    var_a4 = arg4;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a5 = 1;
    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a3 = arg0 < 0x3003U;
        if (var_a3 == 0) {
            if (arg0 >= 0x3004U) {
                var_a1 = arg0 > 0x8079U;
                if (arg0 >= 0x8079U) {
                    if (var_a1 != 0) {
                        var_a4 = arg0 < 0x83EEU;
                        var_a6 = arg0 > 0x83EEU;
                        if (var_a4 == 0) {
                            if (var_a6 == 0) {
                                temp_a7 = temp_a2->unk19DB4;
                                if (temp_a7 == 0) {
                                    sp0 = (s64) temp_a2;
                                    temp_a2->unk19DC0 = 1;
                                    temp_a2->unk19DB4 = 1U;
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x400);
                                    *(void *)0x1018 = 2;
                                }
                                sp0 = (s64) temp_a2;
                                __glOdysseyFindWindowSize(sp0, var_a1, temp_a2, 0x840F, var_a4, 1, var_a6, temp_a7);
                            } else {
                                var_a1 = arg0 < 0x840FU;
                                var_a4 = arg0 > 0x840FU;
                                if (var_a1 == 0) {
                                    if (var_a4 != 0) {
                                        var_a6 = arg0 < 0x8412U;
                                        var_a7 = arg0 > 0x8412U;
                                        if (var_a6 == 0) {
                                            if (var_a7 != 0) {
                                                var_a3 = 0x8568;
                                                if (arg0 >= 0x8568U) {
                                                    if (arg0 <= 0x8568U) {
                                                        temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x20000);
                                                    } else {
                                                        goto block_42;
                                                    }
                                                } else {
                                                    if (arg0 != 0x8413) {
                                                        goto block_42;
                                                    }
                                                    /* Duplicate return node #148. Try simplifying control flow for better match */
                                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                                    temp_a2->unk1647C = (s32) (temp_a2->unk1647C | (1 << (arg0 + 0xFFFF7BF4)));
                                                    *(void *)0x1018 = 2;
                                                }
                                            } else {
                                                /* Duplicate return node #148. Try simplifying control flow for better match */
                                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                                temp_a2->unk1647C = (s32) (temp_a2->unk1647C | (1 << (arg0 + 0xFFFF7BF4)));
                                                *(void *)0x1018 = 2;
                                            }
                                        } else {
                                            var_a3 = 0x8411;
                                            if (arg0 >= 0x8411U) {
                                                if (arg0 <= 0x8411U) {
                                                    goto block_147;
                                                }
                                                goto block_42;
                                            }
                                            var_a7 = 0x8410;
                                            if (arg0 != 0x8410) {
                                                goto block_42;
                                            }
                                            /* Duplicate return node #148. Try simplifying control flow for better match */
                                            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                            temp_a2->unk1647C = (s32) (temp_a2->unk1647C | (1 << (arg0 + 0xFFFF7BF4)));
                                            *(void *)0x1018 = 2;
                                        }
                                    } else {
                                        goto block_147;
                                    }
                                } else {
                                    var_a4 = arg0 < 0x840CU;
                                    var_a6 = arg0 > 0x840CU;
                                    if (var_a4 == 0) {
                                        if (var_a6 != 0) {
                                            var_a3 = 0x840E;
                                            var_a7 = arg0 < 0x840EU;
                                            if (var_a7 == 0) {
                                                if (arg0 > 0x840EU) {
                                                    goto block_42;
                                                }
                                                /* Duplicate return node #148. Try simplifying control flow for better match */
                                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                                temp_a2->unk1647C = (s32) (temp_a2->unk1647C | (1 << (arg0 + 0xFFFF7BF4)));
                                                *(void *)0x1018 = 2;
                                                return;
                                            }
                                            if (arg0 == 0x840D) {
block_147:
                                                /* Duplicate return node #148. Try simplifying control flow for better match */
                                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                                temp_a2->unk1647C = (s32) (temp_a2->unk1647C | (1 << (arg0 + 0xFFFF7BF4)));
                                                *(void *)0x1018 = 2;
                                                return;
                                            }
                                            goto block_42;
                                        }
                                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                        temp_a2->unk1647C = (s32) (temp_a2->unk1647C | (1 << (arg0 + 0xFFFF7BF4)));
                                        *(void *)0x1018 = 2;
                                        return;
                                    }
                                    var_a3 = 0x8401;
                                    if (arg0 >= 0x8401U) {
                                        if (arg0 <= 0x8401U) {
                                            temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x2000);
                                            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x80);
                                            *(void *)0x1018 = 2;
                                        } else {
                                            goto block_42;
                                        }
                                    } else if (arg0 == 0x8400) {
                                        temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x1000);
                                        temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 4);
                                        *(void *)0x1018 = 2;
                                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x1C0);
                                        *(void *)0x1018 = 2;
                                    } else {
                                        goto block_42;
                                    }
                                }
                            }
                        } else if (arg0 >= 0x8198U) {
                            if (arg0 > 0x8198U) {
                                if (arg0 >= 0x835CU) {
                                    var_a3 = 0x835E;
                                    if (arg0 > 0x835CU) {
                                        var_a1 = arg0 < 0x835EU;
                                        var_a4 = arg0 > 0x835EU;
                                        if (var_a1 == 0) {
                                            if (var_a4 == 0) {
                                                temp_a2->unk718 = (s32) (temp_a2->unk718 | 4);
                                            } else {
                                                goto block_42;
                                            }
                                        } else {
                                            var_a1 = 0x835D;
                                            if (arg0 == 0x835D) {
                                                temp_a2->unk718 = (s32) (temp_a2->unk718 | 2);
                                            } else {
                                                goto block_42;
                                            }
                                        }
                                    } else {
                                        temp_a2->unk718 = (s32) (temp_a2->unk718 | 1);
                                    }
                                } else {
                                    var_a3 = 0x8353;
                                    if (arg0 >= 0x8353U) {
                                        if (arg0 <= 0x8353U) {
                                            temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x4000);
                                        } else {
                                            goto block_42;
                                        }
                                    } else if (arg0 == 0x832C) {
                                        temp_a2->unk718 = (s32) (temp_a2->unk718 | 8);
                                    } else {
                                        goto block_42;
                                    }
                                }
                            } else {
                                temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x10);
                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x1000);
                                *(void *)0x1018 = 2;
                            }
                        } else if (arg0 >= 0x80D0U) {
                            var_a3 = 0x80D2;
                            if (arg0 > 0x80D0U) {
                                if (arg0 >= 0x80D2U) {
                                    if (arg0 <= 0x80D2U) {
                                        temp_a2->unk704 = (s32) (temp_a2->unk704 | 4);
                                    } else {
                                        goto block_42;
                                    }
                                } else if (arg0 == 0x80D1) {
                                    temp_a2->unk704 = (s32) (temp_a2->unk704 | 2);
                                } else {
                                    goto block_42;
                                }
                            } else {
                                temp_a2->unk704 = (s32) (temp_a2->unk704 | 1);
                            }
                        } else {
                            var_a3 = 0x80BC;
                            if (arg0 >= 0x80BCU) {
                                var_a1 = arg0 > 0x80BCU;
                                if (var_a1 == 0) {
                                    temp_a2->unk7CD4 = (s32) (temp_a2->unk7CD4 | 1);
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x80000000);
                                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 0x200);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                goto block_42;
                            }
                            if (arg0 == 0x8094) {
                                temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x20);
                            } else {
                                goto block_42;
                            }
                        }
                    } else {
                        temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 0x10);
                        temp_a2->unk151C = (s32) (temp_a2->unk151C | 0x08000000);
                    }
                } else {
                    var_a1 = arg0 > 0x8011U;
                    if (arg0 >= 0x8011U) {
                        if (var_a1 != 0) {
                            var_a4 = arg0 < 0x806FU;
                            var_a5 = arg0 > 0x806FU;
                            if (var_a4 == 0) {
                                if (var_a5 != 0) {
                                    var_a6 = arg0 < 0x8076U;
                                    var_a7 = arg0 > 0x8076U;
                                    if (var_a6 == 0) {
                                        var_a3 = 0x8078;
                                        if (var_a7 != 0) {
                                            var_a4 = 0x8077;
                                            if (arg0 >= 0x8078U) {
                                                if (arg0 <= 0x8078U) {
                                                    temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 4);
                                                    temp_a2->unk151C = (s32) (temp_a2->unk151C | 0x07F00000);
                                                } else {
                                                    goto block_42;
                                                }
                                            } else if (arg0 == 0x8077) {
                                                temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 8);
                                                temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xF0000000);
                                            } else {
                                                goto block_42;
                                            }
                                        } else {
                                            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 2);
                                            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xFF000);
                                        }
                                    } else {
                                        var_a3 = 0x8075;
                                        if (arg0 >= 0x8075U) {
                                            if (arg0 <= 0x8075U) {
                                                temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 1);
                                                temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xF00);
                                                return;
                                            }
                                            goto block_42;
                                        }
                                        if (arg0 == 0x8074) {
                                            temp_a2->unk1528 = (s32) (temp_a2->unk1528 | 0x20);
                                            temp_a2->unk151C = (s32) (temp_a2->unk151C | 0xFF);
                                        } else {
                                            goto block_42;
                                        }
                                    }
                                } else {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x40000000);
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x790);
                                    *(void *)0x1018 = 2;
                                }
                            } else {
                                var_a4 = arg0 > 0x802EU;
                                if (arg0 >= 0x802EU) {
                                    var_a3 = 0x803A;
                                    if (var_a4 != 0) {
                                        var_a5 = arg0 < 0x803AU;
                                        var_a1 = 0x8037;
                                        if (var_a5 == 0) {
                                            var_a6 = arg0 > 0x803AU;
                                            if (var_a6 == 0) {
                                                temp_a2->unk704 = (s32) (0x10000 | temp_a2->unk704);
                                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 4);
                                                *(void *)0x1018 = 2;
                                                return;
                                            }
                                            goto block_42;
                                        }
                                        if (arg0 == 0x8037) {
                                            temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x01000000);
                                            temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x80);
                                            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                            *(void *)0x1018 = 2;
                                        } else {
                                            goto block_42;
                                        }
                                    } else {
                                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x20000000);
                                    }
                                } else {
                                    var_a3 = 0x8024;
                                    var_a1 = 0x8012;
                                    if (arg0 >= 0x8024U) {
                                        if (arg0 <= 0x8024U) {
                                            temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x10000000);
                                            return;
                                        }
                                        goto block_42;
                                    }
                                    if (arg0 == 0x8012) {
                                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x08000000);
                                        *(void *)0x1018 = 2;
                                        temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 0x10);
                                    } else {
                                        goto block_42;
                                    }
                                }
                            }
                        } else {
                            temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x04000000);
                            *(void *)0x1018 = 2;
                            temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 0x10);
                        }
                    } else {
                        var_a3 = arg0 < 0x4003U;
                        if (var_a3 == 0) {
                            var_a3 = arg0 < 0x4006U;
                            if (arg0 >= 0x4004U) {
                                var_a6 = arg0 < 0x4005U;
                                if (var_a3 == 0) {
                                    var_a3 = 0x8010;
                                    if (arg0 >= 0x4007U) {
                                        if (arg0 >= 0x8010U) {
                                            var_a1 = arg0 > 0x8010U;
                                            if (var_a1 == 0) {
                                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x02000000);
                                                *(void *)0x1018 = 2;
                                                temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 0x10);
                                                return;
                                            }
                                            goto block_42;
                                        }
                                        if (arg0 != 0x4007) {
                                            goto block_42;
                                        }
                                        /* Duplicate return node #89. Try simplifying control flow for better match */
                                        temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                        *(void *)0x1018 = 2;
                                        return;
                                    }
                                    /* Duplicate return node #89. Try simplifying control flow for better match */
                                    temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                var_a7 = 0x4004;
                                if (var_a6 == 0) {
                                    if (var_a3 != 0) {
                                        /* Duplicate return node #89. Try simplifying control flow for better match */
                                        temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                        *(void *)0x1018 = 2;
                                        return;
                                    }
                                    goto block_42;
                                }
                                if (arg0 != 0x4004) {
                                    goto block_42;
                                }
                                /* Duplicate return node #89. Try simplifying control flow for better match */
                                temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            /* Duplicate return node #89. Try simplifying control flow for better match */
                            temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        if (arg0 >= 0x4000U) {
                            var_a1 = arg0 < 0x4001U;
                            var_a4 = arg0 < 0x4002U;
                            if (var_a1 == 0) {
                                if (var_a4 == 0) {
                                    if (var_a3 == 0) {
                                        goto block_42;
                                    }
                                    /* Duplicate return node #89. Try simplifying control flow for better match */
                                    temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                if (arg0 == 0x4001) {
                                    /* Duplicate return node #89. Try simplifying control flow for better match */
                                    temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                goto block_42;
                            }
                            temp_a2->unk708 = (s32) (temp_a2->unk708 | (1 << (arg0 - 0x4000)));
                            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x140);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        var_a7 = 0x3004;
                        if (arg0 >= 0x3005U) {
                            if (arg0 < 0x3006U) {
                                /* Duplicate return node #40. Try simplifying control flow for better match */
                                temp_a2->unk70C = (s32) (temp_a2->unk70C | (1 << (arg0 - 0x3000)));
                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x510);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_42;
                        }
                        if (arg0 != 0x3004) {
                            goto block_42;
                        }
                        /* Duplicate return node #40. Try simplifying control flow for better match */
                        temp_a2->unk70C = (s32) (temp_a2->unk70C | (1 << (arg0 - 0x3000)));
                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x510);
                        *(void *)0x1018 = 2;
                    }
                }
            } else {
                /* Duplicate return node #40. Try simplifying control flow for better match */
                temp_a2->unk70C = (s32) (temp_a2->unk70C | (1 << (arg0 - 0x3000)));
                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x510);
                *(void *)0x1018 = 2;
            }
        } else {
            var_a4 = arg0 < 0xD91U;
            if (var_a4 == 0) {
                var_a1 = arg0 < 0xD92U;
                var_t8 = arg0 - 0xD90;
                if (var_a1 == 0) {
                    var_a4 = arg0 < 0xDB4U;
                    if (var_a4 == 0) {
                        var_a6 = arg0 - 0xDB0;
                        if (arg0 >= 0xDB5U) {
                            var_a4 = arg0 < 0xDE1U;
                            var_a6 = arg0 < 0xDE2U;
                            if (var_a4 == 0) {
                                var_a7 = arg0 < 0x3000U;
                                if (var_a6 == 0) {
                                    if (var_a7 == 0) {
                                        if (arg0 >= 0x3001U) {
                                            if (arg0 >= 0x3002U) {
                                                if (var_a3 == 0) {
                                                    goto block_42;
                                                }
                                                /* Duplicate return node #40. Try simplifying control flow for better match */
                                                temp_a2->unk70C = (s32) (temp_a2->unk70C | (1 << (arg0 - 0x3000)));
                                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x510);
                                                *(void *)0x1018 = 2;
                                                return;
                                            }
                                            if (arg0 == 0x3001) {
                                                /* Duplicate return node #40. Try simplifying control flow for better match */
                                                temp_a2->unk70C = (s32) (temp_a2->unk70C | (1 << (arg0 - 0x3000)));
                                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x510);
                                                *(void *)0x1018 = 2;
                                                return;
                                            }
                                            goto block_42;
                                        }
                                        temp_a2->unk70C = (s32) (temp_a2->unk70C | (1 << (arg0 - 0x3000)));
                                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x510);
                                        *(void *)0x1018 = 2;
                                        return;
                                    }
                                    if (arg0 >= 0x2A02U) {
                                        var_a1 = arg0 < 0x2A03U;
                                        if (var_a1 != 0) {
                                            temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x40);
                                            temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x400);
                                            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                            *(void *)0x1018 = 2;
                                            return;
                                        }
                                        goto block_42;
                                    }
                                    if (arg0 == 0x2A01) {
                                        temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x200);
                                        temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x20);
                                        temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                        *(void *)0x1018 = 2;
                                    } else {
                                        goto block_42;
                                    }
                                } else {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x20000);
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x790);
                                    *(void *)0x1018 = 2;
                                }
                            } else {
                                var_a3 = arg0 < 0xDB7U;
                                if (var_a3 == 0) {
                                    var_a6 = arg0 - 0xDB0;
                                    if (arg0 >= 0xDB8U) {
                                        if (arg0 >= 0xDE0U) {
                                            if (var_a4 != 0) {
                                                temp_a2->unk700 = (s32) (0x10000 | temp_a2->unk700);
                                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x790);
                                                *(void *)0x1018 = 2;
                                                return;
                                            }
                                            goto block_42;
                                        }
                                        var_a6 = arg0 - 0xDB0;
                                        if (arg0 != 0xDB8) {
                                            goto block_42;
                                        }
                                        /* Duplicate return node #126. Try simplifying control flow for better match */
                                        temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                                        return;
                                    }
                                    /* Duplicate return node #126. Try simplifying control flow for better match */
                                    temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                                    return;
                                }
                                var_a4 = arg0 < 0xDB6U;
                                if (var_a4 == 0) {
                                    if (var_a3 != 0) {
                                        var_a6 = arg0 - 0xDB0;
                                        /* Duplicate return node #126. Try simplifying control flow for better match */
                                        temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                                        return;
                                    }
                                    goto block_42;
                                }
                                var_a6 = arg0 - 0xDB0;
                                if (arg0 != 0xDB5) {
                                    goto block_42;
                                }
                                /* Duplicate return node #126. Try simplifying control flow for better match */
                                temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                            }
                        } else {
                            /* Duplicate return node #126. Try simplifying control flow for better match */
                            temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                        }
                    } else {
                        var_a3 = arg0 < 0xD97U;
                        var_a7 = arg0 < 0xD98U;
                        if (var_a3 == 0) {
                            var_t8 = arg0 - 0xD90;
                            if (var_a7 == 0) {
                                var_a3 = arg0 < 0xDB1U;
                                if (var_a3 == 0) {
                                    var_a6 = arg0 - 0xDB0;
                                    if (arg0 >= 0xDB2U) {
                                        var_a1 = 0xDB2;
                                        if (arg0 >= 0xDB3U) {
                                            var_a6 = arg0 - 0xDB0;
                                            if (var_a4 == 0) {
                                                goto block_42;
                                            }
                                            /* Duplicate return node #126. Try simplifying control flow for better match */
                                            temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                                            return;
                                        }
                                        var_a6 = arg0 - 0xDB0;
                                        if (arg0 != 0xDB2) {
                                            goto block_42;
                                        }
                                        /* Duplicate return node #126. Try simplifying control flow for better match */
                                        temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                                        return;
                                    }
                                    /* Duplicate return node #126. Try simplifying control flow for better match */
                                    temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                                    return;
                                }
                                if (arg0 >= 0xDB0U) {
                                    var_a6 = arg0 - 0xDB0;
                                    if (var_a3 == 0) {
                                        goto block_42;
                                    }
                                    temp_a2->unk714 = (s32) (temp_a2->unk714 | ((1 << var_a6) & 0xFFFF));
                                    return;
                                }
                                var_t8 = arg0 - 0xD90;
                                if (arg0 != 0xD98) {
                                    goto block_42;
                                }
                                /* Duplicate return node #69. Try simplifying control flow for better match */
                                temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                                return;
                            }
                            /* Duplicate return node #69. Try simplifying control flow for better match */
                            temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                            return;
                        }
                        var_a4 = arg0 < 0xD94U;
                        if (var_a4 == 0) {
                            var_t8 = arg0 - 0xD90;
                            if (arg0 >= 0xD95U) {
                                if (arg0 >= 0xD96U) {
                                    var_t8 = arg0 - 0xD90;
                                    if (var_a3 == 0) {
                                        goto block_42;
                                    }
                                    /* Duplicate return node #69. Try simplifying control flow for better match */
                                    temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                                    return;
                                }
                                var_t8 = arg0 - 0xD90;
                                if (arg0 != 0xD95) {
                                    goto block_42;
                                }
                                /* Duplicate return node #69. Try simplifying control flow for better match */
                                temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                                return;
                            }
                            /* Duplicate return node #69. Try simplifying control flow for better match */
                            temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                            return;
                        }
                        if (arg0 >= 0xD93U) {
                            if (var_a4 != 0) {
                                var_t8 = arg0 - 0xD90;
                                /* Duplicate return node #69. Try simplifying control flow for better match */
                                temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                                return;
                            }
                            goto block_42;
                        }
                        var_t8 = arg0 - 0xD90;
                        if (arg0 != 0xD92) {
                            goto block_42;
                        }
                        /* Duplicate return node #69. Try simplifying control flow for better match */
                        temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                    }
                } else {
                    /* Duplicate return node #69. Try simplifying control flow for better match */
                    temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                }
            } else if (arg0 >= 0xBC0U) {
                if (arg0 >= 0xBC1U) {
                    if (arg0 >= 0xC60U) {
                        var_a3 = arg0 < 0xC63U;
                        if (arg0 >= 0xC61U) {
                            if (var_a3 == 0) {
                                if (arg0 >= 0xC64U) {
                                    var_a3 = 0xD80;
                                    if (arg0 >= 0xD90U) {
                                        var_t8 = arg0 - 0xD90;
                                        if (var_a4 == 0) {
                                            goto block_42;
                                        }
                                        temp_a2->unk710 = (s32) (temp_a2->unk710 | ((1 << var_t8) & 0xFFFF));
                                        return;
                                    }
                                    if (arg0 == 0xD80) {
                                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x800000);
                                    } else {
                                        goto block_42;
                                    }
                                } else {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x200000);
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x120);
                                    *(void *)0x1018 = 2;
                                }
                            } else {
                                if (arg0 >= 0xC62U) {
                                    if (var_a3 != 0) {
                                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x100000);
                                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x120);
                                        *(void *)0x1018 = 2;
                                        return;
                                    }
                                    goto block_42;
                                }
                                if (arg0 == 0xC61) {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x80000);
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x120);
                                    *(void *)0x1018 = 2;
                                } else {
                                    goto block_42;
                                }
                            }
                        } else {
                            temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x40000);
                            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x120);
                            *(void *)0x1018 = 2;
                        }
                    } else {
                        var_a3 = arg0 < 0xBE2U;
                        if (arg0 >= 0xBF1U) {
                            if (arg0 >= 0xBF2U) {
                                if (arg0 >= 0xC11U) {
                                    var_a1 = arg0 < 0xC12U;
                                    sp0 = (s64) temp_a2;
                                    if (var_a1 != 0) {
                                        temp_a2_2 = sp0->unk700 | 0x4000;
                                        sp0->unk700 = temp_a2_2;
                                        __glSetError(sp0, (void *) var_a1, (void *) temp_a2_2, sp0, var_a4, 1);
                                        sp0->unk2EBC(sp0);
                                    } else {
                                        goto block_42;
                                    }
                                } else if (arg0 == 0xBF2) {
                                    temp_a2->unk704 = (s32) (temp_a2->unk704 | 0x800);
                                    temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x100000);
                                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                    *(void *)0x1018 = 2;
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                                    *(void *)0x1018 = 2;
                                } else {
                                    goto block_42;
                                }
                            } else {
                                temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x80000);
                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 4);
                                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                                *(void *)0x1018 = 2;
                            }
                        } else {
                            if (var_a3 == 0) {
                                var_a4 = arg0 < 0xBE3U;
                                if (var_a4 != 0) {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 2);
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                goto block_42;
                            }
                            if (arg0 == 0xBD0) {
                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 8);
                                temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x40000);
                                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_42;
                        }
                    }
                } else {
                    temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x4000);
                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 1);
                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                    *(void *)0x1018 = 2;
                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                    *(void *)0x1018 = 2;
                }
            } else {
                var_a5 = arg0 < 0xB50U;
                var_a6 = arg0 < 0xB41U;
                if (var_a5 == 0) {
                    var_a6 = arg0 < 0xB51U;
                    var_a7 = arg0 < 0xB71U;
                    if (var_a6 == 0) {
                        if (var_a7 == 0) {
                            if (arg0 >= 0xB72U) {
                                var_a5 = 0xB90;
                                if (arg0 >= 0xBA1U) {
                                    if (arg0 < 0xBA2U) {
                                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x400000);
                                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x104);
                                        *(void *)0x1018 = 2;
                                        return;
                                    }
                                    goto block_42;
                                }
                                if (arg0 == 0xB90) {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x8000);
                                    temp_a2->unk7BFC = (s32) ((((temp_a2->unkC9A != 0) << 0xF) & 0x8000) | (temp_a2->unk7BFC & ~0x8000));
                                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                    *(void *)0x1018 = 2;
                                    temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                                    *(void *)0x1018 = 2;
                                } else {
                                    goto block_42;
                                }
                            } else {
                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x10);
                                temp_a2->unk7BFC = (s32) ((0x10000 & ((temp_a2->unkC99 != 0) << 0x10)) | (temp_a2->unk7BFC & ~0x10000));
                                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                                *(void *)0x1018 = 2;
                            }
                        } else {
                            var_a4 = 0xB57;
                            if (arg0 >= 0xB60U) {
                                if (arg0 < 0xB61U) {
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x20);
                                    temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x400000);
                                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                goto block_42;
                            }
                            sp0 = (s64) temp_a2;
                            if (arg0 != 0xB57) {
                                goto block_42;
                            }
                            sp0->unk700 = (s32) (sp0->unk700 | 0x80);
                            __glOdyim_FinishAsyncSGIX(sp0, temp_a2, var_a3, 0xB57, var_a5, var_a6, var_a7);
                        }
                    } else {
                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x40);
                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x1C0);
                        *(void *)0x1018 = 2;
                    }
                } else {
                    var_a7 = arg0 < 0xB20U;
                    if (var_a6 == 0) {
                        var_a7 = arg0 < 0xB42U;
                        if (var_a7 == 0) {
                            if (arg0 >= 0xB44U) {
                                if (arg0 < 0xB45U) {
                                    temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x100);
                                    temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x1000);
                                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                    *(void *)0x1018 = 2;
                                    temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 4);
                                    return;
                                }
                                goto block_42;
                            }
                            if (arg0 == 0xB42) {
                                temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x10);
                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x2000);
                                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_42;
                        }
                        temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 4);
                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x800);
                        temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                        *(void *)0x1018 = 2;
                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    var_a1 = 0xB10;
                    if (var_a7 == 0) {
                        if (arg0 >= 0xB21U) {
                            if (arg0 == 0xB24) {
                                temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 8);
                                temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x100);
                                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_42;
                        }
                        temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x200);
                        temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 2);
                        temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                        *(void *)0x1018 = 2;
                        temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                        *(void *)0x1018 = 2;
                    } else {
                        if (arg0 == 0xB10) {
                            temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 1);
                            temp_a2->unk700 = (s32) (temp_a2->unk700 | 0x400);
                            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                            *(void *)0x1018 = 2;
                            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                            *(void *)0x1018 = 2;
                            return;
                        }
block_42:
                        __glSetError(0x500, (void *) var_a1, temp_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, temp_a2, (void *)1);
    }
}

/*
Decompilation failure in function PushAttributes:

Unable to determine jump table for jr instruction at ody_attrib.s line 3716.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_PushAttrib(void) {
    s64 sp18;
    u64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    u32 temp_a2;
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp0 = temp_a1 + 0x10000;
        temp_a2 = temp_a1->unk168D4;
        temp_a4 = temp_a1->unkEC0 * 4;
        sp8 = (s64) temp_a1;
        sp10 = (u64) temp_a2;
        temp_a2_2 = temp_a2 < (u32) (temp_a1->unk168D0 + temp_a4);
        temp_a3 = temp_a1->unk31BC;
        sp18 = (s64) temp_a3;
        if (temp_a2_2 != 0) {
            __glOdyim_Enable(sp10, (void *) sp18, temp_a3, temp_a4);
            sp0->unk68D4 = (s32) (sp10 + 4);
            sp8->unk31BC = (s32) (sp18 + 4);
            return;
        }
        __glSetError(0x503, temp_a1, (void *) temp_a2_2, (s64) temp_a3, temp_a4);
    } else {
        __glSetError(0x502, temp_a1, (void *)0x10000);
    }
}

s32 __glOdyssey_CopyContext(s32 arg0, s64 arg1, u64 arg2) {
    if (*(s32 *)0x1010 != arg1) {
        return 1;
    }
    __glOdyim_Enable(arg2, arg0 + 0x168C8, arg0 + 0x168CC, arg0, arg2);
    return 1;
}

s32 TargetIndexToTargetEnum(s32 arg0) {
    switch (arg0) {                                 /* irregular */
    default:
        return ((arg0 ^ 2) == 0) ? 0x806F : 0;
    case 0:
        return 0xDE0;
    case 1:
        return 0xDE1;
    case 3:
        return 0x8095;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x148, 0x14c, 0x150, 0x154], gap at: 0x48. */
void PopAttributes(void *arg0, void *arg1) {
    f64 sp10;
    ? var_a6;
    s32 *temp_a6_2;
    s32 *temp_a6_7;
    s32 *temp_a6_9;
    s32 *temp_a7_4;
    s32 *temp_t3;
    s32 *temp_t9;
    s32 *temp_t9_2;
    s32 *temp_v1_6;
    s32 *var_a3;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_7;
    s32 temp_a3;
    s32 temp_a3_7;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a4_8;
    s32 temp_a5;
    s32 temp_a5_10;
    s32 temp_a5_12;
    s32 temp_a5_6;
    s32 temp_a5_8;
    s32 temp_a6_5;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s6;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t2_3;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0;
    s32 var_a0_10;
    s32 var_a0_11;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a0_9;
    s32 var_a1;
    s32 var_a2_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6_2;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_at;
    s32 var_ra;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_11;
    s32 var_v0_12;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s32 var_v1;
    s64 *temp_a3_2;
    s64 *temp_a3_4;
    s64 *temp_a3_5;
    s64 *temp_a3_6;
    s64 *temp_a4_5;
    s64 *temp_t2_2;
    s64 temp_a2_4;
    s64 temp_a3_3;
    s64 temp_a4_2;
    s64 temp_a4_9;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 temp_a6;
    s64 temp_a7;
    s64 temp_a7_2;
    s64 temp_t1;
    s64 temp_v1_10;
    s64 temp_v1_7;
    s64 temp_v1_8;
    s64 temp_v1_9;
    s64 var_ra_2;
    s64 var_v1_2;
    s64 var_v1_3;
    u64 temp_a6_3;
    void *temp_a1_3;
    void *temp_a1_6;
    void *temp_a1_7;
    void *temp_a1_8;
    void *temp_a2_3;
    void *temp_a2_5;
    void *temp_a2_6;
    void *temp_a2_8;
    void *temp_a2_9;
    void *temp_a5_11;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_7;
    void *temp_a5_9;
    void *temp_a6_10;
    void *temp_a6_4;
    void *temp_a6_6;
    void *temp_a6_8;
    void *temp_a7_3;
    void *temp_s1;
    void *var_a1_2;
    void *var_a2;
    void *var_a3_2;
    void *var_a4;
    void *var_a5_3;
    void *var_a6_3;
    void *var_a7;
    void *var_a7_4;

    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_s6 = arg1->unk0;
        unksp128 = (s64) temp_s1->unk17F4;
        if (temp_s6 & 0x2000) {
            var_a0 = arg1->unk650;
            temp_a1 = temp_s1->unk700 & ~var_a0 & 0x4000;
            if (temp_a1 != 0) {
                __glReadjustZCounts(temp_s1, temp_a1);
                var_a0 = arg1->unk650;
            }
            temp_a2 = var_a0 & ~temp_s1->unk700 & 0x4000;
            if (temp_a2 != 0) {
                temp_s1->unk7A88 = (s32) temp_s1->unk7A84;
            }
            temp_a1_2 = arg0->unk1A04;
            temp_s1->unk957C = temp_a1_2;
            temp_s1->unk9580 = (s32) arg0->unk1A08;
            temp_s1->unk9584 = (s32) arg0->unk1A0C;
            temp_at = temp_s1->unk7BFC & saved_reg_gp->unk-37D8;
            temp_s1->unk7BFC = temp_at;
            temp_s1->unk7BFC = (s32) (temp_at | (arg0->unk84 & 0x5FE1DF));
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_t8 = temp_s1->unk7C00 & ~0xE000;
            temp_s1->unk7C00 = temp_t8;
            temp_s1->unk7C00 = (s32) (temp_t8 | (arg0->unk88 & 0xE000));
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 4);
            *(void *)0x1018 = 2;
            temp_s1->unk700 = 0;
            temp_s1->unk700 = (s32) arg1->unk650;
            temp_s1->unk704 = 0;
            temp_s1->unk704 = (s32) arg1->unk654;
            temp_s1->unk700 = (s64) arg1->unk650;
            temp_s1->unk708 = (s64) arg1->unk658;
            temp_s1->unk710 = (s64) arg1->unk660;
            temp_s1->unk718 = (s32) arg1->unk668;
            temp_s1->unk1647C = (s32) arg0->unkE904;
            temp_s1->unk2EC4(temp_s1, temp_a1_2, temp_a2);
            temp_s1->unk2EBC(temp_s1);
            __glOdyim_FinishAsyncSGIX((s64) temp_s1);
            temp_s1->unk7CD4 = (s32) (((temp_s1->unk700 & 0x80000000) != 0) | (temp_s1->unk7CD4 & ~1));
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0xFC0);
            *(void *)0x1018 = 2;
            temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 0x3E);
        }
        var_t2 = temp_s6 & 0x4000;
        if (temp_s6 & 0x200) {
            temp_s1->unk670 = (f32) arg1->unk5C0;
            temp_s1->unk674 = (f32) arg1->unk5C4;
            temp_s1->unk678 = (f32) arg1->unk5C8;
            temp_s1->unk67C = (f32) arg1->unk5CC;
            var_t2 = temp_s6 & 0x4000;
        }
        if (var_t2 != 0) {
            var_a7 = arg1 + 0x66C;
            var_v0 = 4;
            var_a0_2 = 0x12;
            temp_s1->unk71C = (s32) arg1->unk66C;
            do {
                var_a0_2 -= 2;
                *(var_v0 + (temp_s1 + 0x71C)) = *(var_v0 + var_a7);
                var_a3 = var_v0 + (temp_s1 + 0x720);
                temp_v1 = *(var_v0 + (arg1 + 0x670));
                var_v0 += 8;
                *var_a3 = temp_v1;
            } while (var_a0_2 > 0);
            temp_a5 = arg0->unkB0;
            temp_s1->unk7C28 = temp_a5;
            temp_a4 = temp_s1->unk9830;
            var_a6 = 0x10000;
            if (temp_a4 != 0) {
                temp_s1->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                var_a7 = (void *)0xFA;
                HQ2_READ_FIFO = 0xFA;
                var_a6 = 0x10046;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1041E;
            HQ2_READ_FIFO = temp_s1->unk7C28;
            temp_s1->unk7C34 = (s32) arg0->unkBC;
            temp_s1->unk7C38 = (s32) arg0->unkC0;
            temp_s1->unk7C3C = (s32) arg0->unkC4;
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 1);
            *(void *)0x1018 = 2;
            temp_s1->unk7C40 = (s32) arg0->unkC8;
            if (temp_s1->unk9830 != 0) {
                temp_s1->unk9830 = 0;
                var_a3 = (s32 *)0x10443;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10422;
            HQ2_READ_FIFO = temp_s1->unk7C40;
            temp_v1_2 = (temp_s1->unk7C5C & ~0x100000) | (((((u32) arg0->unkE4 >> 0x14) & 1) << 0x14) & 0x100000);
            temp_s1->unk7C5C = temp_v1_2;
            temp_v1_3 = (temp_v1_2 & ~0x200000) | (((((u32) arg0->unkE4 >> 0x15) & 1) << 0x15) & 0x200000);
            temp_s1->unk7C5C = temp_v1_3;
            temp_v1_4 = (temp_v1_3 & ~0x400000) | (((((u32) arg0->unkE4 >> 0x16) & 1) << 0x16) & 0x400000);
            temp_s1->unk7C5C = temp_v1_4;
            temp_a2_2 = ~0x800000;
            temp_v1_5 = (temp_v1_4 & temp_a2_2) | (((((u32) arg0->unkE4 >> 0x17) & 1) << 0x17) & 0x800000);
            temp_s1->unk7C5C = temp_v1_5;
            temp_s1->unk7C5C = (s32) ((arg0->unkE4 & 0xFFF) | (temp_v1_5 & ~0xFFF));
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x80);
            *(void *)0x1018 = 2;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x800);
            *(void *)0x1018 = 2;
            __text0(temp_s1->unk760, 0x800000, temp_a2_2, var_a3, temp_a4, temp_a5, var_a6, var_a7);
            unksp68 = 0x800;
            var_s4 = 0xF;
            var_s5 = 0x1E4000;
        } else {
            var_s4 = 0;
            unksp68 = 0;
            var_s5 = 0;
        }
        if (temp_s6 & 0x100) {
            temp_s1->unk660 = (s64) arg1->unk5B0;
            temp_s1->unk668 = (s64) arg1->unk5B8;
            temp_s1->unk7C30 = (s32) arg0->unkB8;
            var_s5 |= 0x10000;
            var_s4 |= 0x10;
            if (temp_s1->unk9830 != 0) {
                temp_s1->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10420;
            HQ2_READ_FIFO = temp_s1->unk7C30;
            temp_s1->unk7C5C = (s32) ((temp_s1->unk7C5C & ~0x01000000) | (((((u32) arg0->unkE4 >> 0x18) & 1) << 0x18) & 0x01000000));
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x80);
            *(void *)0x1018 = 2;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x800);
            *(void *)0x1018 = 2;
        }
        var_at = temp_s6 & 0x80;
        if (0x10000 & temp_s6) {
            var_a0_3 = 0xC;
            var_v0_2 = 0;
            do {
                var_a0_3 -= 2;
                *(var_v0_2 + (temp_s1 + 0x78C)) = *(var_v0_2 + (arg1 + 0x6DC));
                temp_t3 = var_v0_2 + (temp_s1 + 0x790);
                temp_t2 = *(var_v0_2 + (arg1 + 0x6E0));
                var_v0_2 += 8;
                *temp_t3 = temp_t2;
            } while (var_a0_3 > 0);
            temp_s1->unk710 = (s32) arg1->unk660;
            var_s4 |= 0x800000;
            temp_s1->unk714 = (s32) arg1->unk664;
            var_at = temp_s6 & 0x80;
        }
        var_t9 = temp_s6 & 0x8000;
        if (var_at != 0) {
            temp_s1->unk634 = (s32) arg1->unk584;
            temp_s1->unk638 = (s32) arg1->unk588;
            temp_s1->unk63C = (s32) arg1->unk58C;
            temp_s1->unk640 = (s32) arg1->unk590;
            temp_s1->unk644 = (s32) arg1->unk594;
            temp_s1->unk648 = (s32) arg1->unk598;
            temp_s1->unk64C = (s32) arg1->unk59C;
            temp_s1->unk650 = (s32) arg1->unk5A0;
            temp_s1->unk654 = (s32) arg1->unk5A4;
            temp_s1->unk658 = (s32) arg1->unk5A8;
            var_s4 |= 0x20;
            temp_s1->unk7C08 = (s32) arg0->unk90;
            var_s5 |= 0x400000;
            temp_s1->unk7C0C = (s32) arg0->unk94;
            unksp68 |= 0x10;
            temp_s1->unk16430 = (s64) arg0->unkE8B8;
            temp_s1->unk16438 = (s64) arg0->unkE8C0;
            temp_s1->unk16440 = (s64) arg0->unkE8C8;
            temp_s1->unk16448 = (s64) arg0->unkE8D0;
            temp_s1->unk16450 = (s64) arg0->unkE8D8;
            temp_s1->unk16458 = (s64) arg0->unkE8E0;
            temp_s1->unk16460 = (s64) arg0->unkE8E8;
            temp_s1->unk16468 = (s64) arg0->unkE8F0;
            temp_s1->unk16470 = (s64) arg0->unkE8F8;
            temp_s1->unk16478 = (s32) arg0->unkE900;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x1000);
            *(void *)0x1018 = 2;
            var_t9 = temp_s6 & 0x8000;
        }
        var_a1 = temp_s6 & 0x40;
        if (var_t9 != 0) {
            temp_s1->unk768 = (s64) arg1->unk6B8;
            temp_s1->unk770 = (s64) arg1->unk6C0;
            temp_s1->unk778 = (s64) arg1->unk6C8;
            temp_s1->unk780 = (s64) arg1->unk6D0;
            temp_s1->unk788 = (s32) arg1->unk6D8;
            var_a1 = temp_s6 & 0x40;
        }
        var_v0_3 = temp_s6 & 1;
        if (var_a1 != 0) {
            temp_s1->unk708 = (s32) arg1->unk658;
            temp_s1->unk568 = (s32) arg1->unk4B8;
            temp_s1->unk56C = (s32) arg1->unk4BC;
            temp_s1->unk570 = (s32) arg1->unk4C0;
            temp_s1->unk574 = (s32) arg1->unk4C4;
            temp_s1->unk578 = (s32) arg1->unk4C8;
            temp_s1->unk57C = (s32) arg1->unk4CC;
            temp_s1->unk580 = (s32) arg1->unk4D0;
            temp_s1->unk584 = (s32) arg1->unk4D4;
            temp_s1->unk588 = (s32) arg1->unk4D8;
            temp_s1->unk58C = (s32) arg1->unk4DC;
            temp_s1->unk590 = (s64) arg1->unk4E0;
            temp_s1->unk598 = (s64) arg1->unk4E8;
            temp_a7 = arg1->unk4F0;
            temp_s1->unk5A0 = temp_a7;
            temp_a6 = arg1->unk4F8;
            temp_s1->unk5A8 = temp_a6;
            temp_s1->unk5B0 = (s64) arg1->unk500;
            temp_s1->unk5B8 = (s64) arg1->unk508;
            temp_s1->unk5C0 = (s64) arg1->unk510;
            temp_s1->unk5C8 = (s64) arg1->unk518;
            temp_s1->unk5D0 = (s64) arg1->unk520;
            temp_s1->unk5D8 = (s64) arg1->unk528;
            temp_a5_2 = arg1->unk530;
            temp_s1->unk5E0 = temp_a5_2;
            temp_a4_2 = arg1->unk538;
            temp_s1->unk5E8 = temp_a4_2;
            temp_s1->unk5F0 = (s64) arg1->unk540;
            temp_s1->unk5F8 = (s64) arg1->unk548;
            temp_s1->unk600 = (s64) arg1->unk550;
            temp_s1->unk608 = (s64) arg1->unk558;
            temp_s1->unk610 = (s64) arg1->unk560;
            temp_s1->unk618 = (s64) arg1->unk568;
            temp_s1->unk620 = (s64) arg1->unk570;
            temp_s1->unk628 = (s64) arg1->unk578;
            temp_a3 = temp_s1->unkE04;
            memcpy(temp_s1->unk630, arg1->unk580, temp_a3 * 0x74, temp_a3, temp_a4_2, temp_a5_2, temp_a6, temp_a7);
            temp_s1->unkC(temp_s1, arg1->unk580);
            arg1->unk580 = NULL;
            var_a5 = 6;
            var_v0_4 = 0x4E;
            temp_s1->unk16968 = (s32) (temp_s1->unk16968 | ((1 << temp_s1->unkE04) - 1));
            var_a0_4 = 0;
            temp_a1_3 = arg0 + 0xE904;
            var_s5 |= 0x08201800;
            temp_a2_3 = temp_s1 + 0x1647C;
            temp_s1->unk1696C = (s32) (temp_s1->unk1696C | ((1 << temp_s1->unkE04) - 1));
            do {
                var_a5 -= 1;
                var_v0_4 -= 1;
                temp_a6_2 = var_a0_4 + temp_a2_3;
                temp_a4_3 = *(var_a0_4 + temp_a1_3);
                var_a0_4 += 4;
                *temp_a6_2 = temp_a4_3;
            } while (var_a5 != 0);
            unksp48 = (s64) (temp_a2_3 + 0xC);
            unksp58 = (s64) (temp_a1_3 + 0xC);
            unksp40 = (s64) (temp_a2_3 + 0x18);
            unksp50 = (s64) (temp_a1_3 + 8);
            unksp60 = (s64) (temp_a1_3 + 4);
            do {
                *(var_a0_4 + temp_a2_3) = *(var_a0_4 + temp_a1_3);
                *(var_a0_4 + (temp_a2_3 + 4)) = *(var_a0_4 + unksp60);
                *(var_a0_4 + (temp_a2_3 + 8)) = *(var_a0_4 + unksp50);
                *(var_a0_4 + unksp48) = *(var_a0_4 + unksp58);
                *(var_a0_4 + (temp_a2_3 + 0x10)) = *(var_a0_4 + (temp_a1_3 + 0x10));
                *(var_a0_4 + (temp_a2_3 + 0x14)) = *(var_a0_4 + (temp_a1_3 + 0x14));
                var_v0_4 -= 8;
                *(var_a0_4 + unksp40) = *(var_a0_4 + (temp_a1_3 + 0x18));
                temp_at_2 = *(var_a0_4 + (temp_a1_3 + 0x1C));
                temp_v1_6 = var_a0_4 + (temp_a2_3 + 0x1C);
                var_a0_4 += 0x20;
                *temp_v1_6 = temp_at_2;
            } while (var_v0_4 > 0);
            temp_s1->unk7C70 = (s64) arg0->unkF8;
            temp_s1->unk7C78 = (s64) arg0->unk100;
            temp_s1->unk7C80 = (s64) arg0->unk108;
            temp_s1->unk7C88 = (s64) arg0->unk110;
            temp_s1->unk7C90 = (s64) arg0->unk118;
            temp_a7_2 = arg0->unk120;
            temp_s1->unk7C98 = temp_a7_2;
            temp_a6_3 = arg0->unk128;
            temp_s1->unk7CA0 = temp_a6_3;
            temp_a5_3 = arg0->unk130;
            temp_s1->unk7CA8 = temp_a5_3;
            temp_a4_4 = arg0->unk1A04;
            temp_s1->unk957C = temp_a4_4;
            temp_s1->unk9580 = (s32) arg0->unk1A08;
            temp_s1->unk9584 = (s32) arg0->unk1A0C;
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x800000);
            *(void *)0x1018 = 2;
            if (var_s5 != 0) {
                temp_ra = temp_s1->unk7BFC & ~var_s5;
                temp_s1->unk7BFC = temp_ra;
                temp_s1->unk7BFC = (s32) (temp_ra | (arg0->unk84 & var_s5));
                temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 2);
                var_s5 = 0;
                *(void *)0x1018 = 2;
            }
            temp_a1_4 = temp_s1->unk7C00 & saved_reg_gp->unk-37D0;
            temp_s1->unk7C00 = temp_a1_4;
            temp_a2_4 = arg0->unk88 & 0x8E000;
            temp_a1_5 = temp_a1_4 | temp_a2_4;
            temp_s1->unk7C00 = temp_a1_5;
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 4);
            *(void *)0x1018 = 2;
            temp_v0 = temp_s1->unk700 & ~(var_s4 | 0xC0);
            temp_s1->unk700 = temp_v0;
            temp_s1->unk700 = (s32) (temp_v0 | (arg1->unk650 & (var_s4 | 0xC0)));
            temp_ra_2 = temp_s1->unk704 & ~(unksp68 | 0x3000);
            temp_s1->unk704 = temp_ra_2;
            temp_s1->unk704 = (s32) (temp_ra_2 | (arg1->unk654 & (unksp68 | 0x3000)));
            __glOdyim_FinishAsyncSGIX((s64) temp_s1, (void *) temp_a1_5, temp_a2_4, 0x8E000, temp_a4_4, (s32) temp_a5_3, temp_a6_3, temp_a7_2);
            __text0(0x404, 0x1200, (s32) (arg1 + 0x4E0));
            unksp128->unk80(0x405, 0x1200, arg1 + 0x530);
            unksp128->unk80(0x404, 0x1201, arg1 + 0x4F0);
            unksp128->unk80(0x405, 0x1201, arg1 + 0x540);
            unksp128->unk80(0x404, 0x1202, arg1 + 0x500);
            unksp128->unk80(0x405, 0x1202, arg1 + 0x550);
            unksp128->unk80(0x404, 0x1600, arg1 + 0x510);
            unksp128->unk80(0x405, 0x1600, arg1 + 0x560);
            unksp128->unk7C(0x404, 0x1601);
            unksp128->unk7C(0x405, 0x1601);
            unksp128->unk80(0x404, 0x1603, sp, arg1->unk524, arg1->unk52C, (f32) arg1->unk528);
            unksp128->unk80(0x405, 0x1603, sp, arg1->unk574, arg1->unk57C, (f32) arg1->unk578);
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x1C0);
            *(void *)0x1018 = 2;
            unksp68 = 0;
            var_s4 = 0;
            temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 0x20);
            var_v0_3 = temp_s6 & 1;
        }
        var_ra = temp_s6 & 4;
        if (var_v0_3 != 0) {
            var_a5_2 = 2;
            var_v0_5 = 0x22;
            var_a0_5 = 0;
            temp_a2_5 = temp_s1 + 0xB8;
            temp_a1_6 = arg1 + 8;
            do {
                var_a5_2 -= 1;
                var_v0_5 -= 1;
                temp_a3_2 = var_a0_5 + temp_a2_5;
                temp_v1_7 = *(var_a0_5 + temp_a1_6);
                var_a0_5 += 8;
                *temp_a3_2 = temp_v1_7;
            } while (var_a5_2 != 0);
            temp_a6_4 = temp_a1_6 + 0x18;
            temp_a5_4 = temp_a2_5 + 0x18;
            temp_a7_3 = temp_a1_6 + 8;
            do {
                *(var_a0_5 + temp_a2_5) = *(var_a0_5 + temp_a1_6);
                *(var_a0_5 + (temp_a2_5 + 8)) = *(var_a0_5 + temp_a7_3);
                var_v0_5 -= 4;
                *(var_a0_5 + (temp_a2_5 + 0x10)) = *(var_a0_5 + (temp_a1_6 + 0x10));
                temp_a4_5 = var_a0_5 + temp_a5_4;
                temp_a3_3 = *(var_a0_5 + temp_a6_4);
                var_a0_5 += 0x20;
                *temp_a4_5 = temp_a3_3;
            } while (var_v0_5 > 0);
            temp_s1->unkA73C = 0;
            temp_s1->unk17F4->unk5DC(temp_s1 + 0x1B0, temp_a1_6, temp_a2_5, temp_a3_3, temp_a4_5, temp_a5_4, temp_a6_4, temp_a7_3);
            temp_s1->unk17F4->unk610(temp_s1->unk1C0);
            temp_s1->unk17F4->unk644(temp_s1 + 0xD0);
            temp_s1->unk17F4->unk6C4(temp_s1 + 0xE0);
            temp_s1->unk17F4->unk24(temp_s1->unk1C5);
            var_ra = temp_s6 & 4;
        }
        var_ra_2 = (s64) temp_s6 << 0x2E;
        if (var_ra != 0) {
            temp_s1->unk1D4 = (f32) arg1->unk124;
            temp_s1->unk1D8 = (f32) arg1->unk128;
            temp_s1->unk1DC = (s32) arg1->unk12C;
            temp_s1->unk1E0 = (u16) arg1->unk130;
            temp_s1->unk1E2 = (s16) arg1->unk132;
            temp_s1->unk7C54 = (s32) arg0->unkDC;
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x40);
            *(void *)0x1018 = 2;
            temp_s1->unk7C44 = (s32) arg0->unkCC;
            temp_s1->unk7C48 = (s32) arg0->unkD0;
            temp_s1->unk7C4C = (s32) arg0->unkD4;
            var_s5 |= 0xA;
            var_s4 |= 0x300;
            if (temp_s1->unk9830 != 0) {
                temp_s1->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10C48;
            HQ2_READ_FIFO = temp_s1->unk7C44;
            HQ2_READ_FIFO = temp_s1->unk7C48;
            HQ2_READ_FIFO = temp_s1->unk7C4C;
            *(void *)0x1018 = 2;
            temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 2);
            var_ra_2 = (s64) temp_s6 << 0x2E;
        }
        var_v0_6 = temp_s6 & 0x20;
        if (var_ra_2 < 0) {
            temp_s1->unk7BC = (s32) arg1->unk70C;
            var_v0_6 = temp_s6 & 0x20;
        }
        if (var_v0_6 != 0) {
            temp_a5_5 = temp_s1 + 0x280;
            temp_a2_6 = arg1 + 0x1D0;
            var_v0_7 = 8;
            var_a0_6 = 0xE;
            temp_s1->unk280 = (s64) arg1->unk1D0;
            do {
                var_a0_6 -= 2;
                *(var_v0_7 + temp_a5_5) = *(var_v0_7 + temp_a2_6);
                temp_a3_4 = var_v0_7 + (temp_s1 + 0x288);
                temp_v1_8 = *(var_v0_7 + (arg1 + 0x1D8));
                var_v0_7 += 0x10;
                *temp_a3_4 = temp_v1_8;
            } while (var_a0_6 > 0);
            temp_a7_4 = var_v0_7 + temp_a5_5;
            temp_a6_5 = *(var_v0_7 + temp_a2_6);
            *temp_a7_4 = temp_a6_5;
            temp_a5_6 = arg1->unk428;
            temp_s1->unk4D8 = temp_a5_6;
            temp_a4_6 = arg1->unk424;
            temp_s1->unk4D4 = temp_a4_6;
            __glCopyColorTableScaleBias(arg1 + 0x93C, temp_s1 + 0x1538, temp_a2_6, temp_a3_4, temp_a4_6, temp_a5_6, temp_a6_5, temp_a7_4);
            __glCopyConvolutionPixelModeState(arg1 + 0x1D0, temp_s1 + 0x280);
            *(void *)0x1018 = 2;
            temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 0x10);
            var_s4 |= 0x3E000000;
            unksp68 |= 0x24027;
        }
        var_v1 = temp_s6 & 8;
        if (temp_s6 & 2) {
            temp_s1->unk1C8 = (f32) arg1->unk118;
            temp_s1->unk1CC = (f32) arg1->unk11C;
            temp_s1->unk1D0 = (s32) arg1->unk120;
            temp_s1->unk7C58 = (s32) arg0->unkE0;
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x40);
            *(void *)0x1018 = 2;
            var_s5 |= 1;
            var_s4 |= 0x400;
            temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 8);
            var_v1 = temp_s6 & 8;
        }
        if (var_v1 != 0) {
            temp_s1->unk1E4 = (s32) arg1->unk134;
            temp_s1->unk1E8 = (s32) arg1->unk138;
            temp_s1->unk1EC = (s32) arg1->unk13C;
            temp_s1->unk1F0 = (s32) arg1->unk140;
            temp_s1->unk1F4 = (s32) arg1->unk144;
            temp_s1->unk1F8 = (s32) arg1->unk148;
            temp_s1->unk1FC = (s32) arg1->unk14C;
            temp_s1->unk7C04 = (s32) arg0->unk8C;
            var_s5 |= 0x8007F4;
            unksp68 |= 0x600;
            var_s4 |= 0x01003800;
            if (temp_s1->unk9830 != 0) {
                temp_s1->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10415;
            HQ2_READ_FIFO = temp_s1->unk7C04;
            temp_s1->unk7C50 = (s32) arg0->unkD8;
            if (temp_s1->unk9830 != 0) {
                temp_s1->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10458;
            HQ2_READ_FIFO = temp_s1->unk7C50;
            *(void *)0x1018 = 2;
            temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 4);
        }
        var_v1_2 = (s64) temp_s6 << 0x2C;
        if (temp_s6 & 0x10) {
            var_v0_8 = 0x10;
            var_a0_7 = 0;
            do {
                var_v0_8 -= 2;
                *(var_a0_7 + (temp_s1 + 0x200)) = *(var_a0_7 + (arg1 + 0x150));
                temp_t2_2 = var_a0_7 + (temp_s1 + 0x208);
                temp_t1 = *(var_a0_7 + (arg1 + 0x158));
                var_a0_7 += 0x10;
                *temp_t2_2 = temp_t1;
            } while (var_v0_8 > 0);
            memcpy(temp_s1 + 0x7B78, arg0, 0x80);
            if (temp_s1->unk9830 != 0) {
                temp_s1->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1043F;
            HQ2_READ_FIFO = temp_s1->unk7BF8;
            HQ2_READ_FIFO = 0x13C4E;
            HQ2_READ_FIFO = temp_s1->unk7B78;
            HQ2_READ_FIFO = temp_s1->unk7B7C;
            HQ2_READ_FIFO = temp_s1->unk7B80;
            HQ2_READ_FIFO = temp_s1->unk7B84;
            HQ2_READ_FIFO = temp_s1->unk7B88;
            HQ2_READ_FIFO = temp_s1->unk7B8C;
            HQ2_READ_FIFO = temp_s1->unk7B90;
            HQ2_READ_FIFO = temp_s1->unk7B94;
            HQ2_READ_FIFO = temp_s1->unk7B98;
            HQ2_READ_FIFO = temp_s1->unk7B9C;
            HQ2_READ_FIFO = temp_s1->unk7BA0;
            HQ2_READ_FIFO = temp_s1->unk7BA4;
            HQ2_READ_FIFO = temp_s1->unk7BA8;
            HQ2_READ_FIFO = temp_s1->unk7BAC;
            HQ2_READ_FIFO = temp_s1->unk7BB0;
            HQ2_READ_FIFO = temp_s1->unk7BB4;
            HQ2_READ_FIFO = 0x13C4F;
            HQ2_READ_FIFO = temp_s1->unk7BB8;
            HQ2_READ_FIFO = temp_s1->unk7BBC;
            HQ2_READ_FIFO = temp_s1->unk7BC0;
            HQ2_READ_FIFO = temp_s1->unk7BC4;
            HQ2_READ_FIFO = temp_s1->unk7BC8;
            HQ2_READ_FIFO = temp_s1->unk7BCC;
            HQ2_READ_FIFO = temp_s1->unk7BD0;
            HQ2_READ_FIFO = temp_s1->unk7BD4;
            HQ2_READ_FIFO = temp_s1->unk7BD8;
            HQ2_READ_FIFO = temp_s1->unk7BDC;
            HQ2_READ_FIFO = temp_s1->unk7BE0;
            HQ2_READ_FIFO = temp_s1->unk7BE4;
            HQ2_READ_FIFO = temp_s1->unk7BE8;
            HQ2_READ_FIFO = temp_s1->unk7BEC;
            HQ2_READ_FIFO = temp_s1->unk7BF0;
            HQ2_READ_FIFO = temp_s1->unk7BF4;
            *(void *)0x1018 = 2;
            temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 0x40);
            var_v1_2 = (s64) temp_s6 << 0x2C;
        }
        var_a6_2 = temp_s6 & 0x400;
        if (var_v1_2 < 0) {
            temp_v0_2 = temp_s1->unk700;
            if (temp_v0_2 & 0x4000) {
                if (arg1->unk92C == temp_s1->unk9DC) {
                    if ((arg1->unk930 == temp_s1->unk9E0) && (arg1->unk934 == temp_s1->unk9E4) && (arg1->unk938 == temp_s1->unk9E8)) {
                        goto block_73;
                    }
                    goto block_75;
                }
                goto block_74;
            }
block_73:
            if (temp_v0_2 & ~arg1->unk650 & 0x4000) {
block_74:
block_75:
                __glReadjustZCounts(temp_s1);
            }
            if (arg1->unk650 & ~temp_s1->unk700 & 0x4000) {
                temp_s1->unk7A88 = (s32) temp_s1->unk7A84;
            }
            temp_s1->unk9DC = (s32) arg1->unk92C;
            temp_s1->unk9E0 = (s32) arg1->unk930;
            var_s5 |= 0x2000;
            temp_s1->unk9E4 = (s32) arg1->unk934;
            temp_s1->unk9E8 = (s32) arg1->unk938;
            if (var_s5 != 0) {
                temp_a0 = temp_s1->unk7BFC & ~var_s5;
                temp_s1->unk7BFC = temp_a0;
                temp_s1->unk7BFC = (s32) (temp_a0 | (arg0->unk84 & var_s5));
                temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 2);
                var_s5 = 0;
                *(void *)0x1018 = 2;
            }
            temp_a4_7 = temp_s1->unk700 & ~(var_s4 | 0x4000);
            temp_s1->unk700 = temp_a4_7;
            temp_s1->unk700 = (s32) (temp_a4_7 | (arg1->unk650 & (var_s4 | 0x4000)));
            temp_a2_7 = temp_s1->unk704 & ~unksp68;
            temp_s1->unk704 = temp_a2_7;
            temp_s1->unk704 = (s32) (temp_a2_7 | (arg1->unk654 & unksp68));
            temp_s1->unk2EC4(temp_s1);
            temp_s1->unk2EBC(temp_s1);
            var_s4 = 0;
            unksp68 = 0;
            var_a6_2 = temp_s6 & 0x400;
        }
        var_v1_3 = (s64) temp_s6 << 0x2D;
        if (var_a6_2 != 0) {
            temp_s1->unk680 = (s64) arg1->unk5D0;
            temp_s1->unk688 = (s64) arg1->unk5D8;
            temp_s1->unk690 = (s64) arg1->unk5E0;
            temp_s1->unk7C2C = (s32) arg0->unkB4;
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x20);
            *(void *)0x1018 = 2;
            temp_s1->unk7C5C = (s32) ((temp_s1->unk7C5C & ~0xFF000) | (((((u32) arg0->unkE4 >> 0xC) & 0xFF) << 0xC) & 0xFF000));
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x80);
            *(void *)0x1018 = 2;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x800);
            var_s5 |= 0x8000;
            var_s4 |= 0x8000;
            *(void *)0x1018 = 2;
            var_v1_3 = (s64) temp_s6 << 0x2D;
        }
        if (var_v1_3 < 0) {
            temp_a5_7 = temp_s1 + 0x7C0;
            temp_a6_6 = arg1 + 0x710;
            var_v0_9 = 8;
            var_a0_8 = 0xE;
            temp_s1->unk7C0 = (s64) arg1->unk710;
            do {
                var_a0_8 -= 2;
                *(var_v0_9 + temp_a5_7) = *(var_v0_9 + temp_a6_6);
                temp_a3_5 = var_v0_9 + (temp_s1 + 0x7C8);
                temp_v1_9 = *(var_v0_9 + (arg1 + 0x718));
                var_v0_9 += 0x10;
                *temp_a3_5 = temp_v1_9;
            } while (var_a0_8 > 0);
            var_t0 = 3;
            var_a7_2 = 0x1F;
            var_a0_9 = 0;
            temp_a1_7 = temp_s1 + 0x83C;
            temp_a2_8 = arg1 + 0x78C;
            *(var_v0_9 + temp_a5_7) = *(var_v0_9 + temp_a6_6);
            do {
                var_t0 -= 1;
                var_a7_2 -= 1;
                temp_a6_7 = var_a0_9 + temp_a1_7;
                temp_a5_8 = *(var_a0_9 + temp_a2_8);
                var_a0_9 += 4;
                *temp_a6_7 = temp_a5_8;
            } while (var_t0 != 0);
            var_v0_10 = var_a7_2;
            do {
                *(var_a0_9 + temp_a1_7) = *(var_a0_9 + temp_a2_8);
                *(var_a0_9 + (temp_a1_7 + 4)) = *(var_a0_9 + (temp_a2_8 + 4));
                var_v0_10 -= 4;
                *(var_a0_9 + (temp_a1_7 + 8)) = *(var_a0_9 + (temp_a2_8 + 8));
                temp_t9 = var_a0_9 + (temp_a1_7 + 0xC);
                temp_a7_5 = *(var_a0_9 + (temp_a2_8 + 0xC));
                var_a0_9 += 0x10;
                *temp_t9 = temp_a7_5;
            } while (var_v0_10 > 0);
            temp_a6_8 = temp_s1 + 0x8B8;
            temp_a5_9 = arg1 + 0x808;
            var_v0_11 = 8;
            var_a0_10 = 0xE;
            temp_s1->unk8B8 = (s64) arg1->unk808;
            do {
                var_a0_10 -= 2;
                *(var_v0_11 + temp_a6_8) = *(var_v0_11 + temp_a5_9);
                temp_a3_6 = var_v0_11 + (temp_s1 + 0x8C0);
                temp_v1_10 = *(var_v0_11 + (arg1 + 0x810));
                var_v0_11 += 0x10;
                *temp_a3_6 = temp_v1_10;
            } while (var_a0_10 > 0);
            var_t0_2 = 3;
            var_a0_11 = 0x1F;
            var_a7_3 = 0;
            temp_a4_8 = *(var_v0_11 + temp_a5_9);
            temp_a2_9 = temp_s1 + 0x934;
            temp_a1_8 = arg1 + 0x884;
            *(var_v0_11 + temp_a6_8) = temp_a4_8;
            do {
                var_t0_2 -= 1;
                var_a0_11 -= 1;
                temp_a6_9 = var_a7_3 + temp_a2_9;
                temp_a5_10 = *(var_a7_3 + temp_a1_8);
                var_a7_3 += 4;
                *temp_a6_9 = temp_a5_10;
            } while (var_t0_2 != 0);
            temp_a6_10 = temp_a2_9 + 8;
            temp_a5_11 = temp_a1_8 + 8;
            var_v0_12 = var_a7_3;
            do {
                *(var_v0_12 + temp_a2_9) = *(var_v0_12 + temp_a1_8);
                *(var_v0_12 + (temp_a2_9 + 4)) = *(var_v0_12 + (temp_a1_8 + 4));
                var_a0_11 -= 4;
                *(var_v0_12 + temp_a6_10) = *(var_v0_12 + temp_a5_11);
                temp_t9_2 = var_v0_12 + (temp_a2_9 + 0xC);
                temp_a7_6 = *(var_v0_12 + (temp_a1_8 + 0xC));
                var_v0_12 += 0x10;
                *temp_t9_2 = temp_a7_6;
            } while (var_a0_11 > 0);
            temp_s1->unk9D8 = (u8) arg1->unk928;
            temp_s1->unk9D9 = (u8) arg1->unk929;
            temp_s1->unk9DA = (u8) arg1->unk92A;
            temp_s1->unk9DB = (u8) arg1->unk92B;
            __glOdyim_TexEnviv(0x2300, 0x2200, arg1->unk904, temp_a3_6, temp_a4_8, temp_a5_11, temp_a6_10, temp_a7_6);
            __glOdyim_TexEnvfv(0x2300, 0x2201, arg1->unk904 + 4);
            temp_s1->unkC(temp_s1, arg1->unk904);
            unksp100 = 0;
            arg1->unk904 = NULL;
            unksp120 = (s64) (arg0 + 0x10000);
            unksp70 = (s64) (arg0 + 0xA5E8);
            unksp78 = (s64) (arg0 + 0xA5E4);
            unkspB0 = (s64) (arg0 + 0xA5E0);
            unkspA8 = (s64) (arg0 + 0xA5DC);
            unksp90 = (s64) (arg0 + 0xA5D8);
            unksp108 = (s64) (arg0 + 0xA5D4);
            unksp88 = (s64) (arg0 + 0xA600);
            unksp80 = (s64) (arg0 + 0xA5F0);
            var_a7_4 = arg0 + 0xA5C4;
            unkspC8 = (s64) var_a7_4;
            var_a6_3 = arg0 + 0xA5C0;
            unkspF0 = (s64) var_a6_3;
            var_a5_3 = arg0 + 0xA5BC;
            unksp98 = (s64) var_a5_3;
            var_a4 = arg0 + 0xA5AC;
            unkspF8 = (s64) var_a4;
            var_a3_2 = arg0 + 0xA598;
            unksp118 = (s64) var_a3_2;
            var_a2 = arg0 + 0xA594;
            unkspD8 = (s64) var_a2;
            unkspC0 = (s64) (arg0 + 0xA5C8);
            unkspE8 = (s64) (arg0 + 0xA5CC);
            unkspE0 = (s64) (arg0 + 0xA5D0);
            var_a1_2 = arg0 + 0xA5A4;
            unksp110 = (s64) var_a1_2;
            unkspA0 = (s64) (arg0 + 0xA5EC);
            unkspD0 = (s64) (arg0 + 0xA5A0);
            unkspB8 = (s64) (arg0 + 0xA59C);
            do {
                temp_v0_3 = __glOdyssey_CopyContext((s32) unksp100, (s64) var_a1_2, (u64) var_a2, var_a3_2, (s64) var_a4, (s64) var_a5_3, (s64) var_a6_3, (s64) var_a7_4);
                __glOdyim_BindTexture(temp_v0_3, unksp120->unk-5A78);
                __glOdyim_TexParameteriv(temp_v0_3, 0x2802, unkspB8);
                __glOdyim_TexParameteriv(temp_v0_3, 0x2803, unkspD0);
                __glOdyim_TexParameteriv(temp_v0_3, 0x8072, unksp110);
                __glOdyim_TexParameteriv(temp_v0_3, 0x2801, unkspD8);
                __glOdyim_TexParameteriv(temp_v0_3, 0x2800, unksp118);
                __glOdyim_TexParameterfv(temp_v0_3, 0x1004, unkspF8);
                __glOdyim_TexParameterfv(temp_v0_3, 0x8066, unksp98);
                __glOdyim_TexParameteriv(temp_v0_3, 0x809A, unkspF0);
                __glOdyim_TexParameteriv(temp_v0_3, 0x809B, unkspC8);
                __glOdyim_TexParameterfv(temp_v0_3, 0x8179, unksp80);
                __glOdyim_TexParameterfv(temp_v0_3, 0x817A, unksp88);
                __glOdyim_TexParameterfv(temp_v0_3, 0x813A, unksp108);
                __glOdyim_TexParameterfv(temp_v0_3, 0x813B, unksp90);
                __glOdyim_TexParameteriv(temp_v0_3, 0x813C, unkspA8);
                __glOdyim_TexParameteriv(temp_v0_3, 0x813D, unkspB0);
                __glOdyim_TexParameterfv(temp_v0_3, 0x818E, unksp78);
                __glOdyim_TexParameterfv(temp_v0_3, 0x818F, unksp70);
                __glOdyim_TexParameterfv(temp_v0_3, 0x8190, unkspA0);
                __glOdyim_TexParameterfv(temp_v0_3, 0x8369, unkspC0);
                __glOdyim_TexParameterfv(temp_v0_3, 0x836A, unkspE8);
                __glOdyim_TexParameterfv(temp_v0_3, 0x836B, unkspE0);
                if (temp_v0_3 == 0xDE1) {
                    __glOdyim_DetailTexFuncSGIS(temp_v0_3, unksp120->unk-557C, unksp120->unk-5578);
                }
                var_a2 = unksp98 + 0x994;
                unksp98 = (s64) var_a2;
                var_a1_2 = unkspF0 + 0x994;
                unkspF0 = (s64) var_a1_2;
                unkspC8 += 0x994;
                unksp80 += 0x994;
                unksp88 += 0x994;
                unksp108 += 0x994;
                unksp90 += 0x994;
                unkspA8 += 0x994;
                unkspB0 += 0x994;
                unksp78 += 0x994;
                unkspD8 += 0x994;
                unksp110 += 0x994;
                unkspD0 += 0x994;
                unkspF8 += 0x994;
                unkspB8 += 0x994;
                unksp120 += 0x994;
                unksp70 += 0x994;
                unksp118 += 0x994;
                unkspA0 += 0x994;
                var_a4 = unksp100 + 1;
                unksp100 = (s64) var_a4;
                var_a3_2 = (void *)4;
                var_a7_4 = unkspC0 + 0x994;
                unkspC0 = (s64) var_a7_4;
                var_a6_3 = unkspE8 + 0x994;
                unkspE8 = (s64) var_a6_3;
                var_a5_3 = unkspE0 + 0x994;
                unkspE0 = (s64) var_a5_3;
            } while (var_a4 != (void *)4);
            temp_v0_4 = temp_s1->unk7CD4;
            var_s4 |= 0xC03F0000;
            if (arg1->unk650 & 0x80000000) {
                var_a2_2 = temp_v0_4 | 1;
            } else {
                var_a2_2 = temp_v0_4 & ~1;
            }
            temp_s1->unk7CD4 = var_a2_2;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x700);
            *(void *)0x1018 = 2;
        }
        temp_a4_9 = temp_s6 & 0x1000;
        var_t1 = temp_s6 & 0x800;
        if (temp_a4_9 != 0) {
            temp_a3_7 = arg1->unk620;
            temp_s1->unk6D0 = temp_a3_7;
            memcpy(temp_s1->unk6D4, arg1->unk624, temp_s1->unkE10 * 0x10, temp_a3_7, temp_a4_9);
            temp_s1->unkC(temp_s1, arg1->unk624);
            arg1->unk624 = NULL;
            temp_s1->unk70C = (s32) arg1->unk65C;
            unksp68 |= 0x10000;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x514);
            var_s4 |= 0x400000;
            *(void *)0x1018 = 2;
            var_t1 = temp_s6 & 0x800;
        }
        if (var_t1 != 0) {
            var_s6 = 1;
            if (fabs((second half of f64) - arg1->unk5F8) < 1e-06) {
                var_s6 = M2C_ERROR(/* unknown instruction: movf $s6, $t2, $fcc1 */);
            }
            temp_s1->unk698 = (s64) arg1->unk5E8;
            temp_s1->unk6A0 = (s64) arg1->unk5F0;
            temp_s1->unk6A8 = (f64) arg1->unk5F8;
            temp_s1->unk6B0 = (f64) arg1->unk600;
            temp_s1->unk6B8 = (s64) arg1->unk608;
            temp_s1->unk6C0 = (s64) arg1->unk610;
            temp_s1->unk6C8 = (s64) arg1->unk618;
            __glUpdateViewportTransform(temp_s1);
            temp_s1->unk2EBC(temp_s1);
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 1);
            *(void *)0x1018 = 2;
            if (var_s6 != 0) {
                temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x4000);
                *(void *)0x1018 = 2;
                temp_s1->unk165D8 = -1.0;
                sp10 = __glOdysseyNormalizedEyeToWindowZ((f32) arg1->unk5F8, second half of f64);
                __glOdysseyNormalizedEyeToWindowZ((f32) arg1->unk600, second half of f64);
                __glOdyim_DepthRange((f64) (second half of f64), second half of f64);
            }
        }
        if (var_s5 != 0) {
            temp_a5_12 = temp_s1->unk7BFC & ~var_s5;
            temp_s1->unk7BFC = temp_a5_12;
            temp_s1->unk7BFC = (s32) (temp_a5_12 | (arg0->unk84 & var_s5));
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 2);
            *(void *)0x1018 = 2;
        }
        temp_t2_3 = temp_s1->unk700 & ~var_s4;
        temp_s1->unk700 = temp_t2_3;
        temp_s1->unk700 = (s32) (temp_t2_3 | (arg1->unk650 & var_s4));
        temp_t0 = temp_s1->unk704 & ~unksp68;
        temp_s1->unk704 = temp_t0;
        temp_s1->unk704 = (s32) (temp_t0 | (arg1->unk654 & unksp68));
        arg1->unk0 = 0;
        *(void *)0x1018 = 2;
        temp_s1->unk2E24 = (s32) (temp_s1->unk2E24 | 1);
        return;
    }
    __glSetError(0x502);
}

void __glOdyssey_ResolveContext(void) {
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    __glOdyssey_CopyContext(temp_s1->unk168C8, (s64) temp_s1->unk168CC);
    sub_0d960000(temp_s1, temp_s1->unk168C8);
    temp_s1->unkC(temp_s1, temp_s1->unk168CC);
    temp_s1->unk168CC = 0;
    temp_s1->unk168C8 = 0;
}

void __glOdyim_PopAttrib(void) {
    s64 temp_a5;
    u32 temp_a4;
    u32 temp_a7;
    void *temp_a3;
    void *temp_a6;
    void *temp_a6_2;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a5 = temp_a3 + 0x10000;
        temp_a4 = temp_a3->unk168D4;
        if ((u32) temp_a3->unk168D0 < temp_a4) {
            temp_a6 = temp_a3->unk31BC;
            temp_a7 = temp_a4 - 4;
            temp_a3->unk168D4 = temp_a7;
            temp_a6_2 = temp_a6 - 4;
            temp_a3->unk31BC = temp_a6_2;
            __glOdyssey_CopyContext(temp_a4->unk-4, (s64) temp_a6->unk-4, (u64) temp_a3, (void *) temp_a4, temp_a5, (s64) temp_a6_2, (s64) temp_a7);
        } else {
            sub_0d960000((void *)0x504, (s32) temp_a3, temp_a4, temp_a5);
        }
    } else {
        __glSetError(0x502, temp_a3, (void *)0x10000);
    }
}

void __glOdysseyFreeAttributeState(void *arg0, u32 arg1) {
    u32 temp_a1;
    u32 temp_a3;
    u32 var_a1;
    u32 var_s1;
    void *temp_s0;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    temp_s0 = var_a0;
    if ((u32) var_a0->unk31B8 < (u32) var_a0->unk31BC) {
        do {
            __glOdyim_PopAttrib(var_a0, var_a1);
            var_a1 = temp_s0->unk31BC;
            var_a0 = (void *) ((u32) temp_s0->unk31B8 < var_a1);
        } while (var_a0 != NULL);
    }
    temp_a3 = temp_s0->unk168D0;
    var_s1 = temp_a3;
    if (temp_a3 < (u32) (temp_a3 + (temp_s0->unkEC0 * 4))) {
loop_4:
        temp_a1 = *var_s1;
        if (temp_a1 != 0) {
            __glOdyim_PopAttrib(temp_s0, temp_a1);
            var_s1 += 4;
            if (var_s1 < (u32) (temp_s0->unk168D0 + (temp_s0->unkEC0 * 4))) {
                goto loop_4;
            }
        }
    }
    temp_s0->unkC(temp_s0, temp_s0->unk168D0);
    temp_s0->unk168D0 = 0U;
}

void __glOdyim_AlphaFunc(u32 arg0, s64 arg3, f32 fparg1) {
    f32 temp_f5;
    f32 var_f4;
    s32 temp_a1;
    s32 temp_a3;
    s64 var_a3;
    void *temp_a2;

    var_a3 = arg3;
    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = arg0 < 0x200U;
        var_f4 = 4095.0f;
        if (temp_a1 == 0) {
            var_a3 = arg0 < 0x208U;
            if (var_a3 != 0) {
                M2C_ERROR(/* unknown instruction: movf.s $f2, $f13, $fcc2 */);
                temp_f5 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f2, $fcc1 */);
                temp_a2->unk71C = arg0;
                temp_a3 = (temp_a2->unk7C28 & ~0x7000) | (((arg0 & 7) << 0xC) & 0x7000);
                temp_a2->unk7C28 = temp_a3;
                temp_a2->unk720 = temp_f5;
                if (!((second half of f64) <= (f64) temp_f5)) {
                    var_f4 = temp_f5 * 4096.0f;
                }
                temp_a2->unk7C28 = (s32) ((((s64) var_f4 << 0) & 0xFFF) | (temp_a3 & ~0xFFF));
                if (temp_a2->unk9830 != 0) {
                    temp_a2->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x1041E;
                HQ2_READ_FIFO = temp_a2->unk7C28;
                return;
            }
        }
        __glSetError(0x500, (void *) temp_a1, temp_a2, var_a3);
    } else {
        __glSetError(0x502, temp_a2);
    }
}

void __glOdyim_BlendFunc(u32 arg0, u32 arg1, s32 arg2, s32 arg5, s32 arg6) {
    s32 var_a2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a7;
    s64 var_a4;
    void *temp_a3;

    var_a2 = arg2;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a4 = arg0 < 0x306U;
        var_a7 = arg0 < 0x303U;
        if (var_a4 == 0) {
            var_a4 = 0x10;
            if (arg0 < 0x307U) {
                goto block_3;
            }
            var_a5 = 0x8002;
            if (arg0 >= 0x8002U) {
                var_a5 = 0x8004;
                if (arg0 <= 0x8002U) {
                    var_a4 = 0x3B;
                    goto block_3;
                }
                var_a6 = 0x8003;
                var_a4 = 0x3C;
                if (arg0 >= 0x8004U) {
                    if (arg0 <= 0x8004U) {
                        goto block_3;
                    }
                    goto block_47;
                }
                if (arg0 == 0x8003) {
                    var_a4 = 0x30;
                    goto block_3;
                }
                goto block_47;
            }
            var_a2 = arg0 < 0x308U;
            if (var_a2 == 0) {
                var_a4 = arg0 < 0x309U;
                var_a7 = 0x8001;
                if (var_a4 != 0) {
                    var_a4 = 0x40;
                    goto block_3;
                }
                if (arg0 == 0x8001) {
                    var_a4 = 0x28;
                    goto block_3;
                }
                goto block_47;
            }
            var_a4 = 0x38;
            if (arg0 == 0x307) {
                goto block_3;
            }
            goto block_47;
        }
        if (var_a7 == 0) {
            var_a5 = arg0 < 0x305U;
            if (arg0 < 0x304U) {
                var_a4 = 0x39;
                goto block_3;
            }
            if (var_a5 == 0) {
                if (var_a4 != 0) {
                    var_a4 = 0x3A;
                    goto block_3;
                }
                goto block_47;
            }
            var_a4 = 0x20;
            if (arg0 == 0x304) {
                goto block_3;
            }
            goto block_47;
        }
        var_a4 = 0;
        if (arg0 != 0) {
            if (arg0 < 2U) {
                var_a4 = 8;
                goto block_3;
            }
            if (arg0 == 0x302) {
                var_a4 = 0x18;
                goto block_3;
            }
block_47:
            __glSetError(0x500, (void *) var_a2, temp_a3, var_a4, var_a5, var_a6, var_a7);
        } else {
block_3:
            var_a5_2 = arg1 < 0x304U;
            if (var_a5_2 == 0) {
                if (arg1 < 0x305U) {
                    var_a5_2 = 0x20;
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    temp_a3->unk724 = arg0;
                    temp_a3->unk728 = arg1;
                    temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                    temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
                if (arg1 >= 0x8002U) {
                    if (arg1 <= 0x8002U) {
                        var_a5_2 = 0x3B;
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        temp_a3->unk724 = arg0;
                        temp_a3->unk728 = arg1;
                        temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                        temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    var_a5_2 = 0x3C;
                    if (arg1 >= 0x8004U) {
                        if (arg1 <= 0x8004U) {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            temp_a3->unk724 = arg0;
                            temp_a3->unk728 = arg1;
                            temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                            temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_55;
                    }
                    if (arg1 == 0x8003) {
                        var_a5_2 = 0x30;
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        temp_a3->unk724 = arg0;
                        temp_a3->unk728 = arg1;
                        temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                        temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_55;
                }
                var_a6 = arg1 < 0x8001U;
                var_a7 = arg1 > 0x8001U;
                if (var_a6 == 0) {
                    var_a5_2 = 0x28;
                    if (var_a7 == 0) {
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        temp_a3->unk724 = arg0;
                        temp_a3->unk728 = arg1;
                        temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                        temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_55;
                }
                var_a2 = 0x305;
                var_a5_2 = 0x3A;
                if (arg1 == 0x305) {
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    temp_a3->unk724 = arg0;
                    temp_a3->unk728 = arg1;
                    temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                    temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
                goto block_55;
            }
            if (arg1 >= 0x301U) {
                if (arg1 < 0x302U) {
                    var_a5_2 = 0x38;
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    temp_a3->unk724 = arg0;
                    temp_a3->unk728 = arg1;
                    temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                    temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
                if (arg1 >= 0x303U) {
                    if (var_a5_2 != 0) {
                        var_a5_2 = 0x39;
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        temp_a3->unk724 = arg0;
                        temp_a3->unk728 = arg1;
                        temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                        temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_55;
                }
                var_a5_2 = 0x302;
                if (arg1 == 0x302) {
                    var_a5_2 = 0x18;
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    temp_a3->unk724 = arg0;
                    temp_a3->unk728 = arg1;
                    temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                    temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
                goto block_55;
            }
            var_a5_2 = 0;
            if (arg1 != 0) {
                if (arg1 < 2U) {
                    var_a5_2 = 8;
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    temp_a3->unk724 = arg0;
                    temp_a3->unk728 = arg1;
                    temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                    temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
                if (arg1 == 0x300) {
                    var_a5_2 = 0x10;
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    temp_a3->unk724 = arg0;
                    temp_a3->unk728 = arg1;
                    temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                    temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
block_55:
                __glSetError(0x500, (void *) var_a2, temp_a3, var_a4, var_a5_2, var_a6, var_a7);
            } else {
                temp_a3->unk724 = arg0;
                temp_a3->unk728 = arg1;
                temp_a3->unk7C34 = (s32) ((var_a5_2 & 0x3F) | ((((var_a4 << 6) & 0x1FC0) | (temp_a3->unk7C34 & ~0x1FC0)) & ~0x3F));
                temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
                *(void *)0x1018 = 2;
            }
        }
    } else {
        __glSetError(0x502, temp_a3);
    }
}

void __glOdyim_BlendEquationEXT(u32 arg0, s32 arg7) {
    s32 var_a3;
    s32 var_a7;
    void *temp_a2;

    var_a7 = arg7;
    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a3 = 6;
        if (arg0 >= 0x800AU) {
            if (arg0 <= 0x800AU) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                temp_a2->unk72C = arg0;
                temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
                *(void *)0x1018 = 2;
                return;
            }
            if (arg0 >= 0x8320U) {
                var_a3 = 4;
                if (arg0 <= 0x8320U) {
                    var_a3 = 3;
                    /* Duplicate return node #3. Try simplifying control flow for better match */
                    temp_a2->unk72C = arg0;
                    temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
                if (arg0 == 0x8321) {
                    /* Duplicate return node #3. Try simplifying control flow for better match */
                    temp_a2->unk72C = arg0;
                    temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
                    temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
                    *(void *)0x1018 = 2;
                    return;
                }
                goto block_20;
            }
            var_a3 = 7;
            if (arg0 == 0x800B) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                temp_a2->unk72C = arg0;
                temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
                *(void *)0x1018 = 2;
                return;
            }
            goto block_20;
        }
        var_a7 = arg0 < 0x8007U;
        if (var_a7 == 0) {
            var_a3 = 2;
            if (arg0 <= 0x8007U) {
                var_a3 = 1;
                /* Duplicate return node #3. Try simplifying control flow for better match */
                temp_a2->unk72C = arg0;
                temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
                *(void *)0x1018 = 2;
                return;
            }
            if (arg0 == 0x8008) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                temp_a2->unk72C = arg0;
                temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
                *(void *)0x1018 = 2;
                return;
            }
            goto block_20;
        }
        if (arg0 >= 0x8006U) {
            var_a3 = 0;
            if (arg0 <= 0x8006U) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                temp_a2->unk72C = arg0;
                temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
                *(void *)0x1018 = 2;
                return;
            }
            goto block_20;
        }
        var_a3 = 5;
        if (arg0 == 0xBF1) {
            temp_a2->unk72C = arg0;
            temp_a2->unk7C34 = (s32) (((var_a3 << 0xD) & 0xE000) | (temp_a2->unk7C34 & ~0xE000));
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 1);
            *(void *)0x1018 = 2;
            return;
        }
block_20:
        __glSetError(0x500, temp_a2, (void *) var_a3, 2, var_a7);
    } else {
        __glSetError(0x502, temp_a2);
    }
}

void __glOdyim_ColorMask(s8 arg0, s8 arg1, s8 arg2, s8 arg3) {
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a5->unk75D = arg1;
        temp_a5->unk75F = arg3;
        temp_a5->unk75E = arg2;
        temp_a5->unk75C = arg0;
        temp_a5->unk7C5C = (s32) ((((arg3 != 0) << 0x17) & 0x800000) | (((((arg2 != 0) << 0x16) & 0x400000) | (((((arg1 != 0) << 0x15) & 0x200000) | (((((arg0 != 0) << 0x14) & 0x100000) | (temp_a5->unk7C5C & ~0x100000)) & ~0x200000)) & ~0x400000)) & ~0x800000));
        temp_a5->unk16960 = (s32) (temp_a5->unk16960 | 0x80);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, temp_a5);
}

void __glOdyim_ColorMaterial(s32 arg0, s32 arg1) {
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError(0x500, (void *)0x404, (void *)0x405, 0x408, 0x1200, 0x1201, 0x1202);
            break;
        case 0x404:
        case 0x408:
            /* fallthrough */
        case 0x405:
            if ((arg1 != 0x1200) && (arg1 != 0x1201) && (arg1 != 0x1202) && (arg1 != 0x1600) && (arg1 != 0x1602)) {
                __glSetError(0x500, (void *)0x404, (void *)0x405, 0x408, 0x1200, 0x1201, 0x1202);
            } else {
                temp_s0->unk56C = arg1;
                temp_s0->unk568 = arg0;
                if (temp_s0->unk700 & 0x80) {
                    temp_s0->unk2E48(temp_s0, 0x404, 0x405, 0x408, 0x1200, 0x1201, 0x1202);
                    temp_s0->unk2F18(temp_s0);
                }
                __glOdyim_FinishAsyncSGIX((s64) temp_s0);
            }
            break;
        }
    } else {
        __glSetError(0x502, (void *)0x408, (void *)0x1201, 0x1202);
    }
}

void __glOdyim_CullFace(s32 arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError(0x500, (void *)0x405, temp_a2, 0x404, 0x408, 2);
            break;
        case 0x408:
            temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x600);
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
            temp_a2->unk1EC = arg0;
            *(void *)0x1018 = 2;
            temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 4);
            return;
        case 0x405:
            temp_a2->unk7BFC = (s32) ((temp_a2->unk7BFC & ~0x600) | 0x200);
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
            temp_a2->unk1EC = arg0;
            *(void *)0x1018 = 2;
            temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 4);
            return;
        case 0x404:
            temp_a2->unk7BFC = (s32) ((temp_a2->unk7BFC & ~0x600) | 0x400);
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
            temp_a2->unk1EC = arg0;
            *(void *)0x1018 = 2;
            temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 4);
            return;
        }
    } else {
        __glSetError(0x502, temp_a2, (void *)2);
    }
}

void __glOdyim_DepthFunc(u32 arg0, s64 arg3) {
    s32 temp_a1;
    s64 var_a3;
    void *temp_a2;

    var_a3 = arg3;
    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = arg0 < 0x200U;
        if (temp_a1 == 0) {
            var_a3 = arg0 < 0x208U;
            if (var_a3 != 0) {
                temp_a2->unk660 = arg0;
                temp_a2->unk7C30 = (s32) ((temp_a2->unk7C30 & ~7) | (arg0 & 7));
                if (temp_a2->unk9830 != 0) {
                    temp_a2->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x10420;
                HQ2_READ_FIFO = temp_a2->unk7C30;
                temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x800);
                *(void *)0x1018 = 2;
                return;
            }
        }
        __glSetError(0x500, (void *) temp_a1, temp_a2, var_a3, -8);
    } else {
        __glSetError(0x502, temp_a2, (void *)-8);
    }
}

void __glOdyim_DepthMask(s8 arg0) {
    s32 var_a0;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a2->unk664 = arg0;
        if ((temp_a2->unkC99 == 0) || (var_a0 = 1, (arg0 == 0))) {
            var_a0 = 0;
        }
        temp_a2->unk7C5C = (s32) (((var_a0 << 0x18) & 0x01000000) | (temp_a2->unk7C5C & ~0x01000000));
        temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 0x80);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, temp_a2);
}

/*
Decompilation failure in function __glOdyim_ReadBuffer:

Unable to determine jump table for jr instruction at ody_attrib.s line 7546.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_DrawBuffer(u32 arg0, s32 arg1, s32 arg2, s64 arg3, s32 arg4, s64 arg5, u8 arg6, s32 arg7) {
    ? var_a2_2;
    s32 temp_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    s64 var_a3;
    s64 var_a5;
    u8 var_a6;
    void *temp_s1;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = arg0 < 0x406U;
        if (temp_s1->unkC97 != 0) {
            var_a1 = arg0 < 0x407U;
            if (temp_a0 == 0) {
                var_a6 = arg0 < 0x40AU;
                if (var_a1 != 0) {
                    var_a1 = 1;
                    var_a2_2 = 0;
                    var_a4 = 0;
                    var_a3 = temp_s1->unk7B74 != 0;
                    goto block_5;
                }
                var_a7 = arg0 < 0x40BU;
                if (var_a6 == 0) {
                    if (var_a7 == 0) {
                        if (arg0 >= 0x40CU) {
                            if (arg0 < 0x40DU) {
                                goto block_15;
                            }
                            goto block_39;
                        }
                        if (arg0 != 0x40B) {
                            goto block_39;
                        }
                        goto block_15;
                    }
                    goto block_15;
                }
                var_a4 = arg0 < 0x408U;
                var_a5 = arg0 < 0x409U;
                if (var_a4 == 0) {
                    if (var_a5 != 0) {
                        var_a6 = temp_s1->unk7B74;
                        var_a1 = 1;
                        var_a2_2 = 1;
                        var_a3 = (var_a6 == 0) ? 0 : 1;
                        var_a4 = (var_a6 == 0) ? 0 : 1;
                        goto block_5;
                    }
                    if (arg0 != 0x409) {
                        goto block_38;
                    }
block_15:
                    var_a4 = 0;
                    if ((arg0 - 0x409) < temp_s1->unkCE0) {
                        var_a2_2 = 0;
                        var_a3 = 0;
                        var_a1 = 0;
                        goto block_5;
                    }
                    goto block_57;
                }
                var_a5 = 0x407;
                if (arg0 == 0x407) {
                    var_a2_2 = 1;
                    var_a3 = 0;
                    var_a1 = 0;
                    var_a4 = temp_s1->unk7B74 != 0;
                    goto block_5;
                }
                goto block_39;
            }
            var_a4 = arg0 < 0x402U;
            var_a5 = arg0 < 0x403U;
            if (var_a4 == 0) {
                var_a7 = arg0 < 0x404U;
                if (var_a5 != 0) {
                    var_a4 = 0;
                    var_a2_2 = 0;
                    var_a3 = 1;
                    var_a1 = 0;
                    goto block_5;
                }
                var_a5 = 0x403;
                if (var_a7 == 0) {
                    if (arg0 < 0x405U) {
                        var_a4 = 0;
                        var_a1 = 1;
                        var_a3 = 0;
                        var_a2_2 = 1;
                        goto block_5;
                    }
                    if (arg0 == 0x405) {
                        var_a3 = 1;
                        var_a2_2 = 0;
                        var_a4 = 1;
                        var_a1 = 0;
                        goto block_5;
                    }
                    goto block_39;
                }
                if (arg0 == 0x403) {
                    var_a4 = 1;
                    var_a2_2 = 0;
                    var_a3 = 0;
                    var_a1 = 0;
                    goto block_5;
                }
                goto block_39;
            }
            if (arg0 >= 0x400U) {
                var_a4 = 0;
                if (arg0 < 0x401U) {
                    var_a2_2 = 0;
                    var_a3 = 0;
                    var_a1 = 1;
                    goto block_5;
                }
                var_a6 = 0x401;
                var_a4 = 0;
                if (arg0 == 0x401) {
                    var_a2_2 = 1;
                    var_a3 = 0;
                    var_a1 = 0;
                    goto block_5;
                }
                goto block_38;
            }
            var_a4 = 0;
            if (arg0 == 0) {
                var_a2_2 = 0;
                var_a3 = 0;
                var_a1 = 0;
block_5:
                temp_s1->unk760 = arg0;
                /* Duplicate return node #6. Try simplifying control flow for better match */
                __glOdysseySetDrawbuf(temp_s1, (void *) var_a1, var_a2_2, var_a3, (void *) var_a4, var_a5, (s32) var_a6, var_a7);
                temp_s1->unk764 = arg0;
                return;
            }
block_38:
block_39:
            __glSetError(0x500, (void *) var_a1, (void *) var_a4, var_a5, (s32) var_a6, var_a7);
        } else if (temp_s1->unkC96 != 0) {
            if (temp_a0 == 0) {
                if (arg0 >= 0x407U) {
                    if (arg0 >= 0x40AU) {
                        if (arg0 >= 0x40BU) {
                            var_a1 = arg0 < 0x40DU;
                            if (arg0 >= 0x40CU) {
                                if (var_a1 != 0) {
                                    goto block_27;
                                }
                                goto block_77;
                            }
                            if (arg0 != 0x40B) {
                                goto block_77;
                            }
                            goto block_27;
                        }
                        goto block_27;
                    }
                    var_a5 = 0x407;
                    switch (arg0) {                 /* irregular */
                    case 0x409:
block_27:
                        var_a2 = (arg0 - 0x409) < temp_s1->unkCE0;
                        var_a3 = 0;
                        if (var_a2 != 0) {
                            temp_s1->unk760 = arg0;
                            var_a1 = 0;
                            goto block_47;
                        }
                        goto block_57;
                    }
                } else {
                    var_a1 = 1;
                    temp_s1->unk760 = 0x408U;
                    var_a3 = temp_s1->unk7B74 != 0;
                    goto block_47;
                }
            } else {
                var_a7 = arg0 < 0x400U;
                if (arg0 >= 0x402U) {
                    if (arg0 < 0x403U) {
                        var_a3 = 1;
                        goto block_43;
                    }
                    var_a1 = arg0 < 0x404U;
                    if (var_a1 == 0) {
                        var_a2 = arg0 < 0x405U;
                        if (var_a2 != 0) {
                            goto block_72;
                        }
                        var_a3 = 1;
                        if (arg0 != 0x405) {
                            goto block_77;
                        }
block_43:
                        temp_s1->unk760 = 0x405U;
                        var_a1 = 0;
                        goto block_47;
                    }
                    if (arg0 != 0x403) {
                        goto block_77;
                    }
                    goto block_57;
                }
                if (var_a7 == 0) {
                    if (arg0 >= 0x401U) {
                        if (arg0 == 0x401) {
                            goto block_57;
                        }
                        goto block_77;
                    }
block_72:
                    var_a1 = 1;
                    var_a3 = 0;
                    temp_s1->unk760 = 0x404U;
                    goto block_47;
                }
                if (arg0 == 0) {
                    var_a3 = 0;
                    temp_s1->unk760 = 0U;
                    var_a1 = 0;
                    goto block_47;
                }
block_77:
                __glSetError(0x500, (void *) var_a1, (void *) var_a2, var_a3, (s32) var_a5, var_a7);
            }
        } else {
            if (temp_a0 == 0) {
                var_a1 = 1;
                if (arg0 >= 0x407U) {
                    if (arg0 >= 0x40AU) {
                        if (arg0 >= 0x40BU) {
                            if (arg0 >= 0x40CU) {
                                if (arg0 < 0x40DU) {
                                    goto block_68;
                                }
                                goto block_97;
                            }
                            var_a5 = 0x40B;
                            if (arg0 != (u32) 0x40B) {
                                goto block_97;
                            }
                            goto block_68;
                        }
                        goto block_68;
                    }
                    var_a3 = 0x407;
                    if (arg0 >= 0x408U) {
                        var_a1 = 1;
                        if (arg0 >= 0x409U) {
                            var_a2 = 0x409;
                            if (arg0 != 0x409) {
                                goto block_97;
                            }
block_68:
                            if ((arg0 - 0x409) < temp_s1->unkCE0) {
                                temp_s1->unk760 = arg0;
                                var_a1 = 0;
                                goto block_87;
                            }
                            goto block_57;
                        }
                        goto block_86;
                    }
                    if (arg0 != (u32) 0x407) {
                        goto block_97;
                    }
                    goto block_57;
                }
                goto block_86;
            }
            var_a6 = arg0 < 0x402U;
            if (var_a6 == 0) {
                var_a7 = arg0 < 0x403U;
                if (var_a7 == 0) {
                    if (arg0 >= 0x404U) {
                        var_a1 = 1;
                        if (arg0 >= 0x405U) {
                            if (arg0 != 0x405) {
                                goto block_97;
                            }
                            goto block_57;
                        }
                        goto block_86;
                    }
                    if (arg0 != 0x403) {
                        goto block_97;
                    }
                    goto block_57;
                }
                goto block_57;
            }
            if (arg0 >= 0x400U) {
                var_a1 = 1;
                if (arg0 < 0x401U) {
block_86:
                    temp_s1->unk760 = 0x404U;
                    goto block_87;
                }
                var_a4 = 0x401;
                if (arg0 != 0x401) {
                    goto block_97;
                }
            case 0x407:
block_57:
                __glSetError(0x502, (void *) var_a1, (void *) var_a2, var_a3, var_a4, (s32) var_a5, (s32) var_a6, (u64) var_a7);
            } else {
                if (arg0 == 0) {
                    temp_s1->unk760 = 0U;
                    var_a1 = 0;
block_87:
                    var_a3 = 0;
block_47:
                    var_a4 = 0;
                    var_a2_2 = 0;
                    __glOdysseySetDrawbuf(temp_s1, (void *) var_a1, var_a2_2, var_a3, (void *) var_a4, var_a5, (s32) var_a6, var_a7);
                    temp_s1->unk764 = arg0;
                    return;
                }
block_97:
                __glSetError(0x500, (void *) var_a1, (void *) var_a2, var_a3, var_a4, (s32) var_a5, (s32) var_a6, (u64) var_a7);
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_FrontFace(s32 arg0) {
    s32 temp_a5;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    temp_a5 = ~0x800000;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x900) {
            if (arg0 != 0x901) {
                __glSetError(0x500, (void *)0x900, temp_a2, 0x901, temp_a5);
            } else {
                temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC & temp_a5);
                /* Duplicate return node #5. Try simplifying control flow for better match */
                temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
                temp_a2->unk1F0 = arg0;
                *(void *)0x1018 = 2;
                temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 4);
            }
        } else {
            temp_a2->unk7BFC = (s32) (temp_a2->unk7BFC | 0x800000);
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
            temp_a2->unk1F0 = arg0;
            *(void *)0x1018 = 2;
            temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 4);
        }
    } else {
        __glSetError(0x502, temp_a2, (void *) temp_a5);
    }
}

void __glOdyim_IndexMask(s32 arg0) {
    s32 temp_a1;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = temp_a2->unk7848 & arg0;
        temp_a2->unk758 = temp_a1;
        temp_a2->unk7C5C = (s32) ((temp_a1 & 0xFFF) | (temp_a2->unk7C5C & ~0xFFF));
        temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 0x80);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, temp_a2);
}

void __glOdyim_LineStipple(s16 arg0, s16 arg1) {
    s16 temp_a5;
    s16 temp_v1;
    s32 temp_a7;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a5 = (arg0 >= 1) ? arg0 : 1;
        temp_a4->unk1E0 = arg1;
        temp_v1 = (temp_a5 <= 0x100) ? temp_a5 : 0x100;
        temp_a7 = arg1 & 0xFFFF;
        temp_a4->unk1E2 = temp_v1;
        temp_a4->unk7C44 = (s32) (temp_a7 | (0xFFFF0000 & temp_a4->unk7C44));
        temp_a4->unk7C48 = (s32) (temp_a7 | (0xFFFF0000 & temp_a4->unk7C48));
        temp_a4->unk7C4C = (s32) (((temp_v1 - 1) & 0xFF) | (temp_a4->unk7C4C & ~0xFF));
        if (temp_a4->unk9830 != 0) {
            temp_a4->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10C48;
        HQ2_READ_FIFO = temp_a4->unk7C44;
        HQ2_READ_FIFO = temp_a4->unk7C48;
        HQ2_READ_FIFO = temp_a4->unk7C4C;
        return;
    }
    __glSetError(0x502, temp_a4, (void *)1);
}

f32 __glOdyim_LineWidth(f32 fparg0) {
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 var_f0;
    f64 temp_f4;
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (!(fparg0 <= 0.0f)) {
            temp_f4 = (f64) fparg0;
            temp_a1->unk1D4 = fparg0;
            if (temp_f4 < 1.0) {
                temp_a1->unk1DC = 1;
            } else {
                temp_a1->unk1DC = (s32) (temp_f4 + 0.5);
            }
            temp_f4_2 = temp_a1->unkEAC;
            if (fparg0 < temp_f4_2) {
                temp_a1->unk1D8 = temp_f4_2;
            } else {
                temp_f4_3 = temp_a1->unkEB0;
                if (temp_f4_3 < fparg0) {
                    temp_a1->unk1D8 = temp_f4_3;
                } else {
                    temp_a1->unk1D8 = fparg0;
                }
            }
            temp_a1->unk16964 = (s32) (temp_a1->unk16964 | 0x800);
            *(void *)0x1018 = 2;
            return second half of f64;
        }
        var_f0 = __glSetError(0x501, temp_a1, (void *)1);
        /* Duplicate return node #11. Try simplifying control flow for better match */
        return var_f0;
    }
    var_f0 = __glSetError(0x502, temp_a1, (void *)1);
    return var_f0;
}

void __glOdyim_LogicOp(u32 arg0) {
    s32 temp_a1;
    s64 temp_a3;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = arg0 < 0x1500U;
        temp_a3 = arg0 < 0x1510U;
        if ((temp_a1 == 0) && (temp_a3 != 0)) {
            temp_a2->unk740 = arg0;
            temp_a2->unk7C40 = (s32) ((temp_a2->unk7C40 & ~0xF) | (arg0 & 0xF));
            if (temp_a2->unk9830 != 0) {
                temp_a2->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10422;
            HQ2_READ_FIFO = temp_a2->unk7C40;
            return;
        }
        __glSetError(0x500, (void *) temp_a1, temp_a2, temp_a3, -0x10);
    } else {
        __glSetError(0x502, temp_a2, (void *)-0x10);
    }
}

void ApplyParameterF(s32 arg0, u32 arg1, void *arg2) {
    s32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f5;
    f64 var_f4_2;
    f64 var_f5;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_f4;
    s32 var_t0;
    s32 var_t1;
    s32 var_t2;
    void *temp_a2;
    void *temp_s2;

    temp_s2 = *(void **)0x1010;
    if (arg1 >= 0x1600U) {
        temp_a5 = arg1 < 0x1602U;
        if (arg1 < 0x1601U) {
            var_a1 = 8;
        } else {
            temp_a6 = arg1 < 0x1603U;
            if (temp_a5 == 0) {
                if (temp_a6 != 0) {
                    var_a1 = 3;
                } else if (arg1 != 0x1603) {
                    var_a1 = 0;
                } else {
                    if (temp_s2->unkC94 == 0) {
                        var_f4 = 0;
                        if (arg2->unk8 != 0.0f) {
                            sp0 = second half of f64;
                            var_f5 = (f64) ((second half of f64) - (second half of f64)) + 0.5;
                            var_f4 = second half of f64;
                            sp4 = (f32) ((f64) (arg2->unk4 - arg2->unk0) + 0.5);
                        } else {
                            sp0 = 0.0f;
                            var_f5 = 0.0;
                            sp4 = 0.0f;
                        }
                        spC = var_f4;
                        sp8 = (f32) var_f5;
                        if (arg0 != 0) {
                            HQ2_READ_FIFO = 0xC080D000 | (0x2F | (6 << 0x18));
                        } else {
                            HQ2_READ_FIFO = 0xC080D000 | (0x35 | (0xA << 0x18));
                        }
                        HQ2_READ_FIFO = sp->unk0;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                        if (arg0 != 0) {
                            HQ2_READ_FIFO = 0xC080D000 | (0x30 | (7 << 0x18));
                        } else {
                            HQ2_READ_FIFO = 0xC080D000 | (0x36 | (0xB << 0x18));
                        }
                        HQ2_READ_FIFO = sp->unk4;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                        if (arg0 != 0) {
                            HQ2_READ_FIFO = 0xC080D000 | (0x31 | (8 << 0x18));
                        } else {
                            HQ2_READ_FIFO = 0xC080D000 | (0x37 | (0xC << 0x18));
                        }
                        HQ2_READ_FIFO = sp->unk8;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                        if (arg0 != 0) {
                            HQ2_READ_FIFO = 0xC080D000 | (0x32 | (9 << 0x18));
                        } else {
                            HQ2_READ_FIFO = 0xC080D000 | (0x38 | (0xD << 0x18));
                        }
                        HQ2_READ_FIFO = sp->unkC;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                        HQ2_READ_FIFO = var_f4;
                    }
                    var_a1 = 0;
                }
            } else if (arg1 != 0x1601) {
                var_a1 = 0;
            } else {
                var_f4_2 = (f64) arg2->unk0;
                if (var_f4_2 < 2.5) {
                    var_f4_2 = M2C_ERROR(/* unknown instruction: movt.d $f4, $f5, $fcc1 */);
                }
                temp_a2 = ((arg0 == 0) * 4) + temp_s2;
                temp_f5 = (f32) sqrt(var_f4_2);
                if (temp_a2->unk9814 != temp_f5) {
                    temp_a2->unk9814 = temp_f5;
                    temp_a3 = (arg0 == 0) ? 0xD080C439 : 0xD080C433;
                    HQ2_READ_FIFO = temp_a3;
                    HQ2_READ_FIFO = (bitwise s32) temp_f5;
                    HQ2_READ_FIFO = 0x908091EA;
                    HQ2_READ_FIFO = temp_s2->unk9814;
                    HQ2_READ_FIFO = (bitwise s32) -(bitwise f32) temp_s2->unk9814;
                    HQ2_READ_FIFO = temp_s2->unk9818;
                    HQ2_READ_FIFO = (bitwise s32) -(bitwise f32) temp_s2->unk9818;
                    __glOdysseySetProgram(temp_s2, temp_s2->unkA6A8, 0x908091EA, temp_a3, 0xD080C439, temp_a5, temp_a6, 0x10000);
                }
                var_a1 = 0;
            }
        }
    } else if (arg1 >= 0x1201U) {
        if (arg1 < 0x1202U) {
            var_a1 = 2;
        } else {
            var_a1 = 4;
            if (arg1 != 0x1202) {
                var_a1 = 0;
            }
        }
    } else {
        var_a1 = 1;
        if (arg1 != 0x1200) {
            var_a1 = 0;
        }
    }
    var_a1_2 = (temp_s2->unkC94 == 0) ? 0 : var_a1;
    if (var_a1_2 != 0) {
        var_a4 = 0;
        var_a5 = 6;
        var_a6 = 0x2F;
        var_t1 = 0xA;
        var_t0 = 0x35;
        var_t2 = 1 << 0;
loop_9:
        temp_a4 = var_a4 + 1;
        temp_a5_2 = var_a5 + 1;
        temp_a6_2 = var_a6 + 1;
        if (var_t2 & var_a1_2) {
            var_a1_2 -= var_t2;
            if (arg0 != 0) {
                HQ2_READ_FIFO = 0xC080D000 | (var_a6 | (var_a5 << 0x18));
            } else {
                HQ2_READ_FIFO = 0xC080D000 | (var_t0 | (var_t1 << 0x18));
            }
            HQ2_READ_FIFO = (bitwise s32) arg2->unk0;
            HQ2_READ_FIFO = (bitwise s32) arg2->unk4;
            HQ2_READ_FIFO = (bitwise s32) arg2->unk8;
            HQ2_READ_FIFO = arg2->unkC;
        }
        temp_t0 = var_t0 + 1;
        temp_t1 = var_t1 + 1;
        if (var_a1_2 != 0) {
            temp_t2 = 1 << temp_a4;
            var_a4 = temp_a4 + 1;
            if (temp_t2 & var_a1_2) {
                var_a1_2 -= temp_t2;
                if (arg0 == 0) {
                    HQ2_READ_FIFO = 0xC080D000 | (temp_t0 | (temp_t1 << 0x18));
                } else {
                    HQ2_READ_FIFO = 0xC080D000 | (temp_a6_2 | (temp_a5_2 << 0x18));
                }
                HQ2_READ_FIFO = (bitwise s32) arg2->unk0;
                HQ2_READ_FIFO = (bitwise s32) arg2->unk4;
                HQ2_READ_FIFO = (bitwise s32) arg2->unk8;
                HQ2_READ_FIFO = arg2->unkC;
            }
            var_t0 = temp_t0 + 1;
            var_t1 = temp_t1 + 1;
            var_a6 = temp_a6_2 + 1;
            var_t2 = 1 << var_a4;
            var_a5 = temp_a5_2 + 1;
            if (var_a1_2 != 0) {
                goto loop_9;
            }
        }
    }
}

void __glOdyim_Materialfv(s32 arg0, s32 arg1, f32 *arg2) {
    s32 sp4C;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 var_s0;
    s64 temp_v0;
    void *temp_at;

    sp18 = (s64) arg2;
    temp_at = *(void **)0x1010;
    sp10 = (s64) temp_at;
    sp4C = arg1;
    sp8 = (s64) temp_at->unk56C;
    var_s0 = arg0;
    sp0 = (s64) temp_at->unk568;
    temp_v0 = __glErrorCheckMaterial(0x19BC90, *arg2);
    if (temp_v0 != 0) {
        __glSetError(temp_v0);
    } else {
        M2C_ERROR(/* Read from unset register $t9 */)(var_s0, sp4C, sp18);
        if (sp10->unk700 & 0x80) {
            if (sp8 != sp4C) {
                if (sp8 != 0x1602) {
                    goto block_7;
                }
                if ((sp4C != 0x1200) && (sp4C != 0x1201)) {
block_7:
                    goto block_8;
                }
                goto block_15;
            }
block_15:
            if ((var_s0 != sp0) && (sp0 != 0x408)) {
                var_s0 = ((0x408 ^ var_s0) == 0) ? ((sp0 != 0x404) ? 0x404 : 0x405) : var_s0;
block_8:
                if (((var_s0 == sp0) || (sp0 == 0x408)) && (sp4C == 0x1602)) {
                    sp4C = ((0x1200 ^ sp8) != 0) ? ((sp8 != 0x1201) ? sp4C : 0x1200) : 0x1201;
                }
                goto block_11;
            }
        } else {
block_11:
            switch (var_s0) {                       /* irregular */
            case 0x408:
                __glOdyim_LogicOp(1U, sp4C, sp18);
                __glOdyim_LogicOp(0U, sp4C, sp18);
                break;
            case 0x404:
                __glOdyim_LogicOp(1U, sp4C, sp18);
                break;
            case 0x405:
                __glOdyim_LogicOp(0U, sp4C, sp18);
                break;
            }
        }
    }
}

void __glOdyim_Materialf(s32 arg1, f32 fparg2) {
    f32 sp20;

    sp20 = fparg2;
    if (arg1 != 0x1601) {
        __glSetError(0x500);
    } else {
        __glOdyim_Materialfv((s32) &sp20);
    }
}

void ApplyParameterI(s32 arg0, u32 arg1, void *arg2) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f11;
    f64 var_f4;
    f64 var_f5;
    s32 temp_a0;
    s32 temp_a5;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    s32 var_t3;
    void *temp_s1;
    void *var_s4;

    temp_s1 = *(void **)0x1010;
    if (arg1 >= 0x1600U) {
        if (arg1 < 0x1601U) {
            var_a4 = 8;
            goto block_3;
        }
        temp_a5 = arg1 < 0x1602U;
        if (temp_a5 == 0) {
            if (arg1 < 0x1603U) {
                var_a4 = 3;
                goto block_3;
            }
            var_a4 = 0;
            if (arg1 != 0x1603) {
                goto block_3;
            }
            if (temp_s1->unkC94 == 0) {
                temp_a0 = arg2->unk8;
                if (temp_a0 != 0) {
                    temp_v1 = arg2->unk0;
                    sp0 = second half of f64;
                    var_f5 = (f64) (temp_a0 - temp_v1) + 0.5;
                    sp4 = (f32) ((f64) (arg2->unk4 - temp_v1) + 0.5);
                } else {
                    var_f5 = 0.0;
                    sp4 = 0.0f;
                    sp0 = 0.0f;
                }
                sp8 = (f32) var_f5;
                spC = 0.0f;
                if (arg0 != 0) {
                    HQ2_READ_FIFO = 0xC080D000 | (0x2F | (6 << 0x18));
                } else {
                    HQ2_READ_FIFO = 0xC080D000 | (0x35 | (0xA << 0x18));
                }
                HQ2_READ_FIFO = sp->unk0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                if (arg0 != 0) {
                    HQ2_READ_FIFO = 0xC080D000 | (0x30 | (7 << 0x18));
                } else {
                    HQ2_READ_FIFO = 0xC080D000 | (0x36 | (0xB << 0x18));
                }
                HQ2_READ_FIFO = sp->unk4;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                if (arg0 != 0) {
                    HQ2_READ_FIFO = 0xC080D000 | (0x31 | (8 << 0x18));
                } else {
                    HQ2_READ_FIFO = 0xC080D000 | (0x37 | (0xC << 0x18));
                }
                HQ2_READ_FIFO = sp->unk8;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                if (arg0 != 0) {
                    HQ2_READ_FIFO = 0xC080D000 | (0x32 | (9 << 0x18));
                } else {
                    HQ2_READ_FIFO = 0xC080D000 | (0x38 | (0xD << 0x18));
                }
                HQ2_READ_FIFO = sp->unkC;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
                HQ2_READ_FIFO = 0;
            }
            var_s4 = temp_s1 + 0x10000;
            var_a4 = 0;
        } else {
            var_s4 = temp_s1 + 0x10000;
            if (arg1 != 0x1601) {
                var_a4 = 0;
            } else {
                var_f4 = (f64) (f32) arg2->unk0;
                if (var_f4 < 2.5) {
                    var_f4 = M2C_ERROR(/* unknown instruction: movt.d $f4, $f5, $fcc1 */);
                }
                temp_f11 = (f32) sqrt(var_f4);
                (temp_s1 + ((arg0 == 0) * 4))->unk9814 = temp_f11;
                HQ2_READ_FIFO = (arg0 == 0) ? 0xD080C439 : 0xD080C433;
                HQ2_READ_FIFO = (bitwise s32) temp_f11;
                HQ2_READ_FIFO = 0x908091EA;
                HQ2_READ_FIFO = temp_s1->unk9814;
                HQ2_READ_FIFO = (bitwise s32) -(bitwise f32) temp_s1->unk9814;
                HQ2_READ_FIFO = temp_s1->unk9818;
                HQ2_READ_FIFO = (bitwise s32) -(bitwise f32) temp_s1->unk9818;
                __glOdysseySetProgram(temp_s1, temp_s1->unkA6A8, temp_a5);
                var_a4 = 0;
            }
        }
    } else if (arg1 >= 0x1201U) {
        var_s4 = temp_s1 + 0x10000;
        if (arg1 < 0x1202U) {
            var_a4 = 2;
block_3:
            var_s4 = temp_s1 + 0x10000;
        } else {
            var_a4 = ((arg1 ^ 0x1202) == 0) ? 4 : 0;
        }
    } else {
        var_s4 = temp_s1 + 0x10000;
        var_a4 = ((arg1 ^ 0x1200) == 0) ? 1 : 0;
    }
    if (var_s4->unk-67D0 != 0) {
        var_s4->unk-67D0 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x13C4D;
    HQ2_READ_FIFO = temp_s1->unk7C70;
    HQ2_READ_FIFO = temp_s1->unk7C74;
    HQ2_READ_FIFO = temp_s1->unk7C78;
    HQ2_READ_FIFO = temp_s1->unk7C7C;
    HQ2_READ_FIFO = temp_s1->unk7C80;
    HQ2_READ_FIFO = temp_s1->unk7C84;
    HQ2_READ_FIFO = temp_s1->unk7C88;
    HQ2_READ_FIFO = temp_s1->unk7C8C;
    HQ2_READ_FIFO = temp_s1->unk7C90;
    HQ2_READ_FIFO = temp_s1->unk7C94;
    HQ2_READ_FIFO = temp_s1->unk7C98;
    HQ2_READ_FIFO = temp_s1->unk7C9C;
    HQ2_READ_FIFO = temp_s1->unk7CA0;
    HQ2_READ_FIFO = temp_s1->unk7CA4;
    HQ2_READ_FIFO = temp_s1->unk7CA8;
    HQ2_READ_FIFO = temp_s1->unk7CAC;
    var_a4_2 = (temp_s1->unkC94 == 0) ? 0 : var_a4;
    if (var_a4_2 != 0) {
        var_a1 = 0;
        var_a6 = 6;
        var_a5 = 0x2F;
        var_t0 = 0xA;
        var_a7 = 0x35;
        var_t3 = 6 << 0x18;
loop_12:
        temp_t3 = var_a5 | var_t3;
        temp_t1 = 1 << var_a1;
        var_a6 += 1;
        temp_v1_2 = temp_t1 & var_a4_2;
        var_a1 += 1;
        var_a5 += 1;
        if (temp_v1_2 != 0) {
            var_a4_2 -= temp_t1;
            if (arg0 == 0) {
                HQ2_READ_FIFO = 0xC080D000 | (var_a7 | (var_t0 << 0x18));
            } else {
                HQ2_READ_FIFO = 0xC080D000 | temp_t3;
            }
            HQ2_READ_FIFO = (bitwise s32) (temp_s1->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f5 */));
            HQ2_READ_FIFO = (bitwise s32) (temp_s1->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f7, $f4, $f7, $f5 */));
            HQ2_READ_FIFO = (bitwise s32) (temp_s1->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f3, $f4, $f3, $f5 */));
            HQ2_READ_FIFO = (bitwise s32) (temp_s1->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f1, $f4, $f1, $f5 */));
        }
        var_t3 = var_a6 << 0x18;
        var_a7 += 1;
        var_t0 += 1;
        if (var_a4_2 != 0) {
            goto loop_12;
        }
    }
}

void __glOdyim_Materialiv(s32 arg0, s32 arg1, s64 arg2) {
    s32 sp4C;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a3;
    s32 var_s0;
    s64 temp_v0;
    void *temp_at;

    sp18 = arg2;
    temp_at = *(void **)0x1010;
    sp10 = (s64) temp_at;
    temp_a3 = *arg2;
    sp4C = arg1;
    sp8 = (s64) temp_at->unk56C;
    var_s0 = arg0;
    sp0 = (s64) temp_at->unk568;
    temp_v0 = __glErrorCheckMaterial(temp_a3, 2.360773e-39f, (f32) temp_a3);
    if (temp_v0 != 0) {
        __glSetError(temp_v0);
    } else {
        __glim_Materialiv(var_s0, sp4C, sp18);
        if (sp10->unk700 & 0x80) {
            if (sp8 != sp4C) {
                if (sp8 != 0x1602) {
                    goto block_6;
                }
                if ((sp4C != 0x1200) && (sp4C != 0x1201)) {
block_6:
                    goto block_7;
                }
                goto block_14;
            }
block_14:
            if ((var_s0 != sp0) && (sp0 != 0x408)) {
                var_s0 = ((0x408 ^ var_s0) == 0) ? ((sp0 != 0x404) ? 0x404 : 0x405) : var_s0;
block_7:
                if (((var_s0 == sp0) || (sp0 == 0x408)) && (sp4C == 0x1602)) {
                    sp4C = ((0x1200 ^ sp8) != 0) ? ((sp8 != 0x1201) ? sp4C : 0x1200) : 0x1201;
                }
                goto block_10;
            }
        } else {
block_10:
            if (var_s0 != 0x404) {
                if (var_s0 != 0x405) {
                    if (var_s0 == 0x408) {
                        __glOdyim_Materialf(1, (bitwise f32) sp4C, sp18);
                        __glOdyim_Materialf(0, (bitwise f32) sp4C, sp18);
                    }
                } else {
                    __glOdyim_Materialf(0, (bitwise f32) sp4C, sp18);
                }
            } else {
                __glOdyim_Materialf(1, (bitwise f32) sp4C, sp18);
            }
        }
    }
}

void __glOdyim_Materiali(s32 arg1, s32 arg2) {
    s32 sp24;

    sp24 = arg2;
    if (arg1 != 0x1601) {
        __glSetError(0x500);
    } else {
        __glOdyim_Materialiv((s32) &sp24);
    }
}

f32 __glOdyim_PointSize(f32 fparg0) {
    f32 temp_f5;
    f32 var_f0;
    f64 temp_f4;
    f64 var_f3;
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_f3 = second half of f64;
        if (!(fparg0 <= 0.0f)) {
            temp_f4 = (f64) fparg0;
            temp_a1->unk1C8 = fparg0;
            if (temp_f4 < 1.0) {
                temp_a1->unk1D0 = 1;
            } else {
                var_f3 = second half of f64;
                temp_a1->unk1D0 = (s32) (temp_f4 + 0.5);
            }
            temp_f5 = temp_a1->unkEA0;
            if (fparg0 < temp_f5) {
                temp_a1->unk1CC = temp_f5;
            } else if (var_f3 < temp_f4) {
                temp_a1->unk1CC = 2.0f;
            } else {
                temp_a1->unk1CC = fparg0;
            }
            temp_a1->unk16964 = (s32) (temp_a1->unk16964 | 0x800);
            *(void *)0x1018 = 2;
            return second half of f64;
        }
        var_f0 = __glSetError(0x501, temp_a1, (void *)1);
        /* Duplicate return node #11. Try simplifying control flow for better match */
        return var_f0;
    }
    var_f0 = __glSetError(0x502, temp_a1, (void *)1);
    return var_f0;
}

void __glOdyim_PolygonMode(s32 arg0, s32 arg1, s32 arg5, s32 arg6) {
    s32 var_a5;
    s32 var_a6;
    void *temp_a3;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg1 != 0x1B02) {
            if (arg1 != 0x1B00) {
                var_a5 = 0x1B01;
                if (arg1 != 0x1B01) {
                    __glSetError(0x500, (void *)0x1B02, temp_a3, 0x1B00, 0x1B01, 2);
                } else {
                    *(void *)0x1018 = 2;
                    var_a6 = temp_a3->unk2E24 | 2;
                    temp_a3->unk2E24 = var_a6;
                    goto block_6;
                }
            } else {
                *(void *)0x1018 = 2;
                temp_a3->unk2E24 = (s32) (temp_a3->unk2E24 | 8);
                goto block_6;
            }
        } else {
block_6:
            switch (arg0) {                         /* irregular */
            default:
                __glSetError(0x500, (void *)0x1B02, temp_a3, 0xFA, var_a5, var_a6, 0x10415);
                break;
            case 0x408:
                temp_a3->unk1E8 = arg1;
block_11:
                temp_a3->unk1E4 = arg1;
block_12:
                *(void *)0x1018 = 2;
                temp_a3->unk2E24 = (s32) (temp_a3->unk2E24 | 4);
                temp_a3->unk7C04 = (s32) ((temp_a3->unk1E8 & 3) | (((temp_a3->unk7C04 & ~0xC) | (((temp_a3->unk1E4 & 3) * 4) & 0xC)) & ~3));
                if (temp_a3->unk9830 != 0) {
                    temp_a3->unk9830 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x10415;
                HQ2_READ_FIFO = temp_a3->unk7C04;
                return;
            case 0x404:
                goto block_11;
            case 0x405:
                temp_a3->unk1E8 = arg1;
                goto block_12;
            }
        }
    } else {
        __glSetError(0x502, temp_a3, (void *)2);
    }
}

void __glOdysseyConvertStipple(void *arg0) {
    s32 *var_a3;
    s32 temp_v0;
    s32 var_a1;
    void *var_a2;

    __glConvertStipple();
    var_a1 = 0;
    var_a3 = arg0 + 0x7BF4;
    var_a2 = arg0 + 0x7570;
    do {
        var_a1 += 2;
        *var_a3 = var_a2->unk0;
        var_a3 -= 8;
        temp_v0 = var_a2->unk4;
        var_a2 += 8;
        var_a3->unk4 = temp_v0;
    } while (var_a1 != 0x20);
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x1043F;
    HQ2_READ_FIFO = arg0->unk7BF8;
    HQ2_READ_FIFO = 0x13C4E;
    HQ2_READ_FIFO = arg0->unk7B78;
    HQ2_READ_FIFO = arg0->unk7B7C;
    HQ2_READ_FIFO = arg0->unk7B80;
    HQ2_READ_FIFO = arg0->unk7B84;
    HQ2_READ_FIFO = arg0->unk7B88;
    HQ2_READ_FIFO = arg0->unk7B8C;
    HQ2_READ_FIFO = arg0->unk7B90;
    HQ2_READ_FIFO = arg0->unk7B94;
    HQ2_READ_FIFO = arg0->unk7B98;
    HQ2_READ_FIFO = arg0->unk7B9C;
    HQ2_READ_FIFO = arg0->unk7BA0;
    HQ2_READ_FIFO = arg0->unk7BA4;
    HQ2_READ_FIFO = arg0->unk7BA8;
    HQ2_READ_FIFO = arg0->unk7BAC;
    HQ2_READ_FIFO = arg0->unk7BB0;
    HQ2_READ_FIFO = arg0->unk7BB4;
    HQ2_READ_FIFO = 0x13C4F;
    HQ2_READ_FIFO = arg0->unk7BB8;
    HQ2_READ_FIFO = arg0->unk7BBC;
    HQ2_READ_FIFO = arg0->unk7BC0;
    HQ2_READ_FIFO = arg0->unk7BC4;
    HQ2_READ_FIFO = arg0->unk7BC8;
    HQ2_READ_FIFO = arg0->unk7BCC;
    HQ2_READ_FIFO = arg0->unk7BD0;
    HQ2_READ_FIFO = arg0->unk7BD4;
    HQ2_READ_FIFO = arg0->unk7BD8;
    HQ2_READ_FIFO = arg0->unk7BDC;
    HQ2_READ_FIFO = arg0->unk7BE0;
    HQ2_READ_FIFO = arg0->unk7BE4;
    HQ2_READ_FIFO = arg0->unk7BE8;
    HQ2_READ_FIFO = arg0->unk7BEC;
    HQ2_READ_FIFO = arg0->unk7BF0;
    HQ2_READ_FIFO = arg0->unk7BF4;
}

void __glOdyim_ShadeModel(u32 arg0) {
    s32 temp_a1;
    s64 temp_a3;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = arg0 < 0x1D00U;
        temp_a3 = arg0 < 0x1D02U;
        if ((temp_a1 == 0) && (temp_a3 != 0)) {
            temp_a2->unk570 = arg0;
            *(void *)0x1018 = 2;
            temp_a2->unk2E24 = (s32) (temp_a2->unk2E24 | 1);
            temp_a2->unk7BFC = (s32) ((((arg0 == 0x1D00) << 0xC) & 0x1000) | (temp_a2->unk7BFC & ~0x1000));
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
            *(void *)0x1018 = 2;
            return;
        }
        __glSetError(0x500, (void *) temp_a1, temp_a2, temp_a3, 2, 0x10000);
    } else {
        __glSetError(0x502, temp_a2, (void *)2, 0x10000);
    }
}

void __glOdyim_StencilFunc(u32 arg0, s16 arg1, s32 arg2, s32 arg3) {
    s16 temp_a1;
    s16 temp_t8;
    s16 temp_t8_2;
    s32 var_a3;
    s64 temp_t2;
    void *temp_a4;

    var_a3 = arg3;
    temp_a4 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = (arg1 < 0) ? 0 : arg1;
        if (arg0 >= 0x200U) {
            var_a3 = arg0 < 0x208U;
            if (var_a3 != 0) {
                temp_t8 = (1 << temp_a4->unkCB0) - 1;
                temp_t2 = temp_t8 & arg2;
                temp_t8_2 = (temp_t8 >= temp_a1) ? temp_a1 : temp_t8;
                temp_a4->unk680 = arg0;
                temp_a4->unk688 = (s16) temp_t2;
                temp_a4->unk686 = temp_t8_2;
                temp_a4->unk7C2C = (s32) (((((s64) (temp_t2 << 0x30) >> 0x30) << 8) & 0xFF00) | (((temp_t8_2 & 0xFF) | (((temp_a4->unk7C2C & ~0x0E000000) | (((arg0 & 0xF) << 0x19) & 0x0E000000)) & ~0xFF)) & ~0xFF00));
                temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x20);
                *(void *)0x1018 = 2;
                return;
            }
        }
        __glSetError(0x500, (void *) temp_a1, (void *) var_a3, (s64) temp_a4, 0x10000);
    } else {
        __glSetError(0x502, temp_a4, (void *)0x10000);
    }
}

void __glOdyim_StencilMask(s32 arg0) {
    s16 var_a2;
    s32 temp_a3;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a3 = (1 << temp_s0->unkCB0) - 1;
        var_a2 = temp_a3 & arg0;
        temp_s0->unk68A = var_a2;
        if (!(temp_s0->unk7B70 & 1) && (var_a2 != 0) && (temp_a3 != var_a2)) {
            temp_s0->unk10(temp_s0, &sub_0daf0000 - 0x7FA8, var_a2, temp_a3, 1);
            var_a2 = (1 << temp_s0->unkCB0) - 1;
        }
        temp_s0->unk7C5C = (s32) ((temp_s0->unk7C5C & ~0xFF000) | ((((temp_s0->unkC9A == 0) ? 0 : var_a2) << 0xC) & 0xFF000));
        temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x80);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, (void *) arg0, (void *)1);
}

void __glOdyim_StencilOp(s32 arg0, s32 arg1, s32 arg2, void *arg3) {
    s32 var_a6;
    s32 var_a7;
    s64 var_a5;
    void *temp_a4;
    void *var_a3;

    var_a3 = arg3;
    temp_a4 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a5 = 0;
        if (arg0 != 0x1E00) {
            var_a3 = (void *)0x1E01;
            if (arg0 != 0) {
                var_a5 = 2;
                if (arg0 != 0x1E01) {
                    if (arg0 != 0x1E02) {
                        var_a5 = 4;
                        if ((arg0 != 0x1E03) && (var_a5 = 5, (arg0 != 0x150A))) {
                            __glSetError(0x500, (void *)0x1E01, temp_a4, 5, 0x1E03, 0x1E00);
                        } else {
                            goto block_8;
                        }
                    } else {
                        var_a5 = 3;
                        goto block_8;
                    }
                } else {
                    goto block_8;
                }
            } else {
                var_a5 = 1;
                goto block_8;
            }
        } else {
block_8:
            var_a6 = 0;
            if (arg1 != 0x1E00) {
                if (arg1 != 0) {
                    var_a6 = 2;
                    if (arg1 != 0x1E01) {
                        if (arg1 != 0x1E02) {
                            var_a6 = 4;
                            if ((arg1 != 0x1E03) && (var_a6 = 5, (arg1 != 0x150A))) {
                                __glSetError(0x500, var_a3, temp_a4, var_a5, 5, 0x1E00);
                            } else {
                                goto block_17;
                            }
                        } else {
                            var_a6 = 3;
                            goto block_17;
                        }
                    } else {
                        goto block_17;
                    }
                } else {
                    var_a6 = 1;
                    goto block_17;
                }
            } else {
block_17:
                if (arg2 != 0x1E00) {
                    var_a7 = 1;
                    switch (arg2) {                 /* irregular */
                    default:
                        var_a7 = 4;
                        if (arg2 != 0x1E03) {
                            var_a7 = 5;
                            if (arg2 != 0x150A) {
                                __glSetError(0x500, var_a3, temp_a4, var_a5, var_a6, 5);
                            } else {
                                /* Duplicate return node #15. Try simplifying control flow for better match */
                                temp_a4->unk694 = arg2;
                                temp_a4->unk68C = arg0;
                                temp_a4->unk690 = arg1;
                                temp_a4->unk7C2C = (s32) (((var_a7 << 0x10) & 0x70000) | ((((var_a6 << 0x13) & 0x380000) | ((((var_a5 << 0x16) & 0x01C00000) | (temp_a4->unk7C2C & ~0x01C00000)) & ~0x380000)) & ~0x70000));
                                temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x20);
                                *(void *)0x1018 = 2;
                                return;
                            }
                        } else {
                            /* Duplicate return node #15. Try simplifying control flow for better match */
                            temp_a4->unk694 = arg2;
                            temp_a4->unk68C = arg0;
                            temp_a4->unk690 = arg1;
                            temp_a4->unk7C2C = (s32) (((var_a7 << 0x10) & 0x70000) | ((((var_a6 << 0x13) & 0x380000) | ((((var_a5 << 0x16) & 0x01C00000) | (temp_a4->unk7C2C & ~0x01C00000)) & ~0x380000)) & ~0x70000));
                            temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x20);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        break;
                    case 0x0:
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        temp_a4->unk694 = arg2;
                        temp_a4->unk68C = arg0;
                        temp_a4->unk690 = arg1;
                        temp_a4->unk7C2C = (s32) (((var_a7 << 0x10) & 0x70000) | ((((var_a6 << 0x13) & 0x380000) | ((((var_a5 << 0x16) & 0x01C00000) | (temp_a4->unk7C2C & ~0x01C00000)) & ~0x380000)) & ~0x70000));
                        temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x20);
                        *(void *)0x1018 = 2;
                        return;
                    case 0x1E01:
                        var_a7 = 2;
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        temp_a4->unk694 = arg2;
                        temp_a4->unk68C = arg0;
                        temp_a4->unk690 = arg1;
                        temp_a4->unk7C2C = (s32) (((var_a7 << 0x10) & 0x70000) | ((((var_a6 << 0x13) & 0x380000) | ((((var_a5 << 0x16) & 0x01C00000) | (temp_a4->unk7C2C & ~0x01C00000)) & ~0x380000)) & ~0x70000));
                        temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x20);
                        *(void *)0x1018 = 2;
                        return;
                    case 0x1E02:
                        var_a7 = 3;
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        temp_a4->unk694 = arg2;
                        temp_a4->unk68C = arg0;
                        temp_a4->unk690 = arg1;
                        temp_a4->unk7C2C = (s32) (((var_a7 << 0x10) & 0x70000) | ((((var_a6 << 0x13) & 0x380000) | ((((var_a5 << 0x16) & 0x01C00000) | (temp_a4->unk7C2C & ~0x01C00000)) & ~0x380000)) & ~0x70000));
                        temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x20);
                        *(void *)0x1018 = 2;
                        return;
                    }
                } else {
                    var_a7 = 0;
                    temp_a4->unk694 = arg2;
                    temp_a4->unk68C = arg0;
                    temp_a4->unk690 = arg1;
                    temp_a4->unk7C2C = (s32) (((var_a7 << 0x10) & 0x70000) | ((((var_a6 << 0x13) & 0x380000) | ((((var_a5 << 0x16) & 0x01C00000) | (temp_a4->unk7C2C & ~0x01C00000)) & ~0x380000)) & ~0x70000));
                    temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x20);
                    *(void *)0x1018 = 2;
                }
            }
        }
    } else {
        __glSetError(0x502, temp_a4);
    }
}

void __glOdyim_Disable(u32 arg0, s32 arg1, s32 arg6, u64 arg7) {
    s64 sp20;
    s64 sp18;
    s64 sp0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a6;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_t3;
    s64 var_a3;
    s64 var_a3_2;
    u64 var_a7;
    void *temp_a0;
    void *var_a2;
    void *var_a4_2;

    var_a1 = arg1;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a5 = 1;
    var_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a3 = arg0 < 0x3003U;
        var_a4 = arg0 < 0xD91U;
        if (var_a3 == 0) {
            if (arg0 >= 0x3004U) {
                var_a1 = arg0 > 0x8079U;
                if (arg0 >= 0x8079U) {
                    if (var_a1 != 0) {
                        var_a4 = arg0 < 0x83EEU;
                        var_a6 = arg0 > 0x83EEU;
                        if (var_a4 == 0) {
                            if (var_a6 == 0) {
                                if (var_a2->unk19DB4 != 0) {
                                    var_a2->unk19DC0 = 1;
                                    var_a2->unk19DB4 = 0U;
                                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x400);
                                    *(void *)0x1018 = 2;
                                }
                            } else {
                                var_a1 = arg0 < 0x840FU;
                                var_a4 = arg0 > 0x840FU;
                                if (var_a1 == 0) {
                                    if (var_a4 != 0) {
                                        var_a6 = arg0 < 0x8412U;
                                        var_a7 = arg0 > 0x8412U;
                                        if (var_a6 == 0) {
                                            var_a3 = 0x8568;
                                            if (var_a7 != 0) {
                                                if (arg0 >= 0x8568U) {
                                                    if (arg0 <= 0x8568U) {
                                                        var_a2->unk704 = (s32) (var_a2->unk704 & ~0x20000);
                                                    } else {
                                                        goto block_48;
                                                    }
                                                } else {
                                                    if (arg0 != 0x8413) {
                                                        goto block_48;
                                                    }
                                                    goto block_148;
                                                }
                                            } else {
                                                goto block_147;
                                            }
                                        } else {
                                            var_a3 = 0x8411;
                                            var_a4 = arg0 < 0x8411U;
                                            var_a6 = 0x8410;
                                            if (var_a4 == 0) {
                                                var_a6 = arg0 > 0x8411U;
                                                if (var_a6 != 0) {
                                                    goto block_48;
                                                }
                                                goto block_148;
                                            }
                                            if (arg0 != 0x8410) {
                                                goto block_48;
                                            }
                                            goto block_148;
                                        }
                                    } else {
                                        goto block_147;
                                    }
                                } else if (arg0 >= 0x840CU) {
                                    var_a3 = 0x840E;
                                    if (arg0 > 0x840CU) {
                                        var_a7 = 0x840D;
                                        if (arg0 >= 0x840EU) {
                                            if (arg0 <= 0x840EU) {
                                                goto block_147;
                                            }
                                            goto block_48;
                                        }
                                        if (arg0 == 0x840D) {
                                            goto block_147;
                                        }
                                        goto block_48;
                                    }
block_147:
block_148:
                                    var_a2->unk1647C = (s32) (var_a2->unk1647C & ~(1 << (arg0 + 0xFFFF7BF4)));
                                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x1C0);
                                    *(void *)0x1018 = 2;
                                } else {
                                    var_a3 = 0x8401;
                                    if (arg0 >= 0x8401U) {
                                        if (arg0 <= 0x8401U) {
                                            var_a2->unk704 = (s32) (var_a2->unk704 & ~0x2000);
                                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x80);
                                            *(void *)0x1018 = 2;
                                        } else {
                                            goto block_48;
                                        }
                                    } else {
                                        var_a4 = 0x8400;
                                        if (arg0 == 0x8400) {
                                            var_a2->unk704 = (s32) (var_a2->unk704 & ~0x1000);
                                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 4);
                                            *(void *)0x1018 = 2;
                                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x1C0);
                                            *(void *)0x1018 = 2;
                                        } else {
                                            goto block_48;
                                        }
                                    }
                                }
                            }
                        } else if (arg0 >= 0x8198U) {
                            if (arg0 > 0x8198U) {
                                if (arg0 >= 0x835CU) {
                                    var_a3 = 0x835E;
                                    if (arg0 > 0x835CU) {
                                        if (arg0 >= 0x835EU) {
                                            if (arg0 <= 0x835EU) {
                                                var_a2->unk718 = (s32) (var_a2->unk718 & ~4);
                                            } else {
                                                goto block_48;
                                            }
                                        } else if (arg0 == 0x835D) {
                                            var_a2->unk718 = (s32) (var_a2->unk718 & ~2);
                                        } else {
                                            goto block_48;
                                        }
                                    } else {
                                        var_a2->unk718 = (s32) (var_a2->unk718 & ~1);
                                    }
                                } else {
                                    var_a3 = 0x8353;
                                    var_a1 = arg0 < 0x8353U;
                                    var_a4 = arg0 > 0x8353U;
                                    if (var_a1 == 0) {
                                        if (var_a4 == 0) {
                                            var_a2->unk704 = (s32) (var_a2->unk704 & ~0x4000);
                                        } else {
                                            goto block_48;
                                        }
                                    } else {
                                        var_a7 = 0x832C;
                                        if (arg0 == 0x832C) {
                                            var_a2->unk718 = (s32) (var_a2->unk718 & ~8);
                                        } else {
                                            goto block_48;
                                        }
                                    }
                                }
                            } else {
                                var_a2->unk704 = (s32) (var_a2->unk704 & ~0x10);
                                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x1000);
                                *(void *)0x1018 = 2;
                            }
                        } else if (arg0 >= 0x80D0U) {
                            var_a3 = 0x80D2;
                            if (arg0 > 0x80D0U) {
                                if (arg0 >= 0x80D2U) {
                                    if (arg0 <= 0x80D2U) {
                                        var_a2->unk704 = (s32) (var_a2->unk704 & ~4);
                                    } else {
                                        goto block_48;
                                    }
                                } else if (arg0 == 0x80D1) {
                                    var_a2->unk704 = (s32) (var_a2->unk704 & ~2);
                                } else {
                                    goto block_48;
                                }
                            } else {
                                var_a2->unk704 = (s32) (var_a2->unk704 & ~1);
                            }
                        } else {
                            var_a3 = 0x80BC;
                            if (arg0 >= 0x80BCU) {
                                if (arg0 <= 0x80BCU) {
                                    var_a2->unk700 = (s32) (var_a2->unk700 & 0x7FFFFFFF);
                                    var_a2->unk7CD4 = (s32) (var_a2->unk7CD4 & ~1);
                                    var_a2->unk16960 = (s32) (var_a2->unk16960 | 0x200);
                                    *(void *)0x1018 = 2;
                                } else {
                                    goto block_48;
                                }
                            } else if (arg0 == 0x8094) {
                                var_a2->unk704 = (s32) (var_a2->unk704 & ~0x20);
                            } else {
                                goto block_48;
                            }
                        }
                    } else {
                        var_a2->unk1528 = (s32) (var_a2->unk1528 & ~0x10);
                        var_a2->unk151C = (s32) (var_a2->unk151C & ~0x08000000);
                    }
                } else if (arg0 >= 0x8011U) {
                    if (arg0 > 0x8011U) {
                        if (arg0 >= 0x806FU) {
                            if (arg0 > 0x806FU) {
                                var_a1 = arg0 < 0x8076U;
                                var_a4 = arg0 > 0x8076U;
                                if (var_a1 == 0) {
                                    var_a3 = 0x8078;
                                    if (var_a4 != 0) {
                                        var_a5 = arg0 < 0x8078U;
                                        if (var_a5 == 0) {
                                            var_a6 = arg0 > 0x8078U;
                                            if (var_a6 == 0) {
                                                var_a2->unk1528 = (s32) (var_a2->unk1528 & ~4);
                                                var_a2->unk151C = (s32) (var_a2->unk151C & ~0x07F00000);
                                            } else {
                                                goto block_48;
                                            }
                                        } else if (arg0 == 0x8077) {
                                            var_a2->unk1528 = (s32) (var_a2->unk1528 & ~8);
                                            var_a2->unk151C = (s32) (var_a2->unk151C & 0x0FFFFFFF);
                                        } else {
                                            goto block_48;
                                        }
                                    } else {
                                        var_a2->unk1528 = (s32) (var_a2->unk1528 & ~2);
                                        var_a2->unk151C = (s32) (var_a2->unk151C & ~0xFF000);
                                    }
                                } else {
                                    var_a3 = 0x8075;
                                    var_a7 = arg0 < 0x8075U;
                                    if (var_a7 == 0) {
                                        if (arg0 <= 0x8075U) {
                                            var_a2->unk1528 = (s32) (var_a2->unk1528 & ~1);
                                            var_a2->unk151C = (s32) (var_a2->unk151C & ~0xF00);
                                        } else {
                                            goto block_48;
                                        }
                                    } else if (arg0 == 0x8074) {
                                        var_a2->unk1528 = (s32) (var_a2->unk1528 & ~0x20);
                                        var_a2->unk151C = (s32) (var_a2->unk151C & ~0xFF);
                                    } else {
                                        goto block_48;
                                    }
                                }
                            } else {
                                var_a2->unk700 = (s32) (var_a2->unk700 & ~0x40000000);
                                var_a2->unk7C00 = (s32) (var_a2->unk7C00 & ~0x20 & ~0xC00);
                                var_a2->unk16960 = (s32) (var_a2->unk16960 | 4);
                                *(void *)0x1018 = 2;
                                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x790);
                                *(void *)0x1018 = 2;
                            }
                        } else {
                            var_a1 = arg0 < 0x802EU;
                            var_a4 = arg0 > 0x802EU;
                            if (var_a1 == 0) {
                                var_a3 = 0x803A;
                                if (var_a4 != 0) {
                                    var_a5 = arg0 < 0x803AU;
                                    var_a6 = arg0 > 0x803AU;
                                    if (var_a5 == 0) {
                                        if (var_a6 == 0) {
                                            var_a2->unk704 = (s32) (var_a2->unk704 & ~0x10000);
                                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 4);
                                            *(void *)0x1018 = 2;
                                        } else {
                                            goto block_48;
                                        }
                                    } else {
                                        var_a1 = 0x8037;
                                        if (arg0 == 0x8037) {
                                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x01000000);
                                            var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x80);
                                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                            *(void *)0x1018 = 2;
                                        } else {
                                            goto block_48;
                                        }
                                    }
                                } else {
                                    var_a2->unk700 = (s32) (var_a2->unk700 & ~0x20000000);
                                }
                            } else {
                                var_a3 = 0x8024;
                                var_a1 = arg0 < 0x8024U;
                                var_a4 = arg0 > 0x8024U;
                                if (var_a1 == 0) {
                                    if (var_a4 == 0) {
                                        var_a2->unk700 = (s32) (var_a2->unk700 & ~0x10000000);
                                    } else {
                                        goto block_48;
                                    }
                                } else {
                                    var_a3 = 0x8012;
                                    if (arg0 == 0x8012) {
                                        var_a2->unk700 = (s32) (var_a2->unk700 & ~0x08000000);
                                        *(void *)0x1018 = 2;
                                        var_a2->unk2E24 = (s32) (var_a2->unk2E24 | 0x10);
                                    } else {
                                        goto block_48;
                                    }
                                }
                            }
                        }
                    } else {
                        var_a2->unk700 = (s32) (var_a2->unk700 & ~0x04000000);
                        *(void *)0x1018 = 2;
                        var_a2->unk2E24 = (s32) (var_a2->unk2E24 | 0x10);
                    }
                } else {
                    var_a3 = arg0 < 0x4003U;
                    if (var_a3 == 0) {
                        var_a3 = arg0 < 0x4006U;
                        if (arg0 >= 0x4004U) {
                            if (var_a3 == 0) {
                                var_t3 = arg0 - 0x4000;
                                if (arg0 >= 0x4007U) {
                                    var_a3 = 0x8010;
                                    var_a1 = arg0 > 0x8010U;
                                    if (arg0 >= 0x8010U) {
                                        if (var_a1 == 0) {
                                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x02000000);
                                            *(void *)0x1018 = 2;
                                            var_a2->unk2E24 = (s32) (var_a2->unk2E24 | 0x10);
                                        } else {
                                            goto block_48;
                                        }
                                    } else {
                                        var_t3 = arg0 - 0x4000;
                                        if (arg0 != 0x4007) {
                                            goto block_48;
                                        }
                                        /* Duplicate return node #97. Try simplifying control flow for better match */
                                        var_a2->unk708 = (s32) (var_a2->unk708 & ~(1 << var_t3));
                                        var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x140);
                                        *(void *)0x1018 = 2;
                                    }
                                } else {
                                    /* Duplicate return node #97. Try simplifying control flow for better match */
                                    var_a2->unk708 = (s32) (var_a2->unk708 & ~(1 << var_t3));
                                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x140);
                                    *(void *)0x1018 = 2;
                                }
                            } else {
                                var_a6 = arg0 < 0x4005U;
                                if (var_a6 == 0) {
                                    if (var_a3 != 0) {
                                        goto block_96;
                                    }
                                    goto block_48;
                                }
                                var_t3 = arg0 - 0x4000;
                                if (arg0 != 0x4004) {
                                    goto block_48;
                                }
                                /* Duplicate return node #97. Try simplifying control flow for better match */
                                var_a2->unk708 = (s32) (var_a2->unk708 & ~(1 << var_t3));
                                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x140);
                                *(void *)0x1018 = 2;
                            }
                        } else {
                            goto block_96;
                        }
                    } else {
                        var_a1 = arg0 < 0x4001U;
                        if (arg0 >= 0x4000U) {
                            var_a4 = arg0 < 0x4002U;
                            if (var_a1 == 0) {
                                if (var_a4 == 0) {
                                    var_t3 = arg0 - 0x4000;
                                    if (var_a3 == 0) {
                                        goto block_48;
                                    }
                                    /* Duplicate return node #97. Try simplifying control flow for better match */
                                    var_a2->unk708 = (s32) (var_a2->unk708 & ~(1 << var_t3));
                                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x140);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                if (arg0 == 0x4001) {
                                    goto block_96;
                                }
                                goto block_48;
                            }
block_96:
                            var_t3 = arg0 - 0x4000;
                            var_a2->unk708 = (s32) (var_a2->unk708 & ~(1 << var_t3));
                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x140);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        if (arg0 >= 0x3005U) {
                            if (arg0 < 0x3006U) {
                                goto block_45;
                            }
                            goto block_48;
                        }
                        var_a0 = arg0 - 0x3000;
                        if (arg0 != 0x3004) {
                            goto block_48;
                        }
                        /* Duplicate return node #46. Try simplifying control flow for better match */
                        var_a2->unk70C = (s32) (var_a2->unk70C & ~(1 << var_a0));
                        var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x510);
                        *(void *)0x1018 = 2;
                    }
                }
            } else {
                goto block_45;
            }
        } else if (var_a4 == 0) {
            var_a4 = arg0 < 0xDB4U;
            if (arg0 >= 0xD92U) {
                var_a6 = arg0 < 0xDB5U;
                if (var_a4 == 0) {
                    var_a4 = arg0 < 0xDE1U;
                    if (var_a6 == 0) {
                        var_a7 = arg0 < 0xDE2U;
                        if (var_a4 == 0) {
                            if (var_a7 == 0) {
                                if (arg0 >= 0x3000U) {
                                    if (arg0 >= 0x3001U) {
                                        if (arg0 >= 0x3002U) {
                                            var_a0 = arg0 - 0x3000;
                                            if (var_a3 == 0) {
                                                goto block_48;
                                            }
                                            /* Duplicate return node #46. Try simplifying control flow for better match */
                                            var_a2->unk70C = (s32) (var_a2->unk70C & ~(1 << var_a0));
                                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x510);
                                            *(void *)0x1018 = 2;
                                            return;
                                        }
                                        var_a3 = 0x3001;
                                        if (arg0 == 0x3001) {
                                            goto block_45;
                                        }
                                        goto block_48;
                                    }
block_45:
                                    var_a0 = arg0 - 0x3000;
                                    var_a2->unk70C = (s32) (var_a2->unk70C & ~(1 << var_a0));
                                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x510);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                if (arg0 >= 0x2A02U) {
                                    if (arg0 < 0x2A03U) {
                                        var_a2->unk704 = (s32) (var_a2->unk704 & ~0x400);
                                        var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x40);
                                        var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                        *(void *)0x1018 = 2;
                                    } else {
                                        goto block_48;
                                    }
                                } else if (arg0 == 0x2A01) {
                                    var_a2->unk704 = (s32) (var_a2->unk704 & ~0x200);
                                    var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x20);
                                    var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                    *(void *)0x1018 = 2;
                                } else {
                                    goto block_48;
                                }
                            } else {
                                var_a2->unk700 = (s32) (var_a2->unk700 & ~0x20000);
                                var_a2->unk16960 = (s32) (var_a2->unk16960 | 4);
                                *(void *)0x1018 = 2;
                                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x790);
                                *(void *)0x1018 = 2;
                            }
                        } else {
                            var_a3 = arg0 < 0xDB7U;
                            if (var_a3 == 0) {
                                if (arg0 >= 0xDB8U) {
                                    var_a1 = 0xDB8;
                                    if (arg0 >= 0xDE0U) {
                                        if (var_a4 != 0) {
                                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x10000);
                                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 4);
                                            *(void *)0x1018 = 2;
                                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x790);
                                            *(void *)0x1018 = 2;
                                        } else {
                                            goto block_48;
                                        }
                                    } else {
                                        var_a0_2 = arg0 - 0xDB0;
                                        if (arg0 != 0xDB8) {
                                            goto block_48;
                                        }
                                        /* Duplicate return node #134. Try simplifying control flow for better match */
                                        var_a2->unk714 = (s32) (var_a2->unk714 & (~(1 << var_a0_2) & 0xFFFF));
                                    }
                                } else {
                                    goto block_133;
                                }
                            } else {
                                if (arg0 >= 0xDB6U) {
                                    if (var_a3 != 0) {
                                        goto block_133;
                                    }
                                    goto block_48;
                                }
                                var_a0_2 = arg0 - 0xDB0;
                                if (arg0 != 0xDB5) {
                                    goto block_48;
                                }
                                /* Duplicate return node #134. Try simplifying control flow for better match */
                                var_a2->unk714 = (s32) (var_a2->unk714 & (~(1 << var_a0_2) & 0xFFFF));
                            }
                        }
                    } else {
                        goto block_133;
                    }
                } else {
                    var_a3 = arg0 < 0xD97U;
                    var_a7 = arg0 < 0xD98U;
                    if (var_a3 == 0) {
                        var_a3 = arg0 < 0xDB1U;
                        if (var_a7 == 0) {
                            if (var_a3 == 0) {
                                if (arg0 >= 0xDB2U) {
                                    var_a3 = 0xDB2;
                                    if (arg0 >= 0xDB3U) {
                                        var_a0_2 = arg0 - 0xDB0;
                                        if (var_a4 == 0) {
                                            goto block_48;
                                        }
                                        /* Duplicate return node #134. Try simplifying control flow for better match */
                                        var_a2->unk714 = (s32) (var_a2->unk714 & (~(1 << var_a0_2) & 0xFFFF));
                                        return;
                                    }
                                    var_a0_2 = arg0 - 0xDB0;
                                    if (arg0 != 0xDB2) {
                                        goto block_48;
                                    }
                                    /* Duplicate return node #134. Try simplifying control flow for better match */
                                    var_a2->unk714 = (s32) (var_a2->unk714 & (~(1 << var_a0_2) & 0xFFFF));
                                    return;
                                }
block_133:
                                var_a0_2 = arg0 - 0xDB0;
                                /* Duplicate return node #134. Try simplifying control flow for better match */
                                var_a2->unk714 = (s32) (var_a2->unk714 & (~(1 << var_a0_2) & 0xFFFF));
                                return;
                            }
                            var_a7 = arg0 < 0xDB0U;
                            if (var_a7 == 0) {
                                var_a0_2 = arg0 - 0xDB0;
                                if (var_a3 == 0) {
                                    goto block_48;
                                }
                                var_a2->unk714 = (s32) (var_a2->unk714 & (~(1 << var_a0_2) & 0xFFFF));
                                return;
                            }
                            var_a4 = arg0 - 0xD90;
                            if (arg0 != 0xD98) {
                                goto block_48;
                            }
                            /* Duplicate return node #83. Try simplifying control flow for better match */
                            var_a2->unk710 = (s32) (var_a2->unk710 & (~(1 << var_a4) & 0xFFFF));
                            return;
                        }
                        goto block_82;
                    }
                    var_a4 = arg0 < 0xD94U;
                    if (var_a4 == 0) {
                        var_a4 = arg0 - 0xD90;
                        if (arg0 >= 0xD95U) {
                            if (arg0 >= 0xD96U) {
                                var_a4 = arg0 - 0xD90;
                                if (var_a3 == 0) {
                                    goto block_48;
                                }
                                /* Duplicate return node #83. Try simplifying control flow for better match */
                                var_a2->unk710 = (s32) (var_a2->unk710 & (~(1 << var_a4) & 0xFFFF));
                                return;
                            }
                            var_a4 = arg0 - 0xD90;
                            if (arg0 != 0xD95) {
                                goto block_48;
                            }
                            /* Duplicate return node #83. Try simplifying control flow for better match */
                            var_a2->unk710 = (s32) (var_a2->unk710 & (~(1 << var_a4) & 0xFFFF));
                            return;
                        }
                        /* Duplicate return node #83. Try simplifying control flow for better match */
                        var_a2->unk710 = (s32) (var_a2->unk710 & (~(1 << var_a4) & 0xFFFF));
                        return;
                    }
                    var_a1 = arg0 < 0xD93U;
                    if (var_a1 == 0) {
                        if (var_a4 != 0) {
                            goto block_82;
                        }
                        goto block_48;
                    }
                    var_a4 = arg0 - 0xD90;
                    if (arg0 != 0xD92) {
                        goto block_48;
                    }
                    /* Duplicate return node #83. Try simplifying control flow for better match */
                    var_a2->unk710 = (s32) (var_a2->unk710 & (~(1 << var_a4) & 0xFFFF));
                }
            } else {
block_82:
                var_a4 = arg0 - 0xD90;
                /* Duplicate return node #83. Try simplifying control flow for better match */
                var_a2->unk710 = (s32) (var_a2->unk710 & (~(1 << var_a4) & 0xFFFF));
            }
        } else if (arg0 >= 0xBC0U) {
            if (arg0 >= 0xBC1U) {
                if (arg0 >= 0xC60U) {
                    var_a3 = arg0 < 0xC63U;
                    if (arg0 < 0xC61U) {
                        var_a4_2 = var_a2 + 0x10000;
                        var_a2->unk700 = (s32) (var_a2->unk700 & ~0x40000);
                        var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x120);
                        goto block_25;
                    }
                    var_a1 = arg0 < 0xC64U;
                    if (var_a3 == 0) {
                        var_a7 = 0x200000;
                        if (var_a1 != 0) {
                            var_a4_2 = var_a2 + 0x10000;
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x200000U);
                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x120);
                            goto block_25;
                        }
                        var_a3 = arg0 < 0xD90U;
                        var_a1 = 0xD80;
                        if (var_a3 == 0) {
                            var_a4 = arg0 - 0xD90;
                            if (var_a4 == 0) {
                                goto block_48;
                            }
                            var_a2->unk710 = (s32) (var_a2->unk710 & (~(1 << var_a4) & 0xFFFF));
                            return;
                        }
                        if (arg0 == 0xD80) {
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x800000);
                        } else {
                            goto block_48;
                        }
                    } else {
                        var_a6 = arg0 < 0xC62U;
                        var_a4 = 0xC61;
                        if (var_a6 == 0) {
                            if (var_a3 != 0) {
                                var_a4_2 = var_a2 + 0x10000;
                                var_a2->unk700 = (s32) (var_a2->unk700 & ~0x100000);
                                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x120);
                                goto block_25;
                            }
                            goto block_48;
                        }
                        if (arg0 == 0xC61) {
                            var_a4_2 = var_a2 + 0x10000;
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x80000);
                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x120);
block_25:
                            *(void *)0x1018 = 2;
                            var_a3_2 = 0;
loop_26:
                            if ((var_a3_2 != 0) && (temp_a6 = *(void *)0x1018, temp_a0 = *(void *)0x1010, (temp_a6 != 0))) {
                                sp18 = (s64) var_a4_2;
                                sp20 = var_a3_2;
                                sp0 = (s64) var_a2;
                                if (temp_a6 == 2) {
                                    temp_a0->unk2E40(temp_a0);
                                    var_a2 = (void *) sp0;
                                    var_a3_2 = sp20;
                                    var_a4_2 = (void *) sp18;
                                    *(void *)0x1018 = 0;
                                    goto block_30;
                                }
                                __glSetError(0x502);
                            } else {
block_30:
                                temp_a0_2 = var_a2->unk700;
                                var_a3_2 += 1;
                                if (0x400000 & temp_a0_2) {
                                    var_a2->unk700 = (s32) (0xFFBFFFFF & temp_a0_2);
                                } else {
                                    var_a2->unk700 = (s32) (0x400000 | temp_a0_2);
                                }
                                var_a4_2->unk6964 = (s32) (var_a4_2->unk6964 | 0x104);
                                *(void *)0x1018 = 2;
                                if (var_a3_2 == 2) {
                                    var_a4_2->unk6976 = 1;
                                    return;
                                }
                                goto loop_26;
                            }
                        } else {
                            goto block_48;
                        }
                    }
                } else {
                    var_a1 = arg0 < 0xBE2U;
                    if (arg0 >= 0xBF1U) {
                        if (arg0 >= 0xBF2U) {
                            if (arg0 >= 0xC11U) {
                                var_a1 = arg0 < 0xC12U;
                                sp0 = (s64) var_a2;
                                if (var_a1 != 0) {
                                    temp_a2 = sp0->unk700 & ~0x4000;
                                    sp0->unk700 = temp_a2;
                                    __glSetError(sp0, (void *) var_a1, (void *) temp_a2, sp0, -0x4001, 1);
                                    sp0->unk2EBC(sp0);
                                } else {
                                    goto block_48;
                                }
                            } else if (arg0 == 0xBF2) {
                                var_a2->unk704 = (s32) (var_a2->unk704 & ~0x800);
                                var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x100000);
                                var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                                *(void *)0x1018 = 2;
                            } else {
                                goto block_48;
                            }
                        } else {
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~4);
                            var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x80000);
                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                            *(void *)0x1018 = 2;
                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                            *(void *)0x1018 = 2;
                        }
                    } else {
                        if (var_a1 == 0) {
                            var_a3 = arg0 < 0xBE3U;
                            if (var_a3 != 0) {
                                var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x20000);
                                var_a2->unk700 = (s32) (var_a2->unk700 & ~2);
                                var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_48;
                        }
                        if (arg0 == 0xBD0) {
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~8);
                            var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x40000);
                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                            *(void *)0x1018 = 2;
                        } else {
                            goto block_48;
                        }
                    }
                }
            } else {
                var_a2->unk700 = (s32) (var_a2->unk700 & ~1);
                var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x4000);
                var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                *(void *)0x1018 = 2;
                var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                *(void *)0x1018 = 2;
            }
        } else {
            var_a3 = arg0 < 0xB50U;
            var_a4 = arg0 < 0xB51U;
            if (var_a3 == 0) {
                var_a5 = arg0 < 0xB71U;
                if (var_a4 == 0) {
                    if (var_a5 == 0) {
                        var_a6 = arg0 < 0xB72U;
                        var_a7 = arg0 < 0xBA1U;
                        if (var_a6 == 0) {
                            if (var_a7 == 0) {
                                if (arg0 < 0xBA2U) {
                                    var_a2->unk700 = (s32) (var_a2->unk700 & ~0x400000);
                                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x104);
                                    *(void *)0x1018 = 2;
                                } else {
                                    goto block_48;
                                }
                            } else {
                                var_a6 = 0xB90;
                                if (arg0 == 0xB90) {
                                    var_a2->unk700 = (s32) (0xFFFF7FFF & var_a2->unk700);
                                    var_a2->unk7BFC = (s32) (0xFFFF7FFF & var_a2->unk7BFC);
                                    var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                    *(void *)0x1018 = 2;
                                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                                    *(void *)0x1018 = 2;
                                } else {
                                    goto block_48;
                                }
                            }
                        } else {
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x10);
                            var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x10000);
                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                            *(void *)0x1018 = 2;
                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                            *(void *)0x1018 = 2;
                        }
                    } else if (arg0 >= 0xB60U) {
                        if (arg0 < 0xB61U) {
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x20);
                            var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x400000);
                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                            *(void *)0x1018 = 2;
                        } else {
                            goto block_48;
                        }
                    } else {
                        var_a1 = 0xB57;
                        sp0 = (s64) var_a2;
                        if (arg0 != 0xB57) {
                            goto block_48;
                        }
                        sp0->unk700 = (s32) (sp0->unk700 & ~0x80);
                        __text0((s32) sp0, 0xB57, (s32) var_a2, (s32 *) var_a3, var_a4, var_a5);
                    }
                } else {
                    var_a2->unk700 = (s32) (var_a2->unk700 & ~0x40);
                    var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x1C0);
                    *(void *)0x1018 = 2;
                }
            } else {
                var_a5 = arg0 < 0xB41U;
                var_a6 = arg0 < 0xB42U;
                if (var_a5 == 0) {
                    var_a7 = arg0 < 0xB44U;
                    if (var_a6 == 0) {
                        if (var_a7 == 0) {
                            if (arg0 < 0xB45U) {
                                var_a2->unk700 = (s32) (var_a2->unk700 & ~0x1000);
                                var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x100);
                                var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                                var_a2->unk2E24 = (s32) (var_a2->unk2E24 | 4);
                                return;
                            }
                            goto block_48;
                        }
                        var_a4 = 0xB42;
                        if (arg0 == 0xB42) {
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x2000);
                            var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~0x10);
                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                            *(void *)0x1018 = 2;
                        } else {
                            goto block_48;
                        }
                    } else {
                        var_a2->unk700 = (s32) (var_a2->unk700 & ~0x800);
                        var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~4);
                        var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                        *(void *)0x1018 = 2;
                        var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                        *(void *)0x1018 = 2;
                    }
                } else {
                    var_a1 = arg0 < 0xB20U;
                    var_a3 = arg0 < 0xB21U;
                    if (var_a1 == 0) {
                        var_a4 = 0xB24;
                        if (var_a3 == 0) {
                            if (arg0 == 0xB24) {
                                var_a2->unk700 = (s32) (var_a2->unk700 & ~0x100);
                                var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~8);
                                var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                                *(void *)0x1018 = 2;
                            } else {
                                goto block_48;
                            }
                        } else {
                            var_a2->unk700 = (s32) (var_a2->unk700 & ~0x200);
                            var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~2);
                            var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                            *(void *)0x1018 = 2;
                            var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                            *(void *)0x1018 = 2;
                        }
                    } else if (arg0 == 0xB10) {
                        var_a2->unk700 = (s32) (var_a2->unk700 & ~0x400);
                        var_a2->unk7BFC = (s32) (var_a2->unk7BFC & ~1);
                        var_a2->unk16960 = (s32) (var_a2->unk16960 | 2);
                        *(void *)0x1018 = 2;
                        var_a2->unk16964 = (s32) (var_a2->unk16964 | 0x800);
                        *(void *)0x1018 = 2;
                    } else {
block_48:
                        __glSetError(0x500, (void *) var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
                    }
                }
            }
        }
    } else {
        __glSetError(0x502, var_a2, (void *)1);
    }
}

void __glOdyim_BlendColorEXT(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f6;
    f32 var_f4;
    f32 var_f5;
    f64 temp_f6_2;
    s32 temp_a2;
    s32 temp_a2_2;
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        M2C_ERROR(/* unknown instruction: movt.s $f2, $f4, $fcc7 */);
        M2C_ERROR(/* unknown instruction: movt.s $f6, $f4, $fcc6 */);
        M2C_ERROR(/* unknown instruction: movt.s $f3, $f4, $fcc0 */);
        M2C_ERROR(/* unknown instruction: movf.s $f4, $f15, $fcc5 */);
        temp_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f0, $fcc4 */);
        temp_f15 = M2C_ERROR(/* unknown instruction: movt.s $f15, $f0, $fcc3 */);
        temp_f14 = M2C_ERROR(/* unknown instruction: movt.s $f14, $f0, $fcc2 */);
        temp_a1->unk73C = temp_f15;
        temp_f13 = M2C_ERROR(/* unknown instruction: movt.s $f13, $f0, $fcc1 */);
        temp_a1->unk738 = temp_f14;
        temp_a1->unk734 = temp_f13;
        temp_a1->unk730 = temp_f6;
        if ((f64) temp_f6 >= 1.0) {

        }
        temp_f6_2 = (f64) temp_f14;
        temp_a2 = (0xFF000FFF & temp_a1->unk7C38) | (0xFFF000 & ((second half of f64) << 0xC));
        temp_a1->unk7C38 = temp_a2;
        if (temp_f6_2 >= 1.0) {
            var_f5 = 4095.0f;
        } else {
            var_f5 = temp_f13 * 4096.0f;
        }
        temp_a1->unk7C38 = (s32) ((-0x1000 & temp_a2) | (((s64) var_f5 << 0) & 0xFFF));
        if (!(temp_f6_2 >= 1.0)) {

        }
        var_f4 = 4095.0f;
        temp_a2_2 = (0xFF000FFF & temp_a1->unk7C3C) | (0xFFF000 & ((second half of f64) << 0xC));
        temp_a1->unk7C3C = temp_a2_2;
        if (!((f64) temp_f15 >= 1.0)) {
            var_f4 = temp_f15 * 4096.0f;
        }
        temp_a1->unk7C3C = (s32) ((-0x1000 & temp_a2_2) | (((s64) var_f4 << 0) & 0xFFF));
        temp_a1->unk16960 = (s32) (temp_a1->unk16960 | 1);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glOdyim_PolygonOffset(f32 fparg1) {
    void *temp_a0;

    if (*(s32 *)0x1018 != 1) {
        temp_a0 = *(void **)0x1010;
        __glOdyim_PolygonOffsetEXT(temp_a0, temp_a0->unk1FC * fparg1);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_PolygonOffsetEXT(f64 fparg0, f64 fparg1) {
    f64 sp60;
    f64 sp58;
    f32 var_f4;
    void *temp_s0;

    sp60 = fparg1;
    temp_s0 = *(void **)0x1010;
    sp58 = fparg0;
    if (*(s32 *)0x1018 != 1) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
        // At instruction: c.lt.d $f9, $f10
        if (M2C_ERROR()) {

        }
        M2C_ERROR(/* unknown instruction: madd.s $f13, $f16, $f17, $f7 */);
        M2C_ERROR(/* unknown instruction: msub.s $f16, $f16, $f17, $f7 */);
        M2C_ERROR(/* unknown instruction: msub.s $f19, $f18, $f19, $f7 */);
        if (temp_s0->unk165D0 != temp_s0->unk165C8) {

        }
        M2C_ERROR(/* unknown instruction: madd.s $f18, $f15, $f18, $f11 */);
        var_f4 = 1.6777215e7f;
        if (!(M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */) > 1.6777215e7f)) {
            var_f4 = M2C_ERROR(/* unknown instruction: movf.s $f4, $f8, $fcc3 */);
        }
        temp_s0->unk7C50 = (s32) (((s32) var_f4 & 0x01FF0000) | M2C_ERROR(/* Read from unset register $a6 */));
        if (temp_s0->unk9830 != 0) {
            temp_s0->unk9830 = 0;
            HQ2_READ_FIFO = M2C_ERROR(/* Read from unset register $t3 */);
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10000;
            HQ2_READ_FIFO = 0x10000;
        }
        HQ2_READ_FIFO = 0x10000;
        HQ2_READ_FIFO = temp_s0->unk7C50;
        return;
    }
    __glSetError(0x502);
}
