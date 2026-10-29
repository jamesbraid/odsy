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
Error occurred while processing instruction: bgez $a1, .L0d97ca34

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
Error occurred while processing instruction: bgez $a1, .L0d97ca34

? __glOdyDecodeShadowFormat(s64, void *, ?);        /* extern */
s32 __glOdyGetFromHardware(?, s32, ? *, s32, u8, s32, s32); /* extern */
? __glSetError(?, s32);                             /* extern */
? sub_0d970000(? *, s32);                           /* extern */
? sub_0d980000(?);                                  /* extern */
void __glOdysseyDoEvalCoord1(void *arg0, f32 fparg1, f32, f32, f32, f32, f32, void *, f32, f32); /* static */
void __glOdysseyDoEvalCoord2(void *arg0, f32 fparg1, f32 fparg2, f32, f32, f32, f32, f32); /* static */
void __glOdysseyEvalMesh1Line(s64 arg0, s64 arg1, s64 arg2); /* static */
void __glOdysseyEvalMesh1Point(s64 arg0, s64 arg1, s64 arg2); /* static */
void __glOdysseyEvalMesh2Fill(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0); /* static */
void __glOdysseyEvalMesh2Line(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0); /* static */
void __glOdysseyEvalMesh2Point(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4); /* static */
extern ? __glOdyim_SoftGetFloatv;

void __glOdyim_EvalCoord1d(f64 fparg0) {
    __glOdysseyDoEvalCoord1(*(void **)0x1010, (f32) fparg0);
}

void __glOdyim_EvalCoord1dv(f64 *arg0) {
    __glOdysseyDoEvalCoord1(*(void **)0x1010, second half of f64, (f32) *arg0);
}

void __glOdyim_EvalCoord1f(f32 fparg0) {
    __glOdysseyDoEvalCoord1(*(void **)0x1010, fparg0);
}

void __glOdyim_EvalCoord1fv(f32 *arg0) {
    __glOdysseyDoEvalCoord1(*(void **)0x1010, *arg0);
}

void __glOdyim_EvalCoord2d(f64 fparg0, f64 fparg1) {
    __glOdysseyDoEvalCoord2(*(void **)0x1010, (f32) fparg0, (f32) fparg1, second half of f64);
}

void __glOdyim_EvalCoord2dv(void *arg0) {
    __glOdysseyDoEvalCoord2(*(void **)0x1010, second half of f64, (f32) arg0->unk0, (f32) arg0->unk8, second half of f64);
}

void __glOdyim_EvalCoord2f(f32 fparg0, f32 fparg1) {
    __glOdysseyDoEvalCoord2(*(void **)0x1010, fparg0, fparg1);
}

void __glOdyim_EvalCoord2fv(void *arg0) {
    __glOdysseyDoEvalCoord2(*(void **)0x1010, arg0->unk0, arg0->unk4);
}

void __glOdyim_EvalMesh1(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a4;
    s64 var_a0;

    var_a0 = arg0;
    sp8 = arg2;
    sp0 = arg1;
    temp_a4 = *(s32 *)0x1018;
    sp10 = (s64) *(s32 *)0x1010;
    if (temp_a4 != 0) {
        unksp20 = var_a0;
        if (temp_a4 != 2) {
            __glSetError(0x502, temp_a4);
        } else {
            sp10->unk2E40(sp10, temp_a4);
            var_a0 = unksp20;
            *(void *)0x1018 = 0;
            goto block_5;
        }
    } else {
block_5:
        if (var_a0 != 0x1B01) {
            if (var_a0 != 0x1B00) {
                __glSetError(0x500);
            } else {
                __glOdysseyEvalMesh1Point(sp10, sp0, sp8);
            }
        } else {
            __glOdysseyEvalMesh1Line(sp10, sp0, sp8);
        }
    }
}

void __glOdyim_EvalPoint1(s32 arg0, f32 fparg2, f32 fparg3) {
    f32 temp_f4;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    s32 temp_a3;
    s32 var_f16;
    void *temp_a2;

    var_f14 = fparg2;
    var_f15 = fparg3;
    temp_a2 = *(void **)0x1010;
    temp_a3 = temp_a2->unk798;
    temp_f4 = temp_a2->unk790;
    var_f16 = temp_a3;
    if (temp_a3 == arg0) {
        var_f13 = temp_f4;
    } else {
        var_f16 = (bitwise s32) (f32) var_f16;
        var_f15 = (temp_f4 - temp_a2->unk78C) / (bitwise f32) var_f16;
        var_f14 = (f32) arg0;
        var_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
    }
    __glOdysseyDoEvalCoord1(temp_a2, (bitwise f32) temp_a2, (bitwise f32) temp_a3, var_f13, var_f14, var_f15, (bitwise f32) var_f16);
}

void __glOdyim_EvalMesh2(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a6;

    sp8 = arg4;
    sp18 = arg3;
    sp10 = arg2;
    sp0 = arg1;
    sp20 = (s64) *(s32 *)0x1010;
    temp_a6 = *(s32 *)0x1018;
    if (temp_a6 != 0) {
        if (temp_a6 != 2) {
            __glSetError(0x502, temp_a6);
        } else {
            sp20->unk2E40(sp20, temp_a6);
            *(void *)0x1018 = 0;
            goto block_5;
        }
    } else {
block_5:
        switch (arg0) {                             /* irregular */
        default:
            __glSetError(0x500);
            break;
        case 0x1B00:
            __glOdysseyEvalMesh2Point(sp20, sp0, sp18, sp10, sp8);
            break;
        case 0x1B02:
            __glOdysseyEvalMesh2Fill(sp20, sp0, sp18, sp10, sp8);
            break;
        case 0x1B01:
            __glOdysseyEvalMesh2Line(sp20, sp0, sp18, sp10, sp8);
            break;
        }
    }
}

void __glOdyim_EvalPoint2(s32 arg0, u8 arg1, f32 fparg3) {
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    s32 temp_a0;
    s32 temp_a4;
    s32 var_f16;
    s32 var_f17;
    void *temp_a3;

    var_f15 = fparg3;
    temp_a3 = *(void **)0x1010;
    temp_a4 = temp_a3->unk7A8;
    temp_f4 = temp_a3->unk7A0;
    var_f16 = temp_a4;
    if (temp_a4 == arg0) {
        var_f13 = temp_f4;
    } else {
        var_f16 = (bitwise s32) (f32) var_f16;
        var_f15 = (temp_f4 - temp_a3->unk79C) / (bitwise f32) var_f16;
        var_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
    }
    temp_a0 = temp_a3->unk7B8;
    temp_f4_2 = temp_a3->unk7B0;
    var_f17 = temp_a0;
    if (temp_a0 == arg1) {
        var_f14 = temp_f4_2;
    } else {
        var_f17 = (bitwise s32) (f32) var_f17;
        var_f16 = (bitwise s32) ((temp_f4_2 - temp_a3->unk7AC) / (bitwise f32) var_f17);
        var_f15 = (f32) arg1;
        var_f14 = M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
    }
    __glOdysseyDoEvalCoord2(temp_a3, (bitwise f32) temp_a3, (bitwise f32) temp_a4, var_f13, var_f14, var_f15, (bitwise f32) var_f16, (bitwise f32) var_f17);
}

void PreEvaluate(s32 arg0, void *arg2, f32 fparg1) {
    f32 *var_a3_2;
    f32 temp_f1;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 var_f4;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    void *var_a4;

    switch (arg0) {                                 /* irregular */
    default:
        arg2->unk4 = fparg1;
        temp_f7 = 1.0f - fparg1;
        arg2->unk0 = temp_f7;
        if (arg0 >= 3) {
            var_a5 = 2;
            var_a4 = arg2 + 8;
            var_a7 = 1;
loop_13:
            var_a6 = var_a7 & 3;
            temp_f4 = arg2->unk0;
            var_a3 = 1;
            var_f4 = temp_f4 * fparg1;
            arg2->unk0 = (f32) (temp_f4 * temp_f7);
            if (var_a5 < 2) {

            } else {
                var_a3_2 = arg2 + 4;
                if (var_a6 != 0) {
                    do {
                        temp_f1 = *var_a3_2;
                        var_a6 -= 1;
                        var_a3_2 += 4;
                        var_f4 = temp_f1 * fparg1;
                        var_a3_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f4, $f1, $f7 */);
                    } while (var_a6 != 0);
                }
                if ((var_a7 >> 2) != 0) {
                    do {
                        temp_f3 = var_a3_2->unkC;
                        var_a3_2 += 0x10;
                        var_a3_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f3, $f7 */);
                        var_a3_2->unk-8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f10, $f7 */);
                        var_a3_2->unk-C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f7 */);
                        var_f4 = temp_f3 * fparg1;
                        var_a3_2->unk-10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f4, $f2, $f7 */);
                    } while (var_a3_2 != var_a4);
                }
                var_a3 = var_a5;
            }
            var_a5 += 1;
            var_a4 += 4;
            var_a7 += 1;
            *(arg2 + (var_a3 * 4)) = var_f4;
            if (arg0 != var_a5) {
                goto loop_13;
            }
        }
        return;
    case 1:
        arg2->unk0 = 1.0f;
        return;
    case 4:
        temp_f6 = 1.0f - fparg1;
        M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f13 */);
        temp_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f13 */);
        arg2->unkC = (f32) (fparg1 * (fparg1 * fparg1));
        arg2->unk0 = (f32) (temp_f6 * (temp_f6 * temp_f6));
        arg2->unk8 = (f32) (temp_f5 * fparg1);
        arg2->unk4 = (f32) (temp_f5 * temp_f6);
        return;
    case 3:
        temp_f6_2 = 1.0f - fparg1;
        arg2->unk8 = (f32) (fparg1 * fparg1);
        arg2->unk0 = (f32) (temp_f6_2 * temp_f6_2);
        arg2->unk4 = (f32) (temp_f6_2 * (fparg1 * 2.0f));
        return;
    case 2:
        arg2->unk4 = fparg1;
        arg2->unk0 = (f32) (1.0f - fparg1);
        return;
    }
}

void PreEvaluateWithDeriv(s32 arg0, void *arg2, void *arg3, f32 fparg1) {
    f32 *temp_t2;
    f32 *var_a0;
    f32 *var_a4_2;
    f32 *var_a4_3;
    f32 *var_a4_4;
    f32 *var_a7_2;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f16;
    f32 temp_f19;
    f32 temp_f19_2;
    f32 temp_f1;
    f32 temp_f23;
    f32 temp_f25;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    s32 temp_a3;
    s32 temp_t0;
    s32 temp_t1;
    s32 var_a0_2;
    s32 var_a4;
    s32 var_a4_5;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_t0;
    s32 var_v0;
    void *var_a5;

    switch (arg0) {                                 /* irregular */
    default:
        temp_f7 = 1.0f - fparg1;
        arg2->unk4 = fparg1;
        temp_t1 = arg0 - 1;
        arg2->unk0 = temp_f7;
        var_f4 = temp_f7;
        if (arg0 >= 4) {
            var_a6 = 2;
            var_a5 = arg2 + 8;
            var_t0 = 1;
loop_13:
            var_a7 = var_t0 & 3;
            temp_f4 = arg2->unk0;
            var_a4 = 1;
            var_f4_2 = temp_f4 * fparg1;
            arg2->unk0 = (f32) (temp_f4 * temp_f7);
            if (var_a6 < 2) {

            } else {
                var_a4_2 = arg2 + 4;
                if (var_a7 != 0) {
                    do {
                        temp_f1 = *var_a4_2;
                        var_a7 -= 1;
                        var_a4_2 += 4;
                        var_f4_2 = temp_f1 * fparg1;
                        var_a4_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f4, $f1, $f7 */);
                    } while (var_a7 != 0);
                }
                if ((var_t0 >> 2) != 0) {
                    do {
                        temp_f3 = var_a4_2->unkC;
                        var_a4_2 += 0x10;
                        var_a4_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f3, $f7 */);
                        var_a4_2->unk-8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f10, $f7 */);
                        var_a4_2->unk-C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f7 */);
                        var_f4_2 = temp_f3 * fparg1;
                        var_a4_2->unk-10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f4, $f2, $f7 */);
                    } while (var_a4_2 != var_a5);
                }
                var_a4 = var_a6;
            }
            var_a6 += 1;
            var_a5 += 4;
            var_t0 += 1;
            *(arg2 + (var_a4 * 4)) = var_f4_2;
            if (temp_t1 != var_a6) {
                goto loop_13;
            }
            var_a6_2 = temp_t1;
            var_f4 = arg2->unk0;
        } else {
            var_a6_2 = 2;
        }
        var_a7_2 = arg3 + 4;
        temp_t0 = (arg0 >= 3) ? (arg0 - 2) : 1;
        temp_t2 = arg2 + 4;
        arg3->unk0 = (f32) -var_f4;
        var_a4_3 = temp_t2;
        if (temp_t0 & 1) {
            var_a4_3 = arg2 + 8;
            var_a7_2 = arg3 + 8;
            arg3->unk4 = (f32) (arg2->unk0 - arg2->unk4);
        }
        var_v0 = temp_t0 * 4;
        if ((temp_t0 >> 1) != 0) {
            var_a0 = var_a7_2;
            do {
                *var_a0 = var_a4_3->unk-4 - var_a4_3->unk0;
                temp_f9 = var_a4_3->unk0;
                temp_f10 = var_a4_3->unk4;
                var_a4_3 += 8;
                var_a0 += 8;
                var_a0->unk-4 = (f32) (temp_f9 - temp_f10);
            } while ((u32) var_a4_3 < (u32) ((temp_t1 * 4) + arg2));
            var_v0 = temp_t0 * 4;
        }
        (var_v0 + arg3)->unk4 = (f32) *(var_v0 + arg2);
        temp_f4_2 = arg2->unk0;
        var_f4_3 = temp_f4_2 * fparg1;
        arg2->unk0 = (f32) (temp_f4_2 * temp_f7);
        if (var_a6_2 >= 2) {
            temp_a3 = var_a6_2 - 1;
            var_a0_2 = temp_a3 & 3;
            var_a4_4 = temp_t2;
            if (var_a0_2 != 0) {
                do {
                    temp_f8 = *var_a4_4;
                    var_a0_2 -= 1;
                    var_a4_4 += 4;
                    var_f4_3 = temp_f8 * fparg1;
                    var_a4_4->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f4, $f8, $f7 */);
                } while (var_a0_2 != 0);
            }
            if ((temp_a3 >> 2) != 0) {
                do {
                    temp_f10_2 = var_a4_4->unkC;
                    var_a4_4 += 0x10;
                    var_a4_4->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f10, $f7 */);
                    var_a4_4->unk-8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f16, $f7 */);
                    var_a4_4->unk-C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f15, $f7 */);
                    var_f4_3 = temp_f10_2 * fparg1;
                    var_a4_4->unk-10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f7 */);
                } while (var_a4_4 != ((var_a6_2 * 4) + arg2));
            }
            var_a4_5 = var_a6_2;
        } else {
            var_a4_5 = 1;
        }
        *(arg2 + (var_a4_5 * 4)) = var_f4_3;
        return;
    case 1:
        arg2->unk0 = 1.0f;
        arg3->unk0 = 0.0f;
        return;
    case 4:
        temp_f25 = 1.0f - fparg1;
        M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f25, $f13 */);
        temp_f19 = fparg1 * fparg1;
        temp_f23 = M2C_ERROR(/* unknown instruction: madd.s $f23, $f17, $f25, $f13 */);
        temp_f16 = temp_f25 * temp_f25;
        arg2->unkC = (f32) (temp_f19 * fparg1);
        arg2->unk0 = (f32) (temp_f16 * temp_f25);
        arg2->unk8 = (f32) (temp_f23 * fparg1);
        arg2->unk4 = (f32) (temp_f23 * temp_f25);
        arg3->unkC = temp_f19;
        arg3->unk8 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f18, $f17, $f13, $f13 */);
        arg3->unk4 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f25, $f25 */);
        arg3->unk0 = (f32) -temp_f16;
        return;
    case 3:
        temp_f19_2 = 1.0f - fparg1;
        arg2->unk8 = (f32) (fparg1 * fparg1);
        arg2->unk0 = (f32) (temp_f19_2 * temp_f19_2);
        arg2->unk4 = (f32) (temp_f19_2 * (fparg1 * 2.0f));
        arg3->unk8 = fparg1;
        arg3->unk4 = (f32) (temp_f19_2 - fparg1);
        arg3->unk0 = (f32) (fparg1 + -1.0f);
        return;
    case 2:
        arg2->unk4 = fparg1;
        arg2->unk0 = (f32) (1.0f - fparg1);
        arg3->unk4 = 1.0f;
        arg3->unk0 = -1.0f;
        return;
    }
}

