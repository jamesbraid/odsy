? __glNamesFreeArray(void *, ? *);                  /* extern */
void *__glNamesNewArray(? *, ?);                    /* extern */
s32 __glOdysseyIoctl(? *, ?, void *, ? *, s32, s32, s32 *, s16, s32); /* extern */
? __glOdysseyMIPS_SYNC(s32 *, void *, ?, s32, s32, u16, void *); /* extern */
? __glSetError(?);                                  /* extern */
? bzero(void *, s64);                               /* extern */
u8 *getenv(void *, s32, void *, s32, s32);          /* extern */
? sub_0d9c0000(void *, ? *);                        /* extern */
? *sub_0d9d0000(? *, ? *);                          /* extern */
? *__glOdysseyClosePMObjReference(? *arg0, ? *arg1, ? *arg2, ? *arg3, void *); /* static */
extern s32 HQ2_READ_FIFO;
extern ? __glim_Color3f;

s32 __glOdysseyInitKernel(? *arg0, s32 arg1, s32 arg3) {
    s64 sp48;
    u64 sp10;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    ? *temp_v0_2;
    s32 temp_s0;
    s32 var_a1;
    s32 var_a3;
    u8 *temp_v0;
    u8 temp_a0;
    void *temp_a2;
    void *temp_a4;
    void *temp_v0_3;
    void *var_s0;
    void *var_v0;
    void *var_v0_2;

    var_a1 = arg1;
    var_a3 = arg3;
    sp10 = (u64) ((arg0 + 0x7B78) << 0x20) >> 0x20;
    temp_a2 = arg0 + 0x10000;
    sp8 = arg0->unk7B4C;
    temp_a4 = arg0->unk16C70;
    var_s0 = temp_a4;
    if (temp_a4 != NULL) {
        var_v0 = temp_a4 + 0x10000;
        if (temp_a4->unk16C94 == 0) {
loop_2:
            temp_s0 = var_v0->unk6C70;
            var_s0 = (void *) (((s32) temp_a4 == temp_s0) ? 0 : temp_s0);
            var_v0 = var_s0 + 0x10000;
            if (var_s0 != NULL) {
                var_a1 = var_s0->unk16C94;
                if (var_a1 != 0) {
                    goto block_4;
                }
                goto loop_2;
            }
            goto block_7;
        }
    }
block_4:
    if (var_s0 != NULL) {
        sp48 = (s64) temp_a2;
        var_a3 = var_s0->unk7B4C;
        sp4 = var_a3;
    } else {
block_7:
        sp4 = -1;
        sp48 = (s64) temp_a2;
    }
    sp0 = 0;
    temp_v0 = getenv(&__glim_Color3f + 0x4668, var_a1, temp_a2, var_a3, -1);
    if ((temp_v0 != NULL) && ((temp_a0 = *temp_v0, (temp_a0 == 0x79)) || (temp_a0 == 0x59) || (temp_a0 == 0x31))) {
        sp0 |= 1;
    }
    if (__glOdysseyIoctl(arg0, 0x6F640000, sp) != 0) {
        /* Duplicate return node #14. Try simplifying control flow for better match */
        return 0;
    }
    sp48->unk6D3C = sp20;
    sp48->unk6D20 = sp28;
    sp48->unk6D28 = (s32) ((sp28 << 0) - 0x900);
    sp48->unk6C74 = spC;
    sp48->unk6D2C = (s32) sp30;
    sp48->unk6D30 = sp38;
    sp48->unk6D38 = sp40;
    sp48->unk6C98 = (s32) sp18;
    if ((sp18 << 0) != 0) {
        __glOdysseyClosePMObjReference(arg0 + 0x16C78, (? *)9);
        if (var_s0 != NULL) {
            var_v0_2 = var_s0->unk16414;
            sp48->unk6414 = var_v0_2;
            sp48->unk6C94 = (? *) var_s0->unk16C94;
            /* Duplicate return node #18. Try simplifying control flow for better match */
            var_v0_2->unk8 = (s32) (var_v0_2->unk8 + 1);
            __glOdysseyClosePMObjReference(sp48->unk6C94, sp48->unk6C74, arg0);
            return 1;
        }
        temp_v0_2 = sub_0d9d0000(arg0, (? *)0x21C);
        sp48->unk6C94 = temp_v0_2;
        if (temp_v0_2 != NULL) {
            temp_v0_3 = __glNamesNewArray(arg0, 1);
            sp48->unk6414 = temp_v0_3;
            temp_v0_3->unk8 = 0;
            __glOdysseyClosePMObjReference(sp48->unk6C94, (? *)4);
            var_v0_2 = sp48->unk6414;
            var_v0_2->unk8 = (s32) (var_v0_2->unk8 + 1);
            __glOdysseyClosePMObjReference(sp48->unk6C94, sp48->unk6C74, arg0);
            return 1;
        }
        __glSetError(0x505);
        return 0;
    }
    return 0;
}

