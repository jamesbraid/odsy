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
Error occurred while processing instruction: bgez $t8, .L0d9c9580

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
Error occurred while processing instruction: bgez $v1, .L0d9c9920

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
Error occurred while processing instruction: bgez $t0, .L0d9c8a4c

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
Error occurred while processing instruction: bgez $a2, .L0d9c9370

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
Error occurred while processing instruction: bgez $t8, .L0d9c9580

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
Error occurred while processing instruction: bgez $v1, .L0d9c9920

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
Error occurred while processing instruction: bgez $t0, .L0d9c8a4c

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
Error occurred while processing instruction: bgez $a2, .L0d9c9370

? __glOdyim_SoftBegin(s64, ?);                      /* extern */
s64 __glOdysseyGetNumHWClipPlanes();                /* extern */
s64 __glOdysseyGetNumSWClipPlanes(void *);          /* extern */
? __glOdysseyUpdateTransform(void *);               /* extern */
s32 getenv(void *, s64, s32, s64, s32, s64, s64, s64); /* extern */
extern s32 HQ2_READ_FIFO;
extern ? __glim_Color3f;

void AddProgram(void *arg0, s64 arg1) {
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spC8;
    s64 spC0;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 sp10;
    s32 spC;
    void *sp8;
    s32 sp4;
    s32 sp0;
    f64 var_f6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_7;
    s32 temp_a1_2;
    s32 temp_a1_6;
    s32 temp_a2_3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_ra;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_t1_2;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a0_10;
    s32 var_a0_12;
    s32 var_a0_6;
    s32 var_a0_8;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4_4;
    s32 var_a4_6;
    s32 var_a4_7;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7_3;
    s32 var_a7_4;
    s32 var_at_2;
    s32 var_at_3;
    s32 var_ra_2;
    s32 var_s0;
    s32 var_s0_10;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s0_5;
    s32 var_s0_6;
    s32 var_s0_8;
    s32 var_s0_9;
    s32 var_s2_2;
    s32 var_s2_3;
    s32 var_s2_4;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s3_4;
    s32 var_s3_5;
    s32 var_s3_6;
    s32 var_s5;
    s32 var_t0;
    s32 var_t0_3;
    s32 var_t1_3;
    s32 var_t3_2;
    s32 var_t3_3;
    s32 var_t8_2;
    s32 var_t9_2;
    s32 var_v1;
    s64 temp_a0_11;
    s64 temp_a0_5;
    s64 temp_a0_6;
    s64 temp_a0_9;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_t3;
    s64 temp_t9;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_a0_9;
    s64 var_a1;
    s64 var_a3;
    s64 var_a4;
    s64 var_a4_2;
    s64 var_a5;
    s64 var_a7;
    s64 var_a7_2;
    s64 var_at;
    s64 var_ra;
    s64 var_s0_7;
    s64 var_s2;
    s64 var_s3;
    s64 var_s6;
    s64 var_t0_2;
    s64 var_t1;
    s64 var_t1_2;
    s64 var_t2;
    s64 var_t2_2;
    s64 var_t3;
    s64 var_t8;
    s64 var_t9;
    u32 temp_a0_16;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u32 temp_a1_7;
    u32 temp_a1_8;
    u32 temp_a1_9;
    u32 temp_t0;
    u32 temp_t1_3;
    u32 temp_t2;
    void *temp_a0_10;
    void *temp_a0_12;
    void *temp_a0_13;
    void *temp_a0_14;
    void *temp_a0_15;
    void *temp_a0_8;
    void *temp_a1;
    void *temp_a2_2;
    void *temp_a7;
    void *temp_t1;
    void *temp_t8;
    void *temp_t8_4;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_a0_11;
    void *var_a0_13;
    void *var_a0_14;
    void *var_a0_4;
    void *var_a0_5;
    void *var_a0_7;
    void *var_a4_3;
    void *var_a4_5;
    void *var_t0_4;
    void *var_v0;
    void *var_v0_2;
    void *var_v0_3;

    temp_s8 = arg0->unk700;
    var_s0 = arg0->unkA654;
    sp80 = __glOdysseyGetNumHWClipPlanes();
    sp30 = __glOdysseyGetNumSWClipPlanes(arg0);
    if (arg0->unk16740 != 0) {
        __glOdysseyUpdateTransform(arg0);
    }
    spC8 = arg0->unkC94 == 0;
    if ((arg0->unk704 & 0x1000) && (spC8 == 0)) {
        var_a5 = temp_s8 & 0x40;
        var_t1 = 1;
        if ((arg0->unk585 == 0) || (var_a0 = 1, (var_a5 == 0))) {
            var_a0 = 0;
        }
        var_t2 = var_a0;
        if (arg0->unk165A5 != 0) {
            sp58 = 1;
            sp78 = (s64) arg0->unk584;
            var_t2 = var_a0;
            sp50 = (s64) arg0->unk165A4;
        } else {
            goto block_11;
        }
    } else {
        var_t1 = 0;
        var_a5 = temp_s8 & 0x40;
        if ((arg0->unk585 == 0) || (var_a0_2 = 1, (var_a5 == 0))) {
            var_a0_2 = 0;
        }
        var_t2 = var_a0_2;
block_11:
        sp58 = 0;
        sp78 = (s64) arg0->unk584;
        sp50 = (s64) arg0->unk165A4;
    }
    var_a6 = 0;
    if (arg0->unk588 == 0x81FA) {
        var_a6 = 0;
        if (var_a5 != 0) {
            var_a6 = 0;
            if (spC8 == 0) {
                var_a6 = 1;
            }
        }
    }
    // Error: negative shift count
    // At instruction: bgez $t8, .L0d9c9580
    if (M2C_ERROR()) {
        spC0 = 3;
        goto block_15;
    }
    temp_t9 = !(temp_s8 & 0x20000) ? ((0x10000 & temp_s8) != 0) : M2C_ERROR(/* Read from unset register $t9 */);
    spC0 = temp_t9;
    if (temp_t9 == 0) {
        var_a4 = 0;
        goto block_190;
    }
block_15:
    if (temp_s8 & 0x3C0000) {
        var_at = spC0;
        if ((var_at == 0) || (var_a4 = 1, (arg0->unk1673C == 0))) {
            var_a4 = 0;
        }
        // Error: negative shift count
        // At instruction: bgez $v1, .L0d9c9920
        if (M2C_ERROR()) {
            temp_a0 = arg0->unk7C0;
            var_a7 = 0;
            if (temp_a0 != 0x2400) {
                if (temp_a0 != 0x2401) {
                    var_a1 = 0;
                    var_a7 = ((temp_a0 ^ 0x2402) == 0) ? saved_reg_s6 : 0;
                } else {
                    var_a7 = 0;
                    goto block_180;
                }
            } else {
block_180:
                var_a1 = 1;
            }
        } else {
            var_a7 = 0;
            var_a1 = 0;
        }
        // Error: negative shift count
        // At instruction: bgez $t0, .L0d9c8a4c
        if (M2C_ERROR()) {
            temp_a0_2 = arg0->unk83C;
            if ((temp_a0_2 != 0x2400) && (temp_a0_2 != 0x2401)) {
                var_a7 = ((temp_a0_2 ^ 0x2402) == 0) ? (var_a7 | 2) : var_a7;
            } else {
                var_a1 |= 2;
            }
            var_at = (s64) temp_s8 << 0x2B;
        }
        var_a0_3 = (s64) temp_s8 << 0x2A;
        if (var_at < 0) {
            temp_a0_3 = arg0->unk8B8;
            if ((temp_a0_3 == 0x2400) || (temp_a0_3 == 0x2401)) {
                var_a1 |= 4;
            }
            var_a0_3 = (s64) temp_s8 << 0x2A;
        }
        var_ra = 1;
        if (var_a0_3 < 0) {
            temp_a0_4 = arg0->unk934;
            if ((temp_a0_4 == 0x2400) || (temp_a0_4 == 0x2401)) {
                var_a1 |= 8;
            }
            var_ra = 1;
        }
    } else {
        var_a4 = 0;
        if (spC0 != 0) {
            var_a4 = 0;
            if (arg0->unk1673C != 0) {
                var_a4 = 1;
            }
        }
block_190:
        var_t9 = var_a4;
        var_ra = 0;
        var_a7 = 0;
        var_a1 = 0;
        var_s6 = 1;
    }
    temp_a0_5 = var_s6 == arg1;
    var_a7_2 = (temp_a0_5 != 0) ? 0 : var_a7;
    if (var_a4 != 0) {
        if (var_t1 != 0) {
            var_t9 = 0;
        } else {
            var_t9 = (var_a6 == 0) ? ((var_t2 != 0) ? 0 : var_a4) : 0;
        }
    }
    var_a3 = arg0->unk7C00 & ~0x02000000;
    var_a2 = ((var_t9 << 0x19) & 0x02000000) | var_a3;
    arg0->unk7C00 = var_a2;
    if ((var_a6 == 0) || (var_t1 != 0)) {
        goto block_40;
    }
    if ((spC0 != 0) && (var_a2 = (var_s6 << arg0->unkE04) - 1, var_a3 = sp30, ((arg0->unk708 & var_a2) != 0))) {
        sp68 = 1;
        if (var_a3 != 0) {
            var_t3 = temp_a0_5;
            var_t2 = 1;
        } else {
            goto block_41;
        }
    } else {
block_40:
        sp68 = 0;
block_41:
        var_t3 = 0;
    }
    temp_v0 = arg0 + (arg1 << 5);
    temp_a0_6 = var_s0 * 4;
    var_v0 = temp_v0 + 0x10000;
    var_s3 = temp_a0_6;
    temp_v0->unkA664 = var_s0;
    if (var_a5 != 0) {
        sp40 = arg1;
        if (arg0->unkE04 > 0) {
            var_f6 = 1.0;
            spF0 = var_ra;
            var_ra_2 = sp4;
            var_t0 = sp0;
            sp100 = var_t1;
            spF8 = var_t2;
            var_s5 = 0;
            var_t2_2 = 0;
            sp108 = var_a5;
            var_t8 = 0;
            var_a5_2 = 0;
            sp48 = temp_a0_6;
            var_t1_2 = 0x13;
            var_a6_2 = 0;
            sp110 = var_t9;
            var_a3 = 0x2B6;
            var_s2 = sp48;
            sp118 = var_t3;
            sp120 = var_a7_2;
            sp70 = !(temp_s8 & 0x400000) ? 0x2B6 : 0x29C;
            var_a0_4 = var_s2 + arg0 + 0x10000;
            var_a2 = var_s6 << 0;
loop_54:
            var_a5_2 += 1;
            var_t9_2 = 4;
            if (arg0->unk708 & var_a2) {
                temp_a7 = arg0->unk630 + var_a6_2;
                var_t8_2 = 8;
                temp_a3 = var_t2_2;
                temp_t3 = var_t2_2 + 1;
                temp_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $zero, $fcc1 */);
                var_t2_2 = temp_t3;
                var_t0 = M2C_ERROR(/* unknown instruction: movt $t0, $zero, $fcc0 */);
                var_a7_3 = 1;
                if ((temp_a4 == 0) || (((f64) temp_a7->unk68 == var_f6) && ((f64) (second half of f64) == GLUE_F64(0x4066800000000000U, 0U)) && (var_f6 = second half of f64, ((f64) temp_a7->unk70 == GLUE_F64(0x4066800000000000U, 0U))))) {
                    var_a7_3 = 0;
                    var_ra_2 = 0;
                    if (temp_a4 == 0) {
                        goto block_60;
                    }
                }
                var_ra_2 = var_a7_3;
                if (var_a7_3 != 0) {
                    if (temp_a4 != 0) {
                        goto block_48;
                    }
                    goto block_61;
                }
block_60:
                var_t9_2 = 0;
                if (temp_a4 == 0) {
                    goto block_61;
                }
block_48:
                if (var_t0 == 0) {
block_61:
                    var_t8_2 = 0;
                }
                temp_a2 = (var_t8_2 | (var_t9_2 | ((temp_a4 != 0) ? var_s6 : 2))) << var_t1_2;
                var_t1_2 += 4;
                var_s5 |= temp_a2;
                if (temp_a3 != 0) {
                    var_a3 = spC8;
                    if (var_a3 == 0) {
                        var_a0_5 = var_a0_4 + 4;
                        var_s3_2 = var_s3 + 4;
                        var_s0_2 = var_s0 + 1;
                        var_a0_5->unk-5DB0 = (s32) ((temp_a4 != 0) ? 0x398 : 0x300);
                    } else {
                        var_s3_2 = var_s3 + 8;
                        var_s0_2 = var_s0 + 2;
                        var_a0_4->unk-5DAC = (s32) ((temp_a4 != 0) ? 0x3C4 : 0x37B);
                        var_a0_4->unk-5DA8 = (s32) ((temp_a4 != 0) ? 0x3A3 : 0x30B);
                        var_a0_5 = var_a0_4 + 8;
                    }
                } else {
                    var_s3_2 = var_s3 + 8;
                    var_a3 = 0x263;
                    var_s0_2 = var_s0 + 2;
                    var_a0_4->unk-5DA8 = (s32) sp70;
                    var_a0_4->unk-5DAC = (s32) ((sp78 == 0) ? ((temp_a4 != 0) ? 0x272 : 0x290) : ((temp_a4 != 0) ? 0x263 : 0x281));
                    var_a0_5 = var_a0_4 + 8;
                }
                var_t8 = temp_t3;
                var_a0_4 = var_a0_5 + 4;
                var_s3 = var_s3_2 + 4;
                var_a0_4->unk-5DB0 = (s32) ((var_a7_3 != 0) ? 0x2DE : 0x2CF);
                var_s0 = var_s0_2 + 1;
                var_s2 = var_s3;
            }
            var_a2 = var_s6 << var_a5_2;
            var_a6_2 += 0x74;
            if (var_a5_2 < arg0->unkE04) {
                goto loop_54;
            }
            sp0 = var_t0;
            var_a7_2 = sp120;
            var_t3 = sp118;
            var_t9 = sp110;
            var_a5 = sp108;
            var_t1 = sp100;
            var_t2 = spF8;
            sp4 = var_ra_2;
            var_ra = spF0;
        } else {
            var_s2 = temp_a0_6;
            var_t8 = 0;
            var_s5 = 0;
        }
    } else {
        sp40 = arg1;
        var_s2 = temp_a0_6;
        var_t8 = 0;
        var_s5 = 0;
    }
    var_t0_2 = 0;
    if (var_t1 != 0) {
        if (arg0->unk1647C & 1) {
            temp_a4_2 = M2C_ERROR(/* unknown instruction: movt $a4, $zero, $fcc6 */);
            if ((temp_a4_2 != 0) && ((var_a0_6 = 1, ((f64) arg0->unk164E8 != 1.0)) || (var_a0_6 = 1, ((f64) arg0->unk164EC != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))) || (var_a0_6 = 1, ((f64) arg0->unk164F0 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))))) {
                goto block_70;
            }
            var_a0_6 = 0;
            if (temp_a4_2 == 0) {
                goto block_155;
            }