void DoDomain1(void *arg0, void *arg2, s64 arg3, s64 arg4, f32 fparg1) {
    s64 sp10;
    s64 sp8;
    f64 sp0;
    f32 *var_a4_2;
    f32 *var_a4_3;
    f32 *var_a4_4;
    f32 temp_f1;
    f32 temp_f23;
    f32 temp_f4;
    f32 temp_f5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a0;
    s32 var_a2;
    s32 var_a4;
    s32 var_t0;
    s32 var_t0_2;
    s64 var_a6;
    s64 var_a6_2;
    s64 var_a6_3;
    s64 var_a6_4;
    s64 var_a6_5;
    s64 var_a7;
    s64 var_a7_2;

    temp_f4 = arg2->unkC;
    temp_f5 = arg2->unk8;
    if (temp_f5 != temp_f4) {
        temp_f1 = (fparg1 - temp_f5) / (temp_f4 - temp_f5);
        var_a0 = arg2->unk4;
        sp10 = arg3;
        sp8 = arg4;
        sp0 = (bitwise f64) temp_f1;
        if ((arg0->unk2F4 != temp_f1) || (arg0->unk57C != var_a0)) {
            __glOdyim_EvalPoint2(var_a0, (u8) (arg0 + 0x2FC), second half of f64, sp0);
            arg0->unk584 = 2;
            arg0->unk57C = (s32) arg2->unk4;
            arg0->unk2F4 = (bitwise f32) sp0;
            var_a0 = arg2->unk4;
        }
        temp_a5 = arg2->unk0;
        switch (var_a0) {                           /* irregular */
        default:
            if (temp_a5 > 0) {
                var_a6 = sp10;
                var_a7 = sp8;
                do {
                    *var_a6 = 0.0f;
                    if (arg2->unk4 > 0) {
                        var_a4 = 0;
loop_12:
                        *var_a6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                        temp_a4 = var_a4 + 1;
                        if (temp_a4 < arg2->unk4) {
                            *var_a6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f10 */);
                            var_a4 = temp_a4 + 1;
                            if (var_a4 < arg2->unk4) {
                                goto loop_12;
                            }
                        }
                    }
                    var_a7 += 4;
                    var_a6 += 4;
                } while (var_a7 != ((temp_a5 * 4) + sp8));
            }
            break;
        case 4:
            if (temp_a5 > 0) {
                var_t0 = temp_a5 & 3;
                temp_a3 = temp_a5 * 4;
                var_a4_2 = temp_a3 + sp8;
                temp_a0 = var_a4_2 + temp_a3;
                var_a6_2 = sp10;
                if (var_t0 != 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f14, $f15 */);
                        var_a4_2 += 4;
                        var_t0 -= 1;
                        var_a6_2 += 4;
                        var_a6_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                    } while (var_t0 != 0);
                }
                if ((temp_a5 >> 2) != 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                        var_a6_2->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f4 */);
                        var_a6_2->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f29, $f31 */);
                        var_a6_2->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f19, $f21 */);
                        var_a4_2 += 0x10;
                        var_a6_2 += 0x10;
                        var_a6_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                    } while (var_a4_2 != temp_a0);
                }
            }
            break;
        case 3:
            if (temp_a5 > 0) {
                var_t0_2 = temp_a5 & 3;
                temp_a0_2 = temp_a5 * 4;
                var_a4_3 = temp_a0_2 + sp8;
                var_a6_3 = sp10;
                temp_a0_3 = var_a4_3 + temp_a0_2;
                if (var_t0_2 != 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f13, $f14 */);
                        var_a4_3 += 4;
                        var_t0_2 -= 1;
                        var_a6_3 += 4;
                        var_a6_3->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
                    } while (var_t0_2 != 0);
                }
                if ((temp_a5 >> 2) != 0) {
                    do {
                        M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f31, $f0 */);
                        var_a6_3->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f25, $f27 */);
                        var_a6_3->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f19, $f21 */);
                        var_a6_3->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                        M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f16, $f17 */);
                        var_a4_3 += 0x10;
                        var_a6_3 += 0x10;
                        var_a6_3->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                    } while (var_a4_3 != temp_a0_3);
                }
            }
            break;
        case 2:
            if (temp_a5 > 0) {
                var_a2 = temp_a5 & 3;
                temp_a0_4 = temp_a5 * 4;
                var_a4_4 = temp_a0_4 + sp8;
                var_a6_4 = sp10;
                temp_a0_5 = var_a4_4 + temp_a0_4;
                if (var_a2 != 0) {
                    do {
                        var_a2 -= 1;
                        var_a4_4 += 4;
                        var_a6_4 += 4;
                        var_a6_4->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                    } while (var_a2 != 0);
                }
                if ((temp_a5 >> 2) != 0) {
                    do {
                        var_a6_4->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
                        var_a6_4->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                        var_a6_4->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                        var_a4_4 += 0x10;
                        var_a6_4 += 0x10;
                        var_a6_4->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                    } while (var_a4_4 != temp_a0_5);
                }
            }
            break;
        case 1:
            if (temp_a5 > 0) {
                var_a7_2 = sp8;
                var_a6_5 = sp10;
                if (temp_a5 & 1) {
                    var_a7_2 = sp8 + 4;
                    var_a6_5 = sp10 + 4;
                    *sp10 = (f32) (*sp8 * arg0->unk2FC);
                }
                if ((temp_a5 >> 1) != 0) {
                    do {
                        *var_a6_5 = (f32) (var_a7_2->unk0 * arg0->unk2FC);
                        temp_f23 = var_a7_2->unk4;
                        var_a7_2 += 8;
                        var_a6_5 += 8;
                        var_a6_5->unk-4 = (f32) (temp_f23 * arg0->unk2FC);
                    } while (var_a7_2 != ((temp_a5 * 4) + sp8));
                }
            }
            break;
        }
    }
}

void GetCurrentState(void *arg0, s32 arg1, void *arg2) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4;
    s32 temp_a7;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_t1;
    s32 var_v1;
    u8 var_a5;

    arg2->unk0 = 0;
    var_a5 = arg0->unkC95;
    var_a6 = 1;
    var_a4 = 0;
    if (arg1 != 1) {
        temp_a2 = arg0->unk714;
        if ((var_a5 != 0) && (temp_a2 & 2)) {
            arg2->unk0 = 2;
            var_a4 = 2;
            goto block_4;
        }
        if (arg0->unkC94 != 0) {
            var_v1 = temp_a2 & 0x78;
            if (temp_a2 & 1) {
                arg2->unk0 = 1;
                var_a4 = 1;
                goto block_4;
            }
        } else {
block_4:
            var_v1 = temp_a2 & 0x78;
        }
        var_a1 = temp_a2 & 4;
        if (var_v1 != 0) {
            var_a4 |= 8;
            arg2->unk0 = var_a4;
            var_a1 = temp_a2 & 4;
        }
        if (var_a1 != 0) {
            var_a4 |= 4;
            goto block_9;
        }
    } else {
        temp_a2_2 = arg0->unk710;
        if (var_a5 != 0) {
            var_a5 = temp_a2_2 & 2;
            if (var_a5 != 0) {
                var_a6 = 2;
                arg2->unk0 = 2;
                var_a4 = 2;
                goto block_35;
            }
        }
        if (arg0->unkC94 != 0) {
            var_a7 = temp_a2_2 & 0x78;
            if (temp_a2_2 & 1) {
                arg2->unk0 = 1;
                var_a4 = 1;
                goto block_35;
            }
        } else {
block_35:
            var_a7 = temp_a2_2 & 0x78;
        }
        if (var_a7 != 0) {
            var_a4 |= 8;
            arg2->unk0 = var_a4;
        }
        if (temp_a2_2 & 4) {
            var_a4 |= 4;
block_9:
            arg2->unk0 = var_a4;
        }
    }
    if (var_a4 != 0) {
        temp_a2_3 = arg0->unk17F4->unk1F0;
        if (temp_a2_3 == &__glOdyim_SoftGetFloatv) {
            if (var_a4 & 2) {
                arg2->unk4 = (f32) arg0->unk1C0;
                goto block_14;
            }
            var_a5_2 = var_a4 & 8;
            if (var_a4 & 1) {
                arg2->unk4 = (f32) arg0->unk1B0;
                arg2->unk8 = (f32) arg0->unk1B4;
                arg2->unkC = (f32) arg0->unk1B8;
                arg2->unk10 = (f32) arg0->unk1BC;
block_14:
                var_a5_2 = var_a4 & 8;
            }
            var_a6_2 = var_a4 & 4;
            if (var_a5_2 != 0) {
                arg2->unk24 = (f32) arg0->unkE0;
                arg2->unk28 = (f32) arg0->unkE4;
                arg2->unk2C = (f32) arg0->unkE8;
                arg2->unk30 = (f32) arg0->unkEC;
                var_a6_2 = var_a4 & 4;
            }
            if (var_a6_2 != 0) {
                arg2->unk14 = (f32) arg0->unkD0;
                arg2->unk18 = (f32) arg0->unkD4;
                arg2->unk1C = (f32) arg0->unkD8;
            }
        } else {
            temp_a7 = arg0->unk16D24;
            sp0 = (s64) temp_a7;
            if (__glOdyGetFromHardware(0, temp_a2_3, &__glOdyim_SoftGetFloatv, var_a4, var_a5, var_a6, temp_a7) >= 0) {
                temp_a4 = arg2->unk0;
                if (temp_a4 & 2) {
                    __glOdyDecodeShadowFormat(sp0, arg2 + 4, 1);
                    goto block_24;
                }
                var_t1 = temp_a4 & 4;
                if (temp_a4 & 1) {
                    __glOdyDecodeShadowFormat(sp0 + 0x14, arg2 + 4, 1);
block_24:
                    var_t1 = arg2->unk0 & 4;
                }
                if (var_t1 != 0) {
                    __glOdyDecodeShadowFormat(sp0 + 0x28, arg2 + 0x14, 1);
                }
                if (arg2->unk0 & 8) {
                    __glOdyDecodeShadowFormat(sp0 + 0x50, arg2 + 0x24, 1);
                }
            } else {
                arg2->unk0 = 0;
            }
        }
    }
}

void RestoreCurrentState(void *arg0, s32 *arg1) {
    s32 var_a3;
    s32 var_ra;
    s32 var_ra_2;

    var_a3 = *arg1;
    if (var_a3 & 2) {
        arg0->unk17F4->unk614(arg1 + 4, var_a3);
        goto block_2;
    }
    var_ra = var_a3 & 8;
    if (var_a3 & 1) {
        arg0->unk17F4->unk5DC(arg1 + 4, var_a3);
block_2:
        var_a3 = *arg1;
        var_ra = var_a3 & 8;
    }
    var_ra_2 = var_a3 & 4;
    if (var_ra != 0) {
        arg0->unk17F4->unk6C4(arg1 + 0x24);
        var_ra_2 = *arg1 & 4;
    }
    if (var_ra_2 != 0) {
        arg0->unk17F4->unk644(arg1 + 0x14);
    }
}

void DoEvalCoord1(void *arg0, f32 fparg1) {
    ? sp5C0;
    ? sp5B0;
    f32 sp5AC;
    f32 sp5A8;
    f32 sp5A4;
    ? sp5A0;
    ? sp590;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_v0_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a6;
    u8 temp_a1;
    void *temp_a6;

    var_a6 = 3;
    var_a3 = 0x163;
    var_a2 = 0;
    temp_a4 = arg0 + 0x6E84;
    do {
        var_a6 -= 1;
        var_a3 -= 1;
        temp_v0 = var_a2 + sp;
        temp_at = *(var_a2 + temp_a4);
        var_a2 += 4;
        *temp_v0 = temp_at;
    } while (var_a6 != 0);
    temp_a6 = sp + 4;
    temp_a7 = temp_a4 + 0x14;
    do {
        *(var_a2 + sp) = *(var_a2 + temp_a4);
        *(var_a2 + temp_a6) = *(var_a2 + (temp_a4 + 4));
        *(var_a2 + (sp + 8)) = *(var_a2 + (temp_a4 + 8));
        *(var_a2 + (sp + 0xC)) = *(var_a2 + (temp_a4 + 0xC));
        *(var_a2 + (sp + 0x10)) = *(var_a2 + (temp_a4 + 0x10));
        *(var_a2 + (sp + 0x14)) = *(var_a2 + temp_a7);
        var_a3 -= 8;
        *(var_a2 + (sp + 0x18)) = *(var_a2 + (temp_a4 + 0x18));
        temp_v1 = var_a2 + (sp + 0x1C);
        temp_v0_2 = *(var_a2 + (temp_a4 + 0x1C));
        var_a2 += 0x20;
        *temp_v1 = temp_v0_2;
    } while (var_a3 > 0);
    temp_a1 = arg0->unkC95;
    temp_a0 = arg0->unk710;
    if (temp_a1 != 0) {
        if (temp_a0 & 2) {
            __glOdyim_EvalPoint2((s32) sp, temp_a1, (bitwise f32) (arg0 + 0x6E9C), (f64) &sp590, arg0->unk70C8, sp, temp_a6, temp_a7, fparg1);
            sub_0d970000(&sp590);
        }
    } else if (temp_a0 & 1) {
        __glOdyim_EvalPoint2((s32) sp, temp_a1, (bitwise f32) (arg0 + 0x6E84), (f64) &sp590, arg0->unk70C4, sp, temp_a6, temp_a7, fparg1);
        sub_0d970000(&sp590);
    }
    if (arg0->unk710 & 0x40) {
        __glOdyim_EvalPoint2((s32) sp);
        arg0->unk17F4->unk6C4(&sp5A0);
    } else if (arg0->unk710 & 0x20) {
        __glOdyim_EvalPoint2((s32) sp);
        sp5AC = arg0->unkDD8;
        arg0->unk17F4->unk6C4(&sp5A0);
    } else if (arg0->unk710 & 0x10) {
        __glOdyim_EvalPoint2((s32) sp);
        sp5A8 = 0.0f;
        sp5AC = arg0->unkDD8;
        arg0->unk17F4->unk6C4(&sp5A0);
    } else if (arg0->unk710 & 8) {
        __glOdyim_EvalPoint2((s32) sp);
        sp5A8 = 0.0f;
        sp5A4 = 0.0f;
        sp5AC = arg0->unkDD8;
        arg0->unk17F4->unk6C4(&sp5A0);
    }
    if (arg0->unk710 & 4) {
        __glOdyim_EvalPoint2((s32) sp);
        arg0->unk17F4->unk644(&sp5B0);
    }
    if (arg0->unk710 & 0x100) {
        __glOdyim_EvalPoint2((s32) sp);
        arg0->unk17F4->unk574(&sp5C0);
    } else if (arg0->unk710 & 0x80) {
        __glOdyim_EvalPoint2((s32) sp);
        arg0->unk17F4->unk554(&sp5C0);
    }
}

void __glOdysseyDoEvalCoord1(s32 arg0, f32 fparg1) {
    __glOdyim_EvalPoint2(1, (u8) sp);
    __glOdyim_EvalPoint2(arg0);
    __glOdyim_EvalPoint2(arg0, (u8) sp);
}

void ComputeFirstPartials(void *arg0, void *arg1, void *arg2) {
    arg1->unk0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f11, $f11, $f12, $f13 */);
    arg1->unk4 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f10, $f10, $f11, $f12 */);
    arg1->unk8 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f6, $f6, $f7, $f8 */);
    arg2->unk0 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f5, $f5, $f6, $f7 */);
    arg2->unk4 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f4, $f4, $f5, $f6 */);
    arg2->unk8 = (f32) M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f1, $f2 */);
}

