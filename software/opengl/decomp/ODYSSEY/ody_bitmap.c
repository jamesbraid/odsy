Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a7, .L0d9605e4

Error occurred while processing instruction: c.eq.d $f8, $f5

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t2, .L0d95ffe4

Error occurred while processing instruction: sdc1 $f11, 0x1a0($sp)

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a7, .L0d9605e4

Error occurred while processing instruction: c.eq.d $f8, $f5

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t2, .L0d95ffe4

Error occurred while processing instruction: sdc1 $f11, 0x1a0($sp)

Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f11
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f11
? __glFeedbackBitmap(s64, s32, ?, s32);             /* extern */
? __glOdyim_PolygonOffsetEXT(void *, s64, ?, s32);  /* extern */
s32 __glOdysseyGetNumHWClipPlanes(void *, u32, u32); /* extern */
f64 __glOdysseyImageCalcOdyEyeSpaceRasterPosZ();    /* extern */
? __glOdysseyIoctl(void *, ?, void *, s32, s32, s32, s32, s64); /* extern */
? __glOdysseyUpdateRasterPos(void *, u32);          /* extern */
? __glOdysseyValidateHardware(void *, s64);         /* extern */
? __glSetError(s32, s32, s64, ?);                   /* extern */
f64 ceil(f64, ?, s64, ?);                           /* extern */
? sub_0d960000(? *, u32, s32, ?, u32, s32, u32, u32); /* extern */
extern u32 HQ2_READ_FIFO;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x48, 0x4c, 0xa8, 0xac, 0xb8, 0xbc, 0xc0, 0xc4, 0xc8, 0xcc], gap at: 0x50. */
void LoadAndSendStippledQuads(s64 arg0, s64 arg1, s32 arg6, f64 fparg2, f64 fparg3, f64 fparg4, f64 fparg5) {
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    u64 spF8;
    s64 spF0;
    s64 spE8;
    u64 spE0;
    s64 spD8;
    s64 spD0;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    s32 sp0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f24;
    f32 temp_f5;
    f64 temp_f0;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_t8_3;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a4;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_a6_2;
    s64 temp_f14;
    s64 temp_f14_2;
    s64 temp_s0_2;
    s64 temp_s6;
    s64 var_s4;
    s64 var_s5;
    u32 temp_a2;
    u32 temp_a4_2;
    u64 temp_ra;
    u64 temp_t8;
    u8 *temp_t9;
    u8 temp_t8_2;
    void *temp_a3_2;

    sp120 = arg0;
    sp118 = arg1;
    sp30 = fparg2;
    sp38 = fparg3;
    sp40 = fparg4;
    temp_s0 = *arg1;
    unksp60 = fparg5;
    temp_f14 = (s64) ceil((f64) temp_s0 * 0.125, second half of f64);
    temp_s1 = sp118->unk4;
    temp_f14_2 = (s64) ceil((f64) ((f32) temp_s0 * 0.03125f), second half of f64, temp_f14, second half of f64);
    spE8 = temp_f14_2 << 0;
    temp_a6 = temp_s1 >> 0x1F;
    temp_a5 = temp_s0 >> 0x1F;
    temp_t8 = (s64) ceil((f64) ((f32) temp_s1 * 0.03125f), second half of f64, temp_f14_2, second half of f64) << 0;
    temp_a3 = ((((temp_s1 ^ temp_a6) - temp_a6) & 0x1F) ^ temp_a6) - temp_a6;
    spE0 = temp_t8;
    temp_a4 = ((((temp_s0 ^ temp_a5) - temp_a5) & 0x1F) ^ temp_a5) - temp_a5;
    if (temp_t8 != 0) {
        spF8 = 0;
        spF0 = 0;
        sp100 = (temp_a4 == 0) ? 0x20 : temp_a4;
        spD0 = (temp_a3 == 0) ? 0x20 : temp_a3;
        sp110 = spE8 << 5;
        spD8 = spE0 - 1;
        unksp98 = sp120 + 0x10000;
        unksp50 = sp40;
        unksp58 = second half of f64;
        sp108 = (spE8 - 1) << 5;
loop_4:
        if (spE8 != 0) {
            temp_s6 = (spD8 == spF8) ? spD0 : 0x20;
            unkspA0 = 0;
            temp_f24 = (f32) ((u64) (temp_s6 << 0x20) >> 0x20);
loop_17:
            temp_s0_2 = (unkspA0 == sp108) ? sp100 : 0x20;
            temp_f0 = ceil((f64) ((u64) (temp_s0_2 << 0x20) >> 0x20) * 0.125, second half of f64);
            unksp90 = temp_s0_2;
            temp_f5 = (f32) ((u64) (unkspA0 << 0x20) >> 0x20);
            if (temp_s6 != 0) {
                var_s5 = sp120;
                var_s4 = 0;
                temp_s2 = (s64) temp_f0 << 0;
                var_a4 = temp_s2 & 7;
loop_25:
                sp0 = 0;
                if (temp_s2 != 0) {
                    var_a3 = 0;
                    temp_s1_2 = (s32) (temp_f5 * 0.125f) + (arg6 + (s32) ((f32) ((u64) ((temp_f14 << 0) << 0x20) >> 0x20) * ((f32) ((u64) (var_s4 << 0x20) >> 0x20) + (f32) ((u64) (spF0 << 0x20) >> 0x20))));
                    if (var_a4 == 0) {

                    } else {
                        do {
                            var_a4 -= 1;
                            temp_t8_2 = *(temp_s1_2 + var_a3);
                            temp_t9 = var_a3 + sp;
                            var_a3 = (var_a3 + 1) & 0xFF;
                            *temp_t9 = temp_t8_2;
                        } while (var_a4 != 0);
                    }
                    if ((temp_s2 >> 3) != 0) {
                        do {
                            temp_t8_3 = (var_a3 + 1) & 0xFF;
                            temp_t3 = (temp_t8_3 + 1) & 0xFF;
                            *(var_a3 + sp) = *(temp_s1_2 + var_a3);
                            temp_t0 = (temp_t3 + 1) & 0xFF;
                            *(temp_t8_3 + sp) = *(temp_s1_2 + temp_t8_3);
                            temp_t1 = (temp_t0 + 1) & 0xFF;
                            *(temp_t3 + sp) = *(temp_s1_2 + temp_t3);
                            temp_a5_2 = (temp_t1 + 1) & 0xFF;
                            *(temp_t0 + sp) = *(temp_s1_2 + temp_t0);
                            temp_v1 = (temp_a5_2 + 1) & 0xFF;
                            *(temp_t1 + sp) = *(temp_s1_2 + temp_t1);
                            *(temp_a5_2 + sp) = *(temp_s1_2 + temp_a5_2);
                            temp_at = (temp_v1 + 1) & 0xFF;
                            *(temp_v1 + sp) = *(temp_s1_2 + temp_v1);
                            var_a3 = (temp_at + 1) & 0xFF;
                            *(temp_at + sp) = *(temp_s1_2 + temp_at);
                        } while (temp_s2 != var_a3);
                    }
                }
                var_s4 += 1;
                var_s5 -= 4;
                var_a4 = temp_s2 & 7;
                var_s5->unk7BF8 = sp0;
                if (temp_s6 != var_s4) {
                    goto loop_25;
                }
            }
            temp_f12 = (f32) (s32) ((sp120->unk170 - (f32) sp120->unkE4C) + (temp_f5 - sp118->unk8));
            temp_f0_2 = (f32) (s32) ((second half of f64) - (f64) (second half of f64));
            if (unksp98->unk-67D0 != 0) {
                unksp98->unk-67D0 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1043F;
            HQ2_READ_FIFO = sp120->unk7BF8;
            HQ2_READ_FIFO = 0x13C4E;
            HQ2_READ_FIFO = sp120->unk7B78;
            HQ2_READ_FIFO = sp120->unk7B7C;
            HQ2_READ_FIFO = sp120->unk7B80;
            HQ2_READ_FIFO = sp120->unk7B84;
            HQ2_READ_FIFO = sp120->unk7B88;
            HQ2_READ_FIFO = sp120->unk7B8C;
            HQ2_READ_FIFO = sp120->unk7B90;
            HQ2_READ_FIFO = sp120->unk7B94;
            HQ2_READ_FIFO = sp120->unk7B98;
            HQ2_READ_FIFO = sp120->unk7B9C;
            HQ2_READ_FIFO = sp120->unk7BA0;
            HQ2_READ_FIFO = sp120->unk7BA4;
            HQ2_READ_FIFO = sp120->unk7BA8;
            HQ2_READ_FIFO = sp120->unk7BAC;
            HQ2_READ_FIFO = sp120->unk7BB0;
            HQ2_READ_FIFO = sp120->unk7BB4;
            HQ2_READ_FIFO = 0x13C4F;
            HQ2_READ_FIFO = sp120->unk7BB8;
            HQ2_READ_FIFO = sp120->unk7BBC;
            HQ2_READ_FIFO = sp120->unk7BC0;
            HQ2_READ_FIFO = sp120->unk7BC4;
            HQ2_READ_FIFO = sp120->unk7BC8;
            HQ2_READ_FIFO = sp120->unk7BCC;
            HQ2_READ_FIFO = sp120->unk7BD0;
            HQ2_READ_FIFO = sp120->unk7BD4;
            temp_a4_2 = sp120->unk7BD8;
            HQ2_READ_FIFO = temp_a4_2;
            HQ2_READ_FIFO = sp120->unk7BDC;
            temp_a2 = sp120->unk7BE0;
            HQ2_READ_FIFO = temp_a2;
            HQ2_READ_FIFO = sp120->unk7BE4;
            HQ2_READ_FIFO = sp120->unk7BE8;
            HQ2_READ_FIFO = sp120->unk7BEC;
            HQ2_READ_FIFO = sp120->unk7BF0;
            HQ2_READ_FIFO = sp120->unk7BF4;
            temp_a3_2 = unksp98->unk6418;
            if (temp_a3_2 != NULL) {
                if ((f64) unksp60 != GLUE_F64(M2C_ERROR(/* Read from unset register $f17 */), 0U)) {
                    temp_a7 = temp_a3_2->unkC;
                    if (temp_a7 != 0x806F) {
                        goto block_13;
                    }
                    temp_f13 = (f32) sp120->unkE78 - temp_f0_2;
                    sp120->unk17F4->unk740(0x10000, unksp98, temp_a2, temp_a3_2, temp_a4_2, 0x806F, unkspA0, temp_a7, temp_f12, temp_f13, (f32) ((u64) (unksp90 << 0x20) >> 0x20) + temp_f12, temp_f13 + temp_f24, 0);
                } else {
block_13:
                    HQ2_READ_FIFO = 0x14400;
                    HQ2_READ_FIFO = 7;
                    HQ2_READ_FIFO = 0x8F80B968;
                    HQ2_READ_FIFO = sp120->unkF8->unk0;
                    HQ2_READ_FIFO = sp120->unkF8->unk4;
                    HQ2_READ_FIFO = sp120->unkF8->unk8;
                    HQ2_READ_FIFO = sp120->unkF8->unkC;
                    HQ2_READ_FIFO = (bitwise u32) temp_f12;
                    HQ2_READ_FIFO = (bitwise u32) temp_f0_2;
                    HQ2_READ_FIFO = (bitwise u32) sp30;
                    HQ2_READ_FIFO = (bitwise u32) ((f32) ((u64) (unksp90 << 0x20) >> 0x20) + temp_f12);
                    HQ2_READ_FIFO = (bitwise u32) (temp_f0_2 - temp_f24);
                    HQ2_READ_FIFO = (bitwise u32) sp30;
                    HQ2_READ_FIFO = (u32) unksp58;
                    HQ2_READ_FIFO = second half of f64;
                    HQ2_READ_FIFO = (u32) unksp58;
                    HQ2_READ_FIFO = second half of f64;
                    HQ2_READ_FIFO = 0x14001;
                    if (unksp98->unk-690C != 0) {
                        unksp98->unk-67D0 = 0;
                        HQ2_READ_FIFO = 0x10443;
                        HQ2_READ_FIFO = 0xFA;
                        HQ2_READ_FIFO = 0x10046;
                        HQ2_READ_FIFO = 0x10046;
                    }
                    unksp98->unk-67D0 = 1;
                }
            } else {
                HQ2_READ_FIFO = 0x14400;
                HQ2_READ_FIFO = 7;
                HQ2_READ_FIFO = 0x8F80A944;
                HQ2_READ_FIFO = sp120->unkF8->unk0;
                HQ2_READ_FIFO = sp120->unkF8->unk4;
                HQ2_READ_FIFO = sp120->unkF8->unk8;
                HQ2_READ_FIFO = sp120->unkF8->unkC;
                HQ2_READ_FIFO = (bitwise u32) temp_f12;
                HQ2_READ_FIFO = (bitwise u32) temp_f0_2;
                HQ2_READ_FIFO = (bitwise u32) sp30;
                HQ2_READ_FIFO = (bitwise u32) ((f32) ((u64) (unksp90 << 0x20) >> 0x20) + temp_f12);
                HQ2_READ_FIFO = (bitwise u32) (temp_f0_2 - temp_f24);
                HQ2_READ_FIFO = (bitwise u32) sp30;
                HQ2_READ_FIFO = 0x14001;
                if (unksp98->unk-690C != 0) {
                    unksp98->unk-67D0 = 0;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                unksp98->unk-67D0 = 1;
            }
            temp_a6_2 = unkspA0 + 0x20;
            unkspA0 = temp_a6_2;
            if (temp_a6_2 != sp110) {
                goto loop_17;
            }
        }
        temp_ra = spF8 + 1;
        spF8 = temp_ra;
        spF0 += 0x20;
        if (temp_ra < spE0) {
            goto loop_4;
        }
    }
}

void DrawBitmapUsingPolyStipple(void *arg0, s64 arg1, s64 arg2, s32 arg5, s32 arg6) {
    s64 sp208;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    f64 sp1A8;
    f64 sp1A0;
    f64 sp198;
    f64 sp190;
    ? sp180;
    ? sp170;
    ? sp130;
    u8 sp128;
    ? spE8;
    u8 spE0;
    ? spA0;
    u8 sp98;
    s32 sp94;
    s32 sp90;
    s32 sp50;
    ? sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    ? *var_a5_2;
    ? *var_a5_3;
    f32 temp_f6;
    s32 *var_a7;
    s32 *var_a7_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a5;
    s32 var_a6;
    s64 var_a6_2;
    s64 var_ra;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a4_2;
    u32 temp_ra;
    u32 var_a0;
    u32 var_a4_3;
    u32 var_a7_3;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_s0;
    void *var_a4;
    void *var_a4_2;

    var_ra = saved_reg_ra;
    var_a5 = arg5;
    var_a6 = arg6;
    if (arg0->unk165C4 == 0) {
        temp_a0 = arg0->unk165BC;
        sp1E0 = arg1;
        sp1D8 = arg2;
        if ((arg0->unk7C20 != temp_a0) || (var_a7 = &sp50, (arg0->unk165C0 != arg0->unk7C24))) {
            arg0->unk7C20 = temp_a0;
            arg0->unk7C24 = (u32) arg0->unk165C0;
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0U;
                var_a6 = 0x10443;
                HQ2_READ_FIFO = 0x10443;
                var_a5 = 0xFA;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            // Error: negative shift count
            // At instruction: bgez $a7, .L0d9605e4
            if (M2C_ERROR()) {
                spC = 0;
                sp8 = 0;
                sp4 = 0;
                sp0 = 0;
                temp_a4 = ((u32) arg0->unk7C20 >> 0xC) & 0xFFF;
                sp0 = temp_a4;
                temp_a3 = arg0->unk7C20 & 0xFFF;
                sp8 = temp_a3;
                sp4 = ((u32) arg0->unk7C24 >> 0xC) & 0xFFF;
                spC = arg0->unk7C24 & 0xFFF;
                __glOdysseyIoctl(arg0, 0x6F64000D, sp, temp_a3, temp_a4, var_a5, var_a6, (s64) arg0->unk7B70 << 0x2B);
                var_ra = sp208;
            }
            arg0->unk16964 = (s32) (arg0->unk16964 | 0x2000);
            *(s32 *)0x1018 = 2;
            var_a7 = &sp50;
        }
        var_a5_2 = &sp10;
        temp_s0 = arg0 + 0x40;
        var_a4 = arg0;
        do {
            *var_a7 = var_a4->unk7BB8;
            var_a4 += 4;
            var_a5_2 += 4;
            var_a7 += 4;
            var_a5_2->unk-4 = (s32) var_a4->unk7B74;
        } while (var_a4 != temp_s0);
        sp1B8 = (s64) arg0->unk7BF8;
        sp208 = var_ra;
        temp_a1 = arg0->unk9828;
        sp1C0 = (s64) temp_a1;
        sp1C8 = (s64) arg0->unk7BFC;
        if (arg0->unkA73C != 0) {
            __glOdysseyUpdateRasterPos(arg0, temp_a1);
        }
        temp_a0_2 = arg0->unk16418;
        sp190 = __glOdysseyImageCalcOdyEyeSpaceRasterPosZ();
        if (temp_a0_2 != NULL) {
            sp1A8 = (f64) arg0->unk128;
            sp198 = (f64) arg0->unk124;
            sp1A0 = (f64) arg0->unk120;
            if (arg0->unk12C != 0.0f) {
                temp_f6 = (f32) (second half of f64);
                sp1A8 = (bitwise f64) (temp_f6 * (bitwise f32) sp1A8);
                sp198 = (bitwise f64) (temp_f6 * (bitwise f32) sp198);
                sp1A0 = (bitwise f64) (temp_f6 * (bitwise f32) sp1A0);
            }
            // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
            // At instruction: c.eq.d $f8, $f5
            if (M2C_ERROR() && (temp_a0_2->unkC == 0x806F)) {
                sp90 = arg0->unk17F4->unk1EC(temp_a0_2);
                arg0->unk17F4->unk1F4(0xBA0, &sp94);
                arg0->unk17F4->unk26C(0x1701);
                arg0->unk17F4->unk280();
                temp_v0 = arg0->unk17F4->unk1EC();
                sp98 = temp_v0 == 0x503;
                if (temp_v0 == 0x503) {
                    arg0->unk17F4->unk1F0(0xBA7, &spA0);
                }
                arg0->unk17F4->unk260();
                arg0->unk17F4->unk278(second half of f64, (f64) (second half of f64), second half of f64, (f64) arg0->unkE78, -1.0, second half of f64);
                arg0->unk17F4->unk26C(0x1700);
                arg0->unk17F4->unk280();
                temp_v0_2 = arg0->unk17F4->unk1EC();
                spE0 = temp_v0_2 == 0x503;
                if (temp_v0_2 == 0x503) {
                    arg0->unk17F4->unk1F0(0xBA6, &spE8);
                }
                arg0->unk17F4->unk260();
                arg0->unk17F4->unk298(0, 0, arg0->unk108);
                arg0->unk17F4->unk26C(0x1702);
                arg0->unk17F4->unk280();
                temp_v0_3 = arg0->unk17F4->unk1EC();
                sp128 = temp_v0_3 == 0x503;
                if (temp_v0_3 == 0x503) {
                    arg0->unk17F4->unk1F0(0xBA8, &sp130);
                }
                arg0->unk17F4->unk260();
                arg0->unk17F4->unk1F0(0xB00, &sp170);
                arg0->unk17F4->unk5DC(arg0->unkF8);
                arg0->unk17F4->unk1F0(0xB03, &sp180);
                arg0->unk17F4->unk6C4(arg0 + 0x120);
            }
        } else {
            // Error: Tried to use a double-precision instruction with odd-numbered float register $f11
            // At instruction: sdc1 $f11, 0x1a0($sp)
        }
        var_a0 = arg0->unk7BFC;
        arg0->unk7BF8 = (u32) (-4 & ((-0xD & (arg0->unk7BF8 & ~0x10)) | 4));
        if (arg0->unk700 & 0x40) {
            var_a0 &= ~0x800;
            arg0->unk7BFC = var_a0;
        }
        // Error: negative shift count
        // At instruction: bgez $t2, .L0d95ffe4
        if (M2C_ERROR()) {
            arg0->unk7BFC = (u32) (var_a0 & ~0x80);
        }
        arg0->unk7BFC = (u32) M2C_ERROR(/* Read from unset register $t9 */);
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0U;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10404;
        temp_a1_2 = arg0->unk7BFC;
        HQ2_READ_FIFO = temp_a1_2;
        if (arg0->unk1E4 != 0x1B02) {
            goto block_23;
        }
        if (arg0->unk1E8 == 0x1B02) {
            sp1D0 = 0;
        } else {
block_23:
            temp_a4_2 = arg0->unk7C04;
            arg0->unk7C04 = (u32) ((-4 & ((-0xD & temp_a4_2) | 8)) | 2);
            sp1D0 = (s64) temp_a4_2;
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0U;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x10415;
            HQ2_READ_FIFO = arg0->unk7C04;
        }
        if (arg0->unk70C != 0) {
            if (__glOdysseyGetNumHWClipPlanes(arg0, temp_a1_2, 0x10404U) != 0) {
                temp_ra = arg0->unk7C00;
                arg0->unk7C00 = (u32) (temp_ra & ~4 & ~2 & ~1);
                sp1B0 = (s64) temp_ra;
                if (arg0->unk9830 != 0) {
                    arg0->unk9830 = 0U;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x10405;
                HQ2_READ_FIFO = arg0->unk7C00;
            } else {
                sp1B0 = 0;
            }
        } else {
            sp1B0 = 0;
        }
        arg0->unk9828 = (u32) (arg0->unk9828 & ~0xFFF);
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0U;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10456;
        HQ2_READ_FIFO = arg0->unk9828;
        if (arg0->unk16960 != 0) {
            __glOdysseyValidateHardware(arg0, sp1E0);
        }
        __glOdyim_PolygonOffsetEXT(arg0, sp1E0);
        var_a6_2 = sp1D0;
        var_a7_2 = &sp50;
        var_a5_3 = &sp10;
        var_a4_2 = arg0;
        arg0->unk7BF8 = (u32) sp1B8;
        do {
            var_a5_3 += 4;
            var_a4_2->unk7BB8 = (s32) *var_a7_2;
            var_a4_2 += 4;
            var_a7_2 += 4;
            var_a4_2->unk7B74 = (s32) var_a5_3->unk-4;
        } while (var_a4_2 != temp_s0);
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0U;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        var_a4_3 = 0x10000;
        HQ2_READ_FIFO = 0x1043F;
        HQ2_READ_FIFO = arg0->unk7BF8;
        HQ2_READ_FIFO = 0x13C4E;
        HQ2_READ_FIFO = arg0->unk7B78;
        HQ2_READ_FIFO = arg0->unk7B7C;
        HQ2_READ_FIFO = arg0->unk7B80;
        HQ2_READ_FIFO = arg0->unk7B84;
        HQ2_READ_FIFO = arg0->unk7B88;
        HQ2_READ_FIFO = arg0->unk7B8C;
        HQ2_READ_FIFO = arg0->unk7B90;
        HQ2_READ_FIFO = arg0->unk7B94;
        HQ2_READ_FIFO = arg0->unk7B98;
        HQ2_READ_FIFO = arg0->unk7B9C;
        HQ2_READ_FIFO = arg0->unk7BA0;
        HQ2_READ_FIFO = arg0->unk7BA4;
        HQ2_READ_FIFO = arg0->unk7BA8;
        HQ2_READ_FIFO = arg0->unk7BAC;
        HQ2_READ_FIFO = arg0->unk7BB0;
        HQ2_READ_FIFO = arg0->unk7BB4;
        HQ2_READ_FIFO = 0x13C4F;
        HQ2_READ_FIFO = arg0->unk7BB8;
        HQ2_READ_FIFO = arg0->unk7BBC;
        HQ2_READ_FIFO = arg0->unk7BC0;
        HQ2_READ_FIFO = arg0->unk7BC4;
        HQ2_READ_FIFO = arg0->unk7BC8;
        HQ2_READ_FIFO = arg0->unk7BCC;
        HQ2_READ_FIFO = arg0->unk7BD0;
        HQ2_READ_FIFO = arg0->unk7BD4;
        HQ2_READ_FIFO = arg0->unk7BD8;
        HQ2_READ_FIFO = arg0->unk7BDC;
        HQ2_READ_FIFO = arg0->unk7BE0;
        HQ2_READ_FIFO = arg0->unk7BE4;
        HQ2_READ_FIFO = arg0->unk7BE8;
        HQ2_READ_FIFO = arg0->unk7BEC;
        var_a7_3 = arg0->unk7BF0;
        HQ2_READ_FIFO = var_a7_3;
        HQ2_READ_FIFO = arg0->unk7BF4;
        arg0->unk7BFC = (u32) sp1C8;
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0U;
            HQ2_READ_FIFO = 0x10443;
            var_a7_3 = 0xFA;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10404;
        HQ2_READ_FIFO = arg0->unk7BFC;
        if (arg0->unk1E4 != 0x1B02) {
            goto block_42;
        }
        var_a7_3 = 0x1B02;
        if (arg0->unk1E8 == 0x1B02) {

        } else {
block_42:
            arg0->unk7C04 = (u32) var_a6_2;
            if (arg0->unk9830 != 0) {
                arg0->unk9830 = 0U;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            var_a4_3 = 0x10415;
            HQ2_READ_FIFO = 0x10415;
            HQ2_READ_FIFO = arg0->unk7C04;
        }
        temp_a5 = arg0->unk70C;
        if (temp_a5 != 0) {
            var_a6_2 = (s64) arg0->unk7C00;
            if (var_a6_2 != sp1B0) {
                arg0->unk7C00 = (u32) sp1B0;
                var_a7_3 = arg0->unk9830;
                if (var_a7_3 != 0) {
                    arg0->unk9830 = 0U;
                    HQ2_READ_FIFO = 0x10443;
                    HQ2_READ_FIFO = 0xFA;
                    HQ2_READ_FIFO = 0x10046;
                    HQ2_READ_FIFO = 0x10046;
                }
                HQ2_READ_FIFO = 0x10405;
                HQ2_READ_FIFO = arg0->unk7C00;
            }
        }
        arg0->unk9828 = (u32) sp1C0;
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0U;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10456;
        temp_a1_3 = arg0->unk9828;
        HQ2_READ_FIFO = temp_a1_3;
        temp_a0_3 = arg0->unk16418;
        if ((temp_a0_3 != NULL) && ((bitwise f32) sp1A8 != 0.0f)) {
            temp_a2 = temp_a0_3->unkC;
            if (temp_a2 == 0x806F) {
                sub_0d960000(&sp170, temp_a1_3, temp_a2, 0x806F, var_a4_3, temp_a5, (u32) var_a6_2, var_a7_3);
                arg0->unk17F4->unk6C4(&sp180);
                arg0->unk17F4->unk26C(0x1701);
                temp_a1_4 = arg0->unk17F4;
                if (sp98 != 0) {
                    temp_a1_4->unk264(&spA0, temp_a1_4);
                } else {
                    temp_a1_4->unk27C();
                }
                arg0->unk17F4->unk26C(0x1700);
                temp_a1_5 = arg0->unk17F4;
                if (spE0 != 0) {
                    temp_a1_5->unk264(&spE8, temp_a1_5);
                } else {
                    temp_a1_5->unk27C();
                }
                arg0->unk17F4->unk26C(0x1702);
                temp_a1_6 = arg0->unk17F4;
                if (sp128 != 0) {
                    temp_a1_6->unk264(&sp130, temp_a1_6);
                } else {
                    temp_a1_6->unk27C();
                }
                arg0->unk17F4->unk26C(sp94);
                __glSetError(sp90);
            }
        }
    }
}

void __glOdysseyRenderBitmap(void *arg0, s64 arg1, s32 arg2) {
    s64 sp8;
    s64 sp0;
    s32 temp_a4;
    s64 var_a1;

    var_a1 = arg1;
    if (arg0->unk1C4 != 0) {
        temp_a4 = arg0->unkC84;
        if (temp_a4 != 0x1C02) {
            if (temp_a4 != 0x1C01) {
                if ((temp_a4 == 0x1C00) && (arg2 != 0)) {
                    sp0 = (s64) arg0;
                    sp8 = var_a1;
                    __glOdyim_PolygonOffsetEXT(arg0, var_a1, 0x1C00, temp_a4);
                    goto block_6;
                }
            } else {
                sp8 = var_a1;
                sp0 = (s64) arg0;
                __glFeedbackBitmap(sp0, sp0 + 0xF0, 0x1C00, temp_a4);
block_6:
                var_a1 = sp8;
            }
        }
        arg0->unk170 = (f32) (var_a1->unk10 + arg0->unk170);
        arg0->unk174 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
    }
}

void __glOdyim_Bitmap(s64 arg0, s64 arg1, s64 arg6, f64 fparg2, f64 fparg3, f64 fparg4, f64 fparg5) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    s32 temp_a4;
    s64 temp_a5_2;
    void *temp_a5;

    temp_a4 = *(s32 *)0x1018;
    sp20 = arg6;
    sp18 = fparg5;
    sp10 = fparg4;
    sp30 = arg1;
    sp8 = fparg3;
    temp_a5 = *(void **)0x1010;
    sp38 = arg0;
    sp28 = (s64) temp_a5;
    temp_a5_2 = temp_a5 + 0x10000;
    sp0 = fparg2;
    if (temp_a5->unk16964 != 0) {
        if (temp_a4 != 0) {
            goto block_3;
        }
        goto block_7;
    }
    if (temp_a4 == 0) {
        goto block_8;
    }
block_3:
    if (temp_a4 != 2) {
        __glSetError(0x502, temp_a4, temp_a5_2, 0x10000);
    } else {
block_7:
        temp_a5->unk16975 = 1;
        ((void *) sp28)->unk2E40((void *) sp28, temp_a4, temp_a5_2, 0x10000);
        *(void *)0x1018 = 0;
block_8:
        if ((sp38 >= 0) && (sp30 >= 0)) {
            __glSetError((s32) sp28, (s32) sp38, sp30);
        } else {
            __glSetError(0x501);
        }
    }
}
