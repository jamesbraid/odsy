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
Error occurred while processing instruction: bgez $t3, .L0d9b95e0

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
Error occurred while processing instruction: bgez $a0, .L0d9bb82c

Error occurred while processing instruction: sdc1 $f17, 0x128($sp)

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
Error occurred while processing instruction: bgez $a6, .L0d9bd038

Error occurred while processing instruction: sdc1 $f23, 0x80($sp)

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
Error occurred while processing instruction: bgez $t3, .L0d9b95e0

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
Error occurred while processing instruction: bgez $a0, .L0d9bb82c

Error occurred while processing instruction: sdc1 $f17, 0x128($sp)

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
Error occurred while processing instruction: bgez $a6, .L0d9bd038

Error occurred while processing instruction: sdc1 $f23, 0x80($sp)

Tried to use a double-precision instruction with odd-numbered float register $f17
Tried to use a double-precision instruction with odd-numbered float register $f23
Tried to use a double-precision instruction with odd-numbered float register $f17
Tried to use a double-precision instruction with odd-numbered float register $f23
s32 __glOdysseyAssignToPMObj(void *, s32, s32, s64, s64, s32, ?, s32 *); /* extern */
s32 __glOdysseyClosePMObjReference(void *, s32, s32, s32, u8); /* extern */
s32 __glOdysseyClosePMObjWriteReference(void *, s32, s32); /* extern */
s32 __glOdysseyImageCalcFieldFormat(s32);           /* extern */
f64 __glOdysseyImageCalcOdyEyeSpaceRasterPosZ(s64, s64, ?, s32, s32, ?); /* extern */
s32 __glOdysseyImageLogBase2(s32, s32, s32, ?);     /* extern */
? __glOdysseyIoctl(void *, ?, s32 *, s32, s32, void *, s32, void *); /* extern */
s32 __glOdysseyOpenPMObjReference(void *, s32, s32, s32, s32 (*)[], ?, s32, u64, s32, s64); /* extern */
s32 __glOdysseyOpenPMObjWriteReference(void *, s32, s32, s32 *, s32, s32, s32, s64); /* extern */
? __glOdysseyProgramGenericConvolutionFilter(s32 *, s32 *, s32 *, s64, s64, s64, ?, s64); /* extern */
s32 __glOdysseyReadFromPMObj(void *, s32, s32, s64, s32, ?, ?, s32 *); /* extern */
? __glOdysseyValidateHardware(void *, s64, s32, s32, u32, s32, u32, s32); /* extern */
? __glSetError(?, s32, s32, s32, s64, s64);         /* extern */
s32 __glSpecBytesPerElement(void *);                /* extern */
s64 __glSpecElementsPerGroup(u32, void *, u8, s32, s32); /* extern */
? bcopy(s64, s64, u64);                             /* extern */
f32 ceilf(s64, s64 *, u32, f32, u64, s32, f32, f32); /* extern */
? sub_0d9b0000(?);                                  /* extern */
s32 __glOdysseyImageCalcPixelModeFields(void *arg0, void *arg1, s32, s32, s32, f32, f32, f32); /* static */
s32 __glOdysseyImageCalcTexObjFormats(s32, s32 *, void *); /* static */
s32 __glOdysseyImageCalcTexOffset(void *arg0, s32 *arg1); /* static */
? __glOdysseyImageCalcXferReadParams(s64, void *, void *, s64 *, void *, void *, s64, s64); /* static */
s32 __glOdysseyImageCalcXferWriteParams(u32 arg0, void *arg1, s32 arg2, s64 *arg3, s32 *, s32 *, s32, u8, ?, s64); /* static */
void __glOdysseyImageMovePixelsTexture(void *arg0, void *arg1, s64 *arg2, s64 arg3); /* static */
extern f32 HQ2_READ_FIFO;
extern ? sub_0daf0000;