/*
Decompilation failure in function ComputeNormal2:

Unable to determine jump table for jr instruction at ody_eval.s line 2294.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void DoDomain2(void *arg0, void *arg3, s64 arg4, s64 arg5, f32 fparg1, f32 fparg2) {
    s64 sp18;
    s64 sp10;
    f64 sp8;
    f64 sp0;
    f32 *temp_a7_13;
    f32 *temp_t0_12;
    f32 *temp_t1_3;
    f32 *temp_t2_3;
    f32 *temp_t2_4;
    f32 *temp_t8_2;
    f32 *var_a2;
    f32 *var_a2_10;
    f32 *var_a2_11;
    f32 *var_a2_12;
    f32 *var_a2_13;
    f32 *var_a2_2;
    f32 *var_a2_3;
    f32 *var_a2_4;
    f32 *var_a2_5;
    f32 *var_a2_6;
    f32 *var_a2_7;
    f32 *var_a2_8;
    f32 *var_a2_9;
    f32 *var_a3_9;
    f32 *var_a4_6;
    f32 *var_a7_2;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_a7_10;
    s32 temp_a7_11;
    s32 temp_a7_12;
    s32 temp_a7_14;
    s32 temp_a7_15;
    s32 temp_a7_16;
    s32 temp_a7_17;
    s32 temp_a7_18;
    s32 temp_a7_19;
    s32 temp_a7_20;
    s32 temp_a7_21;
    s32 temp_a7_22;
    s32 temp_a7_23;
    s32 temp_a7_24;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_a7_7;
    s32 temp_a7_8;
    s32 temp_a7_9;
    s32 temp_s0;
    s32 temp_s3;
    s32 temp_t0;
    s32 temp_t0_10;
    s32 temp_t0_11;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t0_6;
    s32 temp_t0_7;
    s32 temp_t0_8;
    s32 temp_t0_9;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t8;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 var_a3;
    s32 var_a3_10;
    s32 var_a3_11;
    s32 var_a3_12;
    s32 var_a3_13;
    s32 var_a3_14;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a6;
    s32 var_a7;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_a0_4;
    s64 var_a0_5;
    s64 var_a0_6;
    s64 var_a0_7;
    s64 var_a0_8;
    s64 var_a0_9;
    s64 var_t3;
    s64 var_t3_10;
    s64 var_t3_11;
    s64 var_t3_12;
    s64 var_t3_13;
    s64 var_t3_14;
    s64 var_t3_15;
    s64 var_t3_16;
    s64 var_t3_17;
    s64 var_t3_18;
    s64 var_t3_19;
    s64 var_t3_20;
    s64 var_t3_21;
    s64 var_t3_2;
    s64 var_t3_3;
    s64 var_t3_4;
    s64 var_t3_5;
    s64 var_t3_6;
    s64 var_t3_7;
    s64 var_t3_8;
    s64 var_t3_9;
    void *var_a4;
    void *var_a4_10;
    void *var_a4_11;
    void *var_a4_12;
    void *var_a4_2;
    void *var_a4_3;
    void *var_a4_4;
    void *var_a4_5;
    void *var_a4_7;
    void *var_a4_8;
    void *var_a4_9;

    temp_f5 = arg3->unk10;
    temp_f4 = arg3->unkC;
    if (temp_f4 != temp_f5) {
        temp_f7 = arg3->unk14;
        temp_f6 = arg3->unk18;
        if (temp_f7 != temp_f6) {
            temp_f3 = (fparg1 - temp_f4) / (temp_f5 - temp_f4);
            temp_a0 = arg3->unk4;
            sp18 = arg4;
            sp10 = arg5;
            sp0 = (bitwise f64) temp_f3;
            sp8 = (bitwise f64) ((fparg2 - temp_f7) / (temp_f6 - temp_f7));
            if ((arg0->unk2F4 != temp_f3) || (arg0->unk57C != temp_a0)) {
                __glOdyim_EvalPoint2(temp_a0, (u8) (arg0 + 0x2FC), second half of f64, sp0);
                arg0->unk584 = 2;
                arg0->unk57C = (s32) arg3->unk4;
                arg0->unk2F4 = (bitwise f32) sp0;
            }
            temp_a0_2 = arg3->unk8;
            if ((arg0->unk2F8 != (bitwise f32) sp8) || (arg0->unk580 != temp_a0_2)) {
                __glOdyim_EvalPoint2(temp_a0_2, second half of f64, (bitwise f32) sp8);
                arg0->unk588 = 2;
                arg0->unk580 = (s32) arg3->unk8;
                arg0->unk2F8 = (bitwise f32) sp8;
            }
            temp_a0_3 = arg3->unk4;
            temp_a4 = arg3->unk0;
            switch (temp_a0_3) {                    /* switch 1; irregular */
            default:                                /* switch 1 */
                if (temp_a4 > 0) {
                    var_t3 = sp18;
                    var_a0 = sp10;
                    do {
                        *var_t3 = 0.0f;
                        if (arg3->unk4 > 0) {
                            var_a3 = 0;
                            do {
                                temp_t1 = arg3->unk8;
                                if (temp_t1 > 0) {
                                    temp_t2 = (temp_t1 >= 1) ? temp_t1 : 1;
                                    var_a7 = temp_t2 & 3;
                                    var_a4 = arg0;
                                    if (var_a7 != 0) {
                                        do {
                                            var_a7 -= 1;
                                            var_a4 += 4;
                                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f13, $f14 */);
                                        } while (var_a7 != 0);
                                    }
                                    if ((temp_t2 >> 2) != 0) {
                                        do {
                                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f11, $f12 */);
                                            var_a4 += 0x10;
                                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f9 */);
                                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f10, $f11 */);
                                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f9 */);
                                        } while ((u32) var_a4 < (u32) ((temp_t1 * 4) + arg0));
                                    }
                                }
                                *var_t3 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f13, $f4 */);
                                var_a3 += 1;
                            } while (var_a3 < arg3->unk4);
                        }
                        var_a0 += 4;
                        var_t3 += 4;
                    } while (var_a0 != ((temp_a4 * 4) + sp10));
                }
                break;
            case 4:                                 /* switch 1 */
                temp_a0_4 = arg3->unk8;
                switch (temp_a0_4) {                /* switch 2; irregular */
                default:                            /* switch 2 */
                    if (temp_a4 > 0) {
                        var_a0_2 = sp10;
                        var_t3_2 = sp18;
loop_68:
                        temp_a7 = arg3->unk8;
                        if (temp_a7 > 0) {
                            temp_t0 = (temp_a7 >= 1) ? temp_a7 : 1;
                            var_f4 = 0.0f;
                            var_a3_2 = temp_t0 & 3;
                            var_a4_2 = arg0;
                            if (var_a3_2 != 0) {
                                do {
                                    var_a3_2 -= 1;
                                    var_a4_2 += 4;
                                    var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f13 */);
                                } while (var_a3_2 != 0);
                            }
                            if ((temp_t0 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    var_a4_2 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                                    var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                } while ((u32) var_a4_2 < (u32) ((temp_a7 * 4) + arg0));
                            }
                        } else {
                            var_f4 = 0.0f;
                        }
                        *var_t3_2 = (f32) (arg0->unk2FC * var_f4);
                        temp_a7_2 = arg3->unk8;
                        if (temp_a7_2 <= 0) {

                        } else {
                            temp_t0_2 = (temp_a7_2 >= 1) ? temp_a7_2 : 1;
                            var_a3_3 = temp_t0_2 & 3;
                            var_a4_3 = arg0;
                            if (var_a3_3 != 0) {
                                do {
                                    var_a3_3 -= 1;
                                    var_a4_3 += 4;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f14, $f15 */);
                                } while (var_a3_3 != 0);
                            }
                            if ((temp_t0_2 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f10 */);
                                    var_a4_3 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                } while ((u32) var_a4_3 < (u32) ((temp_a7_2 * 4) + arg0));
                            }
                        }
                        *var_t3_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f11, $f4 */);
                        temp_a7_3 = arg3->unk8;
                        if (temp_a7_3 > 0) {
                            temp_t0_3 = (temp_a7_3 >= 1) ? temp_a7_3 : 1;
                            var_a3_4 = temp_t0_3 & 3;
                            var_a4_4 = arg0;
                            if (var_a3_4 != 0) {
                                do {
                                    var_a3_4 -= 1;
                                    var_a4_4 += 4;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f13 */);
                                } while (var_a3_4 != 0);
                            }
                            if ((temp_t0_3 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f10 */);
                                    var_a4_4 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                } while ((u32) var_a4_4 < (u32) ((temp_a7_3 * 4) + arg0));
                            }
                        }
                        *var_t3_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f11, $f4 */);
                        temp_a7_4 = arg3->unk8;
                        if (temp_a7_4 > 0) {
                            temp_t0_4 = (temp_a7_4 >= 1) ? temp_a7_4 : 1;
                            var_a3_5 = temp_t0_4 & 3;
                            var_a4_5 = arg0;
                            if (var_a3_5 != 0) {
                                do {
                                    var_a3_5 -= 1;
                                    var_a4_5 += 4;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f13 */);
                                } while (var_a3_5 != 0);
                            }
                            if ((temp_t0_4 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f10 */);
                                    var_a4_5 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                } while ((u32) var_a4_5 < (u32) ((temp_a7_4 * 4) + arg0));
                            }
                        }
                        var_a0_2 += 4;
                        var_t3_2 += 4;
                        var_t3_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f6, $f11, $f4 */);
                        if (var_a0_2 != ((temp_a4 * 4) + sp10)) {
                            goto loop_68;
                        }
                    }
                    break;
                case 4:                             /* switch 2 */
                    if (temp_a4 > 0) {
                        temp_s3 = temp_a4 * 4;
                        var_a2 = temp_s3 + sp10;
                        temp_a7_5 = var_a2 + temp_s3;
                        var_t3_3 = sp18;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f15, $f16 */);
                            *var_t3_3 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f16, $f17 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            *var_t3_3 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f16, $f17 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            *var_t3_3 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f16, $f17 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            var_a2 += 4;
                            var_t3_3 += 4;
                            var_t3_3->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                        } while (var_a2 != temp_a7_5);
                    }
                    break;
                case 3:                             /* switch 2 */
                    if (temp_a4 > 0) {
                        temp_s0 = temp_a4 * 4;
                        var_a2_2 = temp_s0 + sp10;
                        temp_a7_6 = var_a2_2 + temp_s0;
                        var_t3_4 = sp18;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f1, $f2 */);
                            *var_t3_4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            *var_t3_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            *var_t3_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            var_a2_2 += 4;
                            var_t3_4 += 4;
                            var_t3_4->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                        } while (var_a2_2 != temp_a7_6);
                    }
                    break;
                case 2:                             /* switch 2 */
                    if (temp_a4 > 0) {
                        temp_t2_2 = temp_a4 * 4;
                        var_a2_3 = temp_t2_2 + sp10;
                        temp_a7_7 = var_a2_3 + temp_t2_2;
                        var_t3_5 = sp18;
                        do {
                            *var_t3_5 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                            *var_t3_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                            *var_t3_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                            var_a2_3 += 4;
                            var_t3_5 += 4;
                            var_t3_5->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                        } while (var_a2_3 != temp_a7_7);
                    }
                    break;
                case 1:                             /* switch 2 */
                    if (temp_a4 > 0) {
                        temp_a6 = temp_a4 * 4;
                        var_a0_3 = sp10;
                        temp_t2_3 = temp_a6 + sp10 + temp_a6 + temp_a6;
                        var_t3_6 = sp18;
                        var_a7_2 = temp_t2_3;
                        if (temp_a4 & 1) {
                            *sp18 = (f32) (arg0->unk2FC * (*sp10 * arg0->unk39C));
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                            var_a7_2 = temp_t2_3 + 4;
                            var_a0_3 = sp10 + 4;
                            var_t3_6 = sp18 + 4;
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                        }
                        var_a4_6 = var_a7_2;
                        if ((temp_a4 >> 1) != 0) {
                            do {
                                var_t3_6->unk0 = (f32) (arg0->unk2FC * (var_a0_3->unk0 * arg0->unk39C));
                                var_t3_6->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
                                var_t3_6->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
                                var_t3_6->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
                                var_t3_6->unk4 = (f32) (arg0->unk2FC * (var_a0_3->unk4 * arg0->unk39C));
                                var_t3_6->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                                var_t3_6->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                                var_a4_6 += 8;
                                var_t3_6 += 8;
                                var_a0_3 += 8;
                                var_t3_6->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            } while (var_a4_6 != (temp_t2_3 + temp_a6));
                        }
                    }
                    break;
                }
                break;
            case 3:                                 /* switch 1 */
                temp_a0_5 = arg3->unk8;
                switch (temp_a0_5) {                /* switch 3; irregular */
                default:                            /* switch 3 */
                    if (temp_a4 > 0) {
                        var_a0_4 = sp10;
                        var_t3_7 = sp18;
loop_92:
                        temp_a7_8 = arg3->unk8;
                        if (temp_a7_8 > 0) {
                            temp_t0_5 = (temp_a7_8 >= 1) ? temp_a7_8 : 1;
                            var_f4_2 = 0.0f;
                            var_a3_6 = temp_t0_5 & 3;
                            var_a4_7 = arg0;
                            if (var_a3_6 != 0) {
                                do {
                                    var_a3_6 -= 1;
                                    var_a4_7 += 4;
                                    var_f4_2 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f13 */);
                                } while (var_a3_6 != 0);
                            }
                            if ((temp_t0_5 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    var_a4_7 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                                    var_f4_2 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                } while ((u32) var_a4_7 < (u32) ((temp_a7_8 * 4) + arg0));
                            }
                        } else {
                            var_f4_2 = 0.0f;
                        }
                        *var_t3_7 = (f32) (arg0->unk2FC * var_f4_2);
                        temp_a7_9 = arg3->unk8;
                        if (temp_a7_9 <= 0) {

                        } else {
                            temp_t0_6 = (temp_a7_9 >= 1) ? temp_a7_9 : 1;
                            var_a3_7 = temp_t0_6 & 3;
                            var_a4_8 = arg0;
                            if (var_a3_7 != 0) {
                                do {
                                    var_a3_7 -= 1;
                                    var_a4_8 += 4;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                                } while (var_a3_7 != 0);
                            }
                            if ((temp_t0_6 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f10 */);
                                    var_a4_8 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                } while ((u32) var_a4_8 < (u32) ((temp_a7_9 * 4) + arg0));
                            }
                        }
                        *var_t3_7 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f11, $f4 */);
                        temp_a7_10 = arg3->unk8;
                        if (temp_a7_10 > 0) {
                            temp_t0_7 = (temp_a7_10 >= 1) ? temp_a7_10 : 1;
                            var_a3_8 = temp_t0_7 & 3;
                            var_a4_9 = arg0;
                            if (var_a3_8 != 0) {
                                do {
                                    var_a3_8 -= 1;
                                    var_a4_9 += 4;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f13 */);
                                } while (var_a3_8 != 0);
                            }
                            if ((temp_t0_7 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f10 */);
                                    var_a4_9 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                } while ((u32) var_a4_9 < (u32) ((temp_a7_10 * 4) + arg0));
                            }
                        }
                        var_a0_4 += 4;
                        var_t3_7 += 4;
                        var_t3_7->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f6, $f11, $f4 */);
                        if (var_a0_4 != ((temp_a4 * 4) + sp10)) {
                            goto loop_92;
                        }
                    }
                    break;
                case 4:                             /* switch 3 */
                    if (temp_a4 > 0) {
                        temp_t9 = temp_a4 * 4;
                        var_a2_4 = temp_t9 + sp10;
                        temp_a7_11 = var_a2_4 + temp_t9;
                        var_t3_8 = sp18;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f23, $f25 */);
                            *var_t3_8 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f25, $f27 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            *var_t3_8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f25, $f27 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            var_a2_4 += 4;
                            var_t3_8 += 4;
                            var_t3_8->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                        } while (var_a2_4 != temp_a7_11);
                    }
                    break;
                case 3:                             /* switch 3 */
                    if (temp_a4 > 0) {
                        temp_t8 = temp_a4 * 4;
                        var_a2_5 = temp_t8 + sp10;
                        temp_a7_12 = var_a2_5 + temp_t8;
                        var_t3_9 = sp18;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f5, $f6 */);
                            *var_t3_9 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f6, $f7 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                            *var_t3_9 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f6, $f7 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                            var_a2_5 += 4;
                            var_t3_9 += 4;
                            var_t3_9->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */);
                        } while (var_a2_5 != temp_a7_12);
                    }
                    break;
                case 2:                             /* switch 3 */
                    if (temp_a4 > 0) {
                        temp_t0_8 = temp_a4 * 4;
                        temp_t8_2 = temp_t0_8 + sp10;
                        var_a2_6 = temp_t8_2;
                        var_t3_10 = sp18;
                        if (temp_a4 & 1) {
                            *sp18 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */);
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f25 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */);
                            var_a2_6 = temp_t8_2 + 4;
                            var_t3_10 = sp18 + 4;
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f25 */);
                        }
                        if ((temp_a4 >> 1) != 0) {
                            do {
                                var_t3_10->unk0 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                                var_t3_10->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                                var_t3_10->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                var_t3_10->unk4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */);
                                var_t3_10->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */);
                                var_a2_6 += 8;
                                var_t3_10 += 8;
                                var_t3_10->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            } while (var_a2_6 != (temp_t8_2 + temp_t0_8));
                        }
                    }
                    break;
                case 1:                             /* switch 3 */
                    if (temp_a4 > 0) {
                        temp_a6_2 = temp_a4 * 4;
                        var_a0_5 = sp10;
                        temp_a7_13 = temp_a6_2 + sp10 + temp_a6_2;
                        var_t3_11 = sp18;
                        var_a3_9 = temp_a7_13;
                        if (temp_a4 & 1) {
                            *sp18 = (f32) (arg0->unk2FC * (*sp10 * arg0->unk39C));
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            var_a3_9 = temp_a7_13 + 4;
                            var_a0_5 = sp10 + 4;
                            var_t3_11 = sp18 + 4;
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                        }
                        if ((temp_a4 >> 1) != 0) {
                            do {
                                var_t3_11->unk0 = (f32) (arg0->unk2FC * (var_a0_5->unk0 * arg0->unk39C));
                                var_t3_11->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
                                var_t3_11->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
                                var_t3_11->unk4 = (f32) (arg0->unk2FC * (var_a0_5->unk4 * arg0->unk39C));
                                var_t3_11->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                                var_a3_9 += 8;
                                var_t3_11 += 8;
                                var_a0_5 += 8;
                                var_t3_11->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                            } while (var_a3_9 != (temp_a7_13 + temp_a6_2));
                        }
                    }
                    break;
                }
                break;
            case 2:                                 /* switch 1 */
                temp_a0_6 = arg3->unk8;
                switch (temp_a0_6) {                /* switch 4; irregular */
                default:                            /* switch 4 */
                    if (temp_a4 > 0) {
                        var_a0_6 = sp10;
                        var_t3_12 = sp18;
loop_115:
                        temp_a7_14 = arg3->unk8;
                        if (temp_a7_14 <= 0) {
                            var_f4_3 = 0.0f;
                        } else {
                            temp_t0_9 = (temp_a7_14 >= 1) ? temp_a7_14 : 1;
                            var_f4_3 = 0.0f;
                            var_a3_10 = temp_t0_9 & 3;
                            var_a4_10 = arg0;
                            if (var_a3_10 != 0) {
                                do {
                                    var_a3_10 -= 1;
                                    var_a4_10 += 4;
                                    var_f4_3 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                                } while (var_a3_10 != 0);
                            }
                            if ((temp_t0_9 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    var_a4_10 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                                    var_f4_3 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                } while ((u32) var_a4_10 < (u32) ((temp_a7_14 * 4) + arg0));
                            }
                        }
                        *var_t3_12 = (f32) (arg0->unk2FC * var_f4_3);
                        temp_a7_15 = arg3->unk8;
                        if (temp_a7_15 > 0) {
                            temp_t0_10 = (temp_a7_15 >= 1) ? temp_a7_15 : 1;
                            var_a3_11 = temp_t0_10 & 3;
                            var_a4_11 = arg0;
                            if (var_a3_11 != 0) {
                                do {
                                    var_a3_11 -= 1;
                                    var_a4_11 += 4;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                                } while (var_a3_11 != 0);
                            }
                            if ((temp_t0_10 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f10 */);
                                    var_a4_11 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
                                } while ((u32) var_a4_11 < (u32) ((temp_a7_15 * 4) + arg0));
                            }
                        }
                        var_a0_6 += 4;
                        var_t3_12 += 4;
                        var_t3_12->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f6, $f11, $f4 */);
                        if (var_a0_6 != ((temp_a4 * 4) + sp10)) {
                            goto loop_115;
                        }
                    }
                    break;
                case 4:                             /* switch 4 */
                    if (temp_a4 > 0) {
                        temp_t8_3 = temp_a4 * 4;
                        var_a2_7 = temp_t8_3 + sp10;
                        temp_a7_16 = var_a2_7 + temp_t8_3;
                        var_t3_13 = sp18;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f14, $f15 */);
                            *var_t3_13 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f15, $f16 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            var_a2_7 += 4;
                            var_t3_13 += 4;
                            var_t3_13->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
                        } while (var_a2_7 != temp_a7_16);
                    }
                    break;
                case 3:                             /* switch 4 */
                    temp_t1_2 = temp_a4 * 4;
                    if (temp_a4 > 0) {
                        temp_t2_4 = temp_t1_2 + sp10;
                        var_a2_8 = temp_t2_4;
                        var_t3_14 = sp18;
                        if (temp_a4 & 1) {
                            M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f12, $f13 */);
                            *sp18 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f13, $f14 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
                            var_a2_8 = temp_t2_4 + 4;
                            var_t3_14 = sp18 + 4;
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */);
                        }
                        if ((temp_a4 >> 1) != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f21, $f23 */);
                                var_t3_14->unk0 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f23, $f25 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                                var_t3_14->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f16, $f17 */);
                                var_t3_14->unk4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f17, $f18 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                                var_a2_8 += 8;
                                var_t3_14 += 8;
                                var_t3_14->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            } while (var_a2_8 != (temp_t2_4 + temp_t1_2));
                        }
                    }
                    break;
                case 2:                             /* switch 4 */
                    if (temp_a4 > 0) {
                        temp_a6_3 = temp_a4 * 4;
                        temp_t1_3 = temp_a6_3 + sp10;
                        var_a2_9 = temp_t1_3;
                        var_t3_15 = sp18;
                        if (temp_a4 & 1) {
                            *sp18 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            var_a2_9 = temp_t1_3 + 4;
                            var_t3_15 = sp18 + 4;
                            *sp18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                        }
                        if ((temp_a4 >> 1) != 0) {
                            do {
                                var_t3_15->unk0 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                                var_t3_15->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                var_t3_15->unk4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */);
                                var_a2_9 += 8;
                                var_t3_15 += 8;
                                var_t3_15->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                            } while (var_a2_9 != (temp_t1_3 + temp_a6_3));
                        }
                    }
                    break;
                case 1:                             /* switch 4 */
                    var_a0_7 = sp10;
                    if (temp_a4 > 0) {
                        var_a3_12 = temp_a4 & 3;
                        temp_a7_17 = temp_a4 * 4;
                        var_a2_10 = temp_a7_17 + var_a0_7;
                        var_t3_16 = sp18;
                        temp_a7_18 = var_a2_10 + temp_a7_17;
                        if (var_a3_12 != 0) {
                            do {
                                *var_t3_16 = (f32) (arg0->unk2FC * (*var_a0_7 * arg0->unk39C));
                                var_a3_12 -= 1;
                                var_a2_10 += 4;
                                var_t3_16 += 4;
                                var_a0_7 += 4;
                                var_t3_16->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                            } while (var_a3_12 != 0);
                        }
                        if ((temp_a4 >> 2) != 0) {
                            do {
                                var_t3_16->unk0 = (f32) (arg0->unk2FC * (var_a0_7->unk0 * arg0->unk39C));
                                var_t3_16->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                                var_t3_16->unk4 = (f32) (arg0->unk2FC * (var_a0_7->unk4 * arg0->unk39C));
                                var_t3_16->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                                var_t3_16->unk8 = (f32) (arg0->unk2FC * (var_a0_7->unk8 * arg0->unk39C));
                                var_t3_16->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
                                var_t3_16->unkC = (f32) (arg0->unk2FC * (var_a0_7->unkC * arg0->unk39C));
                                var_a2_10 += 0x10;
                                var_t3_16 += 0x10;
                                var_a0_7 += 0x10;
                                var_t3_16->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            } while (var_a2_10 != temp_a7_18);
                        }
                    }
                    break;
                }
                break;
            case 1:                                 /* switch 1 */
                temp_a0_7 = arg3->unk8;
                switch (temp_a0_7) {                /* switch 5; irregular */
                default:                            /* switch 5 */
                    if (temp_a4 > 0) {
                        var_a0_8 = sp10;
                        var_t3_17 = sp18;
loop_124:
                        temp_a7_19 = arg3->unk8;
                        if (temp_a7_19 <= 0) {
                            var_f4_4 = 0.0f;
                        } else {
                            temp_t0_11 = (temp_a7_19 >= 1) ? temp_a7_19 : 1;
                            var_f4_4 = 0.0f;
                            var_a3_13 = temp_t0_11 & 3;
                            var_a4_12 = arg0;
                            if (var_a3_13 != 0) {
                                do {
                                    var_a3_13 -= 1;
                                    var_a4_12 += 4;
                                    var_f4_4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f13 */);
                                } while (var_a3_13 != 0);
                            }
                            if ((temp_t0_11 >> 2) != 0) {
                                do {
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f9 */);
                                    var_a4_12 += 0x10;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                                    var_f4_4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                                } while ((u32) var_a4_12 < (u32) ((temp_a7_19 * 4) + arg0));
                            }
                        }
                        var_a0_8 += 4;
                        var_t3_17 += 4;
                        var_t3_17->unk-4 = (f32) (arg0->unk2FC * var_f4_4);
                        if (var_a0_8 != ((temp_a4 * 4) + sp10)) {
                            goto loop_124;
                        }
                    }
                    break;
                case 4:                             /* switch 5 */
                    if (temp_a4 > 0) {
                        temp_a7_20 = temp_a4 * 4;
                        temp_t0_12 = temp_a7_20 + sp10;
                        var_a2_11 = temp_t0_12;
                        var_t3_18 = sp18;
                        if (temp_a4 & 1) {
                            M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f21, $f23 */);
                            var_a2_11 = temp_t0_12 + 4;
                            var_t3_18 = sp18 + 4;
                            *sp18 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */));
                        }
                        if ((temp_a4 >> 1) != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f6, $f7 */);
                                *var_t3_18 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f0, $f1 */);
                                var_a2_11 += 8;
                                var_t3_18 += 8;
                                var_t3_18->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */));
                            } while (var_a2_11 != (temp_t0_12 + temp_a7_20));
                        }
                    }
                    break;
                case 3:                             /* switch 5 */
                    var_a6 = temp_a4 & 3;
                    if (temp_a4 > 0) {
                        temp_a7_21 = temp_a4 * 4;
                        var_a2_12 = temp_a7_21 + sp10;
                        var_t3_19 = sp18;
                        temp_a7_22 = var_a2_12 + temp_a7_21;
                        if (var_a6 != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f5, $f6 */);
                                var_a2_12 += 4;
                                var_a6 -= 1;
                                var_t3_19 += 4;
                                var_t3_19->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */));
                            } while (var_a6 != 0);
                        }
                        if ((temp_a4 >> 2) != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f23, $f25 */);
                                var_t3_19->unk0 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f17, $f18 */);
                                var_t3_19->unk4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f13, $f14 */);
                                var_t3_19->unk8 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                                var_a2_12 += 0x10;
                                var_t3_19 += 0x10;
                                var_t3_19->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */));
                            } while (var_a2_12 != temp_a7_22);
                        }
                    }
                    break;
                case 2:                             /* switch 5 */
                    if (temp_a4 > 0) {
                        var_a3_14 = temp_a4 & 3;
                        temp_a7_23 = temp_a4 * 4;
                        var_a2_13 = temp_a7_23 + sp10;
                        var_t3_20 = sp18;
                        temp_a7_24 = var_a2_13 + temp_a7_23;
                        if (var_a3_14 != 0) {
                            do {
                                var_a3_14 -= 1;
                                var_a2_13 += 4;
                                var_t3_20 += 4;
                                var_t3_20->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */));
                            } while (var_a3_14 != 0);
                        }
                        if ((temp_a4 >> 2) != 0) {
                            do {
                                var_t3_20->unk0 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */));
                                var_t3_20->unk4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */));
                                var_t3_20->unk8 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */));
                                var_a2_13 += 0x10;
                                var_t3_20 += 0x10;
                                var_t3_20->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */));
                            } while (var_a2_13 != temp_a7_24);
                        }
                    }
                    break;
                case 1:                             /* switch 5 */
                    if (temp_a4 > 0) {
                        var_a0_9 = sp10;
                        var_t3_21 = sp18;
                        if (temp_a4 & 1) {
                            var_a0_9 = sp10 + 4;
                            var_t3_21 = sp18 + 4;
                            *sp18 = (f32) (arg0->unk2FC * (*sp10 * arg0->unk39C));
                        }
                        if ((temp_a4 >> 1) != 0) {
                            do {
                                *var_t3_21 = (f32) (arg0->unk2FC * (var_a0_9->unk0 * arg0->unk39C));
                                temp_f2 = var_a0_9->unk4 * arg0->unk39C;
                                var_a0_9 += 8;
                                var_t3_21 += 8;
                                var_t3_21->unk-4 = (f32) (arg0->unk2FC * temp_f2);
                            } while (var_a0_9 != ((temp_a4 * 4) + sp10));
                        }
                    }
                    break;
                }
                break;
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x70, 0x74, 0x78, 0x7c], gap at: 0x58. */
void DoDomain2WithDerivs(void *arg0, void *arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, f32 fparg1, f32 fparg2) {
    f64 sp8;
    f64 sp0;
    f32 *temp_a2;
    f32 *temp_t0_8;
    f32 *var_a0;
    f32 *var_a0_10;
    f32 *var_a0_11;
    f32 *var_a0_12;
    f32 *var_a0_13;
    f32 *var_a0_14;
    f32 *var_a0_15;
    f32 *var_a0_16;
    f32 *var_a0_2;
    f32 *var_a0_3;
    f32 *var_a0_4;
    f32 *var_a0_5;
    f32 *var_a0_6;
    f32 *var_a0_7;
    f32 *var_a0_8;
    f32 *var_a0_9;
    f32 *var_a2;
    f32 *var_a2_2;
    f32 *var_a2_3;
    f32 *var_a2_4;
    f32 *var_a2_5;
    f32 *var_a2_6;
    f32 *var_a2_7;
    f32 *var_a3_2;
    f32 temp_f0;
    f32 temp_f11;
    f32 temp_f11_2;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f18_3;
    f32 temp_f19;
    f32 temp_f19_2;
    f32 temp_f1;
    f32 temp_f23;
    f32 temp_f29;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_10;
    f32 temp_f6_11;
    f32 temp_f6_12;
    f32 temp_f6_13;
    f32 temp_f6_14;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 temp_f6_7;
    f32 temp_f6_8;
    f32 temp_f6_9;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 var_f4;
    f32 var_f4_10;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f4_5;
    f32 var_f4_6;
    f32 var_f4_7;
    f32 var_f4_8;
    f32 var_f4_9;
    f32 var_f5;
    f32 var_f5_10;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f5_4;
    f32 var_f5_5;
    f32 var_f5_6;
    f32 var_f5_7;
    f32 var_f5_8;
    f32 var_f5_9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a3;
    s32 temp_a3_10;
    s32 temp_a3_11;
    s32 temp_a3_12;
    s32 temp_a3_13;
    s32 temp_a3_14;
    s32 temp_a3_15;
    s32 temp_a3_16;
    s32 temp_a3_17;
    s32 temp_a3_18;
    s32 temp_a3_19;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_8;
    s32 temp_a3_9;
    s32 temp_a6;
    s32 temp_a6_10;
    s32 temp_a6_11;
    s32 temp_a6_12;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 temp_a6_7;
    s32 temp_a6_8;
    s32 temp_a6_9;
    s32 temp_a7;
    s32 temp_a7_10;
    s32 temp_a7_11;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_a7_6;
    s32 temp_a7_7;
    s32 temp_a7_8;
    s32 temp_a7_9;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t0_4;
    s32 temp_t0_5;
    s32 temp_t0_6;
    s32 temp_t0_7;
    s32 temp_t8;
    s32 temp_t8_10;
    s32 temp_t8_11;
    s32 temp_t8_12;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t8_4;
    s32 temp_t8_5;
    s32 temp_t8_6;
    s32 temp_t8_7;
    s32 temp_t8_8;
    s32 temp_t8_9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 var_a0_17;
    s32 var_a3;
    s64 var_ra;
    s64 var_ra_2;
    s64 var_ra_3;
    s64 var_ra_4;
    s64 var_ra_5;
    s64 var_ra_6;
    s64 var_ra_7;
    s64 var_ra_8;
    s64 var_ra_9;
    s64 var_t1;
    s64 var_t1_10;
    s64 var_t1_11;
    s64 var_t1_12;
    s64 var_t1_13;
    s64 var_t1_14;
    s64 var_t1_15;
    s64 var_t1_16;
    s64 var_t1_17;
    s64 var_t1_18;
    s64 var_t1_19;
    s64 var_t1_20;
    s64 var_t1_21;
    s64 var_t1_2;
    s64 var_t1_3;
    s64 var_t1_4;
    s64 var_t1_5;
    s64 var_t1_6;
    s64 var_t1_7;
    s64 var_t1_8;
    s64 var_t1_9;
    s64 var_t2;
    s64 var_t2_10;
    s64 var_t2_11;
    s64 var_t2_12;
    s64 var_t2_13;
    s64 var_t2_14;
    s64 var_t2_15;
    s64 var_t2_16;
    s64 var_t2_17;
    s64 var_t2_18;
    s64 var_t2_19;
    s64 var_t2_20;
    s64 var_t2_21;
    s64 var_t2_2;
    s64 var_t2_3;
    s64 var_t2_4;
    s64 var_t2_5;
    s64 var_t2_6;
    s64 var_t2_7;
    s64 var_t2_8;
    s64 var_t2_9;
    s64 var_t3;
    s64 var_t3_10;
    s64 var_t3_11;
    s64 var_t3_12;
    s64 var_t3_13;
    s64 var_t3_14;
    s64 var_t3_15;
    s64 var_t3_16;
    s64 var_t3_17;
    s64 var_t3_18;
    s64 var_t3_19;
    s64 var_t3_20;
    s64 var_t3_21;
    s64 var_t3_2;
    s64 var_t3_3;
    s64 var_t3_4;
    s64 var_t3_5;
    s64 var_t3_6;
    s64 var_t3_7;
    s64 var_t3_8;
    s64 var_t3_9;
    void *temp_t9;
    void *temp_t9_4;
    void *var_a4;
    void *var_a4_10;
    void *var_a4_11;
    void *var_a4_2;
    void *var_a4_3;
    void *var_a4_4;
    void *var_a4_5;
    void *var_a4_6;
    void *var_a4_7;
    void *var_a4_8;
    void *var_a4_9;

    temp_f5 = arg3->unk10;
    temp_f4 = arg3->unkC;
    if (temp_f4 != temp_f5) {
        temp_f8 = arg3->unk14;
        temp_f7 = arg3->unk18;
        if (temp_f8 != temp_f7) {
            temp_f6 = (fparg1 - temp_f4) / (temp_f5 - temp_f4);
            unksp68 = arg4;
            unksp60 = arg5;
            unksp58 = arg7;
            unksp50 = arg6;
            sp8 = (bitwise f64) ((fparg2 - temp_f8) / (temp_f7 - temp_f8));
            if (arg0->unk2F4 == temp_f6) {
                sp0 = (bitwise f64) temp_f6;
                if (arg0->unk584 == 1) {
                    if (arg0->unk57C != arg3->unk4) {
                        goto block_7;
                    }
                } else {
                    goto block_7;
                }
            } else {
                sp0 = (bitwise f64) temp_f6;
block_7:
                __glOdyim_EvalPoint2(arg3->unk4, (u8) (arg0 + 0x2FC), (bitwise f32) (arg0 + 0x43C), second half of f64, (s32) sp0);
                arg0->unk584 = 1;
                arg0->unk57C = (s32) arg3->unk4;
                arg0->unk2F4 = (bitwise f32) sp0;
            }
            if (arg0->unk2F8 == (bitwise f32) sp8) {
                if (arg0->unk588 == 1) {
                    if (arg0->unk580 != arg3->unk8) {
                        goto block_13;
                    }
                } else {
                    goto block_13;
                }
            } else {
block_13:
                __glOdyim_EvalPoint2(arg3->unk8, second half of f64, (bitwise f32) sp8);
                arg0->unk588 = 1;
                arg0->unk580 = (s32) arg3->unk8;
                arg0->unk2F8 = (bitwise f32) sp8;
            }
            temp_a0 = arg3->unk4;
            temp_a6 = arg3->unk0;
            switch (temp_a0) {                      /* switch 1; irregular */
            default:                                /* switch 1 */
                if (temp_a6 > 0) {
                    temp_t9 = arg0 + 4;
                    var_t1 = unksp50;
                    var_t3 = unksp60;
                    var_ra = unksp58;
                    var_t2 = unksp68;
loop_26:
                    *var_t1 = 0.0f;
                    *var_t3 = 0.0f;
                    *var_t2 = 0.0f;
                    if (arg3->unk4 > 0) {
                        var_a3 = 1;
loop_33:
                        temp_a6_2 = arg3->unk8;
                        temp_a7 = temp_a6_2 < 2;
                        if (temp_a7 == 0) {
                            temp_t8 = (temp_a7 == 0) ? (temp_a6_2 - 1) : 1;
                            var_a4 = temp_t9;
                            if (temp_t8 & 1) {
                                var_a4 = temp_t9 + 4;
                                M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f9 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f8 */);
                            }
                            if ((temp_t8 >> 1) != 0) {
                                do {
                                    var_a4 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f10, $f12 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f10, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f9 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f8 */);
                                } while ((u32) var_a4 < (u32) ((temp_a6_2 * 4) + arg0));
                            }
                        }
                        *var_t2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f5 */);
                        *var_t3 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f5 */);
                        *var_t1 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f4 */);
                        var_a3 += 1;
                        if (var_a3 < arg3->unk4) {
                            goto loop_33;
                        }
                    }
                    var_ra += 4;
                    var_t2 += 4;
                    var_t3 += 4;
                    var_t1 += 4;
                    if (var_ra != ((temp_a6 * 4) + unksp58)) {
                        goto loop_26;
                    }
                }
                break;
            case 4:                                 /* switch 1 */
                temp_a0_2 = arg3->unk8;
                switch (temp_a0_2) {                /* switch 2; irregular */
                case 4:                             /* switch 2 */
                    if (temp_a6 > 0) {
                        temp_s7 = temp_a6 * 4;
                        var_a0 = temp_s7 + unksp58;
                        temp_a3 = var_a0 + temp_s7;
                        var_t1_2 = unksp50;
                        var_t3_2 = unksp60;
                        var_t2_2 = unksp68;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f14, $f15 */);
                            temp_f11 = M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            *var_t2_2 = (f32) (arg0->unk2FC * temp_f11);
                            *var_t3_2 = (f32) (arg0->unk43C * temp_f11);
                            M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                            *var_t1_2 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            *var_t2_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f31 */);
                            *var_t3_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f23, $f25 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            *var_t1_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f14, $f15 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            *var_t2_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f11 */);
                            *var_t3_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                            *var_t1_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f0, $f1 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            *var_t2_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f27 */);
                            *var_t3_2 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f19, $f21 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                            var_a0 += 4;
                            var_t2_2 += 4;
                            var_t1_2 += 4;
                            var_t3_2 += 4;
                            var_t1_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                        } while (var_a0 != temp_a3);
                    }
                    break;
                default:                            /* switch 2 */
                    var_ra_2 = unksp58;
                    if (temp_a6 > 0) {
                        var_t1_3 = unksp50;
                        temp_t0 = temp_a6 * 4;
                        var_t3_3 = unksp60;
                        var_a0_2 = temp_t0 + var_ra_2;
                        var_t2_3 = unksp68;
                        temp_a3_2 = var_a0_2 + temp_t0;
loop_79:
                        temp_f6_2 = *var_ra_2;
                        temp_a6_3 = arg3->unk8;
                        temp_a7_2 = temp_a6_3 < 2;
                        var_f4 = arg0->unk4DC * temp_f6_2;
                        var_a2 = var_a0_2;
                        var_f5 = arg0->unk39C * temp_f6_2;
                        if (temp_a7_2 == 0) {
                            temp_t8_2 = (temp_a7_2 == 0) ? (temp_a6_3 - 1) : 1;
                            var_a4_2 = arg0 + 4;
                            if (temp_t8_2 & 1) {
                                var_a4_2 = arg0 + 8;
                                var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                var_a2 = temp_t0 + var_a0_2;
                                var_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            }
                            if ((temp_t8_2 >> 1) != 0) {
                                do {
                                    var_a4_2 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_a2 = temp_t0 + (temp_t0 + var_a2);
                                    var_f5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_2 < (u32) ((temp_a6_3 * 4) + arg0));
                            }
                        }
                        *var_t2_3 = (f32) (arg0->unk2FC * var_f5);
                        *var_t3_3 = (f32) (arg0->unk43C * var_f5);
                        *var_t1_3 = (f32) (arg0->unk2FC * var_f4);
                        temp_f6_3 = *var_a2;
                        temp_a6_4 = arg3->unk8;
                        temp_a7_3 = temp_a6_4 < 2;
                        var_f4_2 = arg0->unk4DC * temp_f6_3;
                        var_a2_2 = temp_t0 + var_a2;
                        var_f5_2 = arg0->unk39C * temp_f6_3;
                        if (temp_a7_3 == 0) {
                            temp_t8_3 = (temp_a7_3 == 0) ? (temp_a6_4 - 1) : 1;
                            var_a4_3 = arg0 + 4;
                            if (temp_t8_3 & 1) {
                                var_f4_2 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f10 */);
                                var_a4_3 = arg0 + 8;
                                var_a2_2 += temp_t0;
                                var_f5_2 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                            }
                            if ((temp_t8_3 >> 1) != 0) {
                                do {
                                    var_a4_3 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_2 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_a2_2 = temp_t0 + (temp_t0 + var_a2_2);
                                    var_f5_2 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_3 < (u32) ((temp_a6_4 * 4) + arg0));
                            }
                        }
                        *var_t2_3 = (f32) (arg0->unk300 * var_f5_2);
                        *var_t3_3 = (f32) (arg0->unk440 * var_f5_2);
                        *var_t1_3 = (f32) (arg0->unk300 * var_f4_2);
                        temp_f6_4 = *var_a2_2;
                        temp_a6_5 = arg3->unk8;
                        temp_a7_4 = temp_a6_5 < 2;
                        var_f4_3 = arg0->unk4DC * temp_f6_4;
                        var_a2_3 = temp_t0 + var_a2_2;
                        var_f5_3 = arg0->unk39C * temp_f6_4;
                        if (temp_a7_4 == 0) {
                            temp_t8_4 = (temp_a7_4 == 0) ? (temp_a6_5 - 1) : 1;
                            var_a4_4 = arg0 + 4;
                            if (temp_t8_4 & 1) {
                                var_f4_3 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f10 */);
                                var_a4_4 = arg0 + 8;
                                var_a2_3 += temp_t0;
                                var_f5_3 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                            }
                            if ((temp_t8_4 >> 1) != 0) {
                                do {
                                    var_a4_4 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_3 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_a2_3 = temp_t0 + (temp_t0 + var_a2_3);
                                    var_f5_3 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_4 < (u32) ((temp_a6_5 * 4) + arg0));
                            }
                        }
                        *var_t2_3 = (f32) (arg0->unk304 * var_f5_3);
                        *var_t3_3 = (f32) (arg0->unk444 * var_f5_3);
                        *var_t1_3 = (f32) (arg0->unk304 * var_f4_3);
                        temp_f6_5 = *var_a2_3;
                        temp_a6_6 = arg3->unk8;
                        temp_a7_5 = temp_a6_6 < 2;
                        var_f4_4 = arg0->unk4DC * temp_f6_5;
                        var_f5_4 = arg0->unk39C * temp_f6_5;
                        if (temp_a7_5 == 0) {
                            temp_t8_5 = (temp_a7_5 == 0) ? (temp_a6_6 - 1) : 1;
                            var_a4_5 = arg0 + 4;
                            if (temp_t8_5 & 1) {
                                var_f4_4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f10 */);
                                var_a4_5 = arg0 + 8;
                                var_f5_4 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                            }
                            if ((temp_t8_5 >> 1) != 0) {
                                do {
                                    var_a4_5 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_4 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_f5_4 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_5 < (u32) ((temp_a6_6 * 4) + arg0));
                            }
                        }
                        *var_t2_3 = (f32) (arg0->unk308 * var_f5_4);
                        *var_t3_3 = (f32) (arg0->unk448 * var_f5_4);
                        var_ra_2 += 4;
                        var_a0_2 += 4;
                        var_t2_3 += 4;
                        var_t1_3 += 4;
                        var_t3_3 += 4;
                        var_t1_3->unk-4 = (f32) (arg0->unk308 * var_f4_4);
                        if (var_a0_2 != temp_a3_2) {
                            goto loop_79;
                        }
                    }
                    break;
                case 3:                             /* switch 2 */
                    if (temp_a6 > 0) {
                        temp_s5 = temp_a6 * 4;
                        var_a0_3 = temp_s5 + unksp58;
                        temp_a3_3 = var_a0_3 + temp_s5;
                        var_t1_4 = unksp50;
                        var_t3_4 = unksp60;
                        var_t2_4 = unksp68;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                            temp_f6_6 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                            *var_t2_4 = (f32) (arg0->unk2FC * temp_f6_6);
                            *var_t3_4 = (f32) (arg0->unk43C * temp_f6_6);
                            M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f5, $f6 */);
                            *var_t1_4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f1, $f2 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
                            *var_t2_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f29 */);
                            *var_t3_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f25, $f27 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            *var_t1_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f17, $f18 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                            *var_t2_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f14 */);
                            *var_t3_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f12, $f13 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                            *var_t1_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                            *var_t2_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f4 */);
                            *var_t3_4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            var_a0_3 += 4;
                            var_t2_4 += 4;
                            var_t1_4 += 4;
                            var_t3_4 += 4;
                            var_t1_4->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                        } while (var_a0_3 != temp_a3_3);
                    }
                    break;
                case 2:                             /* switch 2 */
                    if (temp_a6 > 0) {
                        temp_s2 = temp_a6 * 4;
                        var_a0_4 = temp_s2 + unksp58;
                        var_t1_5 = unksp50;
                        var_t3_5 = unksp60;
                        temp_a3_4 = var_a0_4 + temp_s2;
                        var_t2_5 = unksp68;
                        do {
                            temp_f1 = M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */);
                            *var_t2_5 = (f32) (arg0->unk2FC * temp_f1);
                            *var_t3_5 = (f32) (arg0->unk43C * temp_f1);
                            *var_t1_5 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                            *var_t2_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f17 */);
                            *var_t3_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            *var_t1_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            *var_t2_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f5 */);
                            *var_t3_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            *var_t1_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            *var_t2_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f19 */);
                            *var_t3_5 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            var_a0_4 += 4;
                            var_t2_5 += 4;
                            var_t1_5 += 4;
                            var_t3_5 += 4;
                            var_t1_5->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                        } while (var_a0_4 != temp_a3_4);
                    }
                    break;
                case 1:                             /* switch 2 */
                    if (temp_a6 > 0) {
                        temp_t0_2 = temp_a6 * 4;
                        var_ra_3 = unksp58;
                        var_t1_6 = unksp50;
                        var_t3_6 = unksp60;
                        var_a3_2 = temp_t0_2 + unksp58 + temp_t0_2 + temp_t0_2;
                        var_t2_6 = unksp68;
                        temp_t0_3 = var_a3_2 + temp_t0_2;
                        do {
                            temp_f19 = *var_ra_3 * arg0->unk39C;
                            *var_t2_6 = (f32) (arg0->unk2FC * temp_f19);
                            *var_t3_6 = (f32) (arg0->unk43C * temp_f19);
                            *var_t1_6 = (f32) (arg0->unk2FC * (*var_ra_3 * arg0->unk4DC));
                            *var_t2_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f13 */);
                            *var_t3_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            *var_t1_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                            *var_t2_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f5 */);
                            *var_t3_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                            *var_t1_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            *var_t2_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f27 */);
                            *var_t3_6 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                            var_ra_3 += 4;
                            var_a3_2 += 4;
                            var_t2_6 += 4;
                            var_t1_6 += 4;
                            var_t3_6 += 4;
                            var_t1_6->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                        } while (var_a3_2 != temp_t0_3);
                    }
                    break;
                }
                break;
            case 3:                                 /* switch 1 */
                temp_a0_3 = arg3->unk8;
                switch (temp_a0_3) {                /* switch 3; irregular */
                default:                            /* switch 3 */
                    var_ra_4 = unksp58;
                    if (temp_a6 > 0) {
                        var_t1_7 = unksp50;
                        temp_t0_4 = temp_a6 * 4;
                        var_t3_7 = unksp60;
                        var_a0_5 = temp_t0_4 + var_ra_4;
                        var_t2_7 = unksp68;
                        temp_a3_5 = var_a0_5 + temp_t0_4;
loop_86:
                        temp_f6_7 = *var_ra_4;
                        temp_a6_7 = arg3->unk8;
                        temp_a7_6 = temp_a6_7 < 2;
                        var_f4_5 = arg0->unk4DC * temp_f6_7;
                        var_a2_4 = var_a0_5;
                        var_f5_5 = arg0->unk39C * temp_f6_7;
                        if (temp_a7_6 == 0) {
                            temp_t8_6 = (temp_a7_6 == 0) ? (temp_a6_7 - 1) : 1;
                            var_a4_6 = arg0 + 4;
                            if (temp_t8_6 & 1) {
                                var_f4_5 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                var_a4_6 = arg0 + 8;
                                var_a2_4 = temp_t0_4 + var_a0_5;
                                var_f5_5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            }
                            if ((temp_t8_6 >> 1) != 0) {
                                do {
                                    var_a4_6 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_5 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_a2_4 = temp_t0_4 + (temp_t0_4 + var_a2_4);
                                    var_f5_5 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_6 < (u32) ((temp_a6_7 * 4) + arg0));
                            }
                        }
                        *var_t2_7 = (f32) (arg0->unk2FC * var_f5_5);
                        *var_t3_7 = (f32) (arg0->unk43C * var_f5_5);
                        *var_t1_7 = (f32) (arg0->unk2FC * var_f4_5);
                        temp_f6_8 = *var_a2_4;
                        temp_a7_7 = arg3->unk8;
                        temp_a6_8 = temp_a7_7 < 2;
                        var_f4_6 = arg0->unk4DC * temp_f6_8;
                        var_a2_5 = temp_t0_4 + var_a2_4;
                        var_f5_6 = arg0->unk39C * temp_f6_8;
                        if (temp_a6_8 == 0) {
                            temp_t8_7 = (temp_a6_8 == 0) ? (temp_a7_7 - 1) : 1;
                            var_a4_7 = arg0 + 4;
                            if (temp_t8_7 & 1) {
                                var_f4_6 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f10 */);
                                var_a4_7 = arg0 + 8;
                                var_a2_5 += temp_t0_4;
                                var_f5_6 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                            }
                            if ((temp_t8_7 >> 1) != 0) {
                                do {
                                    var_a4_7 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_6 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_a2_5 = temp_t0_4 + (temp_t0_4 + var_a2_5);
                                    var_f5_6 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_7 < (u32) ((temp_a7_7 * 4) + arg0));
                            }
                        }
                        *var_t2_7 = (f32) (arg0->unk300 * var_f5_6);
                        *var_t3_7 = (f32) (arg0->unk440 * var_f5_6);
                        *var_t1_7 = (f32) (arg0->unk300 * var_f4_6);
                        temp_f6_9 = *var_a2_5;
                        temp_a7_8 = arg3->unk8;
                        temp_a6_9 = temp_a7_8 < 2;
                        var_f4_7 = arg0->unk4DC * temp_f6_9;
                        var_f5_7 = arg0->unk39C * temp_f6_9;
                        if (temp_a6_9 == 0) {
                            temp_t8_8 = (temp_a6_9 == 0) ? (temp_a7_8 - 1) : 1;
                            var_a4_8 = arg0 + 4;
                            if (temp_t8_8 & 1) {
                                var_a4_8 = arg0 + 8;
                                var_f4_7 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f10 */);
                                var_f5_7 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                            }
                            if ((temp_t8_8 >> 1) != 0) {
                                do {
                                    var_a4_8 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_7 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_f5_7 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_8 < (u32) ((temp_a7_8 * 4) + arg0));
                            }
                        }
                        *var_t2_7 = (f32) (arg0->unk304 * var_f5_7);
                        *var_t3_7 = (f32) (arg0->unk444 * var_f5_7);
                        var_ra_4 += 4;
                        var_a0_5 += 4;
                        var_t2_7 += 4;
                        var_t1_7 += 4;
                        var_t3_7 += 4;
                        var_t1_7->unk-4 = (f32) (arg0->unk304 * var_f4_7);
                        if (var_a0_5 != temp_a3_5) {
                            goto loop_86;
                        }
                    }
                    break;
                case 4:                             /* switch 3 */
                    if (temp_a6 > 0) {
                        temp_s3 = temp_a6 * 4;
                        var_a0_6 = temp_s3 + unksp58;
                        temp_a3_6 = var_a0_6 + temp_s3;
                        var_t1_8 = unksp50;
                        var_t3_8 = unksp60;
                        var_t2_8 = unksp68;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f23, $f25 */);
                            temp_f18 = M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            *var_t2_8 = (f32) (arg0->unk2FC * temp_f18);
                            *var_t3_8 = (f32) (arg0->unk43C * temp_f18);
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f15, $f16 */);
                            *var_t1_8 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                            *var_t2_8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f6 */);
                            *var_t3_8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            *var_t1_8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f23, $f25 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f21 */);
                            *var_t2_8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f18 */);
                            *var_t3_8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f14, $f15 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            var_a0_6 += 4;
                            var_t2_8 += 4;
                            var_t1_8 += 4;
                            var_t3_8 += 4;
                            var_t1_8->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                        } while (var_a0_6 != temp_a3_6);
                    }
                    break;
                case 3:                             /* switch 3 */
                    if (temp_a6 > 0) {
                        temp_s2_2 = temp_a6 * 4;
                        var_a0_7 = temp_s2_2 + unksp58;
                        var_t1_9 = unksp50;
                        temp_a3_7 = var_a0_7 + temp_s2_2;
                        var_t3_9 = unksp60;
                        var_t2_9 = unksp68;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f11, $f12 */);
                            temp_f8_2 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */);
                            *var_t2_9 = (f32) (arg0->unk2FC * temp_f8_2);
                            *var_t3_9 = (f32) (arg0->unk43C * temp_f8_2);
                            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f8 */);
                            *var_t1_9 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f4 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                            *var_t2_9 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f0 */);
                            *var_t3_9 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                            *var_t1_9 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f19, $f21 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f18 */);
                            *var_t2_9 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f16 */);
                            *var_t3_9 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f14, $f15 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            var_a0_7 += 4;
                            var_t2_9 += 4;
                            var_t1_9 += 4;
                            var_t3_9 += 4;
                            var_t1_9->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                        } while (var_a0_7 != temp_a3_7);
                    }
                    break;
                case 2:                             /* switch 3 */
                    if (temp_a6 > 0) {
                        temp_t8_9 = temp_a6 * 4;
                        var_a0_8 = temp_t8_9 + unksp58;
                        var_t1_10 = unksp50;
                        var_t3_10 = unksp60;
                        var_t2_10 = unksp68;
                        temp_a3_8 = var_a0_8 + temp_t8_9;
                        do {
                            temp_f13 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                            *var_t2_10 = (f32) (arg0->unk2FC * temp_f13);
                            *var_t3_10 = (f32) (arg0->unk43C * temp_f13);
                            *var_t1_10 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                            *var_t2_10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f3 */);
                            *var_t3_10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f3 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            *var_t1_10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                            *var_t2_10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f19, $f17 */);
                            *var_t3_10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
                            var_a0_8 += 4;
                            var_t2_10 += 4;
                            var_t1_10 += 4;
                            var_t3_10 += 4;
                            var_t1_10->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                        } while (var_a0_8 != temp_a3_8);
                    }
                    break;
                case 1:                             /* switch 3 */
                    if (temp_a6 > 0) {
                        temp_a3_9 = temp_a6 * 4;
                        var_t1_11 = unksp50;
                        var_ra_5 = unksp58;
                        var_t3_11 = unksp60;
                        var_a2_6 = temp_a3_9 + unksp58 + temp_a3_9;
                        var_t2_11 = unksp68;
                        temp_a3_10 = var_a2_6 + temp_a3_9;
                        do {
                            temp_f16 = *var_ra_5 * arg0->unk39C;
                            *var_t2_11 = (f32) (arg0->unk2FC * temp_f16);
                            *var_t3_11 = (f32) (arg0->unk43C * temp_f16);
                            *var_t1_11 = (f32) (arg0->unk2FC * (*var_ra_5 * arg0->unk4DC));
                            *var_t2_11 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f10 */);
                            *var_t3_11 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */);
                            *var_t1_11 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
                            *var_t2_11 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f2 */);
                            *var_t3_11 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                            var_ra_5 += 4;
                            var_a2_6 += 4;
                            var_t2_11 += 4;
                            var_t1_11 += 4;
                            var_t3_11 += 4;
                            var_t1_11->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */);
                        } while (var_a2_6 != temp_a3_10);
                    }
                    break;
                }
                break;
            case 2:                                 /* switch 1 */
                temp_a0_4 = arg3->unk8;
                switch (temp_a0_4) {                /* switch 4; irregular */
                default:                            /* switch 4 */
                    var_ra_6 = unksp58;
                    if (temp_a6 > 0) {
                        var_t1_12 = unksp50;
                        temp_t0_5 = temp_a6 * 4;
                        var_t3_12 = unksp60;
                        var_a0_9 = temp_t0_5 + var_ra_6;
                        var_t2_12 = unksp68;
                        temp_a3_11 = var_a0_9 + temp_t0_5;
loop_109:
                        temp_f6_10 = *var_ra_6;
                        temp_a6_10 = arg3->unk8;
                        temp_a7_9 = temp_a6_10 < 2;
                        var_f4_8 = arg0->unk4DC * temp_f6_10;
                        var_a2_7 = var_a0_9;
                        var_f5_8 = arg0->unk39C * temp_f6_10;
                        if (temp_a7_9 == 0) {
                            temp_t8_10 = (temp_a7_9 == 0) ? (temp_a6_10 - 1) : 1;
                            var_a4_9 = arg0 + 4;
                            if (temp_t8_10 & 1) {
                                var_a4_9 = arg0 + 8;
                                var_f4_8 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                var_a2_7 = temp_t0_5 + var_a0_9;
                                var_f5_8 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            }
                            if ((temp_t8_10 >> 1) != 0) {
                                do {
                                    var_a4_9 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_8 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_a2_7 = temp_t0_5 + (temp_t0_5 + var_a2_7);
                                    var_f5_8 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_9 < (u32) ((temp_a6_10 * 4) + arg0));
                            }
                        }
                        *var_t2_12 = (f32) (arg0->unk2FC * var_f5_8);
                        *var_t3_12 = (f32) (arg0->unk43C * var_f5_8);
                        *var_t1_12 = (f32) (arg0->unk2FC * var_f4_8);
                        temp_f6_11 = *var_a2_7;
                        temp_a6_11 = arg3->unk8;
                        temp_a7_10 = temp_a6_11 < 2;
                        var_f4_9 = arg0->unk4DC * temp_f6_11;
                        var_f5_9 = arg0->unk39C * temp_f6_11;
                        if (temp_a7_10 == 0) {
                            temp_t8_11 = (temp_a7_10 == 0) ? (temp_a6_11 - 1) : 1;
                            var_a4_10 = arg0 + 4;
                            if (temp_t8_11 & 1) {
                                var_f4_9 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f8, $f10 */);
                                var_a4_10 = arg0 + 8;
                                var_f5_9 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
                            }
                            if ((temp_t8_11 >> 1) != 0) {
                                do {
                                    var_a4_10 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_9 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_f5_9 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_10 < (u32) ((temp_a6_11 * 4) + arg0));
                            }
                        }
                        *var_t2_12 = (f32) (arg0->unk300 * var_f5_9);
                        *var_t3_12 = (f32) (arg0->unk440 * var_f5_9);
                        var_ra_6 += 4;
                        var_a0_9 += 4;
                        var_t2_12 += 4;
                        var_t1_12 += 4;
                        var_t3_12 += 4;
                        var_t1_12->unk-4 = (f32) (arg0->unk300 * var_f4_9);
                        if (var_a0_9 != temp_a3_11) {
                            goto loop_109;
                        }
                    }
                    break;
                case 4:                             /* switch 4 */
                    if (temp_a6 > 0) {
                        temp_t9_2 = temp_a6 * 4;
                        var_a0_10 = temp_t9_2 + unksp58;
                        var_t1_13 = unksp50;
                        var_t3_13 = unksp60;
                        temp_a3_12 = var_a0_10 + temp_t9_2;
                        var_t2_13 = unksp68;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f4 */);
                            temp_f0 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
                            *var_t2_13 = (f32) (arg0->unk2FC * temp_f0);
                            *var_t3_13 = (f32) (arg0->unk43C * temp_f0);
                            M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f25 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f27, $f29 */);
                            *var_t1_13 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f25 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f17, $f18 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                            *var_t2_13 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f14 */);
                            *var_t3_13 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f10, $f11 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f9 */);
                            var_a0_10 += 4;
                            var_t2_13 += 4;
                            var_t1_13 += 4;
                            var_t3_13 += 4;
                            var_t1_13->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                        } while (var_a0_10 != temp_a3_12);
                    }
                    break;
                case 3:                             /* switch 4 */
                    if (temp_a6 > 0) {
                        temp_t9_3 = temp_a6 * 4;
                        var_t1_14 = unksp50;
                        var_a0_11 = temp_t9_3 + unksp58;
                        var_t3_14 = unksp60;
                        temp_a3_13 = var_a0_11 + temp_t9_3;
                        var_t2_14 = unksp68;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                            temp_f6_12 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                            *var_t2_14 = (f32) (arg0->unk2FC * temp_f6_12);
                            *var_t3_14 = (f32) (arg0->unk43C * temp_f6_12);
                            M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f5, $f6 */);
                            *var_t1_14 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f1, $f2 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
                            *var_t2_14 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f29 */);
                            *var_t3_14 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f25, $f27, $f29 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f25, $f27 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            var_a0_11 += 4;
                            var_t2_14 += 4;
                            var_t1_14 += 4;
                            var_t3_14 += 4;
                            var_t1_14->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                        } while (var_a0_11 != temp_a3_13);
                    }
                    break;
                case 2:                             /* switch 4 */
                    if (temp_a6 > 0) {
                        temp_t0_6 = temp_a6 * 4;
                        var_t1_15 = unksp50;
                        var_t3_15 = unksp60;
                        var_a0_12 = temp_t0_6 + unksp58;
                        var_t2_15 = unksp68;
                        temp_a3_14 = var_a0_12 + temp_t0_6;
                        do {
                            temp_f9 = M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
                            *var_t2_15 = (f32) (arg0->unk2FC * temp_f9);
                            *var_t3_15 = (f32) (arg0->unk43C * temp_f9);
                            *var_t1_15 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */));
                            M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                            *var_t2_15 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f31 */);
                            *var_t3_15 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f27, $f29, $f31 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            var_a0_12 += 4;
                            var_t2_15 += 4;
                            var_t1_15 += 4;
                            var_t3_15 += 4;
                            var_t1_15->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                        } while (var_a0_12 != temp_a3_14);
                    }
                    break;
                case 1:                             /* switch 4 */
                    if (temp_a6 > 0) {
                        var_t1_16 = unksp50;
                        var_t3_16 = unksp60;
                        var_ra_7 = unksp58;
                        var_t2_16 = unksp68;
                        if (temp_a6 & 1) {
                            temp_f3 = *unksp58 * arg0->unk39C;
                            *unksp68 = (f32) (arg0->unk2FC * temp_f3);
                            *unksp60 = (f32) (arg0->unk43C * temp_f3);
                            *unksp50 = (f32) (arg0->unk2FC * (*unksp58 * arg0->unk4DC));
                            *unksp68 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f27 */);
                            *unksp60 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                            var_t1_16 = unksp50 + 4;
                            var_t2_16 = unksp68 + 4;
                            var_ra_7 = unksp58 + 4;
                            var_t3_16 = unksp60 + 4;
                            *unksp50 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f19 */);
                        }
                        if ((temp_a6 >> 1) != 0) {
                            do {
                                temp_f7_2 = var_ra_7->unk0 * arg0->unk39C;
                                var_t2_16->unk0 = (f32) (arg0->unk2FC * temp_f7_2);
                                var_t3_16->unk0 = (f32) (arg0->unk43C * temp_f7_2);
                                var_t1_16->unk0 = (f32) (arg0->unk2FC * (var_ra_7->unk0 * arg0->unk4DC));
                                var_t2_16->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f1 */);
                                var_t3_16->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f0, $f1 */);
                                var_t1_16->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f25, $f27 */);
                                temp_f18_2 = var_ra_7->unk4 * arg0->unk39C;
                                var_t2_16->unk4 = (f32) (arg0->unk2FC * temp_f18_2);
                                var_t3_16->unk4 = (f32) (arg0->unk43C * temp_f18_2);
                                var_t1_16->unk4 = (f32) (arg0->unk2FC * (var_ra_7->unk4 * arg0->unk4DC));
                                var_t2_16->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f12 */);
                                var_t3_16->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
                                var_ra_7 += 8;
                                var_t2_16 += 8;
                                var_t1_16 += 8;
                                var_t3_16 += 8;
                                var_t1_16->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                            } while (var_ra_7 != ((temp_a6 * 4) + unksp58));
                        }
                    }
                    break;
                }
                break;
            case 1:                                 /* switch 1 */
                temp_a0_5 = arg3->unk8;
                switch (temp_a0_5) {                /* switch 5; irregular */
                default:                            /* switch 5 */
                    var_ra_8 = unksp58;
                    if (temp_a6 > 0) {
                        var_t1_17 = unksp50;
                        temp_t0_7 = temp_a6 * 4;
                        temp_t9_4 = arg0 + 4;
                        var_t3_17 = unksp60;
                        var_a0_13 = temp_t0_7 + var_ra_8;
                        var_t2_17 = unksp68;
                        temp_a3_15 = var_a0_13 + temp_t0_7;
loop_116:
                        temp_f6_13 = *var_ra_8;
                        temp_a6_12 = arg3->unk8;
                        temp_a7_11 = temp_a6_12 < 2;
                        var_f4_10 = arg0->unk4DC * temp_f6_13;
                        var_f5_10 = arg0->unk39C * temp_f6_13;
                        if (temp_a7_11 == 0) {
                            temp_t8_12 = (temp_a7_11 == 0) ? (temp_a6_12 - 1) : 1;
                            var_a4_11 = temp_t9_4;
                            if (temp_t8_12 & 1) {
                                var_a4_11 = temp_t9_4 + 4;
                                var_f4_10 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                var_f5_10 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                            }
                            if ((temp_t8_12 >> 1) != 0) {
                                do {
                                    var_a4_11 += 8;
                                    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f11 */);
                                    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f9, $f10 */);
                                    var_f4_10 = M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f8 */);
                                    var_f5_10 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
                                } while ((u32) var_a4_11 < (u32) ((temp_a6_12 * 4) + arg0));
                            }
                        }
                        *var_t2_17 = (f32) (arg0->unk2FC * var_f5_10);
                        *var_t3_17 = (f32) (arg0->unk43C * var_f5_10);
                        var_ra_8 += 4;
                        var_a0_13 += 4;
                        var_t2_17 += 4;
                        var_t1_17 += 4;
                        var_t3_17 += 4;
                        var_t1_17->unk-4 = (f32) (arg0->unk2FC * var_f4_10);
                        if (var_a0_13 != temp_a3_15) {
                            goto loop_116;
                        }
                    }
                    break;
                case 4:                             /* switch 5 */
                    if (temp_a6 > 0) {
                        temp_a3_16 = temp_a6 * 4;
                        var_t1_18 = unksp50;
                        var_t3_18 = unksp60;
                        var_a0_14 = temp_a3_16 + unksp58;
                        var_t2_18 = unksp68;
                        temp_a3_17 = var_a0_14 + temp_a3_16;
                        do {
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f15, $f16 */);
                            temp_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f13, $f14 */);
                            *var_t2_18 = (f32) (arg0->unk2FC * temp_f12);
                            *var_t3_18 = (f32) (arg0->unk43C * temp_f12);
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                            M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                            var_a0_14 += 4;
                            var_t2_18 += 4;
                            var_t1_18 += 4;
                            var_t3_18 += 4;
                            var_t1_18->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */));
                        } while (var_a0_14 != temp_a3_17);
                    }
                    break;
                case 3:                             /* switch 5 */
                    temp_a3_18 = temp_a6 * 4;
                    if (temp_a6 > 0) {
                        var_t1_19 = unksp50;
                        temp_t0_8 = temp_a3_18 + unksp58;
                        var_t3_19 = unksp60;
                        var_t2_19 = unksp68;
                        var_a0_15 = temp_t0_8;
                        if (temp_a6 & 1) {
                            M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f1, $f2 */);
                            temp_f29 = M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */);
                            *unksp68 = (f32) (arg0->unk2FC * temp_f29);
                            *unksp60 = (f32) (arg0->unk43C * temp_f29);
                            M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f27, $f29 */);
                            var_a0_15 = temp_t0_8 + 4;
                            var_t1_19 = unksp50 + 4;
                            var_t2_19 = unksp68 + 4;
                            var_t3_19 = unksp60 + 4;
                            *unksp50 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f25 */));
                        }
                        if ((temp_a6 >> 1) != 0) {
                            do {
                                M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f17, $f18 */);
                                temp_f14 = M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */);
                                var_t2_19->unk0 = (f32) (arg0->unk2FC * temp_f14);
                                var_t3_19->unk0 = (f32) (arg0->unk43C * temp_f14);
                                M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f13, $f14 */);
                                *var_t1_19 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */));
                                M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f9, $f10 */);
                                temp_f6_14 = M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
                                var_t2_19->unk4 = (f32) (arg0->unk2FC * temp_f6_14);
                                var_t3_19->unk4 = (f32) (arg0->unk43C * temp_f6_14);
                                M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f5, $f6 */);
                                var_a0_15 += 8;
                                var_t2_19 += 8;
                                var_t1_19 += 8;
                                var_t3_19 += 8;
                                var_t1_19->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f4 */));
                            } while (var_a0_15 != (temp_t0_8 + temp_a3_18));
                        }
                    }
                    break;
                case 2:                             /* switch 5 */
                    if (temp_a6 > 0) {
                        temp_a3_19 = temp_a6 * 4;
                        var_t1_20 = unksp50;
                        temp_a2 = temp_a3_19 + unksp58;
                        var_t3_20 = unksp60;
                        var_t2_20 = unksp68;
                        var_a0_16 = temp_a2;
                        if (temp_a6 & 1) {
                            temp_f19_2 = M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                            *unksp68 = (f32) (arg0->unk2FC * temp_f19_2);
                            *unksp60 = (f32) (arg0->unk43C * temp_f19_2);
                            var_a0_16 = temp_a2 + 4;
                            var_t1_20 = unksp50 + 4;
                            var_t2_20 = unksp68 + 4;
                            var_t3_20 = unksp60 + 4;
                            *unksp50 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f16 */));
                        }
                        if ((temp_a6 >> 1) != 0) {
                            do {
                                temp_f13_2 = M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f15 */);
                                var_t2_20->unk0 = (f32) (arg0->unk2FC * temp_f13_2);
                                var_t3_20->unk0 = (f32) (arg0->unk43C * temp_f13_2);
                                *var_t1_20 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f10 */));
                                temp_f3_2 = M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */);
                                var_t2_20->unk4 = (f32) (arg0->unk2FC * temp_f3_2);
                                var_t3_20->unk4 = (f32) (arg0->unk43C * temp_f3_2);
                                var_a0_16 += 8;
                                var_t2_20 += 8;
                                var_t1_20 += 8;
                                var_t3_20 += 8;
                                var_t1_20->unk-4 = (f32) (arg0->unk2FC * M2C_ERROR(/* unknown instruction: madd.s $f29, $f29, $f31, $f0 */));
                            } while (var_a0_16 != (temp_a2 + temp_a3_19));
                        }
                    }
                    break;
                case 1:                             /* switch 5 */
                    if (temp_a6 > 0) {
                        var_t1_21 = unksp50;
                        var_a0_17 = temp_a6 & 3;
                        var_t3_21 = unksp60;
                        var_ra_9 = unksp58;
                        var_t2_21 = unksp68;
                        if (var_a0_17 != 0) {
                            do {
                                temp_f14_2 = *var_ra_9 * arg0->unk39C;
                                *var_t2_21 = (f32) (arg0->unk2FC * temp_f14_2);
                                *var_t3_21 = (f32) (arg0->unk43C * temp_f14_2);
                                temp_f11_2 = *var_ra_9 * arg0->unk4DC;
                                var_ra_9 += 4;
                                var_a0_17 -= 1;
                                var_t2_21 += 4;
                                var_t1_21 += 4;
                                var_t3_21 += 4;
                                var_t1_21->unk-4 = (f32) (arg0->unk2FC * temp_f11_2);
                            } while (var_a0_17 != 0);
                        }
                        if ((temp_a6 >> 2) != 0) {
                            do {
                                temp_f16_2 = var_ra_9->unk0 * arg0->unk39C;
                                var_t2_21->unk0 = (f32) (arg0->unk2FC * temp_f16_2);
                                var_t3_21->unk0 = (f32) (arg0->unk43C * temp_f16_2);
                                var_t1_21->unk0 = (f32) (arg0->unk2FC * (var_ra_9->unk0 * arg0->unk4DC));
                                temp_f9_2 = var_ra_9->unk4 * arg0->unk39C;
                                var_t2_21->unk4 = (f32) (arg0->unk2FC * temp_f9_2);
                                var_t3_21->unk4 = (f32) (arg0->unk43C * temp_f9_2);
                                var_t1_21->unk4 = (f32) (arg0->unk2FC * (var_ra_9->unk4 * arg0->unk4DC));
                                temp_f2 = var_ra_9->unk8 * arg0->unk39C;
                                var_t2_21->unk8 = (f32) (arg0->unk2FC * temp_f2);
                                var_t3_21->unk8 = (f32) (arg0->unk43C * temp_f2);
                                var_t1_21->unk8 = (f32) (arg0->unk2FC * (var_ra_9->unk8 * arg0->unk4DC));
                                temp_f23 = var_ra_9->unkC * arg0->unk39C;
                                var_t2_21->unkC = (f32) (arg0->unk2FC * temp_f23);
                                var_t3_21->unkC = (f32) (arg0->unk43C * temp_f23);
                                temp_f18_3 = var_ra_9->unkC * arg0->unk4DC;
                                var_ra_9 += 0x10;
                                var_t2_21 += 0x10;
                                var_t1_21 += 0x10;
                                var_t3_21 += 0x10;
                                var_t1_21->unk-4 = (f32) (arg0->unk2FC * temp_f18_3);
                            } while (var_ra_9 != ((temp_a6 * 4) + unksp58));
                        }
                    }
                    break;
                }
                break;
            }
        }
    }
}

