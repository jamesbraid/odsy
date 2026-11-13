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
Error occurred while processing instruction: bgez $v0, .L0d9e39cc

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
Error occurred while processing instruction: bgez $a7, .L0d9e3a0c

Error occurred while processing instruction: c.lt.d $f6, $f15

Error occurred while processing instruction: c.lt.d $f12, $f1

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
Error occurred while processing instruction: bgez $v0, .L0d9e39cc

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
Error occurred while processing instruction: bgez $a7, .L0d9e3a0c

Error occurred while processing instruction: c.lt.d $f6, $f15

Error occurred while processing instruction: c.lt.d $f12, $f1

Tried to use a double-precision instruction with odd-numbered float register $f15
Tried to use a double-precision instruction with odd-numbered float register $f1
Tried to use a double-precision instruction with odd-numbered float register $f15
Tried to use a double-precision instruction with odd-numbered float register $f1
? __glInvertTransposeMatrix(f32 *, void *, void *, void *, void *, void *, void *, void *, f32, f32, f32, f32); /* extern */
? __glOdyim_PolygonOffsetEXT(f32, f32);             /* extern */
? __glSetError(?, s32, s32, s32);                   /* extern */
? __glim_ClipPlane(s32, s32, s32);                  /* extern */
? __glim_DepthRange(f64, ?);                        /* extern */
? __glim_Frustum();                                 /* extern */
? __glim_LoadIdentity(s32);                         /* extern */
? __glim_LoadMatrixd();                             /* extern */
? __glim_LoadMatrixf(s32);                          /* extern */
? __glim_MatrixMode();                              /* extern */
? __glim_MultMatrixd(s32, ?);                       /* extern */
? __glim_MultMatrixf(s32);                          /* extern */
? __glim_Ortho(s32);                                /* extern */
? __glim_PopMatrix(s32, u32, s32, s32, s32, s32, s32, void *); /* extern */
? __glim_PushMatrix(s32, void *, s32, s32, u32, s32, s32, s32); /* extern */
? __glim_Rotated(s32);                              /* extern */
? __glim_Rotatef(s32);                              /* extern */
? __glim_Scaled(s32);                               /* extern */
? __glim_Scalef(s32);                               /* extern */
? __glim_Scissor(s32);                              /* extern */
? __glim_Translated(s32);                           /* extern */
? __glim_Translatef(s32);                           /* extern */
? __glim_Viewport(s32);                             /* extern */
? isnan(f64, ?);                                    /* extern */
void __glOdysseyValidateDepthRange(void *arg0, f64, ?, f64, f64, f32, f32, f32, f32); /* static */
extern s32 HQ2_READ_FIFO;

