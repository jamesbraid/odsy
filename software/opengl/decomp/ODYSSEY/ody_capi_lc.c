s32 __glSPDlistSpace(?, void *, s32, s32, s32);     /* extern */

void __glOdylc_Color3b(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a3;
    void *temp_t3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a5 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a6 = var_a5 < 4;
        if (var_a6 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t3 = var_s1 + (var_s0 * 4);
        temp_t3->unk0 = 0xC580CC0B;
        temp_t3->unk4 = (s32) var_a0;
        temp_t3->unk8 = (s32) var_a1;
        temp_t3->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_t3 + 0x10);
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
        sp18 = var_a0;
        sp20 = var_a1;
        sp28 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x10000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0xC580CC0B;
            temp_t3->unk4 = (s32) var_a0;
            temp_t3->unk8 = (s32) var_a1;
            temp_t3->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_t3 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s1 + (var_s0 * 4);
    temp_t3->unk0 = 0xC580CC0B;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3bv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580CC0B;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk1;
        temp_t1->unkC = (s32) var_a0->unk2;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580CC0B;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk1;
            temp_t1->unkC = (s32) var_a0->unk2;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580CC0B;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk1;
    temp_t1->unkC = (s32) var_a0->unk2;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3d(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    var_a3 = arg3;
    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x10000);
    var_f5 = fparg1;
    var_f4 = second half of f64;
    var_s0 = 0;
    var_a2 = *(s32 *)0x1028;
    var_f6 = fparg0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a3 = var_a2 < 4;
        if (var_a3 != 0) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC580CC0E;
        temp_t0->unk4 = (f32) var_f6;
        temp_t0->unk8 = (f32) var_f5;
        temp_t0->unkC = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 0x10);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 4)) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x10000, var_a2, var_a3);
        var_f5 = sp20;
        var_f4 = second half of f64;
        var_f6 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC580CC0E;
            temp_t0->unk4 = (f32) var_f6;
            temp_t0->unk8 = (f32) var_f5;
            temp_t0->unkC = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 0x10);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC580CC0E;
    temp_t0->unk4 = (f32) var_f6;
    temp_t0->unk8 = (f32) var_f5;
    temp_t0->unkC = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3dv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s32 var_t1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_t1 = var_s0 * 4;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0xC580CC0E;
            temp_t1->unk4 = (f32) var_a0->unk0;
            temp_t1->unk8 = (f32) var_a0->unk8;
            temp_t1->unkC = (f32) var_a0->unk10;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + var_t1;
    temp_t1->unk0 = 0xC580CC0E;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk8;
    temp_t1->unkC = (f32) var_a0->unk10;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3f(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    var_a3 = arg3;
    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x10000);
    var_f4 = fparg2;
    var_f5 = fparg1;
    var_s0 = 0;
    var_a2 = *(s32 *)0x1028;
    var_f6 = fparg0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a3 = var_a2 < 4;
        if (var_a3 != 0) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC580CC0E;
        temp_t0->unk4 = (bitwise f32) var_f6;
        temp_t0->unk8 = (bitwise f32) var_f5;
        temp_t0->unkC = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 0x10);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 4)) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x10000, var_a2, var_a3);
        var_f5 = sp20;
        var_f4 = second half of f64;
        var_f6 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC580CC0E;
            temp_t0->unk4 = (bitwise f32) var_f6;
            temp_t0->unk8 = (bitwise f32) var_f5;
            temp_t0->unkC = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 0x10);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC580CC0E;
    temp_t0->unk4 = (bitwise f32) var_f6;
    temp_t0->unk8 = (bitwise f32) var_f5;
    temp_t0->unkC = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3fv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s32 var_t1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_t1 = var_s0 * 4;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0xC580CC0E;
            temp_t1->unk4 = (f32) var_a0->unk0;
            temp_t1->unk8 = (f32) var_a0->unk4;
            temp_t1->unkC = (f32) var_a0->unk8;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + var_t1;
    temp_t1->unk0 = 0xC580CC0E;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk4;
    temp_t1->unkC = (f32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3i(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a3;
    void *temp_t3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a5 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a6 = var_a5 < 4;
        if (var_a6 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t3 = var_s1 + (var_s0 * 4);
        temp_t3->unk0 = 0xC580CC0D;
        temp_t3->unk4 = (s32) var_a0;
        temp_t3->unk8 = (s32) var_a1;
        temp_t3->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_t3 + 0x10);
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
        sp18 = var_a0;
        sp20 = var_a1;
        sp28 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x10000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0xC580CC0D;
            temp_t3->unk4 = (s32) var_a0;
            temp_t3->unk8 = (s32) var_a1;
            temp_t3->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_t3 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s1 + (var_s0 * 4);
    temp_t3->unk0 = 0xC580CC0D;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3iv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580CC0D;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk4;
        temp_t1->unkC = (s32) var_a0->unk8;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580CC0D;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk4;
            temp_t1->unkC = (s32) var_a0->unk8;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580CC0D;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk4;
    temp_t1->unkC = (s32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3s(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a3;
    void *temp_t3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a5 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a6 = var_a5 < 4;
        if (var_a6 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t3 = var_s1 + (var_s0 * 4);
        temp_t3->unk0 = 0xC580CC0C;
        temp_t3->unk4 = (s32) var_a0;
        temp_t3->unk8 = (s32) var_a1;
        temp_t3->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_t3 + 0x10);
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
        sp18 = var_a0;
        sp20 = var_a1;
        sp28 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x10000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0xC580CC0C;
            temp_t3->unk4 = (s32) var_a0;
            temp_t3->unk8 = (s32) var_a1;
            temp_t3->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_t3 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s1 + (var_s0 * 4);
    temp_t3->unk0 = 0xC580CC0C;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3sv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580CC0C;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk2;
        temp_t1->unkC = (s32) var_a0->unk4;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580CC0C;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk2;
            temp_t1->unkC = (s32) var_a0->unk4;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580CC0C;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk2;
    temp_t1->unkC = (s32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3ub(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a3;
    void *temp_t3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a5 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a6 = var_a5 < 4;
        if (var_a6 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t3 = var_s1 + (var_s0 * 4);
        temp_t3->unk0 = 0xC580CC08;
        temp_t3->unk4 = (s32) var_a0;
        temp_t3->unk8 = (s32) var_a1;
        temp_t3->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_t3 + 0x10);
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
        sp18 = var_a0;
        sp20 = var_a1;
        sp28 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x10000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0xC580CC08;
            temp_t3->unk4 = (s32) var_a0;
            temp_t3->unk8 = (s32) var_a1;
            temp_t3->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_t3 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s1 + (var_s0 * 4);
    temp_t3->unk0 = 0xC580CC08;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3ubv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580CC08;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk1;
        temp_t1->unkC = (s32) var_a0->unk2;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580CC08;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk1;
            temp_t1->unkC = (s32) var_a0->unk2;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580CC08;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk1;
    temp_t1->unkC = (s32) var_a0->unk2;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3ui(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a3;
    void *temp_t3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a5 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a6 = var_a5 < 4;
        if (var_a6 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t3 = var_s1 + (var_s0 * 4);
        temp_t3->unk0 = 0xC580CC0A;
        temp_t3->unk4 = (s32) var_a0;
        temp_t3->unk8 = (s32) var_a1;
        temp_t3->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_t3 + 0x10);
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
        sp18 = var_a0;
        sp20 = var_a1;
        sp28 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x10000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0xC580CC0A;
            temp_t3->unk4 = (s32) var_a0;
            temp_t3->unk8 = (s32) var_a1;
            temp_t3->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_t3 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s1 + (var_s0 * 4);
    temp_t3->unk0 = 0xC580CC0A;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3uiv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580CC0A;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk4;
        temp_t1->unkC = (s32) var_a0->unk8;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580CC0A;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk4;
            temp_t1->unkC = (s32) var_a0->unk8;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580CC0A;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk4;
    temp_t1->unkC = (s32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3us(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a3;
    void *temp_t3;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a6 = arg6;
    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a5 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a6 = var_a5 < 4;
        if (var_a6 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t3 = var_s1 + (var_s0 * 4);
        temp_t3->unk0 = 0xC580CC09;
        temp_t3->unk4 = (s32) var_a0;
        temp_t3->unk8 = (s32) var_a1;
        temp_t3->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_t3 + 0x10);
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
        sp18 = var_a0;
        sp20 = var_a1;
        sp28 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x10000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0xC580CC09;
            temp_t3->unk4 = (s32) var_a0;
            temp_t3->unk8 = (s32) var_a1;
            temp_t3->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_t3 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s1 + (var_s0 * 4);
    temp_t3->unk0 = 0xC580CC09;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color3usv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 4;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580CC09;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk2;
        temp_t1->unkC = (s32) var_a0->unk4;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 4)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580CC09;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk2;
            temp_t1->unkC = (s32) var_a0->unk4;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580CC09;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk2;
    temp_t1->unkC = (s32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Color4b(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_a4;
    void *temp_s1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_a4 = *(void **)0x1010;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a6 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a7 = var_a6 < 5;
        if (var_a7 != 0) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_s1 = var_s1 + (var_s0 * 4);
        temp_s1->unk10 = (s32) var_a3;
        temp_s1->unkC = (s32) var_a2;
        temp_s1->unk8 = (s32) var_a1;
        temp_s1->unk4 = (s32) var_a0;
        temp_s1->unk0 = 0xC580D012;
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
        *(void *)0x1030 = (s32) (temp_s1 + 0x14);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a6 < (var_s0 + 5)) {
        sp18 = var_a0;
        sp20 = var_a3;
        sp28 = var_a1;
        sp30 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x10000, var_a6, var_a7);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_s1 = var_s1 + (var_s0 * 4);
            temp_s1->unk10 = (s32) var_a3;
            temp_s1->unkC = (s32) var_a2;
            temp_s1->unk8 = (s32) var_a1;
            temp_s1->unk4 = (s32) var_a0;
            temp_s1->unk0 = 0xC580D012;
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1030 = (s32) (temp_s1 + 0x14);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s1 = var_s1 + (var_s0 * 4);
    temp_s1->unk10 = (s32) var_a3;
    temp_s1->unkC = (s32) var_a2;
    temp_s1->unk8 = (s32) var_a1;
    temp_s1->unk4 = (s32) var_a0;
    temp_s1->unk0 = 0xC580D012;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4bv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580D012;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk1;
        temp_t1->unkC = (s32) var_a0->unk2;
        temp_t1->unk10 = (s32) var_a0->unk3;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580D012;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk1;
            temp_t1->unkC = (s32) var_a0->unk2;
            temp_t1->unk10 = (s32) var_a0->unk3;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580D012;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk1;
    temp_t1->unkC = (s32) var_a0->unk2;
    temp_t1->unk10 = (s32) var_a0->unk3;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4d(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    f64 var_f7;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    var_a3 = arg3;
    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x10000);
    var_f5 = fparg2;
    var_f4 = second half of f64;
    var_s0 = 0;
    var_a2 = *(s32 *)0x1028;
    var_f7 = fparg0;
    var_f6 = second half of f64;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a3 = var_a2 < 5;
        if (var_a3 != 0) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            sp30 = fparg3;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC580D015;
        temp_t0->unk4 = (f32) var_f7;
        temp_t0->unk8 = (f32) var_f6;
        temp_t0->unkC = (f32) var_f5;
        temp_t0->unk10 = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 0x14);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 5)) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
        sp30 = fparg3;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x10000, var_a2, var_a3);
        var_f5 = sp28;
        var_f4 = second half of f64;
        var_f7 = sp18;
        var_f6 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC580D015;
            temp_t0->unk4 = (f32) var_f7;
            temp_t0->unk8 = (f32) var_f6;
            temp_t0->unkC = (f32) var_f5;
            temp_t0->unk10 = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 0x14);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC580D015;
    temp_t0->unk4 = (f32) var_f7;
    temp_t0->unk8 = (f32) var_f6;
    temp_t0->unkC = (f32) var_f5;
    temp_t0->unk10 = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4dv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s32 var_t1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_t1 = var_s0 * 4;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0xC580D015;
            temp_t1->unk4 = (f32) var_a0->unk0;
            temp_t1->unk8 = (f32) var_a0->unk8;
            temp_t1->unkC = (f32) var_a0->unk10;
            temp_t1->unk10 = (f32) var_a0->unk18;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + var_t1;
    temp_t1->unk0 = 0xC580D015;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk8;
    temp_t1->unkC = (f32) var_a0->unk10;
    temp_t1->unk10 = (f32) var_a0->unk18;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4f(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    f64 var_f7;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    var_a3 = arg3;
    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x10000);
    var_f4 = fparg3;
    var_f5 = fparg2;
    var_f6 = fparg1;
    var_s0 = 0;
    var_a2 = *(s32 *)0x1028;
    var_f7 = fparg0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a3 = var_a2 < 5;
        if (var_a3 != 0) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            sp30 = fparg3;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC580D015;
        temp_t0->unk4 = (bitwise f32) var_f7;
        temp_t0->unk8 = (bitwise f32) var_f6;
        temp_t0->unkC = (bitwise f32) var_f5;
        temp_t0->unk10 = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 0x14);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 5)) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
        sp30 = fparg3;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x10000, var_a2, var_a3);
        var_f5 = sp28;
        var_f4 = second half of f64;
        var_f7 = sp18;
        var_f6 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC580D015;
            temp_t0->unk4 = (bitwise f32) var_f7;
            temp_t0->unk8 = (bitwise f32) var_f6;
            temp_t0->unkC = (bitwise f32) var_f5;
            temp_t0->unk10 = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 0x14);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC580D015;
    temp_t0->unk4 = (bitwise f32) var_f7;
    temp_t0->unk8 = (bitwise f32) var_f6;
    temp_t0->unkC = (bitwise f32) var_f5;
    temp_t0->unk10 = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4fv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s32 var_t1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_t1 = var_s0 * 4;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0xC580D015;
            temp_t1->unk4 = (f32) var_a0->unk0;
            temp_t1->unk8 = (f32) var_a0->unk4;
            temp_t1->unkC = (f32) var_a0->unk8;
            temp_t1->unk10 = (f32) var_a0->unkC;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + var_t1;
    temp_t1->unk0 = 0xC580D015;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk4;
    temp_t1->unkC = (f32) var_a0->unk8;
    temp_t1->unk10 = (f32) var_a0->unkC;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4i(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_a4;
    void *temp_s1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_a4 = *(void **)0x1010;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a6 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a7 = var_a6 < 5;
        if (var_a7 != 0) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_s1 = var_s1 + (var_s0 * 4);
        temp_s1->unk10 = (s32) var_a3;
        temp_s1->unkC = (s32) var_a2;
        temp_s1->unk8 = (s32) var_a1;
        temp_s1->unk4 = (s32) var_a0;
        temp_s1->unk0 = 0xC580D014;
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
        *(void *)0x1030 = (s32) (temp_s1 + 0x14);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a6 < (var_s0 + 5)) {
        sp18 = var_a0;
        sp20 = var_a3;
        sp28 = var_a1;
        sp30 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x10000, var_a6, var_a7);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_s1 = var_s1 + (var_s0 * 4);
            temp_s1->unk10 = (s32) var_a3;
            temp_s1->unkC = (s32) var_a2;
            temp_s1->unk8 = (s32) var_a1;
            temp_s1->unk4 = (s32) var_a0;
            temp_s1->unk0 = 0xC580D014;
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1030 = (s32) (temp_s1 + 0x14);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s1 = var_s1 + (var_s0 * 4);
    temp_s1->unk10 = (s32) var_a3;
    temp_s1->unkC = (s32) var_a2;
    temp_s1->unk8 = (s32) var_a1;
    temp_s1->unk4 = (s32) var_a0;
    temp_s1->unk0 = 0xC580D014;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4iv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580D014;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk4;
        temp_t1->unkC = (s32) var_a0->unk8;
        temp_t1->unk10 = (s32) var_a0->unkC;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580D014;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk4;
            temp_t1->unkC = (s32) var_a0->unk8;
            temp_t1->unk10 = (s32) var_a0->unkC;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580D014;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk4;
    temp_t1->unkC = (s32) var_a0->unk8;
    temp_t1->unk10 = (s32) var_a0->unkC;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4s(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_a4;
    void *temp_s1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_a4 = *(void **)0x1010;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a6 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a7 = var_a6 < 5;
        if (var_a7 != 0) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_s1 = var_s1 + (var_s0 * 4);
        temp_s1->unk10 = (s32) var_a3;
        temp_s1->unkC = (s32) var_a2;
        temp_s1->unk8 = (s32) var_a1;
        temp_s1->unk4 = (s32) var_a0;
        temp_s1->unk0 = 0xC580D013;
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
        *(void *)0x1030 = (s32) (temp_s1 + 0x14);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a6 < (var_s0 + 5)) {
        sp18 = var_a0;
        sp20 = var_a3;
        sp28 = var_a1;
        sp30 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x10000, var_a6, var_a7);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_s1 = var_s1 + (var_s0 * 4);
            temp_s1->unk10 = (s32) var_a3;
            temp_s1->unkC = (s32) var_a2;
            temp_s1->unk8 = (s32) var_a1;
            temp_s1->unk4 = (s32) var_a0;
            temp_s1->unk0 = 0xC580D013;
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1030 = (s32) (temp_s1 + 0x14);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s1 = var_s1 + (var_s0 * 4);
    temp_s1->unk10 = (s32) var_a3;
    temp_s1->unkC = (s32) var_a2;
    temp_s1->unk8 = (s32) var_a1;
    temp_s1->unk4 = (s32) var_a0;
    temp_s1->unk0 = 0xC580D013;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4sv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580D013;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk2;
        temp_t1->unkC = (s32) var_a0->unk4;
        temp_t1->unk10 = (s32) var_a0->unk6;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580D013;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk2;
            temp_t1->unkC = (s32) var_a0->unk4;
            temp_t1->unk10 = (s32) var_a0->unk6;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580D013;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk2;
    temp_t1->unkC = (s32) var_a0->unk4;
    temp_t1->unk10 = (s32) var_a0->unk6;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4ub(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_a4;
    void *temp_s1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_a4 = *(void **)0x1010;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a6 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a7 = var_a6 < 5;
        if (var_a7 != 0) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_s1 = var_s1 + (var_s0 * 4);
        temp_s1->unk10 = (s32) var_a3;
        temp_s1->unkC = (s32) var_a2;
        temp_s1->unk8 = (s32) var_a1;
        temp_s1->unk4 = (s32) var_a0;
        temp_s1->unk0 = 0xC580D00F;
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
        *(void *)0x1030 = (s32) (temp_s1 + 0x14);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a6 < (var_s0 + 5)) {
        sp18 = var_a0;
        sp20 = var_a3;
        sp28 = var_a1;
        sp30 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x10000, var_a6, var_a7);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_s1 = var_s1 + (var_s0 * 4);
            temp_s1->unk10 = (s32) var_a3;
            temp_s1->unkC = (s32) var_a2;
            temp_s1->unk8 = (s32) var_a1;
            temp_s1->unk4 = (s32) var_a0;
            temp_s1->unk0 = 0xC580D00F;
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1030 = (s32) (temp_s1 + 0x14);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s1 = var_s1 + (var_s0 * 4);
    temp_s1->unk10 = (s32) var_a3;
    temp_s1->unkC = (s32) var_a2;
    temp_s1->unk8 = (s32) var_a1;
    temp_s1->unk4 = (s32) var_a0;
    temp_s1->unk0 = 0xC580D00F;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4ubv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580D00F;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk1;
        temp_t1->unkC = (s32) var_a0->unk2;
        temp_t1->unk10 = (s32) var_a0->unk3;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580D00F;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk1;
            temp_t1->unkC = (s32) var_a0->unk2;
            temp_t1->unk10 = (s32) var_a0->unk3;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580D00F;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk1;
    temp_t1->unkC = (s32) var_a0->unk2;
    temp_t1->unk10 = (s32) var_a0->unk3;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4ui(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_a4;
    void *temp_s1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_a4 = *(void **)0x1010;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a6 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a7 = var_a6 < 5;
        if (var_a7 != 0) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_s1 = var_s1 + (var_s0 * 4);
        temp_s1->unk10 = (s32) var_a3;
        temp_s1->unkC = (s32) var_a2;
        temp_s1->unk8 = (s32) var_a1;
        temp_s1->unk4 = (s32) var_a0;
        temp_s1->unk0 = 0xC580D011;
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
        *(void *)0x1030 = (s32) (temp_s1 + 0x14);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a6 < (var_s0 + 5)) {
        sp18 = var_a0;
        sp20 = var_a3;
        sp28 = var_a1;
        sp30 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x10000, var_a6, var_a7);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_s1 = var_s1 + (var_s0 * 4);
            temp_s1->unk10 = (s32) var_a3;
            temp_s1->unkC = (s32) var_a2;
            temp_s1->unk8 = (s32) var_a1;
            temp_s1->unk4 = (s32) var_a0;
            temp_s1->unk0 = 0xC580D011;
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1030 = (s32) (temp_s1 + 0x14);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s1 = var_s1 + (var_s0 * 4);
    temp_s1->unk10 = (s32) var_a3;
    temp_s1->unkC = (s32) var_a2;
    temp_s1->unk8 = (s32) var_a1;
    temp_s1->unk4 = (s32) var_a0;
    temp_s1->unk0 = 0xC580D011;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4uiv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580D011;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk4;
        temp_t1->unkC = (s32) var_a0->unk8;
        temp_t1->unk10 = (s32) var_a0->unkC;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580D011;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk4;
            temp_t1->unkC = (s32) var_a0->unk8;
            temp_t1->unk10 = (s32) var_a0->unkC;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580D011;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk4;
    temp_t1->unkC = (s32) var_a0->unk8;
    temp_t1->unk10 = (s32) var_a0->unkC;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4us(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_a4;
    void *temp_s1;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a7 = arg7;
    temp_a4 = *(void **)0x1010;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a6 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a7 = var_a6 < 5;
        if (var_a7 != 0) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_s1 = var_s1 + (var_s0 * 4);
        temp_s1->unk10 = (s32) var_a3;
        temp_s1->unkC = (s32) var_a2;
        temp_s1->unk8 = (s32) var_a1;
        temp_s1->unk4 = (s32) var_a0;
        temp_s1->unk0 = 0xC580D010;
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
        *(void *)0x1030 = (s32) (temp_s1 + 0x14);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a6 < (var_s0 + 5)) {
        sp18 = var_a0;
        sp20 = var_a3;
        sp28 = var_a1;
        sp30 = var_a2;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x10000, var_a6, var_a7);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_s1 = var_s1 + (var_s0 * 4);
            temp_s1->unk10 = (s32) var_a3;
            temp_s1->unkC = (s32) var_a2;
            temp_s1->unk8 = (s32) var_a1;
            temp_s1->unk4 = (s32) var_a0;
            temp_s1->unk0 = 0xC580D010;
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1030 = (s32) (temp_s1 + 0x14);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s1 = var_s1 + (var_s0 * 4);
    temp_s1->unk10 = (s32) var_a3;
    temp_s1->unkC = (s32) var_a2;
    temp_s1->unk8 = (s32) var_a1;
    temp_s1->unk4 = (s32) var_a0;
    temp_s1->unk0 = 0xC580D010;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Color4usv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x10000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 5;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580D010;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk2;
        temp_t1->unkC = (s32) var_a0->unk4;
        temp_t1->unk10 = (s32) var_a0->unk6;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x10000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580D010;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk2;
            temp_t1->unkC = (s32) var_a0->unk4;
            temp_t1->unk10 = (s32) var_a0->unk6;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580D010;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk2;
    temp_t1->unkC = (s32) var_a0->unk4;
    temp_t1->unk10 = (s32) var_a0->unk6;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Indexd(f64 fparg0) {
    f64 sp18;
    f64 var_f4;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x20000);
    var_a2 = *(s32 *)0x1028;
    var_s0 = 0;
    var_f4 = fparg0;
    var_s1 = *(s32 *)0x1030;
    temp_a3 = var_a2 < 2;
    if (*(s32 *)0x1034 != 0) {
        if (temp_a3 != 0) {
            sp18 = fparg0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC580C407;
        temp_t0->unk4 = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 8);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 2)) {
        sp18 = fparg0;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x20000, var_a2, temp_a3);
        var_f4 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC580C407;
            temp_t0->unk4 = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 8);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC580C407;
    temp_t0->unk4 = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 8);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexdv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s32 var_t1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_t1 = var_s0 * 4;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0xC580C407;
            temp_t1->unk4 = (f32) *var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + var_t1;
    temp_t1->unk0 = 0xC580C407;
    temp_t1->unk4 = (f32) *var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexf(f64 fparg0) {
    f64 sp18;
    f64 var_f4;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x20000);
    var_a2 = *(s32 *)0x1028;
    var_s0 = 0;
    var_f4 = fparg0;
    var_s1 = *(s32 *)0x1030;
    temp_a3 = var_a2 < 2;
    if (*(s32 *)0x1034 != 0) {
        if (temp_a3 != 0) {
            sp18 = fparg0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC580C407;
        temp_t0->unk4 = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 8);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 2)) {
        sp18 = fparg0;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x20000, var_a2, temp_a3);
        var_f4 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC580C407;
            temp_t0->unk4 = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 8);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC580C407;
    temp_t0->unk4 = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 8);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexfv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580C407;
        temp_t1->unk4 = (f32) *var_a0;
        *(void *)0x1030 = (s32) (temp_t1 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580C407;
            temp_t1->unk4 = (f32) *var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580C407;
    temp_t1->unk4 = (f32) *var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexi(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580C406;
        temp_t1->unk4 = (s32) var_a0;
        *(void *)0x1030 = (s32) (temp_t1 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580C406;
            temp_t1->unk4 = (s32) var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580C406;
    temp_t1->unk4 = (s32) var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexiv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580C406;
        temp_t1->unk4 = (s32) *var_a0;
        *(void *)0x1030 = (s32) (temp_t1 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580C406;
            temp_t1->unk4 = (s32) *var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580C406;
    temp_t1->unk4 = (s32) *var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexs(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580C406;
        temp_t1->unk4 = (s32) var_a0;
        *(void *)0x1030 = (s32) (temp_t1 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580C406;
            temp_t1->unk4 = (s32) var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580C406;
    temp_t1->unk4 = (s32) var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexsv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580C406;
        temp_t1->unk4 = (s32) *var_a0;
        *(void *)0x1030 = (s32) (temp_t1 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580C406;
            temp_t1->unk4 = (s32) *var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580C406;
    temp_t1->unk4 = (s32) *var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexub(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580C406;
        temp_t1->unk4 = (s32) var_a0;
        *(void *)0x1030 = (s32) (temp_t1 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580C406;
            temp_t1->unk4 = (s32) var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580C406;
    temp_t1->unk4 = (s32) var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_Indexubv(s64 arg0, s32 arg4) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a1;
    void *temp_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x20000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 2;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0xC580C406;
        temp_t1->unk4 = (s32) *var_a0;
        *(void *)0x1030 = (s32) (temp_t1 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 2)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x20000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0xC580C406;
            temp_t1->unk4 = (s32) *var_a0;
            *(void *)0x1030 = (s32) (temp_t1 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0xC580C406;
    temp_t1->unk4 = (s32) *var_a0;
    *(void *)0x1030 = (s32) (temp_t1 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}