void __glOdysseySharePM(s32 arg0, void *arg1) {
    s32 *var_a5_2;
    void *var_a3;
    void *var_a5;

    var_a5 = arg0 + 0x10000;
    if (arg1->unk16C70 == NULL) {
        arg1->unk16C70 = arg1;
        var_a5 = arg0 + 0x10000;
    }
    var_a5->unk6C70 = arg1;
    var_a5_2 = arg1 + 0x16C70;
    if (arg1->unk16C70 != arg1) {
        var_a3 = arg1->unk16C70;
        do {
            var_a5_2 = var_a3 + 0x16C70;
            var_a3 = var_a3->unk16C70;
        } while (var_a3 != arg1);
    }
    *var_a5_2 = arg0;
}

void __glOdysseyUnSharePM(void *arg0) {
    ? *temp_a1;
    ? *temp_a1_2;
    ? *temp_a2;
    ? *temp_a3;
    ? *temp_a4;
    void **var_a4;
    void *temp_a5;
    void *var_a1;

    temp_a5 = arg0->unk16C70;
    var_a4 = arg0 + 0x16C70;
    if (temp_a5 != NULL) {
        if (temp_a5 != arg0) {
            var_a1 = arg0->unk16C70;
            do {
                var_a4 = var_a1 + 0x16C70;
                var_a1 = var_a1->unk16C70;
            } while (var_a1 != arg0);
        }
        *var_a4 = temp_a5;
    }
    temp_a4 = arg0->unk16C94;
    arg0->unk16C70 = NULL;
    if (temp_a4 != NULL) {
        __glOdysseyClosePMObjReference(arg0 + 0x16C78, sub_0d9c0000 + 0x7EC0, (? *)0x16C70, temp_a4, temp_a5);
        temp_a3 = arg0->unk16414;
        temp_a2 = temp_a3->unk8 - 1;
        temp_a3->unk8 = temp_a2;
        __glOdysseyClosePMObjReference(arg0->unk16C94, arg0->unk16C74, temp_a2, temp_a3);
        temp_a1 = arg0->unk16414;
        if (temp_a1->unk8 == NULL) {
            __glNamesFreeArray(arg0, temp_a1);
            __glOdysseyClosePMObjReference(arg0->unk16C94, NULL);
            temp_a1_2 = arg0->unk16C94;
            if (temp_a1_2 != NULL) {
                sub_0d9c0000(arg0, temp_a1_2);
            }
        }
        arg0->unk16C94 = NULL;
    }
}

s32 __glOdysseyCreatePMObj(? *arg0, void *arg1, ? **arg2, s16 arg3) {
    s64 sp48;
    s32 sp34;
    s32 spC;
    s16 sp8;
    ? *sp4;
    ? *temp_a2;
    ? *temp_a3;
    ? *temp_v0;
    ? *temp_v0_2;
    ? *temp_v0_3;
    ? *var_s1;
    s32 temp_a4;
    s32 temp_a5;

    sp34 = 0;
    sp8 = arg3;
    sp4 = *arg2;
    spC = arg1->unk0;
    spC.unk4 = (s32) arg1->unk4;
    spC.unk8 = (s32) arg1->unk8;
    temp_a5 = arg1->unkC;
    spC.unkC = temp_a5;
    temp_a4 = arg1->unk10;
    spC.unk10 = temp_a4;
    temp_a3 = arg1->unk14;
    spC.unk14 = temp_a3;
    spC.unk18 = (s32) arg1->unk18;
    spC.unk1C = (s32) arg1->unk1C;
    spC.unk20 = (s32) arg1->unk20;
    spC.unk24 = (s32) arg1->unk24;
    if (__glOdysseyIoctl(arg0, 0x6F640001, sp, temp_a3, temp_a4, temp_a5, &spC, -1, -1) != 0) {
        if (sp4 == (? *)-1) {
            temp_a2 = *arg2;
            if (temp_a2 != (? *)-1) {
                sp48 = (s64) (arg0 + 0x10000);
                __glOdysseyClosePMObjReference(arg0->unk16C94, (? *)-1, temp_a2);
                temp_v0 = __glOdysseyClosePMObjReference(arg0->unk16C94);
                var_s1 = temp_v0;
                if (temp_v0 != NULL) {
loop_14:
                    temp_v0_2 = __glOdysseyClosePMObjReference(var_s1, *arg2, NULL);
                    if (temp_v0_2 != NULL) {
                        __glOdysseyClosePMObjReference(var_s1, temp_v0_2);
                    }
                    temp_v0_3 = __glOdysseyClosePMObjReference(sp48->unk6C94);
                    var_s1 = temp_v0_3;
                    if (temp_v0_3 != NULL) {
                        goto loop_14;
                    }
                }
                *arg2 = sp4;
            }
        }
        return 0;
    }
    if (sp4 != (? *)-1) {
        *arg2 = sp4;
        if (sp34 & 2) {
            arg0->unk16C94[sp40].unk1C = (s32) sp38;
        }
        return 1;
    }
    return 0;
}