void __glOdysseyUpdateTransform(void *arg0, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    s64 spC0;
    f32 spB0;
    f32 sp58;
    f32 temp_f12;
    f32 temp_f12_4;
    f32 temp_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f64 temp_f12_2;
    f64 temp_f12_3;
    f64 temp_f6;
    f64 temp_f9;
    f64 var_f10;
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    f64 var_f7;
    f64 var_f8;
    f64 var_f8_2;
    f64 var_f9;
    s32 *temp_at;
    s32 *temp_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_at_2;
    s32 temp_ra;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_a5;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a7;
    void *temp_s1;
    void *var_a3;

    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a2 = arg0->unk741C;
    temp_s1 = arg0->unk7428;
    if (arg0->unk19DCC != 0) {
        if (temp_a2->unk40 != 4) {
            goto block_2;
        }
        temp_a6 = arg0->unk7414;
        var_a5 = 2;
        if (temp_a6->unkC != 0.0f) {
            goto block_40;
        }
        var_a5 = 2;
        if (temp_a6->unk1C == 0.0f) {
            var_a5 = 2;
            if (temp_a6->unk2C == 0.0f) {
                goto block_2;
            }
        }
block_40:
        var_a0 = 0x16;
        var_a2 = 0;
        temp_a3 = temp_a6 + 0xB0;
        do {
            var_a5 -= 1;
            var_a0 -= 1;
            temp_at = var_a2 + sp;
            temp_ra = *(var_a2 + temp_a3);
            var_a2 += 4;
            *temp_at = temp_ra;
        } while (var_a5 != 0);
        temp_a7 = sp + 4;
        temp_a5 = sp + 8;
        temp_a6_2 = temp_a3 + 8;
        do {
            *(var_a2 + sp) = *(var_a2 + temp_a3);
            *(var_a2 + temp_a7) = *(var_a2 + (temp_a3 + 4));
            var_a0 -= 4;
            *(var_a2 + temp_a5) = *(var_a2 + temp_a6_2);
            temp_v0 = var_a2 + (sp + 0xC);
            temp_at_2 = *(var_a2 + (temp_a3 + 0xC));
            var_a2 += 0x10;
            *temp_v0 = temp_at_2;
        } while (var_a0 > 0);
        temp_a2_2 = arg0->unk7414 + 0xB0;
        spC0 = (s64) temp_a2_2;
        __glInvertTransposeMatrix(&sp58, sp, temp_a2_2, temp_a3, sp, temp_a5, temp_a6_2, temp_a7, 0.0f, 0.0f, 0.0f, 1.0f);
        M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f5, $f16 */);
        M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f5, $f19 */);
        M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f4, $f17 */);
        M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f4, $f18 */);
        var_f15 = M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f6, $f16 */);
        var_f14 = M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f6, $f17 */);
        var_f19 = sp58;
        M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f5, $f16 */);
        var_f18 = sp58.unk20;
        var_f17 = sp58.unk34;
        M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f5, $f19 */);
        M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f4, $f16 */);
        var_f16 = sp58.unk30;
        M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f4, $f18 */);
        spB0.unkC = var_f15;
        spB0.unk8 = var_f14;
        spB0.unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f6, $f17 */);
        spB0 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f6, $f16 */);
        var_f5 = -1.0;
        var_f6 = -1.0 / (f64) spB8;
        var_f7 = 0.0;
        var_f4 = 0.0;
        arg0->unk19DCD = 1;
        var_a3 = arg0 + 0x10000;
        var_f8 = (f64) spBC * var_f6;
    } else {
block_2:
        arg0->unk19DCD = 0;
        if ((f64) temp_a2->unk8 == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) {
            if ((f64) temp_a2->unkC == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) {
                if (((f64) temp_a2->unk18 == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) && ((f64) temp_a2->unk1C == GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))) {
                    var_a3 = arg0 + 0x10000;
                    temp_f12 = temp_a2->unk28;
                    var_f5 = arg0->unk16600;
                    var_f4 = second half of f64;
                    if (temp_f12 == (f32) arg0->unk165F8) {
                        if (temp_a2->unk2C == (f32) var_f5) {
                            var_f8 = arg0->unk16608;
                            if ((temp_a2->unk38 == (f32) var_f8) && (var_f7 = arg0->unk16610, var_f6 = second half of f64, var_f14 = (f32) var_f7, (temp_a2->unk3C == var_f14))) {

                            } else {
                                goto block_60;
                            }
                        } else {
                            goto block_60;
                        }
                    } else {
block_60:
                        var_f8 = (f64) temp_a2->unk38;
                        var_f5 = (f64) (second half of f64);
                        var_f4 = second half of f64;
                        var_f6 = (f64) temp_f12;
                        var_f7 = second half of f64;
                    }
                } else {
                    goto block_12;
                }
            } else {
                goto block_12;
            }
        } else {
block_12:
            M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f9, $f9 */);
            var_f5 = sqrt(M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f11, $f11 */));
            var_f4 = second half of f64;
            M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f8, $f8 */);
            temp_f6 = sqrt(M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f12, $f12 */));
            if ((f64) temp_a2->unk28 < (second half of f64)) {

            }
            if ((f64) temp_a2->unk2C < (second half of f64)) {
                var_f5 = -var_f5;
                var_f4 = second half of f64;
            }
            var_f7 = (f64) temp_a2->unk3C;
            var_f6 = second half of f64;
            var_a3 = arg0 + 0x10000;
            var_f8 = (f64) temp_a2->unk38;
        }
    }
    if (var_f5 == var_f4) {
        var_f10 = 8589901824.0;
        if (var_f6 == var_f4) {
            var_f9 = -8589901824.0;
            var_f8_2 = second half of f64;
        } else {
            var_f9 = -(var_f8 - var_f7) / var_f6;
            var_f8_2 = second half of f64;
            var_f10 = -((second half of f64) + var_f7) / var_f6;
        }
    } else {
        temp_f9 = var_f6 + var_f5;
        temp_f12_2 = -var_f7 / var_f5;
        temp_a0 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc1 */);
        if (temp_f9 == var_f4) {
            var_f9 = -((second half of f64) - var_f7) / (var_f6 - var_f5);
            var_f8_2 = second half of f64;
            if (temp_a0 != 0) {
                if (var_f9 <= temp_f12_2) {
                    var_f9 = 8589901824.0;
                    var_f8_2 = second half of f64;
                    var_f10 = 8589901823.0;
                } else {
                    var_f10 = var_f9 + 8589901824.0;
                }
            } else if (temp_f12_2 <= var_f9) {
                var_f9 = -8589901824.0;
                var_f8_2 = second half of f64;
                var_f10 = -8589901823.0;
            } else {
                var_f10 = var_f9 + -8589901824.0;
            }
        } else {
            var_f10 = -((second half of f64) + var_f7) / temp_f9;
            if ((second half of f64) == var_f4) {
                if (temp_a0 != 0) {
                    var_f10 = second half of f64;
                    if (var_f10 <= temp_f12_2) {
                        var_f9 = 8589901824.0;
                        var_f8_2 = second half of f64;
                        var_f10 = 8589901823.0;
                    } else {
                        var_f9 = (second half of f64) + 8589901824.0;
                        var_f8_2 = second half of f64;
                    }
                } else {
                    var_f10 = second half of f64;
                    if (temp_f12_2 <= var_f10) {
                        var_f9 = -8589901824.0;
                        var_f8_2 = second half of f64;
                        var_f10 = -8589901823.0;
                    } else {
                        var_f9 = (second half of f64) + -8589901824.0;
                        var_f8_2 = second half of f64;
                    }
                }
            } else {
                var_f9 = -((second half of f64) - var_f7) / (second half of f64);
                var_f8_2 = second half of f64;
                if (temp_a0 != 0) {
                    temp_a0_2 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc7 */);
                    if (var_f9 <= temp_f12_2) {
                        if (temp_a0_2 != 0) {
                            var_f10 = 8589901823.0;
                            var_f9 = second half of f64;
                            var_f8_2 = second half of f64;
                        } else {
                            var_f10 = var_f9 + 8589901824.0;
                        }
                    } else if (temp_a0_2 != 0) {
                        var_f9 = var_f10 + 8589901824.0;
                        var_f8_2 = second half of f64;
                    }
                } else if (temp_f12_2 <= var_f10) {
                    if (temp_f12_2 <= var_f9) {
                        var_f9 = -8589901824.0;
                        var_f8_2 = second half of f64;
                        var_f10 = -8589901823.0;
                    } else {
                        var_f10 = var_f9 + -8589901824.0;
                    }
                } else if (temp_f12_2 <= var_f9) {
                    var_f9 = var_f10 + -8589901824.0;
                    var_f8_2 = second half of f64;
                }
            }
        }
    }
    var_a3->unk65C8 = (f64) -var_f10;
    temp_f12_3 = -var_f9;
    var_a3->unk65D0 = temp_f12_3;
    var_a3->unk65F8 = var_f6;
    var_a3->unk6600 = var_f5;
    var_a3->unk6608 = var_f8_2;
    var_a3->unk6610 = var_f7;
    if (((f64) temp_s1->unkC != var_f4) || (var_f14 = (f32) (f64) temp_s1->unk1C, var_f15 = second half of f64, ((f64) var_f14 != var_f4)) || (var_f15 = (f32) (f64) temp_s1->unk2C, var_f14 = second half of f64, ((f64) var_f15 != var_f4))) {
        var_a2_2 = 1;
    } else {
        var_a2_2 = 0;
    }
    var_a3->unk6740 = 0;
    var_a3->unk673C = var_a2_2;
    __glOdysseyValidateDepthRange(arg0, temp_f12_3, second half of f64, (f64) var_f14, (f64) var_f15, var_f16, var_f17, var_f18, var_f19);
    temp_f12_4 = arg0->unk1F4;
    temp_f13 = arg0->unk1F8;
    if ((temp_f12_4 != 0.0f) || (temp_f13 != 0.0f)) {
        __glOdyim_PolygonOffsetEXT(temp_f12_4, temp_f13);
    }
}

