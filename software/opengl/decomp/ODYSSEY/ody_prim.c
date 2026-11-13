? __glSetError(?, s32, void *, void *, void *, s32, s32, s32); /* extern */
extern s32 HQ2_READ_FIFO;

void __glOdyim_Begin(u64 arg0) {
    s64 sp8;
    u64 sp0;
    s32 temp_a1;
    s32 temp_a6;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_a4;

    temp_a3 = *(void **)0x1010;
    temp_a2 = *(void **)0x1018;
    temp_a4 = temp_a3 + 0x10000;
    temp_a1 = temp_a2 == NULL;
    temp_a2_2 = (temp_a3->unk16964 != 0) ? ((temp_a1 == 0) ? temp_a2 : (void *)2) : temp_a2;
    if (temp_a2_2 != NULL) {
        sp8 = (s64) temp_a3;
        sp0 = arg0;
        if (temp_a2_2 != (void *)2) {
            __glSetError(0x502, temp_a1, temp_a2_2, temp_a3, temp_a4, 2);
        } else {
            temp_a3->unk16974 = 1;
            sp8->unk2E40(sp8, temp_a1, temp_a2_2, temp_a3, temp_a4, 2);
            *(void *)0x1018 = NULL;
            sp8->unk17F4->unk1C(sp0);
        }
    } else {
        temp_a6 = arg0 < 0xAU;
        if (temp_a6 != 0) {
            if (arg0 == 2) {
                temp_a3->unk19DCE = 1;
            }
            HQ2_READ_FIFO = 0x14400;
            HQ2_READ_FIFO = (s32) arg0;
            *(void *)0x1018 = (void *)1;
            temp_a3->unk19D98 = 0.0f;
            return;
        }
        __glSetError(0x500, temp_a1, temp_a3 + 0x20000, temp_a3, (void *)1, 0x10000, temp_a6, 0x10000);
    }
}

void __glOdyim_End(void) {
    s32 temp_a2;

    temp_a2 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glSetError(0x502, temp_a2, (void *)0x10000, (void *)0xFA, (void *)1);
        return;
    }
    HQ2_READ_FIFO = 0x14001;
    if (temp_a2->unk96F4 != 0) {
        temp_a2->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    temp_a2->unk9830 = 1;
    if (temp_a2->unk19DCE != 0) {
        temp_a2->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        temp_a2->unk19DCE = 0U;
    }
    *(void *)0x1018 = 0;
}

void __glOdysseyRect(void *arg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4) {
    ? (*temp_s0)(f32, f32);

    arg0->unk17F4->unk1C(7);
    temp_s0 = arg0->unk17F4->unk530;
    temp_s0(fparg1, fparg2);
    temp_s0(fparg3, fparg2);
    temp_s0(fparg3, fparg4);
    temp_s0(fparg1, fparg4);
    arg0->unk17F4->unk2C();
}

void __glOdyim_SoftBegin(u64 arg0) {
    s64 sp8;
    u64 sp0;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a7;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    temp_a2 = *(void **)0x1018;
    temp_a5 = temp_a4 + 0x10000;
    temp_a1 = temp_a2 == NULL;
    temp_a7 = arg0 < 0xAU;
    temp_a2_2 = (temp_a4->unk16964 != 0) ? ((temp_a1 == 0) ? temp_a2 : (void *)2) : temp_a2;
    if (temp_a2_2 != NULL) {
        sp8 = (s64) temp_a4;
        sp0 = arg0;
        if (temp_a2_2 != (void *)2) {
            __glSetError(0x502, temp_a1, temp_a2_2, (void *) arg0, temp_a4, temp_a5, 2, temp_a7);
        } else {
            temp_a4->unk16974 = 1;
            sp8->unk2E40(sp8, temp_a1, temp_a2_2, arg0, temp_a4, temp_a5, 2, temp_a7);
            *(void *)0x1018 = NULL;
            sp8->unk17F4->unk1C(sp0);
        }
    } else if (temp_a7 == 0) {
        __glSetError(0x500, temp_a1, temp_a2_2, (void *) arg0, temp_a4, temp_a5, temp_a7);
    } else {
        *(void *)0x1018 = (void *)1;
        (temp_a4 + (arg0 * 4))->unk2F34(temp_a4, temp_a1, temp_a2_2, arg0, temp_a4, temp_a5, temp_a7);
    }
}
