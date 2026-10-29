? __glInitBuffer();                                 /* extern */
? fprintf(void *, void *, ?, s32, s32, f64, s32, ?); /* extern */
extern ? __glFetchSpan;
extern ? __glReadSpan;
extern ? __glReturnSpan;
extern ? __glim_Color3f;
extern ? __iob;
extern ? sub_0d960000;

void Store(void **arg0, void *arg1) {
    s32 temp_a6;
    void *temp_a5;

    temp_a5 = *arg0;
    temp_a6 = temp_a5->unkE50;
    fprintf(&__iob + 0x20, &__glim_Color3f + 0x4640, second half of f64, arg1->unk0 - temp_a5->unkE4C, arg1->unk4 - temp_a6, (f64) (second half of f64), temp_a6, 0x1944A0);
}

void Pick(void) {

}

void Fetch(void) {

}

s32 StoreStippledSpan(void *arg0) {
    s64 sp70;
    s64 sp38;
    f32 spC;
    s32 sp4;
    s32 sp0;
    f32 *var_s2;
    s32 temp_a2;
    s32 temp_s3;
    s32 var_a2;
    s32 var_s1;
    s32 var_s7;
    s64 temp_a0;
    s64 var_s4;
    u32 var_s0;
    void *temp_s5;
    void *var_s8;

    var_s8 = arg0->unk7740;
    var_s7 = arg0->unk7660;
    sp4 = arg0->unk7630;
    temp_s5 = arg0->unk7748;
    var_s2 = arg0->unk7738;
    var_s1 = arg0->unk762C;
    if (var_s7 != 0) {
        do {
            var_s0 = 0x80000000;
            temp_a2 = (var_s7 > 0x20) ? 0x20 : var_s7;
            temp_a0 = temp_a2 - 1;
            var_s8 += 4;
            var_s7 -= temp_a2;
            temp_s3 = var_s8->unk-4;
            var_s4 = temp_a0;
            if (temp_a0 >= 0) {
                sp70 = (s64) var_s1;
                sp38 = temp_a0;
                var_a2 = temp_s3 & 0x80000000;
                do {
                    if (var_a2 != 0) {
                        sp0 = var_s1;
                        spC = *var_s2;
                        temp_s5->unkA4(temp_s5, sp, var_a2);
                    }
                    var_s2 += 0x10;
                    var_s4 -= 1;
                    var_s1 += 1;
                    var_s0 = var_s0 >> 1;
                    var_a2 = temp_s3 & var_s0;
                } while (var_s4 != -1);
                var_s1 = sp70 + sp38 + 1;
            }
        } while (var_s7 != 0);
    }
    return 0;
}

s32 StoreSpan(void *arg0) {
    f32 spC;
    s32 sp4;
    s32 sp0;
    f32 *var_s1;
    s32 temp_s3;
    s32 var_s0;
    void *temp_s2;

    sp4 = arg0->unk7630;
    var_s0 = arg0->unk762C;
    temp_s2 = arg0->unk7748;
    temp_s3 = var_s0 + arg0->unk7660;
    var_s1 = arg0->unk7738;
    if (var_s0 < temp_s3) {
        do {
            sp0 = var_s0;
            spC = *var_s1;
            var_s1 += 0x10;
            temp_s2->unkA4(temp_s2, sp);
            var_s0 += 1;
        } while (temp_s3 != var_s0);
    }
    return 0;
}

void __glOdysseyInitCI(void *arg0, void *arg1) {
    s32 temp_a1;
    s32 var_a2;
    void *temp_v1;

    __glInitBuffer();
    arg0->unkB4 = &__glReturnSpan;
    arg0->unkB0 = &__glReadSpan;
    arg0->unkC8 = &__glFetchSpan;
    temp_v1 = &sub_0d960000 + 0x41A0;
    arg0->unkA8 = temp_v1;
    arg0->unkAC = temp_v1;
    arg0->unkB8 = (void *) (&sub_0d960000 + 0x42E0);
    arg0->unkA0 = (void *) (&sub_0d960000 + 0x4190);
    arg0->unkA4 = (void *) (&sub_0d960000 + 0x40F0);
    arg0->unkBC = (void *) (&sub_0d960000 + 0x41B0);
    temp_a1 = arg1->unkCB4;
    var_a2 = (1 << temp_a1) - 1;
    if (temp_a1 < 0x20) {
        arg0->unk98 = var_a2;
    } else {
        arg0->unk98 = -1;
        var_a2 = -1;
    }
    arg0->unk48 = var_a2;
    arg0->unk80 = 1.0f;
    arg0->unk94 = 1.0f;
    arg0->unk60 = 1.0f;
    arg0->unk90 = 1.0f;
    arg0->unk5C = 1.0f;
    arg0->unk8C = 1.0f;
    arg0->unk58 = 1.0f;
    arg0->unk88 = 1.0f;
    if (temp_a1 < 0x11) {
        if (temp_a1 >= 9) {
            arg0->unk18 = 2;
            return;
        }
        arg0->unk18 = 1;
        return;
    }
    arg0->unk18 = 4;
}