block_70:
            if (var_a0_6 != 0) {
                sp60 = 4;
                if (temp_a4_2 != 0) {
                    goto block_72;
                }
                goto block_156;
            }
block_155:
            sp60 = 0;
            if (temp_a4_2 == 0) {
                goto block_156;
            }
block_72:
            var_t0_3 = 8;
            if (M2C_ERROR(/* unknown instruction: movt $t0, $zero, $fcc5 */) == 0) {
block_156:
                var_t0_3 = 0;
            }
            sp38 = temp_a4_2 != 0;
            var_s5 |= (var_t0_3 | (sp60 | ((temp_a4_2 != 0) ? var_s6 : 2))) << 0x33;
            if (var_t8 != 0) {
                var_s3_3 = var_s3 + 4;
                var_s0_3 = var_s0 + 1;
                (var_s3_3 + arg0)->unkA250 = (s32) ((temp_a4_2 == 0) ? 0x300 : 0x398);
                if (var_a5 != 0) {
                    goto block_75;
                }
            } else {
                var_s3_3 = var_s2 + 8;
                (var_s2 + arg0)->unkA254 = (s32) ((((var_a5 != 0) ? sp78 : sp50) == 0) ? ((temp_a4_2 == 0) ? 0x290 : 0x272) : ((temp_a4_2 == 0) ? 0x281 : 0x263));
                var_s0_3 = var_s0 + 2;
                (var_s3_3 + arg0)->unkA250 = (s32) (!(temp_s8 & 0x400000) ? 0x2B6 : 0x29C);
                if (var_a5 == 0) {

                } else {
block_75:
                    var_s3_3 += 4;
                    var_s0_3 += 1;
                    (var_s3_3 + arg0)->unkA250 = (s32) ((var_t2 == 0) ? 0x38F : 0x386);
                }
            }
            if (var_a0_6 != 0) {
                var_s3_3 += 4;
                var_s0_3 += 1;
                (var_s3_3 + arg0)->unkA250 = 0x446;
            }
            var_s0_4 = var_s0_3 + 2;
            var_t0_2 = 1;
            temp_a4_3 = var_s3_3 + 8;
            (var_s3_3 + 4 + arg0)->unkA250 = 0x42F;
            var_s2_2 = temp_a4_3;
            if (var_t2 != 0) {
                var_s3_4 = 0x470;
            } else {
                var_s3_4 = 0x470;
                if (sp58 == 0) {
                    var_s3_4 = (var_a0_6 == 0) ? 0x452 : 0x45F;
                }
            }
            (temp_a4_3 + arg0)->unkA250 = var_s3_4;
        } else {
            var_t0_2 = 0;
            goto block_192;
        }
    } else {
block_192:
        if (var_t8 > 0) {
            if (spC8 == 0) {
                if (sp68 != 0) {
                    temp_a4_4 = var_s3 + 4;
                    temp_a0_7 = var_s0 + 1;
                    var_s3_5 = temp_a4_4;
                    var_s0_5 = temp_a0_7;
                    (temp_a4_4 + arg0)->unkA250 = 0x300;
                    if (var_s6 == sp40) {
                        var_s3_5 = temp_a4_4 + 4;
                        var_s0_5 = temp_a0_7 + 1;
                        (var_s3_5 + arg0)->unkA250 = 0x2F6;
                    }
                    var_s2_2 = var_s3_5 + 4;
                    (var_s2_2 + arg0)->unkA250 = (s32) ((var_t2 == 0) ? 0x3FF : 0x421);
                    var_s0_4 = var_s0_5 + 1;
                } else if ((sp4 != 0) || (sp0 != 0)) {
                    spE8 = 0;
                    spF8 = var_t2;
                    sp100 = var_t1;
                    sp108 = var_a5;
                    sp118 = var_t3;
                    sp120 = var_a7_2;
                    sp128 = (s64) var_v0;
                    sp130 = var_a1;
                    sp110 = var_t9;
                    sp138 = var_t8;
                    spF0 = var_ra;
                    temp_v0_2 = getenv(&__glim_Color3f + 0x4D88, var_a1, var_a2, var_a3, sp4, var_a5, 2, var_a7_2);
                    var_t0_2 = 0;
                    if (temp_v0_2 == 0) {
                        var_s3_6 = var_s3 + 4;
                        var_v0 = (void *) sp128;
                        var_s0_6 = var_s0 + 1;
                        (var_s3_6 + arg0)->unkA250 = 0x300;
                    } else {
                        var_s3_6 = var_s2 + 8;
                        var_v0 = (void *) sp128;
                        (var_s2 + arg0)->unkA254 = 0x318;
                        var_s0_6 = var_s0 + 2;
                        (var_s3_6 + arg0)->unkA250 = 0x30C;
                    }
                    var_s2_2 = var_s3_6 + 4;
                    var_s0_4 = var_s0_6 + 1;
                    (var_s2_2 + arg0)->unkA250 = (s32) ((var_t9 == 0) ? ((var_t2 == 0) ? 0x3F5 : 0x415) : 0x40B);
                } else {
                    var_s2_2 = var_s3 + 4;
                    if (var_t9 != 0) {
                        var_s2_2 = var_s3 + 4;
                        var_s0_4 = var_s0 + 1;
                        (var_s2_2 + arg0)->unkA250 = 0x3DA;
                    } else {
                        (var_s2_2 + arg0)->unkA250 = (s32) ((var_t2 == 0) ? 0x3CF : 0x3E5);
                        var_s0_4 = var_s0 + 1;
                    }
                }
            } else {
                temp_a2_2 = var_s2 + arg0;
                var_s2_2 = var_s2 + 0xC;
                temp_a2_2->unkA254 = 0x37B;
                temp_a2_2->unkA258 = 0x30B;
                var_s0_4 = var_s0 + 3;
                (var_s2_2 + arg0)->unkA250 = (s32) ((var_t2 == 0) ? 0x3F5 : 0x415);
            }
        } else {
            temp_a0_8 = var_s2 + arg0;
            if (var_a5 != 0) {
                sp140 = var_s2;
                sp20 = (s64) (temp_a0_8 + 0x10000);
                var_s0_7 = var_s0 + 2;
                sp28 = var_s0_7;
                temp_a0_9 = var_s2 + 8;
                sp18 = temp_a0_9;
                var_a4_2 = temp_a0_9;
                temp_a0_10 = temp_a0_9 + arg0;
                var_a0_7 = temp_a0_10 + 0x10000;
                sp20->unk-5DAC = 0x290;
                temp_a0_10->unkA250 = 0x2B6;
                if (var_t1 != 0) {
                    temp_a0_11 = var_s2 + 0xC;
                    var_a4_2 = temp_a0_11;
                    temp_a0_12 = temp_a0_11 + arg0;
                    var_a0_7 = temp_a0_12 + 0x10000;
                    var_s0_7 = sp28 + 1;
                    temp_a0_12->unkA250 = (s32) ((var_t2 == 0) ? 0x38F : 0x386);
                }
                var_s2_2 = var_a4_2 + 8;
                var_a0_7->unk-5DAC = 0x2CF;
                var_s0_4 = var_s0_7 + 2;
                (var_s2_2 + arg0)->unkA250 = (s32) ((var_t2 == 0) ? ((var_t9 == 0) ? 0x3CF : 0x3DA) : 0x3E5);
            } else {
                var_s2_2 = var_s2 + 8;
                temp_a0_8->unkA254 = 0x4AE;
                var_s0_4 = var_s0 + 2;
                (var_s2_2 + arg0)->unkA250 = (s32) ((var_t9 == 0) ? 0x4C0 : 0x4BB);
            }
        }
    }
    var_t3_2 = ((((var_t0_2 + var_t8) * 4) + 0x13) > 0x40) | var_t3;
    if (var_t3_2 != 0) {

    } else {
        if (sp80 != 0) {
            goto block_198;
        }
        if (var_ra == 0) {
            var_a0_8 = ((spC0 == 0) ? 0 : ((var_t9 == 0) ? 0x20 : 0x40)) | ((spC0 < 1) ? 0 : 0x200) | (((spC0 < 2) ? 0 : 0x600) | ((spC0 < 3) ? 0 : 0xE00));
            if (var_a5 == 0) {
                goto block_242;
            }
            goto block_199;
        }
block_198:
        var_a0_8 = 0x20000;
        if (var_a5 != 0) {
block_199:
            var_t3_3 = (var_t2 != 0) | (((var_t8 >= 1) ? (((spC8 == 0) ? 0x1000 : 0x2000) | (!(temp_s8 & 0x400000) ? 0x100 : 0x80) | ((sp78 != 0) ? 2 : 4)) : 0) | ((sp68 == 0) ? 0x10 : 8));
            if (var_t1 != 0) {
                goto block_200;
            }
            goto block_243;
        }
block_242:
        var_t3_3 = 0x40000;
        if (var_t1 == 0) {
block_243:
            var_a5_3 = 0;
        } else {
block_200:
            var_a5_3 = ((var_t0_2 >= 1) ? (((sp50 == 0) ? 0x8000 : 0x4000) | (!(temp_s8 & 0x400000) ? 0x100 : 0x80)) : 0) | ((sp58 == 0) ? 0 : 0x10000);
        }
        temp_s5 = var_a0_8 | var_t3_3 | (var_a5_3 | var_s5);
        temp_t8 = &__glim_Color3f + 0x4680;
        var_t0_4 = temp_t8;
        if (__glim_Color3f.unk4680 != 0) {
            if (temp_s5 & ~__glim_Color3f.unk4680) {
loop_203:
                var_a0_9 = var_t0_4->unk48;
                var_t0_4 += 0x48;
                if (var_a0_9 != 0) {
                    if (temp_s5 & ~var_a0_9) {
                        goto loop_203;
                    }
                }
            } else {
                var_a0_9 = __glim_Color3f.unk4680;
            }
        } else {
            var_a0_9 = __glim_Color3f.unk4680;
        }
        if (var_t9 != 0) {
            if (var_a0_9 != 0) {
                goto block_208;
            }
            var_t0_4 = temp_t8;
            if (__glim_Color3f.unk4680 != 0) {
                temp_a5 = temp_s5 | 0x20000;
                if (-0x41 & (temp_a5 & ~__glim_Color3f.unk4680)) {
loop_260:
                    var_a0_9 = var_t0_4->unk48;
                    var_t0_4 += 0x48;
                    if (var_a0_9 != 0) {
                        if (-0x41 & (temp_a5 & ~var_a0_9)) {
                            goto loop_260;
                        }
                    }
                    sp8 = var_t0_4;
                } else {
                    sp8 = temp_t8;
                    var_a0_9 = __glim_Color3f.unk4680;
                }
            } else {
                sp8 = temp_t8;
                var_a0_9 = __glim_Color3f.unk4680;
            }
            var_ra = (var_a0_9 != 0) ? var_s6 : var_ra;
        } else {
block_208:
            sp8 = var_t0_4;
        }
        var_t3_2 = var_a0_9 == 0;
        if (var_t3_2 == 0) {
            spC = var_t0_4->unk1C;
            if (var_ra != 0) {
                var_a0_10 = 1;
            } else {
                var_a0_10 = 1;
                if (sp80 == 0) {
                    var_a0_10 = 1;
                    if (var_t0_4->unk8 != 0x4C5) {
                        var_a0_10 = 0;
                    }
                }
            }
            var_s0_4 = arg0->unkA654;
            sp10 = var_a0_10;
            temp_t8_2 = var_s0_4 * 4;
            if (var_a0_10 != 0) {
                var_s2_2 = temp_t8_2;
                if (var_t0_4->unk20 != 0x4C5) {
                    var_a4_3 = var_t0_4;
                    var_a0_11 = temp_t8_2 + arg0 + 0x10000;
loop_215:
                    temp_a3_2 = var_a4_3->unk24;
                    var_s2_2 += 4;
                    var_s0_4 += 1;
                    var_a0_11->unk-5DAC = (s32) var_a4_3->unk20;
                    if (temp_a3_2 != 0x4C5) {
                        temp_t8_3 = var_a4_3->unk28;
                        var_a0_11 += 8;
                        var_s2_2 += 4;
                        var_s0_4 += 1;
                        var_a4_3 += 8;
                        var_a0_11->unk-5DB0 = temp_a3_2;
                        if (temp_t8_3 == 0x4C5) {

                        } else {
                            goto loop_215;
                        }
                    }
                } else {
                    var_s2_2 = temp_t8_2;
                }
            } else {
                var_s2_2 = temp_t8_2;
            }
        }
    }
    if (var_ra != 0) {
        if (var_a7_2 != 0) {
            // Error: negative shift count
            // At instruction: bgez $a2, .L0d9c9370
            if (M2C_ERROR()) {
                var_s0_4 += 2;
                temp_t8_4 = var_s2_2 + arg0;
                var_s2_2 += 8;
                temp_t8_4->unkA254 = 0x7F;
                (var_s2_2 + arg0)->unkA250 = 0x9F;
                if (var_a1 != 0) {
                    goto block_89;
                }
                goto block_159;
            }
            var_s2_2 += 4;
            var_s0_4 += 1;
            (var_s2_2 + arg0)->unkA250 = 0x91;
            goto block_158;
        }
block_158:
        if (var_a1 == 0) {
block_159:
            if (var_a7_2 == 0) {
                var_s2_2 += 4;
                var_s0_4 += 1;
                (var_s2_2 + arg0)->unkA250 = 0x33;
            }
        } else {
block_89:
            var_s2_2 += 4;
            var_s0_4 += 1;
            (var_s2_2 + arg0)->unkA250 = 0x33;
        }
        if (var_a1 != 3) {
            goto block_92;
        }
        if (var_a7_2 == 0) {
            var_s2_3 = var_s2_2 + 4;
            var_s0_8 = var_s0_4 + 1;
            (var_s2_3 + arg0)->unkA250 = 0x6B;
        } else {
block_92:
            if (var_a1 != 0) {
                var_a0_12 = var_a1 & 1;
                goto block_94;
            }
            var_a0_12 = var_a1 & 1;
            if (var_a7_2 == 3) {
                var_s2_3 = var_s2_2 + 4;
                var_s0_8 = var_s0_4 + 1;
                (var_s2_3 + arg0)->unkA250 = 0x6C;
            } else {
block_94:
                var_a4_4 = var_a7_2 & 1;
                if (var_a0_12 != 0) {
                    var_s2_2 += 4;
                    var_s0_4 += 1;
                    (var_s2_2 + arg0)->unkA250 = 0x4D;
                    var_a4_4 = var_a7_2 & 1;
                }
                var_at_2 = var_a1 & 2;
                if (var_a4_4 != 0) {
                    var_s2_2 += 4;
                    var_s0_4 += 1;
                    (var_s2_2 + arg0)->unkA250 = 0x52;
                    var_at_2 = var_a1 & 2;
                }
                var_a2_2 = var_a7_2 & 2;
                if (var_at_2 != 0) {
                    var_s2_2 += 4;
                    var_s0_4 += 1;
                    (var_s2_2 + arg0)->unkA250 = 0x57;
                    var_a2_2 = var_a7_2 & 2;
                }
                var_a7_4 = var_a1 & 4;
                if (var_a2_2 != 0) {
                    var_s2_2 += 4;
                    var_s0_4 += 1;
                    (var_s2_2 + arg0)->unkA250 = 0x5C;
                    var_a7_4 = var_a1 & 4;
                }
                var_at_3 = var_a1 & 8;
                if (var_a7_4 != 0) {
                    var_s2_2 += 4;
                    var_s0_4 += 1;
                    (var_s2_2 + arg0)->unkA250 = 0x61;
                    var_at_3 = var_a1 & 8;
                }
                if (var_at_3 != 0) {
                    var_s2_2 += 4;
                    var_s0_4 += 1;
                    (var_s2_2 + arg0)->unkA250 = 0x66;
                }
                var_s2_3 = var_s2_2 + 4;
                var_s0_8 = var_s0_4 + 1;
                (var_s2_3 + arg0)->unkA250 = 0x6C;
            }
        }
        var_s2_2 = var_s2_3 + 4;
        var_s0_4 = var_s0_8 + 1;
        (var_s2_2 + arg0)->unkA250 = (s32) ((var_t9 == 0) ? 0x77 : 0x7B);
    }
    if (sp80 != 0) {
        temp_a1 = var_s2_2 + arg0 + 0x10000;
        var_s2_2 += 8;
        temp_a1->unk-5DAC = 0;
        var_s0_4 += 2;
        (var_s2_2 + arg0)->unkA250 = (s32) ((spC0 == 0) ? 0xC : ((var_ra == 0) ? 0x1A : 0x28));
    }
    if (var_t3_2 != 0) {
        var_s2_4 = var_s2_2 + 4;
        var_s0_9 = var_s0_4 + 1;
        if (var_t9 != 0) {
            var_a1_2 = 0x495;
        } else {
            if (sp68 != 0) {
                goto block_230;
            }
            if (var_t1 == 0) {
                var_a1_2 = (var_t2 == 0) ? 0x49A : 0x49F;
            } else {
block_230:
                var_a1_2 = 0x4A9;
                if (var_t2 == 0) {
                    var_a1_2 = 0x4A9;
                    if (sp58 == 0) {
                        var_a1_2 = 0x4A4;
                    }
                }
            }
        }
        temp_a0_13 = var_s2_4 + arg0;
        var_a0_13 = temp_a0_13 + 0x10000;
        temp_a0_13->unkA250 = var_a1_2;
        var_v0->unk-598C = 0x4C5;
        var_v0->unk-5990 = 0x4C5;
        if (var_t3_2 != 0) {
            goto block_114;
        }
        goto block_170;
    }
    if (var_t9 != 0) {
        var_a1_3 = spC;
        if (!(sp8->unk0 & 0x40)) {
            var_a1_3 = 0x495;
            var_s0_4 += 2;
            temp_t1 = var_s2_2 + arg0;
            var_s2_2 += 8;
            temp_t1->unkA254 = 0x4B0;
            (var_s2_2 + arg0)->unkA250 = 0x4BB;
        }
    } else {
        var_a1_3 = spC;
    }
    var_s2_4 = var_s2_2 + 4;
    temp_a0_14 = var_s2_4 + arg0;
    var_a0_13 = temp_a0_14 + 0x10000;
    temp_a0_14->unkA250 = var_a1_3;
    var_v0->unk-598C = 0x4C5;
    var_s0_9 = var_s0_4 + 1;
    var_v0->unk-5990 = 0x4C5;
    if (var_t3_2 == 0) {
block_170:
        var_v0->unk-59A8 = (u32) sp8->unk8;
        var_v0->unk-59A4 = (u32) sp8->unkC;
        var_v0->unk-59A0 = (u32) sp8->unk10;
        if (sp10 != 0) {
            temp_t1_2 = var_v0->unk-599C;
            var_v0->unk-599C = (s32) (temp_t1_2 + 1);
            var_v0->unk-59A8 = (u32) (arg0 + (temp_t1_2 * 4))->unkA254;
        }
        var_v0->unk-5998 = var_s0_9;
        var_s0_10 = var_s0_9 + 1;
        var_a4_5 = sp8;
        temp_a0_15 = var_s2_4 + (arg0 + 0x10000);
        temp_a0_15->unk-5DAC = 0x203;
        var_a0_14 = temp_a0_15 + 4;
loop_173:
        var_a0_14->unk-5DAC = (s32) var_a4_5->unk34;
        var_s0_10 += 1;
        if (var_a4_5->unk34 != 0x4C5) {
            var_a0_14->unk-5DA8 = (s32) var_a4_5->unk38;
            temp_a7_2 = var_a4_5->unk38;
            var_a4_5 += 8;
            var_a0_14 += 8;
            var_s0_10 += 1;
            if (temp_a7_2 != 0x4C5) {
                goto loop_173;
            }
        }
        if (sp10 != 0) {
            var_v0->unk-5990 = (s32) sp8->unk14;
            var_v0->unk-598C = (s32) sp8->unk18;
        }
    } else {
block_114:
        var_v0->unk-5998 = var_s0_9;
        var_a0_13->unk-5DAC = 0x203;
        var_a0_13->unk-5DA8 = 0x25E;
        (var_s2_4 + (arg0 + 0x10000))->unk-5DA4 = 0x4C5;
        temp_a2_3 = var_v0->unk-599C;
        var_v0->unk-598C = 0x4C5;
        var_v0->unk-5990 = 0x4C5;
        var_v0->unk-59A0 = 0x4C5U;
        var_v0->unk-59A4 = 0x4C5U;
        var_v0->unk-599C = (s32) (temp_a2_3 + 1);
        var_s0_10 = var_s0_9 + 3;
        var_v0->unk-59A8 = (u32) (arg0 + (temp_a2_3 * 4))->unkA254;
    }
    temp_a7_3 = arg0->unk16D38;
    if (temp_a7_3 >= 0x800) {
        temp_t1_3 = var_v0->unk-59A8;
        var_a4_6 = temp_a7_3;
        if ((u32) (temp_t1_3 + 0x32) >= 0x739U) {
            var_a4_6 = (s32) ((temp_t1_3 < (u32) temp_a7_3) ? temp_t1_3 : (u32) var_a4_6);
        }
        temp_t2 = var_v0->unk-59A4;
        if ((u32) (temp_t2 + 0x32) >= 0x739U) {
            var_a4_6 = (s32) ((temp_t2 < (u32) var_a4_6) ? temp_t2 : (u32) var_a4_6);
        }
        temp_t0 = var_v0->unk-59A0;
        if ((u32) (temp_t0 + 0x32) >= 0x739U) {
            var_a4_6 = (s32) ((temp_t0 < (u32) var_a4_6) ? temp_t0 : (u32) var_a4_6);
        }
        temp_a1_2 = arg0->unkA654;
        var_v1 = (u32) var_a4_6 < 0x738U;
        if (temp_a1_2 < var_s0_10) {
            sp128 = (s64) var_v0;
            temp_v1 = var_s0_10 - temp_a1_2;
            temp_v0_3 = (temp_a1_2 * 4) + arg0;
            var_v0_2 = temp_v0_3 + 0x10000;
            if (temp_v1 & 1) {
                temp_a1_3 = temp_v0_3->unkA254;
                if ((u32) (temp_a1_3 + 0x32) >= 0x739U) {
                    var_a4_6 = (s32) ((temp_a1_3 < (u32) var_a4_6) ? temp_a1_3 : (u32) var_a4_6);
                }
                var_v0_2 = temp_v0_3 + 0x10004;
            }
            if ((temp_v1 >> 1) != 0) {
                do {
                    temp_a1_4 = var_v0_2->unk-5DAC;
                    if ((u32) (temp_a1_4 + 0x32) >= 0x739U) {
                        var_a4_6 = (s32) ((temp_a1_4 < (u32) var_a4_6) ? temp_a1_4 : (u32) var_a4_6);
                    }
                    temp_a1_5 = var_v0_2->unk-5DA8;
                    temp_ra = (u32) (temp_a1_5 + 0x32) < 0x739U;
                    var_v0_2 += 8;
                    if (temp_ra == 0) {
                        var_a4_6 = (s32) ((temp_a1_5 < (u32) var_a4_6) ? temp_a1_5 : (u32) var_a4_6);
                    }
                } while (var_v0_2 != ((var_s0_10 * 4) + arg0 + 0x10000));
            }
            var_v0 = (void *) sp128;
            var_v1 = (u32) var_a4_6 < 0x738U;
        }
        if (var_v1 == 0) {
            temp_a5_2 = (temp_a7_3 == var_a4_6) ? 0 : var_a4_6;
            var_v0->unk-5994 = temp_a5_2;
            if ((u32) temp_a5_2 >= 0x739U) {
                var_a4_7 = temp_t2 < (u32) temp_a5_2;
                if (temp_t1_3 >= (u32) temp_a5_2) {
                    var_v0->unk-59A8 = (s32) ((temp_t1_3 - temp_a5_2) + 0x738);
                    var_a4_7 = temp_t2 < (u32) temp_a5_2;
                }
                var_t1_3 = temp_t0 < (u32) temp_a5_2;
                if (var_a4_7 == 0) {
                    var_v0->unk-59A4 = (s32) ((temp_t2 - temp_a5_2) + 0x738);
                    var_t1_3 = temp_t0 < (u32) temp_a5_2;
                }
                if (var_t1_3 == 0) {
                    var_v0->unk-59A0 = (s32) ((temp_t0 - temp_a5_2) + 0x738);
                }
                temp_a0_16 = var_v0->unk-5990;
                if (temp_a0_16 >= (u32) temp_a5_2) {
                    var_v0->unk-5990 = (u32) ((temp_a0_16 - temp_a5_2) + 0x738);
                }
                temp_a1_6 = arg0->unkA654;
                if (temp_a1_6 < var_s0_10) {
                    temp_v1_2 = var_s0_10 - temp_a1_6;
                    temp_v0_4 = (temp_a1_6 * 4) + arg0;
                    var_v0_3 = temp_v0_4 + 0x10000;
                    if (temp_v1_2 & 1) {
                        temp_a1_7 = temp_v0_4->unkA254;
                        if (temp_a1_7 >= (u32) temp_a5_2) {
                            temp_v0_4->unkA254 = (u32) ((temp_a1_7 - temp_a5_2) + 0x738);
                        }
                        var_v0_3 = temp_v0_4 + 0x10004;
                    }
                    if ((temp_v1_2 >> 1) != 0) {
loop_163:
                        temp_a1_8 = var_v0_3->unk-5DAC;
                        if (temp_a1_8 >= (u32) temp_a5_2) {
                            var_v0_3->unk-5DAC = (u32) ((temp_a1_8 - temp_a5_2) + 0x738);
                        }
                        temp_a1_9 = var_v0_3->unk-5DA8;
                        if (temp_a1_9 >= (u32) temp_a5_2) {
                            var_v0_3->unk-5DA8 = (u32) ((temp_a1_9 - temp_a5_2) + 0x738);
                        }
                        var_v0_3 += 8;
                        if (var_v0_3 != ((var_s0_10 * 4) + arg0 + 0x10000)) {
                            goto loop_163;
                        }
                    }
                }
            }
            /* Duplicate return node #152. Try simplifying control flow for better match */
            arg0->unkA654 = var_s0_10;
            arg0->unk16960 = (s32) (arg0->unk16960 | 4);
            *(void *)0x1018 = 2;
            return;
        }
        var_v0->unk-5994 = 0x738;
        arg0->unkA654 = var_s0_10;
        arg0->unk16960 = (s32) (arg0->unk16960 | 4);
        *(s32 *)0x1018 = 2;
        return;
    }
    arg0->unkA654 = var_s0_10;
    arg0->unk16960 = (s32) (arg0->unk16960 | 4);
    *(void *)0x1018 = 2;
}

