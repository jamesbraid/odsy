? ioctl(s32);                                       /* extern */
void __glOdysseyGetHardwareShadow(s32 arg0, void *arg1); /* static */
extern s32 HQ2_READ_FIFO;
extern ? __glim_Color3f;

void __glOdysseyIoctl(void *arg0) {
    ioctl(arg0->unk7B48);
}

void __glOdysseyGetHardwareShadowTest(void) {
    __glOdysseyGetHardwareShadow(*(s32 *)0x1010, NULL);
}

void __glOdysseyGetHardwareShadow(s64 arg0, void *arg1) {
    s64 sp0;

    sp0 = arg0;
    if (__glOdysseyIoctl((void *)0x6F64000C, arg1) < 0) {
        __glOdysseyIoctl((void *) sp0, &__glim_Color3f + 0x4DC8);
    }
}

void __glOdysseySwapBuffers(void *arg0) {
    s32 temp_a3;
    u16 temp_a1;

    if (arg0->unkC96 != 0) {
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
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        temp_a1 = (arg0->unkA6B4 + 1) & 0xFFFF;
        arg0->unkA6B4 = temp_a1;
        HQ2_READ_FIFO = 0x10A5A;
        HQ2_READ_FIFO = arg0->unk16D3C | 0x8000;
        HQ2_READ_FIFO = (s32) temp_a1;
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
        if (!(arg0->unk96A4 & 0x08000000)) {
            HQ2_READ_FIFO = 0x90008116;
        } else {
            HQ2_READ_FIFO = 0x10841;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0x1204B;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0xFFFFFF;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0x10840;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
        }
        HQ2_READ_FIFO = 0x11017;
        HQ2_READ_FIFO = arg0->unk969C;
        HQ2_READ_FIFO = arg0->unk96A0;
        HQ2_READ_FIFO = arg0->unk96A4;
        HQ2_READ_FIFO = arg0->unk96A8;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0x96;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x11017;
        HQ2_READ_FIFO = arg0->unk969C;
        HQ2_READ_FIFO = arg0->unk96A0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = arg0->unk96A8;
        HQ2_READ_FIFO = 0x11017;
        HQ2_READ_FIFO = arg0->unk969C;
        HQ2_READ_FIFO = arg0->unk96A0;
        HQ2_READ_FIFO = arg0->unk96A4 | 0x800000;
        HQ2_READ_FIFO = arg0->unk96A8;
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
        temp_a3 = arg0->unk96A4;
        if (!(temp_a3 & 0x08000000)) {
            HQ2_READ_FIFO = 0x90008116;
        } else {
            HQ2_READ_FIFO = 0x10841;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0x1204B;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0xFFFFFF;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0x10840;
            HQ2_READ_FIFO = 0;
            HQ2_READ_FIFO = 0;
        }
        HQ2_READ_FIFO = 0x11017;
        HQ2_READ_FIFO = arg0->unk969C;
        HQ2_READ_FIFO = arg0->unk96A0;
        HQ2_READ_FIFO = arg0->unk96A4;
        HQ2_READ_FIFO = arg0->unk96A8;
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
        if (__glOdysseyIoctl(arg0, (void *)0x3ED, sp, temp_a3 * 0x10, (s64 *)0x10000, 0x10046, 0x10443, arg0 + 0x10000, arg0->unk7B4C, 0, 0) < 0) {
            __glOdysseyIoctl(arg0, &__glim_Color3f + 0x4DF0);
        }
    }
}

void __glOdysseyFlush(void *arg0) {
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
}

