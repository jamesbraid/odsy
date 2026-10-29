? __glInitBuffer();                                 /* extern */
? fprintf(void *, void *, s32, s32, ? *, s32);      /* extern */
extern ? __glFetchSpan;
extern ? __glReadSpan;
extern ? __glReturnSpan;
extern ? __glim_Color3f;
extern ? __iob;
extern ? sub_0d9d0000;

void Store(void) {

}

void Pick(void) {

}

void Fetch(void **arg0, s32 arg1, s32 arg2) {
    s32 temp_a5_2;
    void *temp_a5;

    temp_a5 = *arg0;
    temp_a5_2 = temp_a5->unkE4C;
    fprintf(&__iob + 0x20, &__glim_Color3f + 0x4DA8, arg1 - temp_a5_2, arg2 - temp_a5->unkE50, &__glim_Color3f, temp_a5_2);
}

s32 StoreStippledSpan(void *arg0) {
    s64 sp70;
    s64 sp38;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_s3;
    s32 var_a2;
    s32 var_s1;
    s32 var_s7;
    s64 temp_a0;
    s64 var_s4;
    u32 var_s0;
    void *temp_s5;
    void *var_s2;
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
                        spC = var_s2->unk0;
                        sp10 = var_s2->unk4;
                        sp14 = var_s2->unk8;
                        sp18 = var_s2->unkC;
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
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    s32 sp4;
    s32 sp0;
    s32 temp_s3;
    s32 var_s0;
    void *temp_s2;
    void *var_s1;

    sp4 = arg0->unk7630;
    var_s0 = arg0->unk762C;
    temp_s2 = arg0->unk7748;
    temp_s3 = var_s0 + arg0->unk7660;
    var_s1 = arg0->unk7738;
    if (var_s0 < temp_s3) {
        do {
            sp0 = var_s0;
            spC = var_s1->unk0;
            sp10 = var_s1->unk4;
            sp14 = var_s1->unk8;
            sp18 = var_s1->unkC;
            var_s1 += 0x10;
            temp_s2->unkA4(temp_s2, sp);
            var_s0 += 1;
        } while (temp_s3 != var_s0);
    }
    return 0;
}

void __glOdysseyInitRGB(void *arg0) {
    void *temp_v1;

    __glInitBuffer();
    arg0->unk84 = 1;
    arg0->unk7C = 0;
    arg0->unk6C = 1;
    arg0->unk50 = 1;
    arg0->unk78 = 0;
    arg0->unk68 = 1;
    arg0->unk4C = 1;
    arg0->unk74 = 0;
    arg0->unk64 = 1;
    arg0->unk48 = 1;
    arg0->unk70 = 0;
    arg0->unk18 = 0;
    arg0->unkB4 = &__glReturnSpan;
    arg0->unkC8 = &__glFetchSpan;
    arg0->unkB0 = &__glReadSpan;
    arg0->unk80 = 1.0f;
    arg0->unk94 = 1.0f;
    arg0->unk60 = 1.0f;
    arg0->unk90 = 1.0f;
    arg0->unk5C = 1.0f;
    arg0->unk8C = 1.0f;
    arg0->unk58 = 1.0f;
    arg0->unk88 = 1.0f;
    arg0->unkB8 = (void *) (&sub_0d9d0000 - 0x53C0);
    arg0->unkBC = (void *) (&sub_0d9d0000 - 0x5500);
    arg0->unkA0 = (void *) (&sub_0d9d0000 - 0x5570);
    temp_v1 = &sub_0d9d0000 - 0x5560;
    arg0->unkAC = temp_v1;
    arg0->unkA8 = temp_v1;
    arg0->unkA4 = (void *) (&sub_0d9d0000 - 0x5580);
}
