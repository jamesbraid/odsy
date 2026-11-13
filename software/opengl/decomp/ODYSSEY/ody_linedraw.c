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
Error occurred while processing instruction: bgez $t8, .L0d9ec874

Error occurred while processing instruction: c.le.d $f11, $f0

Error occurred while processing instruction: c.le.d $f11, $f13

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
Error occurred while processing instruction: bgez $t8, .L0d9ec874

Error occurred while processing instruction: c.le.d $f11, $f0

Error occurred while processing instruction: c.le.d $f11, $f13

Tried to use a double-precision instruction with odd-numbered float register $f11
Tried to use a double-precision instruction with odd-numbered float register $f11
Tried to use a double-precision instruction with odd-numbered float register $f11
Tried to use a double-precision instruction with odd-numbered float register $f11
f64 __glOdysseySetProgram(void *, s64);             /* extern */
extern s32 HQ2_READ_FIFO;
extern ? __glNop;

f64 __glOdysseySoftClipRenderLine(void *arg0, void *arg1, void *arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_s2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f64 temp_f7;
    f64 var_f0;
    s32 temp_a2;
    s32 temp_a6;
    s64 var_ra;
    u8 var_a4;
    u8 var_a5;
    void *temp_a7;

    var_ra = saved_reg_ra;
    var_a5 = arg2->unk191;
    var_a4 = arg1->unk191;
    temp_a7 = arg0->unk6DE0;
    sp10 = (s64) arg2;
    temp_a6 = arg0->unkA6A8;
    if (arg0->unk570 == 0x1D00) {
        temp_s2 = arg0->unk2F2C;
        arg0->unk2F2C = &__glNop;
        temp_a2 = arg0->unk6DE4;
        var_a5 = 0;
        if (temp_a2 & ~temp_a7->unk0) {
            sp8 = (s64) temp_a6;
            sp0 = (s64) arg1;
            temp_a7->unkC(temp_a7, temp_a2, var_a4, 0, temp_a6, temp_a7);
            var_ra = unksp38;
            var_a5 = 0;
        }
        arg0->unk2F2C = temp_s2;
        var_a4 = 0;
    }
    // Error: negative shift count
    // At instruction: bgez $t8, .L0d9ec874
    if (M2C_ERROR()) {
        goto block_2;
    }
    // Error: Tried to use a double-precision instruction with odd-numbered float register $f11
    // At instruction: c.le.d $f11, $f0
    if (M2C_ERROR() || !(temp_f4 < (f32) temp_f7) || !(arg1->unk80 <= M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f5, $f9 */))) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f11
        // At instruction: c.le.d $f11, $f13
        if (M2C_ERROR()) {
            if ((M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */) < arg1->unk18) && (arg1->unk84 <= M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f5, $f7 */))) {
                /* Duplicate return node #9. Try simplifying control flow for better match */
                return (f64) temp_f4;
            }
            goto block_3;
        }
block_2:
block_3:
        HQ2_READ_FIFO = 0x14400;
        HQ2_READ_FIFO = 1;
        if (var_a4 != 0) {
            if (var_a5 != 0) {
                arg0->unkA69C = temp_a6;
                arg0->unkA698 = temp_a6;
                unksp38 = var_ra;
                *(f64 (**)(void *, void *))0x19E94(arg1, arg1);
                var_f0 = *(f64 (**)(void *, void *))0x19E94((void *) sp10);
            } else if (var_a4 != 0) {
                sp8 = (s64) temp_a6;
                unksp38 = var_ra;
                if (var_a5 != 0) {
                    goto block_12;
                }
                arg0->unkA698 = (s32) sp8;
                *(f64 (**)(void *, void *))0x19E94(arg1, arg1);
                arg0->unkA69C = 1;
                __glOdysseySetProgram(arg0, 1);
                *(f64 (**)(void *, void *))0x19E98(sp10);
                var_f0 = __glOdysseySetProgram(arg0, sp8);
            } else {
                goto block_13;
            }
        } else {
block_13:
            sp8 = (s64) temp_a6;
            sp0 = (s64) arg1;
            unksp38 = var_ra;
            if (var_a5 != 0) {
                arg0->unkA698 = 1;
                __glOdysseySetProgram(arg0, 1);
                *(f64 (**)(void *, void *))0x19E98(sp0);
                __glOdysseySetProgram(arg0, sp8);
                arg0->unkA69C = (s32) sp8;
                var_f0 = *(f64 (**)(void *, void *))0x19E94((void *) sp10);
            } else {
block_12:
                sp0 = (s64) arg1;
                arg0->unkA69C = 1;
                arg0->unkA698 = 1;
                __glOdysseySetProgram(arg0, 1);
                *(f64 (**)(void *, void *))0x19E98(sp0);
                *(f64 (**)(void *, void *))0x19E98(sp10);
                var_f0 = __glOdysseySetProgram(arg0, sp8);
            }
        }
        HQ2_READ_FIFO = 0x14001;
        if (arg0->unk96F4 != 0) {
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        arg0->unk9830 = 1;
        return var_f0;
    }
    return (f64) temp_f4;
}

void __glOdysseySoftClipProcessLine(void *arg0, void *arg1, s32 *arg2) {
    s64 sp30;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a5_2;
    s32 *var_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v1;
    s64 var_ra;
    void *var_a1;

    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_a2 = arg2;
    temp_a4 = var_a2->unk4;
    temp_a5 = var_a1->unk4;
    if ((temp_a5 | temp_a4) != 0) {
        if (temp_a5 & temp_a4) {

        } else {
            temp_a5_2 = arg0->unk2F2C;
            arg0->unk2F2C = &__glNop;
            temp_v1 = arg0->unk6DE4;
            temp_a3 = ~var_a1->unk0;
            sp20 = (s64) temp_v1;
            sp18 = (s64) temp_a5_2;
            if (temp_v1 & temp_a3) {
                sp0 = (s64) var_a1;
                sp8 = (s64) var_a2;
                sp10 = (s64) arg0;
                sp0->unkC(arg0, sp0, sp20, temp_a3, &__glNop, temp_a5_2);
                var_ra = sp30;
            }
            sp10 = (s64) arg0;
            sp30 = var_ra;
            if (sp20 & ~var_a2->unk0) {
                sp8 = (s64) var_a2;
                sp0 = (s64) var_a1;
                sp8->unkC(sp10, sp8, sp20);
            }
            sp10->unk30FC(sp10, var_a1, var_a2);
            sp10->unk2F2C = (s32) sp18;
        }
    } else {
        arg0->unk30F0(temp_a4, temp_a5);
    }
}
