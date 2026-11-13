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
Error occurred while processing instruction: bgez $at, .L0d9cf43c

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
Error occurred while processing instruction: bgez $t8, .L0d9cf464

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
Error occurred while processing instruction: bgez $t9, .L0d9cf48c

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
Error occurred while processing instruction: bgez $ra, .L0d9cf4b0

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
Error occurred while processing instruction: bgez $at, .L0d9cf43c

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
Error occurred while processing instruction: bgez $t8, .L0d9cf464

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
Error occurred while processing instruction: bgez $t9, .L0d9cf48c

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
Error occurred while processing instruction: bgez $ra, .L0d9cf4b0

? __glSetError(?, s32, s64, s64, s64, ?, s64, ?);   /* extern */
extern s32 HQ2_READ_FIFO;

void __glOdyim_TexGenfv(f32 *arg0, s32 arg1, void *arg2, s64 arg5, s64 arg6) {
    s64 sp10;
    s32 temp_a1;
    s64 var_a4;
    s64 var_a5;
    s64 var_a6;
    void *temp_a5;
    void *temp_s0;
    void *var_a0;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a4 = temp_s0 + 0x7C0;
        if (arg0 != (f32 *)0x2000) {
            var_a5 = 0x2002;
            if (arg0 != (f32 *)0x2001) {
                var_a4 = temp_s0 + 0x8B8;
                if (arg0 != (f32 *)0x2002) {
                    var_a6 = 0x2003;
                    var_a4 = temp_s0 + 0x934;
                    if (arg0 != (f32 *)0x2003) {
                        __glSetError(0x500, 0x2000, var_a4, 0x2002, 0x2003);
                    } else {
                        goto block_6;
                    }
                } else {
                    goto block_6;
                }
            } else {
                var_a4 = temp_s0 + 0x83C;
                goto block_6;
            }
        } else {
block_6:
            switch (arg1) {                         /* switch 1; irregular */
            default:                                /* switch 1 */
                __glSetError(0x500, 0x2000, var_a4, var_a5, var_a6, 0x2500);
                break;
            case 0x2502:                            /* switch 1 */
                temp_a5 = temp_s0->unk7414;
                if (temp_a5->unk10C != 0) {
                    sp10 = (s64) temp_a5;
                    unksp28 = var_a4;
                    temp_s0->unk2EB4(temp_s0, sp10, 0x2000, var_a4, temp_a5, var_a6, 0x2500);
                }
                temp_a5->unkA8(var_a4 + 4, sp, temp_a5 + 0x58);
                var_a0 = temp_s0 + 0x10000;
                *(void *)0x1018 = 2;
                temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                *(void *)0x1018 = 2;
                return;
            case 0x2500:                            /* switch 1 */
                temp_a1 = (s64) arg2->unk0 << 0;
                switch (temp_a1) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, temp_a1, 0x2002, 0x2402, var_a4, 0x2400, var_a6, 0x2500);
                    break;
                case 0x2402:                        /* switch 2 */
                    if ((arg0 != (f32 *)0x2002) && (arg0 != (f32 *)0x2003)) {
                    case 0x2400:                    /* switch 2 */
                    case 0x2401:                    /* switch 2 */
                        var_a4->unk0 = temp_a1;
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x100);
                        *(void *)0x1018 = 2;
                        /* Duplicate return node #13. Try simplifying control flow for better match */
                        *(void *)0x1018 = 2;
                        temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                        var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    __glSetError(0x500, temp_a1, 0x2002, 0x2003, var_a4, 0x2400, var_a6, 0x2500);
                    break;
                }
                break;
            case 0x2501:                            /* switch 1 */
                var_a4->unk14 = (f32) arg2->unk0;
                var_a4->unk18 = (f32) arg2->unk4;
                var_a4->unk1C = (f32) arg2->unk8;
                var_a0 = temp_s0 + 0x10000;
                var_a4->unk20 = (f32) arg2->unkC;
                /* Duplicate return node #13. Try simplifying control flow for better match */
                *(void *)0x1018 = 2;
                temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                *(void *)0x1018 = 2;
                return;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_TexGenf(s32 arg1, f32 fparg2) {
    f32 sp20;

    sp20 = fparg2;
    if (arg1 != 0x2500) {
        __glSetError(0x500);
    } else {
        __glOdyim_TexGenfv(&sp20);
    }
}

void __glOdyim_TexGendv(f64 *arg0, s32 arg1, void *arg2, s64 arg5, s64 arg6) {
    s64 sp10;
    s32 temp_a1;
    s64 var_a4;
    s64 var_a5;
    s64 var_a6;
    void *temp_a5;
    void *temp_s0;
    void *var_a0;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a4 = temp_s0 + 0x7C0;
        if (arg0 != (f64 *)0x2000) {
            var_a5 = 0x2002;
            if (arg0 != (f64 *)0x2001) {
                var_a4 = temp_s0 + 0x8B8;
                if (arg0 != (f64 *)0x2002) {
                    var_a6 = 0x2003;
                    if (arg0 != (f64 *)0x2003) {
                        __glSetError(0x500, 0x2000, var_a4, 0x2002, 0x2003);
                    } else {
                        var_a4 = temp_s0 + 0x934;
                        goto block_7;
                    }
                } else {
                    goto block_7;
                }
            } else {
                var_a4 = temp_s0 + 0x83C;
                goto block_7;
            }
        } else {
block_7:
            switch (arg1) {                         /* switch 1; irregular */
            default:                                /* switch 1 */
                __glSetError(0x500, 0x2000, var_a4, var_a5, var_a6, 0x2500);
                break;
            case 0x2502:                            /* switch 1 */
                temp_a5 = temp_s0->unk7414;
                if (temp_a5->unk10C != 0) {
                    sp10 = (s64) temp_a5;
                    unksp28 = var_a4;
                    temp_s0->unk2EB4(temp_s0, sp10, 0x2000, var_a4, temp_a5, var_a6, 0x2500);
                }
                temp_a5->unkA8(var_a4 + 4, sp, temp_a5 + 0x58);
                var_a0 = temp_s0 + 0x10000;
                *(void *)0x1018 = 2;
                temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                *(void *)0x1018 = 2;
                return;
            case 0x2500:                            /* switch 1 */
                temp_a1 = (s64) arg2->unk0 << 0;
                switch (temp_a1) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, temp_a1, 0x2002, 0x2402, var_a4, 0x2400, var_a6, 0x2500);
                    break;
                case 0x2402:                        /* switch 2 */
                    if ((arg0 != (f64 *)0x2002) && (arg0 != (f64 *)0x2003)) {
                    case 0x2400:                    /* switch 2 */
                    case 0x2401:                    /* switch 2 */
                        var_a4->unk0 = temp_a1;
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x100);
                        *(void *)0x1018 = 2;
                        /* Duplicate return node #14. Try simplifying control flow for better match */
                        *(void *)0x1018 = 2;
                        temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                        var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    __glSetError(0x500, temp_a1, 0x2002, 0x2003, var_a4, 0x2400, var_a6, 0x2500);
                    break;
                }
                break;
            case 0x2501:                            /* switch 1 */
                var_a4->unk14 = (f32) arg2->unk0;
                var_a4->unk18 = (f32) arg2->unk8;
                var_a4->unk1C = (f32) arg2->unk10;
                var_a0 = temp_s0 + 0x10000;
                var_a4->unk20 = (f32) arg2->unk18;
                /* Duplicate return node #14. Try simplifying control flow for better match */
                *(void *)0x1018 = 2;
                temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                *(void *)0x1018 = 2;
                return;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_TexGend(s32 arg1, f64 fparg2) {
    f64 sp20;

    sp20 = fparg2;
    if (arg1 != 0x2500) {
        __glSetError(0x500);
    } else {
        __glOdyim_TexGendv(&sp20);
    }
}

void __glOdyim_TexGeniv(void **arg0, s32 arg1, void *arg2, s64 arg5, s64 arg6) {
    s64 sp10;
    s32 temp_a1;
    s64 var_a4;
    s64 var_a5;
    s64 var_a6;
    void *temp_a5;
    void *temp_s0;
    void *var_a0;

    var_a5 = arg5;
    var_a6 = arg6;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        var_a4 = temp_s0 + 0x7C0;
        if (arg0 != (void **)0x2000) {
            var_a5 = 0x2002;
            if (arg0 != (void **)0x2001) {
                var_a4 = temp_s0 + 0x8B8;
                if (arg0 != (void **)0x2002) {
                    var_a6 = 0x2003;
                    if (arg0 != (void **)0x2003) {
                        __glSetError(0x500, 0x2000, var_a4, 0x2002, 0x2003);
                    } else {
                        var_a4 = temp_s0 + 0x934;
                        goto block_7;
                    }
                } else {
                    goto block_7;
                }
            } else {
                var_a4 = temp_s0 + 0x83C;
                goto block_7;
            }
        } else {
block_7:
            switch (arg1) {                         /* switch 1; irregular */
            default:                                /* switch 1 */
                __glSetError(0x500, 0x2000, var_a4, var_a5, var_a6, 0x2500);
                break;
            case 0x2502:                            /* switch 1 */
                temp_a5 = temp_s0->unk7414;
                if (temp_a5->unk10C != 0) {
                    sp10 = (s64) temp_a5;
                    unksp28 = var_a4;
                    temp_s0->unk2EB4(temp_s0, sp10, 0x2000, var_a4, temp_a5, var_a6, 0x2500);
                }
                temp_a5->unkA8(var_a4 + 4, sp, temp_a5 + 0x58);
                var_a0 = temp_s0 + 0x10000;
                *(void *)0x1018 = 2;
                temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                *(void *)0x1018 = 2;
                return;
            case 0x2500:                            /* switch 1 */
                temp_a1 = arg2->unk0;
                switch (temp_a1) {                  /* switch 2; irregular */
                default:                            /* switch 2 */
                    __glSetError(0x500, temp_a1, 0x2000, var_a4, 0x2400, 0x2401, 0x2402);
                    break;
                case 0x2402:                        /* switch 2 */
                    if ((arg0 != (void **)0x2002) && (arg0 != (void **)0x2003)) {
                    case 0x2400:                    /* switch 2 */
                    case 0x2401:                    /* switch 2 */
                        var_a4->unk0 = temp_a1;
                        var_a0 = temp_s0 + 0x10000;
                        temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x100);
                        *(void *)0x1018 = 2;
                        /* Duplicate return node #14. Try simplifying control flow for better match */
                        *(void *)0x1018 = 2;
                        temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                        var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    __glSetError(0x500, temp_a1, 0x2000, var_a4, 0x2400, 0x2401, 0x2002);
                    break;
                }
                break;
            case 0x2501:                            /* switch 1 */
                var_a4->unk14 = (f32) arg2->unk0;
                var_a4->unk18 = (f32) arg2->unk4;
                var_a4->unk1C = (f32) arg2->unk8;
                var_a0 = temp_s0 + 0x10000;
                var_a4->unk20 = (f32) arg2->unkC;
                /* Duplicate return node #14. Try simplifying control flow for better match */
                *(void *)0x1018 = 2;
                temp_s0->unk2E24 = (s32) (temp_s0->unk2E24 | 1);
                var_a0->unk6964 = (s32) (var_a0->unk6964 | 0x20);
                *(void *)0x1018 = 2;
                return;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_TexGeni(void *arg1, void *arg2) {
    void *sp24;

    sp24 = arg2;
    if (arg1 != (void *)0x2500) {
        __glSetError(0x500);
    } else {
        __glOdyim_TexGeniv(&sp24);
    }
}

void updateTexGenCoord(void *arg0, void *arg1, u32 arg2) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    s32 temp_a4;
    void *temp_a3;
    void *var_a4;

    temp_a4 = arg1->unk0;
    temp_a3 = arg0 + (arg2 * 4);
    if (temp_a4 != 0x2400) {
        if (temp_a4 == 0x2401) {
            var_a4 = arg1 + 0x14;
            /* Duplicate return node #4. Try simplifying control flow for better match */
            temp_a3->unk9834 = (s32) var_a4->unk0;
            temp_a3->unk9838 = (s32) var_a4->unk4;
            temp_a3->unk983C = (s32) var_a4->unk8;
            temp_a3->unk9840 = (s32) var_a4->unkC;
            arg0->unkA218 = arg2;
            HQ2_READ_FIFO = (arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17) | 0x31008000;
            HQ2_READ_FIFO = 0x908091BB;
            HQ2_READ_FIFO = temp_a3->unk9834;
            HQ2_READ_FIFO = temp_a3->unk9838;
            HQ2_READ_FIFO = temp_a3->unk983C;
            HQ2_READ_FIFO = temp_a3->unk9840;
            return;
        }
        return;
    }
    M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
    M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f18, $f19 */);
    sp0 = M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */);
    M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
    M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f13, $f14 */);
    sp4 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f8, $f9 */);
    sp8 = M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f4 */);
    var_a4 = sp;
    spC = M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
    temp_a3->unk9834 = (s32) var_a4->unk0;
    temp_a3->unk9838 = (s32) var_a4->unk4;
    temp_a3->unk983C = (s32) var_a4->unk8;
    temp_a3->unk9840 = (s32) var_a4->unkC;
    arg0->unkA218 = arg2;
    HQ2_READ_FIFO = (arg0->unkA218 & 0x3FF) | (((u32) arg0->unkA218 >> 0xA) << 0x17) | 0x31008000;
    HQ2_READ_FIFO = 0x908091BB;
    HQ2_READ_FIFO = temp_a3->unk9834;
    HQ2_READ_FIFO = temp_a3->unk9838;
    HQ2_READ_FIFO = temp_a3->unk983C;
    HQ2_READ_FIFO = temp_a3->unk9840;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34], gap at: 0x10. */