s32 __glOdysseyDestroyPMObjGroup(? *arg0, ? **arg1) {
    ? *temp_v0;
    ? *temp_v0_2;
    ? *temp_v0_3;
    ? *var_s0;

    __glOdysseyClosePMObjReference(arg0->unk16C94);
    temp_v0 = __glOdysseyClosePMObjReference(arg0->unk16C94);
    var_s0 = temp_v0;
    if (temp_v0 != NULL) {
loop_5:
        temp_v0_2 = __glOdysseyClosePMObjReference(var_s0, *arg1, NULL);
        if (temp_v0_2 != NULL) {
            __glOdysseyClosePMObjReference(var_s0, temp_v0_2);
        }
        temp_v0_3 = __glOdysseyClosePMObjReference(arg0->unk16C94);
        var_s0 = temp_v0_3;
        if (temp_v0_3 != NULL) {
            goto loop_5;
        }
    }
    if (__glOdysseyIoctl(arg0, 0x6F640002, sp, *arg1, 0) != 0) {
        return 0;
    }
    *arg1 = (? *)-1;
    return 1;
}

s32 __glOdysseyDestroyPMObj(s64 arg0, s32 *arg1, s16 arg2) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    ? *sp34;
    s16 sp8;
    s32 sp4;
    ? *temp_v0_2;
    s32 var_v0;
    s64 temp_v0;
    s64 temp_v0_3;

    sp34 = (? *)1;
    sp8 = arg2;
    var_v0 = 0;
    sp4 = *arg1;
    if ((arg2 < 0) || (sp60 = (s64) arg1, sp58 = arg0, ((arg2 < 0x11) == 0))) {
        /* Duplicate return node #2. Try simplifying control flow for better match */
        return var_v0;
    }
    if (__glOdysseyIoctl((? *) sp58, 0x6F640002, sp) != 0) {
        return 0;
    }
    if (sp34 == NULL) {
        sp48 = sp58 + 0x10000;
        __glOdysseyClosePMObjReference(sp58->unk16C94, (? *)0x10000, sp34);
        temp_v0 = __glOdysseyClosePMObjReference(sp58->unk16C94);
        sp50 = temp_v0;
        if (temp_v0 != 0) {
loop_10:
            temp_v0_2 = __glOdysseyClosePMObjReference((? *) sp50, *sp60, NULL);
            if (temp_v0_2 != NULL) {
                __glOdysseyClosePMObjReference((? *) sp50, temp_v0_2);
            }
            temp_v0_3 = __glOdysseyClosePMObjReference(sp48->unk6C94);
            sp50 = temp_v0_3;
            if (temp_v0_3 != 0) {
                goto loop_10;
            }
        }
        *sp60 = (? *)-1;
    }
    var_v0 = 1;
    return var_v0;
}

