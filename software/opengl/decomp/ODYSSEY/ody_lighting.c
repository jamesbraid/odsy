Error occurred while processing instruction: c.eq.d $f7, $f5

Error occurred while processing instruction: c.lt.d $f5, $f8

Error occurred while processing instruction: c.eq.d $f7, $f5

Error occurred while processing instruction: c.lt.d $f5, $f8

Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
? __glSetError(?, s32);                             /* extern */
? __glUnScaleColorf(void *, void *, void *, s32, u32, s32, s32); /* extern */
? __glim_LightModelf(s32);                          /* extern */
? __glim_LightModelfv(s32);                         /* extern */
? __glim_LightModeli(s32);                          /* extern */
? __glim_LightModeliv(s32);                         /* extern */
? __glim_Lightf(s32);                               /* extern */
? __glim_Lightfv(s32);                              /* extern */
? __glim_Lighti(s32);                               /* extern */
? __glim_Lightiv(s32);                              /* extern */
f64 cos(s32 *, f64, ?, s32, f32, f32, f32);         /* extern */
extern u32 HQ2_READ_FIFO;
extern ? sub_0daf0000;

void __glOdysseyInitLighting(void *arg0) {
    u32 temp_a4;

    arg0->unk16968 = 0xFF;
    arg0->unk1696C = 0xFF;
    HQ2_READ_FIFO = 0xC18093FF;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xC180CC19;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xC680D02F;
    HQ2_READ_FIFO = 0x3E4CCCCD;
    HQ2_READ_FIFO = 0x3E4CCCCD;
    HQ2_READ_FIFO = 0x3E4CCCCD;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xC780D030;
    HQ2_READ_FIFO = 0x3F4CCCCD;
    HQ2_READ_FIFO = 0x3F4CCCCD;
    HQ2_READ_FIFO = 0x3F4CCCCD;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xC880D031;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xC980D032;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xCA80D035;
    HQ2_READ_FIFO = 0x3E4CCCCD;
    HQ2_READ_FIFO = 0x3E4CCCCD;
    HQ2_READ_FIFO = 0x3E4CCCCD;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xCB80D036;
    HQ2_READ_FIFO = 0x3F4CCCCD;
    HQ2_READ_FIFO = 0x3F4CCCCD;
    HQ2_READ_FIFO = 0x3F4CCCCD;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xCC80D037;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0x3F800000;
    HQ2_READ_FIFO = 0xCD80D038;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0x3F800000;
    arg0->unkA218 = 0xF0U;
    HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x908091BB;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    arg0->unkA218 = 0xF4U;
    HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x908091BB;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    temp_a4 = arg0->unkA1F8;
    arg0->unkA1F8 = 0x19AU;
    arg0->unkA21C = 0x18U;
    if (arg0->unkC94 != 0) {
        arg0->unkA1C0 = 0x3F800000U;
        arg0->unkA1BC = 0x3E4CCCCDU;
        arg0->unkA1B8 = 0x3E4CCCCDU;
        arg0->unkA1B4 = 0x3E4CCCCDU;
    } else {
        arg0->unkA1C0 = 0x3F800000U;
        arg0->unkA1BC = 0U;
        arg0->unkA1B8 = 0U;
        arg0->unkA1B4 = 0x3F800000U;
    }
    HQ2_READ_FIFO = 0x29008000 | ((arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x32008000 | ((arg0->unkA21C & 0x3FF) | (((u32) arg0->unkA21C >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x8E809015;
    HQ2_READ_FIFO = arg0->unkA1B4;
    HQ2_READ_FIFO = arg0->unkA1B8;
    HQ2_READ_FIFO = arg0->unkA1BC;
    HQ2_READ_FIFO = arg0->unkA1C0;
    arg0->unkA1F8 = temp_a4;
    arg0->unkA21C = 0U;
    arg0->unkA1D4 = 3U;
    arg0->unkA218 = 0U;
    arg0->unkA1D8 = 0x10U;
    HQ2_READ_FIFO = 0x29008000 | ((arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x32008000 | ((arg0->unkA21C & 0x3FF) | (((u32) arg0->unkA21C >> 0xA) << 0x17));
    HQ2_READ_FIFO = (arg0->unkA1D4 & 0x3FF) | (((u32) arg0->unkA1D4 >> 0xA) << 0x17) | 0x20008000;
    HQ2_READ_FIFO = 0x31008000 | ((arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17));
    HQ2_READ_FIFO = (arg0->unkA1D8 & 0x3FF) | (((u32) arg0->unkA1D8 >> 0xA) << 0x17) | 0x21008000;
}

void dirtyLight(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a5;
    u32 temp_a4;

    temp_a4 = arg1 - 0x4000;
    if (temp_a4 < 8U) {
        arg0->unk16964 = (s32) (arg0->unk16964 | 0x40);
        *(s32 *)0x1018 = 2;
        temp_a5 = 1 << temp_a4;
        arg0->unk16968 = (s32) (temp_a5 | arg0->unk16968);
        if ((arg2 != 0x1200) && (arg2 != 0x1201) && (arg2 != 0x1202)) {
            arg0->unk16964 = (s32) (arg0->unk16964 | 0x100);
            *(void *)0x1018 = 2;
            return;
        }
        arg0->unk1696C = (s32) (temp_a5 | arg0->unk1696C);
    }
}

void __glOdyim_Lightfv(s32 arg0, s32 arg1) {
    s64 sp0;

    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_Lightfv(arg0);
        __glOdysseyInitLighting((void *) sp0, arg0, arg1);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Lightf(s32 arg0, s32 arg1) {
    s64 sp0;

    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_Lightf(arg0);
        __glOdysseyInitLighting((void *) sp0, arg0, arg1);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Lightiv(s32 arg0, s32 arg1) {
    s64 sp0;

    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_Lightiv(arg0);
        __glOdysseyInitLighting((void *) sp0, arg0, arg1);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Lighti(s32 arg0, s32 arg1) {
    s64 sp0;

    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_Lighti(arg0);
        __glOdysseyInitLighting((void *) sp0, arg0, arg1);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_LightModelfv(s32 arg0) {
    s64 sp0;

    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_LightModelfv(arg0);
        sp0->unk16964 = (s32) (sp0->unk16964 | 0x40);
        *(void *)0x1018 = 2;
        if (arg0 != 0xB53) {
            sp0->unk16964 = (s32) (sp0->unk16964 | 0x100);
            *(void *)0x1018 = 2;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_LightModelf(void) {
    s64 sp0;
    s32 temp_a1;

    temp_a1 = *(s32 *)0x1010;
    sp0 = (s64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        __glim_LightModelf(temp_a1);
        sp0->unk16964 = (s32) (sp0->unk16964 | 0x140);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, temp_a1);
}

void __glOdyim_LightModeliv(s32 arg0) {
    s64 sp0;

    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_LightModeliv(arg0);
        sp0->unk16964 = (s32) (sp0->unk16964 | 0x40);
        *(void *)0x1018 = 2;
        if (arg0 != 0xB53) {
            sp0->unk16964 = (s32) (sp0->unk16964 | 0x100);
            *(void *)0x1018 = 2;
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_LightModeli(void) {
    s64 sp0;
    s32 temp_a2;

    temp_a2 = *(s32 *)0x1010;
    sp0 = (s64) temp_a2;
    if (*(s32 *)0x1018 != 1) {
        __glim_LightModeli(temp_a2);
        sp0->unk16964 = (s32) (sp0->unk16964 | 0x140);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, temp_a2);
}

void ValidateLight(void *arg1, s64 arg2, s64 arg3, s32 *arg5) {
    s64 sp28;
    s64 sp18;
    f32 temp_f11;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 var_f4;
    f32 var_f7;
    f64 temp_f13;
    f64 temp_f4;
    f64 var_f5;
    s32 *var_a5;
    s32 temp_f14;
    void *temp_at;

    // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
    // At instruction: c.eq.d $f7, $f5
    if (M2C_ERROR()) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
        // At instruction: c.lt.d $f5, $f8
        if (M2C_ERROR()) {
            var_f5 = second half of f64;
            var_f4 = (f32) (1.0 / sqrt((f64) var_f4));
        }
        M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f9, $f9 */);
        temp_f13 = (f64) M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f8, $f8 */);
        var_f7 = 1.0f;
        if (var_f5 < temp_f13) {
            var_f7 = (f32) ((second half of f64) / sqrt(temp_f13));
        }
        saved_reg_s0->unk-67B8 = (f32) -((f32) ((f64) (arg1->unk48 * var_f4) + 1.0) * var_f7);
        saved_reg_s0->unk-67BC = (f32) -((second half of f64) * var_f7);
        saved_reg_s0->unk-67C0 = (f32) -(arg1->unk40 * var_f4 * var_f7);
        M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f14, $f10 */);
        M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f8 */);
        saved_reg_s0->unk-67B4 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f16, $f11, $f12 */);
    } else {
        var_f5 = second half of f64;
        saved_reg_s0->unk-67B4 = 0;
        saved_reg_s0->unk-67B8 = 0.0f;
        saved_reg_s0->unk-67BC = 0.0f;
        saved_reg_s0->unk-67C0 = 0.0f;
        var_f4 = (f32) (1.0 / (second half of f64));
    }
    temp_f17 = saved_reg_s1->unk40 * var_f4;
    saved_reg_s0->unk-67CC = temp_f17;
    temp_f16 = saved_reg_s1->unk44 * var_f4;
    saved_reg_s0->unk-67C8 = temp_f16;
    temp_f15 = saved_reg_s1->unk48 * var_f4;
    saved_reg_s0->unk-67C4 = temp_f15;
    temp_f14 = saved_reg_s1->unk68;
    saved_reg_s0->unk-67B0 = temp_f14;
    saved_reg_s0->unk-67AC = (s32) saved_reg_s1->unk6C;
    saved_reg_s0->unk-67A8 = (s32) saved_reg_s1->unk70;
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f13, $f13 */);
    temp_f11 = (f32) sqrt((f64) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f12 */));
    saved_reg_s0->unk-67A4 = (f32) (-saved_reg_s1->unk50 / temp_f11);
    saved_reg_s0->unk-67A0 = (f32) (-saved_reg_s1->unk54 / temp_f11);
    saved_reg_s0->unk-679C = (f32) (-saved_reg_s1->unk58 / temp_f11);
    if (((f64) saved_reg_s1->unk4C == var_f5) || (temp_f4 = (f64) (second half of f64), (temp_f4 == (second half of f64)))) {
        saved_reg_s0->unk-6794 = 0.0f;
        saved_reg_s0->unk-6798 = 1.0f;
    } else {
        sp28 = arg3;
        sp18 = arg2;
        saved_reg_s0->unk-6798 = (f32) -cos(var_a5, (temp_f4 * 3.141592653589793) / (second half of f64), second half of f64, temp_f14, temp_f15, temp_f16, temp_f17);
        var_a5 = (s32 *)0x10000;
        saved_reg_s0->unk-6794 = (f32) -(f64) saved_reg_s1->unk60;
    }
    temp_at = var_a5 + saved_reg_s2;
    saved_reg_s0->unk-6790 = 0x4A800000;
    temp_at->unk-5DE8 = (u32) (arg2 * 0x10);
    *var_a5 = (temp_at->unk-5DE8 & 0x3FF) | (((u32) temp_at->unk-5DE8 >> 0xA) << 0x17) | 0x31008000;
    *var_a5 = 0x9080BDA2;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67CC;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67C8;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67C4;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67C0;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67BC;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67B8;
    *var_a5 = saved_reg_s0->unk-67B4;
    *var_a5 = saved_reg_s0->unk-67B0;
    *var_a5 = saved_reg_s0->unk-67AC;
    *var_a5 = saved_reg_s0->unk-67A8;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67A4;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-67A0;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-679C;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-6798;
    *var_a5 = (bitwise s32) saved_reg_s0->unk-6794;
    *var_a5 = saved_reg_s0->unk-6790;
}

void ValidateLightColor(void *arg0, void *arg1, s32 arg2) {
    f32 sp4;
    f32 sp0;
    f32 temp_f12;
    f32 temp_f13;
    s32 temp_a3;
    u32 temp_a4;
    u32 temp_s7;
    void *temp_s4;

    arg0->unkA1F8 = 0x19AU;
    temp_s4 = arg0 + (arg2 * 0x30);
    HQ2_READ_FIFO = (arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17) | 0x29008000;
    __glUnScaleColorf(temp_s4 + 0xA044, arg1 + 0x10);
    temp_s7 = arg2 * 3;
    arg0->unkA21C = (u32) (temp_s7 + 1);
    if (arg0->unkC94 == 0) {
        M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f15, $f16 */);
        temp_f12 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f13, $f14 */);
        temp_s4->unkA044 = (bitwise u32) temp_f12;
        sp0 = temp_f12;
    }
    HQ2_READ_FIFO = 0x32008000 | ((arg0->unkA21C & 0x3FF) | (((u32) arg0->unkA21C >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x8E809015;
    HQ2_READ_FIFO = temp_s4->unkA044;
    HQ2_READ_FIFO = temp_s4->unkA048;
    HQ2_READ_FIFO = temp_s4->unkA04C;
    HQ2_READ_FIFO = temp_s4->unkA050;
    __glUnScaleColorf(arg0, temp_s4 + 0xA054, arg1 + 0x20);
    if (arg0->unkC94 == 0) {
        M2C_ERROR(/* unknown instruction: madd.d $f13, $f13, $f16, $f17 */);
        temp_f13 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f13, $f13, $f14, $f15 */);
        temp_s4->unkA054 = (bitwise u32) temp_f13;
        sp4 = temp_f13;
    }
    temp_a4 = temp_s7 + 2;
    arg0->unkA21C = temp_a4;
    temp_a3 = ((u32) arg0->unkA21C >> 0xA) << 0x17;
    HQ2_READ_FIFO = 0x32008000 | ((arg0->unkA21C & 0x3FF) | temp_a3);
    HQ2_READ_FIFO = 0x8E809015;
    HQ2_READ_FIFO = temp_s4->unkA054;
    HQ2_READ_FIFO = temp_s4->unkA058;
    HQ2_READ_FIFO = temp_s4->unkA05C;
    HQ2_READ_FIFO = temp_s4->unkA060;
    __glUnScaleColorf(arg0, temp_s4 + 0xA034, arg1, temp_a3, temp_a4);
    arg0->unkA21C = temp_s7;
    if (arg0->unkC94 == 0) {
        temp_s4->unkA034 = (bitwise u32) -(sp0 * sp4);
    }
    HQ2_READ_FIFO = 0x32008000 | ((arg0->unkA21C & 0x3FF) | (((u32) arg0->unkA21C >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x8E809015;
    HQ2_READ_FIFO = temp_s4->unkA034;
    HQ2_READ_FIFO = temp_s4->unkA038;
    HQ2_READ_FIFO = temp_s4->unkA03C;
    HQ2_READ_FIFO = temp_s4->unkA040;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x48, 0x4c], gap at: 0x40. */
void ValidateFragmentLightColor(void *arg0, void *arg1, s32 arg2, u32 arg3) {
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f5_8;
    f32 temp_f5_9;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f4_5;
    f32 var_f4_6;
    f32 var_f4_7;
    f32 var_f4_8;
    f32 var_f4_9;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a4;
    void *temp_s0;
    void *temp_s5;

    temp_s5 = arg0 + (arg2 * 0x30);
    __glUnScaleColorf(temp_s5 + 0xA034, arg1);
    temp_f5 = temp_s5->unkA034;
    if ((f64) temp_f5 >= 1.0) {
        var_f4 = 4095.0f;
    } else {
        var_f4 = temp_f5 * 4096.0f;
    }
    temp_s0 = arg0 + (arg3 * 0x18);
    temp_a0 = (0xFF000FFF & temp_s0->unk9754) | ((((s64) var_f4 << 0) & 0xFFF) << 0xC);
    temp_s0->unk9754 = temp_a0;
    temp_f5_2 = temp_s5->unkA038;
    var_f4_2 = 4095.0f;
    if (!((f64) temp_f5_2 >= 1.0)) {
        var_f4_2 = temp_f5_2 * 4096.0f;
    }
    temp_s0->unk9754 = (u32) ((-0x1000 & temp_a0) | (((s64) var_f4_2 << 0) & 0xFFF));
    temp_f5_3 = temp_s5->unkA03C;
    if ((f64) temp_f5_3 >= 1.0) {
        var_f4_3 = 4095.0f;
    } else {
        var_f4_3 = temp_f5_3 * 4096.0f;
    }
    temp_s0->unk9758 = (u32) ((-0xC01 & ((0xFF000FFF & temp_s0->unk9758) | ((((s64) var_f4_3 << 0) & 0xFFF) << 0xC))) | 0x800);
    __glUnScaleColorf(arg0, temp_s5 + 0xA044, arg1 + 0x10);
    temp_f5_4 = temp_s5->unkA044;
    if ((f64) temp_f5_4 >= 1.0) {
        var_f4_4 = 4095.0f;
    } else {
        var_f4_4 = temp_f5_4 * 4096.0f;
    }
    temp_a0_2 = (0xFF000FFF & temp_s0->unk975C) | ((((s64) var_f4_4 << 0) & 0xFFF) << 0xC);
    temp_s0->unk975C = temp_a0_2;
    temp_f5_5 = temp_s5->unkA048;
    var_f4_5 = 4095.0f;
    if (!((f64) temp_f5_5 >= 1.0)) {
        var_f4_5 = temp_f5_5 * 4096.0f;
    }
    temp_a3 = ((s64) var_f4_5 << 0) & 0xFFF;
    temp_s0->unk975C = (u32) ((-0x1000 & temp_a0_2) | temp_a3);
    temp_f5_6 = temp_s5->unkA04C;
    if ((f64) temp_f5_6 >= 1.0) {
        var_f4_6 = 4095.0f;
    } else {
        var_f4_6 = temp_f5_6 * 4096.0f;
    }
    temp_a6 = (((s64) var_f4_6 << 0) & 0xFFF) << 0xC;
    temp_a5 = (0xFF000FFF & temp_s0->unk9760) | temp_a6;
    temp_a4 = (-0xC01 & temp_a5) | 0x800;
    temp_s0->unk9760 = temp_a4;
    __glUnScaleColorf(arg0, temp_s5 + 0xA054, arg1 + 0x20, temp_a3, temp_a4, temp_a5, temp_a6);
    temp_f5_7 = temp_s5->unkA054;
    var_f4_7 = 4095.0f;
    if (!((f64) temp_f5_7 >= 1.0)) {
        var_f4_7 = temp_f5_7 * 4096.0f;
    }
    temp_a0_3 = (0xFF000FFF & temp_s0->unk9764) | ((((s64) var_f4_7 << 0) & 0xFFF) << 0xC);
    temp_s0->unk9764 = temp_a0_3;
    temp_f5_8 = temp_s5->unkA058;
    if ((f64) temp_f5_8 >= 1.0) {
        var_f4_8 = 4095.0f;
    } else {
        var_f4_8 = temp_f5_8 * 4096.0f;
    }
    temp_s0->unk9764 = (u32) ((-0x1000 & temp_a0_3) | (((s64) var_f4_8 << 0) & 0xFFF));
    temp_f5_9 = temp_s5->unkA05C;
    if ((f64) temp_f5_9 >= 1.0) {
        var_f4_9 = 4095.0f;
    } else {
        var_f4_9 = temp_f5_9 * 4096.0f;
    }
    temp_s0->unk9768 = (u32) ((((-0xC01 & ((0xFF000FFF & temp_s0->unk9768) | ((((s64) var_f4_9 << 0) & 0xFFF) << 0xC))) | 0x800) & ~0x300) | 0x200);
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10407;
    HQ2_READ_FIFO = arg3;
    HQ2_READ_FIFO = (arg3 + 0x250) | 0x11800;
    HQ2_READ_FIFO = temp_s0->unk9754;
    HQ2_READ_FIFO = temp_s0->unk9758;
    HQ2_READ_FIFO = temp_s0->unk975C;
    HQ2_READ_FIFO = temp_s0->unk9760;
    HQ2_READ_FIFO = temp_s0->unk9764;
    HQ2_READ_FIFO = temp_s0->unk9768;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x18, 0x1c, 0x20, 0x24, 0x70, 0x74], gap at: 0x30. */
void __glOdysseyValidateLighting(void *arg0) {
    void *sp0;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_ra;
    s32 temp_t8;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a4;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s4;
    s32 var_s8;
    s32 var_t8;
    s64 temp_a0;
    s64 temp_a1;
    s64 var_a4_2;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 var_a5;
    u32 var_s1;
    void *temp_a3;
    void *temp_s2;
    void *temp_s7;
    void *var_s0;
    void *var_s0_2;
    void *var_s0_3;
    void *var_s4_2;

    temp_s7 = arg0 + 0x10000;
    temp_a3 = arg0->unkA1F8;
    arg0->unkA1F8 = (void *)0x19A;
    arg0->unkA21C = 0x18U;
    unksp10 = (s64) temp_a3;
    if (arg0->unkC94 != 0) {
        __glUnScaleColorf(arg0 + 0xA1B4, arg0 + 0x574, temp_a3);
    } else {
        arg0->unkA1BC = 0U;
        arg0->unkA1B8 = 0U;
        arg0->unkA1C0 = 0x3F800000U;
        arg0->unkA1B4 = 0x3F800000U;
    }
    HQ2_READ_FIFO = 0x29008000 | (((s32) arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17));
    var_a5 = 0x32008000 | ((arg0->unkA21C & 0x3FF) | (((u32) arg0->unkA21C >> 0xA) << 0x17));
    HQ2_READ_FIFO = var_a5;
    var_a4 = 0x8E809015;
    HQ2_READ_FIFO = 0x8E809015;
    HQ2_READ_FIFO = arg0->unkA1B4;
    HQ2_READ_FIFO = arg0->unkA1B8;
    HQ2_READ_FIFO = arg0->unkA1BC;
    HQ2_READ_FIFO = arg0->unkA1C0;
    if ((arg0->unk585 == 0) || (var_a0 = 1, ((arg0->unk700 & 0x40) == 0))) {
        var_a0 = 0;
    }
    arg0->unk7BFC = (s32) (((var_a0 << 0xB) & 0x800) | (arg0->unk7BFC & ~0x800));
    arg0->unk16960 = (s32) (arg0->unk16960 | 2);
    *(s32 *)0x1018 = 2;
    if (arg0->unk700 & 0x40) {
        var_s1 = 0;
        var_s4 = 0;
        var_s0 = temp_s7;
        var_s8 = 0;
        var_s2 = 0x4000;
        unksp30 = (s64) sp0;
loop_10:
        temp_a0 = 1 << var_s4;
        if (temp_a0 & arg0->unk708) {
            temp_a4 = var_s0->unk-68CC;
            if ((temp_a4 != var_s2) || (unksp28 = temp_a0, ((temp_a0 & arg0->unk16968) != 0))) {
                unksp28 = temp_a0;
                temp_a1 = arg0->unk630 + var_s8;
                unksp30 = temp_a1;
                __glOdyim_LightModeli(arg0, temp_a1, var_s1, var_s2, temp_a4);
                temp_a3_2 = var_s0->unk-68CC;
                var_a4_2 = unksp28;
                if ((temp_a3_2 != var_s2) || (var_a4_2 &= arg0->unk1696C, var_a0_2 = ~temp_a0, (var_a4_2 != 0))) {
                    __glOdyim_LightModeli(arg0, unksp30, var_s1, temp_a3_2, (s32) var_a4_2);
                    var_a0_2 = ~unksp28;
                    arg0->unk1696C = (s32) (var_a0_2 & arg0->unk1696C);
                }
                arg0->unk16968 = (s32) (var_a0_2 & arg0->unk16968);
                var_s0->unk-68CC = var_s2;
            }
            var_s0 += 4;
            var_s1 += 1;
        }
        var_s4 += 1;
        var_s2 += 1;
        var_s8 += 0x74;
        if (var_s4 != 8) {
            goto loop_10;
        }
        var_a5 = (u32) unksp30;
        if (arg0->unk704 & 0x1000) {
            var_s2_2 = 0;
            var_s4_2 = &sub_0daf0000 - 0x37A8;
            if (arg0->unk1647C & 1) {
                if (var_s1 < 8U) {
                    var_a4 = var_s0->unk-68CC;
                    if (var_a4 == 0x840C) {
                        sp0 = (void *) var_a5;
                        goto block_21;
                    }
                    goto block_24;
                    goto block_25;
                }
                sp0 = (void *) unksp30;
                goto block_27;
            }
            sp0 = (void *) unksp30;
            goto block_38;
        }
        var_s4_2 = &sub_0daf0000 - 0x37A8;
        goto block_28;
    }
    var_s0 = temp_s7;
    var_s1 = 0;
    if (arg0->unk704 & 0x1000) {
        if (arg0->unk1647C & 1) {
            if (arg0->unk9734 != 0x840C) {
                goto block_23;
            }
            var_s1 = 0;
block_21:
            if (arg0->unk16970 & 1) {
                var_s0 = arg0 + (var_s1 * 4) + 0x10000;
block_23:
block_24:
                temp_s2 = arg0 + 0x16480;
                sp0 = temp_s2;
                __glOdyim_LightModeli(arg0, (s64) temp_s2, var_s1, 0x840C, var_a4, (s64) var_a5);
                __glOdyim_LightModeli(arg0, (s64) (&sub_0daf0000 - 0x37A8), var_s1);
                __glOdyim_LightModeli(arg0, (s64) temp_s2, var_s1, 0);
                __glOdyim_LightModeli(arg0, (s64) temp_s2, 8U, 0x840C);
                arg0->unk16970 = (s32) (arg0->unk16970 & ~1);
                var_s0->unk-68CC = 0x840C;
            }
block_25:
            var_s2_2 = 1;
            var_s1 += 1;
            var_s4_2 = &sub_0daf0000 - 0x37A8;
block_27:
            var_t8 = var_s1 < 8U;
            if (var_s2_2 == 0) {
                goto block_39;
            }
        } else {
            var_s1 = 0;
block_38:
            var_s2_2 = 0;
            var_s4_2 = &sub_0daf0000 - 0x37A8;
            var_t8 = var_s1 < 8U;
block_39:
            if (var_t8 != 0) {
                unksp30 = (s64) sp0;
                var_s0_2 = arg0 + (var_s1 * 4) + 0x10000;
loop_41:
                temp_a0_2 = var_s1 + 1;
                if (var_s0_2->unk-68CC != 0x270E) {
                    __glOdyim_LightModeli(arg0, unksp30, var_s1, 0);
                    __glOdyim_LightModeli(arg0, (s64) var_s4_2, var_s1);
                    __glOdyim_LightModeli(arg0, (s64) var_s4_2, var_s1, var_s2_2);
                    __glOdyim_LightModeli(arg0, unksp30, 8U, 0);
                    temp_a0_3 = var_s1 + 1;
                    temp_ra = var_s2_2 + 1;
                    var_s0_2 += 4;
                    var_s1 = temp_a0_3;
                    var_s0_2->unk-68D0 = 0x270E;
                    var_s2_2 = temp_ra;
                    if (temp_ra == 0) {
                        if (temp_a0_3 >= 8U) {

                        } else {
                            goto loop_41;
                        }
                    }
                } else {
                    temp_t8 = var_s2_2 + 1;
                    var_s0_2 += 4;
                    var_s1 = temp_a0_2;
                    var_s2_2 = temp_t8;
                    if (temp_t8 == 0) {
                        if (temp_a0_2 >= 8U) {

                        } else {
                            goto loop_41;
                        }
                    }
                }
            }
        }
block_28:
        if (arg0->unk700 & 0x40) {
            if (var_s1 < 8U) {
                var_s0_3 = arg0 + (var_s1 * 4) + 0x10000;
                do {
                    if (var_s0_3->unk-68CC != 0x270F) {
                        __glOdyim_LightModeli(arg0, (s64) var_s4_2, var_s1);
                        var_s0_3->unk-68CC = 0x270F;
                    }
                    var_s1 += 1;
                    var_s0_3 += 4;
                } while (var_s1 != 8);
            }
        }
    }
    arg0->unkA1F8 = (void *) unksp10;
    arg0->unkA21C = 0U;
    arg0->unkA218 = 0U;
    HQ2_READ_FIFO = 0x29008000 | (((s32) arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x32008000 | ((arg0->unkA21C & 0x3FF) | (((u32) arg0->unkA21C >> 0xA) << 0x17));
    HQ2_READ_FIFO = (arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17) | 0x31008000;
}
