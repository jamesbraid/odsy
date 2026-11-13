? sub_0d970000(u32, s32, u32);                      /* extern */
s64 __glOdysseyDlistInterpretPreclip(u32 arg0, s32, u32 *); /* static */
extern u32 HQ2_READ_FIFO;
extern ? __glOdyim_SoftGetFloatv;

void *__glOdysseyDlistInterpret(s32 *arg0) {
    s64 sp0;
    s32 temp_a0_3;
    s32 temp_t8;
    s32 var_s1;
    u32 *var_s0;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a5;
    u32 temp_s2;
    u32 temp_s2_2;
    u32 temp_s2_3;
    u32 var_s2;
    void *temp_s8;

    var_s1 = *arg0;
    var_s0 = arg0 + 4;
    temp_s8 = arg0 + (var_s1 * 4) + 4;
    if (var_s1 != 0) {
        sp0 = (s64) *(s32 *)0x1010;
loop_5:
        temp_a5 = *var_s0;
        temp_t8 = 0x800000 & temp_a5;
        var_s0 += 4;
        temp_a0 = temp_a5 & 0x3FF;
        if (temp_t8 != 0) {
            temp_a0_2 = temp_a5 >> 0x1D;
            if (temp_a0_2 != 4) {
                if (temp_a0_2 == 6) {
                    temp_a0_3 = (temp_a5 >> 0x18) & 0x1F;
                    temp_s2 = (temp_a5 >> 0xA) & 0xF;
                    var_s2 = (temp_s2 == 0xF) ? 0x10U : temp_s2;
                    switch (temp_a0_3) {            /* irregular */
                    case 3:
                        __glOdysseyDlistInterpretPreclip(var_s2, temp_a5 & 0x3FF, var_s0);
                        break;
                    case 5:
                        __glOdysseyDlistInterpretPreclip(var_s2, temp_a5 & 0x3FF, var_s0);
                        break;
                    case 1:
                        __glOdysseyDlistInterpretPreclip(var_s2, temp_a5 & 0x3FF, var_s0);
                        break;
                    }
                } else {
                    temp_s2_2 = (temp_a5 >> 0xA) & 0xF;
                    var_s2 = (temp_s2_2 == 0xF) ? 0x10U : temp_s2_2;
                }
            } else {
                temp_s2_3 = (temp_a5 >> 0xA) & 0xF;
                var_s2 = (temp_s2_3 == 0xF) ? 0x10U : temp_s2_3;
                __glOdysseyDlistInterpretPreclip(var_s2, temp_a5 & 0x3FF, var_s0);
            }
            var_s1 = (var_s1 - var_s2) - 1;
            var_s0 += var_s2 * 4;
        } else if (temp_a0 != 1) {
            if (temp_a0 == 0) {
                sub_0d970000(*var_s0);
                var_s1 -= 2;
                var_s0 += 4;
            }
        } else {
            sub_0d970000(temp_a0);
            var_s1 -= 1;
        }
        if (var_s1 != 0) {
            goto loop_5;
        }
    }
    return temp_s8;
}

