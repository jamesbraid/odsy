extern s32 HQ2_READ_FIFO;
extern ? __glNop;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x28, 0x2c, 0x30, 0x34], gap at: 0x20. */
void __glOdysseySoftClipRenderTriangle(void *arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp38;
    s64 sp8;
    s64 sp0;
    ? *temp_t0;
    s32 temp_a2;
    void *temp_a7;

    unksp18 = arg3;
    unksp20 = arg2;
    temp_a7 = arg0->unk6DE0;
    HQ2_READ_FIFO = 0x14400;
    HQ2_READ_FIFO = 4;
    if (arg0->unk570 == 0x1D00) {
        temp_t0 = arg0->unk2F2C;
        arg0->unk2F2C = &__glNop;
        temp_a2 = arg0->unk6DE4;
        sp8 = (s64) arg0;
        sp0 = arg1;
        if (temp_a2 & ~temp_a7->unk0) {
            sp38 = (s64) temp_t0;
            temp_a7->unkC(sp8, sp8->unk6DE0, temp_a2, arg1, 0x10000, temp_a7);
        }
        sp8->unk2F2C = temp_t0;
        arg0->unk19E9C(sp8, sp0);
        arg0->unk19E9C(sp8, unksp20);
        arg0->unk19E9C(sp8, unksp18);
        arg0->unk19E98(sp0);
        arg0->unk19E98(unksp20);
        arg0->unk19E98(unksp18);
    } else {
        sp8 = (s64) arg0;
        arg0->unk19E94(arg1, arg1, 0x10000, temp_a7);
        arg0->unk19E94(unksp20);
        arg0->unk19E94(unksp18);
    }
    HQ2_READ_FIFO = 0x14001;
    if (sp8->unk96F4 != 0) {
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        sp8->unk9830 = 1;
        return;
    }
    sp8->unk9830 = 1;
}

void __glOdysseySoftClipProcessTriangle(void *arg0, void *arg1, void *arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_t9;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2;
    s64 temp_a4;
    void *temp_a1;

    sp28 = arg3;
    temp_a6 = arg2->unk4;
    temp_t0 = arg1->unk4;
    temp_a7 = arg3->unk4;
    sp20 = (s64) arg2;
    temp_a4 = temp_a7 | (temp_t0 | temp_a6);
    if (temp_a4 != 0) {
        if (temp_a7 & (temp_t0 & temp_a6)) {

        } else {
            temp_t9 = arg0->unk2F2C;
            arg0->unk2F2C = &__glNop;
            temp_t2 = arg0->unk6DE4;
            sp10 = (s64) arg1;
            sp18 = (s64) temp_t2;
            sp0 = temp_a4;
            sp8 = (s64) temp_t9;
            if (temp_t2 & ~arg1->unk0) {
                sp10->unkC(sp10, sp18, temp_a4, temp_a6, temp_a7);
            }
            if (sp18 & ~sp20->unk0) {
                sp20->unkC(arg0, sp20, sp18);
            }
            if (sp18 & ~sp28->unk0) {
                sp28->unkC(arg0, sp28, sp18);
            }
            if (arg0->unk570 == 0x1D00) {
                temp_a1 = arg0->unk6DE0;
                if (sp18 & ~temp_a1->unk0) {
                    temp_a1->unkC(arg0, temp_a1, sp18);
                }
            }
            arg0->unk2F70(arg0, sp10, sp20, sp28, sp0);
            arg0->unk2F2C = (? *) sp8;
        }
    } else {
        sp10 = (s64) arg1;
        arg0->unk2F60(arg1, sp20, sp28, temp_a4, temp_a6, temp_a7);
    }
}
