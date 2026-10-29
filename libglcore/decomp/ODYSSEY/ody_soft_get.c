? __glConvertResult(void *, ?, s32, ?, s64, ?, ?, ?); /* extern */
? __glOdyim_GetBooleanv(s32, s32, s32);             /* extern */
? __glOdyim_GetDoublev(s32, s32, s32);              /* extern */
? __glOdyim_GetFloatv(s32, s32, s32);               /* extern */
? __glOdyim_GetIntegerv(s32, s32, s32);             /* extern */
? __glSetError(?, s32, s32, f32, ?, ?);             /* extern */
? __glim_GetBooleanv(s32, s32, s32);                /* extern */
? __glim_GetDoublev(s32, s32, s32);                 /* extern */
? __glim_GetFloatv(s32, s32, s32);                  /* extern */
? __glim_GetIntegerv(s32, s32, s32);                /* extern */
f32 floorf(f32, s32, f32, s32, f32, f32, f32, f32, f32); /* extern */

void __glOdyim_SoftGetDoublev(s32 arg0, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    if ((arg0 != 0xB00) && (arg0 != 0xB01) && (var_a2 = 0xB02, (arg0 != 0xB02)) && (var_a3 = 0xB03, (arg0 != 0xB03)) && (var_a4 = 0xB43, (arg0 != 0xB43))) {
        __glOdyim_GetDoublev(0xB02, 0xB03, 0xB43);
    } else {
        __glim_GetDoublev(var_a2, var_a3, var_a4);
    }
}

void __glOdyim_SoftGetFloatv(s32 arg0, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    if ((arg0 != 0xB00) && (arg0 != 0xB01) && (var_a2 = 0xB02, var_a3 = 0xB03, (arg0 != 0xB02)) && (var_a4 = 0xB43, (arg0 != 0xB03)) && (arg0 != 0xB43)) {
        __glOdyim_GetFloatv(0xB02, 0xB03, 0xB43);
    } else {
        __glim_GetFloatv(var_a2, var_a3, var_a4);
    }
}

void __glOdyim_SoftGetIntegerv(s32 arg0, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    if ((arg0 != 0xB00) && (var_a2 = 0xB02, (arg0 != 0xB01)) && (arg0 != 0xB02) && (var_a3 = 0xB03, var_a4 = 0xB43, (arg0 != 0xB03)) && (arg0 != 0xB43)) {
        __glOdyim_GetIntegerv(0xB02, 0xB03, 0xB43);
    } else {
        __glim_GetIntegerv(var_a2, var_a3, var_a4);
    }
}

void __glOdyim_SoftGetBooleanv(s32 arg0, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    if ((arg0 != 0xB00) && (var_a2 = 0xB02, (arg0 != 0xB01)) && (arg0 != 0xB02) && (var_a3 = 0xB03, var_a4 = 0xB43, (arg0 != 0xB03)) && (arg0 != 0xB43)) {
        __glOdyim_GetBooleanv(0xB02, 0xB03, 0xB43);
    } else {
        __glim_GetBooleanv(var_a2, var_a3, var_a4);
    }
}

void __glOdyim_SoftGetMaterialfv(s32 arg0, s32 arg1, void *arg2) {
    s32 temp_a4;
    s32 var_a0;
    void *temp_a0;

    temp_a4 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x404) {
            if (arg0 != 0x405) {
                __glSetError(0x500, 0x404, temp_a4, 1.442e-42f, 0x1201);
            } else {
                var_a0 = 0x1686C;
                goto block_5;
            }
        } else {
            var_a0 = 0x1681C;
block_5:
            temp_a0 = temp_a4 + var_a0;
            switch (arg1) {                         /* irregular */
            default:
                __glSetError(0x500, 0x1603, 0x1601, 7.892e-42f, 0x1200, 0x1201);
                break;
            case 0x1202:
                arg2->unk0 = (f32) temp_a0->unk20;
                arg2->unk4 = (f32) temp_a0->unk24;
                arg2->unk8 = (f32) temp_a0->unk28;
                arg2->unkC = (f32) temp_a0->unk2C;
                return;
            case 0x1603:
                arg2->unk0 = (f32) temp_a0->unk44;
                arg2->unk4 = (f32) temp_a0->unk4C;
                arg2->unk8 = (f32) temp_a0->unk48;
                return;
            case 0x1601:
                arg2->unk0 = (f32) temp_a0->unk40;
                return;
            case 0x1600:
                arg2->unk0 = (f32) temp_a0->unk30;
                arg2->unk4 = (f32) temp_a0->unk34;
                arg2->unk8 = (f32) temp_a0->unk38;
                arg2->unkC = (f32) temp_a0->unk3C;
                return;
            case 0x1200:
                arg2->unk0 = (f32) temp_a0->unk0;
                arg2->unk4 = (f32) temp_a0->unk4;
                arg2->unk8 = (f32) temp_a0->unk8;
                arg2->unkC = (f32) temp_a0->unkC;
                return;
            case 0x1201:
                arg2->unk0 = (f32) temp_a0->unk10;
                arg2->unk4 = (f32) temp_a0->unk14;
                arg2->unk8 = (f32) temp_a0->unk18;
                arg2->unkC = (f32) temp_a0->unk1C;
                break;
            }
        }
    } else {
        __glSetError(0x502, temp_a4, 0x1201);
    }
}