u16 __glOdysseyFinish(void *arg0) {
    s32 temp_t2;
    s32 var_v0;
    u16 *temp_a1;
    u16 temp_a2;

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
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
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
    if (!(arg0->unk96A4 & 0x08000000)) {
        HQ2_READ_FIFO = 0x90008116;
    } else {
        HQ2_READ_FIFO = 0x10841;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x1204B;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0xFFFFFF;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x10840;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
    }
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = arg0->unk96A4;
    HQ2_READ_FIFO = arg0->unk96A8;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0x96;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = arg0->unk96A8;
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = arg0->unk96A4 | 0x800000;
    HQ2_READ_FIFO = arg0->unk96A8;
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
    if (!(arg0->unk96A4 & 0x08000000)) {
        HQ2_READ_FIFO = 0x90008116;
    } else {
        HQ2_READ_FIFO = 0x10841;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x1204B;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0xFFFFFF;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x10840;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
    }
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = arg0->unk96A4;
    HQ2_READ_FIFO = arg0->unk96A8;
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
    temp_t2 = arg0->unk16D3C;
    temp_a2 = (arg0->unkA6B4 + 1) & 0xFFFF;
    arg0->unkA6B4 = temp_a2;
    HQ2_READ_FIFO = 0x10A5A;
    HQ2_READ_FIFO = temp_t2;
    HQ2_READ_FIFO = (s32) temp_a2;
    var_v0 = arg0->unk16C6C->unk4004;
    temp_a1 = arg0->unk16C98 + (temp_t2 * 2);
    if (*temp_a1 != temp_a2) {
loop_5:
        if (*temp_a1 != temp_a2) {
            var_v0 = (s32) *temp_a1;
            if (var_v0 != temp_a2) {
                if (*temp_a1 != temp_a2) {
                    goto loop_5;
                }
            }
        }
    }
    return (u16) var_v0;
}