void DoEvalCoord2(void *arg0, void *arg3, f32 fparg1, f32 fparg2) {
    ? sp5C0;
    ? sp5B0;
    ? sp5A0;
    ? sp590;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_ra_3;
    s32 var_s1;
    void *temp_a7;
    void *temp_s0;

    var_a7 = 3;
    var_a4 = 0x163;
    var_a2 = 0;
    temp_a6 = arg0 + 0x6E84;
    do {
        var_a7 -= 1;
        var_a4 -= 1;
        temp_v0 = var_a2 + sp;
        temp_at = *(var_a2 + temp_a6);
        var_a2 += 4;
        *temp_v0 = temp_at;
    } while (var_a7 != 0);
    temp_a7 = sp + 4;
    do {
        *(var_a2 + sp) = *(var_a2 + temp_a6);
        *(var_a2 + temp_a7) = *(var_a2 + (temp_a6 + 4));
        *(var_a2 + (sp + 8)) = *(var_a2 + (temp_a6 + 8));
        *(var_a2 + (sp + 0xC)) = *(var_a2 + (temp_a6 + 0xC));
        *(var_a2 + (sp + 0x10)) = *(var_a2 + (temp_a6 + 0x10));
        *(var_a2 + (sp + 0x14)) = *(var_a2 + (temp_a6 + 0x14));
        var_a4 -= 8;
        *(var_a2 + (sp + 0x18)) = *(var_a2 + (temp_a6 + 0x18));
        temp_v1 = var_a2 + (sp + 0x1C);
        temp_v0_2 = *(var_a2 + (temp_a6 + 0x1C));
        var_a2 += 0x20;
        *temp_v1 = temp_v0_2;
    } while (var_a4 > 0);
    // Error: negative shift count
    // At instruction: bgez $a1, .L0d97ca34
    if (M2C_ERROR()) {
        if (var_a2 & 0x100) {
            temp_s0 = arg3 + 0x34;
            __glOdysseyDoEvalCoord1(sp, (bitwise f32) ((s64) arg0->unk700 << 0x28), (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x709C), (bitwise f32) temp_s0, (bitwise f32) &sp590, (bitwise f32) &sp5A0, arg0->unk7108, fparg1, fparg2);
            __glOdysseyDoEvalCoord1(temp_s0, (bitwise f32) &sp590, (bitwise f32) &sp5A0);
            __glOdysseyDoEvalCoord1(arg0, (bitwise f32) (arg3 + 0x14), (bitwise f32) &sp590, (bitwise f32) &sp5A0);
            var_a0 = arg3->unk0 | 0x24;
            arg3->unk0 = var_a0;
            var_s1 = 4;
            goto block_7;
        }
        temp_a1 = var_a2 & 0x80;
        var_s1 = -1;
        if (temp_a1 != 0) {
            __glOdysseyDoEvalCoord1(sp, (bitwise f32) temp_a1, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x7074), (bitwise f32) (arg3 + 0x34), (bitwise f32) &sp5B0, (bitwise f32) &sp5C0, arg0->unk7104, fparg1, fparg2);
            __glOdysseyDoEvalCoord1(arg0, (bitwise f32) (arg3 + 0x14), (bitwise f32) &sp5B0, (bitwise f32) &sp5C0);
            var_a0 = arg3->unk0 | 0x14;
            arg3->unk0 = var_a0;
            var_s1 = 3;
block_7:
            var_a2 = arg0->unk714;
        }
    } else {
        temp_a1_2 = var_a2 & 4;
        if (temp_a1_2 != 0) {
            __glOdysseyDoEvalCoord1(sp, (bitwise f32) temp_a1_2, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x6FAC), (bitwise f32) (arg3 + 0x14), arg0->unk70F0, (bitwise f32) temp_a6, temp_a7, fparg1, fparg2);
            var_a0 = arg3->unk0 | 4;
            arg3->unk0 = var_a0;
            var_a2 = arg0->unk714;
        }
        temp_a1_3 = var_a2 & 0x80;
        var_s1 = -1;
        if (var_a2 & 0x100) {
            __glOdysseyDoEvalCoord1(sp, (bitwise f32) temp_a1_3, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x709C), (bitwise f32) (arg3 + 0x34), (bitwise f32) arg0->unk7108);
            var_a0 = arg3->unk0 | 0x20;
            arg3->unk0 = var_a0;
            var_s1 = 4;
            var_a2 = arg0->unk714;
        } else if (temp_a1_3 != 0) {
            __glOdysseyDoEvalCoord1(sp, (bitwise f32) temp_a1_3, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x7074), (bitwise f32) (arg3 + 0x34), (bitwise f32) arg0->unk7104);
            var_a0 = arg3->unk0 | 0x10;
            arg3->unk0 = var_a0;
            var_s1 = 3;
            var_a2 = arg0->unk714;
        }
    }
    if (arg0->unkC95 != 0) {
        var_a1 = var_a2 & 0x40;
        if (var_a2 & 2) {
            __glOdysseyDoEvalCoord1(sp, (bitwise f32) var_a1, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x6F84), (bitwise f32) (arg3 + 4), arg0->unk70EC);
            var_a0 = arg3->unk0 | 2;
            arg3->unk0 = var_a0;
            goto block_12;
        }
    } else {
        var_a1 = var_a2 & 0x40;
        if (var_a2 & 1) {
            __glOdysseyDoEvalCoord1(sp, (bitwise f32) var_a1, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x6F5C), (bitwise f32) (arg3 + 4), arg0->unk70E8);
            var_a0 = arg3->unk0 | 1;
            arg3->unk0 = var_a0;
block_12:
            var_a2 = arg0->unk714;
            var_a1 = var_a2 & 0x40;
        }
    }
    if (var_a1 != 0) {
        __glOdysseyDoEvalCoord1(sp, (bitwise f32) var_a1, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x704C), (bitwise f32) (arg3 + 0x24), arg0->unk7100);
        var_a0 = arg3->unk0 | 8;
        arg3->unk0 = var_a0;
        goto block_15;
    }
    if (var_a2 & 0x20) {
        __glOdysseyDoEvalCoord1(sp, (bitwise f32) var_a1, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x7024), (bitwise f32) (arg3 + 0x24), arg0->unk70FC);
        var_a0 = arg3->unk0 | 8;
        arg3->unk0 = var_a0;
        arg3->unk30 = (f32) arg0->unkDD8;
        goto block_15;
    }
    temp_a1_4 = var_a2 & 0x10;
    if (temp_a1_4 != 0) {
        __glOdysseyDoEvalCoord1(sp, (bitwise f32) temp_a1_4, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x6FFC), (bitwise f32) (arg3 + 0x24), arg0->unk70F8);
        arg3->unk2C = 0.0f;
        var_a0 = arg3->unk0 | 8;
        arg3->unk0 = var_a0;
        arg3->unk30 = (f32) arg0->unkDD8;
        goto block_15;
    }
    var_a1_2 = var_a0 & 1;
    if (var_a2 & 8) {
        __glOdysseyDoEvalCoord1(sp, (bitwise f32) var_a1_2, (bitwise f32) var_a2, (bitwise f32) (arg0 + 0x6FD4), (bitwise f32) (arg3 + 0x24), arg0->unk70F4);
        arg3->unk2C = 0.0f;
        arg3->unk28 = 0.0f;
        var_a0 = arg3->unk0 | 8;
        arg3->unk0 = var_a0;
        arg3->unk30 = (f32) arg0->unkDD8;
block_15:
        var_a1_2 = var_a0 & 1;
    }
    var_ra = var_a0 & 2;
    if (var_a1_2 != 0) {
        sub_0d970000(arg3 + 4, var_a1_2);
        var_a0 = arg3->unk0;
        var_ra = var_a0 & 2;
    }
    var_ra_2 = var_a0 & 4;
    if (var_ra != 0) {
        arg0->unk17F4->unk614(arg3 + 4);
        var_a0 = arg3->unk0;
        var_ra_2 = var_a0 & 4;
    }
    var_ra_3 = var_a0 & 8;
    if (var_ra_2 != 0) {
        arg0->unk17F4->unk644(arg3 + 0x14);
        var_ra_3 = arg3->unk0 & 8;
    }
    if (var_ra_3 != 0) {
        arg0->unk17F4->unk6C4(arg3 + 0x24);
    }
    if (var_s1 != 3) {
        if (var_s1 == 4) {
            sub_0d970000(arg3 + 0x34);
        }
    } else {
        arg0->unk17F4->unk554(arg3 + 0x34);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x90, 0x94, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4], gap at: 0x98. */