s32 CheckMMXfrArgs(void *arg0) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    u32 temp_a5;

    temp_a5 = (u32) arg0->unk28 >> 0x10;
    temp_a3 = arg0->unk30;
    temp_a4 = arg0->unk34 & 0xFFFFF;
    temp_a2 = arg0->unk18;
    if (temp_a5 != 0) {
        if (temp_a2 < ((temp_a3 * (temp_a5 - 1)) + (temp_a4 * temp_a5))) {
            /* Duplicate return node #2. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return 1;
    }
    if (temp_a2 >= ((temp_a3 * 0xFFFF) + (temp_a4 << 0x10))) {
        return 1;
    }
    return 0;
}

s32 __glOdysseyAssignToPMObj(s64 arg0, s32 arg1, s16 arg2, s64 arg3, s32 arg4, s32 arg5, s32 arg6, void *arg7) {
    s64 sp50;
    s64 sp48;
    s64 sp40;                                       /* compiler-managed */
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 sp1C;
    s32 *temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 var_a0;

    sp48 = 0;
    sp40 = 0;
    sp38 = 0;
    sp30 = 0;
    sp28 = 0;
    sp20 = 0;
    arg7->unk14 = (s32) (arg7->unk14 & 0x1FFFF);
    unksp3C = arg5 | 1;
    sp50 = arg0;
    temp_a5 = arg7->unk0;
    sp1C = temp_a5;
    temp_a3 = arg7->unk4;
    sp1C.unk4 = temp_a3;
    temp_a2 = arg7->unk8;
    sp1C.unk8 = temp_a2;
    temp_a1 = arg7->unkC;
    sp1C.unkC = temp_a1;
    sp1C.unk10 = (s32) arg7->unk10;
    sp1C.unk14 = (s32) arg7->unk14;
    sp1C.unk18 = (s32) arg7->unk18;
    sp1C.unk1C = (s32) arg7->unk1C;
    sp40 = arg6;
    if (__glOdysseyDestroyPMObj((s64) sp, temp_a1, (s16) temp_a2, temp_a3, temp_a5, 0, arg1, arg2, (u64) (arg3 << 0x20) >> 0x20, arg4) != 0) {
        if (__glOdysseyIoctl((? *) sp50, 0x6F640006, sp) != 0) {
            var_a0 = 0;
        } else {
            var_a0 = 1;
            if (unksp3C & 2) {
                sp50->unk21EE8 = 0;
            } else {
                sp50->unk21EE8 = (s32) sp48;
            }
        }
        return var_a0;
    }
    return 0;
}

s32 __glOdysseyReadFromPMObj(s64 arg0, ? *arg1, s16 arg2, s64 arg3, s32 arg4, s32 arg5, s32 arg6, void *arg7) {
    s64 sp50;
    s32 sp40;
    s32 sp3C;
    s32 sp1C;
    s32 *temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_a0;

    arg7->unk14 = (s32) (arg7->unk14 & 0x1FFFF);
    sp40 = arg6;
    sp3C = arg5;
    sp50 = arg0;
    temp_a4 = arg7->unk0;
    sp1C = temp_a4;
    temp_a3 = arg7->unk4;
    sp1C.unk4 = temp_a3;
    temp_a2 = arg7->unk8;
    sp1C.unk8 = temp_a2;
    temp_a1 = arg7->unkC;
    sp1C.unkC = temp_a1;
    sp1C.unk10 = (s32) arg7->unk10;
    sp1C.unk14 = (s32) arg7->unk14;
    sp1C.unk18 = (s32) arg7->unk18;
    sp1C.unk1C = (s32) arg7->unk1C;
    if (__glOdysseyDestroyPMObj((s64) sp, temp_a1, (s16) temp_a2, temp_a3, temp_a4, (s64) arg1, (s32) arg2, (s16) ((u64) (arg3 << 0x20) >> 0x20), (u64) arg4) != 0) {
        if (__glOdysseyIoctl((? *) sp50, 0x6F640006, sp) != 0) {
            var_a0 = 0;
        } else {
            var_a0 = 1;
            if (sp3C & 2) {
                sp50->unk21EE8 = 0;
            } else {
                sp50->unk21EE8 = (s32) sp48;
            }
        }
        return var_a0;
    }
    return 0;
}

s32 OpenPipeMemReference(? *arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5) {
    s64 sp8;
    ? *temp_a3;
    ? *var_a0;
    s32 *var_a1;
    s32 temp_a4;
    s32 var_a4;
    s32 var_a5;
    u16 temp_a6;
    void *temp_a1;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_s0;
    void *var_a2;

    var_a2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    temp_s0 = var_a2;
    if (var_a4 == 0) {
        if ((var_a2->unk1C == 1) && ((var_a2->unk18 + arg3) > 0)) {
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10019;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0x96;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10658;
            HQ2_READ_FIFO = 0x120000;
        }
    }
    temp_s0->unk1C = var_a4;
    temp_s0->unk18 = arg3;
    var_a1 = arg0 + 0x16C9C;
    if (arg1->unk50 == 0) {
        var_a1 = arg0->unk16C9C;
        var_a2 = var_a1 + 8;
loop_3:
        var_a4 = *var_a1;
        if (var_a4 == -1) {
            sp8 = (s64) arg0;
            var_a5 = arg1->unk0;
            *var_a1 = var_a5;
        } else {
            var_a1 += 4;
            if (var_a1 == var_a2) {
                sp8 = (s64) arg0;
            } else {
                goto loop_3;
            }
        }
    }
    temp_s0->unk24->unk6 = 1;
    temp_a7 = temp_s0->unk24;
    sp8 = (s64) arg0;
    temp_a6 = temp_a7->unk4 + 1;
    temp_a7->unk4 = temp_a6;
    __glOdysseyMIPS_SYNC(var_a1, var_a2, -1, var_a4, var_a5, temp_a6, temp_a7);
    temp_a1 = temp_s0->unk24;
    var_a0 = arg0;
    if (temp_a1->unk2 == 0) {
        if (temp_a1->unk0 != 0) {
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return 1;
        }
        var_a0 = (? *) sp8;
        goto block_9;
    }
block_9:
    temp_a4 = arg1->unk0;
    temp_a3 = temp_s0->unk8;
    if (__glOdysseyIoctl(var_a0, 0x6F640003, sp, temp_a3, temp_a4, temp_a4, (s32 *) (s16) temp_a3, (s16) temp_s0->unkC) != 0) {
        temp_a7_2 = temp_s0->unk24;
        temp_a7_2->unk4 = (u16) (temp_a7_2->unk4 - 1);
        temp_s0->unk24->unk6 = 0;
        __glOdysseyMIPS_SYNC();
        return 0;
    }
    return 1;
}

s32 __glOdysseyPMObjGroupResident(s64 arg0, s64 arg2, s64 arg3) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_v0;
    ? *temp_v0_2;

    sp10 = arg3;
    sp8 = arg2;
    sp0 = arg0;
    temp_v0_2 = __glOdysseyClosePMObjReference(NULL);
    if (temp_v0_2 == NULL) {
        return 0;
    }
    temp_v0 = __glOdysseyClosePMObjReference((? *) sp0, temp_v0_2, (? *) sp8, (? *) sp10, NULL);
    if (temp_v0 != NULL) {
        return (*temp_v0->unk24 == 0) ? 0 : 1;
    }
    return 0;
}