void ImageCopyPixelBody(void *arg0, void *arg1, void *arg2, s32 arg4, s32 arg5, s32 arg6, f32 fparg3) {
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 var_f10;
    f32 var_f11;
    f32 var_f5;
    f32 var_f9;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t8_3;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t2;
    s32 var_t3;
    s32 var_t3_2;
    s32 var_t9;
    s32 var_t9_2;
    void *temp_a3;
    void *temp_t0;

    temp_t0 = *(void **)0x1010;
    if (arg5 != 0) {
        temp_f6 = (f32) arg2->unk0;
        temp_f7 = (f32) arg2->unk8;
        temp_f8 = (f32) arg2->unkC;
        temp_f4 = (f32) arg2->unk4;
        if (arg4 != 0) {
            var_f9 = temp_f4;
            if (arg4 != 1) {
                var_f11 = temp_f8;
                var_f5 = M2C_ERROR(/* unknown instruction: movz.s $f5, $f6, $t2 */);
                var_f10 = M2C_ERROR(/* unknown instruction: movz.s $f10, $f7, $t2 */);
            } else {
                var_f5 = temp_f7;
                var_f11 = temp_f4;
                var_f10 = temp_f6;
                var_f9 = temp_f8;
            }
        } else {
            var_f5 = temp_f6;
            var_f11 = temp_f4;
            var_f10 = temp_f7;
            var_f9 = temp_f8;
        }
        if (temp_t0->unk9830 != 0) {
            temp_t0->unk9830 = 0;
            HQ2_READ_FIFO = 9.3364e-41f;
            HQ2_READ_FIFO = 3.5e-43f;
            HQ2_READ_FIFO = 9.1934e-41f;
            HQ2_READ_FIFO = 9.1934e-41f;
        }
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.9126e-41f;
        HQ2_READ_FIFO = temp_t0->unk96AC;
        HQ2_READ_FIFO = temp_t0->unk96B0;
        HQ2_READ_FIFO = temp_t0->unk96B4;
        HQ2_READ_FIFO = temp_t0->unk96B8;
        HQ2_READ_FIFO = temp_t0->unk96BC;
        temp_t0->unk9830 = 0;
        HQ2_READ_FIFO = 9.3364e-41f;
        HQ2_READ_FIFO = 3.5e-43f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        temp_a3 = temp_t0->unkF8;
        HQ2_READ_FIFO = 1.1623e-40f;
        HQ2_READ_FIFO = 1.4e-44f;
        temp_t8 = arg2->unk0;
        var_t3 = arg2->unk8;
        var_t9 = temp_t8;
        if (var_t3 >= temp_t8) {
            var_t9 = var_t3;
            if (temp_t8 < var_t3) {
                var_t3 = temp_t8;
            }
        }
        temp_t0->unk96EC = (s32) (var_t9 - var_t3);
        temp_t2 = arg2->unk4;
        var_t1 = arg2->unkC;
        var_t3_2 = temp_t2;
        if (var_t1 >= temp_t2) {
            var_t3_2 = var_t1;
            if (temp_t2 < var_t1) {
                var_t1 = temp_t2;
            }
        }
        temp_t0->unk96F0 = (s32) (var_t3_2 - var_t1);
        temp_t0->unk96C4 = (f32) temp_a3->unk0;
        temp_t0->unk96C8 = (f32) temp_a3->unk4;
        temp_t0->unk96CC = (f32) temp_a3->unk8;
        temp_t0->unk96D0 = (f32) temp_a3->unkC;
        temp_t0->unk96D4 = var_f5;
        temp_t0->unk96D8 = var_f11;
        temp_t0->unk96DC = fparg3;
        temp_t0->unk96E0 = var_f10;
        temp_t0->unk96E4 = var_f9;
        temp_t0->unk96E8 = fparg3;
        HQ2_READ_FIFO = -4.3171425e9f;
        HQ2_READ_FIFO = temp_t0->unk96C4;
        HQ2_READ_FIFO = temp_t0->unk96C8;
        HQ2_READ_FIFO = temp_t0->unk96CC;
        HQ2_READ_FIFO = temp_t0->unk96D0;
        HQ2_READ_FIFO = temp_t0->unk96D4;
        HQ2_READ_FIFO = temp_t0->unk96D8;
        HQ2_READ_FIFO = temp_t0->unk96DC;
        HQ2_READ_FIFO = temp_t0->unk96E0;
        HQ2_READ_FIFO = temp_t0->unk96E4;
        HQ2_READ_FIFO = temp_t0->unk96E8;
        HQ2_READ_FIFO = -1.182669e-38f;
        HQ2_READ_FIFO = 0.0f;
        HQ2_READ_FIFO = 0.0f;
        temp_t0->unk9700 = 0;
        temp_t0->unk96FC = 0;
    }
    temp_v0 = arg1->unkC;
    temp_t9 = arg1->unk4;
    temp_t9_2 = (0xFFFF0000 & (((temp_t9 >= temp_v0) ? temp_v0 : temp_t9) << 0x10)) | (arg0->unk4 & 0xFFFF);
    arg0->unk4 = temp_t9_2;
    temp_v0_2 = arg1->unk8;
    temp_t8_2 = arg1->unk0;
    arg0->unk4 = (s32) ((((temp_t8_2 >= temp_v0_2) ? temp_v0_2 : temp_t8_2) & 0xFFFF) | (0xFFFF0000 & temp_t9_2));
    var_t1_2 = arg1->unk4;
    temp_t2_2 = arg1->unkC;
    var_t9_2 = var_t1_2;
    if (temp_t2_2 < var_t1_2) {
        goto block_10;
    }
    var_t9_2 = temp_t2_2;
    if (var_t1_2 < temp_t2_2) {

    } else {
block_10:
        var_t1_2 = temp_t2_2;
    }
    temp_t8_3 = (0xFFFF0000 & ((var_t9_2 - var_t1_2) << 0x10)) | (arg0->unkC & 0xFFFF);
    arg0->unkC = temp_t8_3;
    temp_t3 = arg1->unk0;
    var_t2 = arg1->unk8;
    var_a1 = var_t2;
    if (var_t2 < temp_t3) {
        var_a1 = temp_t3;
    } else if (temp_t3 < var_t2) {
        var_t2 = temp_t3;
    }
    arg0->unkC = (s32) (((var_a1 - var_t2) & 0xFFFF) | (0xFFFF0000 & temp_t8_3));
    temp_t1 = arg2->unkC;
    temp_v1 = arg2->unk4;
    temp_v1_2 = (0xFFFF0000 & (((temp_v1 >= temp_t1) ? temp_t1 : temp_v1) << 0x10)) | (arg0->unk18 & 0xFFFF);
    arg0->unk18 = temp_v1_2;
    temp_t1_2 = arg2->unk8;
    temp_v0_3 = arg2->unk0;
    arg0->unk18 = (s32) ((((temp_v0_3 >= temp_t1_2) ? temp_t1_2 : temp_v0_3) & 0xFFFF) | (0xFFFF0000 & temp_v1_2));
    HQ2_READ_FIFO = 1.1548e-41f;
    HQ2_READ_FIFO = arg0->unk0;
    HQ2_READ_FIFO = (bitwise f32) arg0->unk4;
    HQ2_READ_FIFO = arg0->unk8;
    HQ2_READ_FIFO = (bitwise f32) arg0->unkC;
    HQ2_READ_FIFO = arg0->unk10;
    HQ2_READ_FIFO = arg0->unk14;
    HQ2_READ_FIFO = (bitwise f32) arg0->unk18;
    HQ2_READ_FIFO = arg0->unk1C;
    if (arg5 != 0) {
        HQ2_READ_FIFO = 1.14796e-40f;
        if (temp_t0->unk96F4 != 0) {
            temp_t0->unk9830 = 0;
            HQ2_READ_FIFO = 9.3364e-41f;
            HQ2_READ_FIFO = 3.5e-43f;
            HQ2_READ_FIFO = 9.1934e-41f;
            HQ2_READ_FIFO = 9.1934e-41f;
        }
        temp_t0->unk9830 = 1;
    }
    if (arg6 != 0) {
        HQ2_READ_FIFO = 9.3364e-41f;
        HQ2_READ_FIFO = 3.5e-43f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.187e-41f;
        HQ2_READ_FIFO = 9.3364e-41f;
        HQ2_READ_FIFO = 2.1e-43f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        temp_t0->unk9830 = 0;
        HQ2_READ_FIFO = 9.3364e-41f;
        HQ2_READ_FIFO = 3.5e-43f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.1934e-41f;
        HQ2_READ_FIFO = 9.4111e-41f;
        HQ2_READ_FIFO = 1.653039e-39f;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x208, 0x20c, 0x210, 0x214, 0x270, 0x274, 0x278, 0x27c, 0x280, 0x284, 0x288, 0x28c, 0x290, 0x294, 0x298, 0x29c], gap at: 0x220. */
void __glOdysseyImageMovePixelsCopy(void *arg0, void *arg1, s64 *arg2, s64 arg3, s64 arg4, u32 arg7) {
    s64 sp330;
    s64 sp328;
    s64 sp320;
    s64 sp318;
    s64 sp310;
    s64 sp308;
    s64 sp300;
    s64 sp2F8;
    s64 sp2E0;
    s64 sp2D8;
    s64 sp2D0;
    s64 sp2C8;
    s64 sp2C0;
    s64 sp2B8;
    s64 sp2B0;
    s64 sp2A8;
    s64 sp2A0;
    s64 sp1F0;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s32 sp15C;
    s32 sp158;
    s32 sp154;
    s32 sp150;
    s32 sp14C;
    s32 sp148;
    s32 sp144;
    s32 sp140;
    s32 sp13C;
    s32 sp138;
    s32 sp134;
    s32 sp130;
    s32 sp12C;
    s32 sp128;
    s32 sp124;
    s32 sp120;
    u32 sp114;
    u32 sp110;
    s32 sp10C;
    s32 sp108;
    s32 sp104;
    s32 sp100;
    s32 spFC;
    s32 spF8;
    s32 spF4;
    s32 spF0;
    s32 spEC;
    s32 spE8;
    s32 spE0;
    s32 spDC;
    s32 spD8;
    s32 spD4;
    s32 spD0;
    s32 spB8;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    s64 sp38;
    s32 sp34;
    s32 sp2C;
    s32 sp28;
    s32 sp20;
    s64 sp18;                                       /* compiler-managed */
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_a5_2;
    f32 temp_a6_2;
    f32 temp_a7;
    f64 temp_f0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3_12;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a3_6;
    s32 temp_a3_7;
    s32 temp_a3_9;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_5;
    s32 temp_a4_6;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_a7_4;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_f13;
    s32 temp_f14;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s1;
    s32 temp_s5;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3;
    s32 var_ra;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s0_5;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    s32 var_s1_7;
    s32 var_s2_2;
    s32 var_s2_3;
    s32 var_s3;
    s32 var_s3_2;
    s32 var_s3_3;
    s32 var_s3_4;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s4_4;
    s32 var_s4_5;
    s32 var_s5_2;
    s32 var_s6_2;
    s32 var_s6_3;
    s32 var_s6_4;
    s32 var_s7_2;
    s32 var_s7_3;
    s32 var_s7_4;
    s32 var_s8;
    s32 var_s8_2;
    s32 var_s8_3;
    s32 var_s8_4;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_t2_3;
    s64 temp_a0_6;
    s64 temp_a1;
    s64 temp_a3_10;
    s64 temp_a3_11;
    s64 temp_a3_8;
    s64 temp_a4;
    s64 temp_a5;
    s64 temp_a6_3;
    s64 temp_a7_2;
    s64 temp_a7_3;
    s64 temp_at_4;
    s64 temp_at_5;
    s64 temp_at_6;
    s64 temp_lo;
    s64 temp_ra_3;
    s64 temp_ra_4;
    s64 temp_ra_5;
    s64 temp_t0_3;
    s64 temp_t3;
    s64 temp_t8_2;
    s64 temp_t8_3;
    s64 temp_t8_4;
    s64 temp_t8_5;
    s64 temp_t9;
    s64 temp_v0;
    s64 var_a0_2;
    s64 var_a1;
    s64 var_a3_2;
    s64 var_a5;
    s64 var_s1_3;
    s64 var_s2;
    s64 var_s5;
    s64 var_s5_3;
    u32 temp_a4_4;
    u32 temp_a6_4;
    u32 temp_at_3;
    u32 var_a7;
    u8 temp_a0_4;
    u8 temp_a3;
    void *temp_a0_5;
    void *temp_t0_2;
    void *temp_v1_2;
    void *var_a5_2;
    void *var_s0;
    void *var_s4;
    void *var_s6;
    void *var_s7;

    var_a7 = arg7;
    sp10 = 0;
    spC = 0;
    sp8 = 0;
    sp4 = 0;
    sp0 = 0;
    var_s4 = *(void **)0x1010;
    sp18 = 0;
    sp38 = 0;
    sp38.unk18 = 0;
    sp38.unk10 = 0;
    sp38.unk8 = 0;
    sp18.unk18 = 0;
    sp18.unk10 = 0;
    sp18.unk8 = 0;
    temp_a5 = var_s4 + 0x20000;
    var_s2 = arg3 & 0xFF;
    var_s6 = arg1;
    var_s0 = arg0;
    if ((var_s4->unk19DE5 == 0) || (var_a7 = var_s4->unk16A70, (var_a7 != 1))) {
        goto block_2;
    }
    var_a7 = var_s4->unk700 & 2;
    if (var_a7 != 0) {
        sp2A0 = 0x30;
        unksp230 = arg4;
        unksp228 = temp_a5;
    } else {
block_2:
        unksp228 = temp_a5;
        unksp230 = arg4;
        sp2A0 = (s64) var_s4->unk21EEC;
    }
    sp58 = (s32) ceilf(temp_a5, &sp18, var_a7, (f32) ((f64) arg2->unk10 + -0.5), second half of f64);
    sp5C = (s32) ceilf((bitwise s64) (f32) ((f64) arg2->unk14 + -0.5), second half of f64);
    sp60 = (s32) ceilf((bitwise s64) (f32) ((f64) arg2->unk18 + -0.5), second half of f64);
    sp64 = (s32) ceilf((bitwise s64) (f32) ((f64) arg2->unk1C + -0.5), second half of f64);
    temp_f14 = (s32) arg2->unk0;
    sp68 = temp_f14;
    sp6C = (s32) arg2->unk4;
    temp_f13 = (s32) arg2->unk8;
    sp70 = temp_f13;
    sp74 = (s32) arg2->unkC;
    if (var_s0->unk8 != 0) {
        temp_a0 = var_s4->unkA6D8;
        var_s3 = temp_a0;
        if (temp_a0 & 0x1000) {
            var_s3 = 0x2000 - temp_a0;
            sp58 = (second half of f64) - var_s3;
            sp60 = (second half of f64) - var_s3;
            if (var_s6->unk8 != 0) {
                sp70 = temp_f13 - var_s3;
                sp68 = temp_f14 - var_s3;
            }
            unksp240 = 1;
        } else {
            unksp240 = 0;
        }
    } else {
        var_s3 = 0;
        unksp240 = 0;
    }
    __glOdysseyImageMovePixelsTexture(var_s6->unk34, var_s0->unk34, &sp38, var_s6->unk2C == 0);
    if ((u8) sp38 != 0) {
        if (var_s0->unk8 != 0) {
            var_s7 = var_s4 + 0x10000;
            unksp218 = (s64) var_s3;
            goto block_11;
        }
        unksp218 = (s64) var_s3;
        if (var_s0->unk34 == sp48) {
            if (var_s0->unk4 == var_s6->unk4) {
                var_s7 = var_s4 + 0x10000;
                if (var_s0->unkA != 0) {
                    if (var_s4->unk11CC0 == var_s4->unk11D94) {

                    } else {
                        goto block_12;
                    }
                }
            } else {
                var_s7 = var_s4 + 0x10000;
                goto block_11;
            }
        } else {
            var_s7 = var_s4 + 0x10000;
block_11:
block_12:
            var_s2 = 1;
        }
        if (sp58 >= sp68) {
            var_a0 = 0;
            if (sp70 >= sp58) {
                var_a0 = 1;
            }
        } else {
            var_a0 = 0;
        }
        if ((sp64 >= sp74) && (sp6C >= sp64)) {
            temp_t8 = (var_s7->unk6A68 == 0) ? 0x30 : 0;
            var_s5 = 1;
            var_s1 = ((var_s2 == 0) ? temp_t8 : (temp_t8 | 8)) | 0x40;
        } else {
            temp_at = (var_s7->unk6A68 == 0) ? 0x30 : 0;
            var_s5 = 0;
            var_s1 = (var_s2 == 0) ? temp_at : (temp_at | 8);
        }
        temp_a1 = var_a0 & 0xFF;
        if (var_s6->unk9 != 0) {
            temp_a0_2 = var_s4->unk4D4;
            if ((temp_a0_2 != 0x405) && (temp_a0_2 != 0x402) && (temp_a0_2 != 0x403)) {
                unksp250 = 1;
            } else {
                unksp250 = 0;
            }
            var_a2 = 0;
            if (temp_a0_2 != 0x407) {
                if ((temp_a0_2 == 0x401) || (var_a2 = 1, (temp_a0_2 == 0x403))) {
                    var_a2 = 0;
                }
            }
        } else {
            unksp250 = 1;
            var_a2 = 1;
        }
        unksp220 = temp_a1;
        if (__glOdysseyImageCalcXferWriteParams(var_s6->unk2C, var_s6->unk30, var_a2, NULL, sp, &sp4) != 0) {
            var_a2_2 = 1;
            if (var_s0->unk8 != 0) {
                temp_a0_3 = var_s4->unk760;
                if ((temp_a0_3 != 0x405) && (temp_a0_3 != 0x402) && (temp_a0_3 != 0x403)) {
                    unksp248 = 1;
                } else {
                    unksp248 = 0;
                }
                if ((temp_a0_3 == 0x407) || (temp_a0_3 == 0x401) || (var_a2_2 = 1, (temp_a0_3 == 0x403))) {
                    var_a2_2 = 0;
                }
            } else {
                unksp248 = 1;
            }
            if (__glOdysseyImageCalcXferWriteParams(var_s0->unk2C, var_s0->unk30, var_a2_2, NULL, &sp8, &spC) != 0) {
                temp_a2 = var_s6->unk14;
                if (__glOdysseyOpenPMObjReference(var_s4, var_s6->unk10, temp_a2, temp_a2, (s32 (*)[]) &sp78[0], 0) & 0xFF) {
                    unksp238 = (&sp78[0])[var_s6->unk14] + var_s6->unk18;
                    if (__glOdysseyOpenPMObjWriteReference(var_s4, var_s0->unk10, var_s0->unk14, &sp10, var_s2 != 0) & 0xFF) {
                        temp_a1_2 = var_s0->unk18 + sp10;
                        sp10 = temp_a1_2;
                        temp_a3 = var_s6->unk9;
                        temp_ra = (temp_a3 == 0) ? 0 : 1;
                        temp_a0_4 = var_s0->unk8;
                        sp18 = (0xE0000000 & ((0xDFFFFFFF & (s32) sp18) | (0x20000000 & (temp_ra << 0x1D)))) | (0x1FFFFFFF & ((temp_a3 == 0) ? unksp238 : 0x10000019));
                        temp_a3_2 = 0x8FFFFFFF & ((0x7FFFFFFF & sp20) | (0x80000000 & (unksp248 << 0x1F)));
                        sp20 = temp_a3_2;
                        temp_a3_3 = (((temp_a3_2 & ~0x0FFF0000) | ((var_s0->unk1C << 0x10) & 0x0FFF0000)) & ~0xF000) | ((spC << 0xC) & 0xF000);
                        sp20 = temp_a3_3;
                        sp20 = (-0x1000 & temp_a3_3) | (var_s6->unk1C & 0xFFF);
                        temp_t2 = (0xFF0FFFFF & ((((0x8FFFFFFF & ((0x7FFFFFFF & sp28) | (0x80000000 & (unksp250 << 0x1F)))) | ((temp_ra << 0x1C) & 0x70000000)) & ~0x0F000000) | ((sp4 << 0x18) & 0x0F000000))) | (0xF00000 & (sp0 << 0x14));
                        sp28 = temp_t2;
                        sp28 = ((unksp3A * 8) & 0xF8) | (((unksp39 & 7) | (-8 & (((unksp3C << 0xD) & 0xE000) | (0xFFFF1FFF & ((0xF0000 & (var_s6->unk28 << 0x10)) | (0xFFF0FFFF & temp_t2)))))) & ~0xF8) | 0x1000;
                        sp2C = (0xE0000000 & ((0xDFFFFFFF & sp2C) | (0x20000000 & (((temp_a0_4 == 0) ? 0 : 1) << 0x1D)))) | (0x1FFFFFFF & ((temp_a0_4 == 0) ? temp_a1_2 : 0x10000010));
                        temp_t0 = (0xFF0FFFFF & ((sp34 & 0xFFFFFF) | ((((temp_a1 != 0) ? (var_s1 | 0x80) : var_s1) << 0x18) & 0xFF000000))) | (0xF00000 & (sp8 << 0x14));
                        sp34 = temp_t0;
                        sp2F8 = var_s5;
                        sp34 = (sp40 & 0x1F) | ((((sp41 << 5) & 0x1E0) | ((((sp42 << 9) & 0x200) | ((((sp44 << 0xD) & 0xE000) | (0xFFFF1FFF & ((0xF0000 & (var_s0->unk28 << 0x10)) | (0xFFF0FFFF & temp_t0)))) & ~0x200)) & ~0x1E0)) & ~0x1F);
                        if (var_s2 != 0) {
                            sp1B8 = (s64) var_s7->unk-6958;
                            sp1C8 = (s64) var_s7->unk-695C;
                            sp1F0 = (s64) var_s7->unk-6960;
                            sp1B0 = (s64) var_s7->unk-6964;
                            sp1C0 = (s64) var_s4->unk7BFC;
                            sp1D8 = (s64) var_s4->unk7C34;
                            sp1D0 = (s64) var_s4->unk7C38;
                            spB8.unk4 = (f32) var_s7->unk-6950;
                            spB8.unk8 = (f32) var_s7->unk-694C;
                            sp1A8 = (s64) var_s7->unk-68F8;
                            spB8.unkC = (f32) var_s7->unk-6948;
                            spB8.unk10 = (f32) var_s7->unk-6944;
                            sp1A0 = (s64) var_s7->unk-68FC;
                            temp_a6 = var_s7->unk-6954;
                            spB8 = temp_a6;
                            sp1E0 = (s64) var_s4->unk7C3C;
                            sp1E8 = (s64) var_s4->unk7C5C;
                            var_s7->unk-6954 = (s32) ((sp51 & 7) | (-8 & temp_a6));
                            if (var_s7->unk-67D0 != 0) {
                                var_s7->unk-67D0 = 0;
                                HQ2_READ_FIFO = 9.3364e-41f;
                                HQ2_READ_FIFO = 3.5e-43f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                            }
                            temp_a0_5 = var_s4 + 0x969C;
                            sp180 = (s64) temp_a0_5;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.9126e-41f;
                            HQ2_READ_FIFO = (bitwise f32) var_s7->unk-6954;
                            HQ2_READ_FIFO = var_s7->unk-6950;
                            temp_a7 = var_s7->unk-694C;
                            HQ2_READ_FIFO = temp_a7;
                            temp_a6_2 = var_s7->unk-6948;
                            HQ2_READ_FIFO = temp_a6_2;
                            temp_a5_2 = var_s7->unk-6944;
                            HQ2_READ_FIFO = temp_a5_2;
                            var_s7->unk-67D0 = 0;
                            HQ2_READ_FIFO = 9.3364e-41f;
                            HQ2_READ_FIFO = 3.5e-43f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            temp_a2_2 = sp50 | 0x13C00;
                            var_s7->unk-68FC = temp_a2_2;
                            HQ2_READ_FIFO = 1.682e-42f;
                            HQ2_READ_FIFO = (bitwise f32) var_s7->unk-68FC;
                            __glOdysseyImageCalcPixelModeFields(temp_a0_5, var_s0, temp_a2_2, 0x13C00, 0xFA, temp_a5_2, temp_a6_2, temp_a7);
                            var_s7->unk6960 = (s32) (var_s7->unk6960 | 0x200000);
                            var_s7->unk-6964 = (s32) ((0xE0000000 & var_s7->unk-6964) | (0x1FFFFFFF & sp10));
                            *(s32 *)0x1018 = 2;
                            temp_a1_3 = var_s6->unk4;
                            if (temp_a1_3 != 0) {
                                goto block_45;
                            }
                            if (!(sp2F8 & 0xFF) && (unksp220 == 0)) {
                                spF8 = (s32) sp1A0;
                                spFC = (s32) sp1A8;
                                spE8 = (s32) sp1B0;
                                spEC = (s32) sp1F0;
                                spF0 = (s32) sp1C8;
                                spF4 = (s32) sp1B8;
                                spE0 = (s32) sp1C0;
                                spDC = (s32) sp1E8;
                                spD8 = (s32) sp1D8;
                                spD4 = (s32) sp1D0;
                                spD0 = (s32) sp1E0;
                                goto block_118;
                            }
block_45:
                            var_a5 = sp2F8 & 0xFF;
                            if (temp_a1_3 != 1) {
                                goto block_46;
                            }
                            if ((var_a5 == 1) && (unksp220 == 0)) {
                                spF8 = (s32) sp1A0;
                                spFC = (s32) sp1A8;
                                spE8 = (s32) sp1B0;
                                spEC = (s32) sp1F0;
                                spF0 = (s32) sp1C8;
                                spF4 = (s32) sp1B8;
                                spE0 = (s32) sp1C0;
                                spDC = (s32) sp1E8;
                                spD8 = (s32) sp1D8;
                                spD4 = (s32) sp1D0;
                                spD0 = (s32) sp1E0;
block_118:
                                var_s3_2 = 0;
                                goto block_56;
                            }
block_46:
                            temp_a3_4 = sp2F8 & 0xFF;
                            if (temp_a1_3 != 0) {
                                goto block_47;
                            }
                            if (temp_a3_4 == 0) {
                                var_a5 = sp1E0;
                                if (unksp220 == 1) {
                                    spF8 = (s32) sp1A0;
                                    spFC = (s32) sp1A8;
                                    spE8 = (s32) sp1B0;
                                    spEC = (s32) sp1F0;
                                    spF0 = (s32) sp1C8;
                                    spF4 = (s32) sp1B8;
                                    spE0 = (s32) sp1C0;
                                    spDC = (s32) sp1E8;
                                    spD8 = (s32) sp1D8;
                                    spD4 = (s32) sp1D0;
                                    spD0 = (s32) var_a5;
                                    goto block_125;
                                }
                            }
block_47:
                            if (temp_a1_3 != 1) {
                                goto block_48;
                            }
                            if (((sp2F8 & 0xFF) == 1) && (unksp220 == 1)) {
                                spF8 = (s32) sp1A0;
                                spFC = (s32) sp1A8;
                                spE8 = (s32) sp1B0;
                                spEC = (s32) sp1F0;
                                spF0 = (s32) sp1C8;
                                spF4 = (s32) sp1B8;
                                spE0 = (s32) sp1C0;
                                spDC = (s32) sp1E8;
                                spD8 = (s32) sp1D8;
                                spD4 = (s32) sp1D0;
                                spD0 = (s32) sp1E0;
block_125:
                                var_s3_2 = 1;
                                goto block_56;
                            }
block_48:
                            if (temp_a1_3 != 0) {
                                goto block_49;
                            }
                            if (((sp2F8 & 0xFF) == 1) && (unksp220 == 0)) {
                                spF8 = (s32) sp1A0;
                                spFC = (s32) sp1A8;
                                spE8 = (s32) sp1B0;
                                spEC = (s32) sp1F0;
                                spF0 = (s32) sp1C8;
                                spF4 = (s32) sp1B8;
                                spE0 = (s32) sp1C0;
                                spDC = (s32) sp1E8;
                                spD8 = (s32) sp1D8;
                                spD4 = (s32) sp1D0;
                                spD0 = (s32) sp1E0;
                                goto block_132;
                            }
block_49:
                            if (temp_a1_3 != 1) {
                                goto block_50;
                            }
                            if (!(sp2F8 & 0xFF) && (unksp220 == 0)) {
                                spF8 = (s32) sp1A0;
                                spFC = (s32) sp1A8;
                                spE8 = (s32) sp1B0;
                                spEC = (s32) sp1F0;
                                spF0 = (s32) sp1C8;
                                spF4 = (s32) sp1B8;
                                spE0 = (s32) sp1C0;
                                spDC = (s32) sp1E8;
                                spD8 = (s32) sp1D8;
                                spD4 = (s32) sp1D0;
                                spD0 = (s32) sp1E0;
block_132:
                                var_s3_2 = 2;
                                goto block_56;
                            }
block_50:
                            temp_a4 = sp2F8 & 0xFF;
                            if (temp_a1_3 != 0) {
                                goto block_51;
                            }
                            var_a5 = unksp220;
                            if ((temp_a4 == 1) && (var_a5 == 1)) {
                                spF8 = (s32) sp1A0;
                                spFC = (s32) sp1A8;
                                spE8 = (s32) sp1B0;
                                spEC = (s32) sp1F0;
                                spF0 = (s32) sp1C8;
                                spF4 = (s32) sp1B8;
                                spE0 = (s32) sp1C0;
                                spDC = (s32) sp1E8;
                                spD8 = (s32) sp1D8;
                                spD4 = (s32) sp1D0;
                                spD0 = (s32) sp1E0;
                                goto block_55;
                            }
block_51:
                            if ((temp_a1_3 == 1) && !(sp2F8 & 0xFF) && (unksp220 == 1)) {
                                spF8 = (s32) sp1A0;
                                spFC = (s32) sp1A8;
                                spE8 = (s32) sp1B0;
                                spEC = (s32) sp1F0;
                                spF0 = (s32) sp1C8;
                                spF4 = (s32) sp1B8;
                                spE0 = (s32) sp1C0;
                                spDC = (s32) sp1E8;
                                spD8 = (s32) sp1D8;
                                spD4 = (s32) sp1D0;
                                spD0 = (s32) sp1E0;
block_55:
                                var_s3_2 = 3;
block_56:
                                if ((var_s0->unk8 == 0) || (unksp230 != 1)) {
                                    var_s5_2 = (sp5C < sp64) ? sp5C : sp64;
                                    var_s1_2 = (sp58 < sp60) ? sp58 : sp60;
                                    var_a0_2 = ((sp64 >= sp5C) ? sp64 : sp5C) - 1;
                                    var_a1 = ((sp60 >= sp58) ? sp60 : sp58) - 1;
                                    if (var_s0->unkA != 0) {
                                        var_s4->unk7C5C = (s32) var_s7->unk1CC0;
                                        var_s7->unk6960 = (s32) (var_s7->unk6960 | 0x80);
                                        *(void *)0x1018 = 2;
                                    }
                                } else {
                                    var_a5_2 = var_s4->unk7C20;
                                    temp_t0_2 = var_s7->unk65BC;
                                    if ((var_a5_2 != temp_t0_2) || (var_a5_2 = var_s4 + 0x7C5C, (var_s4->unk7C24 != var_s7->unk65C0))) {
                                        var_s4->unk7C20 = temp_t0_2;
                                        var_s4->unk7C24 = (u32) var_s7->unk65C0;
                                        if (var_s7->unk-67D0 != 0) {
                                            var_s7->unk-67D0 = 0;
                                            HQ2_READ_FIFO = 9.3364e-41f;
                                            HQ2_READ_FIFO = 3.5e-43f;
                                            HQ2_READ_FIFO = 9.1934e-41f;
                                            HQ2_READ_FIFO = 9.1934e-41f;
                                        }
                                        // Error: negative shift count
                                        // At instruction: bgez $t3, .L0d9b95e0
                                        if (M2C_ERROR()) {
                                            sp10C = 0;
                                            sp108 = 0;
                                            sp104 = 0;
                                            sp100 = 0;
                                            temp_a4_2 = ((u32) var_s4->unk7C20 >> 0xC) & 0xFFF;
                                            sp100 = temp_a4_2;
                                            sp108 = (s32) var_s4->unk7C20 & 0xFFF;
                                            sp104 = ((u32) var_s4->unk7C24 >> 0xC) & 0xFFF;
                                            temp_a3_5 = var_s4->unk7C24 & 0xFFF;
                                            sp10C = temp_a3_5;
                                            __glOdysseyIoctl(var_s4, 0x6F64000D, &sp100, temp_a3_5, temp_a4_2, var_a5_2);
                                        }
                                        var_s7->unk6964 = (s32) (var_s7->unk6964 | 0x2000);
                                        *(void *)0x1018 = 2;
                                        var_a5_2 = var_s4 + 0x7C5C;
                                    }
                                    temp_t0_3 = (u32) var_s7->unk65BC & 0xFFF;
                                    temp_ra_2 = ((u32) var_s7->unk65BC >> 0xC) & 0xFFF;
                                    temp_v1 = (var_s7->unk65C0 >> 0xC) & 0xFFF;
                                    temp_s5 = (sp5C < sp64) ? sp5C : sp64;
                                    var_s5_2 = (temp_v1 >= temp_s5) ? temp_v1 : temp_s5;
                                    temp_t3 = var_s7->unk65C0 & 0xFFF;
                                    temp_a7_2 = ((sp64 >= sp5C) ? sp64 : sp5C) - 1;
                                    temp_a6_3 = (unksp240 == 0) ? temp_t0_3 : (temp_t0_3 - unksp218);
                                    temp_a7_3 = (temp_a7_2 >= temp_t3) ? temp_t3 : temp_a7_2;
                                    temp_at_2 = (unksp240 == 0) ? temp_ra_2 : (temp_ra_2 - unksp218);
                                    temp_s1 = (sp58 < sp60) ? sp58 : sp60;
                                    temp_v0 = ((sp60 >= sp58) ? sp60 : sp58) - 1;
                                    var_s1_2 = (temp_at_2 >= temp_s1) ? temp_at_2 : temp_s1;
                                    sp170 = temp_a7_3;
                                    sp178 = (temp_v0 >= temp_a6_3) ? temp_a6_3 : temp_v0;
                                    __glOdysseyImageCalcXferReadParams(sp180, var_s4 + 0x7BFC, var_s4 + 0x7C34, var_s4 + 0x7C38, var_s4 + 0x7C3C, var_a5_2, temp_a6_3, temp_a7_3);
                                    temp_a4_3 = var_s7->unk6960 | 0x200083;
                                    var_s7->unk6960 = temp_a4_3;
                                    *(void *)0x1018 = 2;
                                    temp_a3_6 = var_s4->unk7BFC;
                                    var_a0_2 = sp170;
                                    var_a1 = sp178;
                                    if (!(temp_a3_6 & 0x10000)) {

                                    } else {
                                        temp_f0 = __glOdysseyImageCalcOdyEyeSpaceRasterPosZ(var_a0_2, var_a1, 2, temp_a3_6 << 0xF, temp_a4_3, 0x200083);
                                        var_a0_2 = sp170;
                                        var_a1 = sp178;
                                    }
                                }
                                if (unksp228->unk-6230 != 0) {
                                    if (var_s0->unk34 == sp48) {
                                        var_s4->unk7BFC = (s32) (var_s4->unk7BFC & ~0x40000);
                                    }
                                }
                                temp_v1_2 = var_s4->unk7C20;
                                temp_a4_4 = var_s4->unk7C24;
                                var_s4->unk7C20 = (void *) ((((var_a1 < 0) ? 0 : var_a1) & 0xFFF) | (-0x1000 & ((0xFFF000 & (((var_s1_2 < 0) ? 0 : var_s1_2) << 0xC)) | (0xFF000FFF & (s32) temp_v1_2))));
                                temp_a7_4 = -0x1000 & ((0xFFF000 & (((var_s5_2 < 0) ? 0 : var_s5_2) << 0xC)) | (0xFF000FFF & temp_a4_4));
                                temp_a6_4 = (((var_a0_2 < 0) ? 0 : var_a0_2) & 0xFFF) | temp_a7_4;
                                var_s4->unk7C24 = temp_a6_4;
                                temp_a5_3 = var_s7->unk6960 | 0x10;
                                var_s7->unk6960 = temp_a5_3;
                                *(void *)0x1018 = 2;
                                temp_a3_7 = var_s7->unk6960;
                                sp114 = temp_a4_4;
                                sp110 = (u32) temp_v1_2;
                                if (temp_a3_7 != 0) {
                                    __glOdysseyValidateHardware(var_s4, var_a1, 2, temp_a3_7, temp_a4_4, temp_a5_3, temp_a6_4, temp_a7_4);
                                }
                                temp_at_3 = var_s7->unk-5E08;
                                var_s7->unk-5E08 = 0x12FU;
                                var_s7->unk-690C = temp_at_3;
                                HQ2_READ_FIFO = (bitwise f32) ((var_s7->unk-5E08 & 0x3FF) | (((u32) var_s7->unk-5E08 >> 0xA) << 0x17) | 0x29008000);
                                goto block_76;
                            }
                            __glSetError(0x502, temp_a1_3, 2, temp_a3_4, temp_a4, var_a5);
                        } else {
                            var_s3_2 = sp118;
block_76:
                            if (unksp240 != 0) {
                                if (var_s7->unk-67D0 != 0) {
                                    var_s7->unk-67D0 = 0;
                                    HQ2_READ_FIFO = 9.3364e-41f;
                                    HQ2_READ_FIFO = 3.5e-43f;
                                    HQ2_READ_FIFO = 9.1934e-41f;
                                    HQ2_READ_FIFO = 9.1934e-41f;
                                }
                                HQ2_READ_FIFO = 9.4796e-41f;
                                HQ2_READ_FIFO = 0.0f;
                                HQ2_READ_FIFO = var_s7->unk-5924;
                            }
                            if (var_s2 != 0) {
                                var_t0 = sp68;
                                if (var_s4->unk7B70 & 2) {
                                    sp15C = sp64;
                                    sp154 = sp5C;
                                    sp14C = sp74;
                                    sp148 = sp70;
                                    var_t2 = sp60;
                                    sp144 = sp6C;
                                    temp_a0_6 = var_t2 - sp58;
                                    sp140 = var_t0;
                                    sp158 = var_t2;
                                    sp150 = sp58;
                                    var_s5_3 = temp_a0_6;
                                    if (temp_a0_6 >= sp2A0) {
                                        if ((var_s3_2 != 3) && (var_s3_2 != 1)) {
                                            var_t2_2 = sp58;
                                            if (temp_a0_6 > 0) {
                                                do {
                                                    temp_lo = (s32) ((second half of f64) / (f64) (second half of f64)) * sp2A0;
                                                    sp140 = var_t0;
                                                    sp150 = var_t2_2;
                                                    temp_a3_8 = sp2A0 - ((var_t2_2 + unksp218) - temp_lo);
                                                    temp_ra_3 = (var_s5_3 >= temp_a3_8) ? temp_a3_8 : var_s5_3;
                                                    unksp258 = temp_ra_3;
                                                    temp_at_4 = temp_ra_3 + var_t0;
                                                    unksp268 = temp_at_4;
                                                    temp_ra_4 = temp_ra_3 + var_t2_2;
                                                    unksp260 = temp_ra_4;
                                                    M2C_TRAP_IF(sp2A0 == 0);
                                                    sp158 = (s32) temp_ra_4;
                                                    sp148 = (s32) temp_at_4;
                                                    __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp140, &sp150, temp_a3_8, (s64) var_s3_2, var_s2, 1, temp_lo);
                                                    var_s5_3 -= unksp258;
                                                    var_t0 = (s32) unksp268;
                                                    var_t2_2 = (s32) unksp260;
                                                } while (var_s5_3 > 0);
                                            }
                                        } else {
                                            var_t0_2 = sp70;
                                            sp300 = var_s5_3;
                                            if (temp_a0_6 > 0) {
                                                var_s1_3 = sp300;
                                                do {
                                                    temp_t8_2 = (var_t2 + unksp218) - ((s32) ((f64) (second half of f64) / (second half of f64)) * sp2A0);
                                                    sp148 = var_t0_2;
                                                    temp_t8_3 = (temp_t8_2 == 0) ? sp2A0 : temp_t8_2;
                                                    sp158 = var_t2;
                                                    temp_t8_4 = (var_s1_3 < temp_t8_3) ? var_s1_3 : temp_t8_3;
                                                    sp190 = temp_t8_4;
                                                    temp_ra_5 = var_t0_2 - temp_t8_4;
                                                    temp_t8_5 = var_t2 - temp_t8_4;
                                                    sp188 = temp_t8_5;
                                                    M2C_TRAP_IF(sp2A0 == 0);
                                                    sp198 = temp_ra_5;
                                                    sp140 = (s32) temp_ra_5;
                                                    sp150 = (s32) temp_t8_5;
                                                    __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp140, &sp150);
                                                    var_s1_3 -= sp190;
                                                    var_t2 = (s32) sp188;
                                                    var_t0_2 = (s32) sp198;
                                                } while (var_s1_3 > 0);
                                            }
                                        }
                                    } else {
                                        __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp140, &sp150);
                                    }
                                } else {
                                    temp_a4_5 = sp74 < sp6C;
                                    M2C_TRAP_IF(0x20 == 0);
                                    temp_a1_4 = ((sp70 < var_t0) ? var_t0 : sp70) - ((var_t0 >= sp70) ? sp70 : var_t0);
                                    temp_a4_6 = temp_a1_4 + 0x1F;
                                    sp2D0 = (temp_a4_5 == 0) ? -0x20 : 0x20;
                                    sp2D8 = (sp64 >= sp5C) ? -0x20 : 0x20;
                                    sp2C8 = (s64) ((s32) ((temp_a4_6 >= 0) ? temp_a4_6 : (temp_a1_4 + 0x3E)) >> 5);
                                    sp2A8 = (s64) (s32) ((f64) ((((temp_a4_5 != 0) ? sp6C : sp74) - ((sp6C < sp74) ? sp6C : sp74)) + 0x1F) / (f64) 0x20);
                                    switch (var_s3_2) { /* irregular */
                                    default:
                                        var_s8 = sp6C;
                                        sp2E0 = (s64) sp5C;
                                        if (sp2A8 > 0) {
                                            sp2B0 = 0;
                                            sp318 = (s64) var_s0;
                                            sp320 = (s64) var_s4;
                                            sp308 = (s64) var_s7;
                                            sp310 = (s64) var_s6;
                                            sp2B8 = (s64) var_s3_2;
                                            var_s6_2 = sp6C - sp2D0;
                                            var_s7_2 = sp5C - sp2D8;
                                            sp2C0 = var_s2;
loop_154:
                                            var_s4_2 = 0;
                                            var_s1_4 = sp58;
                                            var_s0_2 = sp68;
                                            if (sp2C8 > 0) {
                                                var_s2_2 = sp68 + 0x20;
                                                var_s3_3 = var_s1_4 + 0x20;
                                                var_a3 = var_s3_3;
loop_159:
                                                sp12C = var_s7_2;
                                                sp120 = var_s1_4;
                                                temp_a3_9 = (var_s3_3 >= sp60) ? sp60 : var_a3;
                                                sp124 = (s32) sp2E0;
                                                sp128 = temp_a3_9;
                                                if (sp2D8 > 0) {
                                                    sp12C = (sp64 < var_s7_2) ? var_s7_2 : sp64;
                                                } else {
                                                    sp12C = (var_s7_2 < sp64) ? var_s7_2 : sp64;
                                                }
                                                sp134 = var_s8;
                                                sp13C = var_s6_2;
                                                sp130 = var_s0_2;
                                                sp138 = (var_s2_2 >= sp70) ? sp70 : var_s2_2;
                                                if (sp2D0 <= 0) {
                                                    sp13C = (var_s6_2 < sp74) ? var_s6_2 : sp74;
                                                } else {
                                                    sp13C = (sp74 < var_s6_2) ? var_s6_2 : sp74;
                                                }
                                                __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp130, &sp120, (s64) temp_a3_9, sp2B8, sp2C0, 1, sp2E0);
                                                var_s1_4 += 0x20;
                                                var_s2_2 += 0x20;
                                                var_s4_2 += 1;
                                                var_s0_2 += 0x20;
                                                var_s3_3 += 0x20;
                                                var_a3 = var_s3_3;
                                                if (sp2C8 != var_s4_2) {
                                                    goto loop_159;
                                                }
                                            }
                                            temp_at_5 = sp2B0 + 1;
                                            sp2B0 = temp_at_5;
                                            var_s7_2 -= sp2D8;
                                            var_s6_2 -= sp2D0;
                                            var_s8 -= sp2D0;
                                            sp2E0 -= sp2D8;
                                            if (temp_at_5 < sp2A8) {
                                                goto loop_154;
                                            }
                                            var_s2 = sp2C0;
                                            var_s4 = (void *) sp320;
                                            var_s0 = (void *) sp318;
                                            var_s6 = (void *) sp310;
                                            var_s7 = (void *) sp308;
                                        }
                                        break;
                                    case 3:
                                        var_s8_2 = sp74;
                                        sp2E0 = (s64) sp64;
                                        if (sp2A8 > 0) {
                                            sp2B0 = 0;
                                            sp308 = (s64) var_s7;
                                            sp310 = (s64) var_s6;
                                            sp318 = (s64) var_s0;
                                            var_a1_2 = sp2D0 + sp74;
                                            var_a0_3 = sp2D8 + sp64;
                                            sp320 = (s64) var_s4;
loop_181:
                                            var_s4_3 = 0;
                                            var_s0_3 = sp70;
                                            var_s6_3 = sp70 - 0x20;
                                            var_s1_5 = sp60;
                                            if (sp2C8 > 0) {
                                                var_s7_3 = sp60 - 0x20;
                                                var_t2_3 = var_s7_3;
loop_185:
                                                sp124 = var_a0_3;
                                                sp128 = var_s1_5;
                                                sp12C = (s32) sp2E0;
                                                sp120 = (sp58 >= var_s7_3) ? sp58 : var_t2_3;
                                                if (sp2D8 > 0) {
                                                    sp124 = (var_a0_3 < sp5C) ? var_a0_3 : sp5C;
                                                } else {
                                                    sp124 = (sp5C < var_a0_3) ? var_a0_3 : sp5C;
                                                }
                                                sp134 = var_a1_2;
                                                sp13C = var_s8_2;
                                                temp_a3_10 = sp68 < var_s6_3;
                                                sp138 = var_s0_3;
                                                sp130 = (temp_a3_10 == 0) ? sp68 : var_s6_3;
                                                if (sp2D0 <= 0) {
                                                    sp168 = (s64) var_a1_2;
                                                    sp160 = (s64) var_a0_3;
                                                    sp134 = (sp6C < var_a1_2) ? var_a1_2 : sp6C;
                                                } else {
                                                    sp168 = (s64) var_a1_2;
                                                    sp160 = (s64) var_a0_3;
                                                    sp134 = (var_a1_2 < sp6C) ? var_a1_2 : sp6C;
                                                }
                                                __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp130, &sp120, temp_a3_10, (s64) var_s3_2, var_s2, 1, (s64) sp6C);
                                                var_s1_5 -= 0x20;
                                                var_s6_3 -= 0x20;
                                                var_s4_3 += 1;
                                                var_a0_3 = (s32) sp160;
                                                var_s0_3 -= 0x20;
                                                var_s7_3 -= 0x20;
                                                var_a1_2 = (s32) sp168;
                                                var_t2_3 = var_s7_3;
                                                if (sp2C8 != var_s4_3) {
                                                    goto loop_185;
                                                }
                                            }
                                            temp_a3_11 = sp2B0 + 1;
                                            sp2B0 = temp_a3_11;
                                            var_a0_3 += sp2D8;
                                            var_a1_2 += sp2D0;
                                            var_s8_2 += sp2D0;
                                            sp2E0 += sp2D8;
                                            if (temp_a3_11 < sp2A8) {
                                                goto loop_181;
                                            }
                                            var_s4 = (void *) sp320;
                                            var_s0 = (void *) sp318;
                                            var_s6 = (void *) sp310;
                                            var_s7 = (void *) sp308;
                                        }
                                        break;
                                    case 2:
                                        var_s8_3 = sp74;
                                        sp2E0 = (s64) sp64;
                                        if (sp2A8 > 0) {
                                            sp2B0 = 0;
                                            sp318 = (s64) var_s0;
                                            sp320 = (s64) var_s4;
                                            sp308 = (s64) var_s7;
                                            sp310 = (s64) var_s6;
                                            sp2C0 = var_s2;
                                            sp2B8 = (s64) var_s3_2;
                                            sp168 = sp2D0 + sp74;
                                            sp160 = sp2D8 + sp64;
loop_195:
                                            var_s4_4 = 0;
                                            var_s1_6 = sp58;
                                            var_s0_4 = sp68;
                                            if (sp2C8 > 0) {
                                                var_s2_3 = sp68 + 0x20;
                                                var_s3_4 = var_s1_6 + 0x20;
                                                var_ra = var_s3_4;
loop_202:
                                                sp120 = var_s1_6;
                                                sp12C = (s32) sp2E0;
                                                sp124 = (s32) sp160;
                                                sp128 = (var_s3_4 >= sp60) ? sp60 : var_ra;
                                                if (sp2D8 <= 0) {
                                                    var_a3_2 = sp5C < sp160;
                                                    sp124 = (s32) ((var_a3_2 != 0) ? sp160 : (s64) sp5C);
                                                } else {
                                                    var_a3_2 = sp160;
                                                    sp124 = (s32) ((var_a3_2 < sp5C) ? var_a3_2 : (s64) sp5C);
                                                }
                                                sp13C = var_s8_3;
                                                sp130 = var_s0_4;
                                                sp134 = (s32) sp168;
                                                sp138 = (var_s2_3 >= sp70) ? sp70 : var_s2_3;
                                                if (sp2D0 > 0) {
                                                    sp134 = (s32) ((sp168 < sp6C) ? sp168 : (s64) sp6C);
                                                } else {
                                                    sp134 = (s32) ((sp6C < sp168) ? sp168 : (s64) sp6C);
                                                }
                                                __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp130, &sp120, var_a3_2, sp2B8, sp2C0, 1, (s64) sp6C);
                                                var_s1_6 += 0x20;
                                                var_s2_3 += 0x20;
                                                var_s4_4 += 1;
                                                var_s0_4 += 0x20;
                                                var_s3_4 += 0x20;
                                                var_ra = var_s3_4;
                                                if (sp2C8 != var_s4_4) {
                                                    goto loop_202;
                                                }
                                            }
                                            sp160 += sp2D8;
                                            temp_at_6 = sp2B0 + 1;
                                            sp2B0 = temp_at_6;
                                            var_s8_3 += sp2D0;
                                            sp2E0 += sp2D8;
                                            sp168 += sp2D0;
                                            if (temp_at_6 < sp2A8) {
                                                goto loop_195;
                                            }
                                            var_s2 = sp2C0;
                                            var_s4 = (void *) sp320;
                                            var_s0 = (void *) sp318;
                                            var_s6 = (void *) sp310;
                                            var_s7 = (void *) sp308;
                                        }
                                        break;
                                    case 1:
                                        var_s8_4 = sp6C;
                                        sp2E0 = (s64) sp5C;
                                        if (sp2A8 > 0) {
                                            sp2B0 = 0;
                                            sp308 = (s64) var_s7;
                                            sp310 = (s64) var_s6;
                                            sp318 = (s64) var_s0;
                                            var_s6_4 = sp6C - sp2D0;
                                            var_s7_4 = sp5C - sp2D8;
                                            sp320 = (s64) var_s4;
loop_210:
                                            var_s4_5 = 0;
                                            var_s0_5 = sp70;
                                            var_a1_3 = sp70 - 0x20;
                                            var_s1_7 = sp60;
                                            if (sp2C8 > 0) {
                                                var_a0_4 = sp60 - 0x20;
loop_215:
                                                sp12C = var_s7_4;
                                                sp128 = var_s1_7;
                                                sp124 = (s32) sp2E0;
                                                temp_a3_12 = (sp58 >= var_a0_4) ? sp58 : var_a0_4;
                                                sp120 = temp_a3_12;
                                                if (sp2D8 > 0) {
                                                    sp12C = (sp64 < var_s7_4) ? var_s7_4 : sp64;
                                                } else {
                                                    sp12C = (var_s7_4 < sp64) ? var_s7_4 : sp64;
                                                }
                                                sp134 = var_s8_4;
                                                sp13C = var_s6_4;
                                                sp138 = var_s0_5;
                                                sp130 = (sp68 >= var_a1_3) ? sp68 : var_a1_3;
                                                if (sp2D0 <= 0) {
                                                    sp328 = (s64) var_a1_3;
                                                    sp330 = (s64) var_a0_4;
                                                    sp13C = (var_s6_4 < sp74) ? var_s6_4 : sp74;
                                                } else {
                                                    sp328 = (s64) var_a1_3;
                                                    sp330 = (s64) var_a0_4;
                                                    sp13C = (sp74 < var_s6_4) ? var_s6_4 : sp74;
                                                }
                                                __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp130, &sp120, (s64) temp_a3_12, (s64) var_s3_2, var_s2, 1, sp2E0);
                                                var_s1_7 -= 0x20;
                                                var_s4_5 += 1;
                                                var_s0_5 -= 0x20;
                                                var_a0_4 = sp330 - 0x20;
                                                var_a1_3 = sp328 - 0x20;
                                                if (sp2C8 != var_s4_5) {
                                                    goto loop_215;
                                                }
                                            }
                                            temp_t9 = sp2B0 + 1;
                                            sp2B0 = temp_t9;
                                            var_s7_4 -= sp2D8;
                                            var_s6_4 -= sp2D0;
                                            var_s8_4 -= sp2D0;
                                            sp2E0 -= sp2D8;
                                            if (temp_t9 < sp2A8) {
                                                goto loop_210;
                                            }
                                            var_s4 = (void *) sp320;
                                            var_s0 = (void *) sp318;
                                            var_s6 = (void *) sp310;
                                            var_s7 = (void *) sp308;
                                        }
                                        break;
                                    }
                                }
                                var_s7->unk-5E08 = (u32) var_s7->unk-690C;
                                HQ2_READ_FIFO = (bitwise f32) ((var_s7->unk-5E08 & 0x3FF) | (((u32) var_s7->unk-5E08 >> 0xA) << 0x17) | 0x29008000);
                                var_s7->unk-690C = 0U;
                            } else {
                                __glOdysseyProgramGenericConvolutionFilter(&sp18, &sp68, &sp58);
                            }
                            temp_a2_3 = var_s6->unk14;
                            if (__glOdysseyClosePMObjReference(var_s4, var_s6->unk10, temp_a2_3, temp_a2_3) & 0xFF) {
                                if (__glOdysseyClosePMObjWriteReference(var_s4, var_s0->unk10, var_s0->unk14) & 0xFF) {
                                    if (var_s2 != 0) {
                                        var_s7->unk-6954 = spB8;
                                        var_s7->unk-6944 = (f32) spB8.unk10;
                                        var_s7->unk-6948 = (f32) spB8.unkC;
                                        var_s7->unk-694C = (f32) spB8.unk8;
                                        var_s7->unk-6950 = (f32) spB8.unk4;
                                        if (var_s7->unk-67D0 != 0) {
                                            var_s7->unk-67D0 = 0;
                                            HQ2_READ_FIFO = 9.3364e-41f;
                                            HQ2_READ_FIFO = 3.5e-43f;
                                            HQ2_READ_FIFO = 9.1934e-41f;
                                            HQ2_READ_FIFO = 9.1934e-41f;
                                        }
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.9126e-41f;
                                        HQ2_READ_FIFO = (bitwise f32) var_s7->unk-6954;
                                        HQ2_READ_FIFO = var_s7->unk-6950;
                                        HQ2_READ_FIFO = var_s7->unk-694C;
                                        HQ2_READ_FIFO = var_s7->unk-6948;
                                        HQ2_READ_FIFO = var_s7->unk-6944;
                                        var_s7->unk-67D0 = 0;
                                        HQ2_READ_FIFO = 9.3364e-41f;
                                        HQ2_READ_FIFO = 3.5e-43f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        var_s7->unk-68FC = spF8;
                                        var_s7->unk-68F8 = spFC;
                                        var_s7->unk-6964 = spE8;
                                        var_s7->unk-6960 = spEC;
                                        var_s7->unk-695C = spF0;
                                        var_s7->unk-6958 = spF4;
                                        var_s4->unk7C20 = sp110;
                                        var_s4->unk7C24 = sp114;
                                        var_s4->unk7BFC = spE0;
                                        var_s7->unk6960 = (s32) (var_s7->unk6960 | 0x200012);
                                        *(void *)0x1018 = 2;
                                        if ((var_s0->unk8 == 0) || (unksp230 != 1)) {
                                            if (var_s0->unkA != 0) {
                                                var_s4->unk7C5C = spDC;
                                                var_s7->unk6960 = (s32) (var_s7->unk6960 | 0x80);
                                                goto block_98;
                                            }
                                        } else {
                                            var_s4->unk7C34 = spD8;
                                            var_s4->unk7C38 = spD4;
                                            var_s4->unk7C3C = spD0;
                                            var_s4->unk7C5C = spDC;
                                            var_s7->unk6960 = (s32) (var_s7->unk6960 | 0x81);
block_98:
                                            *(void *)0x1018 = 2;
                                        }
                                    }
                                    if (unksp240 != 0) {
                                        if (var_s7->unk-67D0 != 0) {
                                            var_s7->unk-67D0 = 0;
                                            HQ2_READ_FIFO = 9.3364e-41f;
                                            HQ2_READ_FIFO = 3.5e-43f;
                                            HQ2_READ_FIFO = 9.1934e-41f;
                                            HQ2_READ_FIFO = 9.1934e-41f;
                                        }
                                        HQ2_READ_FIFO = -2.5342993e-29f;
                                        HQ2_READ_FIFO = 9.3364e-41f;
                                        HQ2_READ_FIFO = 2.1e-43f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        var_s7->unk-67D0 = 0;
                                        HQ2_READ_FIFO = 9.3364e-41f;
                                        HQ2_READ_FIFO = 3.5e-43f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                    }
                                } else {
                                    __glOdysseyClosePMObjReference((void *)0x505);
                                }
                            } else {
                                __glSetError(0x505);
                            }
                        }
                    } else {
                        __glSetError(0x505);
                    }
                } else {
                    __glSetError(0x505);
                }
            }
        }
    } else {
        sub_0d9b0000(0x502);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x70, 0x74, 0x78, 0x7c, 0xd0, 0xd4, 0xd8, 0xdc, 0xe0, 0xe4, 0xe8, 0xec, 0xf0, 0xf4, 0xf8, 0xfc, 0x100, 0x104, 0x108, 0x10c], gap at: 0x88. */
