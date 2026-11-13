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
Error occurred while processing instruction: bgez $v0, .L0d9ee2a8

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
Error occurred while processing instruction: bgez $a0, .L0d9ee2cc

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
Error occurred while processing instruction: bgez $v0, .L0d9ee2a8

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
Error occurred while processing instruction: bgez $a0, .L0d9ee2cc

? __glMipsXForm4(void *, f32 *, void *, f32 *, s32, void *, f32, f32, f32, f32); /* extern */
? __glim_End();                                     /* extern */
? printf(void *, s32, s32, s32, s32, void *);       /* extern */
extern ? sub_0d9f0000;
extern ? sub_0daf0000;

void OdysseyClipAll(void *arg0, void *arg1, void *arg2) {
    arg0->unk10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f15, $f31 */);
    arg0->unk14 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f15, $f27 */);
    arg0->unk18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f15, $f23 */);
    arg0->unk1C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f15, $f19 */);
    arg0->unk90 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f15, $f17 */);
    arg0->unk94 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f15, $f14 */);
    arg0->unk98 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f15, $f12 */);
    arg0->unk9C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f15, $f10 */);
    arg0->unkA0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f15, $f8 */);
    arg0->unkA4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f15, $f6 */);
    arg0->unkA8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f15, $f4 */);
    arg0->unkAC = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f15, $f2 */);
    arg0->unk30 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f15, $f0 */);
    arg0->unk34 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f15, $f29 */);
    arg0->unk38 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f15, $f25 */);
    arg0->unk3C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f15, $f21 */);
    arg0->unkC0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f15, $f18 */);
    arg0->unkC4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
    arg0->unkC8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f15, $f13 */);
    arg0->unk170 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f15, $f11 */);
    arg0->unk174 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f15, $f9 */);
    arg0->unk178 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f15, $f7 */);
    arg0->unk180 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f15, $f5 */);
    arg0->unk184 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f15, $f3 */);
    arg0->unk188 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f15, $f1 */);
}

s32 __glOdysseyGetNumHWClipPlanes(void *arg0) {
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s64 temp_a0;
    s64 var_a0;

    temp_a4 = arg0->unk70C;
    var_a3 = 0;
    temp_a5 = arg0->unk700;
    var_a2 = temp_a4;
    if (temp_a4 != 0) {
        var_a3 = 0;
        do {
            var_a2 &= var_a2 - 1;
            var_a3 += 1;
        } while (var_a2 != 0);
    }
    // Error: negative shift count
    // At instruction: bgez $v0, .L0d9ee2a8
    if (M2C_ERROR()) {
        return (temp_a4 & 0x100) ? 0 : var_a3;
    }
    // Error: negative shift count
    // At instruction: bgez $a0, .L0d9ee2cc
    if (M2C_ERROR()) {
        var_a0 = 3;
    } else {
        var_a0 = !(temp_a5 & 0x20000) ? (!(var_a2 & temp_a5) ? 0 : temp_a0) : temp_a0;
    }
    temp_v0 = 3 - var_a0;
    return (temp_a4 & 0x100) ? 0 : ((var_a3 < temp_v0) ? var_a3 : temp_v0);
}

s32 __glOdysseyGetNumSWClipPlanes(void *arg0) {
    s32 var_a2;
    s32 var_s0;

    var_a2 = arg0->unk70C;
    var_s0 = 0;
    if (var_a2 != 0) {
        var_s0 = 0;
        do {
            var_a2 &= var_a2 - 1;
            var_s0 += 1;
        } while (var_a2 != 0);
    }
    return var_s0 - __glOdysseyGetNumHWClipPlanes((void *) var_a2);
}

void __glOdysseyValidateSoftClipPlanes(void *arg0) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 *temp_a3;
    f32 temp_f5;
    s32 temp_s0;
    s32 temp_s3;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a6;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s1;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s4;
    s32 var_s5;
    s32 var_s5_2;
    void *temp_a0;
    void *temp_a5;
    void *temp_a6;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_t0;
    void *temp_t1;
    void *temp_t2;
    void *var_s2;
    void *var_s2_2;

    temp_v0 = __glOdysseyGetNumHWClipPlanes();
    temp_a5 = arg0->unk7414;
    arg0->unk16818 = 0;
    var_s4 = 0;
    var_s1 = temp_v0;
    var_a3 = 0;
    temp_s2 = arg0 + 0x16748;
    if (1 & arg0->unk70C) {
        if (var_s1 != 0) {
            var_s4 = 1;
            var_s1 -= 1;
        } else {
            sp58 = arg0->unk6D4->unk0;
            sp5C = arg0->unk6D4->unk4;
            sp60 = arg0->unk6D4->unk8;
            sp64 = arg0->unk6D4->unkC;
            __glMipsXForm4(temp_s2, &sp58, sp, NULL, 0x16748, temp_a5, temp_a5->unk30, temp_a5->unk20, temp_a5->unk10, temp_a5->unk0);
            var_a3 = 1 | arg0->unk16818;
            arg0->unk16818 = var_a3;
        }
    }
    var_s0 = 1 * 2;
    var_s2 = temp_s2 + 0x10;
    var_s3 = 0x10;
    var_s5 = 1;
    var_a6 = var_s0 & arg0->unk70C;