void __glOdysseyValidateProgram(void *arg0) {
    s64 sp10;
    s64 sp0;
    s32 temp_ra;
    s32 var_a2;
    s64 var_a0;
    u32 temp_a6;
    void *var_a0_2;

    sp10 = (s64) arg0;
    if (arg0->unk21EF8 != 0) {
        HQ2_READ_FIFO = 0x298080C5;
        return;
    }
    temp_ra = sp10->unkA6A8;
    sp10->unkA6A8 = 0;
    sp0 = (s64) temp_ra;
    sp10->unkA654 = 0U;
    __glOdyim_SoftBegin(sp10, 0);
    if (__glOdysseyGetNumSWClipPlanes((void *) sp10) != 0) {
        __glOdyim_SoftBegin(sp10, 1);
    }
    var_a2 = 0;
    sp10->unkA6A8 = (s32) sp0;
    var_a0 = sp0;
    if (sp10->unkA654 != 0) {
        var_a0_2 = sp10 + 0x10000;
        do {
            HQ2_READ_FIFO = 0x28008000 | ((var_a2 & 0x3FF) | ((var_a2 >> 0xA) << 0x17));
            temp_a6 = var_a0_2->unk-5DAC;
            HQ2_READ_FIFO = 0x60008000 | ((temp_a6 & 0x3FF) | ((temp_a6 >> 0xA) << 0x17));
            var_a2 += 1;
            var_a0_2 += 4;
        } while ((u32) var_a2 < (u32) sp10->unkA654);
        var_a0 = (s64) sp10->unkA6A8;
    }
    sp10->unkA6A4 = (s32) var_a0;
    sp10->unkA6A0 = (s32) var_a0;
    sp10->unkA69C = (s32) var_a0;
    sp10->unkA698 = (s32) var_a0;
}