void SendPixelsAsUserPIO(s64 arg0, s64 arg1, void *arg2) {
    s64 sp110;
    s64 sp68;
    u64 sp60;
    u8 sp20;
    f32 temp_a3_2;
    f32 temp_a6;
    f32 temp_a7;
    f32 temp_t0_3;
    f32 temp_t9;
    s32 temp_hi;
    s32 temp_ra;
    s32 temp_s3;
    s32 temp_s6;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 var_a2_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a5_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3_2;
    s32 var_t9;
    s64 temp_at;
    s64 temp_s8;
    s64 var_a0;
    u32 temp_a3;
    u32 temp_a4;
    u32 temp_a5;
    u32 temp_lo;
    u32 temp_ra_2;
    u32 temp_s2;
    u32 temp_s5;
    u32 temp_s6_2;
    u32 temp_v0;
    u32 var_a1;
    u32 var_a2;
    u32 var_a2_2;
    u32 var_a3;
    u32 var_a5;
    u32 var_a5_2;
    u32 var_t0;
    u32 var_t3;
    u64 var_a6;
    u64 var_t8;
    u8 *var_a4_2;
    u8 *var_a4_3;
    u8 temp_t1;
    u8 temp_t3;
    void *var_a4;

    var_a0 = arg0;
    unkspC8 = arg1;
    unkspA0 = (s64) arg2->unk14;
    temp_a5 = arg2->unk1C;
    var_a4 = *(void **)0x1010;
    unkspA8 = var_a4 + 0x10000;
    temp_at = var_a4->unk9704 & 0x3FF;
    unkspB8 = temp_at;
    var_t8 = arg2->unk18 & 0xFFFFF;
    temp_s5 = *(sp + (((temp_a5 >> 0x10) & 7) * 4));
    if (temp_at != 0x12) {
        if ((unkspB8 == 0x10) || (unkspB8 == 0x11) || (unkspB8 == 0x14)) {

        }
        unkspB0 = 0;
    } else {
        unkspB0 = 1;
    }
    temp_hi = MULTU_HI(temp_s5, saved_reg_gp->unk-3658);
    if ((temp_s5 - (((u32) (temp_hi + ((u32) (temp_s5 - temp_hi) >> 1)) >> 1) * 3)) != 0) {
        M2C_TRAP_IF(temp_s5 == 0);
        var_a2 = 0x40U / temp_s5;
    } else {
        var_a2 = 0x30U / temp_s5;
        M2C_TRAP_IF(temp_s5 == 0);
    }
    temp_s6 = 0x10 >> unkspB0;
    temp_s6_2 = (var_a2 < (u32) temp_s6) ? var_a2 : (u32) temp_s6;
    temp_a3 = temp_s6_2 << unkspB0;
    var_a1 = (((((((((temp_a5 & 0x1F) | ((((temp_a5 >> 5) & 0xF) << 5) & 0x1E0)) & ~0x200) | ((((temp_a5 >> 9) & 1) << 9) & 0x200)) & ~0x400) | ((((temp_a5 >> 0xA) & 1) << 0xA) & 0x400)) & ~0x800) | ((((temp_a5 >> 0xB) & 1) << 0xB) & 0x800) | 0x1000) & ~0x0F000000) | (((temp_a3 - (temp_a3 >> 4)) << 0x18) & 0x0F000000);
    unkspA8->unk-6940 = var_a1;
    HQ2_READ_FIFO = 2.491e-41f;
    var_a3 = unkspA8->unk-6940;
    HQ2_READ_FIFO = (bitwise f32) var_a3;
    HQ2_READ_FIFO = 1.58e-43f;
    if (unkspC8 > 0) {
        var_a2_2 = var_t8 / temp_s5;
        temp_lo = temp_s6_2 * temp_s5;
        unksp88 = 0;
        unksp80 = temp_s5 & 1;
        M2C_TRAP_IF(temp_s5 == 0);
        unksp90 = temp_s5 & 3;
        temp_s2 = temp_lo >> 2;
        sp68 = (s64) var_a4;
        unksp98 = var_t8 + unkspA0;
        temp_s3 = temp_s2 - 1;
        unkspC0 = (s64) var_a2_2;
loop_18:
        var_a7 = var_a0 & 3;
        temp_s8 = var_a0;
        if (var_a7 != 0) {
            if (unksp90 != 0) {
                if (unksp80 != 0) {
                    goto block_21;
                }
                if (var_a7 & 1) {
                    goto block_49;
                }
block_21:
                if (var_a7 != 0) {
                    var_a4_2 = &sp20;
                    var_a6 = unkspC0;
                    var_a2_3 = (4 - (var_t8 + temp_s8)) & 3;
                    do {
loop_23:
                        var_a6 -= 1;
                        var_a5 = temp_s5;
                        if (temp_s5 != 0) {
                            if (temp_s5 & 1) {
                                var_a4_2 += 1;
                                temp_t1 = *var_a0;
                                var_a5 = temp_s5 - 1;
                                var_a0 += 1;
                                var_a4_2->unk-1 = temp_t1;
                            }
                            if (((s32) temp_s5 >> 1) != 0) {
                                do {
                                    var_a5 -= 2;
                                    *var_a4_2 = var_a0->unk0;
                                    var_a4_2 += 2;
                                    temp_t3 = var_a0->unk1;
                                    var_a0 += 2;
                                    var_a4_2->unk-1 = temp_t3;
                                } while (var_a5 != 0);
                            }
                        }
                        if ((var_a6 != 0) && (var_a0 & 3)) {
                            goto loop_23;
                        }
                        var_a5_2 = var_a6 / temp_s6_2;
                        var_t1 = temp_s6_2 * var_a5_2;
                        var_t2 = var_a6 - var_t1;
                        var_t3 = (u32) ((var_t2 * temp_s5) + 3) >> 2;
                        M2C_TRAP_IF(temp_s6_2 == 0);
                        var_a7 = (var_a7 - var_a0) & 3;
                    } while (var_t3 == 0xF);
                    temp_ra = unkspC0 - var_a6;
                    var_a4_3 = &sp20;
                    var_t9 = temp_ra;
                    var_t0 = (u32) ((temp_ra * temp_s5) + 3) >> 2;
                    if (temp_ra != 0) {
                        goto block_33;
                    }
                } else {
                    goto block_51;
                }
            } else {
block_49:
                sp60 = var_t8;
                sp110 = (s64) var_a1;
                if (unksp88 == 0) {
                    unksp88 = sp68->unk0(sp68, sp60, var_a2_2, var_a3, var_a4, unksp90, unksp80, var_a7);
                }
                bcopy(temp_s8, unksp88, sp60);
                var_a1 = (u32) sp110;
                var_t8 = sp60;
                var_a0 = unksp88;
                var_a7 = 0;
                goto block_51;
            }
        } else {
block_51:
            var_a5_2 = unkspC0 / temp_s6_2;
            var_t1 = temp_s6_2 * var_a5_2;
            var_t2 = unkspC0 - var_t1;
            temp_v0 = (u32) ((var_t2 * temp_s5) + 3) >> 2;
            M2C_TRAP_IF(temp_s6_2 == 0);
            var_a2_3 = (4 - (var_t8 + var_a0)) & 3;
            var_t3 = temp_v0;
            if (temp_v0 == 0xF) {
                var_t0 = 8;
                var_t2 = 7;
                var_t9 = 8;
                var_t3 = 7;
                var_a4_3 = (u8 *) var_a0;
                var_a0 += 0x20;
block_33:
                temp_ra_2 = var_t9 << unkspB0;
                var_a1 = (0xFF0FFFFF & ((0xFFF9FFFF & ((0x10000 & ((var_t0 != 0) << 0x10)) | (0xFFFEFFFF & var_a1))) | (0x60000 & (var_a7 << 0x11)))) | (0xF00000 & ((temp_ra_2 - (temp_ra_2 >> 4)) << 0x14));
                unkspA8->unk-6940 = var_a1;
                unkspA8->unk-6904 = (s32) unkspA8->unk-6900;
                HQ2_READ_FIFO = 2.491e-41f;
                HQ2_READ_FIFO = (bitwise f32) unkspA8->unk-6940;
                HQ2_READ_FIFO = 1.58e-43f;
                var_t0_2 = var_t0 - 1;
                unkspA8->unk-6900 = (s32) (unkspA8->unk-6900 + (-((var_a1 >> 0x10) & 1) & ((var_a1 >> 0x11) & 3)));
                HQ2_READ_FIFO = (bitwise f32) (0x14000 | (unkspB8 | ((var_t0 - (var_t0 >> 4)) << 0xA)));
                if (var_t0_2 != -1) {
loop_34:
                    temp_t0 = var_t0_2 - 1;
                    HQ2_READ_FIFO = var_a4_3->unk0;
                    temp_t0_2 = temp_t0 - 1;
                    if (temp_t0 != -1) {
                        HQ2_READ_FIFO = var_a4_3->unk4;
                        var_t0_2 = temp_t0_2 - 1;
                        if (temp_t0_2 != -1) {
                            temp_a3_2 = var_a4_3->unk8;
                            var_a4_3 += 0xC;
                            HQ2_READ_FIFO = temp_a3_2;
                            if (var_t0_2 != -1) {
                                goto loop_34;
                            }
                        }
                    }
                }
            }
        }
        var_a5_3 = var_a5_2 - 1;
        if (var_t1 != 0) {
            if (var_a5_3 == -1) {

            } else {
loop_45:
                HQ2_READ_FIFO = (bitwise f32) (0x14000 | (unkspB8 | ((temp_s2 - (temp_lo >> 6)) << 0xA)));
                var_a4_4 = temp_s3;
                if (temp_s2 != 0) {
                    if (temp_s2 & 1) {
                        var_a4_4 = temp_s3 - 1;
                        temp_t9 = *var_a0;
                        var_a0 += 4;
                        HQ2_READ_FIFO = temp_t9;
                    }
                    if (((s32) temp_s2 >> 1) != 0) {
                        do {
                            var_a4_4 -= 2;
                            HQ2_READ_FIFO = var_a0->unk0;
                            temp_a7 = var_a0->unk4;
                            var_a0 += 8;
                            HQ2_READ_FIFO = temp_a7;
                        } while (var_a4_4 != -1);
                    }
                }
                var_a5_3 -= 1;
                if (var_a5_3 != -1) {
                    goto loop_45;
                }
            }
        }
        if (var_t2 != 0) {
            temp_a4 = var_t2 << unkspB0;
            unkspA8->unk-6904 = (s32) unkspA8->unk-6900;
            var_a1 = (0xFF0FFFFF & ((0xFFF9FFFF & (0x10000 | var_a1)) | (0x60000 & (var_a2_3 << 0x11)))) | (0xF00000 & ((temp_a4 - (temp_a4 >> 4)) << 0x14));
            unkspA8->unk-6940 = var_a1;
            var_a5_3 = unkspB8 | ((var_t3 - (var_t3 >> 4)) << 0xA);
            HQ2_READ_FIFO = 2.491e-41f;
            var_t3_2 = var_t3 - 1;
            HQ2_READ_FIFO = (bitwise f32) unkspA8->unk-6940;
            HQ2_READ_FIFO = 1.58e-43f;
            unkspA8->unk-6900 = (s32) (unkspA8->unk-6900 + (-((var_a1 >> 0x10) & 1) & ((var_a1 >> 0x11) & 3)));
            HQ2_READ_FIFO = (bitwise f32) (0x14000 | var_a5_3);
            if (var_t3_2 != -1) {
                var_a5_3 = var_t3 & 1;
                var_a7_2 = (s32) var_t3 >> 1;
                if (var_a5_3 != 0) {
                    temp_a6 = *var_a0;
                    var_t3_2 -= 1;
                    var_a0 += 4;
                    HQ2_READ_FIFO = temp_a6;
                    var_a7_2 = (s32) var_t3 >> 1;
                }
                var_a4_5 = var_t3_2;
                if (var_a7_2 != 0) {
                    do {
                        var_a4_5 -= 2;
                        HQ2_READ_FIFO = var_a0->unk0;
                        temp_t0_3 = var_a0->unk4;
                        var_a0 += 8;
                        HQ2_READ_FIFO = temp_t0_3;
                    } while (var_a4_5 != -1);
                }
            }
        }
        var_a4 = (void *) unksp98;
        var_a3 = unkspC8 - var_a4;
        var_a2_2 = var_t8 + temp_s8;
        unkspC8 = (s64) var_a3;
        var_a0 = unkspA0 + var_a2_2;
        if ((s32) var_a3 > 0) {
            goto loop_18;
        }
        if (unksp88 != 0) {
            sp68->unkC(sp68, unksp88, var_a2_2, var_a3, var_a4, var_a5_3);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x208, 0x20c, 0x240, 0x244, 0x248, 0x24c, 0x250, 0x254, 0x258, 0x25c, 0x260, 0x264, 0x268, 0x26c, 0x270, 0x274, 0x2a0, 0x2a4, 0x2b8, 0x2bc, 0x2c0, 0x2c4, 0x2c8, 0x2cc], gap at: 0x218. */
void __glOdysseyImageMovePixelsDMAtoGfx(void *arg0, void *arg1, void *arg2, s32 arg3, s64 arg4, s64 arg6, s64 *arg7) {
    f64 sp2F0;
    s64 sp2E0;
    s64 sp2D8;
    s64 sp2D0;
    s64 sp200;
    s64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    s64 sp1C8;
    s64 sp1C0;
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    s64 sp1A0;
    s64 sp198;
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    f64 sp140;
    f64 sp138;
    f64 sp130;
    f64 sp128;
    f64 sp120;
    f64 sp118;
    f64 sp110;
    f64 sp108;
    f64 sp100;
    f64 spF8;
    f64 spF0;
    s32 spE8;
    void *spE4;
    s64 spD0;
    s64 spB0;
    u32 spAC;
    u32 spA8;
    s32 spA4;
    s32 spA0;
    s32 sp9C;
    s32 sp98;
    s32 sp90;
    s32 sp8C;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    s32 sp7C;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    s32 sp50;
    s32 sp48;
    s64 sp30;
    s32 sp2C;
    s32 sp28;
    void *sp24;
    s32 sp20;
    u32 sp1C;
    s32 sp18;
    s64 sp10;                                       /* compiler-managed */
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_a7_3;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f21;
    f32 var_f20;
    f64 var_f5;
    s32 temp_a1_3;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a3_5;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_5;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_ra;
    s32 temp_t3_2;
    s32 temp_t3_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a1_2;
    s32 var_a4;
    s32 var_a6_2;
    s32 var_a7_3;
    s32 var_s0;
    s32 var_s2;
    s32 var_s5_3;
    s32 var_t0;
    s32 var_v0;
    s32 var_v0_2;
    s64 *temp_s5;
    s64 *temp_t8;
    s64 *var_a7;
    s64 *var_s1;
    s64 *var_s5_2;
    s64 temp_a0_6;
    s64 temp_a0_7;
    s64 temp_a1;
    s64 temp_a1_5;
    s64 temp_a2;
    s64 temp_a3_2;
    s64 temp_a3_6;
    s64 temp_a4_4;
    s64 temp_at_3;
    s64 temp_at_4;
    s64 temp_f13;
    s64 temp_s0;
    s64 temp_s0_2;
    s64 temp_s5_2;
    s64 temp_t3;
    s64 temp_v0_5;
    s64 temp_v1_5;
    s64 var_a6;
    s64 var_a7_2;
    s64 var_s3_2;
    s64 var_s4;
    s64 var_s5;
    s64 var_t0_2;
    u32 temp_a0;
    u32 temp_a0_3;
    u32 temp_a0_5;
    u32 temp_a1_4;
    u32 temp_a3_4;
    u32 temp_a5_4;
    u32 temp_a7;
    u32 temp_lo;
    u32 temp_t0;
    u32 temp_t2;
    u32 temp_v1_4;
    u32 var_a1;
    u32 var_s6;
    u8 temp_a0_2;
    u8 temp_a4;
    u8 temp_a5_3;
    void *temp_a0_4;
    void *temp_a1_2;
    void *temp_a7_4;
    void *temp_s1;
    void *var_s1_2;
    void *var_s3;
    void *var_s4_2;
    void *var_s8;

    var_a6 = arg6;
    var_a7 = arg7;
    unksp210 = arg4;
    sp8 = 0;
    sp4 = 0;
    sp0 = 0;
    var_s8 = *(void **)0x1010;
    var_s4 = arg3 & 0xFF;
    var_s3 = arg0;
    if ((var_s8->unk21EDC == 0) || (var_s5 = 1, ((var_s8->unk718 & 2) == 0))) {
        var_a6 = (s64) var_s8->unk21ED8;
        if (var_a6 != 0) {
            var_a7 = (s64 *) (var_s8->unk718 & 1);
            var_s5 = 1;
            if (var_a7 == NULL) {
                var_s5 = 0;
            }
        } else {
            var_s5 = 0;
        }
    }
    sp10 = 0;
    sp10.unk8 = 0;
    sp10.unk10 = 0;
    sp10.unk18 = 0;
    sp30 = 0;
    sp30.unk8 = 0;
    sp30.unk10 = 0;
    ceilf(var_a6, var_a7, (bitwise u32) (f32) ((f64) arg2->unk10 + -0.5), second half of f64);
    var_s1 = second half of f64;
    ceilf((bitwise s64) (f32) ((f64) arg2->unk14 + -0.5), second half of f64);
    sp1C8 = var_s5;
    ceilf((bitwise s64) (f32) ((f64) arg2->unk18 + -0.5), second half of f64);
    sp1C0 = (s64) (second half of f64);
    var_s5_2 = second half of f64;
    temp_f0 = ceilf((bitwise s64) (f32) ((f64) arg2->unk1C + -0.5), second half of f64);
    sp200 = (s64) var_s3->unkC;
    sp1F0 = (s64) (s32) arg2->unkC;
    unksp220 = (s64) (s32) arg2->unk8;
    sp1E8 = (s64) (s32) arg2->unk4;
    unksp228 = (s64) (s32) arg2->unk0;
    __glOdysseyImageCalcXferWriteParams(arg1->unk8, arg1->unkC, var_s3->unk34, &sp30);
    if ((u8) sp30 != 0) {
        temp_a3 = var_s3->unk34;
        sp1B8 = (s64) (s32) temp_f0;
        if (temp_a3 == sp3C) {
            if (var_s3->unkA != 0) {
                if (var_s8->unk11CC0 != var_s8->unk11D94) {
                    goto block_6;
                }
            }
        } else {
block_6:
            var_s4 = 1;
        }
        temp_s0 = __glSpecElementsPerGroup(arg1->unk8, arg1->unkC, (u8) sp30, temp_a3, sp3C);
        sp1F8 = var_s8 + 0x20000;
        temp_lo = temp_s0 * __glSpecBytesPerElement(arg1->unkC);
        var_a1 = arg1->unk18;
        temp_a0 = ((arg1->unk28 ^ 1) == 0) ? (temp_lo >> 1) : temp_lo;
        if (var_a1 < temp_a0) {
            var_a1 = temp_a0;
            arg1->unk18 = temp_a0;
        }
        temp_f20 = (f32) ((u64) ((s64) var_a1 << 0x20) >> 0x20);
        temp_f13 = (s64) (ceilf((s64) temp_a0, (s64 *) var_a1, (bitwise u32) ((f32) ((u64) ((arg1->unk10 * temp_a0) << 0x20) >> 0x20) / temp_f20)) * temp_f20);
        unksp280 = temp_f13 << 0;
        if (arg1->unk0 == 0) {
            temp_a7 = var_s8->unk4B4;
            temp_a6 = (unksp280 % temp_a7) & 0xFF;
            M2C_TRAP_IF(temp_a7 == 0);
            unksp280 = (temp_a6 != 0) ? (unksp280 + (temp_a7 - temp_a6)) : unksp280;
        }
        var_a7_2 = sp1C0;
        var_a6_2 = var_a7_2 < sp1B8;
        temp_a1 = (var_a6_2 != 0) ? var_a7_2 : sp1B8;
        temp_a2 = (sp1B8 < var_a7_2) ? var_a7_2 : sp1B8;
        temp_s0_2 = temp_a2 - temp_a1;
        if (((u32) (temp_a0 * (temp_s0_2 * ((((s32) (second half of f64) < (s32) (second half of f64)) ? (second half of f64) : (second half of f64)) - (((s32) (second half of f64) < (s32) (second half of f64)) ? (second half of f64) : (second half of f64))))) < (u32) sp1F8->unk-6228) || (unksp280 < (u32) (temp_a0 * (((unksp220 < unksp228) ? unksp228 : unksp220) - ((unksp228 < unksp220) ? unksp228 : unksp220))))) {
            temp_a0_2 = var_s3->unk8;
            sp1D0 = 1;
            if (temp_a0_2 != 0) {
                temp_v0 = var_s8->unkA6D8;
                if (temp_v0 & 0x1000) {
                    unksp238 = 1;
                    unksp218 = 1;
                    temp_v1 = 0x2000 - temp_v0;
                    sp48 = temp_v1;
                    var_s5_2 = (second half of f64) - temp_v1;
                    var_s1 = (second half of f64) - temp_v1;
                } else {
                    unksp218 = 0;
                    unksp238 = 0;
                }
            } else {
                unksp218 = 0;
                unksp238 = 0;
            }
            var_s4 = 1;
            if (temp_a0_2 != 0) {
                var_s4 = 1;
                goto block_17;
            }
            goto block_122;
        }
        sp1D0 = 0;
        if (var_s3->unk8 != 0) {
            unksp218 = 0;
            unksp238 = 0;
block_17:
            var_a7_2 = sp1F8;
            if (var_s4 != 0) {
                goto block_18;
            }
            var_a7_2 = (s64) var_a7_2->unk-6231;
            if (var_a7_2 != 0) {
                if ((f64) var_s8->unk2E8 != -1.0) {
                    unksp278 = M2C_ERROR(/* unknown instruction: movf $t0, $t1, $fcc2 */);
                } else {
                    goto block_18;
                }
            } else {
block_18:
                unksp278 = 0;
            }
            temp_v0_2 = var_s8->unkA6D8;
            if (temp_v0_2 & 0x1000) {
                unksp218 = 1;
                sp48 = 0x2000 - temp_v0_2;
            }
            var_s4 = 1;
            if (var_s3->unk8 != 0) {
                temp_v0_3 = var_s8->unk760;
                if ((temp_v0_3 != 0x405) && (var_a6_2 = 0x403, (temp_v0_3 != 0x402)) && (var_a7_2 = 1, (temp_v0_3 != 0x403))) {
                    sp1E0 = 1;
                } else {
                    sp1E0 = 0;
                }
                if ((temp_v0_3 == 0x407) || (temp_v0_3 == 0x401) || (var_v0 = 1, (temp_v0_3 == 0x403))) {
                    var_v0 = 0;
                }
            } else {
                var_s4 = 1;
                goto block_110;
            }
        } else {
            unksp218 = 0;
            unksp238 = 0;
block_122:
            unksp278 = 0;
block_110:
            var_v0 = 1;
            sp1E0 = 1;
        }
        temp_a0_3 = arg1->unk8;
        if ((temp_a0_3 != 0x1902) && (temp_a0_3 != 0x1901)) {
            sp198 = temp_a2;
            var_t0 = 0;
        } else {
            sp198 = temp_a2;
            var_t0 = 1;
        }
        sp1D8 = temp_a1;
        sp190 = temp_s0_2;
        if (__glOdysseyImageCalcXferWriteParams(var_s3->unk2C, var_s3->unk30, var_v0 & 0xFF, (s64 *) (var_t0 & 0xFF), sp, &sp4, var_a6_2, (u8) var_a7_2, second half of f64, temp_f13) != 0) {
            var_s0 = ((var_s3->unk4 ^ arg1->unk4) == 0) ? 0 : 0x40;
            if ((var_s4 == 0) || (var_s0 |= 8, (unksp278 != 0))) {
                var_a4 = 0;
            } else {
                var_a4 = 1;
            }
            temp_t3 = (unksp220 < unksp228) ? unksp228 : unksp220;
            temp_a6_2 = unksp228 < unksp220;
            temp_a3_2 = (temp_a6_2 != 0) ? unksp228 : unksp220;
            temp_lo_2 = temp_a3_2 * temp_a0;
            temp_v1_2 = arg1->unk2C;
            sp1A8 = temp_t3;
            sp1A0 = temp_v1_2 + (unksp280 * ((sp1F0 < sp1E8) ? sp1E8 : sp1F0)) + (temp_t3 * temp_a0);
            sp1B0 = temp_a3_2;
            unksp230 = temp_v1_2 + (unksp280 * ((sp1E8 >= sp1F0) ? sp1F0 : sp1E8)) + temp_lo_2;
            sp188 = (s64) var_s5_2;
            if (__glOdysseyOpenPMObjWriteReference(var_s8, var_s3->unk10, var_s3->unk14, &sp8, var_a4, temp_lo_2, temp_a6_2, unksp228) & 0xFF) {
                temp_a5 = var_s3->unk18 + sp8;
                sp8 = temp_a5;
                temp_a4 = var_s3->unk8;
                temp_t8 = ((s32) var_s1 < sp188) ? var_s1 : (s64 *) sp188;
                sp10 = (0xE0000000 & (((s32) sp10 & ~0x20000000) | ((((temp_a4 == 0) ? 0 : 1) & 1) << 0x1D))) | (0x1FFFFFFF & ((temp_a4 == 0) ? temp_a5 : 0x10000010));
                temp_lo_3 = temp_a0 * (sp1A8 - sp1B0);
                unksp14 = ((s32) temp_t8 & 0xFFFF) | (0xFFFF0000 & ((unksp14 & 0xFFFF) | (sp1D8 << 0x10)));
                temp_t3_2 = var_s3->unk1C;
                temp_s5 = (sp188 < (s32) var_s1) ? var_s1 : (s64 *) sp188;
                sp180 = (s64) temp_s5;
                temp_s5_2 = temp_s5 - temp_t8;
                sp1C = (temp_s5_2 & 0xFFFF) | (0xFFFF0000 & ((sp1C & 0xFFFF) | (sp190 << 0x10)));
                temp_a7_2 = ~0x70000000;
                sp18 = (-0x1000 & sp18) | ((((temp_t3_2 ^ 0x1000) == 0) ? 1 : temp_t3_2) & 0xFFF);
                temp_a6_3 = sp1E0 << 0x1F;
                temp_v1_3 = (((((sp20 & ~0xF00000) | ((sp0 & 0xF) << 0x14)) & ~0x0F000000) | ((sp4 & 0xF) << 0x18)) & temp_a7_2 & 0x7FFFFFFF) | temp_a6_3;
                sp20 = temp_v1_3;
                temp_a4_2 = ~0xE000;
                sp178 = (s64) temp_t8;
                temp_a5_2 = 0xFFFFF & temp_lo_3;
                temp_a3_3 = (0xFFF00000 & sp28) | temp_a5_2;
                sp28 = temp_a3_3;
                temp_a1_2 = unksp280 - temp_lo_3;
                sp24 = temp_a1_2;
                sp20 = (-8 & (((((temp_v1_3 & ~0xF0000) | ((var_s3->unk28 & 0xF) << 0x10)) & temp_a4_2) | ((sp38 & 7) << 0xD)) & ~0xF8)) | 0x1000;
                temp_a1_3 = ((sp2C & ~0x70000) | ((__glOdysseyImageCalcPixelModeFields((void *) temp_a0, temp_a1_2, temp_lo_3, temp_a3_3, temp_a4_2, (bitwise f32) temp_a5_2, (bitwise f32) temp_a6_3, (bitwise f32) temp_a7_2) & 7) << 0x10)) & ~0x1000 & ~0x800;
                sp2C = temp_a1_3;
                var_v0_2 = 0;
                if (var_s8->unk4A4 != 0) {
                    var_v0_2 = 0;
                    if (arg1->unk0 == 0) {
                        var_v0_2 = 1;
                    }
                }
                sp148 = (s64) var_s1;
                sp2C = (((unksp31 & 0x1F) | (((((((temp_a1_3 & ~0x400) | ((var_v0_2 & 1) << 0xA)) & ~0x200) | ((unksp33 & 1) << 9)) & ~0x1E0) | ((unksp32 & 0xF) << 5)) & ~0x1F)) & 0xFFFFFF) | (var_s0 << 0x18);
                if (var_s4 != 0) {
                    sp8C = var_s8->unk7C3C;
                    sp88 = var_s8->unk7C38;
                    sp84 = var_s8->unk7C34;
                    sp80 = var_s8->unk7BFC;
                    sp7C = var_s8->unk96A8;
                    sp78 = var_s8->unk96A4;
                    sp74 = var_s8->unk96A0;
                    sp70 = var_s8->unk969C;
                    sp6C = var_s8->unk9708;
                    sp68 = var_s8->unk9704;
                    sp90 = var_s8->unk7C5C;
                    temp_t3_3 = var_s8->unk96AC;
                    sp50.unk10 = (f32) var_s8->unk96BC;
                    sp50.unkC = (f32) var_s8->unk96B8;
                    sp50.unk8 = (f32) var_s8->unk96B4;
                    sp50.unk4 = (f32) var_s8->unk96B0;
                    sp50 = temp_t3_3;
                    var_s8->unk96AC = (s32) ((sp45 & 7) | (-8 & temp_t3_3));
                    if (var_s8->unk9830 != 0) {
                        var_s8->unk9830 = 0;
                        HQ2_READ_FIFO = 9.3364e-41f;
                        HQ2_READ_FIFO = 3.5e-43f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                    }
                    temp_a0_4 = var_s8 + 0x969C;
                    sp150 = (s64) temp_a0_4;
                    HQ2_READ_FIFO = 9.1934e-41f;
                    HQ2_READ_FIFO = 9.1934e-41f;
                    HQ2_READ_FIFO = 9.1934e-41f;
                    HQ2_READ_FIFO = 9.9126e-41f;
                    HQ2_READ_FIFO = (bitwise f32) var_s8->unk96AC;
                    HQ2_READ_FIFO = var_s8->unk96B0;
                    HQ2_READ_FIFO = var_s8->unk96B4;
                    HQ2_READ_FIFO = var_s8->unk96B8;
                    temp_a7_3 = var_s8->unk96BC;
                    HQ2_READ_FIFO = temp_a7_3;
                    var_s8->unk9830 = 0;
                    HQ2_READ_FIFO = 9.3364e-41f;
                    HQ2_READ_FIFO = 3.5e-43f;
                    HQ2_READ_FIFO = 9.1934e-41f;
                    HQ2_READ_FIFO = 9.1934e-41f;
                    temp_a2_2 = sp44 | 0x13C00;
                    var_s8->unk9704 = temp_a2_2;
                    HQ2_READ_FIFO = 1.682e-42f;
                    HQ2_READ_FIFO = (bitwise f32) var_s8->unk9704;
                    __glOdysseyImageCalcPixelModeFields(temp_a0_4, var_s3, temp_a2_2, 0x13C00, 0x10046, 3.5e-43f, 9.3364e-41f, temp_a7_3);
                    var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x200000);
                    var_s8->unk969C = (s32) ((0xE0000000 & var_s8->unk969C) | (0x1FFFFFFF & sp8));
                    *(s32 *)0x1018 = 2;
                    temp_a5_3 = var_s3->unk8;
                    temp_f21 = (f32) sp148;
                    sp108 = (bitwise f64) temp_f21;
                    sp120 = (f64) temp_f21;
                    temp_a7_4 = var_s8->unkF8;
                    sp140 = (f64) temp_a7_4->unkC;
                    sp130 = (f64) temp_a7_4->unk8;
                    temp_f20_2 = (f32) sp188;
                    sp138 = (f64) temp_a7_4->unk4;
                    sp128 = M2C_ERROR(/* unknown instruction: movz.s $f16, $f17, $a6 */);
                    sp100 = (bitwise f64) temp_f20_2;
                    sp118 = (bitwise f64) temp_f20_2;
                    var_f20 = temp_a7_4->unk0;
                    sp110 = M2C_ERROR(/* unknown instruction: movz.s $f14, $f15, $a6 */);
                    if ((temp_a5_3 == 0) || (unksp210 != 1)) {
                        temp_a0_5 = var_s8->unk7C20;
                        temp_a3_4 = var_s8->unk7C24;
                        var_s8->unk7C24 = (u32) ((sp198 & 0xFFF) | (0xFFF000 & (sp1D8 << 0xC) & ~0xFFF));
                        var_s8->unk7C20 = (u32) ((sp180 & 0xFFF) | ((sp178 << 0xC) & 0xFFF000 & ~0xFFF));
                        var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x10);
                        *(void *)0x1018 = 2;
                        spAC = temp_a3_4;
                        spA8 = temp_a0_5;
                        if (var_s3->unkA != 0) {
                            var_s8->unk7C5C = (s32) var_s8->unk11CC0;
                            var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x80);
                            *(void *)0x1018 = 2;
                        }
                        goto block_46;
                    }
                    temp_a1_4 = var_s8->unk165BC;
                    if ((temp_a1_4 != var_s8->unk7C20) || (var_s8->unk165C0 != var_s8->unk7C24)) {
                        var_s8->unk7C20 = temp_a1_4;
                        var_s8->unk7C24 = (u32) var_s8->unk165C0;
                        if (var_s8->unk9830 != 0) {
                            var_s8->unk9830 = 0;
                            HQ2_READ_FIFO = 9.3364e-41f;
                            HQ2_READ_FIFO = 3.5e-43f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                        }
                        // Error: negative shift count
                        // At instruction: bgez $a0, .L0d9bb82c
                        if (M2C_ERROR()) {
                            spA4 = 0;
                            spA0 = 0;
                            sp9C = 0;
                            sp98 = 0;
                            temp_a4_3 = ((u32) var_s8->unk7C20 >> 0xC) & 0xFFF;
                            sp98 = temp_a4_3;
                            temp_a3_5 = var_s8->unk7C20 & 0xFFF;
                            spA0 = temp_a3_5;
                            sp9C = ((u32) var_s8->unk7C24 >> 0xC) & 0xFFF;
                            spA4 = var_s8->unk7C24 & 0xFFF;
                            __glOdysseyIoctl(var_s8, 0x6F64000D, &sp98, temp_a3_5, temp_a4_3, (void *) temp_a5_3, arg1->unk4, temp_a7_4);
                        }
                        var_s8->unk16964 = (s32) (var_s8->unk16964 | 0x2000);
                        *(void *)0x1018 = 2;
                    }
                    spAC = var_s8->unk7C24;
                    spA8 = var_s8->unk7C20;
                    __glOdysseyImageCalcXferReadParams(sp150, var_s8 + 0x7BFC, var_s8 + 0x7C34, var_s8 + 0x7C38, var_s8 + 0x7C3C, var_s8 + 0x7C5C);
                    var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x200083);
                    *(void *)0x1018 = 2;
                    if (!(var_s8->unk7BFC & 0x10000)) {
block_46:
                        var_f5 = 0.0;
                        if (unksp218 != 0) {
                            goto block_47;
                        }
                    } else {
                        var_f5 = __glOdysseyImageCalcOdyEyeSpaceRasterPosZ();
                        if (unksp218 == 0) {

                        } else {
block_47:
                            temp_v1_4 = var_s8->unk7C20;
                            temp_at = ((temp_v1_4 >> 0xC) & 0xFFF) - sp48;
                            temp_ra = (temp_v1_4 & 0xFFF) - sp48;
                            var_s8->unk7C20 = (u32) ((((temp_ra < 0) ? 0 : temp_ra) & 0xFFF) | (-0x1000 & (((((temp_at < 0) ? 0 : temp_at) << 0xC) & 0xFFF000) | (temp_v1_4 & ~0xFFF000))));
                            var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x10);
                            *(void *)0x1018 = 2;
                        }
                    }
                    if (unksp278 != 0) {
                        if (var_s8->unk7BFC & 0x13C010) {
                            goto block_51;
                        }
                        if (!(~var_s8->unk7C5C & 0xF00000)) {

                        } else {
block_51:
                            unksp278 = 0;
                        }
                    }
                    if ((sp1F8->unk-6230 != 0) && (var_s3->unk34 == sp3C)) {
                        var_s8->unk7BFC = (s32) (var_s8->unk7BFC & ~0x40000);
                    }
                    if (var_s8->unk16960 != 0) {
                        unksp298 = var_f5;
                        __glOdysseyValidateHardware(var_s8);
                    }
                    if (((f32) (sp1F8->unk1EEC - 0x10) < ((bitwise f32) sp100 - (bitwise f32) sp108)) || (sp200 != 0)) {
                        var_a1_2 = 1;
                    } else {
                        var_a1_2 = 0;
                    }
                } else {
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f17
                    // At instruction: sdc1 $f17, 0x128($sp)
                }
                if (unksp238 != 0) {
                    if (var_s8->unk9830 != 0) {
                        var_s8->unk9830 = 0;
                        HQ2_READ_FIFO = 9.3364e-41f;
                        HQ2_READ_FIFO = 3.5e-43f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                    }
                    HQ2_READ_FIFO = 9.4796e-41f;
                    HQ2_READ_FIFO = 0.0f;
                    HQ2_READ_FIFO = var_s8->unkA6DC;
                }
                temp_v0_4 = sp1D0 & 0xFF;
                if (var_a1_2 != 0) {
                    temp_s1 = var_s8 + 0x10000;
                    temp_t0 = var_s8->unkA1F8;
                    var_s8->unkA1F8 = 0x12FU;
                    var_s8->unk96F4 = temp_t0;
                    HQ2_READ_FIFO = (bitwise f32) ((var_s8->unkA1F8 & 0x3FF) | (((u32) var_s8->unkA1F8 >> 0xA) << 0x17) | 0x29008000);
                    var_s8->unk96F8 = temp_a0;
                    var_s8->unk96D0 = (bitwise f32) sp140;
                    var_s8->unk96CC = (bitwise f32) sp130;
                    var_s8->unk96C8 = (bitwise f32) sp138;
                    temp_a4_4 = (sp1A0 - unksp230) - unksp280;
                    var_s8->unk96C4 = var_f20;
                    if (temp_v0_4 != 0) {
                        if (sp200 != 0) {
                            sp2D8 = (s64) var_s3;
                            var_s3_2 = unksp230;
                            unksp288 = temp_s5_2;
                            sp2D0 = var_s4;
                            spB0.unk10 = (s64) sp10.unk10;
                            spB0.unk18 = (s64) sp10.unk18;
                            temp_at_2 = 0xFFFFF & sp28;
                            var_s6 = sp1C >> 0x10;
                            spB0.unk8 = (s64) sp10.unk8;
                            spB0 = (s64) sp10;
                            unksp290 = (s64) (temp_at_2 + sp24);
                            var_s2 = (s32) sp128;
                            var_s4_2 = ((u32) (temp_a4_4 - temp_at_2) >> 1) - sp24;
                            if ((s32) var_s6 > 0) {
                                sp2E0 = (s64) var_s8;
                                sp2F0 = second half of f64;
                                var_s5_3 = var_s2 - 1;
                                do {
                                    var_s8->unk96E8 = (f32) var_f5;
                                    var_s8->unk96E0 = (bitwise f32) sp118;
                                    var_s8->unk96DC = (f32) var_f5;
                                    var_s8->unk96D4 = (f32) sp120;
                                    var_s8->unk96F0 = 1;
                                    var_s8->unk96EC = (s32) unksp288;
                                    var_s8->unk96E4 = (f32) var_s5_3;
                                    var_s8->unk96D8 = (f32) var_s2;
                                    HQ2_READ_FIFO = 1.1623e-40f;
                                    HQ2_READ_FIFO = 1.4e-44f;
                                    HQ2_READ_FIFO = -4.3171425e9f;
                                    HQ2_READ_FIFO = var_s8->unk96C4;
                                    HQ2_READ_FIFO = var_s8->unk96C8;
                                    HQ2_READ_FIFO = var_s8->unk96CC;
                                    HQ2_READ_FIFO = var_s8->unk96D0;
                                    HQ2_READ_FIFO = var_s8->unk96D4;
                                    HQ2_READ_FIFO = var_s8->unk96D8;
                                    HQ2_READ_FIFO = var_s8->unk96DC;
                                    HQ2_READ_FIFO = var_s8->unk96E0;
                                    HQ2_READ_FIFO = var_s8->unk96E4;
                                    HQ2_READ_FIFO = var_s8->unk96E8;
                                    HQ2_READ_FIFO = -1.182669e-38f;
                                    HQ2_READ_FIFO = 0.0f;
                                    HQ2_READ_FIFO = 0.0f;
                                    var_s8->unk9700 = 0;
                                    var_s8->unk96FC = 0;
                                    __glOdysseyImageMovePixelsCopy((void *) var_s3_2, var_s4_2, &spB0);
                                    HQ2_READ_FIFO = 1.14796e-40f;
                                    if (var_s8->unk96F4 != 0) {
                                        var_s8->unk9830 = 0;
                                        HQ2_READ_FIFO = 9.3364e-41f;
                                        HQ2_READ_FIFO = 3.5e-43f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                    }
                                    var_s3_2 += unksp290;
                                    var_s6 -= 2;
                                    var_s4_2 -= unksp290;
                                    var_s2 -= 2;
                                    var_s5_3 -= 2;
                                    var_s8->unk9830 = 1;
                                } while ((s32) var_s6 > 0);
                                var_s8 = (void *) sp2E0;
                            }
                        } else {
                            temp_v1_5 = sp1C & 0xFFFF;
                            sp160 = temp_v1_5;
                            sp158 = (s64) temp_a0;
                            sp2D0 = var_s4;
                            sp2D8 = (s64) var_s3;
                            spD0.unk8 = (s64) sp10.unk8;
                            spD0.unk10 = (s64) sp10.unk10;
                            spD0.unk18 = (s64) sp10.unk18;
                            spD0 = (s64) sp10;
                            var_a7_3 = (s32) sp120;
                            if (temp_v1_5 > 0) {
                                sp170 = unksp230;
                                sp168 = temp_a4_4;
                                sp2E0 = (s64) var_s8;
                                var_t0_2 = 0;
                                spF0 = sp128;
                                spF8 = sp110;
                                do {
                                    temp_at_3 = sp1F8->unk1EEC - 0x10;
                                    temp_a5_4 = temp_at_3 < sp160;
                                    temp_at_4 = (temp_a5_4 == 0) ? sp160 : temp_at_3;
                                    temp_a4_5 = spE8;
                                    temp_a0_6 = temp_at_4 + var_a7_3;
                                    temp_a3_6 = 0xFFFFF & (temp_at_4 * sp158);
                                    temp_a2_3 = (0xFFF00000 & temp_a4_5) | temp_a3_6;
                                    spE8 = temp_a2_3;
                                    spE4 = sp24 + ((0xFFFFF & sp28) - (0xFFFFF & temp_a2_3));
                                    var_s8->unk96E8 = (f32) var_f5;
                                    var_s8->unk96E4 = (bitwise f32) spF8;
                                    var_s8->unk96E0 = (f32) temp_a0_6;
                                    var_s8->unk96DC = (f32) var_f5;
                                    var_s8->unk96F0 = (s32) sp190;
                                    var_s8->unk96D4 = (f32) var_a7_3;
                                    var_s8->unk96EC = (s32) temp_at_4;
                                    var_s8->unk96D8 = (bitwise f32) spF0;
                                    HQ2_READ_FIFO = 1.1623e-40f;
                                    HQ2_READ_FIFO = 1.4e-44f;
                                    HQ2_READ_FIFO = -4.3171425e9f;
                                    HQ2_READ_FIFO = var_s8->unk96C4;
                                    HQ2_READ_FIFO = var_s8->unk96C8;
                                    HQ2_READ_FIFO = var_s8->unk96CC;
                                    HQ2_READ_FIFO = var_s8->unk96D0;
                                    unksp2A8 = temp_at_4;
                                    HQ2_READ_FIFO = var_s8->unk96D4;
                                    unksp2B0 = temp_a0_6;
                                    temp_lo_4 = var_t0_2 * sp158;
                                    HQ2_READ_FIFO = var_s8->unk96D8;
                                    HQ2_READ_FIFO = var_s8->unk96DC;
                                    HQ2_READ_FIFO = var_s8->unk96E0;
                                    temp_a1_5 = sp168 - temp_lo_4;
                                    sp168 = temp_a1_5;
                                    HQ2_READ_FIFO = var_s8->unk96E4;
                                    temp_a0_7 = temp_lo_4 + sp170;
                                    sp170 = temp_a0_7;
                                    HQ2_READ_FIFO = var_s8->unk96E8;
                                    HQ2_READ_FIFO = -1.182669e-38f;
                                    HQ2_READ_FIFO = 0.0f;
                                    HQ2_READ_FIFO = 0.0f;
                                    var_s8->unk9700 = 0;
                                    var_s8->unk96FC = 0;
                                    __glOdysseyImageMovePixelsCopy((void *) temp_a0_7, (void *) temp_a1_5, &spD0, temp_a3_6, (s64) temp_a4_5, temp_a5_4, sp160, (s64) var_a7_3);
                                    HQ2_READ_FIFO = 1.14796e-40f;
                                    var_t0_2 = unksp2A8;
                                    temp_v0_5 = sp160 - unksp2A8;
                                    if (var_s8->unk96F4 != 0) {
                                        var_s8->unk9830 = 0;
                                        HQ2_READ_FIFO = 9.3364e-41f;
                                        HQ2_READ_FIFO = 3.5e-43f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                        HQ2_READ_FIFO = 9.1934e-41f;
                                    }
                                    var_a7_3 = (s32) unksp2B0;
                                    sp160 = temp_v0_5;
                                    var_s8->unk9830 = 1;
                                } while (temp_v0_5 > 0);
                                sp2D8 = (s64) var_s3;
                                var_s8 = (void *) sp2E0;
                            }
                        }
                        goto block_74;
                    }
                    temp_s1->unk-6918 = (bitwise f32) var_f5;
                    temp_s1->unk-6924 = (bitwise f32) var_f5;
                    temp_s1->unk-691C = (f32) (second half of f64);
                    temp_s1->unk-6920 = (f32) sp118;
                    temp_s1->unk-6928 = (f32) sp128;
                    temp_s1->unk-692C = (bitwise f32) sp120;
                    temp_a6_4 = __glOdysseyAssignToPMObj(var_s8, var_s3->unk10, var_s3->unk14, unksp230, temp_a4_4, ((unksp278 == 0) ? 0 : 0x10) | (var_s3->unk34 << 0x10) | ((sp1C8 == 0) ? 0xB : 9), 0, &sp10) & 0xFF;
                    sp2D0 = var_s4;
                    sp2D8 = (s64) var_s3;
                    if (temp_a6_4 == 0) {
                        sp2E0 = (s64) var_s8;
                        __glSetError(0x505);
                    } else {
block_74:
                        var_s3 = (void *) sp2D8;
                        var_s4 = sp2D0;
                        if (unksp238 != 0) {
                            if (temp_s1->unk-67D0 != 0) {
                                temp_s1->unk-67D0 = 0;
                                HQ2_READ_FIFO = 9.3364e-41f;
                                HQ2_READ_FIFO = 3.5e-43f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                            }
                            HQ2_READ_FIFO = -2.5342993e-29f;
                            HQ2_READ_FIFO = 9.3364e-41f;
                            HQ2_READ_FIFO = 2.1e-43f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            temp_s1->unk-67D0 = 0;
                            HQ2_READ_FIFO = 9.3364e-41f;
                            HQ2_READ_FIFO = 3.5e-43f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                        }
                        goto block_78;
                    }
                } else {
                    if (var_s4 != 0) {
                        var_s1_2 = var_s8 + 0x10000;
                        temp_t2 = var_s8->unkA1F8;
                        var_s8->unkA1F8 = 0x12FU;
                        var_s8->unk96F4 = temp_t2;
                        HQ2_READ_FIFO = (bitwise f32) ((var_s8->unkA1F8 & 0x3FF) | (((u32) var_s8->unkA1F8 >> 0xA) << 0x17) | 0x29008000);
                        if (temp_v0_4 == 0) {
                            HQ2_READ_FIFO = 9.4111e-41f;
                            HQ2_READ_FIFO = 1.653039e-39f;
                        }
                        var_s8->unk96F8 = temp_a0;
                        var_s8->unk96E8 = (f32) var_f5;
                        var_s8->unk96DC = (f32) var_f5;
                        var_s8->unk96C4 = var_f20;
                        var_s8->unk96EC = (s32) temp_s5_2;
                        var_s8->unk96F0 = (s32) sp190;
                        var_s8->unk96E4 = (bitwise f32) sp110;
                        var_s8->unk96E0 = (bitwise f32) sp118;
                        var_s8->unk96D8 = (bitwise f32) sp128;
                        var_s8->unk96D4 = (f32) sp120;
                        var_s8->unk96D0 = (bitwise f32) sp140;
                        var_s8->unk96CC = (bitwise f32) sp130;
                        var_s8->unk96C8 = (bitwise f32) sp138;
                        if (temp_v0_4 != 0) {
                            goto block_102;
                        }
                        goto block_149;
                    }
                    if (temp_v0_4 != 0) {
                        var_s1_2 = var_s8 + 0x10000;
block_102:
                        HQ2_READ_FIFO = 1.1623e-40f;
                        HQ2_READ_FIFO = 1.4e-44f;
                        HQ2_READ_FIFO = -4.3171425e9f;
                        HQ2_READ_FIFO = var_s1_2->unk-693C;
                        HQ2_READ_FIFO = var_s1_2->unk-6938;
                        HQ2_READ_FIFO = var_s1_2->unk-6934;
                        HQ2_READ_FIFO = var_s1_2->unk-6930;
                        HQ2_READ_FIFO = var_s1_2->unk-692C;
                        HQ2_READ_FIFO = var_s1_2->unk-6928;
                        HQ2_READ_FIFO = var_s1_2->unk-6924;
                        HQ2_READ_FIFO = var_s1_2->unk-6920;
                        HQ2_READ_FIFO = var_s1_2->unk-691C;
                        HQ2_READ_FIFO = var_s1_2->unk-6918;
                        HQ2_READ_FIFO = -1.182669e-38f;
                        HQ2_READ_FIFO = 0.0f;
                        HQ2_READ_FIFO = 0.0f;
                        var_s1_2->unk-6900 = 0;
                        var_s1_2->unk-6904 = 0;
                        __glOdysseyImageMovePixelsCopy((void *) unksp230, (sp1A0 - unksp230) - unksp280, (s64 *) &sp10, unksp280);
                        HQ2_READ_FIFO = 1.14796e-40f;
                        if (var_s1_2->unk-690C != 0) {
                            var_s1_2->unk-67D0 = 0;
                            HQ2_READ_FIFO = 9.3364e-41f;
                            HQ2_READ_FIFO = 3.5e-43f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                        }
                        var_s1_2->unk-67D0 = 1;
                        goto block_78;
                    }
block_149:
                    if (!(__glOdysseyAssignToPMObj(var_s8, var_s3->unk10, var_s3->unk14, unksp230, (sp1A0 - unksp230) - unksp280, ((sp1C8 == 0) ? 3 : 1) | ((unksp278 == 0) ? 0 : 0x10) | (((var_s4 == 0) ? 0 : 8) | (var_s3->unk34 << 0x10)), 0, &sp10) & 0xFF)) {
                        __glSetError(0x505);
                    } else {
block_78:
                        if (__glOdysseyClosePMObjWriteReference(var_s8, var_s3->unk10, var_s3->unk14) & 0xFF) {
                            if (var_s4 != 0) {
                                var_s8->unkA1F8 = (u32) var_s8->unk96F4;
                                HQ2_READ_FIFO = (bitwise f32) ((var_s8->unkA1F8 & 0x3FF) | (((u32) var_s8->unkA1F8 >> 0xA) << 0x17) | 0x29008000);
                                var_s8->unk96F4 = 0U;
                                if ((sp1C8 != 0) && !(var_s8->unk7B70 & 0x400)) {
                                    HQ2_READ_FIFO = 9.4111e-41f;
                                    HQ2_READ_FIFO = 1.653039e-39f;
                                }
                                var_s8->unk96AC = sp50;
                                var_s8->unk96BC = (f32) sp50.unk10;
                                var_s8->unk96B8 = (f32) sp50.unkC;
                                var_s8->unk96B4 = (f32) sp50.unk8;
                                var_s8->unk96B0 = (f32) sp50.unk4;
                                if (var_s8->unk9830 != 0) {
                                    var_s8->unk9830 = 0;
                                    HQ2_READ_FIFO = 9.3364e-41f;
                                    HQ2_READ_FIFO = 3.5e-43f;
                                    HQ2_READ_FIFO = 9.1934e-41f;
                                    HQ2_READ_FIFO = 9.1934e-41f;
                                }
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.9126e-41f;
                                HQ2_READ_FIFO = (bitwise f32) var_s8->unk96AC;
                                HQ2_READ_FIFO = var_s8->unk96B0;
                                HQ2_READ_FIFO = var_s8->unk96B4;
                                HQ2_READ_FIFO = var_s8->unk96B8;
                                HQ2_READ_FIFO = var_s8->unk96BC;
                                var_s8->unk9830 = 0;
                                HQ2_READ_FIFO = 9.3364e-41f;
                                HQ2_READ_FIFO = 3.5e-43f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                var_s8->unk96A8 = sp7C;
                                var_s8->unk96A4 = sp78;
                                var_s8->unk96A0 = sp74;
                                var_s8->unk969C = sp70;
                                var_s8->unk9708 = sp6C;
                                var_s8->unk9704 = sp68;
                                var_s8->unk7C24 = spAC;
                                var_s8->unk7C20 = spA8;
                                var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x200010);
                                *(void *)0x1018 = 2;
                                if ((var_s3->unk8 == 0) || (unksp210 != 1)) {
                                    if (var_s3->unkA != 0) {
                                        var_s8->unk7C5C = sp90;
                                        var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x80);
                                        *(void *)0x1018 = 2;
                                    }
                                } else {
                                    var_s8->unk7C34 = sp84;
                                    var_s8->unk7BFC = sp80;
                                    var_s8->unk7C38 = sp88;
                                    var_s8->unk7C3C = sp8C;
                                    var_s8->unk7C5C = sp90;
                                    var_s8->unk16960 = (s32) (var_s8->unk16960 | 0x83);
                                    *(void *)0x1018 = 2;
                                }
                            }
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x505);
                        }
                    }
                }
            } else {
                var_s8->unk10(var_s8, &sub_0daf0000 - 0x6E30);
                __glSetError(0x505);
            }
        }
    } else {
        __glSetError(0x501);
    }
}