void __glOdysseyValidateMatrixComb(void *arg0) {
    f64 var_f6;
    s32 temp_a0_3;
    s32 temp_a5;
    s32 temp_a7;
    s32 var_a2;
    s32 var_a2_2;
    u8 temp_a0_2;
    void *temp_a0;
    void *temp_s1;

    arg0->unk9588 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f13 */);
    arg0->unk958C = (s32) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
    arg0->unk9590 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f11 */);
    arg0->unk9594 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
    arg0->unk9598 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f7, $f8 */);
    arg0->unk959C = (s32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
    temp_s1 = arg0->unk7414 + 0xB0;
    arg0->unk95A0 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */);
    arg0->unk95A4 = (s32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
    if (arg0->unk16740 != 0) {
        __glOdysseyUpdateTransform(arg0->unk6B8, (bitwise f64) arg0->unk6B8);
    }
    M2C_ERROR(/* unknown instruction: madd.d $f4, $f4, $f5, $f6 */);
    M2C_ERROR(/* unknown instruction: msub.d $f19, $f19, $f10, $f21 */);
    arg0->unk95C8 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f17, $f17, $f8, $f21 */);
    arg0->unk95A8 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f18, $f18, $f5, $f19 */);
    M2C_ERROR(/* unknown instruction: nmsub.d $f14, $f14, $f8, $f17 */);
    M2C_ERROR(/* unknown instruction: msub.d $f16, $f16, $f10, $f17 */);
    arg0->unk95CC = (f32) (second half of f64);
    arg0->unk95AC = (f32) M2C_ERROR(/* unknown instruction: madd.d $f15, $f15, $f5, $f16 */);
    temp_a0 = arg0->unk741C;
    if ((temp_a0->unk28 == (f32) (second half of f64)) && (temp_a0->unk2C == (f32) (second half of f64))) {
        M2C_ERROR(/* unknown instruction: madd.d $f15, $f15, $f8, $f18 */);
        M2C_ERROR(/* unknown instruction: madd.d $f17, $f17, $f11, $f18 */);
        M2C_ERROR(/* unknown instruction: nmsub.d $f14, $f14, $f8, $f17 */);
        M2C_ERROR(/* unknown instruction: madd.d $f7, $f7, $f8, $f16 */);
        M2C_ERROR(/* unknown instruction: msub.d $f15, $f15, $f10, $f17 */);
        M2C_ERROR(/* unknown instruction: madd.d $f13, $f13, $f11, $f16 */);
        M2C_ERROR(/* unknown instruction: msub.d $f6, $f6, $f11, $f7 */);
        var_f6 = second half of f64;
        arg0->unk95D0 = (f32) (second half of f64);
        M2C_ERROR(/* unknown instruction: msub.d $f7, $f7, $f10, $f13 */);
        arg0->unk95B0 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f12, $f12, $f5, $f15 */);
    } else {
        M2C_ERROR(/* unknown instruction: msub.d $f15, $f15, $f10, $f16 */);
        arg0->unk95B0 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f14, $f14, $f5, $f15 */);
        arg0->unk95D0 = (f32) M2C_ERROR(/* unknown instruction: nmsub.d $f13, $f13, $f8, $f16 */);
        M2C_ERROR(/* unknown instruction: msub.d $f6, $f6, $f11, $f7 */);
        var_f6 = second half of f64;
        M2C_ERROR(/* unknown instruction: msub.d $f7, $f7, $f10, $f12 */);
    }
    arg0->unk95D4 = (f32) var_f6;
    arg0->unk95B4 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f23, $f23, $f5, $f7 */);
    arg0->unk95B8 = (f32) temp_s1->unkC;
    arg0->unk95BC = (f32) temp_s1->unk1C;
    arg0->unk95C0 = (f32) temp_s1->unk2C;
    arg0->unk95C4 = (f32) temp_s1->unk3C;
    temp_a0_2 = arg0->unk19DB4;
    if (arg0->unk19DC0 != 0) {
        if (temp_a0_2 != 0) {
            var_a2 = (arg0->unk19DB8 != 0x1102) ? 2 : 3;
        } else {
            var_a2 = 0;
        }
        arg0->unk19DBC = var_a2;
    }
    if (temp_a0_2 != 0) {
        arg0->unk16738 = 0;
        temp_a5 = arg0->unk19DBC;
        temp_a0_3 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc2 */);
        if (arg0->unk19DB8 != 0x1101) {
            if ((temp_a0_3 != 0) && ((f64) temp_s1->unk1C == GLUE_F64((second half of f64), 0U)) && ((f64) temp_s1->unk2C == GLUE_F64((second half of f64), 0U))) {
                arg0->unk16738 = 1;
            }
            goto block_16;
        }
        if ((temp_a0_3 != 0) && (var_a2_2 = 1, ((f64) temp_s1->unk1C == GLUE_F64((second half of f64), 0U))) && ((f64) temp_s1->unk2C == GLUE_F64((second half of f64), 0U))) {
            arg0->unk16738 = 1;
            if ((f64) fabsf(arg0->unk19D90) < (f64) fabsf(temp_s1->unk3C)) {
                arg0->unk19DBC = 1;
                if (temp_a5 != 1) {
                    goto block_34;
                }
            } else {
                arg0->unk19DBC = 2;
                goto block_33;
            }
        } else {
            arg0->unk19DBC = 2;
block_33:
            var_a2_2 = 2;
            if (temp_a5 != 2) {
block_34:
                arg0->unk19DC0 = 1U;
                arg0->unk16964 = (s32) (arg0->unk16964 | 0x400);
                goto block_16;
            }
        }
    } else {
block_16:
        var_a2_2 = arg0->unk19DBC;
    }
    switch (var_a2_2) {                             /* irregular */
    case 2:
    case 3:
        arg0->unk16988 = (s32) (arg0->unk16988 | 0x10);
        break;
    case 0:
    case 1:
        arg0->unk16988 = (s32) (arg0->unk16988 & ~0x10);
        break;
    }
    temp_a7 = arg0->unk9698 | 1;
    arg0->unk9698 = temp_a7;
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x01000000);
    arg0->unk9698 = (s32) (((M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc5 */) * 2) & 2) | (temp_a7 & ~2));
    *(s32 *)0x1018 = 2;
    arg0->unkA224 = 0U;
    HQ2_READ_FIFO = 0x34008000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x9080BDC8;
    HQ2_READ_FIFO = arg0->unk9588;
    HQ2_READ_FIFO = arg0->unk958C;
    HQ2_READ_FIFO = arg0->unk9590;
    HQ2_READ_FIFO = arg0->unk9594;
    HQ2_READ_FIFO = arg0->unk9598;
    HQ2_READ_FIFO = arg0->unk959C;
    HQ2_READ_FIFO = arg0->unk95A0;
    HQ2_READ_FIFO = arg0->unk95A4;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95A8;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95AC;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95B0;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95B4;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95B8;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95BC;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95C0;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95C4;
    arg0->unkA224 = 0x10U;
    HQ2_READ_FIFO = 0x34008000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x908091DF;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95C8;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95CC;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95D0;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk95D4;
    arg0->unkA224 = 0U;
    HQ2_READ_FIFO = 0x34008000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
}