s32 __glOdysseyOpenPMObjReference(s64 arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_v0;
    ? *temp_v0_2;
    s32 *var_a0;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_t0;
    s32 var_a3;
    s32 var_v0;
    void *var_a0_2;

    var_v0 = 1;
    if (arg1 != -3) {
        sp8 = arg2;
        sp0 = arg3;
        if (arg1 != -4) {
            sp18 = arg4;
            sp10 = arg5;
            sp20 = arg0;
            temp_v0 = __glOdysseyClosePMObjReference((? *) arg0, (? *)1);
            if (temp_v0 != NULL) {
                temp_v0_2 = __glOdysseyClosePMObjReference((? *) sp20, temp_v0, (? *) sp8, (? *) sp0, (void *)1);
                if (temp_v0_2->unk10 != 0) {
                    return 0;
                }
                temp_v0_2->unk10 = 1;
                var_v0 = __glOdysseyReadFromPMObj(sp20, temp_v0, (s16) temp_v0_2, 0, (s32) sp10);
                var_a3 = sp8 * 4;
                if (sp0 >= sp8) {
                    var_a0 = var_a3 + sp18;
                    temp_a5 = (sp0 - sp8) + 1;
                    if (temp_a5 & 1) {
                        var_a0 += 4;
                        temp_a6 = *(temp_v0->unk8 + var_a3);
                        var_a3 += 4;
                        var_a0->unk-4 = temp_a6;
                    }
                    if ((temp_a5 >> 1) != 0) {
                        do {
                            *var_a0 = *(temp_v0->unk8 + var_a3);
                            var_a0 += 8;
                            temp_t0 = *(temp_v0->unk8 + (var_a3 + 4));
                            var_a3 += 8;
                            var_a0->unk-4 = temp_t0;
                        } while (var_a0 != (sp18 + ((sp0 + 1) * 4)));
                    }
                }
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return var_v0;
            }
            return 0;
        }
        var_a0_2 = arg0 + 0x10000;
        arg4->unk0 = (s32) arg0->unk16D54;
        if (arg5 == 0) {
            goto block_8;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_v0;
    }
    var_a0_2 = arg0 + 0x10000;
    arg4->unk0 = (s32) arg0->unk16D40;
    arg4->unk10 = (s32) arg0->unk16D68;
    arg4->unk14 = (s32) arg0->unk16D7C;
    arg4->unk18 = (s32) arg0->unk16D90;
    arg4->unk1C = (s32) arg0->unk16DA4;
    if (arg5 == 0) {
block_8:
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10019;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0x96;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        var_a0_2->unk-67D0 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10658;
        HQ2_READ_FIFO = 0x120000;
    }
    return var_v0;
}

s32 __glOdysseyOpenPMObjWriteReference(? *arg0, s32 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_v0_2;
    s32 var_a0;
    s64 temp_v0;

    if (arg1 != -3) {
        sp0 = arg2;
        if (arg1 != -4) {
            sp10 = arg3;
            sp8 = arg4;
            temp_v0 = __glOdysseyClosePMObjReference((? *)1);
            var_a0 = 0;
            unksp20 = temp_v0;
            if (temp_v0 != 0) {
                temp_v0_2 = __glOdysseyClosePMObjReference(arg0, (? *) unksp20, (? *) sp0, (? *)1);
                if (temp_v0_2->unk14 != 0) {
                    return 0;
                }
                temp_v0_2->unk14 = 1;
                var_a0 = __glOdysseyReadFromPMObj((s64) arg0, (? *) unksp20, (s16) temp_v0_2, 1, (s32) sp8);
                *sp10 = (s32) *(unksp20->unk8 + (sp0 * 4));
                /* Duplicate return node #9. Try simplifying control flow for better match */
                return var_a0;
            }
            goto block_8;
        }
        *arg3 = (s32) arg0->unk16D54;
        goto block_6;
    }
    switch (arg2) {                                 /* irregular */
    case 7:
        *arg3 = (s32) arg0->unk16DA4;
        break;
    case 0:
        *arg3 = (s32) arg0->unk16D40;
        break;
    case 4:
        *arg3 = (s32) arg0->unk16D68;
        break;
    case 5:
        *arg3 = (s32) arg0->unk16D7C;
        break;
    case 6:
        *arg3 = (s32) arg0->unk16D90;
        break;
    }
block_6:
    if (arg4 == 0) {
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10019;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0x96;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10658;
        HQ2_READ_FIFO = 0x120000;
    }
    var_a0 = 1;
block_8:
    return var_a0;
}

s32 __glOdysseyClosePMObjWriteReference(s64 arg0, s32 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_v0_2;
    s64 temp_v0;
    void *temp_a6;
    void *temp_v1;

    if (arg1 != -3) {
        sp8 = arg2;
        sp0 = arg0;
        if (arg1 != -4) {
            temp_v0 = __glOdysseyClosePMObjReference((? *) sp0, NULL);
            sp10 = temp_v0;
            if (temp_v0 != 0) {
                temp_v0_2 = __glOdysseyClosePMObjReference((? *) sp0, (? *) sp10, (? *) sp8, NULL);
                if (temp_v0_2->unk14 != 0) {
                    temp_v0_2->unk14 = 0;
                    temp_v0_2->unk24->unk6 = 0;
                    temp_v1 = temp_v0_2->unk24;
                    temp_v1->unk4 = (u16) (temp_v1->unk4 - 1);
                    if (sp10->unk50 == 0) {
                        temp_a6 = sp0->unk16C9C;
                        if (temp_a6->unk0 == sp10->unk0) {
                            temp_a6->unk0 = -1;
                        }
                        if (temp_a6->unk4 == sp10->unk0) {
                            temp_a6->unk4 = -1;
                        }
                    }
                    HQ2_READ_FIFO = 0x10A5A;
                    HQ2_READ_FIFO = (s32) temp_v0_2->unk20;
                    HQ2_READ_FIFO = (s32) temp_v0_2->unk24->unk4;
                    return 1;
                }
                /* Duplicate return node #10. Try simplifying control flow for better match */
                return 0;
            }
            return 0;
        }
    }
    return 1;
}

? *__glOdysseyClosePMObjReference(s64 arg0, ? *arg1, s64 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_v0_2;
    s64 temp_v0;
    void *temp_a6;
    void *temp_v1;

    if (arg1 != (? *)-3) {
        sp10 = arg2;
        sp8 = arg3;
        sp0 = arg0;
        if (arg1 != (? *)-4) {
            temp_v0 = __glOdysseyClosePMObjReference((? *) sp0, NULL);
            sp18 = temp_v0;
            if (temp_v0 != 0) {
                temp_v0_2 = __glOdysseyClosePMObjReference((? *) sp0, (? *) sp18, (? *) sp10, (? *) sp8, NULL);
                if (temp_v0_2 != NULL) {
                    if (temp_v0_2->unk10 != 0) {
                        temp_v0_2->unk10 = 0;
                        temp_v0_2->unk24->unk6 = 0;
                        temp_v1 = temp_v0_2->unk24;
                        temp_v1->unk4 = (u16) (temp_v1->unk4 - 1);
                        if (sp18->unk50 == 0) {
                            temp_a6 = sp0->unk16C9C;
                            if (temp_a6->unk0 == sp18->unk0) {
                                temp_a6->unk0 = -1;
                            }
                            if (temp_a6->unk4 == sp18->unk0) {
                                temp_a6->unk4 = -1;
                            }
                        }
                        HQ2_READ_FIFO = 0x10A5A;
                        HQ2_READ_FIFO = (s32) temp_v0_2->unk20;
                        HQ2_READ_FIFO = (s32) temp_v0_2->unk24->unk4;
                        return (? *)1;
                    }
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    return NULL;
                }
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return NULL;
            }
            return NULL;
        }
    }
    return (? *)1;
}

? *LookupKnownGroup(s64 arg0, s32 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    s64 sp8;
    s64 sp0;
    ? *temp_v0;
    s64 temp_a0;
    s64 temp_v0_2;
    s64 var_v0;

    if (arg1 != -3) {
        sp8 = arg2;
        sp20 = arg0;
        if (arg1 != -4) {
            temp_a0 = sp20 + 0x16C78;
            sp0 = temp_a0;
            temp_v0 = __glOdysseyClosePMObjReference((? *) temp_a0, (? *)0x16C78);
            if (temp_v0 != NULL) {
                return temp_v0;
            }
            var_v0 = 0;
            if (sp8 != 0) {
                temp_v0_2 = sub_0d9d0000((? *) sp20, (? *)0x54);
                sp18 = temp_v0_2;
                if (temp_v0_2 != 0) {
                    M2C_ERROR(/* unknown instruction: sdl $zero, ($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x7($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x8($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0xf($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x10($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x17($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x18($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x1f($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x20($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x27($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x28($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x2f($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x30($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x37($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x38($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x3f($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x40($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x47($at) */);
                    M2C_ERROR(/* unknown instruction: sdl $zero, 0x48($at) */);
                    M2C_ERROR(/* unknown instruction: sdr $zero, 0x4f($at) */);
                    sp18->unk50 = (unaligned s32) 0;
                    sp18->unk0 = arg1;
                    __glOdysseyClosePMObjReference((? *) sp0, (? *) sp18);
                    var_v0 = sp18;
                    if (__glOdysseyClosePMObjReference((? *) sp20, (? *) sp18, NULL, (? *)0xF, (void *)1) == NULL) {
                        __glOdysseyClosePMObjReference((? *) sp20, (? *) sp18);
                        var_v0 = 0;
                    }
                } else {
                    __glSetError(0x505);
                    var_v0 = 0;
                }
            }
            return (? *) var_v0;
        }
    }
    return NULL;
}

void *LookupCoresidRange(s64 arg0, s64 arg1, s64 arg2, s32 arg3, s32 arg4) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s16 spA;
    s16 sp8;
    s32 sp4;
    s32 sp0;
    s64 temp_v0;
    u16 *temp_a3;
    void *temp_a4;
    void *temp_t0;
    void *var_a7;

    temp_t0 = arg1 + (arg2 * 4);
    var_a7 = temp_t0->unkC;
    if (var_a7 != NULL) {
loop_1:
        if (var_a7->unkC < arg3) {
            var_a7 = var_a7->unk0;
            if (var_a7 == NULL) {
                goto block_3;
            }
            goto loop_1;
        }
        return var_a7;
    }
block_3:
    sp40 = (s64) temp_t0;
    sp38 = arg2;
    sp30 = arg1;
    sp28 = arg0;
    if (arg4 != 0) {
        temp_v0 = sp28->unk0(sp28, 0x2C, var_a7);
        sp48 = temp_v0;
        if (temp_v0 != 0) {
            sp48->unk1C = -1;
            sp48->unk18 = -1;
            sp48->unk0 = 0;
            sp48->unk10 = 0;
            sp48->unk14 = 0;
            sp48->unkC = arg3;
            sp48->unk8 = (s32) sp38;
            sp48->unk28 = NULL;
            sp48->unk24 = NULL;
            sp48->unk20 = 0;
            sp48->unk4 = (s32) sp30;
            sp0 = 2;
            spA = (s16) arg3;
            sp8 = (s16) sp38;
            sp4 = sp30->unk0;
            if (__glOdysseyIoctl((? *) sp28, 0x6F640004, sp, (? *) sp38, 2) != 0) {
                if (sp48 != 0) {
                    sp28->unkC(sp28, sp48);
                }
                goto block_8;
            }
            if (sp0 & 0x10) {
                (sp28 + (sp20 * 4))->unk16C9C = (s32) sp18;
            }
            sp30->unk4 = spC;
            sp30->unk8 = (s32) ((sp28->unk16C94 + ((spC >> 8) * 4))->unk1C + ((spC & 0xFF) << 6));
            sp30->unk50 = (s32) spE;
            sp48->unk20 = sp10;
            temp_a3 = sp28->unk16C98 + (sp10 * 2);
            sp48->unk28 = temp_a3;
            sp48->unk22 = sp12;
            temp_a4 = (sp28 + ((sp12 >> 0xA) * 4))->unk16C9C + ((sp12 & 0x3FF) * 0x10);
            sp48->unk24 = temp_a4;
            temp_a4->unk4 = (u16) *temp_a3;
            sp48->unk24->unk6 = 0;
            sp48->unk24->unk8 = 0;
            sp48->unk0 = (s32) sp40->unkC;
            sp40->unkC = (s32) sp48;
            return (void *) sp48;
        }
        __glSetError(0x505);
block_8:
        /* Duplicate return node #9. Try simplifying control flow for better match */
        return NULL;
    }
    return NULL;
}