s32 __glOdysseyVisualsMatch(void *arg0, void *arg1, void *arg3) {
    if ((arg1->unk0 == arg0->unkC90) && (arg1->unk54 == 0) && (arg3->unk54 == 0)) {
        if (arg1->unk4 != 0) {
            if ((arg3->unk4 == 0) || (arg1->unk28 != arg3->unk28)) {
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return 0;
            }
            /* Duplicate return node #8. Try simplifying control flow for better match */
            return 1;
        }
        if (arg1->unk24 == arg3->unk24) {
            return 1;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return 0;
    }
    return 0;
}

void __glOdysseyGetBoardInfoRaw(void *arg0) {
    s64 sp10;
    s32 var_a2;
    s32 var_a3;
    s64 *temp_v0;
    s64 temp_at;
    void *temp_a5;

    if (__glOdysseyIoctl(arg0, (void *)0x66, sp, arg0->unk20(), &sp10, 0x24C) < 0) {
        __glOdysseyIoctl(arg0, &__glim_Color3f + 0x4E08);
    }
    var_a2 = 8;
    var_a3 = 0x48;
    temp_a5 = arg0 + 0x16A20;
    arg0->unk16A20 = sp10;
    do {
        *(var_a2 + temp_a5) = *(var_a2 + &sp10);
        *(var_a2 + (temp_a5 + 8)) = *(var_a2 + (&sp10 + 8));
        *(var_a2 + (temp_a5 + 0x10)) = *(var_a2 + (&sp10 + 0x10));
        *(var_a2 + (temp_a5 + 0x18)) = *(var_a2 + (&sp10 + 0x18));
        *(var_a2 + (temp_a5 + 0x20)) = *(var_a2 + (&sp10 + 0x20));
        *(var_a2 + (temp_a5 + 0x28)) = *(var_a2 + (&sp10 + 0x28));
        var_a3 -= 8;
        *(var_a2 + (temp_a5 + 0x30)) = *(var_a2 + (&sp10 + 0x30));
        temp_v0 = var_a2 + (temp_a5 + 0x38);
        temp_at = *(var_a2 + (&sp10 + 0x38));
        var_a2 += 0x40;
        *temp_v0 = temp_at;
    } while (var_a3 > 0);
    *(var_a2 + temp_a5) = *(var_a2 + &sp10);
}

s32 __glOdysseyDriverMakeCurrent(void *arg0) {
    s32 sp28;
    s32 sp0;
    s32 var_a2;
    s32 var_a3;

    sp28 = 0;
    sp0 = 0;
    var_a3 = 0;
    var_a2 = 0;
    if (arg0->unkCE4 > 0) {
        var_a2 = 2;
        sp0 = 2;
    }
    if (arg0->unkD84 > 0) {
        var_a3 = 2;
        sp28 = 2;
    }
    if (arg0->unkC94 == 0) {
        sp0 = var_a2 | 4;
    }
    if (arg0->unkD34 == 0) {
        sp28 = var_a3 | 4;
    }
    if (__glOdysseyIoctl(arg0, (void *)0x6F640008, sp, var_a3) >= 0) {
        arg0->unk16D40 = sp4;
        arg0->unk16D44 = sp8;
        arg0->unk16D48 = (s32) sp22;
        arg0->unk16D4C = (s32) sp20;
        arg0->unk16D50 = (s32) sp23;
        switch (sp24) {                             /* irregular */
        case 2:
            arg0->unk16D68 = spC;
            arg0->unk16D6C = sp8;
            arg0->unk16D70 = (s32) sp25;
            arg0->unk16D74 = (s32) sp20;
            arg0->unk16D7C = sp10;
            arg0->unk16D80 = sp8;
            arg0->unk16D84 = (s32) sp25;
            arg0->unk16D88 = (s32) sp20;
            arg0->unk16D90 = sp14;
            arg0->unk16D94 = sp8;
            arg0->unk16D98 = (s32) sp25;
            arg0->unk16D9C = (s32) sp20;
            arg0->unk16DA4 = sp18;
            arg0->unk16DA8 = sp8;
            arg0->unk16DAC = (s32) sp25;
            arg0->unk16DB0 = (s32) sp20;
            break;
        case 0:
            arg0->unk16DB0 = 0;
            arg0->unk16DA8 = 0;
            arg0->unk16DA0 = 0;
            arg0->unk16D98 = 0;
            arg0->unk16D90 = 0;
            arg0->unk16D88 = 0;
            arg0->unk16D80 = 0;
            arg0->unk16D78 = 0;
            arg0->unk16D70 = 0;
            arg0->unk16D68 = 0;
            break;
        case 1:
            arg0->unk16D68 = spC;
            arg0->unk16D6C = sp8;
            arg0->unk16D70 = (s32) sp25;
            arg0->unk16D74 = (s32) sp20;
            arg0->unk16D7C = sp10;
            arg0->unk16D80 = sp8;
            arg0->unk16D84 = (s32) sp25;
            arg0->unk16DB4 = 0;
            arg0->unk16DB0 = 0;
            arg0->unk16DAC = 0;
            arg0->unk16DA8 = 0;
            arg0->unk16DA4 = 0;
            arg0->unk16DA0 = 0;
            arg0->unk16D98 = 0;
            arg0->unk16D90 = 0;
            arg0->unk16D88 = (s32) sp20;
            break;
        }
        arg0->unk16D54 = sp2C;
        arg0->unk16D58 = sp30;
        arg0->unk16D5C = (s32) sp4A;
        arg0->unk16D60 = (s32) sp48;
        arg0->unk16D64 = (s32) sp4B;
        return 1;
    }
    __glOdysseyIoctl(arg0, &__glim_Color3f + 0x4E20);
    return 0;
}

void __glOdysseySetDrawbuf(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_a6;

    var_a6 = 0;
    if (arg1 != 0) {
        var_a6 = 1;
        if (arg2 != 0) {
            goto block_2;
        }
        goto block_14;
    }
    if (arg2 == 0) {
block_14:
        if (arg3 == 0) {
            goto block_15;
        }
        goto block_3;
    }
block_2:
    var_a6 |= 2;
    if (arg3 != 0) {
block_3:
        var_a6 |= 4;
        if (arg4 != 0) {

        }
    } else {
block_15:
        if (arg4 == 0) {

        }
    }
    if (__glOdysseyIoctl(arg0, (void *)0x6F640009, sp, var_a6) != 0) {
        __glOdysseyIoctl(arg0, &__glim_Color3f + 0x4E40, (void *)0x10000);
    }
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
    if (!(arg0->unk96A4 & 0x08000000)) {
        HQ2_READ_FIFO = 0x90008116;
    } else {
        HQ2_READ_FIFO = 0x10841;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x1204B;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0xFFFFFF;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x10840;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
    }
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = arg0->unk96A4;
    HQ2_READ_FIFO = arg0->unk96A8;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0x96;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = arg0->unk96A8;
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = arg0->unk96A4 | 0x800000;
    HQ2_READ_FIFO = arg0->unk96A8;
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
    if (!(arg0->unk96A4 & 0x08000000)) {
        HQ2_READ_FIFO = 0x90008116;
    } else {
        HQ2_READ_FIFO = 0x10841;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x1204B;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0xFFFFFF;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x10840;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
    }
    HQ2_READ_FIFO = 0x11017;
    HQ2_READ_FIFO = arg0->unk969C;
    HQ2_READ_FIFO = arg0->unk96A0;
    HQ2_READ_FIFO = arg0->unk96A4;
    HQ2_READ_FIFO = arg0->unk96A8;
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
}