void __glOdysseyValidateMatrixMV(void *arg0) {
    void *temp_a5;

    temp_a5 = arg0->unk7414;
    arg0->unk95D8 = (s32) temp_a5->unk0;
    arg0->unk95DC = (s32) temp_a5->unk10;
    arg0->unk95E0 = (s32) temp_a5->unk20;
    arg0->unk95E4 = (s32) temp_a5->unk30;
    arg0->unk95E8 = (s32) temp_a5->unk4;
    arg0->unk95EC = (s32) temp_a5->unk14;
    arg0->unk95F0 = (s32) temp_a5->unk24;
    arg0->unk95F4 = (s32) temp_a5->unk34;
    arg0->unk95F8 = (s32) temp_a5->unk8;
    arg0->unk95FC = (s32) temp_a5->unk18;
    arg0->unk9600 = (s32) temp_a5->unk28;
    arg0->unk9604 = (s32) temp_a5->unk38;
    arg0->unk9608 = (s32) temp_a5->unkC;
    arg0->unk960C = (s32) temp_a5->unk1C;
    arg0->unk9610 = (s32) temp_a5->unk2C;
    arg0->unkA224 = 0x24U;
    arg0->unk9614 = (s32) temp_a5->unk3C;
    HQ2_READ_FIFO = 0x34008000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x9080BDC8;
    HQ2_READ_FIFO = arg0->unk95D8;
    HQ2_READ_FIFO = arg0->unk95DC;
    HQ2_READ_FIFO = arg0->unk95E0;
    HQ2_READ_FIFO = arg0->unk95E4;
    HQ2_READ_FIFO = arg0->unk95E8;
    HQ2_READ_FIFO = arg0->unk95EC;
    HQ2_READ_FIFO = arg0->unk95F0;
    HQ2_READ_FIFO = arg0->unk95F4;
    HQ2_READ_FIFO = arg0->unk95F8;
    HQ2_READ_FIFO = arg0->unk95FC;
    HQ2_READ_FIFO = arg0->unk9600;
    HQ2_READ_FIFO = arg0->unk9604;
    HQ2_READ_FIFO = arg0->unk9608;
    HQ2_READ_FIFO = arg0->unk960C;
    HQ2_READ_FIFO = arg0->unk9610;
    HQ2_READ_FIFO = arg0->unk9614;
    arg0->unkA224 = 0U;
    HQ2_READ_FIFO = 0x34008000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
}

