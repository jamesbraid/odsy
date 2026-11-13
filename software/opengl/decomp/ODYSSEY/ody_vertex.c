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
Error occurred while processing instruction: bgez $v1, .L0d9ea7dc

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
Error occurred while processing instruction: bgez $a1, .L0d9ea680

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a6, .L0d9ea664

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
Error occurred while processing instruction: bgez $v1, .L0d9ea7dc

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
Error occurred while processing instruction: bgez $a1, .L0d9ea680

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
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a6, .L0d9ea664

? __glOdyim_Materialfv(?, ?, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *, void *); /* extern */
? __glValidateVertex4();                            /* extern */
extern void *HQ2_READ_FIFO;
extern ? sub_0d9f0000;
extern ? sub_0daf0000;

s32 __glOdysseyClipCheck(void *arg0, void *arg1) {
    s32 temp_a6;
    s32 var_v0;
    u32 var_a4;

    var_a4 = arg0->unk16818;
    if (var_a4 != 0) {
        var_v0 = 0;
        do {
            temp_a6 = var_a4 & 1;
            var_a4 = var_a4 >> 1;
            if (temp_a6 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f5 */);
                M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f2, $f6 */);
                M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f7 */);
                var_v0 = M2C_ERROR(/* unknown instruction: movt $v0, $a7, $fcc0 */);
            }
        } while (var_a4 != 0);
        return var_v0;
    }
    return 0;
}

void __glOdysseySaveN(void *arg0, void *arg1) {
    arg1->unkC8 = (f32) arg0->unkD8;
    arg1->unkC4 = (f32) arg0->unkD4;
    arg1->unkC0 = (f32) arg0->unkD0;
    arg0->unk2EE4();
}

void __glOdysseySaveCN(void *arg0, void *arg1) {
    arg1->unkC8 = (f32) arg0->unkD8;
    arg1->unkC4 = (f32) arg0->unkD4;
    arg1->unkC0 = (f32) arg0->unkD0;
    arg1->unk9C = (f32) arg0->unkCC;
    arg1->unk98 = (f32) arg0->unkC8;
    arg1->unk94 = (f32) arg0->unkC4;
    arg1->unk90 = (f32) arg0->unkC0;
    arg0->unk2EE4();
}

void __glOdysseySaveTN(void *arg0, void *arg1) {
    arg1->unkC8 = (f32) arg0->unkD8;
    arg1->unkC4 = (f32) arg0->unkD4;
    arg1->unkC0 = (f32) arg0->unkD0;
    arg1->unk3C = (f32) arg0->unkEC;
    arg1->unk38 = (f32) arg0->unkE8;
    arg1->unk34 = (f32) arg0->unkE4;
    arg1->unk30 = (f32) arg0->unkE0;
    arg0->unk2EE4();
}

void __glOdysseySaveCTN(void *arg0, void *arg1) {
    arg1->unkC8 = (f32) arg0->unkD8;
    arg1->unkC4 = (f32) arg0->unkD4;
    arg1->unkC0 = (f32) arg0->unkD0;
    arg1->unk3C = (f32) arg0->unkEC;
    arg1->unk38 = (f32) arg0->unkE8;
    arg1->unk34 = (f32) arg0->unkE4;
    arg1->unk30 = (f32) arg0->unkE0;
    arg1->unk9C = (f32) arg0->unkCC;
    arg1->unk98 = (f32) arg0->unkC8;
    arg1->unk94 = (f32) arg0->unkC4;
    arg1->unk90 = (f32) arg0->unkC0;
    arg0->unk2EE4();
}

