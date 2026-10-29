s32 __glOdyim_SoftClipMateriali(void *, void **, s32, void **, void *); /* extern */
? __glOdysseySetProgram(void *, s32, u8, s32, void *); /* extern */
? sub_0d9f0000(void *);                             /* extern */
extern s32 HQ2_READ_FIFO;

s32 __glOdysseyClipToPlaneObj(void *arg0, void **arg1, s32 arg2, void *arg3, void *arg4) {
    s64 sp48;
    s64 sp40;
    s64 sp8;
    s64 sp0;
    f32 var_f4;
    s32 temp_a0;
    s32 var_s2;
    s32 var_s7;
    s64 var_s8;
    void **var_s0;
    void *temp_s1;
    void *temp_s6;
    void *var_s3;
    void *var_s4;

    temp_s6 = arg1 + (arg2 * 4);
    var_s4 = temp_s6->unk-4;
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
    var_s3 = arg3;
    sp8 = (s64) (arg0 + 0x20000);
    var_s7 = arg0->unk19D88;
    var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
    if (arg2 > 0) {
        var_s2 = 0;
        var_s0 = arg1;
        var_s8 = var_s7 - 0x198;
        sp0 = (s64) arg0->unk2F78;
loop_7:
        temp_s1 = *var_s0;
        M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
        M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f25, $f27 */);
        temp_a0 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc0 */);
        if (!(var_f4 >= 0.0f)) {
            if (temp_a0 != 0) {
                var_s8 += 0x198;
                sp40 = var_s8;
                var_s7 += 0x198;
                sp48 = (s64) var_s7;
                ((? (*)(s64, void *, void *)) sp0)(var_s8, temp_s1, var_s4);
                sp48->unk-7 = 0;
                var_s3 += 4;
                sp48->unk-E0 = 0U;
                var_s2 += 1;
                var_s3->unk-4 = (s32) sp40;
            }
        } else {
            if (temp_a0 != 0) {
                var_s3 += 4;
                var_s2 += 1;
            } else {
                var_s8 += 0x198;
                sp40 = var_s8;
                var_s7 += 0x198;
                sp48 = (s64) var_s7;
                ((? (*)(s64, void *, void *)) sp0)(var_s8, var_s4, temp_s1);
                sp48->unk-7 = 0;
                var_s3 += 8;
                sp48->unk-E0 = (u8) var_s4->unkB8;
                var_s3->unk-8 = (s32) sp40;
                var_s2 += 2;
            }
            var_s3->unk-4 = temp_s1;
        }
        var_s0 += 4;
        var_s4 = temp_s1;
        var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
        if (var_s0 != temp_s6) {
            goto loop_7;
        }
        sp8->unk-6278 = var_s7;
        return var_s2;
    }
    sp8->unk-6278 = var_s7;
    return 0;
}