/*
Decompilation failure in function LookupCoresidRangeWithLevel:

Cannot find branch target __glOdysseyClosePMObjReference
*/

s32 AddKnownGroup(? *arg1) {
    return ((__glOdysseyClosePMObjReference(*arg1, arg1) ^ (s32) *arg1) == 0) ? 0 : 1;
}

s32 RemoveKnownGroup(? *arg0, ? **arg1) {
    ? **var_s1;
    ? *var_a1;
    ? *var_s0;

    var_s1 = arg1;
    do {
        var_s0 = var_s1->unkC;
        var_a1 = var_s0;
        if (var_s0 != NULL) {
loop_7:
            var_s0 = *var_s0;
            if (var_s0 != NULL) {
                sub_0d9d0000(arg0, var_a1);
                var_a1 = var_s0;
                if (var_s0 == NULL) {

                } else {
                    goto loop_7;
                }
            } else {
                var_a1 = var_s0;
                if (var_s0 != NULL) {
                    goto loop_7;
                }
            }
        }
        var_s1 += 4;
    } while (var_s1 != (arg1 + 0x40));
    __glOdysseyClosePMObjReference(arg0 + 0x16C78, *arg1);
    if (arg1 != NULL) {
        arg0->unkC(arg0, arg1);
    }
    return 1;
}