void __glOdysseyValidateMatrixNorm(void *arg0) {
    f32 temp_f5;
    f32 var_f4;
    void *temp_a3;
    void *var_a1;

    var_a1 = arg0->unk7414;
    if (var_a1->unk10C != 0) {
        arg0->unk2EB4(var_a1);
        var_a1 = arg0->unk7414;
    }
    // Error: negative shift count
    // At instruction: bgez $v0, .L0d9e39cc
    if (M2C_ERROR()) {
        var_f4 = 1.1415927f;
    } else {
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9e3a0c
        if (M2C_ERROR()) {
            M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f7, $f7 */);
            var_f4 = (f32) (1.0 / (f64) sqrtf(M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f5 */)));
        }
    }
    temp_f5 = var_a1->unk58;
    if ((f64) var_f4 != 1.0) {
        arg0->unk9618 = (f32) (temp_f5 * var_f4);
        arg0->unk961C = (f32) (temp_a3->unk10 * var_f4);
        arg0->unk9620 = (f32) (temp_a3->unk20 * var_f4);
        arg0->unk9624 = (f32) (temp_a3->unk30 * var_f4);
        arg0->unk9628 = (f32) (temp_a3->unk4 * var_f4);
        arg0->unk962C = (f32) (temp_a3->unk14 * var_f4);
        arg0->unk9630 = (f32) (temp_a3->unk24 * var_f4);
        arg0->unk9634 = (f32) (temp_a3->unk34 * var_f4);
        arg0->unk9638 = (f32) (temp_a3->unk8 * var_f4);
        arg0->unk963C = (f32) (temp_a3->unk18 * var_f4);
        arg0->unk9640 = (f32) (temp_a3->unk28 * var_f4);
        arg0->unk9644 = (f32) (temp_a3->unk38 * var_f4);
    } else {
        arg0->unk9618 = temp_f5;
        arg0->unk961C = (f32) temp_a3->unk10;
        arg0->unk9620 = (f32) temp_a3->unk20;
        arg0->unk9624 = (f32) temp_a3->unk30;
        arg0->unk9628 = (f32) temp_a3->unk4;
        arg0->unk962C = (f32) temp_a3->unk14;
        arg0->unk9630 = (f32) temp_a3->unk24;
        arg0->unk9634 = (f32) temp_a3->unk34;
        arg0->unk9638 = (f32) temp_a3->unk8;
        arg0->unk963C = (f32) temp_a3->unk18;
        arg0->unk9640 = (f32) temp_a3->unk28;
        arg0->unk9644 = (f32) temp_a3->unk38;
    }
    arg0->unkA224 = 0x34U;
    HQ2_READ_FIFO = 0x34000000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x9080BDC8;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9618;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk961C;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9620;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9624;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9628;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk962C;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9630;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9634;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9638;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk963C;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9640;
    HQ2_READ_FIFO = (bitwise s32) arg0->unk9644;
    HQ2_READ_FIFO = arg0->unk9648;
    HQ2_READ_FIFO = arg0->unk964C;
    HQ2_READ_FIFO = arg0->unk9650;
    HQ2_READ_FIFO = arg0->unk9654;
    arg0->unkA224 = 0U;
    HQ2_READ_FIFO = 0x34000000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
}

void __glOdysseyValidateMatrixTex(void *arg0) {
    void *temp_a5;

    temp_a5 = arg0->unk7428;
    arg0->unk9658 = (s32) temp_a5->unk0;
    arg0->unk965C = (s32) temp_a5->unk10;
    arg0->unk9660 = (s32) temp_a5->unk20;
    arg0->unk9664 = (s32) temp_a5->unk30;
    arg0->unk9668 = (s32) temp_a5->unk4;
    arg0->unk966C = (s32) temp_a5->unk14;
    arg0->unk9670 = (s32) temp_a5->unk24;
    arg0->unk9674 = (s32) temp_a5->unk34;
    arg0->unk9678 = (s32) temp_a5->unk8;
    arg0->unk967C = (s32) temp_a5->unk18;
    arg0->unk9680 = (s32) temp_a5->unk28;
    arg0->unk9684 = (s32) temp_a5->unk38;
    arg0->unk9688 = (s32) temp_a5->unkC;
    arg0->unk968C = (s32) temp_a5->unk1C;
    arg0->unk9690 = (s32) temp_a5->unk2C;
    arg0->unkA224 = 0x14U;
    arg0->unk9694 = (s32) temp_a5->unk3C;
    HQ2_READ_FIFO = 0x34008000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
    HQ2_READ_FIFO = 0x9080BDC8;
    HQ2_READ_FIFO = arg0->unk9658;
    HQ2_READ_FIFO = arg0->unk965C;
    HQ2_READ_FIFO = arg0->unk9660;
    HQ2_READ_FIFO = arg0->unk9664;
    HQ2_READ_FIFO = arg0->unk9668;
    HQ2_READ_FIFO = arg0->unk966C;
    HQ2_READ_FIFO = arg0->unk9670;
    HQ2_READ_FIFO = arg0->unk9674;
    HQ2_READ_FIFO = arg0->unk9678;
    HQ2_READ_FIFO = arg0->unk967C;
    HQ2_READ_FIFO = arg0->unk9680;
    HQ2_READ_FIFO = arg0->unk9684;
    HQ2_READ_FIFO = arg0->unk9688;
    HQ2_READ_FIFO = arg0->unk968C;
    HQ2_READ_FIFO = arg0->unk9690;
    HQ2_READ_FIFO = arg0->unk9694;
    arg0->unkA224 = 0U;
    HQ2_READ_FIFO = 0x34008000 | ((arg0->unkA224 & 0x3FF) | (((u32) arg0->unkA224 >> 0xA) << 0x17));
}