s64 __glOdysseyDlistInterpretPreclip(s32 *arg0) {
    s64 sp60;
    s64 sp58;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_s6;
    s32 var_s3;
    u32 *temp_a2_2;
    u32 *temp_a2_3;
    u32 *temp_a2_4;
    u32 *var_a0;
    u32 *var_s2;
    u32 *var_s6;
    u32 temp_a0;
    u32 temp_a3;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 temp_s4;
    u32 temp_s4_2;
    u32 temp_s4_3;
    u32 temp_s4_4;
    u32 var_a1;
    void *temp_s7;

    temp_s7 = *(void **)0x1010;
    var_s3 = *arg0;
    var_s2 = arg0 + 4;
    sp60 = (s64) (arg0 + (var_s3 * 4) + 4);
    if (var_s3 != 0) {
        sp58 = temp_s7 + 0x10000;
loop_10:
        temp_a5 = var_s2->unk0;
        temp_a0 = temp_a5 >> 0x18;
        temp_a1 = temp_a5 & 0x3FF;
        temp_s4 = (temp_a5 >> 0xA) & 0xF;
        if (0x800000 & temp_a5) {
            if ((temp_a5 >> 0x1D) != 4) {
                temp_a0_2 = temp_a0 & 0x1F;
                temp_s4_2 = (temp_s4 == 0xF) ? 0x10U : temp_s4;
                temp_a2 = temp_s4_2 + 1;
                temp_s6 = (var_s3 - temp_s4_2) - 1;
                if (temp_s7->unk17F4->unk1F0 == &__glOdyim_SoftGetFloatv) {
                    switch (temp_a0_2) {            /* irregular */
                    case 5:
                        temp_a2_2 = var_s2 + 4;
                        var_s2 = temp_a2_2;
                        __glOdysseyDlistInterpretPreclip(temp_s4_2, temp_a5 & 0x3FF, temp_a2_2);
                        break;
                    case 1:
                        temp_a2_3 = var_s2 + 4;
                        var_s2 = temp_a2_3;
                        __glOdysseyDlistInterpretPreclip(temp_s4_2, temp_a5 & 0x3FF, temp_a2_3);
                        break;
                    case 3:
                        temp_a2_4 = var_s2 + 4;
                        var_s2 = temp_a2_4;
                        __glOdysseyDlistInterpretPreclip(temp_s4_2, temp_a5 & 0x3FF, temp_a2_4);
                        break;
                    }
                    var_s3 = temp_s6;
                    var_s2 = &var_s2[temp_s4_2];
                } else {
                    var_s3 = temp_s6;
                    var_a1 = temp_s4_2;
                    if (temp_s4_2 != -1U) {
                        if (temp_a2 & 1) {
                            temp_a3 = var_s2->unk0;
                            var_a1 = temp_s4_2 - 1;
                            var_s2 += 4;
                            HQ2_READ_FIFO = temp_a3;
                        }
                        var_a0 = var_s2;
                        if ((temp_a2 >> 1) != 0) {
                            do {
                                var_a1 -= 2;
                                HQ2_READ_FIFO = var_a0->unk0;
                                temp_a5_2 = var_a0->unk4;
                                var_a0 += 8;
                                HQ2_READ_FIFO = temp_a5_2;
                            } while (var_a1 != -1U);
                            var_s2 = var_a0;
                        }
                    }
                }
            } else {
                temp_a1_2 = temp_a5 & 0x3FF;
                temp_s4_3 = (temp_a5 >> 0xA) & 0xF;
                temp_s4_4 = (temp_s4_3 == 0xF) ? 0x10U : temp_s4_3;
                if (sp58->unk6A04 == temp_a1_2) {
                    var_s6 = var_s2 + 4;
                    sp58->unk6A08(var_s6, temp_a1_2);
                } else {
                    var_s6 = var_s2 + 4;
                    __glOdysseyDlistInterpretPreclip(temp_s4_4, temp_a1_2, var_s6);
                }
                var_s3 = (var_s3 - temp_s4_4) - 1;
                var_s2 = &var_s6[temp_s4_4];
            }
        } else if (temp_a1 != 1) {
            if (temp_a1 == 0) {
                sub_0d970000(var_s2->unk4, temp_a1);
                var_s3 -= 2;
                var_s2 += 8;
            }
        } else {
            sub_0d970000(temp_a0, temp_a1);
            var_s3 -= 1;
            var_s2 += 4;
        }
        if (var_s3 != 0) {
            goto loop_10;
        }
    }
    return sp60;
}

void pack_ub(s32 arg0, s32 *arg1, s8 *arg2) {
    s32 *var_a0;
    s32 temp_t3;
    s8 *var_a1;

    if (arg0 != 0) {
        var_a0 = arg1;
        var_a1 = arg2;
        if (arg0 & 1) {
            var_a0 = arg1 + 4;
            var_a1 = arg2 + 1;
            *arg2 = (s8) *arg1;
        }
        if ((arg0 >> 1) != 0) {
            do {
                temp_t3 = *var_a0;
                var_a0 += 8;
                *var_a1 = (s8) temp_t3;
                var_a1 += 2;
                var_a1->unk-1 = (s8) var_a0->unk-4;
            } while (var_a0 != ((arg0 * 4) + arg1));
        }
    }
}

