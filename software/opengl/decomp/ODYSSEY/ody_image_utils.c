s32 __glOdysseyImageLogBase2(u32 arg0) {
    s32 var_v0;
    u32 temp_a0;
    u32 var_a0;

    if (arg0 != 0) {
        var_a0 = arg0 >> 1;
        var_v0 = (arg0 & (arg0 - 1)) != 0;
        if (var_a0 != 0) {
loop_2:
            temp_a0 = var_a0 >> 1;
            var_v0 += 1;
            var_a0 = temp_a0 >> 1;
            if (temp_a0 != 0) {
                var_v0 += 1;
                if (var_a0 != 0) {
                    goto loop_2;
                }
            }
        }
        return var_v0;
    }
    return 0;
}

void __glOdysseyImageSaveUserBuzzRasterState(void) {
    s32 *temp_t3;
    s32 temp_t2;
    s32 var_a1;
    s32 var_a2;
    void *temp_t1;

    temp_t1 = *(void **)0x1010;
    temp_t1->unk11BF0 = (s64) temp_t1->unk7CB0;
    temp_t1->unk11BF8 = (s64) temp_t1->unk7CB8;
    temp_t1->unk11C00 = (s32) temp_t1->unk7CC0;
    temp_t1->unk11C04 = (s32) temp_t1->unk7CC4;
    temp_t1->unk11C08 = (s32) temp_t1->unk7CC8;
    temp_t1->unk11C0C = (s32) temp_t1->unk7CCC;
    temp_t1->unk11C10 = (s32) temp_t1->unk7CD0;
    temp_t1->unk11C14 = (s32) temp_t1->unk7CD4;
    temp_t1->unk11C18 = (s32) temp_t1->unk7CD8;
    temp_t1->unk11C2C = (s32) temp_t1->unk96A8;
    temp_t1->unk11C28 = (s32) temp_t1->unk96A4;
    temp_t1->unk11C24 = (s32) temp_t1->unk96A0;
    temp_t1->unk11C20 = (s32) temp_t1->unk969C;
    temp_t1->unk11C1C = (s32) temp_t1->unk7CDC;
    temp_t1->unk11C30 = (s32) temp_t1->unk7C04;
    temp_t1->unk11C34 = (s32) temp_t1->unk7BFC;
    temp_t1->unk11C38 = (s32) temp_t1->unk7C00;
    temp_t1->unk11C3C = (s32) temp_t1->unk7C34;
    temp_t1->unk11C40 = (s32) temp_t1->unk7C38;
    temp_t1->unk11C48 = (s32) temp_t1->unk9698;
    var_a2 = 0x10;
    var_a1 = 0;
    temp_t1->unk11C44 = (s32) temp_t1->unk7C3C;
    do {
        var_a2 -= 2;
        *(var_a1 + (temp_t1 + 0x11C4C)) = *(var_a1 + (temp_t1 + 0x8BE8));
        temp_t3 = var_a1 + (temp_t1 + 0x11C50);
        temp_t2 = *(var_a1 + (temp_t1 + 0x8BEC));
        var_a1 += 8;
        *temp_t3 = temp_t2;
    } while (var_a2 > 0);
    temp_t1->unk11C8C = (s32) temp_t1->unk8BE4;
    temp_t1->unk11CAC = (s32) temp_t1->unk8D08;
    temp_t1->unk11CA8 = (s32) temp_t1->unk8D04;
    temp_t1->unk11CA4 = (s32) temp_t1->unk8D00;
    temp_t1->unk11CA0 = (s32) temp_t1->unk8CFC;
    temp_t1->unk11C9C = (s32) temp_t1->unk8CF8;
    temp_t1->unk11C98 = (s32) temp_t1->unk8CF4;
    temp_t1->unk11C94 = (s32) temp_t1->unk8CF0;
    temp_t1->unk11C90 = (s32) temp_t1->unk8CEC;
    temp_t1->unk11CB0 = (s32) temp_t1->unk8CE8;
    temp_t1->unk11CBC = (s32) temp_t1->unk8D74;
    temp_t1->unk11CB8 = (s32) temp_t1->unk8D70;
    temp_t1->unk11CB4 = (s32) temp_t1->unk8D6C;
    temp_t1->unk11CC0 = (s32) temp_t1->unk7C5C;
}