void __glOdysseyImageMovePixelsDMAtoHost(void *arg0, void *arg1, void *arg2) {
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    u64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    f64 sp80;
    s8 sp31;
    u8 sp30;
    s64 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s64 sp8;                                        /* compiler-managed */
    s32 sp4;
    s32 sp0;
    ? var_a5;
    f32 temp_f13;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_f3;
    s32 temp_f4;
    s32 temp_f5;
    s32 temp_ra;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_a2;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_a2_2;
    s64 temp_f13_2;
    s64 temp_ra_2;
    s64 temp_t1;
    s64 temp_t2;
    u32 temp_a1;
    u32 temp_lo;
    u32 temp_s3;
    u32 temp_t9;
    u32 temp_v0_2;
    u32 var_a2_2;
    u64 temp_a3;
    u64 temp_a4;
    u64 temp_a7;
    u64 temp_lo_2;
    u64 var_s4;
    u8 temp_t0;
    void *temp_s2;

    sp4 = 0;
    sp0 = 0;
    temp_s2 = *(void **)0x1010;
    sp8 = 0;
    sp28 = 0;
    sp28.unk10 = 0;
    sp28.unk8 = 0;
    sp8.unk18 = 0;
    sp8.unk10 = 0;
    sp8.unk8 = 0;
    sp31 = arg0->unk28 == 1;
    sp30 = arg0->unk0;
    temp_f5 = (s32) arg2->unk4;
    temp_f4 = (s32) arg2->unk0;
    spC8 = (s64) (s32) arg2->unkC;
    temp_f3 = (s32) arg2->unk1C;
    spD8 = (s64) (s32) arg2->unk8;
    spE0 = (s64) temp_f5;
    spD0 = (s64) temp_f4;
    spA0 = (s64) temp_f3;
    spF0 = (s64) (s32) arg2->unk18;
    spA8 = (s64) (s32) arg2->unk14;
    spE8 = (s64) (s32) arg2->unk10;
    __glOdysseyImageCalcXferReadParams((s64) arg0->unk8, arg0->unkC, arg1, &sp28, (void *) temp_f3, (void *) temp_f4, 0x13CCF0, (s64) temp_f5);
    if ((u8) sp28 != 0) {
        var_a2 = 1;
        if (arg1->unk9 != 0) {
            temp_v0 = temp_s2->unk4D4;
            var_a2 = 0;
            if ((temp_v0 != 0x405) && (temp_v0 != 0x402) && (temp_v0 != 0x403)) {
                spC0 = 1;
            } else {
                spC0 = 0;
            }
            if ((temp_v0 != 0x407) && (temp_v0 != 0x401) && (temp_v0 != 0x403)) {
                var_a2 = 1;
            }
        } else {
            spC0 = 1;
        }
        temp_v0_2 = arg0->unk8;
        if ((temp_v0_2 == 0x1902) || (var_v0 = 0, (temp_v0_2 == 0x1901))) {
            var_v0 = 1;
        }
        if (__glOdysseyImageCalcXferWriteParams(arg1->unk2C, arg1->unk30, var_a2, (s64 *) (var_v0 & 0xFF), sp, &sp4) != 0) {
            sp90 = ((arg0->unk4 ^ arg1->unk4) == 0) ? 0 : 0x40;
            spB8 = __glSpecElementsPerGroup(arg0->unk8, arg0->unkC);
            temp_lo = spB8 * __glSpecBytesPerElement(arg0->unkC);
            var_a2_2 = arg0->unk18;
            temp_a0 = arg0->unk28 ^ 1;
            temp_a1 = temp_lo >> 1;
            temp_s3 = (temp_a0 == 0) ? temp_a1 : temp_lo;
            if (var_a2_2 < temp_s3) {
                var_a2_2 = temp_s3;
                arg0->unk18 = temp_s3;
            }
            temp_a5 = arg0->unk10;
            temp_a3 = (u64) ((s64) var_a2_2 << 0x20) >> 0x20;
            temp_a4 = (u64) ((temp_a5 * temp_s3) << 0x20) >> 0x20;
            temp_f13 = (f32) temp_a3;
            sp80 = (bitwise f64) temp_f13;
            temp_t1 = (spE8 < spF0) ? spE8 : spF0;
            temp_t2 = (spF0 < spE8) ? spE8 : spF0;
            temp_lo_2 = temp_s3 * (temp_t2 - temp_t1);
            temp_f13_2 = (s64) (ceilf(temp_a0, (s64 *) temp_a1, var_a2_2, (bitwise f32) temp_a3, temp_a4, temp_a5, (f32) temp_a4 / temp_f13, temp_f13) * temp_f13);
            temp_a7 = temp_f13_2 << 0;
            spB0 = temp_lo_2;
            temp_a6 = temp_a7 < temp_lo_2;
            var_s4 = (temp_a6 == 0) ? temp_a7 : temp_lo_2;
            if (arg0->unk0 == 0) {
                temp_t9 = temp_s2->unk488;
                temp_t8 = (var_s4 % temp_t9) & 0xFF;
                M2C_TRAP_IF(temp_t9 == 0);
                var_s4 = (temp_t8 != 0) ? (var_s4 + (temp_t9 - temp_t8)) : var_s4;
            }
            temp_ra = arg0->unk2C;
            temp_a2 = arg1->unk14;
            sp98 = temp_ra + (var_s4 * ((spA0 >= spA8) ? spA0 : spA8)) + (temp_t2 * temp_s3);
            sp88 = temp_ra + (var_s4 * ((spA8 < spA0) ? spA8 : spA0)) + (temp_t1 * temp_s3);
            if (__glOdysseyOpenPMObjReference(temp_s2, arg1->unk10, temp_a2, temp_a2, (s32 (*)[]) &sp40[0], 0, temp_a6, temp_a7, second half of f64, temp_f13_2) & 0xFF) {
                temp_t0 = arg1->unk9;
                temp_t3 = (temp_t0 == 0) ? 0 : 1;
                temp_a2_2 = (spE0 < spC8) ? spE0 : spC8;
                temp_ra_2 = (spD0 < spD8) ? spD0 : spD8;
                sp8 = ((((s32) sp8 & ~0x20000000) | ((temp_t3 & 1) << 0x1D)) & 0xE0000000) | (((temp_t0 == 0) ? ((&sp40[0])[arg1->unk14] + arg1->unk18) : 0x10000019) & 0x1FFFFFFF);
                unkspC = (temp_ra_2 & 0xFFFF) | (0xFFFF0000 & ((unkspC & 0xFFFF) | (temp_a2_2 << 0x10)));
                temp_a4_2 = arg1->unk1C;
                temp_a5_2 = temp_a4_2 ^ 0x1000;
                temp_a1_2 = (((spC8 >= spE0) ? spC8 : spE0) - temp_a2_2) << 0x10;
                temp_a4_3 = ((temp_a5_2 == 0) ? 1 : temp_a4_2) & 0xFFF;
                sp10 = (sp10 & ~0xFFF) | temp_a4_3;
                sp14 = (0xFFFF0000 & ((sp14 & 0xFFFF) | temp_a1_2)) | ((((spD8 >= spD0) ? spD8 : spD0) - temp_ra_2) & 0xFFFF);
                temp_a7_2 = (((((((sp18 & ~0xF00000) | ((sp0 & 0xF) << 0x14)) & ~0x0F000000) | ((sp4 & 0xF) << 0x18)) & ~0x70000000) | ((temp_t3 & 7) << 0x1C)) & 0x7FFFFFFF) | (spC0 << 0x1F);
                sp18 = temp_a7_2;
                sp1C = var_s4 - spB0;
                temp_a7_3 = ((((((temp_a7_2 & ~0xF0000) | ((arg1->unk28 & 0xF) << 0x10)) & ~0xE000) | ((unksp2C & 7) << 0xD)) & ~0xF8) | ((unksp2A & 0x1F) * 8)) & ~7;
                sp20 = (sp20 & 0xFFF00000) | (spB0 & 0xFFFFF);
                temp_a6_2 = (unksp29 & 7) | temp_a7_3 | 0x1000;
                sp18 = temp_a6_2;
                sp24 = (((sp24 & ~0x70000) | ((__glOdysseyImageCalcPixelModeFields((void *) temp_s3, (void *) temp_a1_2, (s32) temp_a2_2, (s32) spC8, temp_a4_3, (bitwise f32) temp_a5_2, (bitwise f32) temp_a6_2, (bitwise f32) temp_a7_3) & 7) << 0x10)) & ~0x1000 & ~0x800 & ~0x400 & ~0x200 & ~0x1E0 & ~0x1F & 0xFFFFFF) | (sp90 << 0x18);
                if (temp_s2->unk7B70 & 0x400) {
                    var_a5 = 2;
                    if (temp_s2->unk21EE0 != 0) {
                        var_a5 = 2;
                        if (temp_s2->unk718 & 4) {
                            var_a5 = 0;
                        }
                    }
                } else {
                    var_a5 = 2;
                }
                if (__glOdysseyReadFromPMObj(temp_s2, arg1->unk10, arg1->unk14, sp88, (sp98 - sp88) - var_s4, var_a5, 0, &sp8) & 0xFF) {
                    temp_a2_3 = arg1->unk14;
                    if (!(__glOdysseyClosePMObjReference(temp_s2, arg1->unk10, temp_a2_3, temp_a2_3) & 0xFF)) {
                        __glSetError(0x505);
                    }
                } else {
                    __glSetError(0x505);
                }
            } else {
                M2C_ERROR(/* Read from unset register $t9 */)(0x505);
            }
        }
    } else {
        __glSetError(0x501, 0x403);
    }
}

