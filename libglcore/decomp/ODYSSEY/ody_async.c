? __glNamesDeleteRange(void *, s32, s32, ?);        /* extern */
? __glNamesUnlockData(void *, s32 *);               /* extern */
? __glSetError(?, ?, ?, void *, u32, u32, s64);     /* extern */
? sginap(?);                                        /* extern */

void __glOdysseyInitAsyncState(void) {

}

s32 AsyncPollDequeue(void *arg0, u32 arg1, s32 *arg2, s32 *arg3) {
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t8;
    u32 temp_t3;
    void *temp_a6;

    temp_a5 = arg0->unk4010;
    if (arg0->unk4014 != temp_a5) {
        temp_a6 = arg0 + (temp_a5 * 0x10);
        if (arg1 >= (u64) temp_a6->unk8) {
            *arg2 = temp_a6->unk0;
            *arg3 = (arg0 + (arg0->unk4010 * 0x10))->unk4;
            temp_a7 = arg0->unk4010 + 1;
            temp_t3 = (u32) temp_a7 >> 0x1F;
            temp_t8 = (s32) MULTU_HI(((temp_t3 == 0) ? temp_a7 : -temp_a7), ((0xFFC0 << 0x10) | 0xFFD)) >> 0xA;
            arg0->unk4010 = (s32) (temp_a7 - (((temp_t3 == 0) ? temp_t8 : -temp_t8) * 0x401));
            return 1;
        }
        return 0;
    }
    return 0;
}

s64 __glOdysseyAsyncCheck(void *arg0, s32 arg1, u32 arg6) {
    s64 sp8;
    s32 temp_v0;
    u32 var_a4;
    u32 var_a5;
    u32 var_a6;
    u32 var_v0;
    void *var_a3;

    var_a6 = arg6;
    temp_v0 = arg0->unk718 & arg1;
    switch (temp_v0) {                              /* irregular */
    default:
        return 1;
    case 8:
        var_a3 = arg0 + 0x20000;
        var_a4 = arg0->unk21EE4;
        var_a5 = var_a4 < (u32) arg0->unkE48;
        var_v0 = var_a5;
        if (var_a5 != 0) {
            var_a5 = var_a4 + 1;
            arg0->unk21EE4 = var_a5;
        }
block_7:
        if (var_v0 == 0) {
            sp8 = (s64) var_v0;
            __glSetError(0x502, 1, 8, var_a3, var_a4, var_a5, (s64) var_a6);
        }
        return (s64) var_v0;
    case 2:
        var_a3 = arg0 + 0x20000;
        var_a4 = arg0->unk21EDC;
        var_a6 = var_a4 < (u32) arg0->unkE3C;
        var_a5 = var_a4 + 1;
        var_v0 = var_a6;
        if (var_a6 != 0) {
            arg0->unk21EDC = var_a5;
        }
        goto block_7;
    case 4:
        var_a3 = arg0 + 0x20000;
        var_a4 = arg0->unk21EE0;
        var_a6 = var_a4 < (u32) arg0->unkE40;
        var_a5 = var_a4 + 1;
        var_v0 = var_a6;
        if (var_a6 != 0) {
            arg0->unk21EE0 = var_a5;
        }
        goto block_7;
    case 1:
        var_a3 = arg0 + 0x20000;
        var_a4 = arg0->unk21ED8;
        var_a6 = var_a4 < (u32) arg0->unkE44;
        var_a5 = var_a4 + 1;
        var_v0 = var_a6;
        if (var_a6 != 0) {
            arg0->unk21ED8 = var_a5;
        }
        goto block_7;
    }
}

