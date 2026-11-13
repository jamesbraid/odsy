s32 __glSPDlistSpace(?, void *, s32, s32, s32, s32, s32, s32, f32, f32, f32, f32, f32, f32); /* extern */

void __glOdylc_Vertex2d(f64 fparg0, f64 fparg1) {
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x40000);
    var_a2 = *(s32 *)0x1028;
    var_s0 = 0;
    var_f5 = fparg0;
    var_f4 = second half of f64;
    var_s1 = *(s32 *)0x1030;
    temp_a3 = var_a2 < 3;
    if (*(s32 *)0x1034 != 0) {
        if (temp_a3 != 0) {
            sp18 = fparg0;
            sp20 = fparg1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0x8080C801;
        temp_t0->unk4 = (f32) var_f5;
        temp_t0->unk8 = (f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 0xC);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 3)) {
        sp18 = fparg0;
        sp20 = fparg1;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x40000, var_a2, temp_a3);
        var_f5 = sp18;
        var_f4 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0x8080C801;
            temp_t0->unk4 = (f32) var_f5;
            temp_t0->unk8 = (f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 0xC);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0x8080C801;
    temp_t0->unk4 = (f32) var_f5;
    temp_t0->unk8 = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0xC);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2dv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 3;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_t1 = var_s0 * 4;
    if (var_a3 < (var_s0 + 3)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x40000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0x8080C801;
            temp_t1->unk4 = (f32) var_a0->unk0;
            temp_t1->unk8 = (f32) var_a0->unk8;
            *(void *)0x1030 = (s32) (temp_t1 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + var_t1;
    temp_t1->unk0 = 0x8080C801;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_t1 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2f(f64 fparg0, f64 fparg1) {
    f64 sp20;
    f64 sp18;
    f64 var_f4;
    f64 var_f5;
    s32 temp_a3;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t0;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x40000);
    var_a2 = *(s32 *)0x1028;
    var_f4 = fparg1;
    var_s0 = 0;
    var_f5 = fparg0;
    var_s1 = *(s32 *)0x1030;
    temp_a3 = var_a2 < 3;
    if (*(s32 *)0x1034 != 0) {
        if (temp_a3 != 0) {
            sp18 = fparg0;
            sp20 = fparg1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t0 = var_s1 + (var_s0 * 4);
        temp_t0->unk0 = 0x8080C801;
        temp_t0->unk4 = (bitwise f32) var_f5;
        temp_t0->unk8 = (bitwise f32) var_f4;
        *(void *)0x1030 = (s32) (temp_t0 + 0xC);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 3)) {
        sp18 = fparg0;
        sp20 = fparg1;
block_3:
        temp_v0 = __glSPDlistSpace(0, (void *)0x40000, var_a2, temp_a3);
        var_f5 = sp18;
        var_f4 = second half of f64;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0x8080C801;
            temp_t0->unk4 = (bitwise f32) var_f5;
            temp_t0->unk8 = (bitwise f32) var_f4;
            *(void *)0x1030 = (s32) (temp_t0 + 0xC);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t0 = var_s1 + (var_s0 * 4);
    temp_t0->unk0 = 0x8080C801;
    temp_t0->unk4 = (bitwise f32) var_f5;
    temp_t0->unk8 = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0xC);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2fv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 3;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        goto block_5;
    }
    var_s0 = (var_s1 & 4) != 0;
    var_t1 = var_s0 * 4;
    if (var_a3 < (var_s0 + 3)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x40000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0x8080C801;
            temp_t1->unk4 = (f32) var_a0->unk0;
            temp_t1->unk8 = (f32) var_a0->unk4;
            *(void *)0x1030 = (s32) (temp_t1 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + var_t1;
    temp_t1->unk0 = 0x8080C801;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_t1 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2i(s64 arg0, s64 arg1, s32 arg5) {
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    void *temp_a2;
    void *temp_t2;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a5 = arg5;
    temp_a2 = *(void **)0x1010;
    temp_a2->unk13D4 = (s32) (temp_a2->unk13D4 | 0x40000);
    var_s0 = 0;
    var_a4 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a5 = var_a4 < 3;
        if (var_a5 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t2 = var_s1 + (var_s0 * 4);
        temp_t2->unk0 = 0x8080C800;
        temp_t2->unk4 = (s32) var_a0;
        temp_t2->unk8 = (s32) var_a1;
        *(void *)0x1030 = (s32) (temp_t2 + 0xC);
        *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a4 < (var_s0 + 3)) {
        sp18 = var_a0;
        sp20 = var_a1;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a2, 0x40000, var_a4, var_a5);
        var_a1 = sp20;
        var_a0 = sp18;
        var_a4 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t2 = var_s1 + (var_s0 * 4);
            temp_t2->unk0 = 0x8080C800;
            temp_t2->unk4 = (s32) var_a0;
            temp_t2->unk8 = (s32) var_a1;
            *(void *)0x1030 = (s32) (temp_t2 + 0xC);
            *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s1 + (var_s0 * 4);
    temp_t2->unk0 = 0x8080C800;
    temp_t2->unk4 = (s32) var_a0;
    temp_t2->unk8 = (s32) var_a1;
    *(void *)0x1030 = (s32) (temp_t2 + 0xC);
    *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2iv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 3;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080C800;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk4;
        *(void *)0x1030 = (s32) (temp_t1 + 0xC);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 3)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x40000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080C800;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk4;
            *(void *)0x1030 = (s32) (temp_t1 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080C800;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_t1 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2s(s64 arg0, s64 arg1, s32 arg5) {
    s64 sp20;
    s64 sp18;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a5;
    s32 var_s0;
    s32 var_s1;
    s64 var_a0;
    s64 var_a1;
    void *temp_a2;
    void *temp_t2;

    var_a0 = arg0;
    var_a1 = arg1;
    var_a5 = arg5;
    temp_a2 = *(void **)0x1010;
    temp_a2->unk13D4 = (s32) (temp_a2->unk13D4 | 0x40000);
    var_s0 = 0;
    var_a4 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a5 = var_a4 < 3;
        if (var_a5 != 0) {
            sp18 = var_a0;
            sp20 = var_a1;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t2 = var_s1 + (var_s0 * 4);
        temp_t2->unk0 = 0x8080C800;
        temp_t2->unk4 = (s32) var_a0;
        temp_t2->unk8 = (s32) var_a1;
        *(void *)0x1030 = (s32) (temp_t2 + 0xC);
        *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a4 < (var_s0 + 3)) {
        sp18 = var_a0;
        sp20 = var_a1;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a2, 0x40000, var_a4, var_a5);
        var_a1 = sp20;
        var_a0 = sp18;
        var_a4 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t2 = var_s1 + (var_s0 * 4);
            temp_t2->unk0 = 0x8080C800;
            temp_t2->unk4 = (s32) var_a0;
            temp_t2->unk8 = (s32) var_a1;
            *(void *)0x1030 = (s32) (temp_t2 + 0xC);
            *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s1 + (var_s0 * 4);
    temp_t2->unk0 = 0x8080C800;
    temp_t2->unk4 = (s32) var_a0;
    temp_t2->unk8 = (s32) var_a1;
    *(void *)0x1030 = (s32) (temp_t2 + 0xC);
    *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2sv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s0 = 0;
    var_a3 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        var_a4 = var_a3 < 3;
        if (var_a4 != 0) {
            sp18 = var_a0;
            var_s0 = 0;
            goto block_3;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080C800;
        temp_t1->unk4 = (s32) var_a0->unk0;
        temp_t1->unk8 = (s32) var_a0->unk2;
        *(void *)0x1030 = (s32) (temp_t1 + 0xC);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a3 < (var_s0 + 3)) {
        sp18 = var_a0;
block_3:
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x40000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080C800;
            temp_t1->unk4 = (s32) var_a0->unk0;
            temp_t1->unk8 = (s32) var_a0->unk2;
            *(void *)0x1030 = (s32) (temp_t1 + 0xC);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080C800;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk2;
    *(void *)0x1030 = (s32) (temp_t1 + 0xC);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex3d(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2) {
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
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x80000);
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
        temp_t0->unk0 = 0x8080CC03;
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
        temp_v0 = __glSPDlistSpace(0, (void *)0x80000, var_a2, var_a3);
        var_f5 = sp20;
        var_f4 = second half of f64;
        var_f6 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0x8080CC03;
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
    temp_t0->unk0 = 0x8080CC03;
    temp_t0->unk4 = (f32) var_f6;
    temp_t0->unk8 = (f32) var_f5;
    temp_t0->unkC = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3dv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x80000);
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x80000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0x8080CC03;
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
    temp_t1->unk0 = 0x8080CC03;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk8;
    temp_t1->unkC = (f32) var_a0->unk10;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3f(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2) {
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
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x80000);
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
        temp_t0->unk0 = 0x8080CC03;
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
        temp_v0 = __glSPDlistSpace(0, (void *)0x80000, var_a2, var_a3);
        var_f5 = sp20;
        var_f4 = second half of f64;
        var_f6 = sp18;
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t0 = var_s1 + (var_s0 * 4);
            temp_t0->unk0 = 0x8080CC03;
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
    temp_t0->unk0 = 0x8080CC03;
    temp_t0->unk4 = (bitwise f32) var_f6;
    temp_t0->unk8 = (bitwise f32) var_f5;
    temp_t0->unkC = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3fv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x80000);
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x80000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0x8080CC03;
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
    temp_t1->unk0 = 0x8080CC03;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk4;
    temp_t1->unkC = (f32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3i(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
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
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x80000);
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
        temp_t3->unk0 = 0x8080CC02;
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
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x80000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0x8080CC02;
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
    temp_t3->unk0 = 0x8080CC02;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3iv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x80000);
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
        temp_t1->unk0 = 0x8080CC02;
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x80000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080CC02;
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
    temp_t1->unk0 = 0x8080CC02;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk4;
    temp_t1->unkC = (s32) var_a0->unk8;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3s(s64 arg0, s64 arg1, s64 arg2, s32 arg6) {
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
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x80000);
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
        temp_t3->unk0 = 0x8080CC02;
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
        temp_v0 = __glSPDlistSpace(0, temp_a3, 0x80000, var_a5, var_a6);
        var_a2 = sp28;
        var_a1 = sp20;
        var_a0 = sp18;
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t3 = var_s1 + (var_s0 * 4);
            temp_t3->unk0 = 0x8080CC02;
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
    temp_t3->unk0 = 0x8080CC02;
    temp_t3->unk4 = (s32) var_a0;
    temp_t3->unk8 = (s32) var_a1;
    temp_t3->unkC = (s32) var_a2;
    *(void *)0x1030 = (s32) (temp_t3 + 0x10);
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3sv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x80000);
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
        temp_t1->unk0 = 0x8080CC02;
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x80000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080CC02;
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
    temp_t1->unk0 = 0x8080CC02;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk2;
    temp_t1->unkC = (s32) var_a0->unk4;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex4d(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
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
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x100000);
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
        temp_t0->unk0 = 0x8080D005;
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
        temp_v0 = __glSPDlistSpace(0, (void *)0x100000, var_a2, var_a3);
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
            temp_t0->unk0 = 0x8080D005;
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
    temp_t0->unk0 = 0x8080D005;
    temp_t0->unk4 = (f32) var_f7;
    temp_t0->unk8 = (f32) var_f6;
    temp_t0->unkC = (f32) var_f5;
    temp_t0->unk10 = (f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4dv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x100000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0x8080D005;
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
    temp_t1->unk0 = 0x8080D005;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk8;
    temp_t1->unkC = (f32) var_a0->unk10;
    temp_t1->unk10 = (f32) var_a0->unk18;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4f(s32 arg3, f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
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
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x100000);
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
        temp_t0->unk0 = 0x8080D005;
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
        temp_v0 = __glSPDlistSpace(0, (void *)0x100000, var_a2, var_a3);
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
            temp_t0->unk0 = 0x8080D005;
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
    temp_t0->unk0 = 0x8080D005;
    temp_t0->unk4 = (bitwise f32) var_f7;
    temp_t0->unk8 = (bitwise f32) var_f6;
    temp_t0->unkC = (bitwise f32) var_f5;
    temp_t0->unk10 = (bitwise f32) var_f4;
    *(void *)0x1030 = (s32) (temp_t0 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4fv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x100000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
block_5:
            var_t1 = var_s0 * 4;
            /* Duplicate return node #6. Try simplifying control flow for better match */
            temp_t1 = var_s1 + var_t1;
            temp_t1->unk0 = 0x8080D005;
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
    temp_t1->unk0 = 0x8080D005;
    temp_t1->unk4 = (f32) var_a0->unk0;
    temp_t1->unk8 = (f32) var_a0->unk4;
    temp_t1->unkC = (f32) var_a0->unk8;
    temp_t1->unk10 = (f32) var_a0->unkC;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4i(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
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
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x100000);
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
        temp_s1->unk0 = 0x8080D004;
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
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x100000, var_a6, var_a7);
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
            temp_s1->unk0 = 0x8080D004;
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
    temp_s1->unk0 = 0x8080D004;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4iv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
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
        temp_t1->unk0 = 0x8080D004;
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x100000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080D004;
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
    temp_t1->unk0 = 0x8080D004;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk4;
    temp_t1->unkC = (s32) var_a0->unk8;
    temp_t1->unk10 = (s32) var_a0->unkC;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4s(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s32 arg7) {
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
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x100000);
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
        temp_s1->unk0 = 0x8080D004;
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
        temp_v0 = __glSPDlistSpace(0, temp_a4, 0x100000, var_a6, var_a7);
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
            temp_s1->unk0 = 0x8080D004;
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
    temp_s1->unk0 = 0x8080D004;
    *(void *)0x1028 = (s32) ((var_a6 - var_s0) - 5);
    *(void *)0x1030 = (s32) (temp_s1 + 0x14);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4sv(s64 arg0, s32 arg4) {
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
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
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
        temp_t1->unk0 = 0x8080D004;
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
        temp_v0 = __glSPDlistSpace(0, temp_a1, 0x100000, var_a3, var_a4);
        var_a0 = sp18;
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080D004;
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
    temp_t1->unk0 = 0x8080D004;
    temp_t1->unk4 = (s32) var_a0->unk0;
    temp_t1->unk8 = (s32) var_a0->unk2;
    temp_t1->unkC = (s32) var_a0->unk4;
    temp_t1->unk10 = (s32) var_a0->unk6;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex2dBbox(f64 fparg0, f64 fparg1) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t1;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x40000);
    var_s0 = 0;
    if (temp_a0->unk169DC != 0) {
        temp_a0->unk169E0 = (s32) (temp_a0->unk169E0 + 1);
        if (fparg0 < (f64) temp_a0->unk1698C) {
            temp_a0->unk1698C = (f32) fparg0;
        }
        if ((f64) temp_a0->unk16990 < fparg0) {
            temp_a0->unk16990 = (f32) fparg0;
        }
        if (fparg1 < (f64) temp_a0->unk16994) {
            temp_a0->unk16994 = (f32) fparg1;
        }
        if ((f64) temp_a0->unk16998 < fparg1) {
            temp_a0->unk16998 = (f32) fparg1;
        }
        if (temp_a0->unk1699C > 0.0f) {
            temp_a0->unk1699C = 0.0f;
        }
        if (temp_a0->unk169A0 < 0.0f) {
            temp_a0->unk169A0 = 0.0f;
        }
    }
    temp_a3 = *(s32 *)0x1034;
    var_a2 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    temp_a4 = var_a2 < 3;
    if (temp_a3 != 0) {
        if (temp_a4 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080C801;
        temp_t1->unk4 = (f32) fparg0;
        temp_t1->unk8 = (f32) fparg1;
        *(void *)0x1030 = (s32) (temp_t1 + 0xC);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a0 + 0x10000, var_a2, temp_a3, temp_a4);
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080C801;
            temp_t1->unk4 = (f32) fparg0;
            temp_t1->unk8 = (f32) fparg1;
            *(void *)0x1030 = (s32) (temp_t1 + 0xC);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080C801;
    temp_t1->unk4 = (f32) fparg0;
    temp_t1->unk8 = (f32) fparg1;
    *(void *)0x1030 = (s32) (temp_t1 + 0xC);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2dvBbox(void *arg0) {
    f64 temp_f4;
    f64 var_f4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_s1;
    s32 var_s2;
    s32 var_t2;
    void *temp_a1;
    void *temp_t2;

    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s1 = 0;
    var_a3 = temp_a1->unk169E0;
    if (temp_a1->unk169DC != 0) {
        var_a3 += 1;
        temp_a1->unk169E0 = var_a3;
        temp_f4 = arg0->unk0;
        if (temp_f4 < (f64) temp_a1->unk1698C) {
            temp_a1->unk1698C = (f32) temp_f4;
        }
        if ((f64) temp_a1->unk16990 < arg0->unk0) {
            temp_a1->unk16990 = (f32) arg0->unk0;
        }
        var_f4 = second half of f64;
        if ((second half of f64) < (f64) (second half of f64)) {
            temp_a1->unk16994 = (f32) (second half of f64);
            var_f4 = arg0->unk8;
        }
        if ((f64) temp_a1->unk16998 < var_f4) {
            temp_a1->unk16998 = (f32) var_f4;
        }
        if (temp_a1->unk1699C > 0.0f) {
            temp_a1->unk1699C = 0.0f;
        }
        if (temp_a1->unk169A0 < 0.0f) {
            temp_a1->unk169A0 = 0.0f;
        }
    }
    temp_a4 = *(s32 *)0x1034;
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5 = var_a0 < 3;
    if (temp_a4 != 0) {
        if (temp_a5 != 0) {
            goto block_15;
        }
        var_s1 = 0;
        goto block_17;
    }
    var_s1 = (var_s2 & 4) != 0;
    var_t2 = var_s1 * 4;
    if (var_a0 < (var_s1 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4, temp_a5);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
block_17:
            var_t2 = var_s1 * 4;
            /* Duplicate return node #18. Try simplifying control flow for better match */
            temp_t2 = var_s2 + var_t2;
            temp_t2->unk0 = 0x8080C801;
            temp_t2->unk4 = (f32) arg0->unk0;
            temp_t2->unk8 = (f32) arg0->unk8;
            *(void *)0x1030 = (s32) (temp_t2 + 0xC);
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + var_t2;
    temp_t2->unk0 = 0x8080C801;
    temp_t2->unk4 = (f32) arg0->unk0;
    temp_t2->unk8 = (f32) arg0->unk8;
    *(void *)0x1030 = (s32) (temp_t2 + 0xC);
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2fBbox(f32 fparg0, f32 fparg1) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t1;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x40000);
    var_s0 = 0;
    if (temp_a0->unk169DC != 0) {
        temp_a0->unk169E0 = (s32) (temp_a0->unk169E0 + 1);
        if (fparg0 < temp_a0->unk1698C) {
            temp_a0->unk1698C = fparg0;
        }
        if (temp_a0->unk16990 < fparg0) {
            temp_a0->unk16990 = fparg0;
        }
        if (fparg1 < temp_a0->unk16994) {
            temp_a0->unk16994 = fparg1;
        }
        if (temp_a0->unk16998 < fparg1) {
            temp_a0->unk16998 = fparg1;
        }
        if (temp_a0->unk1699C > 0.0f) {
            temp_a0->unk1699C = 0.0f;
        }
        if (temp_a0->unk169A0 < 0.0f) {
            temp_a0->unk169A0 = 0.0f;
        }
    }
    temp_a3 = *(s32 *)0x1034;
    var_a2 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    temp_a4 = var_a2 < 3;
    if (temp_a3 != 0) {
        if (temp_a4 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080C801;
        temp_t1->unk4 = fparg0;
        temp_t1->unk8 = fparg1;
        *(void *)0x1030 = (s32) (temp_t1 + 0xC);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a0 + 0x10000, var_a2, temp_a3, temp_a4);
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080C801;
            temp_t1->unk4 = fparg0;
            temp_t1->unk8 = fparg1;
            *(void *)0x1030 = (s32) (temp_t1 + 0xC);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080C801;
    temp_t1->unk4 = fparg0;
    temp_t1->unk8 = fparg1;
    *(void *)0x1030 = (s32) (temp_t1 + 0xC);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2fvBbox(void *arg0) {
    f32 temp_f4;
    f32 temp_f4_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_s1;
    s32 var_s2;
    void *temp_a1;
    void *temp_t2;

    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s1 = 0;
    var_a3 = temp_a1->unk169E0;
    if (temp_a1->unk169DC != 0) {
        var_a3 += 1;
        temp_a1->unk169E0 = var_a3;
        temp_f4 = arg0->unk0;
        if (temp_f4 < temp_a1->unk1698C) {
            temp_a1->unk1698C = temp_f4;
        }
        if (temp_a1->unk16990 < arg0->unk0) {
            temp_a1->unk16990 = arg0->unk0;
        }
        temp_f4_2 = arg0->unk4;
        if (temp_f4_2 < temp_a1->unk16994) {
            temp_a1->unk16994 = temp_f4_2;
        }
        if (temp_a1->unk16998 < arg0->unk4) {
            temp_a1->unk16998 = arg0->unk4;
        }
        if (temp_a1->unk1699C > 0.0f) {
            temp_a1->unk1699C = 0.0f;
        }
        if (temp_a1->unk169A0 < 0.0f) {
            temp_a1->unk169A0 = 0.0f;
        }
    }
    temp_a4 = *(s32 *)0x1034;
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5 = var_a0 < 3;
    if (temp_a4 != 0) {
        if (temp_a5 != 0) {
            goto block_15;
        }
        var_s1 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_t2 = var_s2 + (var_s1 * 4);
        temp_t2->unk0 = 0x8080C801;
        temp_t2->unk4 = (f32) arg0->unk0;
        temp_t2->unk8 = (f32) arg0->unk4;
        *(void *)0x1030 = (s32) (temp_t2 + 0xC);
        *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s1 = (var_s2 & 4) != 0;
    if (var_a0 < (var_s1 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4, temp_a5);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_t2 = var_s2 + (var_s1 * 4);
            temp_t2->unk0 = 0x8080C801;
            temp_t2->unk4 = (f32) arg0->unk0;
            temp_t2->unk8 = (f32) arg0->unk4;
            *(void *)0x1030 = (s32) (temp_t2 + 0xC);
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + (var_s1 * 4);
    temp_t2->unk0 = 0x8080C801;
    temp_t2->unk4 = (f32) arg0->unk0;
    temp_t2->unk8 = (f32) arg0->unk4;
    *(void *)0x1030 = (s32) (temp_t2 + 0xC);
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2iBbox(s32 arg0, s32 arg1) {
    f32 temp_f4;
    f32 temp_f4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_v0;
    s32 var_a4;
    s32 var_s0;
    s32 var_s3;
    void *temp_a2;
    void *temp_t3;

    temp_a2 = *(void **)0x1010;
    temp_a2->unk13D4 = (s32) (temp_a2->unk13D4 | 0x40000);
    var_s0 = 0;
    if (temp_a2->unk169DC != 0) {
        temp_f4 = (f32) arg0;
        temp_a2->unk169E0 = (s32) (temp_a2->unk169E0 + 1);
        if (temp_f4 < temp_a2->unk1698C) {
            temp_a2->unk1698C = temp_f4;
        }
        if (temp_a2->unk16990 < temp_f4) {
            temp_a2->unk16990 = temp_f4;
        }
        temp_f4_2 = (f32) arg1;
        if (temp_f4_2 < temp_a2->unk16994) {
            temp_a2->unk16994 = temp_f4_2;
        }
        if (temp_a2->unk16998 < temp_f4_2) {
            temp_a2->unk16998 = temp_f4_2;
        }
        if (temp_a2->unk1699C > 0.0f) {
            temp_a2->unk1699C = 0.0f;
        }
        if (temp_a2->unk169A0 < 0.0f) {
            temp_a2->unk169A0 = 0.0f;
        }
    }
    temp_a5 = *(s32 *)0x1034;
    var_a4 = *(s32 *)0x1028;
    var_s3 = *(s32 *)0x1030;
    temp_a6 = var_a4 < 3;
    if (temp_a5 != 0) {
        if (temp_a6 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_t3 = var_s3 + (var_s0 * 4);
        temp_t3->unk0 = 0x8080C800;
        temp_t3->unk4 = arg0;
        temp_t3->unk8 = arg1;
        *(void *)0x1030 = (s32) (temp_t3 + 0xC);
        *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s3 & 4) != 0;
    if (var_a4 < (var_s0 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a2, (s32) (temp_a2 + 0x10000), var_a4, temp_a5, temp_a6);
        var_a4 = temp_v0;
        if (temp_v0 != 0) {
            var_s3 = *(void *)0x1030;
            var_s0 = (var_s3 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_t3 = var_s3 + (var_s0 * 4);
            temp_t3->unk0 = 0x8080C800;
            temp_t3->unk4 = arg0;
            temp_t3->unk8 = arg1;
            *(void *)0x1030 = (s32) (temp_t3 + 0xC);
            *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s3 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s3 + (var_s0 * 4);
    temp_t3->unk0 = 0x8080C800;
    temp_t3->unk4 = arg0;
    temp_t3->unk8 = arg1;
    *(void *)0x1030 = (s32) (temp_t3 + 0xC);
    *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2ivBbox(void *arg0, s32 arg5, s32 arg6, s32 arg7) {
    f32 var_f4;
    f32 var_f4_2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    s32 var_v0;
    void *temp_a1;
    void *temp_s2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a1 = *(void **)0x1010;
    var_a3 = 0x40000;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s1 = 0;
    var_a4 = temp_a1->unk169E0;
    if (temp_a1->unk169DC != 0) {
        var_a4 += 1;
        temp_a1->unk169E0 = var_a4;
        var_a3 = arg0->unk0;
        var_f4 = (f32) var_a3;
        if (var_f4 < temp_a1->unk1698C) {
            temp_a1->unk1698C = var_f4;
            var_a5 = arg0->unk0;
            var_f4 = (f32) var_a5;
        }
        if (temp_a1->unk16990 < var_f4) {
            temp_a1->unk16990 = var_f4;
        }
        var_a6 = arg0->unk4;
        var_f4_2 = (f32) var_a6;
        if (var_f4_2 < temp_a1->unk16994) {
            temp_a1->unk16994 = var_f4_2;
            var_a7 = arg0->unk4;
            var_f4_2 = (f32) var_a7;
        }
        if (temp_a1->unk16998 < var_f4_2) {
            temp_a1->unk16998 = var_f4_2;
        }
        if (temp_a1->unk1699C > 0.0f) {
            temp_a1->unk1699C = 0.0f;
        }
        if (temp_a1->unk169A0 < 0.0f) {
            temp_a1->unk169A0 = 0.0f;
        }
    }
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a0 < 3) {
            goto block_15;
        }
        var_s1 = 0;
        goto block_17;
    }
    var_s1 = (var_s2 & 4) != 0;
    var_v0 = var_s1 * 4;
    if (var_a0 < (var_s1 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, var_a4, var_a5, var_a6, var_a7);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
block_17:
            var_v0 = var_s1 * 4;
            /* Duplicate return node #18. Try simplifying control flow for better match */
            temp_s2 = var_s2 + var_v0;
            temp_s2->unk0 = 0x8080C800;
            temp_s2->unk4 = (s32) arg0->unk0;
            temp_s2->unk8 = (s32) arg0->unk4;
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
            *(void *)0x1030 = (s32) (temp_s2 + 0xC);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s2 = var_s2 + var_v0;
    temp_s2->unk0 = 0x8080C800;
    temp_s2->unk4 = (s32) arg0->unk0;
    temp_s2->unk8 = (s32) arg0->unk4;
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
    *(void *)0x1030 = (s32) (temp_s2 + 0xC);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2sBbox(s32 arg0, s32 arg1) {
    f32 temp_f4;
    f32 temp_f4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_v0;
    s32 var_a4;
    s32 var_s0;
    s32 var_s3;
    void *temp_a2;
    void *temp_t3;

    temp_a2 = *(void **)0x1010;
    temp_a2->unk13D4 = (s32) (temp_a2->unk13D4 | 0x40000);
    var_s0 = 0;
    if (temp_a2->unk169DC != 0) {
        temp_f4 = (f32) arg0;
        temp_a2->unk169E0 = (s32) (temp_a2->unk169E0 + 1);
        if (temp_f4 < temp_a2->unk1698C) {
            temp_a2->unk1698C = temp_f4;
        }
        if (temp_a2->unk16990 < temp_f4) {
            temp_a2->unk16990 = temp_f4;
        }
        temp_f4_2 = (f32) arg1;
        if (temp_f4_2 < temp_a2->unk16994) {
            temp_a2->unk16994 = temp_f4_2;
        }
        if (temp_a2->unk16998 < temp_f4_2) {
            temp_a2->unk16998 = temp_f4_2;
        }
        if (temp_a2->unk1699C > 0.0f) {
            temp_a2->unk1699C = 0.0f;
        }
        if (temp_a2->unk169A0 < 0.0f) {
            temp_a2->unk169A0 = 0.0f;
        }
    }
    temp_a5 = *(s32 *)0x1034;
    var_a4 = *(s32 *)0x1028;
    var_s3 = *(s32 *)0x1030;
    temp_a6 = var_a4 < 3;
    if (temp_a5 != 0) {
        if (temp_a6 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_t3 = var_s3 + (var_s0 * 4);
        temp_t3->unk0 = 0x8080C800;
        temp_t3->unk4 = arg0;
        temp_t3->unk8 = arg1;
        *(void *)0x1030 = (s32) (temp_t3 + 0xC);
        *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
        return;
    }
    var_s0 = (var_s3 & 4) != 0;
    if (var_a4 < (var_s0 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a2, (s32) (temp_a2 + 0x10000), var_a4, temp_a5, temp_a6);
        var_a4 = temp_v0;
        if (temp_v0 != 0) {
            var_s3 = *(void *)0x1030;
            var_s0 = (var_s3 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_t3 = var_s3 + (var_s0 * 4);
            temp_t3->unk0 = 0x8080C800;
            temp_t3->unk4 = arg0;
            temp_t3->unk8 = arg1;
            *(void *)0x1030 = (s32) (temp_t3 + 0xC);
            *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s3 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t3 = var_s3 + (var_s0 * 4);
    temp_t3->unk0 = 0x8080C800;
    temp_t3->unk4 = arg0;
    temp_t3->unk8 = arg1;
    *(void *)0x1030 = (s32) (temp_t3 + 0xC);
    *(void *)0x1028 = (s32) ((var_a4 - var_s0) - 3);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex2svBbox(void *arg0, s16 arg5, s16 arg6, s16 arg7) {
    f32 var_f4;
    f32 var_f4_2;
    s16 var_a3;
    s16 var_a5;
    s16 var_a6;
    s16 var_a7;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a4;
    s32 var_s1;
    s32 var_s2;
    s32 var_v0;
    void *temp_a1;
    void *temp_s2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a1 = *(void **)0x1010;
    var_a3 = 0x40000;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x40000);
    var_s1 = 0;
    var_a4 = temp_a1->unk169E0;
    if (temp_a1->unk169DC != 0) {
        var_a4 += 1;
        temp_a1->unk169E0 = var_a4;
        var_a3 = arg0->unk0;
        var_f4 = (f32) var_a3;
        if (var_f4 < temp_a1->unk1698C) {
            temp_a1->unk1698C = var_f4;
            var_a5 = arg0->unk0;
            var_f4 = (f32) var_a5;
        }
        if (temp_a1->unk16990 < var_f4) {
            temp_a1->unk16990 = var_f4;
        }
        var_a6 = arg0->unk2;
        var_f4_2 = (f32) var_a6;
        if (var_f4_2 < temp_a1->unk16994) {
            temp_a1->unk16994 = var_f4_2;
            var_a7 = arg0->unk2;
            var_f4_2 = (f32) var_a7;
        }
        if (temp_a1->unk16998 < var_f4_2) {
            temp_a1->unk16998 = var_f4_2;
        }
        if (temp_a1->unk1699C > 0.0f) {
            temp_a1->unk1699C = 0.0f;
        }
        if (temp_a1->unk169A0 < 0.0f) {
            temp_a1->unk169A0 = 0.0f;
        }
    }
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a0 < 3) {
            goto block_15;
        }
        var_s1 = 0;
        goto block_17;
    }
    var_s1 = (var_s2 & 4) != 0;
    var_v0 = var_s1 * 4;
    if (var_a0 < (var_s1 + 3)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), (s32) var_a3, var_a4, (s32) var_a5, (s32) var_a6, (s32) var_a7);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
block_17:
            var_v0 = var_s1 * 4;
            /* Duplicate return node #18. Try simplifying control flow for better match */
            temp_s2 = var_s2 + var_v0;
            temp_s2->unk0 = 0x8080C800;
            temp_s2->unk4 = (s32) arg0->unk0;
            temp_s2->unk8 = (s32) arg0->unk2;
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
            *(void *)0x1030 = (s32) (temp_s2 + 0xC);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s2 = var_s2 + var_v0;
    temp_s2->unk0 = 0x8080C800;
    temp_s2->unk4 = (s32) arg0->unk0;
    temp_s2->unk8 = (s32) arg0->unk2;
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 3);
    *(void *)0x1030 = (s32) (temp_s2 + 0xC);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 3);
}

void __glOdylc_Vertex3dBbox(f64 fparg0, f64 fparg1, f64 fparg2) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t1;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x80000);
    var_s0 = 0;
    if (temp_a0->unk169DC != 0) {
        temp_a0->unk169E0 = (s32) (temp_a0->unk169E0 + 1);
        if (fparg0 < (f64) temp_a0->unk1698C) {
            temp_a0->unk1698C = (f32) fparg0;
        }
        if ((f64) temp_a0->unk16990 < fparg0) {
            temp_a0->unk16990 = (f32) fparg0;
        }
        if (fparg1 < (f64) temp_a0->unk16994) {
            temp_a0->unk16994 = (f32) fparg1;
        }
        if ((f64) temp_a0->unk16998 < fparg1) {
            temp_a0->unk16998 = (f32) fparg1;
        }
        if (fparg2 < (f64) temp_a0->unk1699C) {
            temp_a0->unk1699C = (f32) fparg2;
        }
        if ((f64) temp_a0->unk169A0 < fparg2) {
            temp_a0->unk169A0 = (f32) fparg2;
        }
    }
    temp_a3 = *(s32 *)0x1034;
    var_a2 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    temp_a4 = var_a2 < 4;
    if (temp_a3 != 0) {
        if (temp_a4 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080CC03;
        temp_t1->unk4 = (f32) fparg0;
        temp_t1->unk8 = (f32) fparg1;
        temp_t1->unkC = (f32) fparg2;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 4)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a0 + 0x10000, var_a2, temp_a3, temp_a4);
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080CC03;
            temp_t1->unk4 = (f32) fparg0;
            temp_t1->unk8 = (f32) fparg1;
            temp_t1->unkC = (f32) fparg2;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080CC03;
    temp_t1->unk4 = (f32) fparg0;
    temp_t1->unk8 = (f32) fparg1;
    temp_t1->unkC = (f32) fparg2;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3dvBbox(void *arg0, f32 fparg0) {
    f32 var_f12;
    f64 temp_f4;
    f64 temp_f4_2;
    f64 var_f4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_s1;
    s32 var_s2;
    s32 var_t2;
    void *temp_a1;
    void *temp_t2;

    var_f12 = fparg0;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x80000);
    var_s1 = 0;
    var_a3 = temp_a1->unk169E0;
    if (temp_a1->unk169DC != 0) {
        var_a3 += 1;
        temp_a1->unk169E0 = var_a3;
        temp_f4 = arg0->unk0;
        if (temp_f4 < (f64) temp_a1->unk1698C) {
            temp_a1->unk1698C = (f32) temp_f4;
        }
        if ((f64) temp_a1->unk16990 < arg0->unk0) {
            temp_a1->unk16990 = (f32) arg0->unk0;
        }
        var_f4 = second half of f64;
        if ((second half of f64) < (f64) (second half of f64)) {
            temp_a1->unk16994 = (f32) (second half of f64);
            var_f4 = arg0->unk8;
        }
        if ((f64) temp_a1->unk16998 < var_f4) {
            temp_a1->unk16998 = (f32) var_f4;
        }
        temp_f4_2 = arg0->unk10;
        if (temp_f4_2 < (f64) temp_a1->unk1699C) {
            temp_a1->unk1699C = (f32) temp_f4_2;
        }
        if ((f64) temp_a1->unk169A0 < arg0->unk10) {
            var_f12 = (f32) arg0->unk10;
            temp_a1->unk169A0 = var_f12;
        }
    }
    temp_a4 = *(s32 *)0x1034;
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5 = var_a0 < 4;
    if (temp_a4 != 0) {
        if (temp_a5 != 0) {
            goto block_15;
        }
        var_s1 = 0;
        goto block_17;
    }
    var_s1 = (var_s2 & 4) != 0;
    var_t2 = var_s1 * 4;
    if (var_a0 < (var_s1 + 4)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4, temp_a5, (bitwise s32) var_f12);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
block_17:
            var_t2 = var_s1 * 4;
            /* Duplicate return node #18. Try simplifying control flow for better match */
            temp_t2 = var_s2 + var_t2;
            temp_t2->unk0 = 0x8080CC03;
            temp_t2->unk4 = (f32) arg0->unk0;
            temp_t2->unk8 = (f32) arg0->unk8;
            temp_t2->unkC = (f32) arg0->unk10;
            *(void *)0x1030 = (s32) (temp_t2 + 0x10);
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + var_t2;
    temp_t2->unk0 = 0x8080CC03;
    temp_t2->unk4 = (f32) arg0->unk0;
    temp_t2->unk8 = (f32) arg0->unk8;
    temp_t2->unkC = (f32) arg0->unk10;
    *(void *)0x1030 = (s32) (temp_t2 + 0x10);
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3fBbox(f32 fparg0, f32 fparg1, f32 fparg2) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t1;

    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x80000);
    var_s0 = 0;
    if (temp_a0->unk169DC != 0) {
        temp_a0->unk169E0 = (s32) (temp_a0->unk169E0 + 1);
        if (fparg0 < temp_a0->unk1698C) {
            temp_a0->unk1698C = fparg0;
        }
        if (temp_a0->unk16990 < fparg0) {
            temp_a0->unk16990 = fparg0;
        }
        if (fparg1 < temp_a0->unk16994) {
            temp_a0->unk16994 = fparg1;
        }
        if (temp_a0->unk16998 < fparg1) {
            temp_a0->unk16998 = fparg1;
        }
        if (fparg2 < temp_a0->unk1699C) {
            temp_a0->unk1699C = fparg2;
        }
        if (temp_a0->unk169A0 < fparg2) {
            temp_a0->unk169A0 = fparg2;
        }
    }
    temp_a3 = *(s32 *)0x1034;
    var_a2 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    temp_a4 = var_a2 < 4;
    if (temp_a3 != 0) {
        if (temp_a4 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080CC03;
        temp_t1->unk4 = fparg0;
        temp_t1->unk8 = fparg1;
        temp_t1->unkC = fparg2;
        *(void *)0x1030 = (s32) (temp_t1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 4)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a0 + 0x10000, var_a2, temp_a3, temp_a4);
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080CC03;
            temp_t1->unk4 = fparg0;
            temp_t1->unk8 = fparg1;
            temp_t1->unkC = fparg2;
            *(void *)0x1030 = (s32) (temp_t1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080CC03;
    temp_t1->unk4 = fparg0;
    temp_t1->unk8 = fparg1;
    temp_t1->unkC = fparg2;
    *(void *)0x1030 = (s32) (temp_t1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3fvBbox(void *arg0) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_s1;
    s32 var_s2;
    s32 var_t2;
    void *temp_a1;
    void *temp_t2;

    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x80000);
    var_s1 = 0;
    var_a3 = temp_a1->unk169E0;
    if (temp_a1->unk169DC != 0) {
        var_a3 += 1;
        temp_a1->unk169E0 = var_a3;
        temp_f4 = arg0->unk0;
        if (temp_f4 < temp_a1->unk1698C) {
            temp_a1->unk1698C = temp_f4;
        }
        if (temp_a1->unk16990 < arg0->unk0) {
            temp_a1->unk16990 = arg0->unk0;
        }
        temp_f4_2 = arg0->unk4;
        if (temp_f4_2 < temp_a1->unk16994) {
            temp_a1->unk16994 = temp_f4_2;
        }
        if (temp_a1->unk16998 < arg0->unk4) {
            temp_a1->unk16998 = arg0->unk4;
        }
        temp_f4_3 = arg0->unk8;
        if (temp_f4_3 < temp_a1->unk1699C) {
            temp_a1->unk1699C = temp_f4_3;
        }
        if (temp_a1->unk169A0 < arg0->unk8) {
            temp_a1->unk169A0 = arg0->unk8;
        }
    }
    temp_a4 = *(s32 *)0x1034;
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5 = var_a0 < 4;
    if (temp_a4 != 0) {
        if (temp_a5 != 0) {
            goto block_15;
        }
        var_s1 = 0;
        goto block_17;
    }
    var_s1 = (var_s2 & 4) != 0;
    var_t2 = var_s1 * 4;
    if (var_a0 < (var_s1 + 4)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4, temp_a5);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
block_17:
            var_t2 = var_s1 * 4;
            /* Duplicate return node #18. Try simplifying control flow for better match */
            temp_t2 = var_s2 + var_t2;
            temp_t2->unk0 = 0x8080CC03;
            temp_t2->unk4 = (f32) arg0->unk0;
            temp_t2->unk8 = (f32) arg0->unk4;
            temp_t2->unkC = (f32) arg0->unk8;
            *(void *)0x1030 = (s32) (temp_t2 + 0x10);
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + var_t2;
    temp_t2->unk0 = 0x8080CC03;
    temp_t2->unk4 = (f32) arg0->unk0;
    temp_t2->unk8 = (f32) arg0->unk4;
    temp_t2->unkC = (f32) arg0->unk8;
    *(void *)0x1030 = (s32) (temp_t2 + 0x10);
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3iBbox(s32 arg0, s32 arg1, s32 arg2) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_v0;
    s32 var_a5;
    s32 var_s0;
    s32 var_s4;
    void *temp_a3;
    void *temp_s4;

    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x80000);
    var_s0 = 0;
    if (temp_a3->unk169DC != 0) {
        temp_f4 = (f32) arg0;
        temp_a3->unk169E0 = (s32) (temp_a3->unk169E0 + 1);
        if (temp_f4 < temp_a3->unk1698C) {
            temp_a3->unk1698C = temp_f4;
        }
        if (temp_a3->unk16990 < temp_f4) {
            temp_a3->unk16990 = temp_f4;
        }
        temp_f4_2 = (f32) arg1;
        if (temp_f4_2 < temp_a3->unk16994) {
            temp_a3->unk16994 = temp_f4_2;
        }
        if (temp_a3->unk16998 < temp_f4_2) {
            temp_a3->unk16998 = temp_f4_2;
        }
        temp_f4_3 = (f32) arg2;
        if (temp_f4_3 < temp_a3->unk1699C) {
            temp_a3->unk1699C = temp_f4_3;
        }
        if (temp_a3->unk169A0 < temp_f4_3) {
            temp_a3->unk169A0 = temp_f4_3;
        }
    }
    temp_a6 = *(s32 *)0x1034;
    var_a5 = *(s32 *)0x1028;
    var_s4 = *(s32 *)0x1030;
    temp_a7 = var_a5 < 4;
    if (temp_a6 != 0) {
        if (temp_a7 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_s4 = var_s4 + (var_s0 * 4);
        temp_s4->unkC = arg2;
        temp_s4->unk8 = arg1;
        temp_s4->unk4 = arg0;
        temp_s4->unk0 = 0x8080CC02;
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1030 = (s32) (temp_s4 + 0x10);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s4 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a3, (s32) (temp_a3 + 0x10000), var_a5, temp_a6, temp_a7);
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s4 = *(void *)0x1030;
            var_s0 = (var_s4 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_s4 = var_s4 + (var_s0 * 4);
            temp_s4->unkC = arg2;
            temp_s4->unk8 = arg1;
            temp_s4->unk4 = arg0;
            temp_s4->unk0 = 0x8080CC02;
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1030 = (s32) (temp_s4 + 0x10);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s4 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s4 = var_s4 + (var_s0 * 4);
    temp_s4->unkC = arg2;
    temp_s4->unk8 = arg1;
    temp_s4->unk4 = arg0;
    temp_s4->unk0 = 0x8080CC02;
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1030 = (s32) (temp_s4 + 0x10);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3ivBbox(void *arg0, s32 arg5, s32 arg6, s32 arg7) {
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s1;
    s32 var_s2;
    void *temp_a2;
    void *temp_v1;
    void *var_a1;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a1 = *(void **)0x1010;
    var_a3 = 0x80000;
    temp_a2 = var_a1 + 0x10000;
    var_a1->unk13D4 = (s32) (var_a1->unk13D4 | 0x80000);
    var_s1 = 0;
    var_a4 = var_a1->unk169E0;
    if (var_a1->unk169DC != 0) {
        var_a4 += 1;
        var_a1->unk169E0 = var_a4;
        var_a3 = arg0->unk0;
        var_f4 = (f32) var_a3;
        if (var_f4 < var_a1->unk1698C) {
            var_a1->unk1698C = var_f4;
            var_a5 = arg0->unk0;
            var_f4 = (f32) var_a5;
        }
        if (var_a1->unk16990 < var_f4) {
            var_a1->unk16990 = var_f4;
        }
        var_a6 = arg0->unk4;
        var_f4_2 = (f32) var_a6;
        if (var_f4_2 < var_a1->unk16994) {
            var_a1->unk16994 = var_f4_2;
            var_a7 = arg0->unk4;
            var_f4_2 = (f32) var_a7;
        }
        if (var_a1->unk16998 < var_f4_2) {
            var_a1->unk16998 = var_f4_2;
        }
        var_f4_3 = (f32) arg0->unk8;
        if (var_f4_3 < var_a1->unk1699C) {
            var_a1->unk1699C = var_f4_3;
            var_f4_3 = (f32) arg0->unk8;
        }
        if (var_a1->unk169A0 < var_f4_3) {
            var_a1->unk169A0 = var_f4_3;
        }
    }
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a0 < 4) {
            goto block_15;
        }
        var_s1 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_v1 = var_s2 + (var_s1 * 4);
        temp_v1->unk0 = 0x8080CC02;
        temp_v1->unk4 = (s32) arg0->unk0;
        temp_v1->unk8 = (s32) arg0->unk4;
        temp_v1->unkC = (s32) arg0->unk8;
        *(void *)0x1030 = (s32) (temp_v1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s1 = (var_s2 & 4) != 0;
    var_a1 = (void *) (var_a0 < (var_s1 + 4));
    if (var_a1 != NULL) {
block_15:
        temp_v0 = __glSPDlistSpace(0, var_a1, (s32) temp_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_v1 = var_s2 + (var_s1 * 4);
            temp_v1->unk0 = 0x8080CC02;
            temp_v1->unk4 = (s32) arg0->unk0;
            temp_v1->unk8 = (s32) arg0->unk4;
            temp_v1->unkC = (s32) arg0->unk8;
            *(void *)0x1030 = (s32) (temp_v1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_v1 = var_s2 + (var_s1 * 4);
    temp_v1->unk0 = 0x8080CC02;
    temp_v1->unk4 = (s32) arg0->unk0;
    temp_v1->unk8 = (s32) arg0->unk4;
    temp_v1->unkC = (s32) arg0->unk8;
    *(void *)0x1030 = (s32) (temp_v1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3sBbox(s32 arg0, s32 arg1, s32 arg2) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_v0;
    s32 var_a5;
    s32 var_s0;
    s32 var_s4;
    void *temp_a3;
    void *temp_s4;

    temp_a3 = *(void **)0x1010;
    temp_a3->unk13D4 = (s32) (temp_a3->unk13D4 | 0x80000);
    var_s0 = 0;
    if (temp_a3->unk169DC != 0) {
        temp_f4 = (f32) arg0;
        temp_a3->unk169E0 = (s32) (temp_a3->unk169E0 + 1);
        if (temp_f4 < temp_a3->unk1698C) {
            temp_a3->unk1698C = temp_f4;
        }
        if (temp_a3->unk16990 < temp_f4) {
            temp_a3->unk16990 = temp_f4;
        }
        temp_f4_2 = (f32) arg1;
        if (temp_f4_2 < temp_a3->unk16994) {
            temp_a3->unk16994 = temp_f4_2;
        }
        if (temp_a3->unk16998 < temp_f4_2) {
            temp_a3->unk16998 = temp_f4_2;
        }
        temp_f4_3 = (f32) arg2;
        if (temp_f4_3 < temp_a3->unk1699C) {
            temp_a3->unk1699C = temp_f4_3;
        }
        if (temp_a3->unk169A0 < temp_f4_3) {
            temp_a3->unk169A0 = temp_f4_3;
        }
    }
    temp_a6 = *(s32 *)0x1034;
    var_a5 = *(s32 *)0x1028;
    var_s4 = *(s32 *)0x1030;
    temp_a7 = var_a5 < 4;
    if (temp_a6 != 0) {
        if (temp_a7 != 0) {
            goto block_15;
        }
        var_s0 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_s4 = var_s4 + (var_s0 * 4);
        temp_s4->unkC = arg2;
        temp_s4->unk8 = arg1;
        temp_s4->unk4 = arg0;
        temp_s4->unk0 = 0x8080CC02;
        *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
        *(void *)0x1030 = (s32) (temp_s4 + 0x10);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s0 = (var_s4 & 4) != 0;
    if (var_a5 < (var_s0 + 4)) {
block_15:
        temp_v0 = __glSPDlistSpace(0, temp_a3, (s32) (temp_a3 + 0x10000), var_a5, temp_a6, temp_a7);
        var_a5 = temp_v0;
        if (temp_v0 != 0) {
            var_s4 = *(void *)0x1030;
            var_s0 = (var_s4 & 4) ? 1 : var_s0;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_s4 = var_s4 + (var_s0 * 4);
            temp_s4->unkC = arg2;
            temp_s4->unk8 = arg1;
            temp_s4->unk4 = arg0;
            temp_s4->unk0 = 0x8080CC02;
            *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
            *(void *)0x1030 = (s32) (temp_s4 + 0x10);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s4 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s4 = var_s4 + (var_s0 * 4);
    temp_s4->unkC = arg2;
    temp_s4->unk8 = arg1;
    temp_s4->unk4 = arg0;
    temp_s4->unk0 = 0x8080CC02;
    *(void *)0x1028 = (s32) ((var_a5 - var_s0) - 4);
    *(void *)0x1030 = (s32) (temp_s4 + 0x10);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex3svBbox(void *arg0, s16 arg5, s16 arg6, s16 arg7) {
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    s16 var_a3;
    s16 var_a5;
    s16 var_a6;
    s16 var_a7;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a4;
    s32 var_s1;
    s32 var_s2;
    void *temp_a2;
    void *temp_v1;
    void *var_a1;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a1 = *(void **)0x1010;
    var_a3 = 0x80000;
    temp_a2 = var_a1 + 0x10000;
    var_a1->unk13D4 = (s32) (var_a1->unk13D4 | 0x80000);
    var_s1 = 0;
    var_a4 = var_a1->unk169E0;
    if (var_a1->unk169DC != 0) {
        var_a4 += 1;
        var_a1->unk169E0 = var_a4;
        var_a3 = arg0->unk0;
        var_f4 = (f32) var_a3;
        if (var_f4 < var_a1->unk1698C) {
            var_a1->unk1698C = var_f4;
            var_a5 = arg0->unk0;
            var_f4 = (f32) var_a5;
        }
        if (var_a1->unk16990 < var_f4) {
            var_a1->unk16990 = var_f4;
        }
        var_a6 = arg0->unk2;
        var_f4_2 = (f32) var_a6;
        if (var_f4_2 < var_a1->unk16994) {
            var_a1->unk16994 = var_f4_2;
            var_a7 = arg0->unk2;
            var_f4_2 = (f32) var_a7;
        }
        if (var_a1->unk16998 < var_f4_2) {
            var_a1->unk16998 = var_f4_2;
        }
        var_f4_3 = (f32) arg0->unk4;
        if (var_f4_3 < var_a1->unk1699C) {
            var_a1->unk1699C = var_f4_3;
            var_f4_3 = (f32) arg0->unk4;
        }
        if (var_a1->unk169A0 < var_f4_3) {
            var_a1->unk169A0 = var_f4_3;
        }
    }
    var_a0 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    if (*(s32 *)0x1034 != 0) {
        if (var_a0 < 4) {
            goto block_15;
        }
        var_s1 = 0;
        /* Duplicate return node #17. Try simplifying control flow for better match */
        temp_v1 = var_s2 + (var_s1 * 4);
        temp_v1->unk0 = 0x8080CC02;
        temp_v1->unk4 = (s32) arg0->unk0;
        temp_v1->unk8 = (s32) arg0->unk2;
        temp_v1->unkC = (s32) arg0->unk4;
        *(void *)0x1030 = (s32) (temp_v1 + 0x10);
        *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
        return;
    }
    var_s1 = (var_s2 & 4) != 0;
    var_a1 = (void *) (var_a0 < (var_s1 + 4));
    if (var_a1 != NULL) {
block_15:
        temp_v0 = __glSPDlistSpace(0, var_a1, (s32) temp_a2, (s32) var_a3, var_a4, (s32) var_a5, (s32) var_a6, (s32) var_a7);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s1 = (var_s2 & 4) ? 1 : var_s1;
            /* Duplicate return node #17. Try simplifying control flow for better match */
            temp_v1 = var_s2 + (var_s1 * 4);
            temp_v1->unk0 = 0x8080CC02;
            temp_v1->unk4 = (s32) arg0->unk0;
            temp_v1->unk8 = (s32) arg0->unk2;
            temp_v1->unkC = (s32) arg0->unk4;
            *(void *)0x1030 = (s32) (temp_v1 + 0x10);
            *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_v1 = var_s2 + (var_s1 * 4);
    temp_v1->unk0 = 0x8080CC02;
    temp_v1->unk4 = (s32) arg0->unk0;
    temp_v1->unk8 = (s32) arg0->unk2;
    temp_v1->unkC = (s32) arg0->unk4;
    *(void *)0x1030 = (s32) (temp_v1 + 0x10);
    *(void *)0x1028 = (s32) ((var_a0 - var_s1) - 4);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 4);
}

void __glOdylc_Vertex4dBbox(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f64 temp_f20;
    f64 temp_f22;
    f64 temp_f24;
    f64 temp_f26;
    f64 var_f12;
    f64 var_f13;
    f64 var_f14;
    f64 var_f15;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t1;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a0 = *(void **)0x1010;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x100000);
    temp_f20 = var_f15;
    temp_f24 = var_f14;
    temp_f26 = var_f13;
    var_s0 = 0;
    temp_f22 = var_f12;
    if (temp_a0->unk169DC != 0) {
        temp_a0->unk169E0 = (s32) (temp_a0->unk169E0 + 1);
        if (var_f15 < GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U)) {
            var_f4 = (f32) -var_f15;
            var_f7 = (f32) -var_f14;
            var_f5 = (f32) (second half of f64);
            var_f6 = (f32) (second half of f64);
        } else {
            var_f4 = (f32) var_f15;
            var_f7 = (f32) var_f14;
            var_f5 = (f32) var_f13;
            var_f6 = (f32) var_f12;
        }
        if (var_f6 < (temp_a0->unk1698C * var_f4)) {
            temp_a0->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a0->unk16990 * var_f4) < var_f6) {
            temp_a0->unk16990 = (f32) (var_f6 / var_f4);
        }
        var_f12 = (f64) (temp_a0->unk16994 * var_f4);
        if (var_f5 < (f32) var_f12) {
            var_f13 = (f64) (var_f5 / var_f4);
            temp_a0->unk16994 = (f32) var_f13;
        }
        var_f14 = (f64) (temp_a0->unk16998 * var_f4);
        if ((f32) var_f14 < var_f5) {
            var_f15 = (f64) (var_f5 / var_f4);
            temp_a0->unk16998 = (f32) var_f15;
        }
        var_f16 = temp_a0->unk1699C * var_f4;
        if (var_f7 < var_f16) {
            var_f17 = var_f7 / var_f4;
            temp_a0->unk1699C = var_f17;
        }
        var_f18 = temp_a0->unk169A0 * var_f4;
        if (var_f18 < var_f7) {
            var_f19 = var_f7 / var_f4;
            temp_a0->unk169A0 = var_f19;
        }
    }
    temp_a3 = *(s32 *)0x1034;
    var_a2 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    temp_a4 = var_a2 < 5;
    if (temp_a3 != 0) {
        if (temp_a4 != 0) {
            goto block_18;
        }
        var_s0 = 0;
        /* Duplicate return node #20. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080D005;
        temp_t1->unk4 = (f32) temp_f22;
        temp_t1->unk8 = (f32) temp_f26;
        temp_t1->unkC = (f32) temp_f24;
        temp_t1->unk10 = (f32) temp_f20;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 5)) {
block_18:
        temp_v0 = __glSPDlistSpace(0, temp_a0 + 0x10000, var_a2, temp_a3, temp_a4, (bitwise s32) var_f12, (bitwise s32) var_f13, (bitwise s32) var_f14, (f32) var_f15, var_f16, var_f17, var_f18, var_f19);
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #20. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080D005;
            temp_t1->unk4 = (f32) temp_f22;
            temp_t1->unk8 = (f32) temp_f26;
            temp_t1->unkC = (f32) temp_f24;
            temp_t1->unk10 = (f32) temp_f20;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080D005;
    temp_t1->unk4 = (f32) temp_f22;
    temp_t1->unk8 = (f32) temp_f26;
    temp_t1->unkC = (f32) temp_f24;
    temp_t1->unk10 = (f32) temp_f20;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4dvBbox(void *arg0, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a3;
    s32 var_s0;
    s32 var_s2;
    s32 var_t2;
    void *temp_a1;
    void *temp_t2;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
    var_s0 = 0;
    if (temp_a1->unk169DC != 0) {
        temp_a1->unk169E0 = (s32) (temp_a1->unk169E0 + 1);
        if (arg0->unk18 < GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U)) {
            var_f4 = (f32) -(second half of f64);
            var_f7 = (f32) -(second half of f64);
            var_f5 = (f32) (second half of f64);
            var_f6 = (f32) (second half of f64);
        } else {
            var_f4 = (f32) (second half of f64);
            var_f7 = (f32) (second half of f64);
            var_f5 = (f32) arg0->unk8;
            var_f6 = (f32) arg0->unk0;
        }
        if (var_f6 < (temp_a1->unk1698C * var_f4)) {
            temp_a1->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a1->unk16990 * var_f4) < var_f6) {
            temp_a1->unk16990 = (f32) (var_f6 / var_f4);
        }
        var_f12 = temp_a1->unk16994 * var_f4;
        if (var_f5 < var_f12) {
            var_f13 = var_f5 / var_f4;
            temp_a1->unk16994 = var_f13;
        }
        var_f14 = temp_a1->unk16998 * var_f4;
        if (var_f14 < var_f5) {
            var_f15 = var_f5 / var_f4;
            temp_a1->unk16998 = var_f15;
        }
        var_f16 = temp_a1->unk1699C * var_f4;
        if (var_f7 < var_f16) {
            var_f17 = var_f7 / var_f4;
            temp_a1->unk1699C = var_f17;
        }
        var_f18 = temp_a1->unk169A0 * var_f4;
        if (var_f18 < var_f7) {
            var_f19 = var_f7 / var_f4;
            temp_a1->unk169A0 = var_f19;
        }
    }
    temp_a4 = *(s32 *)0x1034;
    var_a3 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5 = var_a3 < 5;
    if (temp_a4 != 0) {
        if (temp_a5 != 0) {
            goto block_18;
        }
        var_s0 = 0;
        goto block_20;
    }
    var_s0 = (var_s2 & 4) != 0;
    var_t2 = var_s0 * 4;
    if (var_a3 < (var_s0 + 5)) {
block_18:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4, temp_a5, (bitwise s32) var_f12, (bitwise s32) var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s0 = (var_s2 & 4) ? 1 : var_s0;
block_20:
            var_t2 = var_s0 * 4;
            /* Duplicate return node #21. Try simplifying control flow for better match */
            temp_t2 = var_s2 + var_t2;
            temp_t2->unk0 = 0x8080D005;
            temp_t2->unk4 = (f32) arg0->unk0;
            temp_t2->unk8 = (f32) arg0->unk8;
            temp_t2->unkC = (f32) arg0->unk10;
            temp_t2->unk10 = (f32) arg0->unk18;
            *(void *)0x1030 = (s32) (temp_t2 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + var_t2;
    temp_t2->unk0 = 0x8080D005;
    temp_t2->unk4 = (f32) arg0->unk0;
    temp_t2->unk8 = (f32) arg0->unk8;
    temp_t2->unkC = (f32) arg0->unk10;
    temp_t2->unk10 = (f32) arg0->unk18;
    *(void *)0x1030 = (s32) (temp_t2 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4fBbox(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4) {
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    void *temp_a0;
    void *temp_t1;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    temp_a0 = *(void **)0x1010;
    var_f6 = var_f12;
    var_f5 = var_f13;
    var_f7 = var_f14;
    var_f4 = var_f15;
    temp_a0->unk13D4 = (s32) (temp_a0->unk13D4 | 0x100000);
    temp_f20 = var_f15;
    temp_f24 = var_f14;
    temp_f26 = var_f13;
    var_s0 = 0;
    temp_f22 = var_f12;
    if (temp_a0->unk169DC != 0) {
        temp_a0->unk169E0 = (s32) (temp_a0->unk169E0 + 1);
        if (var_f15 < 0.0f) {
            var_f4 = -var_f15;
            var_f7 = -var_f14;
            var_f5 = -var_f13;
            var_f6 = -var_f12;
        }
        if (var_f6 < (temp_a0->unk1698C * var_f4)) {
            temp_a0->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a0->unk16990 * var_f4) < var_f6) {
            temp_a0->unk16990 = (f32) (var_f6 / var_f4);
        }
        if (var_f5 < (temp_a0->unk16994 * var_f4)) {
            temp_a0->unk16994 = (f32) (var_f5 / var_f4);
        }
        if ((temp_a0->unk16998 * var_f4) < var_f5) {
            var_f12 = var_f5 / var_f4;
            temp_a0->unk16998 = var_f12;
        }
        var_f13 = temp_a0->unk1699C * var_f4;
        if (var_f7 < var_f13) {
            var_f14 = var_f7 / var_f4;
            temp_a0->unk1699C = var_f14;
        }
        var_f15 = temp_a0->unk169A0 * var_f4;
        if (var_f15 < var_f7) {
            var_f16 = var_f7 / var_f4;
            temp_a0->unk169A0 = var_f16;
        }
    }
    temp_a3 = *(s32 *)0x1034;
    var_a2 = *(s32 *)0x1028;
    var_s1 = *(s32 *)0x1030;
    temp_a4 = var_a2 < 5;
    if (temp_a3 != 0) {
        if (temp_a4 != 0) {
            goto block_17;
        }
        var_s0 = 0;
        /* Duplicate return node #19. Try simplifying control flow for better match */
        temp_t1 = var_s1 + (var_s0 * 4);
        temp_t1->unk0 = 0x8080D005;
        temp_t1->unk4 = temp_f22;
        temp_t1->unk8 = temp_f26;
        temp_t1->unkC = temp_f24;
        temp_t1->unk10 = temp_f20;
        *(void *)0x1030 = (s32) (temp_t1 + 0x14);
        *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s1 & 4) != 0;
    if (var_a2 < (var_s0 + 5)) {
block_17:
        temp_v0 = __glSPDlistSpace(0, temp_a0 + 0x10000, var_a2, temp_a3, temp_a4, (bitwise s32) var_f12, (bitwise s32) var_f13, (bitwise s32) var_f14, var_f15, var_f16);
        var_a2 = temp_v0;
        if (temp_v0 != 0) {
            var_s1 = *(void *)0x1030;
            var_s0 = (var_s1 & 4) ? 1 : var_s0;
            /* Duplicate return node #19. Try simplifying control flow for better match */
            temp_t1 = var_s1 + (var_s0 * 4);
            temp_t1->unk0 = 0x8080D005;
            temp_t1->unk4 = temp_f22;
            temp_t1->unk8 = temp_f26;
            temp_t1->unkC = temp_f24;
            temp_t1->unk10 = temp_f20;
            *(void *)0x1030 = (s32) (temp_t1 + 0x14);
            *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s1 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t1 = var_s1 + (var_s0 * 4);
    temp_t1->unk0 = 0x8080D005;
    temp_t1->unk4 = temp_f22;
    temp_t1->unk8 = temp_f26;
    temp_t1->unkC = temp_f24;
    temp_t1->unk10 = temp_f20;
    *(void *)0x1030 = (s32) (temp_t1 + 0x14);
    *(void *)0x1028 = (s32) ((var_a2 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4fvBbox(void *arg0, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4) {
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a3;
    s32 var_s0;
    s32 var_s2;
    s32 var_t2;
    void *temp_a1;
    void *temp_t2;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
    var_s0 = 0;
    if (temp_a1->unk169DC != 0) {
        temp_a1->unk169E0 = (s32) (temp_a1->unk169E0 + 1);
        temp_f10 = arg0->unkC;
        temp_f8 = arg0->unk8;
        temp_f9 = arg0->unk0;
        temp_f11 = arg0->unk4;
        var_f7 = temp_f8;
        var_f6 = temp_f9;
        var_f5 = temp_f11;
        if (temp_f10 < 0.0f) {
            var_f4 = -temp_f10;
            var_f7 = -temp_f8;
            var_f5 = -temp_f11;
            var_f6 = -temp_f9;
        } else {
            var_f4 = temp_f10;
        }
        if (var_f6 < (temp_a1->unk1698C * var_f4)) {
            temp_a1->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a1->unk16990 * var_f4) < var_f6) {
            temp_a1->unk16990 = (f32) (var_f6 / var_f4);
        }
        if (var_f5 < (temp_a1->unk16994 * var_f4)) {
            temp_a1->unk16994 = (f32) (var_f5 / var_f4);
        }
        if ((temp_a1->unk16998 * var_f4) < var_f5) {
            var_f12 = var_f5 / var_f4;
            temp_a1->unk16998 = var_f12;
        }
        var_f13 = temp_a1->unk1699C * var_f4;
        if (var_f7 < var_f13) {
            var_f14 = var_f7 / var_f4;
            temp_a1->unk1699C = var_f14;
        }
        var_f15 = temp_a1->unk169A0 * var_f4;
        if (var_f15 < var_f7) {
            var_f16 = var_f7 / var_f4;
            temp_a1->unk169A0 = var_f16;
        }
    }
    temp_a4 = *(s32 *)0x1034;
    var_a3 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5 = var_a3 < 5;
    if (temp_a4 != 0) {
        if (temp_a5 != 0) {
            goto block_18;
        }
        var_s0 = 0;
        goto block_20;
    }
    var_s0 = (var_s2 & 4) != 0;
    var_t2 = var_s0 * 4;
    if (var_a3 < (var_s0 + 5)) {
block_18:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4, temp_a5, (bitwise s32) var_f12, (bitwise s32) var_f13, var_f14, var_f15, var_f16);
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s0 = (var_s2 & 4) ? 1 : var_s0;
block_20:
            var_t2 = var_s0 * 4;
            /* Duplicate return node #21. Try simplifying control flow for better match */
            temp_t2 = var_s2 + var_t2;
            temp_t2->unk0 = 0x8080D005;
            temp_t2->unk4 = (f32) arg0->unk0;
            temp_t2->unk8 = (f32) arg0->unk4;
            temp_t2->unkC = (f32) arg0->unk8;
            temp_t2->unk10 = (f32) arg0->unkC;
            *(void *)0x1030 = (s32) (temp_t2 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + var_t2;
    temp_t2->unk0 = 0x8080D005;
    temp_t2->unk4 = (f32) arg0->unk0;
    temp_t2->unk8 = (f32) arg0->unk4;
    temp_t2->unkC = (f32) arg0->unk8;
    temp_t2->unk10 = (f32) arg0->unkC;
    *(void *)0x1030 = (s32) (temp_t2 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4iBbox(s32 arg0, s32 arg1, s32 arg2, s32 arg3, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a7;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s1;
    s32 var_s5;
    s32 var_t9;
    void *temp_a4;
    void *temp_s5;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a4 = *(void **)0x1010;
    var_a6 = 0x100000;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x100000);
    var_s1 = 0;
    if (temp_a4->unk169DC != 0) {
        var_a6 = temp_a4->unk169E0 + 1;
        temp_a4->unk169E0 = var_a6;
        if (arg3 >= 0) {
            var_f6 = (f32) arg0;
            var_f5 = (f32) arg1;
            var_f7 = (f32) arg2;
            var_f4 = (f32) arg3;
        } else {
            var_f4 = (f32) -arg3;
            var_f7 = (f32) -arg2;
            var_f5 = (f32) -arg1;
            var_f6 = (f32) -arg0;
        }
        if (var_f6 < (temp_a4->unk1698C * var_f4)) {
            temp_a4->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a4->unk16990 * var_f4) < var_f6) {
            temp_a4->unk16990 = (f32) (var_f6 / var_f4);
        }
        var_f12 = temp_a4->unk16994 * var_f4;
        if (var_f5 < var_f12) {
            var_f13 = var_f5 / var_f4;
            temp_a4->unk16994 = var_f13;
        }
        var_f14 = temp_a4->unk16998 * var_f4;
        if (var_f14 < var_f5) {
            var_f15 = var_f5 / var_f4;
            temp_a4->unk16998 = var_f15;
        }
        var_f16 = temp_a4->unk1699C * var_f4;
        if (var_f7 < var_f16) {
            var_f17 = var_f7 / var_f4;
            temp_a4->unk1699C = var_f17;
        }
        var_f18 = temp_a4->unk169A0 * var_f4;
        if (var_f18 < var_f7) {
            var_f19 = var_f7 / var_f4;
            temp_a4->unk169A0 = var_f19;
        }
    }
    temp_a7 = *(s32 *)0x1034;
    var_a3 = *(s32 *)0x1028;
    var_s5 = *(s32 *)0x1030;
    if (temp_a7 != 0) {
        if (var_a3 < 5) {
            goto block_17;
        }
        var_s1 = 0;
        goto block_19;
    }
    var_s1 = (var_s5 & 4) != 0;
    var_t9 = var_s1 * 4;
    if (var_a3 < (var_s1 + 5)) {
block_17:
        temp_v0 = __glSPDlistSpace(0, (void *) var_a3, (s32) temp_a4, (s32) (temp_a4 + 0x10000), var_a6, temp_a7, (bitwise s32) var_f12, (bitwise s32) var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s5 = *(void *)0x1030;
            var_s1 = (var_s5 & 4) ? 1 : var_s1;
block_19:
            var_t9 = var_s1 * 4;
            /* Duplicate return node #20. Try simplifying control flow for better match */
            temp_s5 = var_s5 + var_t9;
            temp_s5->unk10 = arg3;
            temp_s5->unkC = arg2;
            temp_s5->unk8 = arg1;
            temp_s5->unk0 = 0x8080D004;
            temp_s5->unk4 = arg0;
            *(void *)0x1030 = (s32) (temp_s5 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s1) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s5 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s5 = var_s5 + var_t9;
    temp_s5->unk10 = arg3;
    temp_s5->unkC = arg2;
    temp_s5->unk8 = arg1;
    temp_s5->unk0 = 0x8080D004;
    temp_s5->unk4 = arg0;
    *(void *)0x1030 = (s32) (temp_s5 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s1) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4ivBbox(void *arg0, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_v0;
    s32 var_a3;
    s32 var_s0;
    s32 var_s2;
    void *temp_a1;
    void *temp_t2;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
    var_s0 = 0;
    if (temp_a1->unk169DC != 0) {
        temp_a1->unk169E0 = (s32) (temp_a1->unk169E0 + 1);
        temp_a5 = arg0->unk4;
        temp_a3 = arg0->unkC;
        temp_a4 = arg0->unk8;
        temp_a0 = arg0->unk0;
        if (temp_a3 >= 0) {
            var_f4 = (f32) temp_a3;
            var_f6 = (f32) temp_a0;
            var_f5 = (f32) temp_a5;
            var_f7 = (f32) temp_a4;
        } else {
            var_f4 = (f32) -temp_a3;
            var_f7 = (f32) -temp_a4;
            var_f5 = (f32) -temp_a5;
            var_f6 = (f32) -temp_a0;
        }
        if (var_f6 < (temp_a1->unk1698C * var_f4)) {
            temp_a1->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a1->unk16990 * var_f4) < var_f6) {
            temp_a1->unk16990 = (f32) (var_f6 / var_f4);
        }
        var_f12 = temp_a1->unk16994 * var_f4;
        if (var_f5 < var_f12) {
            var_f13 = var_f5 / var_f4;
            temp_a1->unk16994 = var_f13;
        }
        var_f14 = temp_a1->unk16998 * var_f4;
        if (var_f14 < var_f5) {
            var_f15 = var_f5 / var_f4;
            temp_a1->unk16998 = var_f15;
        }
        var_f16 = temp_a1->unk1699C * var_f4;
        if (var_f7 < var_f16) {
            var_f17 = var_f7 / var_f4;
            temp_a1->unk1699C = var_f17;
        }
        var_f18 = temp_a1->unk169A0 * var_f4;
        if (var_f18 < var_f7) {
            var_f19 = var_f7 / var_f4;
            temp_a1->unk169A0 = var_f19;
        }
    }
    temp_a4_2 = *(s32 *)0x1034;
    var_a3 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5_2 = var_a3 < 5;
    if (temp_a4_2 != 0) {
        if (temp_a5_2 != 0) {
            goto block_17;
        }
        var_s0 = 0;
        /* Duplicate return node #19. Try simplifying control flow for better match */
        temp_t2 = var_s2 + (var_s0 * 4);
        temp_t2->unk0 = 0x8080D004;
        temp_t2->unk4 = (s32) arg0->unk0;
        temp_t2->unk8 = (s32) arg0->unk4;
        temp_t2->unkC = (s32) arg0->unk8;
        temp_t2->unk10 = (s32) arg0->unkC;
        *(void *)0x1030 = (s32) (temp_t2 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s2 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
block_17:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4_2, temp_a5_2, (bitwise s32) var_f12, (bitwise s32) var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s0 = (var_s2 & 4) ? 1 : var_s0;
            /* Duplicate return node #19. Try simplifying control flow for better match */
            temp_t2 = var_s2 + (var_s0 * 4);
            temp_t2->unk0 = 0x8080D004;
            temp_t2->unk4 = (s32) arg0->unk0;
            temp_t2->unk8 = (s32) arg0->unk4;
            temp_t2->unkC = (s32) arg0->unk8;
            temp_t2->unk10 = (s32) arg0->unkC;
            *(void *)0x1030 = (s32) (temp_t2 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + (var_s0 * 4);
    temp_t2->unk0 = 0x8080D004;
    temp_t2->unk4 = (s32) arg0->unk0;
    temp_t2->unk8 = (s32) arg0->unk4;
    temp_t2->unkC = (s32) arg0->unk8;
    temp_t2->unk10 = (s32) arg0->unkC;
    *(void *)0x1030 = (s32) (temp_t2 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4sBbox(s32 arg0, s32 arg1, s32 arg2, s32 arg3, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s32 temp_a7;
    s32 temp_v0;
    s32 var_a3;
    s32 var_a6;
    s32 var_s1;
    s32 var_s5;
    s32 var_t9;
    void *temp_a4;
    void *temp_s5;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a4 = *(void **)0x1010;
    var_a6 = 0x100000;
    temp_a4->unk13D4 = (s32) (temp_a4->unk13D4 | 0x100000);
    var_s1 = 0;
    if (temp_a4->unk169DC != 0) {
        var_a6 = temp_a4->unk169E0 + 1;
        temp_a4->unk169E0 = var_a6;
        if (arg3 >= 0) {
            var_f6 = (f32) arg0;
            var_f5 = (f32) arg1;
            var_f7 = (f32) arg2;
            var_f4 = (f32) arg3;
        } else {
            var_f4 = (f32) -arg3;
            var_f7 = (f32) -arg2;
            var_f5 = (f32) -arg1;
            var_f6 = (f32) -arg0;
        }
        if (var_f6 < (temp_a4->unk1698C * var_f4)) {
            temp_a4->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a4->unk16990 * var_f4) < var_f6) {
            temp_a4->unk16990 = (f32) (var_f6 / var_f4);
        }
        var_f12 = temp_a4->unk16994 * var_f4;
        if (var_f5 < var_f12) {
            var_f13 = var_f5 / var_f4;
            temp_a4->unk16994 = var_f13;
        }
        var_f14 = temp_a4->unk16998 * var_f4;
        if (var_f14 < var_f5) {
            var_f15 = var_f5 / var_f4;
            temp_a4->unk16998 = var_f15;
        }
        var_f16 = temp_a4->unk1699C * var_f4;
        if (var_f7 < var_f16) {
            var_f17 = var_f7 / var_f4;
            temp_a4->unk1699C = var_f17;
        }
        var_f18 = temp_a4->unk169A0 * var_f4;
        if (var_f18 < var_f7) {
            var_f19 = var_f7 / var_f4;
            temp_a4->unk169A0 = var_f19;
        }
    }
    temp_a7 = *(s32 *)0x1034;
    var_a3 = *(s32 *)0x1028;
    var_s5 = *(s32 *)0x1030;
    if (temp_a7 != 0) {
        if (var_a3 < 5) {
            goto block_17;
        }
        var_s1 = 0;
        goto block_19;
    }
    var_s1 = (var_s5 & 4) != 0;
    var_t9 = var_s1 * 4;
    if (var_a3 < (var_s1 + 5)) {
block_17:
        temp_v0 = __glSPDlistSpace(0, (void *) var_a3, (s32) temp_a4, (s32) (temp_a4 + 0x10000), var_a6, temp_a7, (bitwise s32) var_f12, (bitwise s32) var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s5 = *(void *)0x1030;
            var_s1 = (var_s5 & 4) ? 1 : var_s1;
block_19:
            var_t9 = var_s1 * 4;
            /* Duplicate return node #20. Try simplifying control flow for better match */
            temp_s5 = var_s5 + var_t9;
            temp_s5->unk10 = arg3;
            temp_s5->unkC = arg2;
            temp_s5->unk8 = arg1;
            temp_s5->unk0 = 0x8080D004;
            temp_s5->unk4 = arg0;
            *(void *)0x1030 = (s32) (temp_s5 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s1) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s5 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_s5 = var_s5 + var_t9;
    temp_s5->unk10 = arg3;
    temp_s5->unkC = arg2;
    temp_s5->unk8 = arg1;
    temp_s5->unk0 = 0x8080D004;
    temp_s5->unk4 = arg0;
    *(void *)0x1030 = (s32) (temp_s5 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s1) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}

void __glOdylc_Vertex4svBbox(void *arg0, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    s16 temp_a0;
    s16 temp_a3;
    s16 temp_a4;
    s16 temp_a5;
    s32 temp_a4_2;
    s32 temp_a5_2;
    s32 temp_v0;
    s32 var_a3;
    s32 var_s0;
    s32 var_s2;
    void *temp_a1;
    void *temp_t2;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a1 = *(void **)0x1010;
    temp_a1->unk13D4 = (s32) (temp_a1->unk13D4 | 0x100000);
    var_s0 = 0;
    if (temp_a1->unk169DC != 0) {
        temp_a1->unk169E0 = (s32) (temp_a1->unk169E0 + 1);
        temp_a5 = arg0->unk2;
        temp_a3 = arg0->unk6;
        temp_a4 = arg0->unk4;
        temp_a0 = arg0->unk0;
        if (temp_a3 >= 0) {
            var_f4 = (f32) temp_a3;
            var_f6 = (f32) temp_a0;
            var_f5 = (f32) temp_a5;
            var_f7 = (f32) temp_a4;
        } else {
            var_f4 = (f32) -temp_a3;
            var_f7 = (f32) -temp_a4;
            var_f5 = (f32) -temp_a5;
            var_f6 = (f32) -temp_a0;
        }
        if (var_f6 < (temp_a1->unk1698C * var_f4)) {
            temp_a1->unk1698C = (f32) (var_f6 / var_f4);
        }
        if ((temp_a1->unk16990 * var_f4) < var_f6) {
            temp_a1->unk16990 = (f32) (var_f6 / var_f4);
        }
        var_f12 = temp_a1->unk16994 * var_f4;
        if (var_f5 < var_f12) {
            var_f13 = var_f5 / var_f4;
            temp_a1->unk16994 = var_f13;
        }
        var_f14 = temp_a1->unk16998 * var_f4;
        if (var_f14 < var_f5) {
            var_f15 = var_f5 / var_f4;
            temp_a1->unk16998 = var_f15;
        }
        var_f16 = temp_a1->unk1699C * var_f4;
        if (var_f7 < var_f16) {
            var_f17 = var_f7 / var_f4;
            temp_a1->unk1699C = var_f17;
        }
        var_f18 = temp_a1->unk169A0 * var_f4;
        if (var_f18 < var_f7) {
            var_f19 = var_f7 / var_f4;
            temp_a1->unk169A0 = var_f19;
        }
    }
    temp_a4_2 = *(s32 *)0x1034;
    var_a3 = *(s32 *)0x1028;
    var_s2 = *(s32 *)0x1030;
    temp_a5_2 = var_a3 < 5;
    if (temp_a4_2 != 0) {
        if (temp_a5_2 != 0) {
            goto block_17;
        }
        var_s0 = 0;
        /* Duplicate return node #19. Try simplifying control flow for better match */
        temp_t2 = var_s2 + (var_s0 * 4);
        temp_t2->unk0 = 0x8080D004;
        temp_t2->unk4 = (s32) arg0->unk0;
        temp_t2->unk8 = (s32) arg0->unk2;
        temp_t2->unkC = (s32) arg0->unk4;
        temp_t2->unk10 = (s32) arg0->unk6;
        *(void *)0x1030 = (s32) (temp_t2 + 0x14);
        *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
        *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
        return;
    }
    var_s0 = (var_s2 & 4) != 0;
    if (var_a3 < (var_s0 + 5)) {
block_17:
        temp_v0 = __glSPDlistSpace(0, temp_a1, (s32) (temp_a1 + 0x10000), var_a3, temp_a4_2, temp_a5_2, (bitwise s32) var_f12, (bitwise s32) var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
        var_a3 = temp_v0;
        if (temp_v0 != 0) {
            var_s2 = *(void *)0x1030;
            var_s0 = (var_s2 & 4) ? 1 : var_s0;
            /* Duplicate return node #19. Try simplifying control flow for better match */
            temp_t2 = var_s2 + (var_s0 * 4);
            temp_t2->unk0 = 0x8080D004;
            temp_t2->unk4 = (s32) arg0->unk0;
            temp_t2->unk8 = (s32) arg0->unk2;
            temp_t2->unkC = (s32) arg0->unk4;
            temp_t2->unk10 = (s32) arg0->unk6;
            *(void *)0x1030 = (s32) (temp_t2 + 0x14);
            *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
            *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
            return;
        }
        *(void *)0x1030 = (s32) (var_s2 - 4);
        *(void *)0x1028 = (s32) (*(void *)0x1028 + 1);
        return;
    }
    temp_t2 = var_s2 + (var_s0 * 4);
    temp_t2->unk0 = 0x8080D004;
    temp_t2->unk4 = (s32) arg0->unk0;
    temp_t2->unk8 = (s32) arg0->unk2;
    temp_t2->unkC = (s32) arg0->unk4;
    temp_t2->unk10 = (s32) arg0->unk6;
    *(void *)0x1030 = (s32) (temp_t2 + 0x14);
    *(void *)0x1028 = (s32) ((var_a3 - var_s0) - 5);
    *(void *)0x1034 = (s32) (*(void *)0x1034 + 5);
}