void DestroyKnownGroup(? *arg0) {
    __glOdysseyClosePMObjReference(*(? **)0x1010, arg0);
}

void InitCSet(void *arg0, s32 arg1) {
    arg0->unk18 = arg1;
    arg0->unk8 = 0;
    arg0->unkC = 0;
    arg0->unk0 = 0;
}

/*
Decompilation failure in function DestroyCSet:

Cannot find branch target __glOdysseyClosePMObjReference
*/

void *NewChunkNode(s32 arg0) {
    s64 sp0;
    s64 temp_a1;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2;
    void *temp_v0;

    temp_s1 = *(void **)0x1010;
    temp_s0 = temp_s1->unk0(temp_s1, 0x10);
    temp_a1 = (1 << arg0) * 4;
    sp0 = temp_a1;
    temp_v0 = temp_s1->unk0(temp_s1, temp_a1);
    temp_s2 = temp_v0;
    if (temp_s0 != NULL) {
        if (temp_v0 == NULL) {
            goto block_2;
        }
        temp_s0->unkC = 0;
        temp_s0->unk8 = 0;
        temp_s0->unk4 = 0;
        temp_s0->unk0 = NULL;
        bzero(temp_v0, sp0);
        temp_s0->unk0 = temp_s2;
        return temp_s0;
    }
    if (temp_v0 != NULL) {
        temp_s1->unkC(temp_s1, temp_v0);
    }
block_2:
    if (temp_s0 != NULL) {
        temp_s1->unkC(temp_s1, temp_s0);
    }
    return NULL;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x38, 0x3c, 0x40, 0x44], gap at: 0x28. */