void RGBSendFc(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC580D015;
    HQ2_READ_FIFO = arg0->unk90;
    HQ2_READ_FIFO = arg0->unk94;
    HQ2_READ_FIFO = arg0->unk98;
    HQ2_READ_FIFO = arg0->unk9C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendFcN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC580D015;
    HQ2_READ_FIFO = arg0->unk90;
    HQ2_READ_FIFO = arg0->unk94;
    HQ2_READ_FIFO = arg0->unk98;
    HQ2_READ_FIFO = arg0->unk9C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendFcT(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC580D015;
    HQ2_READ_FIFO = arg0->unk90;
    HQ2_READ_FIFO = arg0->unk94;
    HQ2_READ_FIFO = arg0->unk98;
    HQ2_READ_FIFO = arg0->unk9C;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendFcTN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC580D015;
    HQ2_READ_FIFO = arg0->unk90;
    HQ2_READ_FIFO = arg0->unk94;
    HQ2_READ_FIFO = arg0->unk98;
    HQ2_READ_FIFO = arg0->unk9C;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedFmN(void *arg0) {
    f32 sp0;
    void *temp_f12;
    void *temp_f13;
    void *temp_f14;
    void *temp_f15;
    void *temp_f16;
    void *var_a4;
    void *var_a5;

    var_a4 = arg0 + 0xD0;
    var_a5 = (void *)0x10000;
    if (arg0->unk190 != 0) {
        var_a5 = (void *)0x1681C;
        var_a4 = *(s32 *)0x1010 + 0x1681C;
    }
    HQ2_READ_FIFO = (void *)0xC680D02F;
    temp_f16 = var_a4->unk0;
    HQ2_READ_FIFO = temp_f16;
    temp_f15 = var_a4->unk4;
    HQ2_READ_FIFO = temp_f15;
    temp_f14 = var_a4->unk8;
    HQ2_READ_FIFO = temp_f14;
    temp_f13 = var_a4->unkC;
    HQ2_READ_FIFO = temp_f13;
    HQ2_READ_FIFO = (void *)0xC880D031;
    temp_f12 = var_a4->unk20;
    HQ2_READ_FIFO = temp_f12;
    HQ2_READ_FIFO = var_a4->unk24;
    HQ2_READ_FIFO = var_a4->unk28;
    HQ2_READ_FIFO = var_a4->unk2C;
    HQ2_READ_FIFO = (void *)0xC780D030;
    HQ2_READ_FIFO = var_a4->unk10;
    HQ2_READ_FIFO = var_a4->unk14;
    HQ2_READ_FIFO = var_a4->unk18;
    HQ2_READ_FIFO = var_a4->unk1C;
    HQ2_READ_FIFO = (void *)0xC980D032;
    HQ2_READ_FIFO = var_a4->unk30;
    HQ2_READ_FIFO = var_a4->unk34;
    HQ2_READ_FIFO = var_a4->unk38;
    HQ2_READ_FIFO = var_a4->unk3C;
    sp0 = var_a4->unk40;
    __glOdyim_Materialfv(0x404, 0x1601, sp, var_a4, var_a5, (void *)0x10000, (void *)0xC980D032, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16);
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedFmTN(void *arg0) {
    f32 sp0;
    void *temp_f12;
    void *temp_f13;
    void *temp_f14;
    void *temp_f15;
    void *temp_f16;
    void *var_a4;
    void *var_a5;

    var_a4 = arg0 + 0xD0;
    var_a5 = (void *)0x10000;
    if (arg0->unk190 != 0) {
        var_a5 = (void *)0x1681C;
        var_a4 = *(s32 *)0x1010 + 0x1681C;
    }
    HQ2_READ_FIFO = (void *)0xC680D02F;
    temp_f16 = var_a4->unk0;
    HQ2_READ_FIFO = temp_f16;
    temp_f15 = var_a4->unk4;
    HQ2_READ_FIFO = temp_f15;
    temp_f14 = var_a4->unk8;
    HQ2_READ_FIFO = temp_f14;
    temp_f13 = var_a4->unkC;
    HQ2_READ_FIFO = temp_f13;
    HQ2_READ_FIFO = (void *)0xC880D031;
    temp_f12 = var_a4->unk20;
    HQ2_READ_FIFO = temp_f12;
    HQ2_READ_FIFO = var_a4->unk24;
    HQ2_READ_FIFO = var_a4->unk28;
    HQ2_READ_FIFO = var_a4->unk2C;
    HQ2_READ_FIFO = (void *)0xC780D030;
    HQ2_READ_FIFO = var_a4->unk10;
    HQ2_READ_FIFO = var_a4->unk14;
    HQ2_READ_FIFO = var_a4->unk18;
    HQ2_READ_FIFO = var_a4->unk1C;
    HQ2_READ_FIFO = (void *)0xC980D032;
    HQ2_READ_FIFO = var_a4->unk30;
    HQ2_READ_FIFO = var_a4->unk34;
    HQ2_READ_FIFO = var_a4->unk38;
    HQ2_READ_FIFO = var_a4->unk3C;
    sp0 = var_a4->unk40;
    __glOdyim_Materialfv(0x404, 0x1601, sp, var_a4, var_a5, (void *)0x10000, (void *)0xC980D032, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16);
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedBmFmN(void *arg0) {
    s32 temp_s8;
    u8 temp_at;
    void *temp_a5;
    void *temp_f12;
    void *temp_f13;
    void *temp_f14;
    void *temp_f15;
    void *temp_f16;
    void *temp_s8_2;
    void *temp_v1;

    temp_s8 = *(s32 *)0x1010;
    temp_at = arg0->unk190;
    temp_a5 = arg0 + 0xD0;
    HQ2_READ_FIFO = (void *)0xC680D02F;
    temp_v1 = (temp_at == 0) ? temp_a5 : (temp_s8 + 0x1681C);
    temp_f16 = temp_v1->unk0;
    HQ2_READ_FIFO = temp_f16;
    temp_f15 = temp_v1->unk4;
    HQ2_READ_FIFO = temp_f15;
    temp_f14 = temp_v1->unk8;
    HQ2_READ_FIFO = temp_f14;
    temp_f13 = temp_v1->unkC;
    HQ2_READ_FIFO = temp_f13;
    HQ2_READ_FIFO = (void *)0xC880D031;
    temp_f12 = temp_v1->unk20;
    HQ2_READ_FIFO = temp_f12;
    HQ2_READ_FIFO = temp_v1->unk24;
    HQ2_READ_FIFO = temp_v1->unk28;
    HQ2_READ_FIFO = temp_v1->unk2C;
    HQ2_READ_FIFO = (void *)0xC780D030;
    HQ2_READ_FIFO = temp_v1->unk10;
    HQ2_READ_FIFO = temp_v1->unk14;
    HQ2_READ_FIFO = temp_v1->unk18;
    HQ2_READ_FIFO = temp_v1->unk1C;
    HQ2_READ_FIFO = (void *)0xC980D032;
    HQ2_READ_FIFO = temp_v1->unk30;
    HQ2_READ_FIFO = temp_v1->unk34;
    HQ2_READ_FIFO = temp_v1->unk38;
    HQ2_READ_FIFO = temp_v1->unk3C;
    temp_s8_2 = (temp_at == 0) ? (arg0 + 0x120) : (temp_s8 + 0x1686C);
    __glOdyim_Materialfv(0x404, 0x1601, sp, (void *)0xC880D031, (void *)0xC680D02F, temp_a5, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_v1->unk40);
    HQ2_READ_FIFO = (void *)0xCA80D035;
    HQ2_READ_FIFO = temp_s8_2->unk0;
    HQ2_READ_FIFO = temp_s8_2->unk4;
    HQ2_READ_FIFO = temp_s8_2->unk8;
    HQ2_READ_FIFO = temp_s8_2->unkC;
    HQ2_READ_FIFO = (void *)0xCC80D037;
    HQ2_READ_FIFO = temp_s8_2->unk20;
    HQ2_READ_FIFO = temp_s8_2->unk24;
    HQ2_READ_FIFO = temp_s8_2->unk28;
    HQ2_READ_FIFO = temp_s8_2->unk2C;
    HQ2_READ_FIFO = (void *)0xCB80D036;
    HQ2_READ_FIFO = temp_s8_2->unk10;
    HQ2_READ_FIFO = temp_s8_2->unk14;
    HQ2_READ_FIFO = temp_s8_2->unk18;
    HQ2_READ_FIFO = temp_s8_2->unk1C;
    HQ2_READ_FIFO = (void *)0xCD80D038;
    HQ2_READ_FIFO = temp_s8_2->unk30;
    HQ2_READ_FIFO = temp_s8_2->unk34;
    HQ2_READ_FIFO = temp_s8_2->unk38;
    HQ2_READ_FIFO = temp_s8_2->unk3C;
    __glOdyim_Materialfv(0x405, 0x1601, sp, (void *)0xCA80D035, temp_s8_2->unk40);
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedBmFmTN(void *arg0) {
    s32 temp_s8;
    u8 temp_at;
    void *temp_a5;
    void *temp_f12;
    void *temp_f13;
    void *temp_f14;
    void *temp_f15;
    void *temp_f16;
    void *temp_s8_2;
    void *temp_v1;

    temp_s8 = *(s32 *)0x1010;
    temp_at = arg0->unk190;
    temp_a5 = arg0 + 0x120;
    HQ2_READ_FIFO = (void *)0xCA80D035;
    temp_v1 = (temp_at == 0) ? temp_a5 : (temp_s8 + 0x1686C);
    temp_f16 = temp_v1->unk0;
    HQ2_READ_FIFO = temp_f16;
    temp_f15 = temp_v1->unk4;
    HQ2_READ_FIFO = temp_f15;
    temp_f14 = temp_v1->unk8;
    HQ2_READ_FIFO = temp_f14;
    temp_f13 = temp_v1->unkC;
    HQ2_READ_FIFO = temp_f13;
    HQ2_READ_FIFO = (void *)0xCC80D037;
    temp_f12 = temp_v1->unk20;
    HQ2_READ_FIFO = temp_f12;
    HQ2_READ_FIFO = temp_v1->unk24;
    HQ2_READ_FIFO = temp_v1->unk28;
    HQ2_READ_FIFO = temp_v1->unk2C;
    HQ2_READ_FIFO = (void *)0xCB80D036;
    HQ2_READ_FIFO = temp_v1->unk10;
    HQ2_READ_FIFO = temp_v1->unk14;
    HQ2_READ_FIFO = temp_v1->unk18;
    HQ2_READ_FIFO = temp_v1->unk1C;
    HQ2_READ_FIFO = (void *)0xCD80D038;
    HQ2_READ_FIFO = temp_v1->unk30;
    HQ2_READ_FIFO = temp_v1->unk34;
    HQ2_READ_FIFO = temp_v1->unk38;
    HQ2_READ_FIFO = temp_v1->unk3C;
    temp_s8_2 = (temp_at == 0) ? (arg0 + 0xD0) : (temp_s8 + 0x1681C);
    __glOdyim_Materialfv(0x405, 0x1601, sp, (void *)0xCC80D037, (void *)0xCA80D035, temp_a5, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_v1->unk40);
    HQ2_READ_FIFO = (void *)0xC680D02F;
    HQ2_READ_FIFO = temp_s8_2->unk0;
    HQ2_READ_FIFO = temp_s8_2->unk4;
    HQ2_READ_FIFO = temp_s8_2->unk8;
    HQ2_READ_FIFO = temp_s8_2->unkC;
    HQ2_READ_FIFO = (void *)0xC880D031;
    HQ2_READ_FIFO = temp_s8_2->unk20;
    HQ2_READ_FIFO = temp_s8_2->unk24;
    HQ2_READ_FIFO = temp_s8_2->unk28;
    HQ2_READ_FIFO = temp_s8_2->unk2C;
    HQ2_READ_FIFO = (void *)0xC780D030;
    HQ2_READ_FIFO = temp_s8_2->unk10;
    HQ2_READ_FIFO = temp_s8_2->unk14;
    HQ2_READ_FIFO = temp_s8_2->unk18;
    HQ2_READ_FIFO = temp_s8_2->unk1C;
    HQ2_READ_FIFO = (void *)0xC980D032;
    HQ2_READ_FIFO = temp_s8_2->unk30;
    HQ2_READ_FIFO = temp_s8_2->unk34;
    HQ2_READ_FIFO = temp_s8_2->unk38;
    HQ2_READ_FIFO = temp_s8_2->unk3C;
    __glOdyim_Materialfv(0x404, 0x1601, sp, (void *)0xC680D02F, temp_s8_2->unk40);
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedFmN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if ((*(void **)0x1010)->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    }
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedFmTN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if ((*(void **)0x1010)->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    }
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedBmFmN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if ((*(void **)0x1010)->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = arg0->unk180;
        HQ2_READ_FIFO = arg0->unk184;
        HQ2_READ_FIFO = arg0->unk188;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    }
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedBmFmTN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if ((*(void **)0x1010)->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = arg0->unk180;
        HQ2_READ_FIFO = arg0->unk184;
        HQ2_READ_FIFO = arg0->unk188;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    }
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedFmNFast(void *arg0) {
    void *temp_f12;
    void *temp_f12_2;
    void *temp_f13;
    void *temp_f13_2;
    void *temp_f14;
    void *temp_f14_2;
    void *temp_f15;
    void *temp_f16;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (arg0->unk190 != 0) {
        if (temp_s0->unk168C4 != 0) {
            HQ2_READ_FIFO = (void *)0xC680D02F;
            temp_f16 = temp_s0->unk1681C;
            HQ2_READ_FIFO = temp_f16;
            temp_f15 = temp_s0->unk16820;
            HQ2_READ_FIFO = temp_f15;
            temp_f14 = temp_s0->unk16824;
            HQ2_READ_FIFO = temp_f14;
            temp_f13 = temp_s0->unk16828;
            HQ2_READ_FIFO = temp_f13;
            HQ2_READ_FIFO = (void *)0xC880D031;
            temp_f12 = temp_s0->unk1683C;
            HQ2_READ_FIFO = temp_f12;
            HQ2_READ_FIFO = temp_s0->unk16840;
            HQ2_READ_FIFO = temp_s0->unk16844;
            HQ2_READ_FIFO = temp_s0->unk16848;
            HQ2_READ_FIFO = (void *)0xC780D030;
            HQ2_READ_FIFO = temp_s0->unk1682C;
            HQ2_READ_FIFO = temp_s0->unk16830;
            HQ2_READ_FIFO = temp_s0->unk16834;
            HQ2_READ_FIFO = temp_s0->unk16838;
            HQ2_READ_FIFO = (void *)0xC980D032;
            HQ2_READ_FIFO = temp_s0->unk1684C;
            HQ2_READ_FIFO = temp_s0->unk16850;
            HQ2_READ_FIFO = temp_s0->unk16854;
            HQ2_READ_FIFO = temp_s0->unk16858;
            __glOdyim_Materialfv(0x404, 0x1601, sp, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_s0->unk1685C);
            temp_s0->unk168C4 = 0U;
        }
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        temp_f14_2 = arg0->unkD0;
        HQ2_READ_FIFO = temp_f14_2;
        temp_f13_2 = arg0->unkD4;
        HQ2_READ_FIFO = temp_f13_2;
        temp_f12_2 = arg0->unkD8;
        HQ2_READ_FIFO = temp_f12_2;
        HQ2_READ_FIFO = arg0->unkDC;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unkF0;
        HQ2_READ_FIFO = arg0->unkF4;
        HQ2_READ_FIFO = arg0->unkF8;
        HQ2_READ_FIFO = arg0->unkFC;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = arg0->unkE0;
        HQ2_READ_FIFO = arg0->unkE4;
        HQ2_READ_FIFO = arg0->unkE8;
        HQ2_READ_FIFO = arg0->unkEC;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk100;
        HQ2_READ_FIFO = arg0->unk104;
        HQ2_READ_FIFO = arg0->unk108;
        HQ2_READ_FIFO = arg0->unk10C;
        __glOdyim_Materialfv(0x404, 0x1601, sp, (void *)0xC980D032, (void *)0xC780D030, (void *)0xC880D031, (void *)0xC680D02F, temp_f12_2, temp_f13_2, temp_f14_2, arg0->unk110);
        temp_s0->unk168C4 = 1U;
    }
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedFmTNFast(void *arg0) {
    void *temp_f12;
    void *temp_f12_2;
    void *temp_f13;
    void *temp_f13_2;
    void *temp_f14;
    void *temp_f14_2;
    void *temp_f15;
    void *temp_f15_2;
    void *temp_f16;
    void *temp_f16_2;
    void *temp_f17;
    void *temp_f18;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (arg0->unk190 != 0) {
        if (temp_s0->unk168C4 != 0) {
            HQ2_READ_FIFO = (void *)0xC680D02F;
            temp_f16 = temp_s0->unk1681C;
            HQ2_READ_FIFO = temp_f16;
            temp_f15 = temp_s0->unk16820;
            HQ2_READ_FIFO = temp_f15;
            temp_f14 = temp_s0->unk16824;
            HQ2_READ_FIFO = temp_f14;
            temp_f13 = temp_s0->unk16828;
            HQ2_READ_FIFO = temp_f13;
            HQ2_READ_FIFO = (void *)0xC880D031;
            temp_f12 = temp_s0->unk1683C;
            HQ2_READ_FIFO = temp_f12;
            HQ2_READ_FIFO = temp_s0->unk16840;
            HQ2_READ_FIFO = temp_s0->unk16844;
            HQ2_READ_FIFO = temp_s0->unk16848;
            HQ2_READ_FIFO = (void *)0xC780D030;
            HQ2_READ_FIFO = temp_s0->unk1682C;
            HQ2_READ_FIFO = temp_s0->unk16830;
            HQ2_READ_FIFO = temp_s0->unk16834;
            HQ2_READ_FIFO = temp_s0->unk16838;
            HQ2_READ_FIFO = (void *)0xC980D032;
            HQ2_READ_FIFO = temp_s0->unk1684C;
            HQ2_READ_FIFO = temp_s0->unk16850;
            HQ2_READ_FIFO = temp_s0->unk16854;
            HQ2_READ_FIFO = temp_s0->unk16858;
            __glOdyim_Materialfv(0x404, 0x1601, sp, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_s0->unk1685C);
            temp_s0->unk168C4 = 0U;
        }
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        temp_f18 = arg0->unkD0;
        HQ2_READ_FIFO = temp_f18;
        temp_f17 = arg0->unkD4;
        HQ2_READ_FIFO = temp_f17;
        temp_f16_2 = arg0->unkD8;
        HQ2_READ_FIFO = temp_f16_2;
        temp_f15_2 = arg0->unkDC;
        HQ2_READ_FIFO = temp_f15_2;
        HQ2_READ_FIFO = (void *)0xC880D031;
        temp_f14_2 = arg0->unkF0;
        HQ2_READ_FIFO = temp_f14_2;
        temp_f13_2 = arg0->unkF4;
        HQ2_READ_FIFO = temp_f13_2;
        temp_f12_2 = arg0->unkF8;
        HQ2_READ_FIFO = temp_f12_2;
        HQ2_READ_FIFO = arg0->unkFC;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = arg0->unkE0;
        HQ2_READ_FIFO = arg0->unkE4;
        HQ2_READ_FIFO = arg0->unkE8;
        HQ2_READ_FIFO = arg0->unkEC;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk100;
        HQ2_READ_FIFO = arg0->unk104;
        HQ2_READ_FIFO = arg0->unk108;
        HQ2_READ_FIFO = arg0->unk10C;
        __glOdyim_Materialfv(0x404, 0x1601, sp, (void *)0xC980D032, (void *)0xC780D030, (void *)0xC880D031, temp_f12_2, temp_f13_2, temp_f14_2, temp_f15_2, temp_f16_2, temp_f17, temp_f18, arg0->unk110);
        temp_s0->unk168C4 = 1U;
    }
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedBmFmNFast(void *arg0) {
    u8 var_a2;
    void *temp_f12;
    void *temp_f12_2;
    void *temp_f12_3;
    void *temp_f13;
    void *temp_f13_2;
    void *temp_f13_3;
    void *temp_f14;
    void *temp_f14_2;
    void *temp_f14_3;
    void *temp_f15;
    void *temp_f15_2;
    void *temp_f15_3;
    void *temp_f16;
    void *temp_f16_2;
    void *temp_f17;
    void *temp_f18;
    void *temp_f19;
    void *temp_s0;

    var_a2 = arg0->unk190;
    temp_s0 = *(void **)0x1010;
    if (var_a2 != 0) {
        if (temp_s0->unk168C5 != 0) {
            HQ2_READ_FIFO = (void *)0xCA80D035;
            temp_f16 = temp_s0->unk1686C;
            HQ2_READ_FIFO = temp_f16;
            temp_f15 = temp_s0->unk16870;
            HQ2_READ_FIFO = temp_f15;
            temp_f14 = temp_s0->unk16874;
            HQ2_READ_FIFO = temp_f14;
            temp_f13 = temp_s0->unk16878;
            HQ2_READ_FIFO = temp_f13;
            HQ2_READ_FIFO = (void *)0xCC80D037;
            temp_f12 = temp_s0->unk1688C;
            HQ2_READ_FIFO = temp_f12;
            HQ2_READ_FIFO = temp_s0->unk16890;
            HQ2_READ_FIFO = temp_s0->unk16894;
            HQ2_READ_FIFO = temp_s0->unk16898;
            HQ2_READ_FIFO = (void *)0xCB80D036;
            HQ2_READ_FIFO = temp_s0->unk1687C;
            HQ2_READ_FIFO = temp_s0->unk16880;
            HQ2_READ_FIFO = temp_s0->unk16884;
            HQ2_READ_FIFO = temp_s0->unk16888;
            HQ2_READ_FIFO = (void *)0xCD80D038;
            HQ2_READ_FIFO = temp_s0->unk1689C;
            HQ2_READ_FIFO = temp_s0->unk168A0;
            HQ2_READ_FIFO = temp_s0->unk168A4;
            HQ2_READ_FIFO = temp_s0->unk168A8;
            __glOdyim_Materialfv(0x405, 0x1601, sp, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_s0->unk168AC);
            temp_s0->unk168C5 = 0U;
            if (arg0->unk190 == 0) {
                goto block_3;
            }
            goto block_6;
        }
        goto block_5;
    }
    HQ2_READ_FIFO = (void *)0xCA80D035;
    HQ2_READ_FIFO = arg0->unk120;
    HQ2_READ_FIFO = arg0->unk124;
    HQ2_READ_FIFO = arg0->unk128;
    HQ2_READ_FIFO = arg0->unk12C;
    HQ2_READ_FIFO = (void *)0xCC80D037;
    HQ2_READ_FIFO = arg0->unk140;
    temp_f19 = arg0->unk144;
    HQ2_READ_FIFO = temp_f19;
    temp_f18 = arg0->unk148;
    HQ2_READ_FIFO = temp_f18;
    temp_f17 = arg0->unk14C;
    HQ2_READ_FIFO = temp_f17;
    HQ2_READ_FIFO = (void *)0xCB80D036;
    temp_f16_2 = arg0->unk130;
    HQ2_READ_FIFO = temp_f16_2;
    temp_f15_2 = arg0->unk134;
    HQ2_READ_FIFO = temp_f15_2;
    temp_f14_2 = arg0->unk138;
    HQ2_READ_FIFO = temp_f14_2;
    temp_f13_2 = arg0->unk13C;
    HQ2_READ_FIFO = temp_f13_2;
    HQ2_READ_FIFO = (void *)0xCD80D038;
    temp_f12_2 = arg0->unk150;
    HQ2_READ_FIFO = temp_f12_2;
    HQ2_READ_FIFO = arg0->unk154;
    HQ2_READ_FIFO = arg0->unk158;
    HQ2_READ_FIFO = arg0->unk15C;
    __glOdyim_Materialfv(0x405, 0x1601, sp, (void *)0xCD80D038, (void *)0xCB80D036, (void *)0xCC80D037, (void *)0xCA80D035, temp_f12_2, temp_f13_2, temp_f14_2, temp_f15_2, temp_f16_2, temp_f17, temp_f18, temp_f19, arg0->unk160);
    temp_s0->unk168C5 = 1U;
    var_a2 = arg0->unk190;
block_5:
    if (var_a2 != 0) {
block_6:
        if (temp_s0->unk168C4 != 0) {
            HQ2_READ_FIFO = (void *)0xC680D02F;
            temp_f15_3 = temp_s0->unk1681C;
            HQ2_READ_FIFO = temp_f15_3;
            temp_f14_3 = temp_s0->unk16820;
            HQ2_READ_FIFO = temp_f14_3;
            temp_f13_3 = temp_s0->unk16824;
            HQ2_READ_FIFO = temp_f13_3;
            temp_f12_3 = temp_s0->unk16828;
            HQ2_READ_FIFO = temp_f12_3;
            HQ2_READ_FIFO = (void *)0xC880D031;
            HQ2_READ_FIFO = temp_s0->unk1683C;
            HQ2_READ_FIFO = temp_s0->unk16840;
            HQ2_READ_FIFO = temp_s0->unk16844;
            HQ2_READ_FIFO = temp_s0->unk16848;
            HQ2_READ_FIFO = (void *)0xC780D030;
            HQ2_READ_FIFO = temp_s0->unk1682C;
            HQ2_READ_FIFO = temp_s0->unk16830;
            HQ2_READ_FIFO = temp_s0->unk16834;
            HQ2_READ_FIFO = temp_s0->unk16838;
            HQ2_READ_FIFO = (void *)0xC980D032;
            HQ2_READ_FIFO = temp_s0->unk1684C;
            HQ2_READ_FIFO = temp_s0->unk16850;
            HQ2_READ_FIFO = temp_s0->unk16854;
            HQ2_READ_FIFO = temp_s0->unk16858;
            __glOdyim_Materialfv(0x404, 0x1601, sp, temp_f12_3, temp_f13_3, temp_f14_3, temp_f15_3, temp_s0->unk1685C);
            temp_s0->unk168C4 = 0U;
        }
    } else {
block_3:
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = arg0->unkD0;
        HQ2_READ_FIFO = arg0->unkD4;
        HQ2_READ_FIFO = arg0->unkD8;
        HQ2_READ_FIFO = arg0->unkDC;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unkF0;
        HQ2_READ_FIFO = arg0->unkF4;
        HQ2_READ_FIFO = arg0->unkF8;
        HQ2_READ_FIFO = arg0->unkFC;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = arg0->unkE0;
        HQ2_READ_FIFO = arg0->unkE4;
        HQ2_READ_FIFO = arg0->unkE8;
        HQ2_READ_FIFO = arg0->unkEC;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk100;
        HQ2_READ_FIFO = arg0->unk104;
        HQ2_READ_FIFO = arg0->unk108;
        HQ2_READ_FIFO = arg0->unk10C;
        __glOdyim_Materialfv(0x404, 0x1601, sp, arg0->unk110);
        temp_s0->unk168C4 = 1U;
    }
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendUnclippedBmFmTNFast(void *arg0) {
    u8 var_a2;
    void *temp_f12;
    void *temp_f12_2;
    void *temp_f12_3;
    void *temp_f13;
    void *temp_f13_2;
    void *temp_f13_3;
    void *temp_f14;
    void *temp_f14_2;
    void *temp_f14_3;
    void *temp_f15;
    void *temp_f15_2;
    void *temp_f15_3;
    void *temp_f16;
    void *temp_f16_2;
    void *temp_f17;
    void *temp_f18;
    void *temp_f19;
    void *temp_s0;

    var_a2 = arg0->unk190;
    temp_s0 = *(void **)0x1010;
    if (var_a2 != 0) {
        if (temp_s0->unk168C5 != 0) {
            HQ2_READ_FIFO = (void *)0xCA80D035;
            temp_f16 = temp_s0->unk1686C;
            HQ2_READ_FIFO = temp_f16;
            temp_f15 = temp_s0->unk16870;
            HQ2_READ_FIFO = temp_f15;
            temp_f14 = temp_s0->unk16874;
            HQ2_READ_FIFO = temp_f14;
            temp_f13 = temp_s0->unk16878;
            HQ2_READ_FIFO = temp_f13;
            HQ2_READ_FIFO = (void *)0xCC80D037;
            temp_f12 = temp_s0->unk1688C;
            HQ2_READ_FIFO = temp_f12;
            HQ2_READ_FIFO = temp_s0->unk16890;
            HQ2_READ_FIFO = temp_s0->unk16894;
            HQ2_READ_FIFO = temp_s0->unk16898;
            HQ2_READ_FIFO = (void *)0xCB80D036;
            HQ2_READ_FIFO = temp_s0->unk1687C;
            HQ2_READ_FIFO = temp_s0->unk16880;
            HQ2_READ_FIFO = temp_s0->unk16884;
            HQ2_READ_FIFO = temp_s0->unk16888;
            HQ2_READ_FIFO = (void *)0xCD80D038;
            HQ2_READ_FIFO = temp_s0->unk1689C;
            HQ2_READ_FIFO = temp_s0->unk168A0;
            HQ2_READ_FIFO = temp_s0->unk168A4;
            HQ2_READ_FIFO = temp_s0->unk168A8;
            __glOdyim_Materialfv(0x405, 0x1601, sp, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_s0->unk168AC);
            temp_s0->unk168C5 = 0U;
            if (arg0->unk190 == 0) {
                goto block_4;
            }
            goto block_7;
        }
        goto block_6;
    }
    HQ2_READ_FIFO = (void *)0xCA80D035;
    HQ2_READ_FIFO = arg0->unk120;
    HQ2_READ_FIFO = arg0->unk124;
    HQ2_READ_FIFO = arg0->unk128;
    HQ2_READ_FIFO = arg0->unk12C;
    HQ2_READ_FIFO = (void *)0xCC80D037;
    HQ2_READ_FIFO = arg0->unk140;
    temp_f19 = arg0->unk144;
    HQ2_READ_FIFO = temp_f19;
    temp_f18 = arg0->unk148;
    HQ2_READ_FIFO = temp_f18;
    temp_f17 = arg0->unk14C;
    HQ2_READ_FIFO = temp_f17;
    HQ2_READ_FIFO = (void *)0xCB80D036;
    temp_f16_2 = arg0->unk130;
    HQ2_READ_FIFO = temp_f16_2;
    temp_f15_2 = arg0->unk134;
    HQ2_READ_FIFO = temp_f15_2;
    temp_f14_2 = arg0->unk138;
    HQ2_READ_FIFO = temp_f14_2;
    temp_f13_2 = arg0->unk13C;
    HQ2_READ_FIFO = temp_f13_2;
    HQ2_READ_FIFO = (void *)0xCD80D038;
    temp_f12_2 = arg0->unk150;
    HQ2_READ_FIFO = temp_f12_2;
    HQ2_READ_FIFO = arg0->unk154;
    HQ2_READ_FIFO = arg0->unk158;
    HQ2_READ_FIFO = arg0->unk15C;
    __glOdyim_Materialfv(0x405, 0x1601, sp, (void *)0xCD80D038, (void *)0xCB80D036, (void *)0xCC80D037, (void *)0xCA80D035, temp_f12_2, temp_f13_2, temp_f14_2, temp_f15_2, temp_f16_2, temp_f17, temp_f18, temp_f19, arg0->unk160);
    temp_s0->unk168C5 = 1U;
    var_a2 = arg0->unk190;
block_6:
    if (var_a2 != 0) {
block_7:
        if (temp_s0->unk168C4 != 0) {
            HQ2_READ_FIFO = (void *)0xC680D02F;
            temp_f15_3 = temp_s0->unk1681C;
            HQ2_READ_FIFO = temp_f15_3;
            temp_f14_3 = temp_s0->unk16820;
            HQ2_READ_FIFO = temp_f14_3;
            temp_f13_3 = temp_s0->unk16824;
            HQ2_READ_FIFO = temp_f13_3;
            temp_f12_3 = temp_s0->unk16828;
            HQ2_READ_FIFO = temp_f12_3;
            HQ2_READ_FIFO = (void *)0xC880D031;
            HQ2_READ_FIFO = temp_s0->unk1683C;
            HQ2_READ_FIFO = temp_s0->unk16840;
            HQ2_READ_FIFO = temp_s0->unk16844;
            HQ2_READ_FIFO = temp_s0->unk16848;
            HQ2_READ_FIFO = (void *)0xC780D030;
            HQ2_READ_FIFO = temp_s0->unk1682C;
            HQ2_READ_FIFO = temp_s0->unk16830;
            HQ2_READ_FIFO = temp_s0->unk16834;
            HQ2_READ_FIFO = temp_s0->unk16838;
            HQ2_READ_FIFO = (void *)0xC980D032;
            HQ2_READ_FIFO = temp_s0->unk1684C;
            HQ2_READ_FIFO = temp_s0->unk16850;
            HQ2_READ_FIFO = temp_s0->unk16854;
            HQ2_READ_FIFO = temp_s0->unk16858;
            __glOdyim_Materialfv(0x404, 0x1601, sp, temp_f12_3, temp_f13_3, temp_f14_3, temp_f15_3, temp_s0->unk1685C);
            temp_s0->unk168C4 = 0U;
        }
    } else {
block_4:
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = arg0->unkD0;
        HQ2_READ_FIFO = arg0->unkD4;
        HQ2_READ_FIFO = arg0->unkD8;
        HQ2_READ_FIFO = arg0->unkDC;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unkF0;
        HQ2_READ_FIFO = arg0->unkF4;
        HQ2_READ_FIFO = arg0->unkF8;
        HQ2_READ_FIFO = arg0->unkFC;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = arg0->unkE0;
        HQ2_READ_FIFO = arg0->unkE4;
        HQ2_READ_FIFO = arg0->unkE8;
        HQ2_READ_FIFO = arg0->unkEC;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk100;
        HQ2_READ_FIFO = arg0->unk104;
        HQ2_READ_FIFO = arg0->unk108;
        HQ2_READ_FIFO = arg0->unk10C;
        __glOdyim_Materialfv(0x404, 0x1601, sp, arg0->unk110);
        temp_s0->unk168C4 = 1U;
    }
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedFmNFast(void *arg0) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if (temp_a3->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    }
    HQ2_READ_FIFO = NULL;
    temp_a3->unk168C4 = 1;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedFmTNFast(void *arg0) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if (temp_a3->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
    }
    HQ2_READ_FIFO = NULL;
    temp_a3->unk168C4 = 1;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedBmFmNFast(void *arg0) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if (temp_a3->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = arg0->unk180;
        HQ2_READ_FIFO = arg0->unk184;
        HQ2_READ_FIFO = arg0->unk188;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    }
    HQ2_READ_FIFO = NULL;
    temp_a3->unk168C5 = 1;
    temp_a3->unk168C4 = 1;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void RGBSendClippedBmFmTNFast(void *arg0) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    if (temp_a3->unk588 != 0x81FA) {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    } else {
        HQ2_READ_FIFO = (void *)0xC680D02F;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC880D031;
        HQ2_READ_FIFO = arg0->unk170;
        HQ2_READ_FIFO = arg0->unk174;
        HQ2_READ_FIFO = arg0->unk178;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xC780D030;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unk9C;
        HQ2_READ_FIFO = (void *)0xC980D032;
        HQ2_READ_FIFO = arg0->unk90;
        HQ2_READ_FIFO = arg0->unk94;
        HQ2_READ_FIFO = arg0->unk98;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCA80D035;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCC80D037;
        HQ2_READ_FIFO = arg0->unk180;
        HQ2_READ_FIFO = arg0->unk184;
        HQ2_READ_FIFO = arg0->unk188;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = (void *)0xCB80D036;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = NULL;
        HQ2_READ_FIFO = arg0->unkAC;
        HQ2_READ_FIFO = (void *)0xCD80D038;
        HQ2_READ_FIFO = arg0->unkA0;
        HQ2_READ_FIFO = arg0->unkA4;
        HQ2_READ_FIFO = arg0->unkA8;
    }
    HQ2_READ_FIFO = NULL;
    temp_a3->unk168C5 = 1;
    temp_a3->unk168C4 = 1;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0xC380D025;
    HQ2_READ_FIFO = arg0->unk30;
    HQ2_READ_FIFO = arg0->unk34;
    HQ2_READ_FIFO = arg0->unk38;
    HQ2_READ_FIFO = arg0->unk3C;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void CISendFc(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC580C407;
    HQ2_READ_FIFO = arg0->unk90;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void CISendUnclippedFmN(void *arg0) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    void *var_s0;

    var_s0 = arg0 + 0xD0;
    if (arg0->unk190 != 0) {
        var_s0 = *(s32 *)0x1010 + 0x1681C;
    }
    sp0 = var_s0->unk10;
    sp4 = var_s0->unk14;
    sp8 = var_s0->unk18;
    spC = var_s0->unk1C;
    __glOdyim_Materialfv(0x404, 0x1201, sp);
    sp0 = var_s0->unk20;
    sp4 = var_s0->unk24;
    sp8 = var_s0->unk28;
    spC = var_s0->unk2C;
    __glOdyim_Materialfv(0x404, 0x1202, sp);
    sp0 = var_s0->unk40;
    __glOdyim_Materialfv(0x404, 0x1601, sp);
    sp0 = var_s0->unk44;
    sp4 = var_s0->unk4C;
    sp8 = var_s0->unk48;
    __glOdyim_Materialfv(0x404, 0x1603, sp);
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void CISendUnclippedBmFmN(void *arg0) {
    s32 temp_s0;
    u8 temp_at;
    void *temp_f12;
    void *temp_f13;
    void *temp_f14;
    void *temp_f15;
    void *temp_s0_2;
    void *temp_s1;

    temp_at = arg0->unk190;
    temp_s0 = *(s32 *)0x1010;
    temp_s1 = (temp_at == 0) ? (arg0 + 0xD0) : (temp_s0 + 0x1681C);
    temp_s0_2 = (temp_at == 0) ? (arg0 + 0x120) : (temp_s0 + 0x1686C);
    __glOdyim_Materialfv(0x404, 0x1201, sp, temp_s1->unk10, temp_s1->unk14, temp_s1->unk18, temp_s1->unk1C);
    __glOdyim_Materialfv(0x404, 0x1202, sp, temp_s1->unk20, temp_s1->unk24, temp_s1->unk28, temp_s1->unk2C);
    __glOdyim_Materialfv(0x404, 0x1601, sp, temp_s1->unk40);
    __glOdyim_Materialfv(0x404, 0x1603, sp, temp_s1->unk44, temp_s1->unk4C, temp_s1->unk48);
    temp_f15 = temp_s0_2->unk10;
    temp_f14 = temp_s0_2->unk14;
    temp_f13 = temp_s0_2->unk18;
    temp_f12 = temp_s0_2->unk1C;
    __glOdyim_Materialfv(0x405, 0x1201, sp, temp_f12, temp_f13, temp_f14, temp_f15, temp_f15, temp_f14, temp_f13, temp_f12);
    __glOdyim_Materialfv(0x405, 0x1202, sp, temp_s0_2->unk20, temp_s0_2->unk24, temp_s0_2->unk28, temp_s0_2->unk2C);
    __glOdyim_Materialfv(0x405, 0x1601, sp, temp_s0_2->unk40);
    __glOdyim_Materialfv(0x405, 0x1603, sp, temp_s0_2->unk44, temp_s0_2->unk4C, temp_s0_2->unk48);
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void CISendClippedFmN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC680D02F;
    HQ2_READ_FIFO = arg0->unk90;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC780D030;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC880D031;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC980D032;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void CISendClippedBmFmN(void *arg0) {
    HQ2_READ_FIFO = (arg0->unkB8 == 0) ? (void *)0x3000C02E : (void *)0x2F00C02E;
    HQ2_READ_FIFO = (void *)0xC680D02F;
    HQ2_READ_FIFO = arg0->unk90;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC780D030;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC880D031;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC980D032;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xCA80D035;
    HQ2_READ_FIFO = arg0->unkA0;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xCB80D036;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xCC80D037;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xCD80D038;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = NULL;
    HQ2_READ_FIFO = (void *)0xC180CC19;
    HQ2_READ_FIFO = arg0->unkC0;
    HQ2_READ_FIFO = arg0->unkC4;
    HQ2_READ_FIFO = arg0->unkC8;
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
}

void __glOdysseySoftClipValidateVertex(void *arg1, s32 arg2) {
    if (arg2 & ~arg1->unk0 & 8) {
        arg1->unk2C = (f32) arg1->unkCC;
        arg1->unk28 = (f32) arg1->unkC8;
        arg1->unk24 = (f32) arg1->unkC4;
        arg1->unk20 = (f32) arg1->unkC0;
    }
    __glValidateVertex4();
}

void __glOdysseySoftClipPickVertexProcs(void *arg0, s32 arg5, s64 arg6) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t3;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_t0;
    s32 var_t1;
    s64 var_a6;
    u8 temp_a4;
    void *temp_a2_2;
    void *temp_a7_2;
    void *temp_t0;
    void *temp_t1;
    void *temp_t2;
    void *temp_t2_2;
    void *temp_v0;
    void *temp_v1_2;

    var_a6 = arg6;
    temp_a4 = arg0->unkC94;
    temp_a3 = arg0->unk700;
    if (temp_a4 != 0) {
        // Error: negative shift count
        // At instruction: bgez $v1, .L0d9ea7dc
        if (M2C_ERROR()) {
            var_t0 = 1;
            goto block_3;
        }
        var_a6 = (s64) temp_a3 << 0x21;
        var_t0 = 1;
        if (arg5 >= 0) {
            // Error: negative shift count
            // At instruction: bltz $a6, .L0d9ea664
            if (M2C_ERROR()) {
                goto block_19;
            }
        }
block_3:
        // Error: negative shift count
        // At instruction: bgez $a1, .L0d9ea680
        if (M2C_ERROR() || (arg0->unk7C0 != 0x2402)) {
            var_t1 = 0;
            if (var_a6 < 0) {
                if (arg0->unk83C != 0x2402) {
                    goto block_7;
                }
                goto block_17;
            }
        } else {
block_17:
            var_t1 = 1;
        }
    } else {
block_19:
        var_t0 = 0;
block_7:
        var_t1 = 0;
    }
    arg0->unk2ED4 = __glOdysseyClipCheck;
    temp_a6 = temp_a3 & 0x40;
    var_a3 = 1;
    arg0->unk2ED0 = __glOdysseyClipCheck;
    temp_v1 = var_t1 & 0xFF;
    arg0->unk2ECC = __glOdysseyClipCheck;
    if (temp_a4 != 0) {
        if (temp_a6 != 0) {
            var_a4 = (arg0->unk585 == 0) ? 0x11 : 0x31;
        } else {
            var_a4 = 4;
            var_a3 = 4;
        }
        if (arg0->unk704 & 0x1000) {
            temp_t3 = arg0->unk1647C;
            var_a4 = (temp_t3 != 0) ? (var_a4 | 1) : var_a4;
            var_a3 = (temp_t3 != 0) ? (var_a3 | 1) : var_a3;
        }
        temp_a1 = var_a3 | 2;
        temp_a2 = var_a4 | 2;
        if (var_t0 & 0xFF) {
            var_a4 = (temp_v1 == 0) ? temp_a2 : (temp_a2 | 1);
            var_a3 = (temp_v1 == 0) ? temp_a1 : (temp_a1 | 1);
        }
        temp_t0 = &sub_0daf0000 - 0x36C0;
        arg0->unk2EC8 = (s32) *(temp_t0 + (var_a3 * 4));
        arg0->unk168BC = var_a3;
        arg0->unk168C0 = var_a4;
        temp_t1 = &sub_0d9f0000 - 0x5A40;
        temp_a7 = var_a4 * 4;
        if (arg0->unk19DE2 != 0) {
            temp_t2 = temp_a7 + temp_t0;
            arg0->unk19E94 = (s32) temp_t2->unk240;
            arg0->unk19E98 = (s32) temp_t2->unk340;
            arg0->unk2F08 = temp_t1;
            arg0->unk2F04 = temp_t1;
            arg0->unk2F00 = temp_t1;
            return;
        }
        temp_t2_2 = temp_a7 + temp_t0;
        arg0->unk19E98 = (s32) temp_t2_2->unk140;
        arg0->unk19E94 = (s32) temp_t2_2->unk40;
        temp_a7_2 = &sub_0d9f0000 - 0x5A40;
        arg0->unk2F08 = temp_a7_2;
        arg0->unk2F04 = temp_a7_2;
        arg0->unk2F00 = temp_a7_2;
        return;
    }
    if (temp_a6 != 0) {
        var_a3_2 = 1;
        var_a4_2 = (arg0->unk585 == 0) ? 0x11 : 0x31;
    } else {
        var_a4_2 = 4;
        var_a3_2 = 4;
    }
    temp_a2_2 = &sub_0daf0000 - 0x36C0;
    temp_v1_2 = (var_a4_2 * 4) + temp_a2_2;
    arg0->unk2EC8 = (s32) (temp_a2_2 + (var_a3_2 * 4))->unk20;
    arg0->unk19E98 = (s32) temp_v1_2->unk540;
    arg0->unk19E94 = (s32) temp_v1_2->unk440;
    temp_v0 = &sub_0d9f0000 - 0x5A40;
    arg0->unk2F08 = temp_v0;
    arg0->unk2F04 = temp_v0;
    arg0->unk2F00 = temp_v0;
}

void __glOdysseySoftClipRenderTriangleFast(void *arg0, void *arg1, void *arg2, void *arg3) {
    s64 sp80;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_v0;
    s64 temp_at;
    u8 temp_a4;
    u8 temp_a5;
    void *temp_f12;
    void *temp_f12_2;
    void *temp_f12_3;
    void *temp_f12_4;
    void *temp_f12_5;
    void *temp_f12_6;
    void *temp_f12_7;
    void *temp_f13;
    void *temp_f13_2;
    void *temp_f13_3;
    void *temp_f13_4;
    void *temp_f13_5;
    void *temp_f13_6;
    void *temp_f13_7;
    void *temp_f14;
    void *temp_f14_2;
    void *temp_f14_3;
    void *temp_f14_4;
    void *temp_f14_5;
    void *temp_f14_6;
    void *temp_f14_7;
    void *temp_f15;
    void *temp_f15_2;
    void *temp_f15_3;
    void *temp_f15_4;
    void *temp_f15_5;
    void *temp_f15_6;
    void *temp_f16;
    void *temp_f16_2;
    void *temp_f16_3;
    void *temp_f16_4;
    void *temp_f16_5;
    void *temp_f17;
    void *temp_f17_2;
    void *temp_f17_3;
    void *temp_f17_4;
    void *temp_f18;
    void *temp_f18_2;
    void *temp_f18_3;
    void *temp_f19;
    void *temp_f19_2;
    void *temp_f19_3;
    void *var_a1;

    temp_v0 = arg0->unk168C0;
    HQ2_READ_FIFO = (void *)0x14400;
    temp_s8 = arg0->unk570 == 0x1D01;
    HQ2_READ_FIFO = (void *)4;
    temp_s5 = temp_v0 & 2 & 0xFF;
    temp_at = temp_v0 & 0x10 & 0xFF;
    sp8 = temp_at;
    sp10 = temp_v0 & 4 & 0xFF;
    sp18 = temp_v0 & 1 & 0xFF;
    sp20 = temp_v0 & 0x20 & 0xFF;
    if (temp_at != 0) {
        if (arg1->unk190 != 0) {
            if (arg0->unk168C4 != 0) {
                HQ2_READ_FIFO = (void *)0xC680D02F;
                temp_f16 = arg0->unk1681C;
                HQ2_READ_FIFO = temp_f16;
                temp_f15 = arg0->unk16820;
                HQ2_READ_FIFO = temp_f15;
                temp_f14 = arg0->unk16824;
                HQ2_READ_FIFO = temp_f14;
                temp_f13 = arg0->unk16828;
                HQ2_READ_FIFO = temp_f13;
                HQ2_READ_FIFO = (void *)0xC880D031;
                temp_f12 = arg0->unk1683C;
                HQ2_READ_FIFO = temp_f12;
                HQ2_READ_FIFO = arg0->unk16840;
                HQ2_READ_FIFO = arg0->unk16844;
                HQ2_READ_FIFO = arg0->unk16848;
                HQ2_READ_FIFO = (void *)0xC780D030;
                HQ2_READ_FIFO = arg0->unk1682C;
                HQ2_READ_FIFO = arg0->unk16830;
                HQ2_READ_FIFO = arg0->unk16834;
                HQ2_READ_FIFO = arg0->unk16838;
                HQ2_READ_FIFO = (void *)0xC980D032;
                HQ2_READ_FIFO = arg0->unk1684C;
                HQ2_READ_FIFO = arg0->unk16850;
                HQ2_READ_FIFO = arg0->unk16854;
                HQ2_READ_FIFO = arg0->unk16858;
                __glOdyim_Materialfv(0x404, 0x1601, sp, (void *)0xC680D02F, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, arg0->unk1685C);
                arg0->unk168C4 = 0U;
            }
        } else {
            HQ2_READ_FIFO = (void *)0xC680D02F;
            temp_f15_2 = arg1->unkD0;
            HQ2_READ_FIFO = temp_f15_2;
            temp_f14_2 = arg1->unkD4;
            HQ2_READ_FIFO = temp_f14_2;
            temp_f13_2 = arg1->unkD8;
            HQ2_READ_FIFO = temp_f13_2;
            temp_f12_2 = arg1->unkDC;
            HQ2_READ_FIFO = temp_f12_2;
            HQ2_READ_FIFO = (void *)0xC880D031;
            HQ2_READ_FIFO = arg1->unkF0;
            HQ2_READ_FIFO = arg1->unkF4;
            HQ2_READ_FIFO = arg1->unkF8;
            HQ2_READ_FIFO = arg1->unkFC;
            HQ2_READ_FIFO = (void *)0xC780D030;
            HQ2_READ_FIFO = arg1->unkE0;
            HQ2_READ_FIFO = arg1->unkE4;
            HQ2_READ_FIFO = arg1->unkE8;
            HQ2_READ_FIFO = arg1->unkEC;
            HQ2_READ_FIFO = (void *)0xC980D032;
            HQ2_READ_FIFO = arg1->unk100;
            HQ2_READ_FIFO = arg1->unk104;
            HQ2_READ_FIFO = arg1->unk108;
            HQ2_READ_FIFO = arg1->unk10C;
            __glOdyim_Materialfv(0x404, 0x1601, sp, (void *)0xC980D032, (void *)0xC780D030, (void *)0xC880D031, (void *)0xC680D02F, temp_f12_2, temp_f13_2, temp_f14_2, temp_f15_2, arg1->unk110);
            arg0->unk168C4 = 1U;
        }
    }
    if (sp20 != 0) {
        if (arg1->unk190 != 0) {
            if (arg0->unk168C5 != 0) {
                HQ2_READ_FIFO = (void *)0xCA80D035;
                HQ2_READ_FIFO = arg0->unk1686C;
                HQ2_READ_FIFO = arg0->unk16870;
                HQ2_READ_FIFO = arg0->unk16874;
                HQ2_READ_FIFO = arg0->unk16878;
                HQ2_READ_FIFO = (void *)0xCC80D037;
                HQ2_READ_FIFO = arg0->unk1688C;
                HQ2_READ_FIFO = arg0->unk16890;
                HQ2_READ_FIFO = arg0->unk16894;
                HQ2_READ_FIFO = arg0->unk16898;
                HQ2_READ_FIFO = (void *)0xCB80D036;
                HQ2_READ_FIFO = arg0->unk1687C;
                HQ2_READ_FIFO = arg0->unk16880;
                HQ2_READ_FIFO = arg0->unk16884;
                HQ2_READ_FIFO = arg0->unk16888;
                HQ2_READ_FIFO = (void *)0xCD80D038;
                HQ2_READ_FIFO = arg0->unk1689C;
                HQ2_READ_FIFO = arg0->unk168A0;
                HQ2_READ_FIFO = arg0->unk168A4;
                HQ2_READ_FIFO = arg0->unk168A8;
                __glOdyim_Materialfv(0x405, 0x1601, sp, arg0->unk168AC);
                arg0->unk168C5 = 0U;
            }
        } else {
            HQ2_READ_FIFO = (void *)0xCA80D035;
            HQ2_READ_FIFO = arg1->unk120;
            HQ2_READ_FIFO = arg1->unk124;
            HQ2_READ_FIFO = arg1->unk128;
            HQ2_READ_FIFO = arg1->unk12C;
            HQ2_READ_FIFO = (void *)0xCC80D037;
            HQ2_READ_FIFO = arg1->unk140;
            HQ2_READ_FIFO = arg1->unk144;
            HQ2_READ_FIFO = arg1->unk148;
            HQ2_READ_FIFO = arg1->unk14C;
            HQ2_READ_FIFO = (void *)0xCB80D036;
            HQ2_READ_FIFO = arg1->unk130;
            HQ2_READ_FIFO = arg1->unk134;
            HQ2_READ_FIFO = arg1->unk138;
            HQ2_READ_FIFO = arg1->unk13C;
            HQ2_READ_FIFO = (void *)0xCD80D038;
            HQ2_READ_FIFO = arg1->unk150;
            HQ2_READ_FIFO = arg1->unk154;
            HQ2_READ_FIFO = arg1->unk158;
            HQ2_READ_FIFO = arg1->unk15C;
            __glOdyim_Materialfv(0x405, 0x1601, sp, arg1->unk160);
            arg0->unk168C5 = 1U;
        }
    }
    var_a1 = (void *)0x2F00C02E;
    HQ2_READ_FIFO = (arg1->unkB8 != 0) ? (void *)0x2F00C02E : (void *)0x3000C02E;
    if (sp18 != 0) {
        HQ2_READ_FIFO = (void *)0xC180CC19;
        HQ2_READ_FIFO = arg1->unkC0;
        HQ2_READ_FIFO = arg1->unkC4;
        HQ2_READ_FIFO = arg1->unkC8;
        if (sp10 != 0) {
            goto block_11;
        }
        goto block_24;
    }
    if (sp10 == 0) {
block_24:
        if (temp_s5 == 0) {

        } else {
            goto block_13;
        }
    } else {
block_11:
        HQ2_READ_FIFO = (void *)0xC580D015;
        HQ2_READ_FIFO = arg1->unk90;
        HQ2_READ_FIFO = arg1->unk94;
        HQ2_READ_FIFO = arg1->unk98;
        HQ2_READ_FIFO = arg1->unk9C;
        if (temp_s5 != 0) {
block_13:
            HQ2_READ_FIFO = (void *)0xC380D025;
            HQ2_READ_FIFO = arg1->unk30;
            HQ2_READ_FIFO = arg1->unk34;
            HQ2_READ_FIFO = arg1->unk38;
            HQ2_READ_FIFO = arg1->unk3C;
        }
    }
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg1->unk10;
    HQ2_READ_FIFO = arg1->unk14;
    HQ2_READ_FIFO = arg1->unk18;
    HQ2_READ_FIFO = arg1->unk1C;
    if (temp_s8 != 0) {
        if (sp8 != 0) {
            if (arg2->unk190 != 0) {
                if (arg0->unk168C4 != 0) {
                    HQ2_READ_FIFO = (void *)0xC680D02F;
                    HQ2_READ_FIFO = arg0->unk1681C;
                    HQ2_READ_FIFO = arg0->unk16820;
                    HQ2_READ_FIFO = arg0->unk16824;
                    HQ2_READ_FIFO = arg0->unk16828;
                    HQ2_READ_FIFO = (void *)0xC880D031;
                    HQ2_READ_FIFO = arg0->unk1683C;
                    HQ2_READ_FIFO = arg0->unk16840;
                    HQ2_READ_FIFO = arg0->unk16844;
                    HQ2_READ_FIFO = arg0->unk16848;
                    HQ2_READ_FIFO = (void *)0xC780D030;
                    HQ2_READ_FIFO = arg0->unk1682C;
                    HQ2_READ_FIFO = arg0->unk16830;
                    HQ2_READ_FIFO = arg0->unk16834;
                    HQ2_READ_FIFO = arg0->unk16838;
                    HQ2_READ_FIFO = (void *)0xC980D032;
                    HQ2_READ_FIFO = arg0->unk1684C;
                    HQ2_READ_FIFO = arg0->unk16850;
                    HQ2_READ_FIFO = arg0->unk16854;
                    HQ2_READ_FIFO = arg0->unk16858;
                    sp80 = 0x2F00C02E;
                    __glOdyim_Materialfv(0x404, 0x1601, sp, arg0->unk1685C);
                    var_a1 = (void *) 0x2F00C02E;
                    arg0->unk168C4 = 0U;
                }
            } else {
                HQ2_READ_FIFO = (void *)0xC680D02F;
                HQ2_READ_FIFO = arg2->unkD0;
                HQ2_READ_FIFO = arg2->unkD4;
                HQ2_READ_FIFO = arg2->unkD8;
                HQ2_READ_FIFO = arg2->unkDC;
                HQ2_READ_FIFO = (void *)0xC880D031;
                temp_f19 = arg2->unkF0;
                HQ2_READ_FIFO = temp_f19;
                temp_f18 = arg2->unkF4;
                HQ2_READ_FIFO = temp_f18;
                temp_f17 = arg2->unkF8;
                HQ2_READ_FIFO = temp_f17;
                temp_f16_2 = arg2->unkFC;
                HQ2_READ_FIFO = temp_f16_2;
                HQ2_READ_FIFO = (void *)0xC780D030;
                temp_f15_3 = arg2->unkE0;
                HQ2_READ_FIFO = temp_f15_3;
                temp_f14_3 = arg2->unkE4;
                HQ2_READ_FIFO = temp_f14_3;
                temp_f13_3 = arg2->unkE8;
                HQ2_READ_FIFO = temp_f13_3;
                temp_f12_3 = arg2->unkEC;
                HQ2_READ_FIFO = temp_f12_3;
                HQ2_READ_FIFO = (void *)0xC980D032;
                HQ2_READ_FIFO = arg2->unk100;
                HQ2_READ_FIFO = arg2->unk104;
                HQ2_READ_FIFO = arg2->unk108;
                HQ2_READ_FIFO = arg2->unk10C;
                sp80 = 0x2F00C02E;
                __glOdyim_Materialfv(0x404, 0x1601, sp, temp_f12_3, temp_f13_3, temp_f14_3, temp_f15_3, temp_f16_2, temp_f17, temp_f18, temp_f19, arg2->unk110);
                var_a1 = (void *) 0x2F00C02E;
                arg0->unk168C4 = 1U;
            }
        }
        if (sp20 != 0) {
            if (arg2->unk190 != 0) {
                if (arg0->unk168C5 != 0) {
                    sp80 = 0x2F00C02E;
                    HQ2_READ_FIFO = (void *)0xCA80D035;
                    HQ2_READ_FIFO = arg0->unk1686C;
                    temp_f19_2 = arg0->unk16870;
                    HQ2_READ_FIFO = temp_f19_2;
                    temp_f18_2 = arg0->unk16874;
                    HQ2_READ_FIFO = temp_f18_2;
                    temp_f17_2 = arg0->unk16878;
                    HQ2_READ_FIFO = temp_f17_2;
                    HQ2_READ_FIFO = (void *)0xCC80D037;
                    temp_f16_3 = arg0->unk1688C;
                    HQ2_READ_FIFO = temp_f16_3;
                    temp_f15_4 = arg0->unk16890;
                    HQ2_READ_FIFO = temp_f15_4;
                    temp_f14_4 = arg0->unk16894;
                    HQ2_READ_FIFO = temp_f14_4;
                    temp_f13_4 = arg0->unk16898;
                    HQ2_READ_FIFO = temp_f13_4;
                    HQ2_READ_FIFO = (void *)0xCB80D036;
                    temp_f12_4 = arg0->unk1687C;
                    HQ2_READ_FIFO = temp_f12_4;
                    HQ2_READ_FIFO = arg0->unk16880;
                    HQ2_READ_FIFO = arg0->unk16884;
                    HQ2_READ_FIFO = arg0->unk16888;
                    HQ2_READ_FIFO = (void *)0xCD80D038;
                    HQ2_READ_FIFO = arg0->unk1689C;
                    HQ2_READ_FIFO = arg0->unk168A0;
                    HQ2_READ_FIFO = arg0->unk168A4;
                    HQ2_READ_FIFO = arg0->unk168A8;
                    __glOdyim_Materialfv(0x405, 0x1601, sp, temp_f12_4, temp_f13_4, temp_f14_4, temp_f15_4, temp_f16_3, temp_f17_2, temp_f18_2, temp_f19_2, arg0->unk168AC);
                    var_a1 = (void *) 0x2F00C02E;
                    arg0->unk168C5 = 0U;
                    if (sp18 == 0) {
                        goto block_37;
                    }
                    goto block_41;
                }
                goto block_40;
            }
            HQ2_READ_FIFO = (void *)0xCA80D035;
            HQ2_READ_FIFO = arg2->unk120;
            HQ2_READ_FIFO = arg2->unk124;
            HQ2_READ_FIFO = arg2->unk128;
            HQ2_READ_FIFO = arg2->unk12C;
            HQ2_READ_FIFO = (void *)0xCC80D037;
            HQ2_READ_FIFO = arg2->unk140;
            HQ2_READ_FIFO = arg2->unk144;
            HQ2_READ_FIFO = arg2->unk148;
            HQ2_READ_FIFO = arg2->unk14C;
            HQ2_READ_FIFO = (void *)0xCB80D036;
            HQ2_READ_FIFO = arg2->unk130;
            HQ2_READ_FIFO = arg2->unk134;
            HQ2_READ_FIFO = arg2->unk138;
            HQ2_READ_FIFO = arg2->unk13C;
            HQ2_READ_FIFO = (void *)0xCD80D038;
            HQ2_READ_FIFO = arg2->unk150;
            HQ2_READ_FIFO = arg2->unk154;
            HQ2_READ_FIFO = arg2->unk158;
            HQ2_READ_FIFO = arg2->unk15C;
            sp80 = 0x2F00C02E;
            __glOdyim_Materialfv(0x405, 0x1601, sp, arg2->unk160);
            var_a1 = (void *) 0x2F00C02E;
            arg0->unk168C5 = 1U;
            goto block_40;
        }
block_40:
        if (sp18 != 0) {
block_41:
            HQ2_READ_FIFO = (void *)0xC180CC19;
            HQ2_READ_FIFO = arg2->unkC0;
            HQ2_READ_FIFO = arg2->unkC4;
            HQ2_READ_FIFO = arg2->unkC8;
            if (sp10 != 0) {
                goto block_43;
            }
        } else {
block_37:
            if (sp10 == 0) {

            } else {
block_43:
                HQ2_READ_FIFO = (void *)0xC580D015;
                HQ2_READ_FIFO = arg2->unk90;
                HQ2_READ_FIFO = arg2->unk94;
                HQ2_READ_FIFO = arg2->unk98;
                HQ2_READ_FIFO = arg2->unk9C;
            }
        }
    }
    HQ2_READ_FIFO = (arg2->unkB8 != 0) ? var_a1 : (void *)0x3000C02E;
    if (temp_s5 != 0) {
        HQ2_READ_FIFO = (void *)0xC380D025;
        HQ2_READ_FIFO = arg2->unk30;
        HQ2_READ_FIFO = arg2->unk34;
        HQ2_READ_FIFO = arg2->unk38;
        HQ2_READ_FIFO = arg2->unk3C;
    }
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg2->unk10;
    HQ2_READ_FIFO = arg2->unk14;
    HQ2_READ_FIFO = arg2->unk18;
    HQ2_READ_FIFO = arg2->unk1C;
    if (temp_s8 != 0) {
        if (sp8 != 0) {
            if (arg3->unk190 != 0) {
                if (arg0->unk168C4 != 0) {
                    sp80 = (s64) var_a1;
                    HQ2_READ_FIFO = (void *)0xC680D02F;
                    HQ2_READ_FIFO = arg0->unk1681C;
                    HQ2_READ_FIFO = arg0->unk16820;
                    HQ2_READ_FIFO = arg0->unk16824;
                    HQ2_READ_FIFO = arg0->unk16828;
                    HQ2_READ_FIFO = (void *)0xC880D031;
                    HQ2_READ_FIFO = arg0->unk1683C;
                    HQ2_READ_FIFO = arg0->unk16840;
                    HQ2_READ_FIFO = arg0->unk16844;
                    HQ2_READ_FIFO = arg0->unk16848;
                    HQ2_READ_FIFO = (void *)0xC780D030;
                    HQ2_READ_FIFO = arg0->unk1682C;
                    HQ2_READ_FIFO = arg0->unk16830;
                    HQ2_READ_FIFO = arg0->unk16834;
                    HQ2_READ_FIFO = arg0->unk16838;
                    HQ2_READ_FIFO = (void *)0xC980D032;
                    HQ2_READ_FIFO = arg0->unk1684C;
                    HQ2_READ_FIFO = arg0->unk16850;
                    HQ2_READ_FIFO = arg0->unk16854;
                    HQ2_READ_FIFO = arg0->unk16858;
                    __glOdyim_Materialfv(0x404, 0x1601, sp, (void *) sp20, arg0->unk1685C);
                    arg0->unk168C4 = 0U;
                }
            } else {
                sp80 = (s64) var_a1;
                HQ2_READ_FIFO = (void *)0xC680D02F;
                temp_f14_5 = arg3->unkD0;
                HQ2_READ_FIFO = temp_f14_5;
                temp_f13_5 = arg3->unkD4;
                HQ2_READ_FIFO = temp_f13_5;
                temp_f12_5 = arg3->unkD8;
                HQ2_READ_FIFO = temp_f12_5;
                HQ2_READ_FIFO = arg3->unkDC;
                HQ2_READ_FIFO = (void *)0xC880D031;
                HQ2_READ_FIFO = arg3->unkF0;
                HQ2_READ_FIFO = arg3->unkF4;
                HQ2_READ_FIFO = arg3->unkF8;
                HQ2_READ_FIFO = arg3->unkFC;
                HQ2_READ_FIFO = (void *)0xC780D030;
                HQ2_READ_FIFO = arg3->unkE0;
                HQ2_READ_FIFO = arg3->unkE4;
                HQ2_READ_FIFO = arg3->unkE8;
                HQ2_READ_FIFO = arg3->unkEC;
                HQ2_READ_FIFO = (void *)0xC980D032;
                HQ2_READ_FIFO = arg3->unk100;
                HQ2_READ_FIFO = arg3->unk104;
                HQ2_READ_FIFO = arg3->unk108;
                HQ2_READ_FIFO = arg3->unk10C;
                __glOdyim_Materialfv(0x404, 0x1601, sp, (void *) sp20, temp_f12_5, temp_f13_5, temp_f14_5, arg3->unk110);
                arg0->unk168C4 = 1U;
            }
        }
        if (sp20 != 0) {
            temp_a4 = arg3->unk190;
            if (temp_a4 != 0) {
                temp_a5 = arg0->unk168C5;
                if (temp_a5 != 0) {
                    HQ2_READ_FIFO = (void *)0xCA80D035;
                    HQ2_READ_FIFO = arg0->unk1686C;
                    HQ2_READ_FIFO = arg0->unk16870;
                    HQ2_READ_FIFO = arg0->unk16874;
                    HQ2_READ_FIFO = arg0->unk16878;
                    HQ2_READ_FIFO = (void *)0xCC80D037;
                    HQ2_READ_FIFO = arg0->unk1688C;
                    HQ2_READ_FIFO = arg0->unk16890;
                    HQ2_READ_FIFO = arg0->unk16894;
                    temp_f19_3 = arg0->unk16898;
                    HQ2_READ_FIFO = temp_f19_3;
                    HQ2_READ_FIFO = (void *)0xCB80D036;
                    temp_f18_3 = arg0->unk1687C;
                    HQ2_READ_FIFO = temp_f18_3;
                    temp_f17_3 = arg0->unk16880;
                    HQ2_READ_FIFO = temp_f17_3;
                    temp_f16_4 = arg0->unk16884;
                    HQ2_READ_FIFO = temp_f16_4;
                    temp_f15_5 = arg0->unk16888;
                    HQ2_READ_FIFO = temp_f15_5;
                    HQ2_READ_FIFO = (void *)0xCD80D038;
                    temp_f14_6 = arg0->unk1689C;
                    HQ2_READ_FIFO = temp_f14_6;
                    temp_f13_6 = arg0->unk168A0;
                    HQ2_READ_FIFO = temp_f13_6;
                    temp_f12_6 = arg0->unk168A4;
                    HQ2_READ_FIFO = temp_f12_6;
                    HQ2_READ_FIFO = arg0->unk168A8;
                    sp80 = (s64) var_a1;
                    __glOdyim_Materialfv(0x405, 0x1601, sp, (void *) sp20, (void *) temp_a4, (void *) temp_a5, (void *)0xCD80D038, (void *)0xCB80D036, temp_f12_6, temp_f13_6, temp_f14_6, temp_f15_5, temp_f16_4, temp_f17_3, temp_f18_3, temp_f19_3, arg0->unk168AC);
                    arg0->unk168C5 = 0U;
                    if (sp18 == 0) {
                        goto block_54;
                    }
                    goto block_59;
                }
                goto block_57;
            }
            HQ2_READ_FIFO = (void *)0xCA80D035;
            temp_f17_4 = arg3->unk120;
            HQ2_READ_FIFO = temp_f17_4;
            temp_f16_5 = arg3->unk124;
            HQ2_READ_FIFO = temp_f16_5;
            temp_f15_6 = arg3->unk128;
            HQ2_READ_FIFO = temp_f15_6;
            temp_f14_7 = arg3->unk12C;
            HQ2_READ_FIFO = temp_f14_7;
            HQ2_READ_FIFO = (void *)0xCC80D037;
            temp_f13_7 = arg3->unk140;
            HQ2_READ_FIFO = temp_f13_7;
            temp_f12_7 = arg3->unk144;
            HQ2_READ_FIFO = temp_f12_7;
            HQ2_READ_FIFO = arg3->unk148;
            HQ2_READ_FIFO = arg3->unk14C;
            HQ2_READ_FIFO = (void *)0xCB80D036;
            HQ2_READ_FIFO = arg3->unk130;
            HQ2_READ_FIFO = arg3->unk134;
            HQ2_READ_FIFO = arg3->unk138;
            HQ2_READ_FIFO = arg3->unk13C;
            HQ2_READ_FIFO = (void *)0xCD80D038;
            HQ2_READ_FIFO = arg3->unk150;
            HQ2_READ_FIFO = arg3->unk154;
            HQ2_READ_FIFO = arg3->unk158;
            HQ2_READ_FIFO = arg3->unk15C;
            sp80 = (s64) var_a1;
            __glOdyim_Materialfv(0x405, 0x1601, sp, (void *) sp20, (void *) temp_a4, temp_f12_7, temp_f13_7, temp_f14_7, temp_f15_6, temp_f16_5, temp_f17_4, arg3->unk160);
            arg0->unk168C5 = 1U;
block_57:
            goto block_58;
        }
block_58:
        if (sp18 != 0) {
block_59:
            HQ2_READ_FIFO = (void *)0xC180CC19;
            HQ2_READ_FIFO = arg3->unkC0;
            HQ2_READ_FIFO = arg3->unkC4;
            HQ2_READ_FIFO = arg3->unkC8;
            if (sp10 != 0) {
                goto block_61;
            }
        } else {
block_54:
            if (sp10 == 0) {

            } else {
block_61:
                HQ2_READ_FIFO = (void *)0xC580D015;
                HQ2_READ_FIFO = arg3->unk90;
                HQ2_READ_FIFO = arg3->unk94;
                HQ2_READ_FIFO = arg3->unk98;
                HQ2_READ_FIFO = arg3->unk9C;
            }
        }
    }
    HQ2_READ_FIFO = (arg3->unkB8 == 0) ? (void *)0x3000C02E : var_a1;
    if (temp_s5 != 0) {
        HQ2_READ_FIFO = (void *)0xC380D025;
        HQ2_READ_FIFO = arg3->unk30;
        HQ2_READ_FIFO = arg3->unk34;
        HQ2_READ_FIFO = arg3->unk38;
        HQ2_READ_FIFO = arg3->unk3C;
    }
    HQ2_READ_FIFO = (void *)0x8080D005;
    HQ2_READ_FIFO = arg3->unk10;
    HQ2_READ_FIFO = arg3->unk14;
    HQ2_READ_FIFO = arg3->unk18;
    HQ2_READ_FIFO = arg3->unk1C;
    HQ2_READ_FIFO = (void *)0x14001;
    if (arg0->unk96F4 != 0) {
        HQ2_READ_FIFO = (void *)0x10443;
        HQ2_READ_FIFO = (void *)0xFA;
        HQ2_READ_FIFO = (void *)0x10046;
        HQ2_READ_FIFO = (void *)0x10046;
        arg0->unk9830 = 1;
        return;
    }
    arg0->unk9830 = 1;
}

void __glOdyim_SoftVertex3dFast(f64 fparg0, f64 fparg1, f64 fparg2, f32 fparg3) {
    f32 var_f15;
    f64 var_f12;
    f64 var_f13;
    f64 var_f14;
    s32 temp_a3;
    s32 temp_t1;
    s32 var_a5;
    s32 var_a6;
    s32 var_ra;
    s32 var_t9;
    u32 var_a3;
    void *temp_a0;
    void *temp_a1;
    void *var_a4;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk31C8;
    var_a3 = temp_a0->unk16818;
    temp_a1->unk0 = 0;
    temp_a1->unk10 = (f32) var_f12;
    temp_a1->unk14 = (f32) var_f13;
    var_a6 = 0;
    temp_a1->unk18 = (f32) var_f14;
    temp_a1->unkC = (s32) temp_a0->unk2F04;
    var_a4 = temp_a0 + 0x16748;
    var_a5 = 1;
    temp_a1->unk1C = (f32) temp_a0->unkDD8;
    if (var_a3 != 0) {
        var_a6 = 0;
        do {
            temp_t1 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t1 != 0) {
                M2C_ERROR(/* unknown instruction: madd.d $f4, $f4, $f6, $f12 */);
                M2C_ERROR(/* unknown instruction: madd.d $f4, $f4, $f5, $f14 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t2, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a0->unk168BC;
    var_t9 = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a0->unkD0;
        temp_a1->unkC4 = (f32) temp_a0->unkD4;
        temp_a1->unkC8 = (f32) temp_a0->unkD8;
        var_t9 = temp_a0->unk168BC & 2;
    }
    var_ra = temp_a0->unk168BC & 4;
    if (var_t9 != 0) {
        temp_a1->unk30 = (f32) temp_a0->unkE0;
        temp_a1->unk34 = (f32) temp_a0->unkE4;
        temp_a1->unk38 = (f32) temp_a0->unkE8;
        temp_a1->unk3C = (f32) temp_a0->unkEC;
        var_ra = temp_a0->unk168BC & 4;
    }
    if (var_ra != 0) {
        var_f15 = temp_a0->unkC0;
        temp_a1->unk90 = var_f15;
        var_f14 = (bitwise f64) temp_a0->unkC4;
        temp_a1->unk94 = (bitwise f32) var_f14;
        var_f13 = (bitwise f64) temp_a0->unkC8;
        temp_a1->unk98 = (bitwise f32) var_f13;
        var_f12 = (bitwise f64) temp_a0->unkCC;
        temp_a1->unk9C = (bitwise f32) var_f12;
    }
    temp_a0->unk2EE4(temp_a0, temp_a1, temp_a0->unk168BC, var_a4, var_a5, var_a6, temp_a0 + 0x10000, var_f12, var_f13, var_f14, var_f15);
}

void __glOdyim_SoftVertex3dvFast(void *arg0, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6) {
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    s32 temp_a3;
    s32 temp_t2;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_ra;
    u32 var_a3;
    void *temp_a1;
    void *temp_a7;
    void *var_a4;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    temp_a7 = *(void **)0x1010;
    temp_a1 = temp_a7->unk31C8;
    var_a3 = temp_a7->unk16818;
    temp_a1->unk0 = 0;
    temp_a1->unk10 = (f32) (second half of f64);
    temp_a1->unk14 = (f32) arg0->unk8;
    var_a6 = 0;
    temp_a1->unk18 = (f32) arg0->unk10;
    temp_a1->unkC = (s32) temp_a7->unk2F04;
    var_a4 = temp_a7 + 0x16748;
    var_a5 = 1;
    temp_a1->unk1C = (f32) temp_a7->unkDD8;
    if (var_a3 != 0) {
        var_a6 = 0;
        do {
            temp_t2 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t2 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f9, $f4 */);
                M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f5 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t3, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a7->unk168BC;
    var_ra = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a7->unkD0;
        temp_a1->unkC4 = (f32) temp_a7->unkD4;
        temp_a1->unkC8 = (f32) temp_a7->unkD8;
        var_ra = temp_a7->unk168BC & 2;
    }
    var_at = temp_a7->unk168BC & 4;
    if (var_ra != 0) {
        var_f14 = temp_a7->unkE0;
        temp_a1->unk30 = var_f14;
        var_f13 = temp_a7->unkE4;
        temp_a1->unk34 = var_f13;
        var_f12 = temp_a7->unkE8;
        temp_a1->unk38 = var_f12;
        temp_a1->unk3C = (f32) temp_a7->unkEC;
        var_at = temp_a7->unk168BC & 4;
    }
    if (var_at != 0) {
        var_f18 = temp_a7->unkC0;
        temp_a1->unk90 = var_f18;
        var_f17 = temp_a7->unkC4;
        temp_a1->unk94 = var_f17;
        var_f16 = temp_a7->unkC8;
        temp_a1->unk98 = var_f16;
        var_f15 = temp_a7->unkCC;
        temp_a1->unk9C = var_f15;
    }
    temp_a7->unk2EE4(temp_a7, temp_a1, temp_a7->unk168BC, var_a4, var_a5, var_a6, temp_a7, var_f12, var_f13, var_f14, var_f15, var_f16, var_f17, var_f18);
}

void __glOdyim_SoftVertex3fFast(f32 fparg0, f32 fparg1, f32 fparg2) {
    f32 var_f12;
    s32 temp_a3;
    s32 temp_t1;
    s32 var_a5;
    s32 var_a6;
    s32 var_ra;
    s32 var_t9;
    u32 var_a3;
    void *temp_a0;
    void *temp_a1;
    void *var_a4;

    var_f12 = fparg0;
    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk31C8;
    var_a3 = temp_a0->unk16818;
    temp_a1->unk0 = 0;
    var_a5 = temp_a0->unk2F04;
    temp_a1->unk10 = var_f12;
    temp_a1->unk14 = fparg1;
    temp_a1->unk18 = fparg2;
    var_a6 = 0;
    temp_a1->unkC = var_a5;
    var_a4 = temp_a0 + 0x16748;
    temp_a1->unk1C = (f32) temp_a0->unkDD8;
    if (var_a3 != 0) {
        var_a5 = 1;
        var_a6 = 0;
        do {
            temp_t1 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t1 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f3, $f12 */);
                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f14 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t2, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a0->unk168BC;
    var_t9 = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a0->unkD0;
        temp_a1->unkC4 = (f32) temp_a0->unkD4;
        temp_a1->unkC8 = (f32) temp_a0->unkD8;
        var_t9 = temp_a0->unk168BC & 2;
    }
    var_ra = temp_a0->unk168BC & 4;
    if (var_t9 != 0) {
        temp_a1->unk30 = (f32) temp_a0->unkE0;
        temp_a1->unk34 = (f32) temp_a0->unkE4;
        temp_a1->unk38 = (f32) temp_a0->unkE8;
        temp_a1->unk3C = (f32) temp_a0->unkEC;
        var_ra = temp_a0->unk168BC & 4;
    }
    if (var_ra != 0) {
        var_f12 = temp_a0->unkC0;
        temp_a1->unk90 = var_f12;
        temp_a1->unk94 = (f32) temp_a0->unkC4;
        temp_a1->unk98 = (f32) temp_a0->unkC8;
        temp_a1->unk9C = (f32) temp_a0->unkCC;
    }
    temp_a0->unk2EE4(temp_a0, temp_a1, temp_a0->unk168BC, var_a4, var_a5, var_a6, temp_a0 + 0x10000, var_f12);
}

void __glOdyim_SoftVertex3fvFast(void *arg0, f32 fparg0) {
    f32 var_f12;
    s32 temp_a3;
    s32 temp_t2;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_ra;
    u32 var_a3;
    void *temp_a1;
    void *temp_a7;
    void *var_a4;

    var_f12 = fparg0;
    temp_a7 = *(void **)0x1010;
    temp_a1 = temp_a7->unk31C8;
    var_a3 = temp_a7->unk16818;
    temp_a1->unk0 = 0;
    temp_a1->unk10 = (f32) arg0->unk0;
    temp_a1->unk14 = (f32) arg0->unk4;
    var_a6 = 0;
    temp_a1->unk18 = (f32) arg0->unk8;
    temp_a1->unkC = (s32) temp_a7->unk2F04;
    var_a4 = temp_a7 + 0x16748;
    var_a5 = 1;
    temp_a1->unk1C = (f32) temp_a7->unkDD8;
    if (var_a3 != 0) {
        var_a6 = 0;
        do {
            temp_t2 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t2 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f3, $f4 */);
                M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f2, $f5 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t3, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a7->unk168BC;
    var_ra = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a7->unkD0;
        temp_a1->unkC4 = (f32) temp_a7->unkD4;
        temp_a1->unkC8 = (f32) temp_a7->unkD8;
        var_ra = temp_a7->unk168BC & 2;
    }
    var_at = temp_a7->unk168BC & 4;
    if (var_ra != 0) {
        temp_a1->unk30 = (f32) temp_a7->unkE0;
        temp_a1->unk34 = (f32) temp_a7->unkE4;
        temp_a1->unk38 = (f32) temp_a7->unkE8;
        temp_a1->unk3C = (f32) temp_a7->unkEC;
        var_at = temp_a7->unk168BC & 4;
    }
    if (var_at != 0) {
        var_f12 = temp_a7->unkC0;
        temp_a1->unk90 = var_f12;
        temp_a1->unk94 = (f32) temp_a7->unkC4;
        temp_a1->unk98 = (f32) temp_a7->unkC8;
        temp_a1->unk9C = (f32) temp_a7->unkCC;
    }
    temp_a7->unk2EE4(temp_a7, temp_a1, temp_a7->unk168BC, var_a4, var_a5, var_a6, temp_a7, var_f12);
}

void __glOdyim_SoftVertex4dFast(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    f64 var_f12;
    f64 var_f13;
    f64 var_f14;
    f64 var_f15;
    s32 temp_a3;
    s32 temp_t1;
    s32 var_a5;
    s32 var_a6;
    s32 var_ra;
    s32 var_t9;
    u32 var_a3;
    void *temp_a0;
    void *temp_a1;
    void *var_a4;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk31C8;
    var_a3 = temp_a0->unk16818;
    temp_a1->unk0 = 0;
    var_a6 = 0;
    temp_a1->unk1C = (f32) var_f15;
    temp_a1->unk18 = (f32) var_f14;
    var_a5 = 1;
    temp_a1->unk14 = (f32) var_f13;
    temp_a1->unk10 = (f32) var_f12;
    var_a4 = temp_a0 + 0x16748;
    temp_a1->unkC = (s32) temp_a0->unk2F08;
    if (var_a3 != 0) {
        var_a6 = 0;
        do {
            temp_t1 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t1 != 0) {
                M2C_ERROR(/* unknown instruction: madd.d $f4, $f4, $f5, $f12 */);
                M2C_ERROR(/* unknown instruction: madd.d $f4, $f4, $f6, $f14 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t2, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a0->unk168BC;
    var_t9 = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a0->unkD0;
        temp_a1->unkC4 = (f32) temp_a0->unkD4;
        temp_a1->unkC8 = (f32) temp_a0->unkD8;
        var_t9 = temp_a0->unk168BC & 2;
    }
    var_ra = temp_a0->unk168BC & 4;
    if (var_t9 != 0) {
        temp_a1->unk30 = (f32) temp_a0->unkE0;
        temp_a1->unk34 = (f32) temp_a0->unkE4;
        temp_a1->unk38 = (f32) temp_a0->unkE8;
        temp_a1->unk3C = (f32) temp_a0->unkEC;
        var_ra = temp_a0->unk168BC & 4;
    }
    if (var_ra != 0) {
        var_f15 = (bitwise f64) temp_a0->unkC0;
        temp_a1->unk90 = (bitwise f32) var_f15;
        var_f14 = (bitwise f64) temp_a0->unkC4;
        temp_a1->unk94 = (bitwise f32) var_f14;
        var_f13 = (bitwise f64) temp_a0->unkC8;
        temp_a1->unk98 = (bitwise f32) var_f13;
        var_f12 = (bitwise f64) temp_a0->unkCC;
        temp_a1->unk9C = (bitwise f32) var_f12;
    }
    temp_a0->unk2EE4(temp_a0, temp_a1, temp_a0->unk168BC, var_a4, var_a5, var_a6, temp_a0 + 0x10000, var_f12, var_f13, var_f14, var_f15);
}

void __glOdyim_SoftVertex4dvFast(void *arg0, f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3, f32 fparg4, f32 fparg5, f32 fparg6, f32 fparg7) {
    f32 var_f12;
    f32 var_f13;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    s32 temp_a3;
    s32 temp_t2;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_ra;
    u32 var_a3;
    void *temp_a1;
    void *temp_a7;
    void *var_a4;

    var_f12 = fparg0;
    var_f13 = fparg1;
    var_f14 = fparg2;
    var_f15 = fparg3;
    var_f16 = fparg4;
    var_f17 = fparg5;
    var_f18 = fparg6;
    var_f19 = fparg7;
    temp_a7 = *(void **)0x1010;
    temp_a1 = temp_a7->unk31C8;
    var_a3 = temp_a7->unk16818;
    temp_a1->unk0 = 0;
    var_a6 = 0;
    temp_a1->unk1C = (f32) arg0->unk18;
    temp_a1->unk18 = (f32) arg0->unk10;
    var_a5 = 1;
    temp_a1->unk14 = (f32) (second half of f64);
    temp_a1->unk10 = (f32) (second half of f64);
    var_a4 = temp_a7 + 0x16748;
    temp_a1->unkC = (s32) temp_a7->unk2F08;
    if (var_a3 != 0) {
        var_a6 = 0;
        do {
            temp_t2 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t2 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f10, $f5 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t3, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a7->unk168BC;
    var_ra = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a7->unkD0;
        temp_a1->unkC4 = (f32) temp_a7->unkD4;
        temp_a1->unkC8 = (f32) temp_a7->unkD8;
        var_ra = temp_a7->unk168BC & 2;
    }
    var_at = temp_a7->unk168BC & 4;
    if (var_ra != 0) {
        var_f15 = temp_a7->unkE0;
        temp_a1->unk30 = var_f15;
        var_f14 = temp_a7->unkE4;
        temp_a1->unk34 = var_f14;
        var_f13 = temp_a7->unkE8;
        temp_a1->unk38 = var_f13;
        var_f12 = temp_a7->unkEC;
        temp_a1->unk3C = var_f12;
        var_at = temp_a7->unk168BC & 4;
    }
    if (var_at != 0) {
        var_f19 = temp_a7->unkC0;
        temp_a1->unk90 = var_f19;
        var_f18 = temp_a7->unkC4;
        temp_a1->unk94 = var_f18;
        var_f17 = temp_a7->unkC8;
        temp_a1->unk98 = var_f17;
        var_f16 = temp_a7->unkCC;
        temp_a1->unk9C = var_f16;
    }
    temp_a7->unk2EE4(temp_a7, temp_a1, temp_a7->unk168BC, var_a4, var_a5, var_a6, temp_a7, var_f12, var_f13, var_f14, var_f15, var_f16, var_f17, var_f18, var_f19);
}

void __glOdyim_SoftVertex4fFast(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    s32 temp_a3;
    s32 temp_t1;
    s32 var_a5;
    s32 var_a6;
    s32 var_ra;
    s32 var_t9;
    u32 var_a3;
    void *temp_a0;
    void *temp_a1;
    void *var_a4;

    temp_a0 = *(void **)0x1010;
    temp_a1 = temp_a0->unk31C8;
    var_a3 = temp_a0->unk16818;
    temp_a1->unk0 = 0;
    var_a6 = 0;
    temp_a1->unk1C = fparg3;
    temp_a1->unk18 = fparg2;
    var_a5 = 1;
    temp_a1->unk14 = fparg1;
    temp_a1->unk10 = fparg0;
    var_a4 = temp_a0 + 0x16748;
    temp_a1->unkC = (s32) temp_a0->unk2F08;
    if (var_a3 != 0) {
        var_a6 = 0;
        do {
            temp_t1 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t1 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f12 */);
                M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f2, $f14 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t2, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a0->unk168BC;
    var_t9 = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a0->unkD0;
        temp_a1->unkC4 = (f32) temp_a0->unkD4;
        temp_a1->unkC8 = (f32) temp_a0->unkD8;
        var_t9 = temp_a0->unk168BC & 2;
    }
    var_ra = temp_a0->unk168BC & 4;
    if (var_t9 != 0) {
        temp_a1->unk30 = (f32) temp_a0->unkE0;
        temp_a1->unk34 = (f32) temp_a0->unkE4;
        temp_a1->unk38 = (f32) temp_a0->unkE8;
        temp_a1->unk3C = (f32) temp_a0->unkEC;
        var_ra = temp_a0->unk168BC & 4;
    }
    if (var_ra != 0) {
        temp_a1->unk90 = (f32) temp_a0->unkC0;
        temp_a1->unk94 = (f32) temp_a0->unkC4;
        temp_a1->unk98 = (f32) temp_a0->unkC8;
        temp_a1->unk9C = (f32) temp_a0->unkCC;
    }
    temp_a0->unk2EE4(temp_a0, temp_a1, temp_a0->unk168BC, var_a4, var_a5, var_a6, temp_a0 + 0x10000);
}

void __glOdyim_SoftVertex4fvFast(void *arg0) {
    s32 temp_a3;
    s32 temp_t2;
    s32 var_a5;
    s32 var_a6;
    s32 var_at;
    s32 var_ra;
    u32 var_a3;
    void *temp_a1;
    void *temp_a7;
    void *var_a4;

    temp_a7 = *(void **)0x1010;
    temp_a1 = temp_a7->unk31C8;
    var_a3 = temp_a7->unk16818;
    temp_a1->unk0 = 0;
    var_a6 = 0;
    temp_a1->unk1C = (f32) arg0->unkC;
    temp_a1->unk18 = (f32) arg0->unk8;
    var_a5 = 1;
    temp_a1->unk14 = (f32) arg0->unk4;
    temp_a1->unk10 = (f32) arg0->unk0;
    var_a4 = temp_a7 + 0x16748;
    temp_a1->unkC = (s32) temp_a7->unk2F08;
    if (var_a3 != 0) {
        var_a6 = 0;
        do {
            temp_t2 = var_a3 & 1;
            var_a3 = var_a3 >> 1;
            if (temp_t2 != 0) {
                M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f4 */);
                M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f2, $f5 */);
                var_a6 = M2C_ERROR(/* unknown instruction: movt $a6, $t3, $fcc0 */);
            }
            var_a4 += 0x10;
            var_a5 *= 2;
        } while (var_a3 != 0);
    }
    temp_a1->unk191 = (s8) (var_a6 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = var_a6;
    temp_a3 = temp_a7->unk168BC;
    var_ra = temp_a3 & 2;
    if (temp_a3 & 1) {
        temp_a1->unkC0 = (f32) temp_a7->unkD0;
        temp_a1->unkC4 = (f32) temp_a7->unkD4;
        temp_a1->unkC8 = (f32) temp_a7->unkD8;
        var_ra = temp_a7->unk168BC & 2;
    }
    var_at = temp_a7->unk168BC & 4;
    if (var_ra != 0) {
        temp_a1->unk30 = (f32) temp_a7->unkE0;
        temp_a1->unk34 = (f32) temp_a7->unkE4;
        temp_a1->unk38 = (f32) temp_a7->unkE8;
        temp_a1->unk3C = (f32) temp_a7->unkEC;
        var_at = temp_a7->unk168BC & 4;
    }
    if (var_at != 0) {
        temp_a1->unk90 = (f32) temp_a7->unkC0;
        temp_a1->unk94 = (f32) temp_a7->unkC4;
        temp_a1->unk98 = (f32) temp_a7->unkC8;
        temp_a1->unk9C = (f32) temp_a7->unkCC;
    }
    temp_a7->unk2EE4(temp_a7, temp_a1, temp_a7->unk168BC, var_a4, var_a5, var_a6, temp_a7);
}