void __glOdysseyImageMovePixelsTexture(void *arg0, void *arg1, s64 *arg2, s64 arg3) {
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
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    f64 sp90;
    f64 sp88;
    f64 sp80;
    s32 sp7C;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    f32 temp_f20;
    f32 temp_f21;
    f32 temp_f22;
    f32 temp_f23;
    f32 temp_f27;
    f32 temp_f31;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f6;
    f32 var_f14;
    f32 var_f15;
    f32 var_f16;
    f32 var_f20;
    f32 var_f20_2;
    f32 var_f22;
    f32 var_f4;
    f32 var_f5;
    f32 var_f7;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_f13;
    s32 temp_f23_2;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a6;
    u32 temp_a1_2;
    u32 temp_t0;
    u32 temp_t9;
    u64 temp_a1_3;
    u64 temp_a5_2;
    u64 var_a0;
    u64 var_a7;
    u64 var_a7_2;
    u8 temp_a0_2;
    u8 temp_a3_3;
    u8 var_a4;
    void *temp_a0;
    void *temp_s2;

    spC = 0;
    sp8 = 0;
    sp4 = 0;
    temp_v1 = arg1->unk14;
    temp_s2 = *(void **)0x1010;
    sp118 = (s64) temp_s2->unk7FB4;
    sp120 = (s64) temp_s2->unk7FB8;
    sp10 = temp_s2->unk7CC4;
    sp108 = (s64) temp_s2->unk7C00;
    sp140 = (s64) temp_s2->unk7FE0;
    temp_a6 = temp_s2->unk7CCC;
    spC8 = (s64) temp_s2->unk7C34;
    spD0 = (s64) temp_s2->unk7C38;
    spB8 = (s64) temp_s2->unk7C3C;
    spF0 = (s64) temp_s2->unk7C5C;
    sp110 = (s64) temp_s2->unk7FB0;
    sp138 = (s64) temp_s2->unk96A4;
    sp10.unk18 = (s32) temp_s2->unk7CDC;
    sp10.unk14 = (s32) temp_s2->unk7CD8;
    sp10.unk10 = (u32) temp_s2->unk7CD4;
    sp10.unkC = (s32) temp_s2->unk7CD0;
    spC0 = (s64) temp_s2->unk7BFC;
    sp10.unk8 = temp_a6;
    sp100 = (s64) temp_s2->unk96A8;
    sp130 = (s64) temp_s2->unk96A0;
    sp128 = (s64) temp_s2->unk969C;
    sp10.unk4 = (s32) temp_s2->unk7CC8;
    if (__glOdysseyOpenPMObjReference(temp_s2, arg1->unk10, temp_v1, temp_v1, (s32 (*)[]) &sp30[0], 0, temp_a6, 0x13C5A0U, 0) != 0) {
        spF8 = (&sp30[0])[arg1->unk14] + arg1->unk18;
        if (__glOdysseyOpenPMObjWriteReference(temp_s2, arg0->unk10, arg0->unk14, &spC, 1) != 0) {
            spC += arg0->unk18;
            if (__glOdysseyImageCalcTexObjFormats(arg1->unk34, &sp4, sp) != 0) {
                if (__glOdysseyImageCalcTexOffset(arg1, &sp8) != 0) {
                    spE8 = arg3;
                    temp_s2->unk7C00 = (s32) (temp_s2->unk7C00 | 0x10);
                    temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 4);
                    *(s32 *)0x1018 = 2;
                    temp_a2 = (__glOdysseyImageLogBase2(arg1->unk20) << 0xA) & 0x7C00;
                    temp_a1 = (temp_s2->unk7CC4 & ~0x7C00) | temp_a2;
                    temp_s2->unk7CC4 = temp_a1;
                    temp_s2->unk7CC4 = (s32) (((temp_s2->unk7CC4 & ~0x3E0) | ((__glOdysseyImageLogBase2(arg1->unk24, temp_a1, temp_a2, -0x7C01) << 5) & 0x3E0)) & ~0x1F);
                    temp_s2->unk7CC8 = (s32) (0xFF03FFFF & ((0x1FFFF & arg1->unk20) | (0xFFFE0000 & temp_s2->unk7CC8)));
                    temp_s2->unk7CD4 = (u32) ((temp_s2->unk7CD4 & ~0x03800000) | 0x03000000);
                    temp_s2->unk7CCC = (s32) (0xFF03FFFF & ((0x1FFFF & arg1->unk24) | (0xFFFE0000 & temp_s2->unk7CCC)));
                    temp_s2->unk7CD0 = (s32) (0xFF03FFFF & (0xFFFE0000 & temp_s2->unk7CD0));
                    temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x200);
                    *(void *)0x1018 = 2;
                    temp_s2->unk7FB0 = (s32) ((0xE0000000 & temp_s2->unk7FB0) | (0x1FFFFFFF & spF8));
                    temp_ra = (temp_s2->unk7FB4 & 0x3FFFFFFF) | ((arg1->unk28 << 0x1E) & 0xC0000000);
                    temp_s2->unk7FB4 = temp_ra;
                    temp_ra_2 = (temp_ra & ~0x1C000000) | ((sp8 << 0x1A) & 0x1C000000);
                    temp_s2->unk7FB4 = temp_ra_2;
                    temp_ra_3 = (temp_ra_2 & ~0x03F00000) | ((sp4 << 0x14) & 0x03F00000);
                    temp_s2->unk7FB4 = temp_ra_3;
                    temp_s2->unk7FB8 = (s32) (-0x1000 & temp_s2->unk7FB8);
                    temp_s2->unk7FB4 = (s32) ((-0x1000 & temp_ra_3) | (arg1->unk1C & 0xFFF));
                    if (temp_s2->unk9830 != 0) {
                        temp_s2->unk9830 = 0;
                        HQ2_READ_FIFO = 9.3364e-41f;
                        HQ2_READ_FIFO = 3.5e-43f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                    }
                    HQ2_READ_FIFO = 9.7121e-41f;
                    temp_a7 = temp_s2->unk7FB0;
                    HQ2_READ_FIFO = (bitwise f32) temp_a7;
                    temp_a6_2 = temp_s2->unk7FB4;
                    HQ2_READ_FIFO = (bitwise f32) temp_a6_2;
                    temp_a5 = temp_s2->unk7FB8;
                    HQ2_READ_FIFO = (bitwise f32) temp_a5;
                    temp_s2->unk9830 = 0;
                    HQ2_READ_FIFO = 9.3364e-41f;
                    HQ2_READ_FIFO = 3.5e-43f;
                    HQ2_READ_FIFO = 9.1934e-41f;
                    HQ2_READ_FIFO = 9.1934e-41f;
                    temp_a3 = temp_s2->unk16960 | 0x1000;
                    temp_s2->unk16960 = temp_a3;
                    *(void *)0x1018 = 2;
                    temp_s2->unk7FE0 = (s32) ((temp_s2->unk7FE0 & ~0x3F) | 0x3C);
                    temp_a0 = temp_s2 + 0x969C;
                    spB0 = (s64) temp_a0;
                    temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x800);
                    *(void *)0x1018 = 2;
                    __glOdysseyImageCalcPixelModeFields(temp_a0, arg0, -0x40, temp_a3, 0xFA, (bitwise f32) temp_a5, (bitwise f32) temp_a6_2, (bitwise f32) temp_a7);
                    temp_s2->unk16960 = (s32) (0x200000 | temp_s2->unk16960);
                    temp_s2->unk969C = (s32) ((0xE0000000 & temp_s2->unk969C) | (0x1FFFFFFF & spC));
                    *(void *)0x1018 = 2;
                    temp_f20 = arg2->unk0 / (f32) (1 << __glOdysseyImageLogBase2(arg1->unk20));
                    temp_f23 = (f32) (1 << __glOdysseyImageLogBase2(arg1->unk24));
                    sp88 = (bitwise f64) temp_f20;
                    var_f22 = arg2->unk4 / temp_f23;
                    sp90 = (bitwise f64) (arg2->unk8 / (f32) (1 << __glOdysseyImageLogBase2(arg1->unk20)));
                    var_f20 = arg2->unkC / (f32) (1 << __glOdysseyImageLogBase2(arg1->unk24));
                    if ((((u32) temp_s2->unk7CD4 >> 1) & 0xF) == 1) {
                        temp_f31 = (f32) (1.0 / (f64) ((u64) ((arg1->unk24 * 4) << 0x20) >> 0x20));
                        temp_f27 = (f32) (1.0 / (f64) ((u64) ((arg1->unk20 * 4) << 0x20) >> 0x20));
                        var_f20 += temp_f31;
                        sp90 = (bitwise f64) ((bitwise f32) sp90 + temp_f27);
                        var_f22 += temp_f31;
                        sp88 = (bitwise f64) ((bitwise f32) sp88 + temp_f27);
                    }
                    temp_a0_2 = arg0->unk8;
                    if ((temp_a0_2 != 0) && (spE8 == 1)) {
                        temp_a1_2 = temp_s2->unk165BC;
                        if ((temp_a1_2 != temp_s2->unk7C20) || (temp_s2->unk165C0 != temp_s2->unk7C24)) {
                            temp_s2->unk7C20 = temp_a1_2;
                            temp_s2->unk7C24 = (u32) temp_s2->unk165C0;
                            if (temp_s2->unk9830 != 0) {
                                temp_s2->unk9830 = 0;
                                HQ2_READ_FIFO = 9.3364e-41f;
                                HQ2_READ_FIFO = 3.5e-43f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                            }
                            // Error: negative shift count
                            // At instruction: bgez $a6, .L0d9bd038
                            if (M2C_ERROR()) {
                                sp70 = 0;
                                sp74 = 0;
                                sp78 = 0;
                                sp7C = 0;
                                temp_a4 = ((u32) temp_s2->unk7C20 >> 0xC) & 0xFFF;
                                sp70 = temp_a4;
                                sp78 = temp_s2->unk7C20 & 0xFFF;
                                sp74 = ((u32) temp_s2->unk7C24 >> 0xC) & 0xFFF;
                                temp_a3_2 = temp_s2->unk7C24 & 0xFFF;
                                sp7C = temp_a3_2;
                                __glOdysseyIoctl(temp_s2, 0x6F64000D, &sp70, temp_a3_2, temp_a4);
                            }
                            temp_s2->unk16964 = (s32) (temp_s2->unk16964 | 0x2000);
                            *(void *)0x1018 = 2;
                        }
                        spE0 = (s64) temp_s2->unk7C20;
                        spD8 = (s64) temp_s2->unk7C24;
                        __glOdysseyImageCalcXferReadParams(spB0, temp_s2 + 0x7BFC, temp_s2 + 0x7C34, temp_s2 + 0x7C38, temp_s2 + 0x7C3C, temp_s2 + 0x7C5C);
                        temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x200083);
                        *(void *)0x1018 = 2;
                        if (!(temp_s2->unk7BFC & 0x10000)) {
                            // Error: Tried to use a double-precision instruction with odd-numbered float register $f23
                            // At instruction: sdc1 $f23, 0x80($sp)
                        } else {
                            sp80 = __glOdysseyImageCalcOdyEyeSpaceRasterPosZ();
                        }
                    } else {
                        ceilf((s64) temp_a0_2, (s64 *) spE8, (bitwise u32) (f32) ((f64) (second half of f64) + (second half of f64)), second half of f64);
                        spA8 = second half of f64;
                        ceilf(second half of f64, (bitwise s64 *) (f32) ((f64) arg2->unk14 + -0.5), (u32) (second half of f64), (bitwise f32) -0.5, second half of f64);
                        sp98 = second half of f64;
                        ceilf((bitwise s64) (f32) ((f64) arg2->unk18 + -0.5), (s64 *) (second half of f64), (u32) -0.5, second half of f64);
                        spA0 = second half of f64;
                        temp_f13 = (s32) ceilf((bitwise s64) (f32) ((f64) arg2->unk1C + -0.5), (s64 *) (second half of f64), (u32) -0.5, second half of f64);
                        temp_t9 = temp_s2->unk7C20;
                        temp_t1 = ((sp98 < temp_f13) ? sp98 : (s64) temp_f13) << 0xC;
                        temp_a6_3 = (temp_f13 >= sp98) ? temp_f13 : (s32) sp98;
                        temp_s2->unk7C20 = (u32) ((((spA0 >= spA8) ? spA0 : spA8) & 0xFFF) | ((((spA8 < spA0) ? spA8 : spA0) << 0xC) & 0xFFF000 & ~0xFFF));
                        temp_t0 = temp_s2->unk7C24;
                        temp_s2->unk7C24 = (u32) ((temp_a6_3 & 0xFFF) | (0xFFF000 & temp_t1 & ~0xFFF));
                        temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x10);
                        *(void *)0x1018 = 2;
                        spE0 = (s64) temp_t9;
                        spD8 = (s64) temp_t0;
                        if (arg0->unkA != 0) {
                            temp_s2->unk7C5C = (s32) temp_s2->unk11CC0;
                            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x80);
                            *(void *)0x1018 = 2;
                        }
                        sp80 = GLUE_F64(M2C_ERROR(/* Read from unset register $f15 */), 0U);
                    }
                    if (temp_s2->unk16960 != 0) {
                        __glOdysseyValidateHardware(temp_s2);
                    }
                    HQ2_READ_FIFO = 1.1623e-40f;
                    HQ2_READ_FIFO = 1e-44f;
                    var_a4 = arg1->unkC;
                    temp_a3_3 = arg0->unkC;
                    if (var_a4 != 0) {
                        goto block_23;
                    }
                    if (temp_a3_3 == 0) {
                        HQ2_READ_FIFO = -1.269319e-29f;
                        HQ2_READ_FIFO = 0.0f;
                        HQ2_READ_FIFO = 0.0f;
                        HQ2_READ_FIFO = 0.0f;
                        HQ2_READ_FIFO = 1.0f;
                        HQ2_READ_FIFO = arg2->unk10;
                        HQ2_READ_FIFO = arg2->unk14;
                        HQ2_READ_FIFO = (f32) sp80;
                        HQ2_READ_FIFO = arg2->unk18;
                        HQ2_READ_FIFO = arg2->unk1C;
                        HQ2_READ_FIFO = (f32) sp80;
                        HQ2_READ_FIFO = (bitwise f32) sp88;
                        HQ2_READ_FIFO = var_f22;
                        HQ2_READ_FIFO = second half of f64;
                        HQ2_READ_FIFO = var_f20;
                    } else {
block_23:
                        temp_a5_2 = (s64) (M2C_ERROR(/* unknown instruction: movf.s $f6, $f8, $fcc1 */) - M2C_ERROR(/* unknown instruction: movf.s $f7, $f8, $fcc0 */)) << 0;
                        temp_f4 = (var_f20 - var_f22) / (f32) ((u64) (temp_a5_2 << 0x20) >> 0x20);
                        var_a0 = temp_a5_2;
                        var_f20_2 = temp_f4 + var_f22;
                        var_f15 = temp_f4;
                        if (var_a4 != 0) {
                            var_f15 = (f32) ((f64) temp_f4 * (second half of f64));
                            var_a0 = (s64) ((second half of f64) * 0.5) << 0;
                        }
                        var_f5 = arg2->unk14;
                        var_f4 = (f32) M2C_ERROR(/* unknown instruction: movt $a1, $fp, $fcc2 */) + var_f5;
                        if (temp_a3_3 != 0) {

                        }
                        if ((arg0->unk8 == 0) || (spE8 != 1)) {
                            var_f16 = 1.0f;
                        } else {
                            var_f16 = fabsf(temp_s2->unk2EC);
                        }
                        if ((f64) var_f16 != (second half of f64)) {
                            var_f14 = var_f5;
                            var_a7 = var_a0;
                            var_a3 = (s32) var_f5;
                            if (var_a0 != 0) {
                                var_a4 = 0x8F80B968;
                                var_f7 = var_f20_2;
loop_56:
                                temp_f6 = var_f22;
                                var_f14 += var_f16;
                                temp_f23_2 = (s32) var_f14;
                                var_a7 -= 1;
                                var_f20_2 += var_f15;
                                temp_t0_2 = temp_f23_2 - var_a3;
                                var_f22 += var_f15;
                                var_a6 = temp_t0_2 & 3;
                                if (temp_f23_2 != var_a3) {
                                    if (var_a6 == 0) {

                                    } else {
                                        do {
                                            HQ2_READ_FIFO = -1.269319e-29f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 1.0f;
                                            HQ2_READ_FIFO = arg2->unk10;
                                            HQ2_READ_FIFO = var_f5;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            HQ2_READ_FIFO = arg2->unk18;
                                            HQ2_READ_FIFO = var_f4;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            HQ2_READ_FIFO = second half of f64;
                                            var_a6 -= 1;
                                            HQ2_READ_FIFO = temp_f6;
                                            var_f5 += second half of f64;
                                            HQ2_READ_FIFO = (bitwise f32) sp90;
                                            var_a3 += 1;
                                            var_f4 += second half of f64;
                                            HQ2_READ_FIFO = var_f7;
                                        } while (var_a6 != 0);
                                    }
                                    if ((temp_t0_2 >> 2) != 0) {
                                        do {
                                            HQ2_READ_FIFO = -1.269319e-29f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 1.0f;
                                            HQ2_READ_FIFO = arg2->unk10;
                                            HQ2_READ_FIFO = var_f5;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            HQ2_READ_FIFO = arg2->unk18;
                                            HQ2_READ_FIFO = var_f4;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            HQ2_READ_FIFO = second half of f64;
                                            HQ2_READ_FIFO = temp_f6;
                                            HQ2_READ_FIFO = (bitwise f32) sp90;
                                            HQ2_READ_FIFO = var_f7;
                                            HQ2_READ_FIFO = -1.269319e-29f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 1.0f;
                                            temp_f5 = var_f5 + (second half of f64);
                                            HQ2_READ_FIFO = arg2->unk10;
                                            HQ2_READ_FIFO = temp_f5;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            temp_f4_2 = (second half of f64) + var_f4;
                                            HQ2_READ_FIFO = arg2->unk18;
                                            HQ2_READ_FIFO = temp_f4_2;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            HQ2_READ_FIFO = second half of f64;
                                            HQ2_READ_FIFO = temp_f6;
                                            HQ2_READ_FIFO = (bitwise f32) sp90;
                                            HQ2_READ_FIFO = var_f7;
                                            HQ2_READ_FIFO = -1.269319e-29f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 1.0f;
                                            temp_f5_2 = temp_f5 + (second half of f64);
                                            HQ2_READ_FIFO = arg2->unk10;
                                            HQ2_READ_FIFO = temp_f5_2;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            temp_f4_3 = (second half of f64) + temp_f4_2;
                                            HQ2_READ_FIFO = arg2->unk18;
                                            HQ2_READ_FIFO = temp_f4_3;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            HQ2_READ_FIFO = second half of f64;
                                            HQ2_READ_FIFO = temp_f6;
                                            HQ2_READ_FIFO = (bitwise f32) sp90;
                                            HQ2_READ_FIFO = var_f7;
                                            HQ2_READ_FIFO = -1.269319e-29f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 0.0f;
                                            HQ2_READ_FIFO = 1.0f;
                                            temp_f5_3 = temp_f5_2 + (second half of f64);
                                            HQ2_READ_FIFO = arg2->unk10;
                                            HQ2_READ_FIFO = temp_f5_3;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            temp_f4_4 = (second half of f64) + temp_f4_3;
                                            HQ2_READ_FIFO = arg2->unk18;
                                            HQ2_READ_FIFO = temp_f4_4;
                                            HQ2_READ_FIFO = (f32) sp80;
                                            HQ2_READ_FIFO = second half of f64;
                                            var_a3 += 4;
                                            HQ2_READ_FIFO = temp_f6;
                                            var_f4 = (second half of f64) + temp_f4_4;
                                            HQ2_READ_FIFO = (bitwise f32) sp90;
                                            var_f5 = temp_f5_3 + (second half of f64);
                                            HQ2_READ_FIFO = var_f7;
                                        } while (temp_f23_2 != var_a3);
                                    }
                                    var_a3 = temp_f23_2;
                                }
                                var_f7 = var_f20_2;
                                if (var_a7 != 0) {
                                    goto loop_56;
                                }
                            }
                        } else {
                            var_a7_2 = var_a0;
                            if (var_a0 != 0) {
                                temp_a1_3 = (var_a0 >= 1U) ? var_a0 : 1U;
                                var_a4 = 0x8F80B968;
                                if (temp_a1_3 & 1) {
                                    var_f15 = second half of f64;
                                    HQ2_READ_FIFO = -1.269319e-29f;
                                    HQ2_READ_FIFO = 0.0f;
                                    HQ2_READ_FIFO = 0.0f;
                                    HQ2_READ_FIFO = 0.0f;
                                    HQ2_READ_FIFO = 1.0f;
                                    HQ2_READ_FIFO = arg2->unk10;
                                    HQ2_READ_FIFO = var_f5;
                                    HQ2_READ_FIFO = (f32) sp80;
                                    HQ2_READ_FIFO = arg2->unk18;
                                    HQ2_READ_FIFO = var_f4;
                                    HQ2_READ_FIFO = second half of f64;
                                    HQ2_READ_FIFO = (bitwise f32) sp88;
                                    HQ2_READ_FIFO = var_f22;
                                    var_f5 += second half of f64;
                                    HQ2_READ_FIFO = (bitwise f32) sp90;
                                    HQ2_READ_FIFO = var_f20_2;
                                    var_f20_2 += second half of f64;
                                    var_f22 += second half of f64;
                                    var_a7_2 = var_a0 - 1;
                                    var_f4 += second half of f64;
                                }
                                if (((s32) temp_a1_3 >> 1) != 0) {
                                    do {
                                        HQ2_READ_FIFO = -1.269319e-29f;
                                        HQ2_READ_FIFO = 0.0f;
                                        HQ2_READ_FIFO = 0.0f;
                                        HQ2_READ_FIFO = 0.0f;
                                        HQ2_READ_FIFO = 1.0f;
                                        HQ2_READ_FIFO = arg2->unk10;
                                        HQ2_READ_FIFO = var_f5;
                                        HQ2_READ_FIFO = (f32) sp80;
                                        HQ2_READ_FIFO = arg2->unk18;
                                        HQ2_READ_FIFO = var_f4;
                                        HQ2_READ_FIFO = (f32) sp80;
                                        HQ2_READ_FIFO = (bitwise f32) sp88;
                                        HQ2_READ_FIFO = var_f22;
                                        HQ2_READ_FIFO = second half of f64;
                                        HQ2_READ_FIFO = var_f20_2;
                                        HQ2_READ_FIFO = -1.269319e-29f;
                                        HQ2_READ_FIFO = 0.0f;
                                        HQ2_READ_FIFO = 0.0f;
                                        HQ2_READ_FIFO = 0.0f;
                                        HQ2_READ_FIFO = 1.0f;
                                        temp_f5_4 = var_f5 + (second half of f64);
                                        HQ2_READ_FIFO = arg2->unk10;
                                        HQ2_READ_FIFO = temp_f5_4;
                                        HQ2_READ_FIFO = (f32) sp80;
                                        temp_f4_5 = (second half of f64) + var_f4;
                                        HQ2_READ_FIFO = arg2->unk18;
                                        var_f5 = temp_f5_4 + (second half of f64);
                                        HQ2_READ_FIFO = temp_f4_5;
                                        temp_f21 = var_f20_2 + var_f15;
                                        HQ2_READ_FIFO = (f32) sp80;
                                        temp_f22 = var_f22 + var_f15;
                                        HQ2_READ_FIFO = (bitwise f32) sp88;
                                        var_a7_2 -= 2;
                                        var_f20_2 = temp_f21 + var_f15;
                                        HQ2_READ_FIFO = temp_f22;
                                        var_f22 = temp_f22 + var_f15;
                                        HQ2_READ_FIFO = second half of f64;
                                        var_f4 = (second half of f64) + temp_f4_5;
                                        HQ2_READ_FIFO = temp_f21;
                                    } while (var_a7_2 != 0);
                                }
                            }
                        }
                    }
                    HQ2_READ_FIFO = 1.14796e-40f;
                    if (temp_s2->unk96F4 != 0) {
                        temp_s2->unk9830 = 0;
                        HQ2_READ_FIFO = 9.3364e-41f;
                        HQ2_READ_FIFO = 3.5e-43f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                        HQ2_READ_FIFO = 9.1934e-41f;
                    }
                    temp_s2->unk9830 = 1;
                    temp_a2_2 = arg1->unk14;
                    if (__glOdysseyClosePMObjReference(temp_s2, arg1->unk10, temp_a2_2, temp_a2_2, var_a4) != 0) {
                        if (__glOdysseyClosePMObjWriteReference(temp_s2, arg0->unk10, arg0->unk14) != 0) {
                            temp_s2->unk7C00 = (s32) sp108;
                            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 4);
                            *(void *)0x1018 = 2;
                            temp_s2->unk7CDC = (s32) sp10.unk18;
                            temp_s2->unk7CD8 = (s32) sp10.unk14;
                            temp_s2->unk7CD4 = (u32) sp10.unk10;
                            temp_s2->unk7CD0 = (s32) sp10.unkC;
                            temp_s2->unk7CCC = (s32) sp10.unk8;
                            temp_s2->unk7CC8 = (s32) sp10.unk4;
                            temp_s2->unk7CC4 = sp10;
                            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x200);
                            *(void *)0x1018 = 2;
                            temp_s2->unk7FB8 = (s32) sp120;
                            temp_s2->unk7FB4 = (s32) sp118;
                            temp_s2->unk7FB0 = (s32) sp110;
                            if (temp_s2->unk9830 != 0) {
                                temp_s2->unk9830 = 0;
                                HQ2_READ_FIFO = 9.3364e-41f;
                                HQ2_READ_FIFO = 3.5e-43f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                                HQ2_READ_FIFO = 9.1934e-41f;
                            }
                            HQ2_READ_FIFO = 9.7121e-41f;
                            HQ2_READ_FIFO = (bitwise f32) temp_s2->unk7FB0;
                            HQ2_READ_FIFO = (bitwise f32) temp_s2->unk7FB4;
                            HQ2_READ_FIFO = (bitwise f32) temp_s2->unk7FB8;
                            temp_s2->unk9830 = 0;
                            HQ2_READ_FIFO = 9.3364e-41f;
                            HQ2_READ_FIFO = 3.5e-43f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            HQ2_READ_FIFO = 9.1934e-41f;
                            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x1000);
                            *(void *)0x1018 = 2;
                            temp_s2->unk7FE0 = (s32) sp140;
                            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x800);
                            *(void *)0x1018 = 2;
                            temp_s2->unk96A8 = (s32) sp100;
                            temp_s2->unk96A4 = (s32) sp138;
                            temp_s2->unk96A0 = (s32) sp130;
                            temp_s2->unk969C = (s32) sp128;
                            temp_s2->unk16960 = (s32) (0x200000 | temp_s2->unk16960);
                            *(void *)0x1018 = 2;
                            temp_s2->unk7C24 = (u32) spD8;
                            temp_s2->unk7C20 = (u32) spE0;
                            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x10);
                            *(void *)0x1018 = 2;
                            if ((arg0->unk8 == 0) || (spE8 != 1)) {
                                if (arg0->unkA != 0) {
                                    temp_s2->unk7C5C = (s32) spF0;
                                    temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x80);
                                    *(void *)0x1018 = 2;
                                }
                            } else {
                                temp_s2->unk7C3C = (s32) spB8;
                                temp_s2->unk7C38 = (s32) spD0;
                                temp_s2->unk7C34 = (s32) spC8;
                                temp_s2->unk7BFC = (s32) spC0;
                                temp_s2->unk7C5C = (s32) spF0;
                                temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x83);
                                *(void *)0x1018 = 2;
                            }
                        } else {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x505);
                        }
                    } else {
                        __glSetError(0x505);
                    }
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(0x501);
                }
            } else {
                M2C_ERROR(/* Read from unset register $t9 */)(0x501);
            }
        } else {
            __glSetError(0x505);
        }
    } else {
        __glSetError(0x505);
    }
}