void __glOdysseyDoEvalCoord2(void *arg0, f32 fparg1, f64 fparg2) {
    ? sp48;

    unksp98 = fparg2;
    __glOdyim_EvalPoint2(2, (u8) sp);
    __glOdysseyDoEvalCoord1(arg0);
    __glOdyim_EvalPoint2((s32) arg0, (u8) sp);
}

void __glOdysseyEvalMesh1Line(void *arg0, s64 arg1, s64 arg2) {
    s64 sp48;
    s32 temp_a4;
    s64 var_s0;

    sp48 = arg1;
    temp_a4 = arg0->unk798;
    if (temp_a4 != 0) {
        __glOdyim_EvalPoint2(1, (u8) sp, (bitwise f32) temp_a4);
        sub_0d970000((? *)3);
        var_s0 = sp48;
        if (arg2 >= sp48) {
loop_4:
            if (arg0->unk798 != var_s0) {
                M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f20 */);
            }
            __glOdyim_EvalPoint2((s32) arg0);
            var_s0 += 1;
            if ((arg2 + 1) != var_s0) {
                goto loop_4;
            }
        }
        arg0->unk17F4->unk2C();
        __glOdyim_EvalPoint2((s32) arg0, (u8) sp);
    }
}

void __glOdysseyEvalMesh1Point(void *arg0, s64 arg1, s64 arg2) {
    s64 sp48;
    s32 temp_a4;
    s64 var_s0;

    sp48 = arg1;
    temp_a4 = arg0->unk798;
    if (temp_a4 != 0) {
        __glOdyim_EvalPoint2(1, (u8) sp, (bitwise f32) temp_a4);
        sub_0d970000(NULL);
        var_s0 = sp48;
        if (arg2 >= sp48) {
loop_4:
            if (arg0->unk798 != var_s0) {
                M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f14, $f20 */);
            }
            __glOdyim_EvalPoint2((s32) arg0);
            var_s0 += 1;
            if ((arg2 + 1) != var_s0) {
                goto loop_4;
            }
        }
        arg0->unk17F4->unk2C();
        __glOdyim_EvalPoint2((s32) arg0, (u8) sp);
    }
}

