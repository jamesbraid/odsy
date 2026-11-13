s32 __glSPDlistSpace(?, s32, s32, s32);             /* extern */

void __glOdylc_TexCoord1d(s32 arg5, f64 fparg0) {
    f64 sp18;
    f64 var_f4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f4 = fparg0;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 2) {
            sp18 = fparg0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380C41F;
        temp_a4->unk4 = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 8);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 2);
    if (var_a5 != 0) {
        sp18 = fparg0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f4 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380C41F;
            temp_a4->unk4 = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 8);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380C41F;
    temp_a4->unk4 = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 8);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord1dv(s64 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 2) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 2);
    var_a5 = var_s0 * 4;
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a5, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_a5 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a5 = var_s1 + var_a5;
            temp_a5->unk0 = 0xC380C41F;
            temp_a5->unk4 = (f32) *var_a0;
            *(void *)0x1030 = (s32) (temp_a5 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + var_a5;
    temp_a5->unk0 = 0xC380C41F;
    temp_a5->unk4 = (f32) *var_a0;
    *(void *)0x1030 = (s32) (temp_a5 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord1f(s32 arg5, f64 fparg0) {
    f64 sp18;
    f64 var_f4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f4 = fparg0;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 2) {
            sp18 = fparg0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380C41F;
        temp_a4->unk4 = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 8);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 2);
    if (var_a5 != 0) {
        sp18 = fparg0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f4 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380C41F;
            temp_a4->unk4 = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 8);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380C41F;
    temp_a4->unk4 = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 8);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord1fv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 2) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380C41F;
        temp_a5->unk4 = (f32) *var_a0;
        *(void *)0x1030 = (s32) (temp_a5 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 2);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380C41F;
            temp_a5->unk4 = (f32) *var_a0;
            *(void *)0x1030 = (s32) (temp_a5 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380C41F;
    temp_a5->unk4 = (f32) *var_a0;
    *(void *)0x1030 = (s32) (temp_a5 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord1i(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 2) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380C41E;
        temp_a5->unk4 = (s32) var_a0;
        *(void *)0x1030 = (s32) (temp_a5 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 2);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380C41E;
            temp_a5->unk4 = (s32) var_a0;
            *(void *)0x1030 = (s32) (temp_a5 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380C41E;
    temp_a5->unk4 = (s32) var_a0;
    *(void *)0x1030 = (s32) (temp_a5 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord1iv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 2) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380C41E;
        temp_a5->unk4 = (s32) *var_a0;
        *(void *)0x1030 = (s32) (temp_a5 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 2);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380C41E;
            temp_a5->unk4 = (s32) *var_a0;
            *(void *)0x1030 = (s32) (temp_a5 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380C41E;
    temp_a5->unk4 = (s32) *var_a0;
    *(void *)0x1030 = (s32) (temp_a5 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord1s(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 2) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380C41E;
        temp_a5->unk4 = (s32) var_a0;
        *(void *)0x1030 = (s32) (temp_a5 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 2);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380C41E;
            temp_a5->unk4 = (s32) var_a0;
            *(void *)0x1030 = (s32) (temp_a5 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380C41E;
    temp_a5->unk4 = (s32) var_a0;
    *(void *)0x1030 = (s32) (temp_a5 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord1sv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 2) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380C41E;
        temp_a5->unk4 = (s32) *var_a0;
        *(void *)0x1030 = (s32) (temp_a5 + 8);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 2);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380C41E;
            temp_a5->unk4 = (s32) *var_a0;
            *(void *)0x1030 = (s32) (temp_a5 + 8);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380C41E;
    temp_a5->unk4 = (s32) *var_a0;
    *(void *)0x1030 = (s32) (temp_a5 + 8);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 2);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 2);
}

void __glOdylc_TexCoord2d(s32 arg5, f64 fparg0, f64 fparg1) {
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f5 = fparg0;
    var_f4 = second half of f64;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 3) {
            sp18 = fparg0;
            sp20 = fparg1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380C821;
        temp_a4->unk4 = (f32) var_f5;
        temp_a4->unk8 = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 0xC);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 3);
    if (var_a5 != 0) {
        sp18 = fparg0;
        sp20 = fparg1;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f5 = sp18;
        var_f4 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380C821;
            temp_a4->unk4 = (f32) var_f5;
            temp_a4->unk8 = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 0xC);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380C821;
    temp_a4->unk4 = (f32) var_f5;
    temp_a4->unk8 = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 0xC);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord2dv(s64 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 3) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 3);
    var_a5 = var_s0 * 4;
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a5, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_a5 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a5 = var_s1 + var_a5;
            temp_a5->unk0 = 0xC380C821;
            temp_a5->unk4 = (f32) var_a0->unk0;
            temp_a5->unk8 = (f32) var_a0->unk8;
            *(void *)0x1030 = (s32) (temp_a5 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + var_a5;
    temp_a5->unk0 = 0xC380C821;
    temp_a5->unk4 = (f32) var_a0->unk0;
    temp_a5->unk8 = (f32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_a5 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord2f(s32 arg5, f64 fparg0, f64 fparg1) {
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_f4 = fparg1;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f5 = fparg0;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 3) {
            sp18 = fparg0;
            sp20 = fparg1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380C821;
        temp_a4->unk4 = (bitwise f32) var_f5;
        temp_a4->unk8 = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 0xC);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 3);
    if (var_a5 != 0) {
        sp18 = fparg0;
        sp20 = fparg1;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f5 = sp18;
        var_f4 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380C821;
            temp_a4->unk4 = (bitwise f32) var_f5;
            temp_a4->unk8 = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 0xC);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380C821;
    temp_a4->unk4 = (bitwise f32) var_f5;
    temp_a4->unk8 = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 0xC);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord2fv(s64 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 3) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 3);
    var_a5 = var_s0 * 4;
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a5, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_a5 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a5 = var_s1 + var_a5;
            temp_a5->unk0 = 0xC380C821;
            temp_a5->unk4 = (f32) var_a0->unk0;
            temp_a5->unk8 = (f32) var_a0->unk4;
            *(void *)0x1030 = (s32) (temp_a5 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + var_a5;
    temp_a5->unk0 = 0xC380C821;
    temp_a5->unk4 = (f32) var_a0->unk0;
    temp_a5->unk8 = (f32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_a5 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord2i(s64 arg0, s64 arg1, s32 arg7) {
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    void *temp_a6;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a7 = arg7;
    var_a4 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a4 < 3) {
            sp18 = var_a0;
            sp20 = var_a1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a6 = var_s1 + (var_s0 * 4);
        temp_a6->unk0 = 0xC380C820;
        temp_a6->unk4 = (s32) var_a0;
        temp_a6->unk8 = (s32) var_a1;
        *(void *)0x1030 = (s32) (temp_a6 + 0xC);
        *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a7 = var_a4 < (var_s0 + 3);
    if (var_a7 != 0) {
        sp18 = var_a0;
        sp20 = var_a1;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a4, var_a7);
        var_a1 = sp20;
        var_a0 = sp18;
        var_a4 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a6 = var_s1 + (var_s0 * 4);
            temp_a6->unk0 = 0xC380C820;
            temp_a6->unk4 = (s32) var_a0;
            temp_a6->unk8 = (s32) var_a1;
            *(void *)0x1030 = (s32) (temp_a6 + 0xC);
            *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a6 = var_s1 + (var_s0 * 4);
    temp_a6->unk0 = 0xC380C820;
    temp_a6->unk4 = (s32) var_a0;
    temp_a6->unk8 = (s32) var_a1;
    *(void *)0x1030 = (s32) (temp_a6 + 0xC);
    *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord2iv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 3) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380C820;
        temp_a5->unk4 = (s32) var_a0->unk0;
        temp_a5->unk8 = (s32) var_a0->unk4;
        *(void *)0x1030 = (s32) (temp_a5 + 0xC);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 3);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380C820;
            temp_a5->unk4 = (s32) var_a0->unk0;
            temp_a5->unk8 = (s32) var_a0->unk4;
            *(void *)0x1030 = (s32) (temp_a5 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380C820;
    temp_a5->unk4 = (s32) var_a0->unk0;
    temp_a5->unk8 = (s32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_a5 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord2s(s64 arg0, s64 arg1, s32 arg7) {
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    void *temp_a6;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a7 = arg7;
    var_a4 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a4 < 3) {
            sp18 = var_a0;
            sp20 = var_a1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a6 = var_s1 + (var_s0 * 4);
        temp_a6->unk0 = 0xC380C820;
        temp_a6->unk4 = (s32) var_a0;
        temp_a6->unk8 = (s32) var_a1;
        *(void *)0x1030 = (s32) (temp_a6 + 0xC);
        *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a7 = var_a4 < (var_s0 + 3);
    if (var_a7 != 0) {
        sp18 = var_a0;
        sp20 = var_a1;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a4, var_a7);
        var_a1 = sp20;
        var_a0 = sp18;
        var_a4 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a6 = var_s1 + (var_s0 * 4);
            temp_a6->unk0 = 0xC380C820;
            temp_a6->unk4 = (s32) var_a0;
            temp_a6->unk8 = (s32) var_a1;
            *(void *)0x1030 = (s32) (temp_a6 + 0xC);
            *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a6 = var_s1 + (var_s0 * 4);
    temp_a6->unk0 = 0xC380C820;
    temp_a6->unk4 = (s32) var_a0;
    temp_a6->unk8 = (s32) var_a1;
    *(void *)0x1030 = (s32) (temp_a6 + 0xC);
    *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord2sv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 3) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380C820;
        temp_a5->unk4 = (s32) var_a0->unk0;
        temp_a5->unk8 = (s32) var_a0->unk2;
        *(void *)0x1030 = (s32) (temp_a5 + 0xC);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 3);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380C820;
            temp_a5->unk4 = (s32) var_a0->unk0;
            temp_a5->unk8 = (s32) var_a0->unk2;
            *(void *)0x1030 = (s32) (temp_a5 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380C820;
    temp_a5->unk4 = (s32) var_a0->unk0;
    temp_a5->unk8 = (s32) var_a0->unk2;
    *(void *)0x1030 = (s32) (temp_a5 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_TexCoord3d(s32 arg5, f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_f5 = fparg1;
    var_f4 = second half of f64;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f6 = fparg0;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 4) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380CC23;
        temp_a4->unk4 = (f32) var_f6;
        temp_a4->unk8 = (f32) var_f5;
        temp_a4->unkC = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 0x10);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 4);
    if (var_a5 != 0) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f5 = sp20;
        var_f4 = second half of f64;
        var_f6 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380CC23;
            temp_a4->unk4 = (f32) var_f6;
            temp_a4->unk8 = (f32) var_f5;
            temp_a4->unkC = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 0x10);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380CC23;
    temp_a4->unk4 = (f32) var_f6;
    temp_a4->unk8 = (f32) var_f5;
    temp_a4->unkC = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord3dv(s64 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 4) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 4);
    var_a5 = var_s0 * 4;
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a5, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_a5 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a5 = var_s1 + var_a5;
            temp_a5->unk0 = 0xC380CC23;
            temp_a5->unk4 = (f32) var_a0->unk0;
            temp_a5->unk8 = (f32) var_a0->unk8;
            temp_a5->unkC = (f32) var_a0->unk10;
            *(void *)0x1030 = (s32) (temp_a5 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + var_a5;
    temp_a5->unk0 = 0xC380CC23;
    temp_a5->unk4 = (f32) var_a0->unk0;
    temp_a5->unk8 = (f32) var_a0->unk8;
    temp_a5->unkC = (f32) var_a0->unk10;
    *(void *)0x1030 = (s32) (temp_a5 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord3f(s32 arg5, f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_f4 = fparg2;
    var_f5 = fparg1;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f6 = fparg0;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 4) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380CC23;
        temp_a4->unk4 = (bitwise f32) var_f6;
        temp_a4->unk8 = (bitwise f32) var_f5;
        temp_a4->unkC = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 0x10);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 4);
    if (var_a5 != 0) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f5 = sp20;
        var_f4 = second half of f64;
        var_f6 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380CC23;
            temp_a4->unk4 = (bitwise f32) var_f6;
            temp_a4->unk8 = (bitwise f32) var_f5;
            temp_a4->unkC = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 0x10);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380CC23;
    temp_a4->unk4 = (bitwise f32) var_f6;
    temp_a4->unk8 = (bitwise f32) var_f5;
    temp_a4->unkC = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord3fv(s64 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 4) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 4);
    var_a5 = var_s0 * 4;
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a5, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_a5 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a5 = var_s1 + var_a5;
            temp_a5->unk0 = 0xC380CC23;
            temp_a5->unk4 = (f32) var_a0->unk0;
            temp_a5->unk8 = (f32) var_a0->unk4;
            temp_a5->unkC = (f32) var_a0->unk8;
            *(void *)0x1030 = (s32) (temp_a5 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + var_a5;
    temp_a5->unk0 = 0xC380CC23;
    temp_a5->unk4 = (f32) var_a0->unk0;
    temp_a5->unk8 = (f32) var_a0->unk4;
    temp_a5->unkC = (f32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_a5 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord3i(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a7;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a5 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a5 < 4) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a7 = var_s1 + (var_s0 * 4);
        temp_a7->unk0 = 0xC380CC22;
        temp_a7->unk4 = (s32) var_a0;
        temp_a7->unk8 = (s32) var_a1;
        temp_a7->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_a7 + 0x10);
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
        temp_v0 = __glSPDlistSpace(0, var_a5);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a7 = var_s1 + (var_s0 * 4);
            temp_a7->unk0 = 0xC380CC22;
            temp_a7->unk4 = (s32) var_a0;
            temp_a7->unk8 = (s32) var_a1;
            temp_a7->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_a7 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a7 = var_s1 + (var_s0 * 4);
    temp_a7->unk0 = 0xC380CC22;
    temp_a7->unk4 = (s32) var_a0;
    temp_a7->unk8 = (s32) var_a1;
    temp_a7->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_a7 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord3iv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 4) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380CC22;
        temp_a5->unk4 = (s32) var_a0->unk0;
        temp_a5->unk8 = (s32) var_a0->unk4;
        temp_a5->unkC = (s32) var_a0->unk8;
        *(void *)0x1030 = (s32) (temp_a5 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 4);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380CC22;
            temp_a5->unk4 = (s32) var_a0->unk0;
            temp_a5->unk8 = (s32) var_a0->unk4;
            temp_a5->unkC = (s32) var_a0->unk8;
            *(void *)0x1030 = (s32) (temp_a5 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380CC22;
    temp_a5->unk4 = (s32) var_a0->unk0;
    temp_a5->unk8 = (s32) var_a0->unk4;
    temp_a5->unkC = (s32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_a5 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord3s(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    void *temp_a7;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a5 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a5 < 4) {
            sp18 = var_a0;
            sp20 = var_a1;
            sp28 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a7 = var_s1 + (var_s0 * 4);
        temp_a7->unk0 = 0xC380CC22;
        temp_a7->unk4 = (s32) var_a0;
        temp_a7->unk8 = (s32) var_a1;
        temp_a7->unkC = (s32) var_a2;
        *(void *)0x1030 = (s32) (temp_a7 + 0x10);
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
        temp_v0 = __glSPDlistSpace(0, var_a5);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a7 = var_s1 + (var_s0 * 4);
            temp_a7->unk0 = 0xC380CC22;
            temp_a7->unk4 = (s32) var_a0;
            temp_a7->unk8 = (s32) var_a1;
            temp_a7->unkC = (s32) var_a2;
            *(void *)0x1030 = (s32) (temp_a7 + 0x10);
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a7 = var_s1 + (var_s0 * 4);
    temp_a7->unk0 = 0xC380CC22;
    temp_a7->unk4 = (s32) var_a0;
    temp_a7->unk8 = (s32) var_a1;
    temp_a7->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_a7 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord3sv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 4) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380CC22;
        temp_a5->unk4 = (s32) var_a0->unk0;
        temp_a5->unk8 = (s32) var_a0->unk2;
        temp_a5->unkC = (s32) var_a0->unk4;
        *(void *)0x1030 = (s32) (temp_a5 + 0x10);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 4);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380CC22;
            temp_a5->unk4 = (s32) var_a0->unk0;
            temp_a5->unk8 = (s32) var_a0->unk2;
            temp_a5->unkC = (s32) var_a0->unk4;
            *(void *)0x1030 = (s32) (temp_a5 + 0x10);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380CC22;
    temp_a5->unk4 = (s32) var_a0->unk0;
    temp_a5->unk8 = (s32) var_a0->unk2;
    temp_a5->unkC = (s32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_a5 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_TexCoord4d(s32 arg5, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
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
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_f5 = fparg2;
    var_f4 = second half of f64;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f7 = fparg0;
    var_f6 = second half of f64;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 5) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            sp30 = fparg3;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380D025;
        temp_a4->unk4 = (f32) var_f7;
        temp_a4->unk8 = (f32) var_f6;
        temp_a4->unkC = (f32) var_f5;
        temp_a4->unk10 = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 0x14);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 5);
    if (var_a5 != 0) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
        sp30 = fparg3;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f5 = sp28;
        var_f4 = second half of f64;
        var_f7 = sp18;
        var_f6 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380D025;
            temp_a4->unk4 = (f32) var_f7;
            temp_a4->unk8 = (f32) var_f6;
            temp_a4->unkC = (f32) var_f5;
            temp_a4->unk10 = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 0x14);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380D025;
    temp_a4->unk4 = (f32) var_f7;
    temp_a4->unk8 = (f32) var_f6;
    temp_a4->unkC = (f32) var_f5;
    temp_a4->unk10 = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_TexCoord4dv(s64 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 5) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 5);
    var_a5 = var_s0 * 4;
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a5, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_a5 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a5 = var_s1 + var_a5;
            temp_a5->unk0 = 0xC380D025;
            temp_a5->unk4 = (f32) var_a0->unk0;
            temp_a5->unk8 = (f32) var_a0->unk8;
            temp_a5->unkC = (f32) var_a0->unk10;
            temp_a5->unk10 = (f32) var_a0->unk18;
            *(void *)0x1030 = (s32) (temp_a5 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + var_a5;
    temp_a5->unk0 = 0xC380D025;
    temp_a5->unk4 = (f32) var_a0->unk0;
    temp_a5->unk8 = (f32) var_a0->unk8;
    temp_a5->unkC = (f32) var_a0->unk10;
    temp_a5->unk10 = (f32) var_a0->unk18;
    *(void *)0x1030 = (s32) (temp_a5 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_TexCoord4f(s32 arg5, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
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
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    void *temp_a4;

    var_a5 = arg5;
    var_a2 = *(s32 *)0x1028;
    var_f4 = fparg3;
    var_f5 = fparg2;
    var_f6 = fparg1;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    var_f7 = fparg0;
    if (*(s32 *)0x1034 != 0) {
        if (var_a2 < 5) {
            sp18 = fparg0;
            sp20 = fparg1;
            sp28 = fparg2;
            sp30 = fparg3;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a4 = var_s1 + (var_s0 * 4);
        temp_a4->unk0 = 0xC380D025;
        temp_a4->unk4 = (bitwise f32) var_f7;
        temp_a4->unk8 = (bitwise f32) var_f6;
        temp_a4->unkC = (bitwise f32) var_f5;
        temp_a4->unk10 = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_a4 + 0x14);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a5 = var_a2 < (var_s0 + 5);
    if (var_a5 != 0) {
        sp18 = fparg0;
        sp20 = fparg1;
        sp28 = fparg2;
        sp30 = fparg3;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a2, var_a5);
        var_f5 = sp28;
        var_f4 = second half of f64;
        var_f7 = sp18;
        var_f6 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a4 = var_s1 + (var_s0 * 4);
            temp_a4->unk0 = 0xC380D025;
            temp_a4->unk4 = (bitwise f32) var_f7;
            temp_a4->unk8 = (bitwise f32) var_f6;
            temp_a4->unkC = (bitwise f32) var_f5;
            temp_a4->unk10 = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_a4 + 0x14);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a4 = var_s1 + (var_s0 * 4);
    temp_a4->unk0 = 0xC380D025;
    temp_a4->unk4 = (bitwise f32) var_f7;
    temp_a4->unk8 = (bitwise f32) var_f6;
    temp_a4->unkC = (bitwise f32) var_f5;
    temp_a4->unk10 = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_a4 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_TexCoord4fv(s64 arg0, s32 arg5, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 5) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 5);
    var_a5 = var_s0 * 4;
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a5, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_a5 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_a5 = var_s1 + var_a5;
            temp_a5->unk0 = 0xC380D025;
            temp_a5->unk4 = (f32) var_a0->unk0;
            temp_a5->unk8 = (f32) var_a0->unk4;
            temp_a5->unkC = (f32) var_a0->unk8;
            temp_a5->unk10 = (f32) var_a0->unkC;
            *(void *)0x1030 = (s32) (temp_a5 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + var_a5;
    temp_a5->unk0 = 0xC380D025;
    temp_a5->unk4 = (f32) var_a0->unk0;
    temp_a5->unk8 = (f32) var_a0->unk4;
    temp_a5->unkC = (f32) var_a0->unk8;
    temp_a5->unk10 = (f32) var_a0->unkC;
    *(void *)0x1030 = (s32) (temp_a5 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_TexCoord4i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a6 < 5) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC380D024;
        temp_t0->unk4 = (s32) var_a0;
        temp_t0->unk8 = (s32) var_a1;
        temp_t0->unkC = (s32) var_a2;
        temp_t0->unk10 = (s32) var_a3;
        *(void *)0x1030 = (s32) (temp_t0 + 0x14);
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
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
        temp_v0 = __glSPDlistSpace(0, var_a6);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC380D024;
            temp_t0->unk4 = (s32) var_a0;
            temp_t0->unk8 = (s32) var_a1;
            temp_t0->unkC = (s32) var_a2;
            temp_t0->unk10 = (s32) var_a3;
            *(void *)0x1030 = (s32) (temp_t0 + 0x14);
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC380D024;
    temp_t0->unk4 = (s32) var_a0;
    temp_t0->unk8 = (s32) var_a1;
    temp_t0->unkC = (s32) var_a2;
    temp_t0->unk10 = (s32) var_a3;
    *(void *)0x1030 = (s32) (temp_t0 + 0x14);
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_TexCoord4iv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 5) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380D024;
        temp_a5->unk4 = (s32) var_a0->unk0;
        temp_a5->unk8 = (s32) var_a0->unk4;
        temp_a5->unkC = (s32) var_a0->unk8;
        temp_a5->unk10 = (s32) var_a0->unkC;
        *(void *)0x1030 = (s32) (temp_a5 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 5);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380D024;
            temp_a5->unk4 = (s32) var_a0->unk0;
            temp_a5->unk8 = (s32) var_a0->unk4;
            temp_a5->unkC = (s32) var_a0->unk8;
            temp_a5->unk10 = (s32) var_a0->unkC;
            *(void *)0x1030 = (s32) (temp_a5 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380D024;
    temp_a5->unk4 = (s32) var_a0->unk0;
    temp_a5->unk8 = (s32) var_a0->unk4;
    temp_a5->unkC = (s32) var_a0->unk8;
    temp_a5->unk10 = (s32) var_a0->unkC;
    *(void *)0x1030 = (s32) (temp_a5 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_TexCoord4s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *temp_t0;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a6 < 5) {
            sp18 = var_a0;
            sp20 = var_a3;
            sp28 = var_a1;
            sp30 = var_a2;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0xC380D024;
        temp_t0->unk4 = (s32) var_a0;
        temp_t0->unk8 = (s32) var_a1;
        temp_t0->unkC = (s32) var_a2;
        temp_t0->unk10 = (s32) var_a3;
        *(void *)0x1030 = (s32) (temp_t0 + 0x14);
        *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
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
        temp_v0 = __glSPDlistSpace(0, var_a6);
        var_a2 = sp30;
        var_a1 = sp28;
        var_a3 = sp20;
        var_a0 = sp18;
        var_a6 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0xC380D024;
            temp_t0->unk4 = (s32) var_a0;
            temp_t0->unk8 = (s32) var_a1;
            temp_t0->unkC = (s32) var_a2;
            temp_t0->unk10 = (s32) var_a3;
            *(void *)0x1030 = (s32) (temp_t0 + 0x14);
            *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0xC380D024;
    temp_t0->unk4 = (s32) var_a0;
    temp_t0->unk8 = (s32) var_a1;
    temp_t0->unkC = (s32) var_a2;
    temp_t0->unk10 = (s32) var_a3;
    *(void *)0x1030 = (s32) (temp_t0 + 0x14);
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_TexCoord4sv(s64 arg0, s32 arg6) {
    s64 sp18;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    void *temp_a5;

    var_a0 = arg0;
    var_a6 = arg6;
    var_a3 = *(s32 *)0x1028;
    var_s0 = 0;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a3 < 5) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_a5 = var_s1 + (var_s0 * 4);
        temp_a5->unk0 = 0xC380D024;
        temp_a5->unk4 = (s32) var_a0->unk0;
        temp_a5->unk8 = (s32) var_a0->unk2;
        temp_a5->unkC = (s32) var_a0->unk4;
        temp_a5->unk10 = (s32) var_a0->unk6;
        *(void *)0x1030 = (s32) (temp_a5 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_a6 = var_a3 < (var_s0 + 5);
    if (var_a6 != 0) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, var_a3, var_a6);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_a5 = var_s1 + (var_s0 * 4);
            temp_a5->unk0 = 0xC380D024;
            temp_a5->unk4 = (s32) var_a0->unk0;
            temp_a5->unk8 = (s32) var_a0->unk2;
            temp_a5->unkC = (s32) var_a0->unk4;
            temp_a5->unk10 = (s32) var_a0->unk6;
            *(void *)0x1030 = (s32) (temp_a5 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_a5 = var_s1 + (var_s0 * 4);
    temp_a5->unk0 = 0xC380D024;
    temp_a5->unk4 = (s32) var_a0->unk0;
    temp_a5->unk8 = (s32) var_a0->unk2;
    temp_a5->unkC = (s32) var_a0->unk4;
    temp_a5->unk10 = (s32) var_a0->unk6;
    *(void *)0x1030 = (s32) (temp_a5 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}