void __glOdysseyValidateTexGen(void *arg0) {
    // Error: negative shift count
    // At instruction: bgez $at, .L0d9cf43c
    if (M2C_ERROR()) {
        __glOdyim_TexGeni(arg0 + 0x7C0, (void *)0x100, 0x10000);
    }
    // Error: negative shift count
    // At instruction: bgez $t8, .L0d9cf464
    if (M2C_ERROR()) {
        __glOdyim_TexGeni(arg0, arg0 + 0x83C, 0x104);
    }
    // Error: negative shift count
    // At instruction: bgez $t9, .L0d9cf48c
    if (M2C_ERROR()) {
        __glOdyim_TexGeni(arg0, arg0 + 0x8B8, 0x108);
    }
    // Error: negative shift count
    // At instruction: bgez $ra, .L0d9cf4b0
    if (M2C_ERROR()) {
        __glOdyim_TexGeni(arg0, arg0 + 0x934, 0x10C);
    }
    if (M2C_ERROR(/* Read from unset register $at */)->unk-5DE8 != unksp10) {
        unksp8->unk-5DE8 = (u32) unksp10;
        HQ2_READ_FIFO = (unksp8->unk-5DE8 & 0x3FF) | (((u32) unksp8->unk-5DE8 >> 0xA) << 0x17) | 0x31008000;
    }
}
