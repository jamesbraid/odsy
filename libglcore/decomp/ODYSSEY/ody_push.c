extern s64 HQ2_READ_FIFO;

void __glOdysseyPushLoop(u32 arg0, s64 *arg1) {
    s32 temp_a0;
    s64 *var_a1;
    u32 temp_a0_2;
    u32 var_a2;
    u32 var_a2_2;

    var_a1 = arg1;
    M2C_ERROR(/* unknown instruction: pref 0x0, 0x80($a1) */);
    M2C_ERROR(/* unknown instruction: pref 0x0, 0x100($a1) */);
    var_a2 = arg0 >> 5;
    temp_a0 = arg0 & 0x1F;
    if (var_a2 != 0) {
        do {
            M2C_ERROR(/* unknown instruction: pref 0x0, 0x180($a1) */);
            HQ2_READ_FIFO = var_a1->unk0;
            HQ2_READ_FIFO = var_a1->unk8;
            HQ2_READ_FIFO = var_a1->unk10;
            HQ2_READ_FIFO = var_a1->unk18;
            HQ2_READ_FIFO = var_a1->unk20;
            HQ2_READ_FIFO = var_a1->unk28;
            HQ2_READ_FIFO = var_a1->unk30;
            HQ2_READ_FIFO = var_a1->unk38;
            var_a2 -= 1;
            HQ2_READ_FIFO = var_a1->unk40;
            HQ2_READ_FIFO = var_a1->unk48;
            HQ2_READ_FIFO = var_a1->unk50;
            HQ2_READ_FIFO = var_a1->unk58;
            HQ2_READ_FIFO = var_a1->unk60;
            HQ2_READ_FIFO = var_a1->unk68;
            HQ2_READ_FIFO = var_a1->unk70;
            HQ2_READ_FIFO = var_a1->unk78;
            var_a1 += 0x80;
        } while (var_a2 != 0);
    }
    temp_a0_2 = temp_a0 & 0xF;
    if ((temp_a0 & 0x10) != 0) {
        HQ2_READ_FIFO = var_a1->unk0;
        HQ2_READ_FIFO = var_a1->unk8;
        HQ2_READ_FIFO = var_a1->unk10;
        HQ2_READ_FIFO = var_a1->unk18;
        HQ2_READ_FIFO = var_a1->unk20;
        HQ2_READ_FIFO = var_a1->unk28;
        HQ2_READ_FIFO = var_a1->unk30;
        HQ2_READ_FIFO = var_a1->unk38;
        var_a1 += 0x40;
    }
    var_a2_2 = temp_a0_2 >> 1;
    if (var_a2_2 != 0) {
        do {
            var_a2_2 -= 1;
            HQ2_READ_FIFO = *var_a1;
            var_a1 += 8;
        } while (var_a2_2 != 0);
    }
    if ((temp_a0_2 & 1) != 0) {
        HQ2_READ_FIFO = (s32) *var_a1;
    }
}

void __glOdysseyArraysInt_V3F(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    void *var_a2;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 0xC);
    do {
        var_a1 -= 1;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a2->unk0;
        HQ2_READ_FIFO = (s32) var_a2->unk4;
        HQ2_READ_FIFO = (s32) var_a2->unk8;
        var_a2 += 0xC;
    } while (var_a1 != 0);
}

void __glOdysseyArraysInt_C3F_V3F(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    void *var_a2;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 0x18);
    do {
        var_a1 -= 1;
        HQ2_READ_FIFO = 0xC580CC0E;
        HQ2_READ_FIFO = (s32) var_a2->unk0;
        HQ2_READ_FIFO = (s32) var_a2->unk4;
        HQ2_READ_FIFO = (s32) var_a2->unk8;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a2->unkC;
        HQ2_READ_FIFO = (s32) var_a2->unk10;
        HQ2_READ_FIFO = (s32) var_a2->unk14;
        var_a2 += 0x18;
    } while (var_a1 != 0);
}

void __glOdysseyArraysSep_C3F_V3F(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a1;
    void *var_a2;
    void *var_a3;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 0xC);
    var_a3 = arg3 + (arg0 * 0xC);
    do {
        var_a1 -= 1;
        temp_t1 = var_a2->unk0;
        temp_t2 = var_a2->unk4;
        temp_t3 = var_a2->unk8;
        var_a2 += 0xC;
        HQ2_READ_FIFO = 0xC580CC0E;
        HQ2_READ_FIFO = temp_t1;
        HQ2_READ_FIFO = temp_t2;
        HQ2_READ_FIFO = temp_t3;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a3->unk0;
        HQ2_READ_FIFO = (s32) var_a3->unk4;
        HQ2_READ_FIFO = (s32) var_a3->unk8;
        var_a3 += 0xC;
    } while (var_a1 != 0);
}