void dirtyMatrix(void *arg0) {
    s32 temp_a2;

    temp_a2 = arg0->unk6D0;
    switch (temp_a2) {                              /* irregular */
    case 0x1700:
        if (arg0->unk19DCC != 0) {
            arg0->unk16740 = 1;
        }
        arg0->unk16964 = (s32) (arg0->unk16964 | 0x37);
        *(void *)0x1018 = 2;
        return;
    case 0x1702:
        arg0->unk16740 = 1;
        arg0->unk16964 = (s32) (arg0->unk16964 | 0x108);
        *(s32 *)0x1018 = 2;
        return;
    case 0x1701:
        arg0->unk16740 = 1;
        arg0->unk16964 = (s32) (arg0->unk16964 | 0x1011);
        *(void *)0x1018 = 2;
        return;
    }
}

void __glOdyim_ClipPlane(u32 arg0) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;

    temp_a3 = *(s32 *)0x1010;
    temp_a4 = (u32) (arg0 - 0x3000) < 6U;
    if (*(s32 *)0x1018 != 1) {
        temp_a2 = arg0 < 0x3000U;
        if (temp_a2 == 0) {
            sp0 = (s64) temp_a3;
            if (temp_a4 == 0) {
                __glSetError(0x500, temp_a2, temp_a3, temp_a4);
            } else {
                __glim_ClipPlane(temp_a2, temp_a3, temp_a4);
                sp0->unk16964 = (s32) (sp0->unk16964 | 0x10);
                *(void *)0x1018 = 2;
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x500, temp_a2, temp_a3, temp_a4);
        }
    } else {
        __glSetError(0x502, temp_a3, temp_a4);
    }
}

void __glOdyim_Scissor(void) {
    s64 sp0;
    s32 temp_a4;

    temp_a4 = *(s32 *)0x1010;
    sp0 = (s64) temp_a4;
    if (*(s32 *)0x1018 != 1) {
        __glim_Scissor(temp_a4);
        sp0->unk2EBC(sp0);
    } else {
        __glSetError(0x502, temp_a4);
    }
}