/*
Decompilation failure in function OdysseyImageCalcXferCopyParams:

Unable to determine jump table for jr instruction at ody_image_move.s line 8367.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 __glOdysseyImageCalcXferWriteParams(u32 arg0, u32 arg1, s32 arg2, s64 *arg3) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_a0;
    s32 var_a2;
    s8 var_t2;
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    arg3->unk0 = 0;
    arg3->unk0 = 0;
    arg3->unk14 = 0;
    arg3->unk10 = 0;
    arg3->unkC = 0;
    arg3->unk8 = 0;
    arg3->unk4 = 0;
    if ((arg0 == 0x1906) || ((arg2 != 0) && (arg2 != 3))) {
        if ((arg0 == 0x1909) || (arg0 == 0x190A) || (arg0 == 0x8049)) {
            switch (arg2) {                         /* switch 2; irregular */
            case 7:                                 /* switch 2 */
            case 8:                                 /* switch 2 */
            case 11:                                /* switch 2 */
                /* fallthrough */
            case 10:                                /* switch 2 */
            case 12:                                /* switch 2 */
            case 13:                                /* switch 2 */
                arg3->unk3 = 1U;
                break;
            }
        }
        if (arg0 >= 0x1907U) {
            if (arg0 < 0x1908U) {
                temp_a0 = arg1 < 0x1405U;
                arg3->unk1 = 9;
                if (temp_a0 == 0) {
                    if (arg1 >= 0x1406U) {
                        if (arg1 >= 0x8363U) {
                            if (arg1 > 0x8363U) {
                                if (arg1 == 0x8364) {
                                    arg3->unk1 = 0xD;
                                    goto block_14;
                                }
                                /* Duplicate return node #118. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
block_14:
                            if (arg2 != 0xA) {
                                arg3->unkC = 8;
                                arg3->unk8 = 0;
                                var_a2 = 0;
                                arg3->unk2 = 0xA;
                            } else {
                                arg3->unkC = 0xA;
                                arg3->unk8 = 1;
                                var_a2 = 1;
                                arg3->unk2 = 0xC;
                            }
                            arg3->unk15 = 2;
                            var_a0 = 2;
                            goto block_70;
                        }
                        if (arg1 >= 0x8362U) {
                            if (arg1 <= 0x8362U) {
                                arg3->unk1 = 0xD;
                                goto block_174;
                            }
                            /* Duplicate return node #118. Try simplifying control flow for better match */
                            arg3->unk0 = 0;
                            return 0;
                        }
                        if (arg1 == 0x8032) {
block_174:
                            arg3->unk15 = 2;
                            arg3->unkC = 7;
                            var_a0 = 2;
                            arg3->unk8 = 0;
                            var_a2 = 0;
                            var_t2 = 5;
                            goto block_69;
                        }
                        /* Duplicate return node #118. Try simplifying control flow for better match */
                        arg3->unk0 = 0;
                        return 0;
                    }
                    goto block_68;
                }
                temp_a6 = arg1 < 0x1402U;
                if (temp_a6 == 0) {
                    if (arg1 >= 0x1403U) {
                        if (arg1 >= 0x1404U) {
                            if (temp_a0 != 0) {
block_68:
                                arg3->unk15 = 3;
                                arg3->unkC = 0xC;
                                var_a0 = 3;
                                arg3->unk8 = 2;
                                var_a2 = 2;
                                var_t2 = 4;
                                goto block_69;
                            }
                            /* Duplicate return node #118. Try simplifying control flow for better match */
                            arg3->unk0 = 0;
                            return 0;
                        }
                        if (arg1 == 0x1403) {
                            goto block_143;
                        }
                        /* Duplicate return node #118. Try simplifying control flow for better match */
                        arg3->unk0 = 0;
                        return 0;
                    }
block_143:
                    var_a0 = 3;
                    arg3->unk15 = 3;
                    arg3->unkC = 0xC;
                    arg3->unk8 = 2;
                    arg3->unk2 = 3;
                    var_a2 = 2;
                    goto block_70;
                }
                if (arg1 >= 0x1401U) {
                    if (temp_a6 == 0) {
                        /* Duplicate return node #118. Try simplifying control flow for better match */
                        arg3->unk0 = 0;
                        return 0;
                    }
                    goto block_135;
                }
                if (arg1 == 0x1400) {
block_135:
                    if (arg2 != 0xC) {
                        arg3->unkC = 0xA;
                        arg3->unk8 = 1;
                        var_a2 = 1;
                        arg3->unk2 = 2;
                    } else {
                        arg3->unkC = 0xC;
                        arg3->unk8 = 2;
                        var_a2 = 2;
                        arg3->unk2 = 0xB;
                    }
                    arg3->unk15 = 2;
                    var_a0 = 2;
                    goto block_70;
                }
                arg3->unk0 = 0;
                return 0;
            }
            if (arg0 >= 0x8000U) {
                if (arg0 <= 0x8000U) {
                    arg3->unk1 = 0xC;
                    if (arg1 >= 0x8034U) {
                        if (arg1 > 0x8034U) {
                            if (arg1 >= 0x8366U) {
                                if (arg1 > 0x8366U) {
                                    if (arg1 >= 0x8368U) {
                                        if (arg1 <= 0x8368U) {
                                            /* Duplicate return node #47. Try simplifying control flow for better match */
                                            arg3->unk0 = 0;
                                            return 0;
                                        }
                                        /* Duplicate return node #199. Try simplifying control flow for better match */
                                        arg3->unk0 = 0;
                                        return 0;
                                    }
                                    if (arg1 == 0x8367) {
                                        arg3->unk1 = 0xB;
                                        goto block_201;
                                    }
                                    /* Duplicate return node #199. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                /* Duplicate return node #47. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
                            if (arg1 >= 0x8036U) {
                                if (arg1 > 0x8036U) {
                                    if (arg1 == 0x8365) {
                                        arg3->unk1 = 0xB;
                                        goto block_172;
                                    }
                                    /* Duplicate return node #199. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                /* Duplicate return node #47. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
                            if (arg1 != 0x8035) {
                                /* Duplicate return node #199. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
                            goto block_202;
                        }
                        arg3->unk0 = 0;
                        return 0;
                    }
                    if (arg1 >= 0x1403U) {
                        if (arg1 >= 0x1404U) {
                            if (arg1 >= 0x1405U) {
                                if (arg1 >= 0x1406U) {
                                    if (arg1 == 0x8033) {
block_172:
                                        arg3->unk15 = 2;
                                        arg3->unkC = 7;
                                        var_a0 = 2;
                                        arg3->unk8 = 0;
                                        var_a2 = 0;
                                        arg3->unk2 = 6;
                                        goto block_70;
                                    }
                                    /* Duplicate return node #199. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                goto block_219;
                            }
                            if (arg1 == 0x1404) {
block_219:
                                arg3->unk15 = 3;
                                var_a0 = 3;
                                arg3->unkC = 0xC;
                                arg3->unk8 = 2;
                                var_a2 = 2;
                                var_t2 = 4;
block_69:
                                arg3->unk2 = var_t2;
                                goto block_70;
                            }
                            /* Duplicate return node #199. Try simplifying control flow for better match */
                            arg3->unk0 = 0;
                            return 0;
                        }
                        goto block_182;
                    }
                    if (arg1 >= 0x1401U) {
                        if (arg1 >= 0x1402U) {
                            if (arg1 == 0x1402) {
block_182:
                                var_a0 = 3;
                                arg3->unk15 = 3;
                                arg3->unkC = 0xC;
                                arg3->unk8 = 2;
                                arg3->unk2 = 3;
                                var_a2 = 2;
                                goto block_70;
                            }
                            /* Duplicate return node #199. Try simplifying control flow for better match */
                            arg3->unk0 = 0;
                            return 0;
                        }
                        goto block_202;
                    }
                    if (arg1 == 0x1400) {
block_201:
block_202:
                        if (arg2 != 0xC) {
                            arg3->unkC = 0xA;
                            arg3->unk8 = 1;
                            var_a2 = 1;
                            arg3->unk2 = 2;
                        } else {
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            var_a2 = 2;
                            arg3->unk2 = 0xB;
                        }
                        arg3->unk15 = 2;
                        var_a0 = 2;
                        goto block_70;
                    }
                    arg3->unk0 = 0;
                    return 0;
                }
                if (arg0 >= 0x80E0U) {
                    if (arg0 <= 0x80E0U) {
                        temp_a0_2 = arg1 < 0x1405U;
                        arg3->unk1 = 0xD;
                        if (temp_a0_2 == 0) {
                            if (arg1 >= 0x1406U) {
                                if (arg1 >= 0x8363U) {
                                    if (arg1 > 0x8363U) {
                                        if (arg1 == 0x8364) {
                                            arg3->unk1 = 9;
                                            goto block_107;
                                        }
                                        /* Duplicate return node #268. Try simplifying control flow for better match */
                                        arg3->unk0 = 0;
                                        return 0;
                                    }
block_107:
                                    if (arg2 != 0xA) {
                                        arg3->unkC = 8;
                                        arg3->unk8 = 0;
                                        var_a2 = 0;
                                        arg3->unk2 = 0xA;
                                    } else {
                                        arg3->unkC = 0xA;
                                        arg3->unk8 = 1;
                                        var_a2 = 1;
                                        arg3->unk2 = 0xC;
                                    }
                                    arg3->unk15 = 2;
                                    var_a0 = 2;
                                    goto block_70;
                                }
                                if (arg1 >= 0x8362U) {
                                    if (arg1 <= 0x8362U) {
                                        /* Duplicate return node #283. Try simplifying control flow for better match */
                                        arg3->unk0 = 0;
                                        return 0;
                                    }
                                    /* Duplicate return node #268. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                if (arg1 != 0x8032) {
                                    /* Duplicate return node #268. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                arg3->unk0 = 0;
                                return 0;
                            }
                            goto block_193;
                        }
                        temp_a6_2 = arg1 < 0x1402U;
                        if (temp_a6_2 == 0) {
                            if (arg1 >= 0x1403U) {
                                if (arg1 >= 0x1404U) {
                                    if (temp_a0_2 != 0) {
block_193:
                                        arg3->unk15 = 3;
                                        var_a0 = 3;
                                        arg3->unkC = 0xC;
                                        arg3->unk8 = 2;
                                        var_a2 = 2;
                                        arg3->unk2 = 4;
                                        goto block_70;
                                    }
                                    /* Duplicate return node #268. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                if (arg1 == 0x1403) {
                                    goto block_266;
                                }
                                /* Duplicate return node #268. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
block_266:
                            var_a0 = 3;
                            arg3->unk15 = 3;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            arg3->unk2 = 3;
                            var_a2 = 2;
                            goto block_70;
                        }
                        if (arg1 >= 0x1401U) {
                            if (temp_a6_2 == 0) {
                                /* Duplicate return node #268. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
                            goto block_243;
                        }
                        if (arg1 == 0x1400) {
block_243:
                            if (arg2 != 0xC) {
                                arg3->unkC = 0xA;
                                arg3->unk8 = 1;
                                var_a2 = 1;
                                arg3->unk2 = 2;
                            } else {
                                arg3->unkC = 0xC;
                                arg3->unk8 = 2;
                                var_a2 = 2;
                                arg3->unk2 = 0xB;
                            }
                            arg3->unk15 = 2;
                            var_a0 = 2;
                            goto block_70;
                        }
                        arg3->unk0 = 0;
                        return 0;
                    }
                    if (arg0 == 0x80E1) {
                        arg3->unk1 = 0x11;
                        if (arg1 >= 0x8036U) {
                            if (arg1 > 0x8036U) {
                                if (arg1 >= 0x8367U) {
                                    if (arg1 <= 0x8367U) {
                                        arg3->unk1 = 0x10;
                                        goto block_307;
                                    }
                                    if (arg1 == 0x8368) {
                                        arg3->unk1 = 0x10;
                                        goto block_295;
                                    }
                                    /* Duplicate return node #251. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                if (arg1 >= 0x8366U) {
                                    if (arg1 <= 0x8366U) {
                                        arg3->unk1 = 0x10;
                                        goto block_304;
                                    }
                                    /* Duplicate return node #251. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                if (arg1 == 0x8365) {
                                    arg3->unk1 = 0x10;
                                    goto block_300;
                                }
                                /* Duplicate return node #251. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
block_295:
                            arg3->unk15 = 3;
                            var_a0 = 3;
                            arg3->unkC = 0xB;
                            arg3->unk8 = 1;
                            var_a2 = 1;
                            arg3->unk2 = 8;
                            goto block_70;
                        }
                        if (arg1 >= 0x8034U) {
                            if (arg1 > 0x8034U) {
                                if (arg1 != 0x8035) {
                                    /* Duplicate return node #251. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                goto block_308;
                            }
block_304:
                            arg3->unk15 = 2;
                            arg3->unkC = 8;
                            var_a0 = 2;
                            arg3->unk8 = 0;
                            var_a2 = 0;
                            arg3->unk2 = 7;
                            goto block_70;
                        }
                        if (arg1 >= 0x8033U) {
                            if (arg1 <= 0x8033U) {
block_300:
                                arg3->unk15 = 2;
                                arg3->unkC = 7;
                                var_a0 = 2;
                                arg3->unk8 = 0;
                                var_a2 = 0;
                                arg3->unk2 = 6;
                                goto block_70;
                            }
                            /* Duplicate return node #251. Try simplifying control flow for better match */
                            arg3->unk0 = 0;
                            return 0;
                        }
                        if (arg1 == 0x1401) {
block_307:
block_308:
                            arg3->unk15 = 2;
                            arg3->unkC = 0xA;
                            arg3->unk8 = 1;
                            var_a2 = 1;
                            arg3->unk2 = 2;
                            var_a0 = 2;
                            goto block_70;
                        }
                        arg3->unk0 = 0;
                        return 0;
                    }
                    /* Duplicate return node #77. Try simplifying control flow for better match */
                    arg3->unk0 = 0;
                    return 0;
                }
                if (arg0 == 0x8049) {
                    arg3->unk1 = 3;
                    switch (arg1) {                 /* switch 8; irregular */
                    default:                        /* switch 8 */
                        arg3->unk0 = 0;
                        return 0;
                    case 0x1400:                    /* switch 8 */
                    case 0x1401:                    /* switch 8 */
                        arg3->unk2 = 2;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 2;
                            var_a2 = 1;
                            arg3->unkC = 0xA;
                            var_a0 = 2;
                            arg3->unk8 = 1;
                        } else {
                            arg3->unk15 = 1;
                            var_a2 = 0;
                            arg3->unkC = 1;
                            var_a0 = 1;
                            arg3->unk8 = 0;
                        }
                        goto block_70;
                    case 0x1404:                    /* switch 8 */
                    case 0x1405:                    /* switch 8 */
                        arg3->unk2 = 4;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 3;
                            var_a2 = 2;
                            arg3->unkC = 0xC;
                            var_a0 = 3;
                            arg3->unk8 = 2;
                        } else {
                            arg3->unk15 = 1;
                            var_a2 = 0;
                            arg3->unkC = 4;
                            var_a0 = 1;
                            arg3->unk8 = 0;
                        }
                        goto block_70;
                    case 0x1402:                    /* switch 8 */
                    case 0x1403:                    /* switch 8 */
                        arg3->unk2 = 3;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 3;
                            var_a2 = 2;
                            arg3->unkC = 0xC;
                            var_a0 = 3;
                            arg3->unk8 = 2;
                        } else {
                            arg3->unk15 = 1;
                            var_a2 = 0;
                            arg3->unkC = 4;
                            var_a0 = 1;
                            arg3->unk8 = 0;
                        }
                        goto block_70;
                    }
                } else {
                    /* Duplicate return node #77. Try simplifying control flow for better match */
                    arg3->unk0 = 0;
                    return 0;
                }
            } else if (arg0 >= 0x1909U) {
                if (arg0 < 0x190AU) {
                    arg3->unk1 = 2;
                    switch (arg1) {                 /* switch 6; irregular */
                    default:                        /* switch 6 */
                        arg3->unk0 = 0;
                        return 0;
                    case 0x1400:                    /* switch 6 */
                    case 0x1401:                    /* switch 6 */
                        arg3->unk2 = 2;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 2;
                            var_a2 = 1;
                            arg3->unkC = 0xA;
                            var_a0 = 2;
                            arg3->unk8 = 1;
                        } else {
                            arg3->unk15 = 1;
                            var_a2 = 0;
                            arg3->unkC = 2;
                            var_a0 = 1;
                            arg3->unk8 = 0;
                        }
                        goto block_70;
                    case 0x1404:                    /* switch 6 */
                    case 0x1405:                    /* switch 6 */
                        arg3->unk2 = 4;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 3;
                            var_a0 = 3;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            var_a2 = 2;
                        } else {
                            arg3->unk15 = 1;
                            var_a2 = 0;
                            arg3->unkC = 5;
                            var_a0 = 1;
                            arg3->unk8 = 0;
                        }
                        goto block_70;
                    case 0x1402:                    /* switch 6 */
                    case 0x1403:                    /* switch 6 */
                        arg3->unk2 = 3;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 3;
                            var_a0 = 3;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            var_a2 = 2;
                        } else {
                            arg3->unk15 = 1;
                            var_a2 = 0;
                            arg3->unkC = 5;
                            var_a0 = 1;
                            arg3->unk8 = 0;
                        }
                        goto block_70;
                    }
                } else if (arg0 == 0x190A) {
                    arg3->unk1 = 8;
                    switch (arg1) {                 /* switch 9; irregular */
                    default:                        /* switch 9 */
                        arg3->unk0 = 0;
                        return 0;
                    case 0x1400:                    /* switch 9 */
                    case 0x1401:                    /* switch 9 */
                        arg3->unk2 = 2;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 2;
                            var_a2 = 1;
                            arg3->unkC = 0xA;
                            var_a0 = 2;
                            arg3->unk8 = 1;
                        } else {
                            arg3->unk15 = 4;
                            var_a2 = 0;
                            arg3->unkC = 6;
                            arg3->unk8 = 0;
                            var_a0 = 4;
                        }
                        goto block_70;
                    case 0x1404:                    /* switch 9 */
                    case 0x1405:                    /* switch 9 */
                        arg3->unk2 = 4;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 3;
                            var_a2 = 2;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            var_a0 = 3;
                        } else {
                            arg3->unk15 = 4;
                            var_a2 = 1;
                            arg3->unkC = 9;
                            var_a0 = 4;
                            arg3->unk8 = 1;
                        }
                        goto block_70;
                    case 0x1402:                    /* switch 9 */
                    case 0x1403:                    /* switch 9 */
                        arg3->unk2 = 3;
                        if (arg3->unk3 != 0) {
                            arg3->unk15 = 3;
                            var_a2 = 2;
                            arg3->unkC = 0xC;
                            var_a0 = 3;
                            arg3->unk8 = 2;
                        } else {
                            arg3->unk15 = 4;
                            var_a2 = 1;
                            arg3->unkC = 9;
                            arg3->unk8 = 1;
                            var_a0 = 4;
                        }
                        goto block_70;
                    }
                } else {
                    /* Duplicate return node #77. Try simplifying control flow for better match */
                    arg3->unk0 = 0;
                    return 0;
                }
            } else if (arg0 == 0x1908) {
                if (temp_a5->unk4C8 != 0x85A3) {
                    arg3->unk1 = 0xB;
                    if (arg1 >= 0x8034U) {
                        if (arg1 > 0x8034U) {
                            if (arg1 >= 0x8366U) {
                                if (arg1 <= 0x8366U) {
                                    arg3->unk1 = 0xC;
                                    goto block_130;
                                }
                                if (arg1 >= 0x8368U) {
                                    if (arg1 <= 0x8368U) {
                                        arg3->unk1 = 0xC;
                                        goto block_291;
                                    }
                                    /* Duplicate return node #278. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                if (arg1 == 0x8367) {
                                    arg3->unk1 = 0xC;
                                    goto block_225;
                                }
                                /* Duplicate return node #278. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
                            if (arg1 >= 0x8036U) {
                                if (arg1 > 0x8036U) {
                                    if (arg1 == 0x8365) {
                                        arg3->unk1 = 0xC;
                                        goto block_210;
                                    }
                                    /* Duplicate return node #278. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
block_291:
                                arg3->unk15 = 3;
                                var_a0 = 3;
                                arg3->unkC = 0xB;
                                arg3->unk8 = 1;
                                var_a2 = 1;
                                arg3->unk2 = 8;
                                goto block_70;
                            }
                            if (arg1 == 0x8035) {
                                goto block_225;
                            }
                            /* Duplicate return node #278. Try simplifying control flow for better match */
                            arg3->unk0 = 0;
                            return 0;
                        }
block_130:
                        arg3->unk15 = 2;
                        arg3->unkC = 8;
                        var_a0 = 2;
                        arg3->unk8 = 0;
                        var_a2 = 0;
                        arg3->unk2 = 7;
                        goto block_70;
                    }
                    if (arg1 >= 0x1403U) {
                        var_a0 = 3;
                        if (arg1 >= 0x1404U) {
                            if (arg1 >= 0x1405U) {
                                if (arg1 >= 0x1406U) {
                                    if (arg1 == 0x8033) {
block_210:
                                        arg3->unk15 = 2;
                                        arg3->unkC = 7;
                                        var_a0 = 2;
                                        arg3->unk8 = 0;
                                        var_a2 = 0;
                                        arg3->unk2 = 6;
                                        goto block_70;
                                    }
                                    /* Duplicate return node #278. Try simplifying control flow for better match */
                                    arg3->unk0 = 0;
                                    return 0;
                                }
                                goto block_319;
                            }
                            if (arg1 != 0x1404) {
                                /* Duplicate return node #278. Try simplifying control flow for better match */
                                arg3->unk0 = 0;
                                return 0;
                            }
block_319:
                            arg3->unk15 = 3;
                            var_a0 = 3;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            var_a2 = 2;
                            arg3->unk2 = 4;
                            goto block_70;
                        }
                        goto block_247;
                    }
                    if (arg1 >= 0x1401U) {
                        if (arg1 < 0x1402U) {
                            goto block_225;
                        }
                        var_a0 = 3;
                        if (arg1 == 0x1402) {
block_247:
                            arg3->unk15 = 3;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            arg3->unk2 = 3;
                            var_a2 = 2;
                            goto block_70;
                        }
                        /* Duplicate return node #278. Try simplifying control flow for better match */
                        arg3->unk0 = 0;
                        return 0;
                    }
                    if (arg1 == 0x1400) {
block_225:
                        if (arg2 != 0xC) {
                            arg3->unkC = 0xA;
                            arg3->unk8 = 1;
                            var_a2 = 1;
                            arg3->unk2 = 2;
                        } else {
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            var_a2 = 2;
                            arg3->unk2 = 0xB;
                        }
                        arg3->unk15 = 2;
                        var_a0 = 2;
                        goto block_70;
                    }
                    arg3->unk0 = 0;
                    return 0;
                }
                if (temp_a5->unk4CC != 0x842F) {
                    arg3->unk1 = 0xA;
                } else {
                    arg3->unk1 = 0xE;
                }
                switch (arg1) {                     /* switch 10; irregular */
                default:                            /* switch 10 */
                    var_a0 = 3;
                    if (arg1 != 0x1403) {
                        arg3->unk0 = 0;
                        return 0;
                    }
block_311:
                    arg3->unk15 = 3;
                    arg3->unkC = 0xC;
                    arg3->unk8 = 2;
                    arg3->unk2 = 3;
                    var_a2 = 2;
                    goto block_70;
                case 0x1402:                        /* switch 10 */
                    var_a0 = 3;
                    goto block_311;
                case 0x1401:                        /* switch 10 */
                    /* fallthrough */
                case 0x1400:                        /* switch 10 */
                    arg3->unk15 = 2;
                    arg3->unkC = 0xA;
                    arg3->unk8 = 1;
                    var_a2 = 1;
                    arg3->unk2 = 2;
                    var_a0 = 2;
                    goto block_70;
                }
            } else {
                /* Duplicate return node #77. Try simplifying control flow for better match */
                arg3->unk0 = 0;
                return 0;
            }
        } else if (arg0 >= 0x1903U) {
            if (arg0 >= 0x1904U) {
                if (arg0 >= 0x1905U) {
                    if (arg0 >= 0x1906U) {
                        if (arg0 == 0x1906) {
                            if (arg2 != 0) {
                                if (arg2 != 3) {
                                    arg3->unk1 = 7;
                                    switch (arg1) { /* switch 1; irregular */
                                    default:        /* switch 1 */
                                        arg3->unk0 = 0;
                                        return 0;
                                    case 0x1400:    /* switch 1 */
                                    case 0x1401:    /* switch 1 */
                                        arg3->unk15 = 2;
                                        arg3->unkC = 0xA;
                                        arg3->unk8 = 1;
                                        var_a2 = 1;
                                        arg3->unk2 = 2;
                                        var_a0 = 2;
                                        goto block_70;
                                    case 0x1404:    /* switch 1 */
                                    case 0x1405:    /* switch 1 */
                                        arg3->unk15 = 3;
                                        var_a0 = 3;
                                        arg3->unkC = 0xC;
                                        arg3->unk8 = 2;
                                        var_a2 = 2;
                                        arg3->unk2 = 4;
                                        goto block_70;
                                    case 0x1402:    /* switch 1 */
                                    case 0x1403:    /* switch 1 */
                                        arg3->unk15 = 3;
                                        arg3->unkC = 0xC;
                                        var_a0 = 3;
                                        arg3->unk8 = 2;
                                        var_a2 = 2;
                                        arg3->unk2 = 3;
                                        goto block_70;
                                    }
                                } else {
                                    goto block_254;
                                }
                            } else {
block_254:
                                arg3->unk3 = 0U;
                                arg3->unk1 = 2;
                                switch (arg1) {     /* switch 11; irregular */
                                default:            /* switch 11 */
                                    arg3->unk0 = 0;
                                    return 0;
                                case 0x1400:        /* switch 11 */
                                case 0x1401:        /* switch 11 */
                                    arg3->unk15 = 1;
                                    arg3->unkC = 2;
                                    var_a0 = 1;
                                    arg3->unk8 = 0;
                                    var_a2 = 0;
                                    arg3->unk2 = 2;
                                    goto block_70;
                                case 0x1403:        /* switch 11 */
                                    /* fallthrough */
                                case 0x1402:        /* switch 11 */
                                    arg3->unk15 = 1;
                                    arg3->unkC = 5;
                                    var_a0 = 1;
                                    arg3->unk8 = 0;
                                    var_a2 = 0;
                                    arg3->unk2 = 3;
                                    goto block_70;
                                case 0x1404:        /* switch 11 */
                                case 0x1405:        /* switch 11 */
                                    arg3->unk15 = 1;
                                    arg3->unkC = 5;
                                    var_a0 = 1;
                                    arg3->unk8 = 0;
                                    var_a2 = 0;
                                    arg3->unk2 = 4;
                                    goto block_70;
                                }
                            }
                        } else {
                            /* Duplicate return node #77. Try simplifying control flow for better match */
                            arg3->unk0 = 0;
                            return 0;
                        }
                    } else {
                        goto block_54;
                    }
                } else {
                    if (arg0 == 0x1904) {
                        goto block_54;
                    }
                    /* Duplicate return node #77. Try simplifying control flow for better match */
                    arg3->unk0 = 0;
                    return 0;
                }
            } else {
block_54:
                if (arg0 != 0x1903) {
                    if (arg0 != 0x1904) {
                        arg3->unk1 = 6;
                    } else {
                        arg3->unk1 = 5;
                    }
                } else {
                    arg3->unk1 = 4;
                }
                if (arg1 != 0x1400) {
                    if (arg1 != 0x1401) {
                        var_a0 = 3;
                        switch (arg1) {             /* switch 3; irregular */
                        default:                    /* switch 3 */
                            arg3->unk0 = 0;
                            return 0;
                        case 0x1404:                /* switch 3 */
                        case 0x1405:                /* switch 3 */
                            var_a0 = 3;
                            arg3->unk15 = 3;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            var_a2 = 2;
                            arg3->unk2 = 4;
                            goto block_70;
                        case 0x1403:                /* switch 3 */
                            var_a0 = 3;
                            /* fallthrough */
                        case 0x1402:                /* switch 3 */
                            arg3->unk15 = 3;
                            arg3->unkC = 0xC;
                            arg3->unk8 = 2;
                            arg3->unk2 = 3;
                            var_a2 = 2;
                            goto block_70;
                        }
                    } else {
                        goto block_139;
                    }
                } else {
block_139:
                    arg3->unk15 = 2;
                    arg3->unkC = 0xA;
                    arg3->unk8 = 1;
                    var_a2 = 1;
                    arg3->unk2 = 2;
                    var_a0 = 2;
                    goto block_70;
                }
            }
        } else {
            if (arg0 >= 0x1901U) {
                if (arg0 < 0x1902U) {
                    arg3->unk1 = 0;
                    if (arg1 != 0x1404) {
                        if (arg1 != 0x1405) {
                            arg3->unk0 = 0;
                            return 0;
                        }
                        goto block_178;
                    }
block_178:
                    arg3->unk15 = 6;
                    arg3->unkC = 0x11;
                    var_a0 = 6;
                    arg3->unk8 = 0;
                    var_a2 = 0;
                    arg3->unk2 = 4;
                    goto block_70;
                }
                if (arg0 == 0x1902) {
                    arg3->unk1 = 0;
                    if (arg1 != 0x1404) {
                        if (arg1 != 0x1405) {
                            arg3->unk0 = 0;
                            return 0;
                        }
                        goto block_213;
                    }
block_213:
                    arg3->unk15 = 6;
                    var_a0 = 6;
                    arg3->unkC = -1;
                    arg3->unk8 = 1;
                    var_a2 = 1;
                    arg3->unk2 = 4;
                    goto block_70;
                }
                /* Duplicate return node #77. Try simplifying control flow for better match */
                arg3->unk0 = 0;
                return 0;
            }
            if (arg0 == 0x1900) {
                arg3->unk1 = 1;
                switch (arg1) {                     /* switch 7; irregular */
                default:                            /* switch 7 */
                    arg3->unk0 = 0;
                    return 0;
                case 0x1405:                        /* switch 7 */
                    arg3->unk15 = 7;
                    arg3->unkC = 0x11;
                    var_a0 = 7;
                    arg3->unk8 = 0;
                    var_a2 = 0;
                    arg3->unk2 = 4;
block_70:
                    switch (var_a0) {               /* switch 4; irregular */
                    default:                        /* switch 4 */
                        arg3->unk0 = 0;
                        return 0;
                    case 1:                         /* switch 4 */
                    case 4:                         /* switch 4 */
                    case 6:                         /* switch 4 */
                        /* fallthrough */
                    case 7:                         /* switch 4 */
                        arg3->unk14 = 0x10;
block_80:
                        switch (var_a2) {           /* switch 5; irregular */
                        default:                    /* switch 5 */
                            arg3->unk0 = 0;
                            return 0;
                        case 2:                     /* switch 5 */
block_110:
                            arg3->unk10 = 0;
block_111:
                            arg3->unk0 = 1;
                            if ((arg1 != 0x1400) && (arg1 != 0x1402) && (arg1 != 0x1404)) {
                                arg3->unk4 = 0;
                            } else {
                                arg3->unk4 = 1;
                                arg3->unk0 = (s8) ((temp_a5->unk7B70 & 0x80) != 0);
                            }
                            return 1;
                        case 0:                     /* switch 5 */
                            goto block_110;
                        case 1:                     /* switch 5 */
                            arg3->unk10 = 1;
                            goto block_111;
                        }
                        break;
                    case 2:                         /* switch 4 */
                        arg3->unk14 = 0x11;
                        goto block_80;
                    case 3:                         /* switch 4 */
                        arg3->unk14 = 0x12;
                        goto block_80;
                    }
                    break;
                case 0x1401:                        /* switch 7 */
                    arg3->unk15 = 7;
                    arg3->unkC = 0x10;
                    var_a0 = 7;
                    arg3->unk8 = 0;
                    var_a2 = 0;
                    arg3->unk2 = 2;
                    goto block_70;
                case 0x1403:                        /* switch 7 */
                    arg3->unk15 = 7;
                    arg3->unkC = 0x11;
                    var_a0 = 7;
                    arg3->unk8 = 0;
                    var_a2 = 0;
                    arg3->unk2 = 3;
                    goto block_70;
                }
            } else {
                arg3->unk0 = 0;
                return 0;
            }
        }
    } else {
        arg3->unk0 = 0;
        return 0;
    }
}