void __glOdysseySetProgram(void *arg0, s32 arg1) {
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 var_a1;
    s32 var_a4;
    s32 var_a6_2;
    s32 var_t8;
    s32 var_t9;
    s64 temp_a6;
    u16 temp_a2;
    u16 temp_a2_2;
    u16 temp_at;
    u16 temp_at_2;
    u16 temp_at_3;
    u16 temp_t0;
    u16 temp_t1_4;
    u16 temp_t3;
    u16 temp_t8;
    u16 temp_t9;
    u16 temp_t9_2;
    u16 temp_t9_3;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u16 temp_v1;
    u16 temp_v1_2;
    u16 temp_v1_3;
    u32 temp_a2_3;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 var_a6;
    void *temp_a4_2;
    void *temp_t1;
    void *temp_t3_2;
    void *var_a1_2;

    temp_a4 = arg0->unkA6AC;
    temp_a5 = arg0->unkA6B0;
    if (arg0->unk21EF8 != 0) {
        HQ2_READ_FIFO = 0x298080C5;
        return;
    }
    var_a6 = (temp_a5 - temp_a4) + 0x738;
    if (arg0->unkA654 != 0) {
        if ((temp_a4 != 0) && (temp_a5 >= temp_a4)) {

        } else {
            var_a6 = temp_a5;
        }
        HQ2_READ_FIFO = 0x27008000 | ((temp_a5 & 0x3FF) | ((temp_a5 >> 0xA) << 0x17));
        temp_t1 = arg0->unk16D34 + (var_a6 * 0xC);
        temp_a2 = temp_t1->unkA;
        HQ2_READ_FIFO = 0x40008000 | ((temp_a2 & 0x3FF) | (((s32) temp_a2 >> 0xA) << 0x17));
        temp_v1 = temp_t1->unk8;
        HQ2_READ_FIFO = 0x40008000 | ((temp_v1 & 0x3FF) | (((s32) temp_v1 >> 0xA) << 0x17));
        temp_v0 = temp_t1->unk6;
        HQ2_READ_FIFO = 0x40008000 | ((temp_v0 & 0x3FF) | (((s32) temp_v0 >> 0xA) << 0x17));
        temp_at = temp_t1->unk4;
        HQ2_READ_FIFO = 0x40008000 | ((temp_at & 0x3FF) | (((s32) temp_at >> 0xA) << 0x17));
        temp_t9 = temp_t1->unk2;
        HQ2_READ_FIFO = 0x40008000 | ((temp_t9 & 0x3FF) | (((s32) temp_t9 >> 0xA) << 0x17));
        temp_t3 = temp_t1->unk0;
        HQ2_READ_FIFO = 0x40008000 | ((temp_t3 & 0x3FF) | (((s32) temp_t3 >> 0xA) << 0x17));
        temp_t3_2 = arg0 + (arg1 << 5);
        arg0->unkA6A8 = arg1;
        temp_a5_2 = temp_t3_2->unkA66C;
        if (temp_a5_2 != 0) {
            temp_a6 = arg0->unk16D30;
            if (temp_a5_2 != temp_a4) {
                temp_t1_2 = arg0->unk16D38 - temp_a5_2;
                var_a1 = temp_a6 << 0;
                var_a4 = 0x738;
                temp_t1_3 = (temp_t1_2 >= 0xC7) ? 0xC7 : temp_t1_2;
                var_a6_2 = 0;
                if (temp_t1_3 > 0) {
                    var_a1_2 = var_a1 + (temp_a5_2 * 0xC) + 0xA;
                    var_t9 = 0x738 >> 0xA;
                    var_t8 = 0x738 & 0x3FF;
                    do {
                        HQ2_READ_FIFO = 0x27008000 | (var_t8 | (var_t9 << 0x17));
                        temp_t9_2 = var_a1_2->unk0;
                        HQ2_READ_FIFO = 0x40008000 | ((temp_t9_2 & 0x3FF) | (((s32) temp_t9_2 >> 0xA) << 0x17));
                        temp_t8 = var_a1_2->unk-2;
                        HQ2_READ_FIFO = 0x40008000 | ((temp_t8 & 0x3FF) | (((s32) temp_t8 >> 0xA) << 0x17));
                        temp_a2_2 = var_a1_2->unk-4;
                        HQ2_READ_FIFO = 0x40008000 | ((temp_a2_2 & 0x3FF) | (((s32) temp_a2_2 >> 0xA) << 0x17));
                        temp_v1_2 = var_a1_2->unk-6;
                        HQ2_READ_FIFO = 0x40008000 | ((temp_v1_2 & 0x3FF) | (((s32) temp_v1_2 >> 0xA) << 0x17));
                        temp_v0_2 = var_a1_2->unk-8;
                        HQ2_READ_FIFO = 0x40008000 | ((temp_v0_2 & 0x3FF) | (((s32) temp_v0_2 >> 0xA) << 0x17));
                        temp_at_2 = var_a1_2->unk-A;
                        HQ2_READ_FIFO = 0x40008000 | ((temp_at_2 & 0x3FF) | (((s32) temp_at_2 >> 0xA) << 0x17));
                        var_a4 += 1;
                        var_a6_2 += 1;
                        var_a1_2 += 0xC;
                        var_t8 = var_a4 & 0x3FF;
                        var_t9 = var_a4 >> 0xA;
                    } while (temp_t1_3 != var_a6_2);
                    var_a1 = arg0->unk16D30 << 0;
                }
                arg0->unkA6AC = temp_t3_2->unkA66C;
            } else {
                var_a1 = temp_a6 << 0;
            }
        } else {
            var_a1 = arg0->unk16D30 << 0;
        }
        arg0->unkA6B0 = (u32) temp_t3_2->unkA670;
        temp_a2_3 = temp_t3_2->unkA670;
        temp_a4_2 = var_a1 + (temp_t3_2->unkA674 * 0xC);
        HQ2_READ_FIFO = 0x27008000 | ((temp_a2_3 & 0x3FF) | ((temp_a2_3 >> 0xA) << 0x17));
        temp_v1_3 = temp_a4_2->unkA;
        HQ2_READ_FIFO = 0x40008000 | ((temp_v1_3 & 0x3FF) | (((s32) temp_v1_3 >> 0xA) << 0x17));
        temp_v0_3 = temp_a4_2->unk8;
        HQ2_READ_FIFO = 0x40008000 | ((temp_v0_3 & 0x3FF) | (((s32) temp_v0_3 >> 0xA) << 0x17));
        temp_at_3 = temp_a4_2->unk6;
        HQ2_READ_FIFO = 0x40008000 | ((temp_at_3 & 0x3FF) | (((s32) temp_at_3 >> 0xA) << 0x17));
        temp_t9_3 = temp_a4_2->unk4;
        HQ2_READ_FIFO = 0x40008000 | ((temp_t9_3 & 0x3FF) | (((s32) temp_t9_3 >> 0xA) << 0x17));
        temp_t1_4 = temp_a4_2->unk2;
        HQ2_READ_FIFO = 0x40008000 | ((temp_t1_4 & 0x3FF) | (((s32) temp_t1_4 >> 0xA) << 0x17));
        temp_t0 = temp_a4_2->unk0;
        HQ2_READ_FIFO = 0x40008000 | ((temp_t0 & 0x3FF) | (((s32) temp_t0 >> 0xA) << 0x17));
        arg0->unkA220 = (u32) (temp_t3_2->unkA668 + 1);
        arg0->unkA1F8 = (u32) (arg0 + (temp_t3_2->unkA668 * 4))->unkA254;
        HQ2_READ_FIFO = 0x29008000 | ((arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17));
        HQ2_READ_FIFO = 0x33008000 | ((arg0->unkA220 & 0x3FF) | (((u32) arg0->unkA220 >> 0xA) << 0x17));
        HQ2_READ_FIFO = 0x90808800;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0;
        arg0->unkA220 = (u32) temp_t3_2->unkA664;
        arg0->unkA1F8 = (u32) temp_t3_2->unkA658;
        arg0->unkA1FC = (u32) temp_t3_2->unkA65C;
        arg0->unkA204 = (u32) temp_t3_2->unkA660;
        HQ2_READ_FIFO = 0x33008000 | ((arg0->unkA220 & 0x3FF) | (((u32) arg0->unkA220 >> 0xA) << 0x17));
        HQ2_READ_FIFO = 0x29008000 | ((arg0->unkA1F8 & 0x3FF) | (((u32) arg0->unkA1F8 >> 0xA) << 0x17));
        HQ2_READ_FIFO = (arg0->unkA1FC & 0x3FF) | (((u32) arg0->unkA1FC >> 0xA) << 0x17) | 0x2A008000;
        HQ2_READ_FIFO = (arg0->unkA204 & 0x3FF) | (((u32) arg0->unkA204 >> 0xA) << 0x17) | 0x2C008000;
    }
}