void __glOdyim_Frustum(f64 fparg4, f64 fparg5) {
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_Frustum();
        if (temp_s0->unk6D0 == 0x1701) {
            temp_s0->unk16610 = (f64) (second half of f64);
            temp_s0->unk16600 = -1.0;
            temp_s0->unk165F8 = (f64) (second half of f64);
            temp_s0->unk16608 = (f64) ((fparg5 * (fparg4 * -2.0)) / (fparg5 - fparg4));
        }
        __glOdysseyValidateMatrixTex(temp_s0, 0x1701);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_LoadIdentity(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_LoadIdentity(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_LoadMatrixf(void) {
    s64 sp0;
    s32 temp_a1;

    temp_a1 = *(s32 *)0x1010;
    sp0 = (s64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        __glim_LoadMatrixf(temp_a1);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502, temp_a1);
    }
}

void __glOdyim_LoadMatrixd(void *arg0) {
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glim_LoadMatrixd();
        if (temp_s0->unk6D0 == 0x1701) {
            temp_s0->unk165F8 = (f64) arg0->unk50;
            temp_s0->unk16600 = (f64) arg0->unk58;
            temp_s0->unk16608 = (f64) arg0->unk70;
            temp_s0->unk16610 = (f64) arg0->unk78;
        }
        __glOdysseyValidateMatrixTex(temp_s0, 0x1701);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_MatrixMode(void) {
    if (*(s32 *)0x1018 != 1) {
        __glim_MatrixMode();
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_MultMatrixf(void) {
    s64 sp0;
    s32 temp_a1;

    temp_a1 = *(s32 *)0x1010;
    sp0 = (s64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        __glim_MultMatrixf(temp_a1);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502, temp_a1);
    }
}

void __glOdyim_MultMatrixd(void *arg0) {
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a1 = temp_s0->unk6D0;
        if (temp_a1 == 0x1701) {
            temp_s0->unk165F8 = (f64) arg0->unk50;
            temp_s0->unk16600 = (f64) arg0->unk58;
            temp_s0->unk16608 = (f64) arg0->unk70;
            temp_s0->unk16610 = (f64) arg0->unk78;
        }
        __glim_MultMatrixd(temp_a1, 0x1701);
        __glOdysseyValidateMatrixTex(temp_s0);
    } else {
        __glSetError(0x502, 0x1701);
    }
}

void __glOdyim_Ortho(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_Ortho(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_PopMatrix(s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, void *arg7) {
    s32 var_a0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    u32 var_a1;
    void *temp_s0;
    void *temp_t0;
    void *var_a7;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s0 = *(void **)0x1010;
    var_a1 = 0x1701;
    if (*(s32 *)0x1018 != 1) {
        var_a0 = temp_s0->unk6D0;
        if (var_a0 == 0x1701) {
            var_a6 = temp_s0->unk7418;
            var_a5 = temp_s0->unk741C - var_a6;
            var_a1 = (u32) var_a5 >> 0x1F;
            var_a4 = (0xF0F0 << 0x10) | 0xF0F1;
            var_a3 = (var_a1 == 0) ? var_a5 : -var_a5;
            var_a2 = (s32) MULTU_HI(var_a3, var_a4) >> 8;
            var_a0 = ((var_a1 == 0) ? var_a2 : -var_a2) - 1;
            var_a7 = (void *)0x10000;
            temp_t0 = temp_s0 + (var_a0 << 7);
            if (var_a0 >= 0) {
                var_a7 = temp_s0 + 0x10000;
                temp_s0->unk165F8 = (f64) temp_t0->unk16618;
                temp_s0->unk16600 = (f64) temp_t0->unk16620;
                temp_s0->unk16608 = (f64) temp_t0->unk16628;
                temp_s0->unk16610 = (f64) temp_t0->unk16630;
            }
        }
        __glim_PopMatrix(var_a0, var_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
        __glOdysseyValidateMatrixTex(temp_s0);
    } else {
        __glSetError(0x502, 0x1701);
    }
}

void __glOdyim_PushMatrix(s32 arg3, u32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_a0;
    s32 temp_t0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    u32 var_a4;
    void *temp_a1;
    void *temp_t8;

    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a1 = *(void **)0x1010;
    var_a2 = 0x1701;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = temp_a1->unk6D0;
        if (temp_a0 == 0x1701) {
            temp_t0 = temp_a1->unk741C - temp_a1->unk7418;
            var_a4 = (u32) temp_t0 >> 0x1F;
            var_a7 = (0xF0F0 << 0x10) | 0xF0F1;
            var_a6 = (var_a4 == 0) ? temp_t0 : -temp_t0;
            var_a5 = (s32) MULTU_HI(var_a6, var_a7) >> 8;
            var_a2 = (var_a4 == 0) ? var_a5 : -var_a5;
            var_a3 = var_a2 < (temp_a1->unkED0 - 1);
            temp_t8 = temp_a1 + (var_a2 << 7);
            if (var_a3 != 0) {
                temp_t8->unk16618 = (f64) temp_a1->unk165F8;
                temp_t8->unk16620 = (f64) temp_a1->unk16600;
                temp_t8->unk16628 = (f64) temp_a1->unk16608;
                temp_t8->unk16630 = (f64) temp_a1->unk16610;
            }
        }
        __glim_PushMatrix(temp_a0, temp_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    } else {
        __glSetError(0x502, (s32) temp_a1, 0x1701);
    }
}

void __glOdyim_Rotated(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_Rotated(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Rotatef(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_Rotatef(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Scaled(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_Scaled(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Scalef(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_Scalef(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Translated(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_Translated(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Translatef(void) {
    s64 sp0;
    s32 temp_a0;

    temp_a0 = *(s32 *)0x1010;
    sp0 = (s64) temp_a0;
    if (*(s32 *)0x1018 != 1) {
        __glim_Translatef(temp_a0);
        __glOdysseyValidateMatrixTex((void *) sp0);
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_Viewport(void) {
    s64 sp0;
    s32 temp_a4;

    temp_a4 = *(s32 *)0x1010;
    sp0 = (s64) temp_a4;
    if (*(s32 *)0x1018 != 1) {
        __glim_Viewport(temp_a4);
        sp0->unk2EBC(sp0);
        sp0->unk16964 = (s32) (sp0->unk16964 | 1);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError(0x502, temp_a4);
}

f32 __glOdysseyWindowToEyeZ(f64 fparg0) {
    s64 sp18;
    f64 sp0;
    f32 var_f0;
    f64 temp_f0;
    f64 temp_f5;
    f64 temp_f7;
    f64 var_f5;
    s32 temp_a0_2;
    s64 temp_a2;
    void *temp_a0;

    temp_a0 = *(void **)0x1010;
    temp_a2 = temp_a0 + 0x10000;
    sp0 = fparg0;
    if (temp_a0->unk16740 != 0) {
        sp18 = temp_a2;
        __glOdysseyUpdateTransform(temp_a0, (bitwise f64) temp_a2);
    }
    temp_f0 = temp_a0->unk16600;
    temp_f5 = temp_a0->unk165F8;
    if (temp_f0 == (second half of f64)) {
        if (temp_f5 == (second half of f64)) {
            return (f32) -temp_a0->unk165C8;
        }
        M2C_ERROR(/* unknown instruction: madd.d $f0, $f0, $f1, $f2 */);
        var_f0 = (f32) (-M2C_ERROR(/* unknown instruction: nmsub.d $f0, $f8, $f0, $f9 */) / temp_f5);
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_f0;
    }
    M2C_ERROR(/* unknown instruction: madd.d $f13, $f13, $f14, $f15 */);
    temp_a0_2 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc2 */);
    if ((second half of f64) < temp_f0) {
        if (temp_a0_2 != 0) {
            var_f0 = (f32) M2C_ERROR(/* unknown instruction: movf.d $f6, $f10, $fcc4 */);
        } else {
            var_f0 = (f32) M2C_ERROR(/* unknown instruction: movf.d $f6, $f10, $fcc7 */);
        }
        return var_f0;
    }
    temp_f7 = -(second half of f64) / temp_f0;
    var_f5 = -M2C_ERROR(/* unknown instruction: nmsub.d $f5, $f8, $f9, $f13 */) / M2C_ERROR(/* unknown instruction: nmsub.d $f11, $f5, $f0, $f13 */);
    if (temp_a0_2 != 0) {
        if (var_f5 <= temp_f7) {
            var_f5 = M2C_ERROR(/* unknown instruction: movt.d $f5, $f6, $fcc6 */);
        }
    } else if (temp_f7 <= var_f5) {
        var_f5 = M2C_ERROR(/* unknown instruction: movt.d $f5, $f6, $fcc1 */);
    }
    return (f32) var_f5;
}

f64 __glOdysseyWindowToNormalizedEyeZ(void) {
    f64 sp0;
    f32 temp_f5;
    f64 temp_f12;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_f5 = (f32) (((f64) __glOdysseyWindowToEyeZ() + (second half of f64)) / ((second half of f64) - temp_s8->unk165D0));
    temp_f12 = (f64) temp_f5;
    if (!(temp_f12 < GLUE_F64((second half of f64), 0U))) {
        sp0 = (bitwise f64) temp_f5;
        if (temp_f12 > 1.0) {
            return 5.263544247e-315;
        }
        isnan(temp_f12, second half of f64);
        return M2C_ERROR(/* unknown instruction: movn.s $f0, $f7, $v0 */);
    }
    return 0.0;
}

f32 __glOdysseyEyeToWindowZ(f32 fparg0) {
    if (M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f7, $f6 */) != GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U)) {
        M2C_ERROR(/* unknown instruction: madd.d $f1, $f1, $f6, $f2 */);
        M2C_ERROR(/* unknown instruction: madd.d $f0, $f7, $f0, $f1 */);
        return (f32) ((second half of f64) * 0.5);
    }
    M2C_ERROR(/* unknown instruction: madd.d $f0, $f0, $f6, $f1 */);
    M2C_ERROR(/* unknown instruction: madd.d $f0, $f7, $f5, $f0 */);
    return (f32) ((second half of f64) * 0.5);
}

f32 __glOdysseyNormalizedEyeToWindowZ(f64 fparg0) {
    f64 sp18;
    s64 sp10;
    f64 temp_f6;
    f64 var_f0;
    s64 temp_a2;
    void *temp_a0;

    temp_a0 = *(void **)0x1010;
    temp_a2 = temp_a0 + 0x10000;
    var_f0 = fparg0;
    if (temp_a0->unk16740 != 0) {
        sp18 = fparg0;
        sp10 = temp_a2;
        __glOdysseyUpdateTransform(temp_a0, (bitwise f64) temp_a2);
        var_f0 = sp18;
    }
    // Error: Tried to use a double-precision instruction with odd-numbered float register $f15
    // At instruction: c.lt.d $f6, $f15
    if (M2C_ERROR()) {
        return 0.0f;
    }
    return M2C_ERROR(/* unknown instruction: movf.s $f0, $f5, $fcc1 */);
}

void __glOdyim_DepthRange(f32 fparg0) {
    if (*(s32 *)0x1018 != 1) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f1
        // At instruction: c.lt.d $f12, $f1
        return;
    }
    __glSetError(0x502, *(s32 *)0x1010, 1);
}

void __glOdysseyValidateDepthRange(void *arg0) {
    s64 sp38;
    s64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    f32 temp_f9;
    f64 temp_a3;
    f64 temp_f0;
    f64 temp_f5;
    s32 temp_a2;
    s32 var_a0;
    s32 var_a2;
    s64 temp_a4;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a4_2;

    temp_a2 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        M2C_ERROR(/* unknown instruction: movf.d $f3, $f7, $fcc3 */);
        M2C_ERROR(/* unknown instruction: movf.d $f1, $f4, $fcc4 */);
        temp_f5 = M2C_ERROR(/* unknown instruction: movf.d $f5, $f3, $fcc0 */);
        temp_a1 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc3 */);
        M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc4 */);
        temp_a3 = M2C_ERROR(/* unknown instruction: movf $a3, $a4, $fcc2 */);
        temp_f0 = M2C_ERROR(/* unknown instruction: movf.d $f0, $f1, $fcc2 */);
        temp_a4 = M2C_ERROR(/* unknown instruction: movf $a4, $a1, $fcc0 */);
        if ((arg0->unk165D8 != temp_f5) || (arg0->unk165E0 != temp_f0)) {
            sp10 = temp_f0;
            arg0->unk165E0 = temp_f0;
            arg0->unk165D8 = temp_f5;
            sp8 = 1.0;
            sp20 = temp_a4;
            sp18 = temp_a3;
            sp38 = (s64) temp_a2;
            if (arg0->unk16740 != 0) {
                __glOdysseyUpdateTransform(temp_a1, (bitwise f64) temp_a2, temp_a3, (bitwise f32) temp_a4);
            } else {
                sp0 = __glOdysseyWindowToNormalizedEyeZ(temp_a1, temp_a2, temp_a3, temp_a4, (f32) temp_f5);
                __glOdysseyWindowToNormalizedEyeZ((bitwise void *) (f32) sp10, second half of f64);
                __glim_DepthRange((f64) (second half of f64), second half of f64);
            }
            if (sp20 != 0) {
                var_a0 = sp38->unk70C & ~0x80;
                sp38->unk70C = var_a0;
                if ((bitwise s32) sp18 != 0) {
                    goto block_7;
                }
                goto block_11;
            }
            temp_a1_2 = sp38->unk6D4;
            temp_a1_2->unk74 = 0.0f;
            temp_a1_2->unk70 = 0.0f;
            temp_f9 = (f32) M2C_ERROR(/* unknown instruction: movf.d $f9, $f10, $fcc6 */);
            temp_a1_2->unk78 = temp_f9;
            temp_a1_2->unk7C = (f32) ((f64) temp_f9 * arg0->unk165C8);
            var_a0 = sp38->unk70C | 0x80;
            sp38->unk70C = var_a0;
            if ((bitwise s32) sp18 == 0) {
block_11:
                temp_a4_2 = sp38->unk6D4;
                temp_a4_2->unk60 = 0.0f;
                temp_a4_2->unk64 = 0.0f;
                temp_a4_2->unk68 = (f32) M2C_ERROR(/* unknown instruction: movf.d $f14, $f15, $fcc7 */);
                temp_a4_2->unk6C = (f32) ((f64) (second half of f64) * (second half of f64));
                var_a2 = sp38->unk70C | 0x40;
            } else {
block_7:
                var_a2 = var_a0 & ~0x40;
            }
            sp38->unk70C = var_a2;
            arg0->unk16964 = (s32) (arg0->unk16964 | 0x1511);
            *(void *)0x1018 = 2;
        }
    } else {
        __glSetError(0x502, temp_a2);
    }
}

/*
Decompilation failure in function __glOdysseyValidateDepthRangeNewXform:

Unable to determine jump table for jr instruction at ody_xform.s line 3530.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/