void pack_us(s32 arg0, s32 *arg1, s16 *arg2) {
    s16 *var_a1;
    s32 *var_a0;
    s32 temp_t3;

    if (arg0 != 0) {
        var_a1 = arg2;
        var_a0 = arg1;
        if (arg0 & 1) {
            var_a0 = arg1 + 4;
            var_a1 = arg2 + 2;
            *arg2 = (s16) *arg1;
        }
        if ((arg0 >> 1) != 0) {
            do {
                temp_t3 = *var_a0;
                var_a0 += 8;
                *var_a1 = (s16) temp_t3;
                var_a1 += 4;
                var_a1->unk-2 = (s16) var_a0->unk-4;
            } while (var_a0 != ((arg0 * 4) + arg1));
        }
    }
}

void pack_b(s32 arg0, s32 *arg1, s8 *arg2) {
    s32 *var_a0;
    s32 temp_t3;
    s8 *var_a1;

    if (arg0 != 0) {
        var_a0 = arg1;
        var_a1 = arg2;
        if (arg0 & 1) {
            var_a0 = arg1 + 4;
            var_a1 = arg2 + 1;
            *arg2 = (s8) *arg1;
        }
        if ((arg0 >> 1) != 0) {
            do {
                temp_t3 = *var_a0;
                var_a0 += 8;
                *var_a1 = (s8) temp_t3;
                var_a1 += 2;
                var_a1->unk-1 = (s8) var_a0->unk-4;
            } while (var_a0 != ((arg0 * 4) + arg1));
        }
    }
}

void pack_s(s32 arg0, s32 *arg1, s16 *arg2) {
    s16 *var_a1;
    s32 *var_a0;
    s32 temp_t3;

    if (arg0 != 0) {
        var_a1 = arg2;
        var_a0 = arg1;
        if (arg0 & 1) {
            var_a0 = arg1 + 4;
            var_a1 = arg2 + 2;
            *arg2 = (s16) *arg1;
        }
        if ((arg0 >> 1) != 0) {
            do {
                temp_t3 = *var_a0;
                var_a0 += 8;
                *var_a1 = (s16) temp_t3;
                var_a1 += 4;
                var_a1->unk-2 = (s16) var_a0->unk-4;
            } while (var_a0 != ((arg0 * 4) + arg1));
        }
    }
}

void InterpretVertex(s32 arg1, s32 arg2) {
    s64 sp8;
    s64 sp0;
    void *temp_at;

    temp_at = *(void **)0x1010;
    sp8 = (s64) temp_at;
    sp0 = temp_at + 0x10000;
    temp_at->unk16A04 = arg1;
    switch (arg1) {                                 /* irregular */
    case 5:
        sp8->unk17F4->unk574(arg2, 3, 4, 5);
        sp0->unk6A08 = (s32) sp8->unk17F4->unk574;
        return;
    case 0:
        sp8->unk17F4->unk53C(arg2);
        sp0->unk6A08 = (s32) sp8->unk17F4->unk53C;
        return;
    case 1:
        sp8->unk17F4->unk534(arg2);
        sp0->unk6A08 = (s32) sp8->unk17F4->unk534;
        return;
    case 2:
        sp8->unk17F4->unk55C(arg2, 3);
        sp0->unk6A08 = (s32) sp8->unk17F4->unk55C;
        return;
    case 3:
        sp8->unk17F4->unk554(arg2, 3);
        sp0->unk6A08 = (s32) sp8->unk17F4->unk554;
        break;
    case 4:
        sp8->unk17F4->unk57C(arg2, 3, 4);
        sp0->unk6A08 = (s32) sp8->unk17F4->unk57C;
        break;
    }
}

/*
Decompilation failure in function InterpretColorIndex:

Unable to determine jump table for jr instruction at ody_dlinterp.s line 853.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void InterpretNormal(s32 arg1, u32 arg2) {
    s64 sp10;

    sp10 = (s64) *(s32 *)0x1010;
    switch (arg1) {                                 /* irregular */
    case 25:
        sub_0d970000(arg2, 0x19, arg2);
        break;
    case 22:
        __glOdysseyDlistInterpretPreclip(arg2, (s32) sp, (u32 *) arg2);
        sub_0d970000((u32) sp);
        break;
    case 23:
        __glOdysseyDlistInterpretPreclip(arg2, (s32) sp, (u32 *) arg2);
        sp10->unk17F4->unk654(sp);
        break;
    case 24:
        sp10->unk17F4->unk64C(arg2, arg2);
        break;
    }
}

/*
Decompilation failure in function InterpretTexCoord:

Unable to determine jump table for jr instruction at ody_dlinterp.s line 1152.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/