void __glOdysseyAsyncDropMarker(void *arg0, s32 arg1) {
    s32 *temp_at;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t1_3;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 var_a4;
    u32 temp_t0;
    u32 temp_t1;
    u32 temp_t1_2;
    u32 var_a2;
    void *temp_v0;
    void *var_a3;
    void *var_a5;

    temp_a3 = arg0->unk718 & arg1;
    if (temp_a3 != 2) {
        if (temp_a3 != 4) {
            if (temp_a3 != 1) {
                if (temp_a3 == 8) {
                    var_a3 = arg0 + 0x20000;
                    var_a2 = 0;
                    arg0->unk21EE8 = 0U;
                    goto block_5;
                }
                return;
            }
            var_a3 = arg0 + 0x20000;
            var_a2 = arg0->unk21EE8;
            arg0->unk21ED8 = (s32) (arg0->unk21ED8 - 1);
            goto block_7;
        }
        var_a3 = arg0 + 0x20000;
        var_a2 = arg0->unk21EE8;
        arg0->unk21EE0 = (s32) (arg0->unk21EE0 - 1);
        goto block_7;
    }
    var_a3 = arg0 + 0x20000;
    var_a2 = arg0->unk21EE8;
    arg0->unk21EDC = (s32) (arg0->unk21EDC - 1);
block_7:
    var_a3->unk1EE8 = 0;
    if (var_a2 != 0) {
        if (var_a2 & (1 << 0x3E)) {
            var_a4 = var_a3->unk1ED4;
            temp_a7 = var_a4 + 1;
            temp_t1 = (u32) temp_a7 >> 0x1F;
            temp_t2 = (s32) MULTU_HI(((temp_t1 == 0) ? temp_a7 : -temp_a7), ((0xFFC0 << 0x10) | 0xFFD)) >> 0xA;
            var_a5 = arg0 + 0x1DEC0;
            var_a3->unk1ED4 = (s32) (temp_a7 - (((temp_t1 == 0) ? temp_t2 : -temp_t2) * 0x401));
        } else {
            var_a4 = var_a3->unk-2144;
            temp_a7_2 = var_a4 + 1;
            temp_t1_2 = (u32) temp_a7_2 >> 0x1F;
            temp_t2_2 = (s32) MULTU_HI(((temp_t1_2 == 0) ? temp_a7_2 : -temp_a7_2), ((0xFFC0 << 0x10) | 0xFFD)) >> 0xA;
            var_a5 = arg0 + 0x19EA8;
            var_a3->unk-2144 = (s32) (temp_a7_2 - (((temp_t1_2 == 0) ? temp_t2_2 : -temp_t2_2) * 0x401));
        }
    } else {
block_5:
        temp_a4 = var_a3->unk-2148 + 0x400;
        temp_t0 = (u32) temp_a4 >> 0x1F;
        temp_t1_3 = (s32) MULTU_HI(((temp_t0 == 0) ? temp_a4 : -temp_a4), ((0xFFC0 << 0x10) | 0xFFD)) >> 0xA;
        var_a5 = arg0 + 0x19EA8;
        var_a4 = temp_a4 - (((temp_t0 == 0) ? temp_t1_3 : -temp_t1_3) * 0x401);
        var_a3->unk-2148 = var_a4;
    }
    temp_v0 = var_a5 + (var_a4 * 0x10);
    temp_v0->unk8 = (s64) var_a2;
    temp_v0->unk0 = (s32) arg0->unk17E8;
    temp_at = arg0->unk17EC;
    temp_v0->unk4 = temp_at;
    *temp_at += 1;
}

s32 __glOdyim_PollAsyncSGIX(s32 *arg0) {
    s64 sp10;
    s32 temp_v0;
    s32 var_s1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp10 = temp_s0 + 0x10000;
        temp_v0 = __glOdysseyInitAsyncState(temp_s0 + 0x19EA8, temp_s0->unk16D2C->unk8, arg0, sp);
        var_s1 = temp_v0;
        if (temp_v0 == 0) {
            var_s1 = __glOdysseyInitAsyncState(temp_s0 + 0x1DEC0, sp10->unk6D2C->unk18, arg0, sp);
        }
        if (var_s1 != 0) {
            __glNamesUnlockData(temp_s0, sp0);
            if (*sp0 < 2) {
                __glNamesDeleteRange(temp_s0, temp_s0->unk17F0, *arg0, 1);
            }
        }
        return var_s1;
    }
    __glSetError(0x502);
    return 0;
}

s32 __glOdyim_FinishAsyncSGIX(s32 arg0) {
    s32 temp_v0;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        do {
            sginap(0);
            temp_v0 = temp_s1->unk17F4->unk484(arg0);
        } while (temp_v0 == 0);
        return temp_v0;
    }
    __glSetError(0x502);
    return 0;
}
