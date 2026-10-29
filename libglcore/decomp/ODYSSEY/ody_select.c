? __glOdysseyInitRGB(u32, void *, u32);             /* extern */
? __glSetError(?, s32, s32, void *, s64, ?, s32);   /* extern */
? sub_0d9d0000(?, void *, u32);                     /* extern */

void VbufCopy(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_v0;
    s32 temp_v1;

    temp_a5 = arg0->unk4;
    temp_v1 = arg2 * 0x10;
    temp_v0 = arg1 * 0x10;
    *(temp_a5 + temp_v0) = *(temp_a5 + temp_v1);
    temp_a3 = arg0->unk4;
    (temp_a3 + temp_v0)->unk4 = (f32) (temp_a3 + temp_v1)->unk4;
    temp_a1 = arg0->unk4;
    (temp_a1 + temp_v0)->unk8 = (f32) (temp_a1 + temp_v1)->unk8;
    temp_at = arg0->unk4;
    (temp_at + temp_v0)->unkC = (f32) (temp_at + temp_v1)->unkC;
}

/*
Decompilation failure in function ProcessOverflow:

Unable to determine jump table for jr instruction at ody_select.s line 78.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function Pass:

Unable to determine jump table for jr instruction at ody_select.s line 210.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void Reject(void) {
    s32 temp_a2_2;
    u32 temp_a2;
    void *temp_a1;
    void *temp_a1_2;

    temp_a1 = *(void **)0x1010;
    temp_a1_2 = temp_a1 + 0x10000;
    temp_a2 = temp_a1->unk168EC;
    if (temp_a2 & 2) {
        __glOdysseyInitRGB(6U, temp_a1_2, temp_a2);
    } else if (temp_a2 & 1) {
        temp_a2_2 = temp_a1->unk168F0;
        if ((temp_a2_2 != 9) && (temp_a2_2 != 2) && (temp_a2_2 != 6)) {
            temp_a1->unk168E8 = 0;
        }
    } else {
        temp_a1->unk168EC = 0U;
        temp_a1->unk168E8 = 0;
        temp_a1->unk168E4 = 0;
        sub_0d9d0000(6, temp_a1_2, temp_a2);
    }
}

void __glTRim_Begin(u64 arg0) {
    s64 sp10;
    u64 sp8;
    s64 sp0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a6;
    s64 temp_a4;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a2 = *(s32 *)0x1018;
    temp_a4 = temp_a3 + 0x10000;
    temp_a1 = temp_a2 == 0;
    temp_a2_2 = (temp_a3->unk16964 != 0) ? ((temp_a1 == 0) ? temp_a2 : 2) : temp_a2;
    if (temp_a2_2 != 0) {
        sp0 = temp_a4;
        sp10 = (s64) temp_a3;
        sp8 = arg0;
        if (temp_a2_2 != 2) {
            __glSetError(0x502, temp_a1, temp_a2_2, temp_a3, temp_a4, 2);
        } else {
            sp0->unk6974 = 1;
            sp10->unk2E40(sp10, temp_a1, temp_a2_2, temp_a3, temp_a4, 2, 1);
            *(void *)0x1018 = 0;
            sp10->unk17F4->unk1C(sp8);
        }
    } else {
        sp8 = arg0;
        temp_a6 = arg0 < 0xAU;
        sp0 = temp_a4;
        if (temp_a6 == 0) {
            __glSetError(0x500, temp_a1, temp_a2_2, temp_a3, temp_a4, 2, temp_a6);
            return;
        }
        *(void *)0x1018 = 1;
        (temp_a3 + (sp8 * 4))->unk2F34(temp_a3, temp_a1, temp_a2_2, temp_a3, temp_a4, 2, temp_a6);
        sp0->unk68F0 = (s32) sp8;
    }
}

void __glTRim_End(void) {
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    s32 temp_s4;
    s32 var_s1;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_s2;
    u32 var_s0;
    void *temp_a2;
    void *temp_s3;
    void *temp_s5;
    void *var_s0_2;
    void *var_s0_3;
    void *var_s0_4;
    void *var_s0_5;
    void *var_s0_6;
    void *var_s0_7;

    temp_a2 = *(void **)0x1010;
    temp_a1 = temp_a2->unk168E4;
    if (temp_a1 != 0) {
        var_s0 = temp_a2->unk168E0;
        temp_s3 = temp_a2->unk7414;
        temp_s2 = (var_s0 + (temp_a1 * 0x10)) - 0x10;
        temp_s4 = temp_s3 + 0xB0;
        var_s1 = temp_a2->unk168DC;
        temp_s5 = var_s0 + 0xC;
        if (temp_s2 >= var_s0) {
            do {
                temp_s3->unk100(var_s0, var_s1, temp_s4);
                var_s0 += 0x10;
                var_s1 += 0x10;
            } while (temp_s2 >= var_s0);
        }
        temp_f6 = temp_s5->unk-C;
        temp_f4 = temp_s5->unk0;
        var_s0_2 = temp_s5;
        if (temp_f4 < temp_f6) {
loop_6:
            if ((u32) var_s0_2 < temp_s2) {
                var_s0_2 += 0x10;
                if (!(var_s0_2->unk10 < var_s0_2->unk4)) {
                    goto block_8;
                }
                goto loop_6;
            }
            __glOdysseyInitRGB();
        } else {
block_8:
            temp_f5 = -temp_f4;
            var_s0_3 = temp_s5;
            if (temp_f6 < temp_f5) {
loop_9:
                if ((u32) var_s0_3 < temp_s2) {
                    var_s0_3 += 0x10;
                    if (!(var_s0_3->unk4 < -var_s0_3->unk10)) {
                        goto block_11;
                    }
                    goto loop_9;
                }
                __glOdysseyInitRGB();
            } else {
block_11:
                temp_f6_2 = temp_s5->unk-8;
                var_s0_4 = temp_s5;
                if (temp_f4 < temp_f6_2) {
loop_13:
                    if ((u32) var_s0_4 < temp_s2) {
                        var_s0_4 += 0x10;
                        if (!(var_s0_4->unk10 < var_s0_4->unk8)) {
                            goto block_15;
                        }
                        goto loop_13;
                    }
                    __glOdysseyInitRGB();
                } else {
block_15:
                    var_s0_5 = temp_s5;
                    if (temp_f6_2 < temp_f5) {
loop_17:
                        if ((u32) var_s0_5 < temp_s2) {
                            var_s0_5 += 0x10;
                            if (!(var_s0_5->unk8 < -var_s0_5->unk10)) {
                                goto block_19;
                            }
                            goto loop_17;
                        }
                        __glOdysseyInitRGB();
                    } else {
block_19:
                        temp_f6_3 = temp_s5->unk-4;
                        var_s0_6 = temp_s5;
                        if (temp_f4 < temp_f6_3) {
loop_21:
                            if ((u32) var_s0_6 < temp_s2) {
                                var_s0_6 += 0x10;
                                if (!(var_s0_6->unk10 < var_s0_6->unkC)) {
                                    goto block_23;
                                }
                                goto loop_21;
                            }
                            __glOdysseyInitRGB();
                        } else {
block_23:
                            var_s0_7 = temp_s5;
                            if (temp_f6_3 < temp_f5) {
loop_25:
                                temp_a0 = (u32) var_s0_7 < temp_s2;
                                if (temp_a0 != 0) {
                                    var_s0_7 += 0x10;
                                    if (!(var_s0_7->unkC < -var_s0_7->unk10)) {
                                        goto block_27;
                                    }
                                    goto loop_25;
                                }
                                __glOdysseyInitRGB(temp_a0);
                            } else {
block_27:
                                __glOdysseyInitRGB();
                            }
                        }
                    }
                }
            }
        }
    } else {
        __glOdysseyInitRGB(temp_a1, temp_a2, temp_a2 + 0x10000);
    }
}

void __glTRim_Vertex2fv(void *arg0) {
    s32 temp_a2_2;
    u32 temp_a2;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_a2_2 = temp_a2 * 0x10;
    temp_v1 = temp_a1->unk168DC + temp_a2_2;
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = (f32) arg0->unk4;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2);
    }
}

void __glTRim_Vertex3fv(void *arg0) {
    s32 temp_a2_2;
    u32 temp_a2;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_a2_2 = temp_a2 * 0x10;
    temp_v1 = temp_a1->unk168DC + temp_a2_2;
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_v1->unk-C = (f32) arg0->unk4;
    temp_v1->unk-8 = (f32) arg0->unk8;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2);
    }
}

void __glTRim_Vertex4fv(void *arg0) {
    u32 temp_a1;
    u32 temp_a1_2;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a1 = temp_v0->unk168E4 + 1;
    temp_v0->unk168E4 = temp_a1;
    temp_a1_2 = temp_a1 * 0x10;
    temp_v1 = temp_v0->unk168DC + temp_a1_2;
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_v1->unk-C = (f32) arg0->unk4;
    temp_v1->unk-8 = (f32) arg0->unk8;
    temp_v1->unk-4 = (f32) arg0->unkC;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a1_2);
    }
}

void __glTRim_Vertex2f(f32 fparg0, f32 fparg1) {
    u32 temp_a1;
    u32 temp_a2;
    void *temp_a0;
    void *temp_v1;

    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk168E4 + 1;
    temp_a2 = temp_a1 * 0x10;
    temp_a0->unk168E4 = temp_a1;
    temp_v1 = temp_a0->unk168DC + temp_a2;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = fparg1;
    temp_v1->unk-10 = fparg0;
    temp_v1->unk-4 = (f32) temp_a0->unkDD8;
    if ((u32) temp_a0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a0, (void *) temp_a1, temp_a2);
    }
}

void __glTRim_Vertex2d(f64 fparg0, f64 fparg1) {
    u32 temp_a1;
    u32 temp_a2;
    void *temp_a0;
    void *temp_v1;

    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk168E4 + 1;
    temp_a2 = temp_a1 * 0x10;
    temp_a0->unk168E4 = temp_a1;
    temp_v1 = temp_a0->unk168DC + temp_a2;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = (f32) fparg1;
    temp_v1->unk-10 = (f32) fparg0;
    temp_v1->unk-4 = (f32) temp_a0->unkDD8;
    if ((u32) temp_a0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a0, (void *) temp_a1, temp_a2);
    }
}

void __glTRim_Vertex2dv(void *arg0) {
    s32 temp_a2_2;
    u32 temp_a2;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_a2_2 = temp_a2 * 0x10;
    temp_v1 = temp_a1->unk168DC + temp_a2_2;
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = (f32) arg0->unk8;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2);
    }
}

void __glTRim_Vertex2i(s32 arg0, s32 arg1) {
    u32 temp_a0;
    u32 temp_a3;
    void *temp_a2;
    void *temp_v1;

    temp_a2 = *(void **)0x1010;
    temp_a3 = temp_a2->unk168E4 + 1;
    temp_a0 = temp_a3 * 0x10;
    temp_a2->unk168E4 = temp_a3;
    temp_v1 = temp_a2->unk168DC + temp_a0;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = (f32) arg1;
    temp_v1->unk-10 = (f32) arg0;
    temp_v1->unk-4 = (f32) temp_a2->unkDD8;
    if ((u32) temp_a2->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, temp_a2, temp_a3);
    }
}

void __glTRim_Vertex2iv(void *arg0) {
    s32 temp_a2_2;
    u32 temp_a2;
    u32 temp_a3;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_a3 = arg0->unk0;
    temp_v1 = temp_a1->unk168DC + (temp_a2 * 0x10);
    temp_v1->unk-10 = (f32) temp_a3;
    temp_a2_2 = arg0->unk4;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = (f32) temp_a2_2;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2, temp_a3);
    }
}

void __glTRim_Vertex2s(s32 arg0, s32 arg1) {
    u32 temp_a0;
    u32 temp_a3;
    void *temp_a2;
    void *temp_v1;

    temp_a2 = *(void **)0x1010;
    temp_a3 = temp_a2->unk168E4 + 1;
    temp_a0 = temp_a3 * 0x10;
    temp_a2->unk168E4 = temp_a3;
    temp_v1 = temp_a2->unk168DC + temp_a0;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = (f32) arg1;
    temp_v1->unk-10 = (f32) arg0;
    temp_v1->unk-4 = (f32) temp_a2->unkDD8;
    if ((u32) temp_a2->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, temp_a2, temp_a3);
    }
}

void __glTRim_Vertex2sv(void *arg0) {
    s16 temp_a2_2;
    s16 temp_a3;
    u32 temp_a2;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_a3 = arg0->unk0;
    temp_v1 = temp_a1->unk168DC + (temp_a2 * 0x10);
    temp_v1->unk-10 = (f32) temp_a3;
    temp_a2_2 = arg0->unk2;
    temp_v1->unk-8 = 0.0f;
    temp_v1->unk-C = (f32) temp_a2_2;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2, (u32) temp_a3);
    }
}

void __glTRim_Vertex3f(f32 fparg0, f32 fparg1, f32 fparg2) {
    u32 temp_a1;
    u32 temp_a2;
    void *temp_a0;
    void *temp_v1;

    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk168E4 + 1;
    temp_a2 = temp_a1 * 0x10;
    temp_a0->unk168E4 = temp_a1;
    temp_v1 = temp_a0->unk168DC + temp_a2;
    temp_v1->unk-8 = fparg2;
    temp_v1->unk-C = fparg1;
    temp_v1->unk-10 = fparg0;
    temp_v1->unk-4 = (f32) temp_a0->unkDD8;
    if ((u32) temp_a0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a0, (void *) temp_a1, temp_a2);
    }
}

void __glTRim_Vertex3d(f64 fparg0, f64 fparg1, f64 fparg2) {
    u32 temp_a1;
    u32 temp_a2;
    void *temp_a0;
    void *temp_v1;

    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk168E4 + 1;
    temp_a2 = temp_a1 * 0x10;
    temp_a0->unk168E4 = temp_a1;
    temp_v1 = temp_a0->unk168DC + temp_a2;
    temp_v1->unk-8 = (f32) fparg2;
    temp_v1->unk-C = (f32) fparg1;
    temp_v1->unk-10 = (f32) fparg0;
    temp_v1->unk-4 = (f32) temp_a0->unkDD8;
    if ((u32) temp_a0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a0, (void *) temp_a1, temp_a2);
    }
}

void __glTRim_Vertex3dv(void *arg0) {
    s32 temp_a2_2;
    u32 temp_a2;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_a2_2 = temp_a2 * 0x10;
    temp_v1 = temp_a1->unk168DC + temp_a2_2;
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_v1->unk-C = (f32) arg0->unk8;
    temp_v1->unk-8 = (f32) arg0->unk10;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2);
    }
}

void __glTRim_Vertex3i(s32 arg0, s32 arg1, s32 arg2) {
    u32 temp_a0;
    u32 temp_a4;
    void *temp_a3;
    void *temp_v1;

    temp_a3 = *(void **)0x1010;
    temp_a4 = temp_a3->unk168E4 + 1;
    temp_a0 = temp_a4 * 0x10;
    temp_a3->unk168E4 = temp_a4;
    temp_v1 = temp_a3->unk168DC + temp_a0;
    temp_v1->unk-8 = (f32) arg2;
    temp_v1->unk-C = (f32) arg1;
    temp_v1->unk-10 = (f32) arg0;
    temp_v1->unk-4 = (f32) temp_a3->unkDD8;
    if ((u32) temp_a3->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, temp_a3, temp_a4);
    }
}

void __glTRim_Vertex3iv(void *arg0) {
    s32 temp_a2_2;
    u32 temp_a2;
    u32 temp_a3;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_v1 = temp_a1->unk168DC + (temp_a2 * 0x10);
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_a3 = arg0->unk4;
    temp_v1->unk-C = (f32) temp_a3;
    temp_a2_2 = arg0->unk8;
    temp_v1->unk-8 = (f32) temp_a2_2;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2, temp_a3);
    }
}

void __glTRim_Vertex3s(s32 arg0, s32 arg1, s32 arg2) {
    u32 temp_a0;
    u32 temp_a4;
    void *temp_a3;
    void *temp_v1;

    temp_a3 = *(void **)0x1010;
    temp_a4 = temp_a3->unk168E4 + 1;
    temp_a0 = temp_a4 * 0x10;
    temp_a3->unk168E4 = temp_a4;
    temp_v1 = temp_a3->unk168DC + temp_a0;
    temp_v1->unk-8 = (f32) arg2;
    temp_v1->unk-C = (f32) arg1;
    temp_v1->unk-10 = (f32) arg0;
    temp_v1->unk-4 = (f32) temp_a3->unkDD8;
    if ((u32) temp_a3->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, temp_a3, temp_a4);
    }
}

void __glTRim_Vertex3sv(void *arg0) {
    s16 temp_a2_2;
    s16 temp_a3;
    u32 temp_a2;
    void *temp_a1;
    void *temp_v1;

    temp_a1 = *(void **)0x1010;
    temp_a2 = temp_a1->unk168E4 + 1;
    temp_a1->unk168E4 = temp_a2;
    temp_v1 = temp_a1->unk168DC + (temp_a2 * 0x10);
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_a3 = arg0->unk2;
    temp_v1->unk-C = (f32) temp_a3;
    temp_a2_2 = arg0->unk4;
    temp_v1->unk-8 = (f32) temp_a2_2;
    temp_v1->unk-4 = (f32) temp_a1->unkDD8;
    if ((u32) temp_a1->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a1, (void *) temp_a2_2, (u32) temp_a3);
    }
}

void __glTRim_Vertex4f(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    s32 temp_a1;
    u32 temp_a0;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a0 = temp_v0->unk168E4 + 1;
    temp_a1 = temp_a0 * 0x10;
    temp_v0->unk168E4 = temp_a0;
    temp_v1 = temp_v0->unk168DC + temp_a1;
    temp_v1->unk-4 = fparg3;
    temp_v1->unk-8 = fparg2;
    temp_v1->unk-C = fparg1;
    temp_v1->unk-10 = fparg0;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, (void *) temp_a1);
    }
}

void __glTRim_Vertex4d(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    s32 temp_a1;
    u32 temp_a0;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a0 = temp_v0->unk168E4 + 1;
    temp_a1 = temp_a0 * 0x10;
    temp_v0->unk168E4 = temp_a0;
    temp_v1 = temp_v0->unk168DC + temp_a1;
    temp_v1->unk-4 = (f32) fparg3;
    temp_v1->unk-8 = (f32) fparg2;
    temp_v1->unk-C = (f32) fparg1;
    temp_v1->unk-10 = (f32) fparg0;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, (void *) temp_a1);
    }
}

void __glTRim_Vertex4dv(void *arg0) {
    u32 temp_a1;
    u32 temp_a1_2;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a1 = temp_v0->unk168E4 + 1;
    temp_v0->unk168E4 = temp_a1;
    temp_a1_2 = temp_a1 * 0x10;
    temp_v1 = temp_v0->unk168DC + temp_a1_2;
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_v1->unk-C = (f32) arg0->unk8;
    temp_v1->unk-8 = (f32) arg0->unk10;
    temp_v1->unk-4 = (f32) arg0->unk18;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a1_2);
    }
}

void __glTRim_Vertex4i(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a1;
    u32 temp_a0;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a0 = temp_v0->unk168E4 + 1;
    temp_a1 = temp_a0 * 0x10;
    temp_v0->unk168E4 = temp_a0;
    temp_v1 = temp_v0->unk168DC + temp_a1;
    temp_v1->unk-4 = (f32) arg3;
    temp_v1->unk-8 = (f32) arg2;
    temp_v1->unk-C = (f32) arg1;
    temp_v1->unk-10 = (f32) arg0;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, (void *) temp_a1);
    }
}

void __glTRim_Vertex4iv(void *arg0) {
    s32 temp_a1_2;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_a2;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a1 = temp_v0->unk168E4 + 1;
    temp_v0->unk168E4 = temp_a1;
    temp_v1 = temp_v0->unk168DC + (temp_a1 * 0x10);
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_a2 = arg0->unk4;
    temp_v1->unk-C = (f32) temp_a2;
    temp_a1_2 = arg0->unk8;
    temp_v1->unk-8 = (f32) temp_a1_2;
    temp_a0 = arg0->unkC;
    temp_v1->unk-4 = (f32) temp_a0;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, (void *) temp_a1_2, temp_a2);
    }
}

void __glTRim_Vertex4s(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a1;
    u32 temp_a0;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a0 = temp_v0->unk168E4 + 1;
    temp_a1 = temp_a0 * 0x10;
    temp_v0->unk168E4 = temp_a0;
    temp_v1 = temp_v0->unk168DC + temp_a1;
    temp_v1->unk-4 = (f32) arg3;
    temp_v1->unk-8 = (f32) arg2;
    temp_v1->unk-C = (f32) arg1;
    temp_v1->unk-10 = (f32) arg0;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB(temp_a0, (void *) temp_a1);
    }
}

void __glTRim_Vertex4sv(void *arg0) {
    s16 temp_a0;
    s16 temp_a1_2;
    s16 temp_a2;
    u32 temp_a1;
    void *temp_v0;
    void *temp_v1;

    temp_v0 = *(void **)0x1010;
    temp_a1 = temp_v0->unk168E4 + 1;
    temp_v0->unk168E4 = temp_a1;
    temp_v1 = temp_v0->unk168DC + (temp_a1 * 0x10);
    temp_v1->unk-10 = (f32) arg0->unk0;
    temp_a2 = arg0->unk2;
    temp_v1->unk-C = (f32) temp_a2;
    temp_a1_2 = arg0->unk4;
    temp_v1->unk-8 = (f32) temp_a1_2;
    temp_a0 = arg0->unk6;
    temp_v1->unk-4 = (f32) temp_a0;
    if ((u32) temp_v0->unk168E4 >= 0x78U) {
        __glOdysseyInitRGB((u32) temp_a0, (void *) temp_a1_2, (u32) temp_a2);
    }
}