/*
Decompilation failure in function ImageCalcDmaFieldOffsets:

Unable to determine jump table for jr instruction at ody_image_move.s line 11285.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyImageCalcTexObjFormats:

Unable to determine jump table for jr instruction at ody_image_move.s line 11488.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 __glOdysseyImageCalcTexOffset(void *arg0, s32 *arg1) {
    s32 temp_a4;
    s32 temp_v0;

    temp_a4 = arg0->unk2C;
    temp_v0 = arg0->unk30;
    switch (temp_a4) {                              /* switch 1; irregular */
    default:                                        /* switch 1 */
        __glSetError(0x502, 2, temp_a4);
        return 0;
    case 2:                                         /* switch 1 */
        switch (temp_v0) {                          /* switch 2; irregular */
        default:                                    /* switch 2 */
            __glSetError(0x502, 2, temp_a4);
            return 0;
        case 6:                                     /* switch 2 */
block_8:
            *arg1 = 0;
            return 1;
        case 0:                                     /* switch 2 */
            goto block_8;
        case 2:                                     /* switch 2 */
            *arg1 = 2;
            /* Duplicate return node #9. Try simplifying control flow for better match */
            return 1;
        }
        break;
    case 0:                                         /* switch 1 */
        if ((temp_v0 != 0) && (temp_v0 != 3) && (temp_v0 != 4)) {
            __glSetError(0x502, 4, temp_a4);
            return 0;
        }
        goto block_8;
    case 1:                                         /* switch 1 */
        if (temp_v0 != 1) {
            __glSetError(0x502, 1, temp_a4);
            /* Duplicate return node #10. Try simplifying control flow for better match */
            return 0;
        }
        goto block_8;
    }
}

