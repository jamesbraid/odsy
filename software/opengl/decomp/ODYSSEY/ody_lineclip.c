void __glOdysseySoftClipClipLine(s64 arg0, ? *arg1, ? *arg2) {
    s8 sp329;
    ? sp198;
    ? (*temp_s4)(? *, ? *, ? *, f32);
    ? *var_s2;
    ? *var_s3;
    f32 temp_f12;
    f32 temp_f4;
    u32 temp_t9;
    u32 var_ra;
    u32 var_s0;

    unksp340 = arg0;
    temp_s4 = arg0->unk3100;
    var_s3 = arg2;
    var_s2 = arg1;
    var_s0 = arg2->unk4 | arg1->unk4;
loop_1:
    var_ra = var_s0 >> 1;
    if (var_s0 & 1) {
        temp_f12 = var_s2->unk18;
        M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f10, $f11 */);
        M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f12, $f9 */);
        M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f11 */);
        M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
        temp_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
        if ((f64) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f10, $f6 */) < GLUE_F64(saved_reg_f21, 0U)) {
            if (!((f64) temp_f4 < GLUE_F64(saved_reg_f21, 0U))) {
                temp_s4(&sp198, var_s2, var_s3, temp_f12);
                var_s2 = &sp198;
                sp329 = 0;
                goto block_5;
            }
        } else {
            var_ra = var_s0 >> 1;
            if (!((f64) temp_f4 < GLUE_F64(saved_reg_f21, 0U))) {
                goto block_9;
            }
            temp_s4(sp, var_s3, var_s2, temp_f12);
            var_s3 = sp;
block_5:
            temp_t9 = var_s0 >> 1;
            var_s0 = temp_t9;
            if (temp_t9 == 0) {
                goto block_6;
            }
            goto loop_1;
        }
    } else {
block_9:
        var_s0 = var_ra;
        if (var_ra == 0) {
block_6:
            unksp340->unk30F0(unksp340, var_s2, var_s3);
        } else {
            goto loop_1;
        }
    }
}