void __glOdyim_SoftGetMaterialiv(s32 arg0, s32 arg1, s64 arg2, s32 arg4, s64 arg5) {
    s64 sp8;
    s64 sp0;
    f32 temp_f13;
    f32 temp_f13_10;
    f32 temp_f13_11;
    f32 temp_f13_12;
    f32 temp_f13_13;
    f32 temp_f13_14;
    f32 temp_f13_15;
    f32 temp_f13_16;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f13_4;
    f32 temp_f13_5;
    f32 temp_f13_6;
    f32 temp_f13_7;
    f32 temp_f13_8;
    f32 temp_f13_9;
    f32 temp_f14;
    f32 temp_f14_10;
    f32 temp_f14_11;
    f32 temp_f14_12;
    f32 temp_f14_13;
    f32 temp_f14_14;
    f32 temp_f14_15;
    f32 temp_f14_16;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f14_5;
    f32 temp_f14_6;
    f32 temp_f14_7;
    f32 temp_f14_8;
    f32 temp_f14_9;
    s32 temp_f15;
    s32 temp_f15_10;
    s32 temp_f15_11;
    s32 temp_f15_12;
    s32 temp_f15_2;
    s32 temp_f15_3;
    s32 temp_f15_4;
    s32 temp_f15_5;
    s32 temp_f15_6;
    s32 temp_f15_7;
    s32 temp_f15_8;
    s32 temp_f15_9;
    s32 var_a4;
    s64 var_a5;
    void *temp_s0;

    var_a4 = arg4;
    var_a5 = arg5;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp8 = arg2;
        if (arg0 != 0x404) {
            var_a4 = 0x405;
            if (arg0 != 0x405) {
                __glSetError(0x500, 0x404, 0x405, 9.1835e-41f);
            } else {
                var_a5 = temp_s0 + 0x1686C;
                sp0 = var_a5;
                goto block_5;
            }
        } else {
            sp0 = (s64) (temp_s0 + 0x1681C);
block_5:
            switch (arg1) {                         /* irregular */
            default:
                __glSetError(0x500, 0x404, var_a4, (bitwise f32) var_a5, 0x1603, 0x1601);
                break;
            case 0x1202:
                temp_f14 = temp_s0->unkDEC;
                temp_f13 = sp0->unk20 * temp_f14;
                temp_f15 = (s32) floorf(1.44e-42f, var_a4, (bitwise f32) var_a5, 0x1603, 7.894e-42f, temp_s0->unkDD4 * temp_f13, temp_f13, temp_f14);
                sp8->unk0 = temp_f15;
                temp_f14_2 = temp_s0->unkDEC;
                temp_f13_2 = sp0->unk24 * temp_f14_2;
                temp_f15_2 = (s32) floorf(temp_s0->unkDD4 * temp_f13_2, (bitwise s32) temp_f13_2, temp_f14_2, temp_f15);
                sp8->unk4 = temp_f15_2;
                temp_f14_3 = temp_s0->unkDEC;
                temp_f13_3 = sp0->unk28 * temp_f14_3;
                temp_f15_3 = (s32) floorf(temp_s0->unkDD4 * temp_f13_3, (bitwise s32) temp_f13_3, temp_f14_3, temp_f15_2);
                sp8->unk8 = temp_f15_3;
                temp_f14_4 = temp_s0->unkDEC;
                temp_f13_4 = sp0->unk2C * temp_f14_4;
                sp8->unkC = (s32) floorf((bitwise f32) sp0, (s32) sp8, temp_s0->unkDD4 * temp_f13_4, (bitwise s32) temp_f13_4, temp_f14_4, (bitwise f32) temp_f15_3);
                return;
            case 0x1603:
                __glConvertResult(temp_s0, 0, sp0 + 0x44, 3, sp8, 3, 0x1603, 0x1601);
                break;
            case 0x1601:
                __glConvertResult(temp_s0, 0, sp0 + 0x40, 3, sp8, 1, 0x1603, 0x1601);
                break;
            case 0x1600:
                temp_f14_5 = temp_s0->unkDEC;
                temp_f13_5 = sp0->unk30 * temp_f14_5;
                temp_f15_4 = (s32) floorf((bitwise f32) sp0, var_a4, (bitwise f32) var_a5, 0x1603, 7.894e-42f, temp_s0->unkDD4 * temp_f13_5, temp_f13_5, temp_f14_5);
                sp8->unk0 = temp_f15_4;
                temp_f14_6 = temp_s0->unkDEC;
                temp_f13_6 = sp0->unk34 * temp_f14_6;
                temp_f15_5 = (s32) floorf(temp_s0->unkDD4 * temp_f13_6, (bitwise s32) temp_f13_6, temp_f14_6, temp_f15_4);
                sp8->unk4 = temp_f15_5;
                temp_f14_7 = temp_s0->unkDEC;
                temp_f13_7 = sp0->unk38 * temp_f14_7;
                temp_f15_6 = (s32) floorf(temp_s0->unkDD4 * temp_f13_7, (bitwise s32) temp_f13_7, temp_f14_7, temp_f15_5);
                sp8->unk8 = temp_f15_6;
                temp_f14_8 = temp_s0->unkDEC;
                temp_f13_8 = sp0->unk3C * temp_f14_8;
                sp8->unkC = (s32) floorf(temp_s0->unkDD4 * temp_f13_8, (bitwise s32) temp_f13_8, temp_f14_8, temp_f15_6);
                return;
            case 0x1200:
                temp_f14_9 = temp_s0->unkDEC;
                temp_f13_9 = sp0->unk0 * temp_f14_9;
                temp_f15_7 = (s32) floorf(1.44e-42f, var_a4, (bitwise f32) var_a5, 0x1603, 7.894e-42f, temp_s0->unkDD4 * temp_f13_9, temp_f13_9, temp_f14_9);
                sp8->unk0 = temp_f15_7;
                temp_f14_10 = temp_s0->unkDEC;
                temp_f13_10 = sp0->unk4 * temp_f14_10;
                temp_f15_8 = (s32) floorf(temp_s0->unkDD4 * temp_f13_10, (bitwise s32) temp_f13_10, temp_f14_10, temp_f15_7);
                sp8->unk4 = temp_f15_8;
                temp_f14_11 = temp_s0->unkDEC;
                temp_f13_11 = sp0->unk8 * temp_f14_11;
                temp_f15_9 = (s32) floorf(temp_s0->unkDD4 * temp_f13_11, (bitwise s32) temp_f13_11, temp_f14_11, temp_f15_8);
                sp8->unk8 = temp_f15_9;
                temp_f14_12 = temp_s0->unkDEC;
                temp_f13_12 = sp0->unkC * temp_f14_12;
                sp8->unkC = (s32) floorf(temp_s0->unkDD4 * temp_f13_12, (bitwise s32) temp_f13_12, temp_f14_12, temp_f15_9);
                return;
            case 0x1201:
                temp_f14_13 = temp_s0->unkDEC;
                temp_f13_13 = sp0->unk10 * temp_f14_13;
                temp_f15_10 = (s32) floorf((bitwise f32) sp0, 0x404, (bitwise f32) var_a4, (s32) var_a5, 7.896e-42f, 7.894e-42f, temp_s0->unkDD4 * temp_f13_13, temp_f13_13, temp_f14_13);
                sp8->unk0 = temp_f15_10;
                temp_f14_14 = temp_s0->unkDEC;
                temp_f13_14 = sp0->unk14 * temp_f14_14;
                temp_f15_11 = (s32) floorf(temp_s0->unkDD4 * temp_f13_14, (bitwise s32) temp_f13_14, temp_f14_14, temp_f15_10);
                sp8->unk4 = temp_f15_11;
                temp_f14_15 = temp_s0->unkDEC;
                temp_f13_15 = sp0->unk18 * temp_f14_15;
                temp_f15_12 = (s32) floorf(temp_s0->unkDD4 * temp_f13_15, (bitwise s32) temp_f13_15, temp_f14_15, temp_f15_11);
                sp8->unk8 = temp_f15_12;
                temp_f14_16 = temp_s0->unkDEC;
                temp_f13_16 = sp0->unk1C * temp_f14_16;
                sp8->unkC = (s32) floorf(temp_s0->unkDD4 * temp_f13_16, (bitwise s32) temp_f13_16, temp_f14_16, temp_f15_12);
                return;
            }
        }
    } else {
        __glSetError(0x502);
    }
}