void __glOdysseyArraysInt_N3F_V3F(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    void *var_a2;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 0x18);
    do {
        var_a1 -= 1;
        HQ2_READ_FIFO = 0xC180CC19;
        HQ2_READ_FIFO = (s32) var_a2->unk0;
        HQ2_READ_FIFO = (s32) var_a2->unk4;
        HQ2_READ_FIFO = (s32) var_a2->unk8;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a2->unkC;
        HQ2_READ_FIFO = (s32) var_a2->unk10;
        HQ2_READ_FIFO = (s32) var_a2->unk14;
        var_a2 += 0x18;
    } while (var_a1 != 0);
}

void __glOdysseyArraysInt_V3F_N3F(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    void *var_a2;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 0x18);
    do {
        var_a1 -= 1;
        HQ2_READ_FIFO = 0xC180CC19;
        HQ2_READ_FIFO = (s32) var_a2->unkC;
        HQ2_READ_FIFO = (s32) var_a2->unk10;
        HQ2_READ_FIFO = (s32) var_a2->unk14;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a2->unk0;
        HQ2_READ_FIFO = (s32) var_a2->unk4;
        HQ2_READ_FIFO = (s32) var_a2->unk8;
        var_a2 += 0x18;
    } while (var_a1 != 0);
}

void __glOdysseyArraysSep_N3F_V3F(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a1;
    void *var_a2;
    void *var_a3;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 0xC);
    var_a3 = arg3 + (arg0 * 0xC);
    do {
        var_a1 -= 1;
        temp_t1 = var_a2->unk0;
        temp_t2 = var_a2->unk4;
        temp_t3 = var_a2->unk8;
        var_a2 += 0xC;
        HQ2_READ_FIFO = 0xC180CC19;
        HQ2_READ_FIFO = temp_t1;
        HQ2_READ_FIFO = temp_t2;
        HQ2_READ_FIFO = temp_t3;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a3->unk0;
        HQ2_READ_FIFO = (s32) var_a3->unk4;
        HQ2_READ_FIFO = (s32) var_a3->unk8;
        var_a3 += 0xC;
    } while (var_a1 != 0);
}

void __glOdysseyArraysSep_N3S_V3F(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s16 temp_t1;
    s16 temp_t2;
    s16 temp_t3;
    s32 var_a1;
    void *var_a2;
    void *var_a3;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 6);
    var_a3 = arg3 + (arg0 * 0xC);
    do {
        var_a1 -= 1;
        temp_t1 = var_a2->unk0;
        temp_t2 = var_a2->unk2;
        temp_t3 = var_a2->unk4;
        var_a2 += 6;
        HQ2_READ_FIFO = 0xC180CC17;
        HQ2_READ_FIFO = (s32) temp_t1;
        HQ2_READ_FIFO = (s32) temp_t2;
        HQ2_READ_FIFO = (s32) temp_t3;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a3->unk0;
        HQ2_READ_FIFO = (s32) var_a3->unk4;
        HQ2_READ_FIFO = (s32) var_a3->unk8;
        var_a3 += 0xC;
    } while (var_a1 != 0);
}

void __glOdysseyArraysInt_T2F_V3F(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_a1;
    void *var_a2;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 0x14);
    do {
        var_a1 -= 1;
        HQ2_READ_FIFO = 0xC380C821;
        HQ2_READ_FIFO = (s32) var_a2->unk0;
        HQ2_READ_FIFO = (s32) var_a2->unk4;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a2->unk8;
        HQ2_READ_FIFO = (s32) var_a2->unkC;
        HQ2_READ_FIFO = (s32) var_a2->unk10;
        var_a2 += 0x14;
    } while (var_a1 != 0);
}

void __glOdysseyArraysSep_T2F_V3F(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a1;
    void *var_a2;
    void *var_a3;

    var_a1 = arg1;
    var_a2 = arg2 + (arg0 * 8);
    var_a3 = arg3 + (arg0 * 0xC);
    do {
        var_a1 -= 1;
        temp_t1 = var_a2->unk0;
        temp_t2 = var_a2->unk4;
        var_a2 += 8;
        HQ2_READ_FIFO = 0xC380C821;
        HQ2_READ_FIFO = temp_t1;
        HQ2_READ_FIFO = temp_t2;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) var_a3->unk0;
        HQ2_READ_FIFO = (s32) var_a3->unk4;
        HQ2_READ_FIFO = (s32) var_a3->unk8;
        var_a3 += 0xC;
    } while (var_a1 != 0);
}