s64 AllocSpecificCSetId(void *arg0, s64 arg1, s64 arg2) {
    ? *temp_a0;
    ? *temp_v0_2;
    ? *var_a5;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_v0;
    s32 var_s2;
    s32 var_v0;

    unksp20 = arg1;
    unksp28 = arg2;
    temp_a2 = arg0->unk18;
    temp_v0 = arg0->unk8;
    var_s2 = 0;
    temp_s1 = arg1 >> temp_a2;
    temp_s4 = (temp_s1 - temp_v0) + 1;
    unksp30 = arg1 & ((1 << temp_a2) - 1);
    if ((temp_s1 >= temp_v0) && (temp_s4 > 0)) {
loop_10:
        temp_v0_2 = __glOdysseyClosePMObjReference((? *) arg0->unk18);
        var_s2 += 1;
        if (temp_v0_2 != NULL) {
            temp_a0 = arg0->unk0;
            if (temp_a0 == NULL) {
                temp_v0_2->unkC = temp_v0_2;
                temp_v0_2->unk8 = temp_v0_2;
                arg0->unk0 = temp_v0_2;
            } else {
                temp_v0_2->unk8 = temp_a0;
                temp_v0_2->unkC = (? *) arg0->unk0->unkC;
                arg0->unk0->unkC = temp_v0_2;
                temp_v0_2->unkC->unk8 = temp_v0_2;
            }
            temp_v0_2->unk4 = 0;
            arg0->unk8 = (s32) (arg0->unk8 + 1);
            if (temp_s4 != var_s2) {
                goto loop_10;
            }
            goto block_3;
        }
        return -1;
    }
block_3:
    var_a5 = arg0->unk0;
    var_v0 = 0;
    if (temp_s1 > 0) {
        do {
            var_v0 += 1;
            var_a5 = var_a5->unk8;
        } while (temp_s1 != var_v0);
    }
    var_a5->unk0[unksp30] = (? *) unksp28;
    var_a5->unk4 = (s32) (var_a5->unk4 + 1);
    arg0->unkC = (s32) (arg0->unkC + 1);
    return unksp20;
}

void InitCSetCursor(void *arg0) {
    arg0->unk14 = 0;
    arg0->unk10 = 0;
    arg0->unk4 = (s32) arg0->unk0;
}

s32 NextCSetElem(void *arg0) {
    s32 temp_a7;
    s32 temp_t3;
    s32 var_a2;
    s32 var_a3;
    s32 var_a5;
    void *temp_t8;
    void *var_a4;

    var_a4 = arg0->unk4;
    if ((var_a4 == NULL) || (arg0->unk14 != 0)) {
        arg0->unk14 = 0;
        return 0;
    }
    temp_a7 = 1 << arg0->unk18;
    M2C_TRAP_IF(temp_a7 == 0);
    var_a3 = arg0->unk10 - ((s32) ((second half of f64) / (f64) (second half of f64)) * temp_a7);
    arg0->unk10 = var_a3;
    var_a5 = 0;
    var_a2 = var_a3 * 4;
loop_4:
    if (var_a4->unk4 != 0) {
        if (var_a3 < temp_a7) {
loop_7:
            var_a5 = *(var_a4->unk0 + var_a2);
            var_a2 += 4;
            if (var_a5 == 0) {
                var_a3 += 1;
                arg0->unk10 = var_a3;
                if (var_a2 >= (temp_a7 * 4)) {
                    goto block_9;
                }
                goto loop_7;
            }
            temp_t3 = var_a3 + 1;
            arg0->unk10 = temp_t3;
            if (temp_a7 == temp_t3) {
                arg0->unk10 = 0;
                temp_t8 = var_a4->unk8;
                arg0->unk4 = temp_t8;
                if (arg0->unk0 == temp_t8) {
                    arg0->unk14 = 1;
                }
            }
            return var_a5;
        }
block_9:
        arg0->unk10 = 0;
        var_a4 = var_a4->unk8;
        var_a3 = 0;
        goto block_10;
    }
    var_a4 = var_a4->unk8;
block_10:
    arg0->unk4 = var_a4;
    var_a2 = var_a3 * 4;
    if (arg0->unk0 == var_a4) {
        return var_a5;
    }
    goto loop_4;
}

void DeallocCSetId(void *arg0, s32 arg1) {
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a4;
    void *var_a3;

    temp_a6 = arg0->unk18;
    temp_a5 = arg1 >> temp_a6;
    var_a3 = arg0->unk0;
    if (temp_a5 > 0) {
        var_a4 = 0;
        do {
            var_a4 += 1;
            var_a3 = var_a3->unk8;
        } while (temp_a5 != var_a4);
    }
    *(var_a3->unk0 + ((arg1 & ((1 << temp_a6) - 1)) * 4)) = 0;
    var_a3->unk4 = (s32) (var_a3->unk4 - 1);
    arg0->unkC = (s32) (arg0->unkC - 1);
}

s32 LookupCSetId(void *arg0, s32 arg1) {
    s32 *var_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a2;

    temp_a5 = arg0->unk18;
    temp_a4 = arg1 >> temp_a5;
    var_a3 = arg0->unk0;
    if (temp_a4 > 0) {
        if (var_a3 != NULL) {
            var_a2 = 1;
loop_4:
            var_a3 = var_a3->unk8;
            if (var_a2 >= temp_a4) {
                goto block_5;
            }
            var_a2 += 1;
            if (var_a3 != NULL) {
                goto loop_4;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return 0;
    }
block_5:
    if (var_a3 == NULL) {
        return 0;
    }
    return *(*var_a3 + ((arg1 & ((1 << temp_a5) - 1)) * 4));
}