void __glOdysseyDoTriangleClip(void *arg0, void **arg1, s32 arg2, u32 arg3) {
    s64 sp3A0;
    s32 temp_ra;
    s32 temp_s1;
    s32 temp_s4;
    s32 temp_s8;
    s32 temp_v0;
    s32 var_s1_2;
    s32 var_s6_2;
    s32 var_s7;
    u32 var_s1;
    u8 temp_a2;
    void **var_s0;
    void **var_s6;
    void *temp_a4;
    void *var_s2;

    unksp348 = arg0 + 0x20000;
    var_s6 = sp;
    var_s1 = arg3;
    var_s7 = arg2;
    var_s0 = arg1;
    sp3A0 = arg0 + 0x10000;
    var_s2 = arg0 + 0x16748;
    temp_s8 = arg0->unkA6A8;
    arg0->unk19D88 = (void *) (arg0 + 0x17418);
    temp_s4 = arg0->unk570 == 0x1D00;
loop_3:
    if (!(var_s1 & 1)) {
        var_s1 = var_s1 >> 1;
        var_s2 += 0x10;
        if (var_s1 == 0) {
            goto block_5;
        }
        goto loop_3;
    }
    temp_v0 = __glOdyim_SoftClipMateriali(arg0, var_s0, var_s7, var_s6, var_s2);
    var_s1 = var_s1 >> 1;
    temp_ra = temp_v0 < 3;
    var_s2 += 0x10;
    var_s0 = var_s6;
    var_s7 = temp_v0;
    if (temp_ra == 0) {
        var_s6 += 0x40;
        if (var_s1 != 0) {
            goto loop_3;
        }
block_5:
        var_s1_2 = 0;
        var_s6_2 = 0;
        HQ2_READ_FIFO = 0x14400;
        HQ2_READ_FIFO = 9;
        if (var_s7 <= 0) {

        } else {
loop_10:
            if (temp_s4 != 0) {
                unksp348->unk-6164(arg0, *var_s0);
            }
            temp_a2 = (*var_s0)->unk191;
            if ((temp_a2 == 0) || (temp_s4 != 0)) {
                temp_a4 = arg0 + (var_s1_2 * 4);
                temp_a4->unkA698 = 1;
                __glOdysseySetProgram(arg0, 1, temp_a2, 1, temp_a4 + 0x10000);
                unksp348->unk-6168(*var_s0);
                __glOdysseySetProgram(arg0, temp_s8);
            } else {
                (arg0 + (var_s1_2 * 4))->unkA698 = temp_s8;
                sub_0d9f0000(*var_s0);
            }
            var_s0 += 4;
            var_s6_2 += 1;
            temp_s1 = var_s1_2 + 1;
            var_s1_2 = (temp_s1 > 3) ? 1 : temp_s1;
            if (var_s7 != var_s6_2) {
                goto loop_10;
            }
        }
        sp3A0->unk-595C = temp_s8;
        sp3A0->unk-5960 = temp_s8;
        sp3A0->unk-5964 = temp_s8;
        sp3A0->unk-5968 = temp_s8;
        HQ2_READ_FIFO = 0x14001;
        if (sp3A0->unk-690C != 0) {
            sp3A0->unk-67D0 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        sp3A0->unk-67D0 = 1;
    }
}

void __glOdysseySoftClipClipTriangle(u32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    __glOdysseyDoTriangleClip(sp, (void **)3, arg4, arg1, arg2, arg3);
}

void __glOdysseyDoTriangleClipFast(void *arg0, void **arg1, s32 arg2, u32 arg3) {
    s64 sp3A0;
    s32 temp_a3;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s6;
    s32 temp_v0;
    s32 var_s0_2;
    s32 var_s5_2;
    s32 var_s7;
    u32 var_s0;
    void **var_s1;
    void **var_s5;
    void *temp_a2;
    void *temp_a2_2;
    void *var_s2;

    var_s5 = sp;
    var_s0 = arg3;
    var_s7 = arg2;
    sp3A0 = arg0 + 0x10000;
    var_s1 = arg1;
    var_s2 = arg0 + 0x16748;
    arg0->unk19D88 = (void *) (arg0 + 0x17418);
    unksp348 = (s64) arg0->unkA6A8;
    temp_s6 = arg0->unk570 == 0x1D00;
loop_3:
    if (!(var_s0 & 1)) {
        var_s0 = var_s0 >> 1;
        var_s2 += 0x10;
        if (var_s0 == 0) {
            goto block_5;
        }
        goto loop_3;
    }
    temp_v0 = __glOdyim_SoftClipMateriali(arg0, var_s1, var_s7, var_s5, var_s2);
    var_s0 = var_s0 >> 1;
    temp_ra = temp_v0 < 3;
    var_s2 += 0x10;
    var_s1 = var_s5;
    var_s7 = temp_v0;
    if (temp_ra == 0) {
        var_s5 += 0x40;
        if (var_s0 != 0) {
            goto loop_3;
        }
block_5:
        var_s0_2 = 0;
        var_s5_2 = 0;
        HQ2_READ_FIFO = 0x14400;
        HQ2_READ_FIFO = 9;
        if (var_s7 <= 0) {

        } else {
loop_9:
            if (temp_s6 != 0) {
                arg0->unk19E9C(arg0, *var_s1);
            }
            temp_a2 = arg0 + (var_s0_2 * 4);
            if (((*var_s1)->unk191 != 0) && (temp_s6 == 0)) {
                temp_a3 = temp_a2->unkA698;
                if (temp_a3 != unksp348) {
                    temp_a2->unkA698 = (s32) unksp348;
                    __glOdysseySetProgram(arg0, (s32) unksp348, (u8) (temp_a2 + 0x10000), temp_a3);
                }
                sub_0d9f0000(*var_s1);
            } else {
                temp_a2_2 = arg0 + (var_s0_2 * 4);
                if (temp_a2_2->unkA698 != 1) {
                    temp_a2_2->unkA698 = 1;
                    __glOdysseySetProgram(arg0, 1, (u8) (temp_a2_2 + 0x10000), 1, (void *)1);
                }
                arg0->unk19E98(*var_s1);
            }
            var_s1 += 4;
            var_s5_2 += 1;
            temp_s0 = var_s0_2 + 1;
            var_s0_2 = (temp_s0 > 3) ? 1 : temp_s0;
            if (var_s7 != var_s5_2) {
                goto loop_9;
            }
        }
        HQ2_READ_FIFO = 0x14001;
        if (sp3A0->unk-690C != 0) {
            sp3A0->unk-67D0 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        sp3A0->unk-67D0 = 1;
    }
}

void __glOdysseySoftClipClipTriangleFast(u32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    __glOdysseyDoTriangleClipFast(sp, (void **)3, arg4, arg1, arg2, arg3);
}
