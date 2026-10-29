s32 __glOdysseyIoctl(void *, void *, void *, u64, s32, u64, s32, s32, s32, s32, u64, u64); /* extern */
? fprintf(void *, void *, ?);                       /* extern */
extern ? __glim_Color3f;
extern ? __iob;

void __glOdysseyEnableHyperpipe(void) {

}

void __glOdysseyDisableHyperpipe(void) {

}

void __glOdysseyFinishHyperpipe(void) {

}

void __glOdysseyInitHyperpipeState(s32 *arg0) {
    *arg0 = 0;
}

s32 __glOdysseyQueryHyperpipeBestRect(void *arg0, s32 arg1, s32 arg2, s64 arg3, s64 arg4) {
    u64 temp_a4;
    u64 temp_a6;

    temp_a6 = (u64) (arg3 << 0x20) >> 0x20;
    temp_a4 = (u64) (arg4 << 0x20) >> 0x20;
    return (__glOdysseyIoctl((void *)0x6F640016, sp, (void *)1, temp_a4, 0x103ED0, temp_a6, arg0->unk21EF0, arg1, 1, arg2, temp_a6, temp_a4) == 0) ? 0 : 1;
}

s32 __glOdysseyQueryHyperpipeRect(void *arg0, s32 arg1, s32 arg2, s64 arg3) {
    u64 temp_a4;

    temp_a4 = (u64) (arg3 << 0x20) >> 0x20;
    return (__glOdysseyIoctl((void *)0x6F640016, sp, (void *)1, temp_a4, 0x103E40, (u64) arg0->unk21EF0, arg1, 1, arg2, (s32) temp_a4) == 0) ? 0 : 1;
}

s32 __glOdysseyQueryHyperpipeLimit(void *arg0, s32 arg1, s32 arg2, s64 arg3) {
    u64 temp_a4;

    temp_a4 = (u64) (arg3 << 0x20) >> 0x20;
    return (__glOdysseyIoctl((void *)0x6F640018, sp, (void *)2, temp_a4, 0x103DC0, (u64) arg0->unk21EF0, arg1, 2, arg2, (s32) temp_a4) == 0) ? 0 : 1;
}

s32 __glOdysseyHyperpipeRect(void *arg0, s32 arg1, s32 arg2, s64 arg3) {
    u64 temp_a4;

    temp_a4 = (u64) (arg3 << 0x20) >> 0x20;
    return (__glOdysseyIoctl((void *)0x6F640018, sp, (void *)1, temp_a4, 0x103D40, (u64) arg0->unk21EF0, arg1, 1, arg2, (s32) temp_a4) == 0) ? 0 : 1;
}

s32 __glOdysseyHyperpipeStereo(void *arg0, s32 arg2, s64 arg3) {
    s32 temp_a5;

    temp_a5 = arg0->unk21EF0;
    return (__glOdysseyIoctl((void *)0x6F640018, sp, (void *)0x103CC0, (u64) temp_a5, temp_a5, (u64) *arg3, 3, arg2, (s32) ((u64) (arg3 << 0x20) >> 0x20)) == 0) ? 0 : 1;
}

s32 __glOdysseyHyperpipePixelAverage(void *arg0, u64 arg2, s64 arg3) {
    u64 sp40;
    s64 sp38;
    s32 temp_a5;
    u64 temp_a6;

    sp38 = arg3;
    sp40 = arg2;
    fprintf(&__iob + 0x20, &__glim_Color3f + 0x4E58, 0x103C40);
    temp_a5 = *sp38;
    temp_a6 = (u64) (sp38 << 0x20) >> 0x20;
    return (__glOdysseyIoctl(arg0, (void *)0x6F640018, sp, sp40, 4, (u64) temp_a5, (s32) temp_a6, arg0->unk21EF0, temp_a5, 4, (u64) (s32) sp40, temp_a6) == 0) ? 0 : 1;
}

s32 __glOdysseyQueryHyperpipeStereo(void *arg0, s32 arg1, s32 arg2, s64 arg3) {
    u64 temp_a4;

    temp_a4 = (u64) (arg3 << 0x20) >> 0x20;
    return (__glOdysseyIoctl((void *)0x6F640016, sp, (void *)3, temp_a4, 0x103B80, (u64) arg0->unk21EF0, arg1, 3, arg2, (s32) temp_a4) == 0) ? 0 : 1;
}

s32 __glOdysseyQueryHyperpipePixelAverage(void *arg0, s32 arg1, s32 arg2, s64 arg3) {
    u64 temp_a4;

    temp_a4 = (u64) (arg3 << 0x20) >> 0x20;
    return (__glOdysseyIoctl((void *)0x6F640016, sp, (void *)4, temp_a4, 0x103B00, (u64) arg0->unk21EF0, arg1, 4, arg2, (s32) temp_a4) == 0) ? 0 : 1;
}

s32 __glOdysseyBindHyperpipe(s32 arg1) {
    s32 sp0;
    void *temp_a0;

    temp_a0 = *(void **)0x1010;
    if (temp_a0->unkC96 != 0) {
        sp0 = arg1;
        return (__glOdysseyIoctl(temp_a0, (void *)0x6F640014, sp, (u64) arg1) == 0) ? 0 : 1;
    }
    return 1;
}

s32 __glOdysseyUnbindHyperpipe(s32 arg1) {
    return (__glOdysseyIoctl(*(void **)0x1010, (void *)0x6F640015, sp, (u64) arg1) == 0) ? 0 : 1;
}