void __glOdysseyImageLoadBuzzRasterState(s32 arg0) {
    s32 *temp_t9;
    s32 temp_t8;
    s32 var_a2;
    s32 var_a3;
    void *temp_t2;
    void *temp_t3;

    temp_t3 = *(void **)0x1010;
    temp_t2 = (arg0 == 0) ? (temp_t3 + 0x11CC4) : (temp_t3 + 0x11BF0);
    temp_t3->unk7CB0 = (s32) temp_t2->unk0;
    temp_t3->unk7CB4 = (s32) temp_t2->unk4;
    temp_t3->unk7CB8 = (s32) temp_t2->unk8;
    temp_t3->unk7CBC = (s32) temp_t2->unkC;
    temp_t3->unk7CC0 = (s32) temp_t2->unk10;
    temp_t3->unk7CC4 = (s32) temp_t2->unk14;
    temp_t3->unk7CC8 = (s32) temp_t2->unk18;
    temp_t3->unk7CCC = (s32) temp_t2->unk1C;
    temp_t3->unk7CD0 = (s32) temp_t2->unk20;
    temp_t3->unk7CD4 = (s32) temp_t2->unk24;
    temp_t3->unk7CD8 = (s32) temp_t2->unk28;
    temp_t3->unk7CDC = (s32) temp_t2->unk2C;
    temp_t3->unk969C = (s32) temp_t2->unk30;
    temp_t3->unk96A0 = (s32) temp_t2->unk34;
    temp_t3->unk96A4 = (s32) temp_t2->unk38;
    temp_t3->unk96A8 = (s32) temp_t2->unk3C;
    temp_t3->unk7C04 = (s32) temp_t2->unk40;
    temp_t3->unk7BFC = (s32) temp_t2->unk44;
    temp_t3->unk7C00 = (s32) temp_t2->unk48;
    temp_t3->unk7C34 = (s32) temp_t2->unk4C;
    temp_t3->unk7C38 = (s32) temp_t2->unk50;
    temp_t3->unk7C3C = (s32) temp_t2->unk54;
    var_a3 = 0;
    var_a2 = 0x10;
    temp_t3->unk9698 = (s32) temp_t2->unk58;
    do {
        var_a2 -= 2;
        *(var_a3 + (temp_t3 + 0x8BE8)) = *(var_a3 + (temp_t2 + 0x5C));
        temp_t9 = var_a3 + (temp_t3 + 0x8BEC);
        temp_t8 = *(var_a3 + (temp_t2 + 0x60));
        var_a3 += 8;
        *temp_t9 = temp_t8;
    } while (var_a2 > 0);
    temp_t3->unk8BE4 = (s32) temp_t2->unk9C;
    temp_t3->unk8CEC = (s32) temp_t2->unkA0;
    temp_t3->unk8CF0 = (s32) temp_t2->unkA4;
    temp_t3->unk8CF4 = (s32) temp_t2->unkA8;
    temp_t3->unk8CF8 = (s32) temp_t2->unkAC;
    temp_t3->unk8CFC = (s32) temp_t2->unkB0;
    temp_t3->unk8D00 = (s32) temp_t2->unkB4;
    temp_t3->unk8D04 = (s32) temp_t2->unkB8;
    temp_t3->unk8D08 = (s32) temp_t2->unkBC;
    temp_t3->unk8CE8 = (s32) temp_t2->unkC0;
    temp_t3->unk8D6C = (s32) temp_t2->unkC4;
    temp_t3->unk8D70 = (s32) temp_t2->unkC8;
    temp_t3->unk8D74 = (s32) temp_t2->unkCC;
    temp_t3->unk7C5C = (s32) temp_t2->unkD0;
    temp_t3->unk16960 = (s32) (temp_t3->unk16960 | 0x03239387);
    *(s32 *)0x1018 = 2;
}

f32 __glOdysseyImageCalcOdyEyeSpaceRasterPosZ(void) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f6, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f3, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f2, $f6 */);
    M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f5, $f6 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f4, $f3 */);
    M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */);
    return (f32) ((f64) (second half of f64) + (second half of f64));
}