loop_6:
    if (var_a6 != 0) {
        if (var_s1 != 0) {
            var_s4 += 1;
            var_s1 -= 1;
        } else {
            temp_a3 = arg0->unk6D4 + var_s3;
            sp58 = *temp_a3;
            sp5C = (arg0->unk6D4 + var_s3)->unk4;
            sp60 = (arg0->unk6D4 + var_s3)->unk8;
            sp64 = (arg0->unk6D4 + var_s3)->unkC;
            __glMipsXForm4(var_s2, &sp58, sp, temp_a3, 0x16748);
            var_a3 = var_s0 | arg0->unk16818;
            arg0->unk16818 = var_a3;
        }
    }
    temp_s0 = var_s0 * 2;
    temp_s2_2 = var_s2 + 0x10;
    temp_s3 = var_s3 + 0x10;
    if (temp_s0 & arg0->unk70C) {
        if (var_s1 != 0) {
            var_s4 += 1;
            var_s1 -= 1;
        } else {
            sp58 = *(arg0->unk6D4 + temp_s3);
            sp5C = (arg0->unk6D4 + temp_s3)->unk4;
            sp60 = (arg0->unk6D4 + temp_s3)->unk8;
            sp64 = (arg0->unk6D4 + temp_s3)->unkC;
            __glMipsXForm4(temp_s2_2, &sp58, sp, (f32 *) var_a3, 0x16748);
            var_a3 = temp_s0 | arg0->unk16818;
            arg0->unk16818 = var_a3;
        }
    }
    var_s2 = temp_s2_2 + 0x10;
    var_s5 += 2;
    var_s3 = temp_s3 + 0x10;
    var_s0 = temp_s0 * 2;
    var_a6 = var_s0 & arg0->unk70C;
    if (var_s5 != 0xD) {
        goto loop_6;
    }
    var_a2 = arg0->unk70C & 0x3F;
    var_a0 = 0;
    if (var_a2 != 0) {
        var_a0 = 0;
        do {
            var_a2 &= var_a2 - 1;
            var_a0 += 1;
        } while (var_a2 != 0);
    }
    if (var_s4 != 0) {
        if ((var_a0 - var_s1) != 0) {
            if ((var_a3 != 0) && (arg0->unk19DBC != 0)) {
                temp_a0 = arg0->unk6D4;
                temp_a0->unk80 = 0.0f;
                temp_a0->unk84 = 0.0f;
                var_s5_2 = 8;
                if (arg0->unk19DCD != 0) {
                    temp_a0->unk8C = 1.0f;
                    temp_a0->unk88 = -1.0f;
                } else {
                    temp_f5 = (f32) M2C_ERROR(/* unknown instruction: movf.d $f5, $f6, $fcc0 */);
                    temp_a0->unk88 = temp_f5;
                    temp_a0->unk8C = (f32) ((f64) temp_f5 * arg0->unk165C8);
                }
                arg0->unk16818 = (s32) (arg0->unk16818 | 0x100);
                var_s0_2 = 0x100;
                var_s3_2 = 0x80;
                var_s2_2 = 0x16748 + arg0 + 0x80;
                if (arg0->unk19DBC != 3) {

                } else {
                    temp_t2 = arg0->unk6D4;
                    temp_t2->unk90 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f15, $f15, $f16, $f11 */);
                    temp_t2->unk94 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f13, $f13, $f14, $f11 */);
                    temp_t2->unk98 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f10, $f10, $f12, $f11 */);
                    temp_t2->unk9C = (f32) M2C_ERROR(/* unknown instruction: madd.d $f8, $f8, $f9, $f11 */);
                    temp_t1 = arg0->unk6D4;
                    temp_t1->unkA0 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f6, $f6, $f7, $f11 */);
                    temp_t1->unkA4 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f4, $f4, $f5, $f11 */);
                    temp_t1->unkA8 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f2, $f2, $f3, $f11 */);
                    temp_t1->unkAC = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f0, $f0, $f1, $f11 */);
                    temp_t0 = arg0->unk6D4;
                    temp_t0->unkB0 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f29, $f29, $f31, $f11 */);
                    temp_t0->unkB4 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f25, $f25, $f27, $f11 */);
                    temp_t0->unkB8 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f21, $f21, $f23, $f11 */);
                    temp_t0->unkBC = (f32) M2C_ERROR(/* unknown instruction: madd.d $f18, $f18, $f19, $f11 */);
                    temp_a6 = arg0->unk6D4;
                    temp_a6->unkC0 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f16, $f16, $f17, $f11 */);
                    temp_a6->unkC4 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f14, $f14, $f15, $f11 */);
                    temp_a6->unkC8 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f12, $f12, $f13, $f11 */);
                    temp_a6->unkCC = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f9, $f9, $f10, $f11 */);
                    arg0->unk16818 = (s32) (arg0->unk16818 | 0x1E00);
                }
                do {
                    if (var_s0_2 & arg0->unk16818) {
                        sp58 = *(arg0->unk6D4 + var_s3_2);
                        sp5C = (arg0->unk6D4 + var_s3_2)->unk4;
                        sp60 = (arg0->unk6D4 + var_s3_2)->unk8;
                        sp64 = (arg0->unk6D4 + var_s3_2)->unkC;
                        __glMipsXForm4(var_s2_2, &sp58, sp);
                    }
                    var_s5_2 += 1;
                    var_s0_2 *= 2;
                    var_s2_2 += 0x10;
                    var_s3_2 += 0x10;
                } while (var_s5_2 != 0xD);
            }
            arg0->unk19DC8 = 0;
            return;
        }
        arg0->unk19DC8 = 0;
        return;
    }
    arg0->unk19DC8 = 0;
}