void sendChange(void *arg0, s32 *arg1) {
    s64 sp8;
    s64 sp0;
    s32 var_a3;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_ra_3;

    sp8 = arg0->unk1B8;
    var_a3 = *arg1;
    sp0 = arg0->unk1B0;
    if (var_a3 & 1) {
        arg0->unk17F4->unk5DC(arg1 + 4, var_a3);
        var_a3 = *arg1;
    }
    var_ra = var_a3 & 4;
    if (var_a3 & 8) {
        arg0->unk17F4->unk6C4(arg1 + 0x24);
        var_a3 = *arg1;
        var_ra = var_a3 & 4;
    }
    var_ra_2 = var_a3 & 0x10;
    if (var_ra != 0) {
        arg0->unk17F4->unk644(arg1 + 0x14);
        var_a3 = *arg1;
        var_ra_2 = var_a3 & 0x10;
    }
    if (var_ra_2 != 0) {
        arg0->unk17F4->unk554(arg1 + 0x34);
        goto block_8;
    }
    var_ra_3 = var_a3 & 1;
    if (var_a3 & 0x20) {
        arg0->unk17F4->unk574(arg1 + 0x34);
block_8:
        var_ra_3 = *arg1 & 1;
    }
    if ((var_ra_3 != 0) && (arg0->unk700 & 0x80)) {
        arg0->unk2F18(arg0);
        arg0->unk1BC = unkspC;
        arg0->unk1B8 = (f32) sp8;
        arg0->unk1B4 = unksp4;
        arg0->unk1B0 = (f32) sp0;
        arg0->unk2F18(arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x60, 0x64, 0x68, 0x6c, 0x78, 0x7c, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4], gap at: 0x40. */
void __glOdysseyEvalMesh2Fill(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0) {
    s64 spA8;
    s64 sp10;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 var_s2;
    s64 var_a0;
    s64 var_s1_2;
    s64 var_s6;
    void *var_s1;
    void *var_s3;

    temp_a6 = arg0->unk7A8;
    unksp40 = arg4;
    unksp48 = arg3;
    if (temp_a6 != 0) {
        temp_a7 = arg0->unk7B8;
        sp10 = arg2;
        if (temp_a7 != 0) {
            var_s1 = &arg_sp0 - 0x78;
            __glOdyim_EvalPoint2(2, (u8) var_s1, (bitwise f32) temp_a6, (f64) temp_a7);
            var_s6 = arg1;
            if (arg1 < unksp48) {
                var_a0 = arg1 + 1;
                unksp38 = unksp40 >= sp10;
                unksp50 = sp10 - 1;
loop_5:
                temp_a6_2 = arg0->unk7A8;
                if (temp_a6_2 == var_s6) {
                    if (temp_a6_2 != var_a0) {
                        goto block_7;
                    }
                    goto block_21;
                }
                M2C_ERROR(/* unknown instruction: madd.s $f24, $f24, $f25, $f28 */);
                if (temp_a6_2 == var_a0) {
block_21:
                    spA8 = var_a0;
                } else {
block_7:
                    spA8 = var_a0;
                    M2C_ERROR(/* unknown instruction: madd.s $f22, $f22, $f23, $f28 */);
                }
                arg0->unk17F4->unk1C(8);
                var_s2 = 0;
                var_s1_2 = unksp40;
                var_s3 = &arg_sp0 + 0xFFFEEF88;
                if (unksp38 != 0) {
loop_14:
                    if (arg0->unk7B8 != var_s1_2) {
                        M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f26 */);
                    }
                    if (var_s2 < 0x400) {
                        if (arg1 != var_s6) {
                            __glOdysseyEvalMesh1Point((s64) arg0, (s64) var_s3);
                        } else {
                            __glOdysseyDoEvalCoord1(arg0);
                        }
                        __glOdysseyDoEvalCoord1(arg0);
                    } else {
                        __glOdysseyDoEvalCoord1(arg0);
                        __glOdysseyDoEvalCoord1(arg0);
                    }
                    var_s1_2 -= 1;
                    var_s3 += 0x44;
                    var_s2 += 1;
                    if (unksp50 != var_s1_2) {
                        goto loop_14;
                    }
                }
                sub_0d970000();
                var_s6 += 1;
                var_a0 = spA8 + 1;
                if (unksp48 != var_s6) {
                    goto loop_5;
                }
                var_s1 = &arg_sp0 - 0x78;
            }
            __glOdyim_EvalPoint2((s32) arg0, (u8) var_s1);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0xb8, 0xbc, 0xd0, 0xd4, 0xe8, 0xec], gap at: 0xc8. */
void __glOdysseyEvalMesh2Point(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp98;
    s64 sp90;
    ? sp48;
    s32 temp_a3;
    s32 temp_a6;
    s64 var_s0;
    s64 var_s4;

    temp_a6 = arg0->unk7A8;
    if (temp_a6 != 0) {
        temp_a3 = arg0->unk7B8;
        sp98 = arg4;
        unkspD8 = arg1;
        if (temp_a3 != 0) {
            __glOdyim_EvalPoint2(2, (u8) sp, (bitwise f32) temp_a3, (f64) temp_a6);
            sub_0d970000(NULL);
            var_s4 = unkspD8;
            if (arg3 >= unkspD8) {
                sp90 = (sp98 - arg2) + 1;
loop_6:
                var_s0 = arg2;
                if (arg0->unk7A8 != var_s4) {
                    M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f24 */);
                }
                if (sp98 >= arg2) {
loop_12:
                    if (arg0->unk7B8 != var_s0) {
                        M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f22 */);
                    }
                    __glOdysseyDoEvalCoord1(arg0);
                    var_s0 += 1;
                    if ((sp98 + 1) != var_s0) {
                        goto loop_12;
                    }
                }
                var_s4 += 1;
                if ((arg3 + 1) != var_s4) {
                    goto loop_6;
                }
            }
            arg0->unk17F4->unk2C();
            __glOdyim_EvalPoint2((s32) arg0, (u8) sp);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x20, 0x24, 0xb8, 0xbc, 0xc0, 0xc4, 0xc8, 0xcc, 0xd8, 0xdc], gap at: 0x30. */
void __glOdysseyEvalMesh2Line(void *arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, ? arg_sp0) {
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 var_s5_2;
    s64 var_s1;
    s64 var_s1_2;
    s64 var_s4;
    s64 var_s5;
    s64 var_s7;
    void *var_s6;
    void *var_s6_2;
    void *var_s6_3;

    temp_a7 = arg0->unk7A8;
    unksp68 = arg4;
    unksp48 = arg3;
    unksp60 = arg2;
    unksp78 = arg1;
    if (temp_a7 != 0) {
        temp_a6 = arg0->unk7B8;
        if (temp_a6 != 0) {
            __glOdyim_EvalPoint2(2, (u8) (&arg_sp0 - 0x78), (bitwise f32) temp_a6, (f64) temp_a7);
            var_s7 = unksp78;
            if (unksp78 < unksp48) {
                unksp28 = unksp60 + 1;
                unksp58 = unksp68 + 1;
                unksp40 = unksp68 >= unksp60;
                unksp50 = unksp78 + 1;
                unksp30 = (unksp68 - unksp60) + 1;
                unksp38 = (s64) (&arg_sp0 + 0xFFFEEF88 + 0x44);
                var_s6 = &arg_sp0 + 0xFFFF0000;
loop_7:
                var_s4 = unksp28;
                var_s5 = 0;
                if (arg0->unk7A8 == unksp50) {
                    if (arg0->unk7A8 != var_s7) {
                        goto block_9;
                    }
                } else {
                    M2C_ERROR(/* unknown instruction: madd.s $f28, $f28, $f29, $f30 */);
                    if (arg0->unk7A8 == var_s7) {

                    } else {
block_9:
                        M2C_ERROR(/* unknown instruction: madd.s $f24, $f24, $f25, $f30 */);
                    }
                }
                var_s1 = unksp60;
                var_s6_2 = var_s6 - 0x1078;
                if (unksp40 != 0) {
                    unksp70 = unksp38;
loop_16:
                    temp_a6_2 = arg0->unk7B8;
                    if (temp_a6_2 == var_s1) {
                        if (temp_a6_2 != var_s4) {
                            goto block_18;
                        }
                    } else {
                        M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f26 */);
                        if (temp_a6_2 == var_s4) {

                        } else {
block_18:
                            M2C_ERROR(/* unknown instruction: madd.s $f22, $f22, $f23, $f26 */);
                        }
                    }
                    arg0->unk17F4->unk1C(3);
                    if (unksp68 != var_s1) {
                        if (var_s5 < 0x3FF) {
                            if (unksp78 != var_s7) {
                                __glOdysseyEvalMesh1Point((s64) arg0, unksp70);
                            } else {
                                __glOdysseyDoEvalCoord1(arg0);
                            }
                        } else {
                            __glOdysseyDoEvalCoord1(arg0);
                        }
                    }
                    if (var_s5 < 0x400) {
                        if ((unksp78 != var_s7) && (unksp60 != var_s1)) {
                            __glOdysseyEvalMesh1Point((s64) arg0, (s64) var_s6_2);
                        } else {
                            __glOdysseyDoEvalCoord1(arg0);
                        }
                        __glOdysseyDoEvalCoord1(arg0);
                    } else {
                        __glOdysseyDoEvalCoord1(arg0);
                        __glOdysseyDoEvalCoord1(arg0);
                    }
                    sub_0d970000();
                    var_s6_2 += 0x44;
                    var_s1 += 1;
                    var_s4 += 1;
                    var_s5 += 1;
                    unksp70 += 0x44;
                    if (unksp58 != var_s1) {
                        goto loop_16;
                    }
                    var_s5 = unksp30;
                }
                var_s7 += 1;
                var_s6 = &arg_sp0 + 0xFFFF0000;
                unksp50 += 1;
                if (unksp48 != var_s7) {
                    goto loop_7;
                }
                var_s7 = unksp48;
            } else {
                unksp40 = unksp68 >= unksp60;
                var_s5 = (s64) sp8;
            }
            var_s5_2 = var_s5 - 1;
            if (arg0->unk7A8 == var_s7) {

            } else {
                M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f30 */);
            }
            sub_0d980000(3);
            var_s1_2 = unksp68;
            if (unksp40 != 0) {
                var_s6_3 = &arg_sp0 + 0xFFFEEF88 + (var_s5_2 * 0x44);
loop_43:
                if (arg0->unk7B8 == var_s1_2) {
                    if (var_s5_2 < 0) {
                        goto block_41;
                    }
                    goto block_48;
                }
                M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f15, $f26 */);
                if (var_s5_2 >= 0) {
block_48:
                    if (var_s5_2 < 0x400) {
                        __glOdysseyEvalMesh1Point((s64) arg0, (s64) var_s6_3);
                    } else {
                        goto block_41;
                    }
                } else {
block_41:
                    __glOdysseyDoEvalCoord1(arg0);
                }
                var_s1_2 -= 1;
                var_s6_3 -= 0x44;
                var_s5_2 -= 1;
                if ((unksp60 - 1) != var_s1_2) {
                    goto loop_43;
                }
            }
            arg0->unk17F4->unk2C();
            __glOdyim_EvalPoint2((s32) arg0, (u8) (&arg_sp0 - 0x78));
        }
    }
}