s32 __glOdysseyImageCalcPixelModeFields(void *arg0, void *arg1) {
    s64 sp0;
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 var_a4;

    if (arg1->unk0 != 0) {
        goto block_2;
    }
    if (arg1->unkA == 0) {
        sp0 = 0;
    } else {
block_2:
        sp0 = 1;
    }
    temp_a4 = arg1->unk34;
    temp_a1 = __glOdysseyImageCalcFieldFormat(arg1->unk34);
    if ((temp_a4 == 0x10) || (var_a4 = 0, (temp_a4 == 0x11))) {
        var_a4 = 1;
    }
    temp_t0 = (arg0->unk8 & ~0x70) | ((temp_a1 * 0x10) & 0x70);
    arg0->unk8 = temp_t0;
    arg0->unk4 = (s32) ((arg0->unk4 & ~0xFFF) | (arg1->unk1C & 0xFFF));
    temp_t0_2 = (temp_t0 & ~0x380) | ((arg1->unk30 << 7) & 0x380);
    arg0->unk8 = temp_t0_2;
    temp_a7 = ((arg1->unk2C << 0xA) & 0x1C00) | (temp_t0_2 & ~0x1C00);
    arg0->unk8 = temp_a7;
    arg0->unk8 = (s32) (((sp0 << 0x1B) & 0x08000000) | (((((var_a4 & 0xFF) << 0x13) & 0x80000) | ((((arg1->unk28 << 0xD) & 0xE000) | (temp_a7 & ~0xE000)) & ~0x80000)) & ~0x08000000));
    return 1;
}

s32 ImageToDmaHostPixelSize(s32 arg0) {
    return *(&sub_0daf0000 - 0x37F0 + (arg0 * 4));
}

/*
Decompilation failure in function __glOdysseyImageCalcXferReadParams:

Unable to determine jump table for jr instruction at ody_image_move.s line 11983.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void ImageUpdateRasterTokensForDrawable(void *arg0, s32 *arg1, s32 *arg2, s32 *arg3, s32 *arg4, s32 *arg5) {
    s32 temp_t0;
    u32 temp_at;
    void *temp_t9;

    temp_t9 = *(void **)0x1010;
    temp_at = temp_t9->unk11C28;
    arg0->unk8 = (s32) ((0x1FFFFFFF & temp_at & 0x1FFFFFFF) | ((((((temp_at >> 0x1A) & 1) << 0x1A) & 0x04000000) | ((((((temp_at >> 0x19) & 1) << 0x19) & 0x02000000) | ((((((temp_at >> 0x18) & 1) << 0x18) & 0x01000000) | ((((((temp_at >> 0x17) & 1) << 0x17) & 0x800000) | ((((((temp_at >> 0x16) & 1) << 0x16) & 0x400000) | ((((((temp_at >> 0x15) & 1) << 0x15) & 0x200000) | (((temp_at & 1) | ((((((temp_at >> 0x14) & 1) << 0x14) & 0x100000) | ((((((temp_at >> 0x11) & 3) << 0x11) & 0x60000) | (((0x10000 & (((temp_at >> 0x10) & 1) << 0x10)) | (arg0->unk8 & ~0x10000)) & ~0x60000)) & ~0x100000)) & ~1)) & ~0x200000)) & ~0x400000)) & ~0x800000)) & ~0x01000000)) & ~0x02000000)) & ~0x04000000)) & 0xE0000000));
    temp_t0 = temp_t9->unk11C34;
    *arg1 = temp_t0;
    if (temp_t9->unk700 & 0x40) {
        *arg1 = temp_t0 & ~0x800;
        *arg2 = temp_t9->unk11C3C;
        *arg3 = temp_t9->unk11C40;
        *arg4 = temp_t9->unk11C44;
        *arg5 = temp_t9->unk11CC0;
        return;
    }
    *arg2 = temp_t9->unk11C3C;
    *arg3 = temp_t9->unk11C40;
    *arg4 = temp_t9->unk11C44;
    *arg5 = temp_t9->unk11CC0;
}
