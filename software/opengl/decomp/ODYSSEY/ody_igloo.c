? __glClampAndScaleColor(void *, void *, void *, ?, s32, s32); /* extern */
? __glOdyim_GetFragmentMaterialivSGIX(?, void *, void *, ?); /* extern */
? __glOdysseyGetHardwareShadow(void *, ?, ? *);     /* extern */
? __glOdysseyInitIgloo(void *, ?, ?, void *, ?, ?); /* extern */
? __glOdysseyIoctl(void *, ?, void *, s32, s32, void *, s32, s32); /* extern */
? __glOdysseySendShadowAttributes(s64, void *, s32); /* extern */
? __glOdysseySendShadowVertex(s64, void *, s32);    /* extern */
? __glSetError(?, ?, ?, void *, ?, ?);              /* extern */
? bcopy(s32, void *, ?);                            /* extern */
extern ? __glNop;
extern ? __glOdysseySoftClipEvenTriangleStripVertex;
extern ? __glOdysseySoftClipOddTriangleStripVertex;

void __glOdyim_Swaptmesh(void) {
    s64 sp908;
    s64 sp900;
    ? *temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    void *temp_a0;

    temp_a0 = *(void **)0x1010;
    if (*(s32 *)0x1018 == 1) {
        sp908 = temp_a0 + 0x10000;
        if (temp_a0->unk1695C == 4) {
            temp_a2 = temp_a0->unk2EE4;
            if (temp_a2 != &__glOdysseySoftClipEvenTriangleStripVertex) {
                if (temp_a2 == &__glOdysseySoftClipOddTriangleStripVertex) {
                    temp_a2_2 = temp_a0->unk31D0;
                    temp_a0->unk2EE4 = &__glOdysseySoftClipEvenTriangleStripVertex;
                    temp_a0->unk31D0 = (s32) temp_a0->unk31CC;
                    temp_a0->unk31CC = temp_a2_2;
                }
            } else {
                temp_a3 = temp_a0->unk31D0;
                temp_a0->unk2EE4 = &__glOdysseySoftClipOddTriangleStripVertex;
                temp_a0->unk31D0 = (s32) temp_a0->unk31CC;
                temp_a0->unk31CC = temp_a3;
            }
        } else {
            sp900 = (s64) temp_a0;
            __glOdysseyGetHardwareShadow(temp_a0, 0, &__glOdysseySoftClipEvenTriangleStripVertex);
            bcopy(sp908->unk6D28, sp, 0x900);
            if (((sp80 & 0xF) == 5) && ((u32) ((sp80 >> 4) & 3) >= 2U)) {
                __glOdysseySendShadowAttributes(sp900, sp, (((sp80 >> 6) & 3) + 2) & 3);
                __glOdysseySendShadowVertex(sp900, sp, (((sp80 >> 6) & 3) + 2) & 3);
                __glOdysseySendShadowAttributes(sp900, sp, -1);
            }
        }
    }
}

void __glOdyim_lmcolor(u8 arg0) {
    s32 temp_a2;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a2 = temp_a3->unk7B40;
    if (arg0 != 1) {
        temp_a3->unk7B40 = (s32) (temp_a2 & ~1);
        *(s32 *)0x1018 = 2;
        temp_a3->unk2E24 = (s32) (temp_a3->unk2E24 | 1);
        return;
    }
    temp_a3->unk7B40 = (s32) (temp_a2 | 1);
    *(void *)0x1018 = 2;
    temp_a3->unk2E24 = (s32) (temp_a3->unk2E24 | 1);
}

void __glOdyim_FullScreen(s32 arg0, s32 arg1, s32 arg7) {
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s8 sp8;
    s32 sp4;
    s32 sp0;
    s32 var_a7;
    void *temp_a5;

    var_a7 = arg7;
    temp_a5 = *(void **)0x1010;
    if (arg1 != 0) {
        var_a7 = 1;
        temp_a5->unk16984 = 1;
    } else {
        temp_a5->unk16984 = 0;
    }
    spC = 3;
    sp8 = 6;
    sp4 = 2;
    sp0 = temp_a5->unk7B4C;
    sp18 = arg1;
    sp10 = arg0;
    sp14 = temp_a5->unk7B4C;
    __glOdysseyIoctl(temp_a5, 0x3F1, sp, temp_a5 + 0x10000, arg1, temp_a5, arg0, var_a7);
}

void __glOdyim_IglooInterfaceSGIX(s32 arg0, void *arg1) {
    s32 temp_a0;
    s32 temp_a6;
    s32 temp_a7;
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    switch (arg0) {                                 /* irregular */
    default:
        __glSetError(0x500, 0x819E, 0x81A3, temp_a3, 0x819F, 0x81A2);
        /* fallthrough */
        return;
    case 0x81A1:
        temp_a6 = arg1->unk0;
        temp_a0 = temp_a3->unk7B40;
        if (temp_a6 != 0) {
            temp_a7 = temp_a0 | 2;
            temp_a3->unk7B40 = temp_a7;
            if ((temp_a7 & 1) && (temp_a3->unk2F18 == &__glNop)) {
                __glClampAndScaleColor(temp_a3, temp_a3, arg1, 0x81A2, temp_a6, temp_a7);
            }
        } else {
            temp_a3->unk7B40 = (s32) (temp_a0 & ~2);
            return;
        }
        break;
    case 0x81A2:
        __glOdysseyInitIgloo(temp_a3, 0x819E, 0x81A3, temp_a3, 0x819F, 0x81A2);
        break;
    case 0x81A0:
        __glOdyim_GetFragmentMaterialivSGIX(0x819E, temp_a3, arg1, 0x81A2);
        break;
    case 0x819E:
        __glOdyim_lmcolor((u8) arg1->unk0, arg1->unk7, 0x81A3, temp_a3, arg1, 0x81A2);
        break;
    case 0x81A3:
        __glOdyim_lmcolor(arg1->unk3, 0x819EU, 0x81A3, temp_a3, arg1, 0x81A2);
        break;
    }
}