void __glOdysseyElementsInt_V3F(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a1;
    s32 var_a0;
    void *temp_s2;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = arg2 + (*var_a1 * 0xC);
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2->unk4;
        HQ2_READ_FIFO = (s32) temp_s2->unk8;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsInt_C3F_V3F(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a1;
    s32 var_a0;
    void *temp_s2;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = arg2 + (*var_a1 * 0x18);
        HQ2_READ_FIFO = 0xC580CC0E;
        HQ2_READ_FIFO = (s32) temp_s2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2->unk4;
        HQ2_READ_FIFO = (s32) temp_s2->unk8;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s2->unkC;
        HQ2_READ_FIFO = (s32) temp_s2->unk10;
        HQ2_READ_FIFO = (s32) temp_s2->unk14;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsSep_C3F_V3F(s32 arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s32 *var_a1;
    s32 temp_s2;
    s32 var_a0;
    void *temp_s2_2;
    void *temp_s3;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = *var_a1;
        temp_s2_2 = arg2 + (temp_s2 * 0xC);
        temp_s3 = arg3 + ((0 | temp_s2) * 0xC);
        HQ2_READ_FIFO = 0xC580CC0E;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk4;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk8;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s3->unk0;
        HQ2_READ_FIFO = (s32) temp_s3->unk4;
        HQ2_READ_FIFO = (s32) temp_s3->unk8;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsInt_N3F_V3F(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a1;
    s32 var_a0;
    void *temp_s2;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = arg2 + (*var_a1 * 0x18);
        HQ2_READ_FIFO = 0xC180CC19;
        HQ2_READ_FIFO = (s32) temp_s2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2->unk4;
        HQ2_READ_FIFO = (s32) temp_s2->unk8;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s2->unkC;
        HQ2_READ_FIFO = (s32) temp_s2->unk10;
        HQ2_READ_FIFO = (s32) temp_s2->unk14;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsInt_V3F_N3F(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a1;
    s32 var_a0;
    void *temp_s2;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = arg2 + (*var_a1 * 0x18);
        HQ2_READ_FIFO = 0xC180CC19;
        HQ2_READ_FIFO = (s32) temp_s2->unkC;
        HQ2_READ_FIFO = (s32) temp_s2->unk10;
        HQ2_READ_FIFO = (s32) temp_s2->unk14;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2->unk4;
        HQ2_READ_FIFO = (s32) temp_s2->unk8;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsSep_N3F_V3F(s32 arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s32 *var_a1;
    s32 temp_s2;
    s32 var_a0;
    void *temp_s2_2;
    void *temp_s3;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = *var_a1;
        temp_s2_2 = arg2 + (temp_s2 * 0xC);
        temp_s3 = arg3 + ((0 | temp_s2) * 0xC);
        HQ2_READ_FIFO = 0xC180CC19;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk4;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk8;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s3->unk0;
        HQ2_READ_FIFO = (s32) temp_s3->unk4;
        HQ2_READ_FIFO = (s32) temp_s3->unk8;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsSep_N3S_V3F(s32 arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s32 *var_a1;
    s32 temp_s2;
    s32 var_a0;
    void *temp_s2_2;
    void *temp_s3;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = *var_a1;
        temp_s2_2 = arg2 + (temp_s2 * 6);
        temp_s3 = arg3 + ((0 | temp_s2) * 0xC);
        HQ2_READ_FIFO = 0xC180CC17;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk2;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk4;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s3->unk0;
        HQ2_READ_FIFO = (s32) temp_s3->unk4;
        HQ2_READ_FIFO = (s32) temp_s3->unk8;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsInt_T2F_V3F(s32 arg0, s32 *arg1, s32 arg2) {
    s32 *var_a1;
    s32 var_a0;
    void *temp_s2;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = arg2 + (*var_a1 * 0x14);
        HQ2_READ_FIFO = 0xC380C821;
        HQ2_READ_FIFO = (s32) temp_s2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2->unk4;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s2->unkC;
        HQ2_READ_FIFO = (s32) temp_s2->unk10;
        HQ2_READ_FIFO = (s32) temp_s2->unk14;
        var_a1 += 4;
    } while (var_a0 != 0);
}

void __glOdysseyElementsSep_T2F_V3F(s32 arg0, s32 *arg1, s32 arg2, s32 arg3) {
    s32 *var_a1;
    s32 temp_s2;
    s32 var_a0;
    void *temp_s2_2;
    void *temp_s3;

    var_a0 = arg0;
    var_a1 = arg1;
    do {
        var_a0 -= 1;
        temp_s2 = *var_a1;
        temp_s2_2 = arg2 + (temp_s2 * 8);
        temp_s3 = arg3 + ((0 | temp_s2) * 0xC);
        HQ2_READ_FIFO = 0xC380C821;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk0;
        HQ2_READ_FIFO = (s32) temp_s2_2->unk4;
        HQ2_READ_FIFO = 0x8080CC03;
        HQ2_READ_FIFO = (s32) temp_s3->unk0;
        HQ2_READ_FIFO = (s32) temp_s3->unk4;
        HQ2_READ_FIFO = (s32) temp_s3->unk8;
        var_a1 += 4;
    } while (var_a0 != 0);
}