void __glOdysseySoftClipPickParameterClipProcs(void *arg0) {
    void *temp_v0;

    temp_v0 = &sub_0d9f0000 - 0x1FB0;
    arg0->unk2F78 = temp_v0;
    arg0->unk3100 = temp_v0;
}

/*
Decompilation failure in function __glOdysseySendShadowAttributes:

Unable to determine jump table for jr instruction at ody_clip.s line 1113.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdysseySendShadowVertex(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_at;

    temp_a4 = (arg1 + (arg2 * 4))->unk100 & 0x3FF;
    switch (temp_a4) {                              /* irregular */
    default:
        printf(&sub_0daf0000 - 0x68E0, temp_a4, temp_a4, arg1, arg2, arg0);
        break;
    case 5:
        temp_a1 = arg1 + (arg2 * 0x10);
        arg0->unk17F4->unk570(temp_a1, temp_a4, arg1, arg2, arg0, temp_a1->unk300, temp_a1->unk304, temp_a1->unk308, temp_a1->unk30C);
        break;
    case 0:
        temp_a0 = arg1 + (arg2 * 0x10);
        arg0->unk17F4->unk538(temp_a0->unk300, temp_a0->unk304, temp_a4, arg1, arg2, arg0);
        break;
    case 1:
        temp_at = arg1 + (arg2 * 0x10);
        arg0->unk17F4->unk530(temp_a4, arg1, arg2, arg0, temp_at->unk300, temp_at->unk304);
        break;
    case 2:
        temp_a0_2 = arg1 + (arg2 * 0x10);
        arg0->unk17F4->unk558(temp_a0_2->unk300, temp_a0_2->unk304, temp_a0_2->unk308, temp_a4, arg1, arg2, arg0);
        break;
    case 3:
        temp_a1_2 = arg1 + (arg2 * 0x10);
        arg0->unk17F4->unk550(temp_a1_2, temp_a4, arg1, arg2, arg0, temp_a1_2->unk300, temp_a1_2->unk304, temp_a1_2->unk308);
        break;
    case 4:
        temp_a0_3 = arg1 + (arg2 * 0x10);
        arg0->unk17F4->unk578(temp_a0_3->unk300, temp_a0_3->unk304, temp_a0_3->unk308, temp_a0_3->unk30C, temp_a4, arg1, arg2, arg0);
        break;
    }
}

/*
Decompilation failure in function __glOdysseyVertexWARClip:

Unable to determine jump table for jr instruction at ody_clip.s line 1772.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdysseyVertexWARClipNOP(void) {
    f32 temp_f30;
    void *temp_at;

    temp_at = *(void **)0x1010;
    temp_f30 = temp_at->unk19D90;
    temp_at->unk19D90 = 0.0f;
    temp_at->unk17F4->unk570();
    temp_at->unk19D90 = temp_f30;
}

void __glOdyim_SoftClipEnd(void) {
    s32 temp_a2;
    s32 temp_a3;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    __glim_End();
    if (temp_s0->unk19DC8 == 0) {
        temp_a3 = temp_s0->unk70C;
        if (temp_a3 & 0x100) {
            temp_s0->unk70C = (s32) (temp_a3 & ~0x1F00);
            temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x510);
            *(s32 *)0x1018 = 2;
        }
        if (temp_s0->unk19DC8 == 0) {
            temp_a2 = temp_s0->unk16818;
            if (temp_a2 & 0x100) {
                temp_s0->unk16818 = (s32) (temp_a2 & ~0x1F00);
                temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x510);
                *(void *)0x1018 = 2;
            }
        }
    }
}
