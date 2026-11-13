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
Error occurred while processing instruction: bgez $a4, .L0d9ac8c4

Error occurred while processing instruction: c.lt.d $f0, $f9

Error occurred while processing instruction: c.lt.d $f1, $f9

Error occurred while processing instruction: c.lt.d $f2, $f9

Error occurred while processing instruction: c.lt.d $f3, $f9

Error occurred while processing instruction: c.lt.d $f4, $f9

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
Error occurred while processing instruction: bgez $a4, .L0d9ac8c4

Error occurred while processing instruction: c.lt.d $f0, $f9

Error occurred while processing instruction: c.lt.d $f1, $f9

Error occurred while processing instruction: c.lt.d $f2, $f9

Error occurred while processing instruction: c.lt.d $f3, $f9

Error occurred while processing instruction: c.lt.d $f4, $f9

Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
Tried to use a double-precision instruction with odd-numbered float register $f9
s32 __glOdysseyImageLogBase2(s32, s64, void *, void *, ?); /* extern */
? __glSetError(?, void *, void *);                  /* extern */
f64 ceil(u64, s32, u32, s32, u32, s32, f64, ?);     /* extern */
f32 floorf(f32, s64, f64, ?);                       /* extern */
? memset(?, ?);                                     /* extern */
f32 __glOdysseyMap2DFilterToAlphas(void *, s64, s64, s64); /* static */
? __glOdysseyProgram2DOffsets(void *, s64, s64);    /* static */
void __glOdysseyProgramConvolutionFilter(void *arg0, void *arg1, s64 arg2, s64 arg3, f32 *, f32 *, s32, void *, f32); /* static */
void __glOdysseyProgramGenericConvolutionFilter(void *arg0, void *arg1, s32 arg2, void *, s64, s64, s32, s64); /* static */
extern ? __glDummyFilter;
extern ? sub_0daf0000;

void __glOdysseyInitLerpTree(void *arg0) {
    memset(0, 0x2D0);
    arg0->unk24C = 1.0f;
    arg0->unk248 = 1.0f;
    arg0->unk1BC = 1.0f;
    arg0->unk1E0 = 1.0f;
    arg0->unk1B8 = 1.0f;
    arg0->unk1B4 = 1.0f;
    arg0->unk128 = 1.0f;
    arg0->unk14C = 1.0f;
    arg0->unk124 = 1.0f;
    arg0->unk120 = 1.0f;
    arg0->unk94 = 1.0f;
    arg0->unkB8 = 1.0f;
    arg0->unk90 = 1.0f;
    arg0->unk8C = 1.0f;
    arg0->unk0 = 1.0f;
    arg0->unk24 = 1.0f;
}

s32 __glOdysseyGetFilter(s32 arg0) {
    s32 temp_a3;

    temp_a3 = *(s32 *)0x1010;
    if (arg0 != 0x8010) {
        if (arg0 != 0x8011) {
            return ((arg0 ^ 0x8012) == 0) ? (temp_a3 + 0x3A8) : 0;
        }
        return temp_a3 + 0x354;
    }
    return temp_a3 + 0x300;
}

void __glOdysseySetCurrentFilter(void *arg0, s32 arg1) {
    ? *var_v0;
    s32 temp_t0;
    s32 temp_t1;
    void *var_a1;

    if (arg1 != 1) {
        if (arg1 != 2) {
            var_a1 = NULL;
            if (arg1 != 3) {
                var_v0 = &__glDummyFilter;
                /* Duplicate return node #4. Try simplifying control flow for better match */
                arg0->unk2FC = var_v0;
                arg0->unk11BEC = var_a1;
                return;
            }
        }
        // Error: negative shift count
        // At instruction: bgez $a4, .L0d9ac8c4
        if (M2C_ERROR()) {
            arg0->unk2FC = (? *) (arg0 + 0x354);
            arg0->unk11BEC = (void *) (arg0 + 0x1031C);
            return;
        }
        temp_t0 = arg0->unk700 & 0x08000000;
        var_v0 = (temp_t0 == 0) ? &__glDummyFilter : (arg0 + 0x3A8);
        var_a1 = (temp_t0 == 0) ? NULL : (arg0 + 0x10E7C);
        arg0->unk2FC = var_v0;
        arg0->unk11BEC = var_a1;
        return;
    }
    temp_t1 = arg0->unk700 & 0x02000000;
    arg0->unk2FC = (? *) ((temp_t1 == 0) ? &__glDummyFilter : (arg0 + 0x300));
    arg0->unk11BEC = (void *) ((temp_t1 == 0) ? NULL : (arg0 + 0xF7BC));
}

void __glOdysseyCvtToFloat(u64 arg0, f32 *arg1, u64 arg2, u32 arg3, u32 arg4) {
    u64 sp20;
    f32 *var_s0;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f13_10;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f14_4;
    f32 temp_f14_5;
    f32 temp_f14_6;
    f32 temp_f14_7;
    f32 temp_f14_8;
    f32 temp_f14_9;
    f32 temp_f17;
    f32 temp_f17_2;
    f32 temp_f17_3;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f18_3;
    f32 temp_f18_4;
    f32 temp_f18_5;
    f32 temp_f18_6;
    f32 temp_f1;
    f32 temp_f3;
    f64 var_f6;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a5;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_4;
    s32 temp_f13;
    s32 temp_f13_2;
    s32 temp_f13_3;
    s32 temp_f13_4;
    s32 temp_f13_5;
    s32 temp_f13_6;
    s32 temp_f13_7;
    s32 temp_f13_8;
    s32 temp_f13_9;
    s32 temp_t1;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_a1_5;
    s32 var_a1_6;
    s32 var_a3;
    s32 var_a3_10;
    s32 var_a3_11;
    s32 var_a3_12;
    s32 var_a3_13;
    s32 var_a3_14;
    s32 var_a3_15;
    s32 var_a3_16;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    u32 temp_a6;
    u32 temp_a7_3;
    u32 temp_t0;
    u32 var_a4;
    u32 var_at;
    u64 temp_a0;
    u64 var_a0;
    u64 var_a4_2;
    u64 var_a4_3;
    u64 var_a4_4;
    u64 var_a4_5;
    u64 var_a4_6;
    u64 var_a4_7;
    u64 var_a5;
    u64 var_a6;
    u64 var_a7;
    u64 var_s1;
    u64 var_s1_2;
    u64 var_s1_3;
    u64 var_s1_4;
    u64 var_s1_5;
    u64 var_s2;
    u64 var_t1;

    var_a0 = arg0;
    var_a4 = arg4;
    var_t1 = var_a0;
    var_a7 = var_a0;
    var_a5 = var_a0;
    var_a6 = var_a0;
    var_s0 = arg1;
    var_s2 = var_a0;
    var_s1 = var_a0;
    if (arg3 >= 0x8034U) {
        var_a6 = arg2 + 3;
        if (arg3 > 0x8034U) {
            var_a1 = 0x8364;
            if (arg3 >= 0x8364U) {
                var_a0 = arg3 > 0x8364U;
                var_at = arg2 >> 0x1F;
                if (var_a0 != 0) {
                    var_a1_2 = 0x8367;
                    var_a4 = arg3 < 0x8367U;
                    var_a5 = arg3 > 0x8367U;
                    if (var_a4 == 0) {
                        var_a6 = 0x8368;
                        if (var_a5 != 0) {
                            sp20 = var_a7;
                            if (arg3 == 0x8368) {
                                temp_a7 = (s32) (((s32) arg2 >= 0) ? arg2 : (arg2 + 3)) >> 2;
                                var_s1_2 = sp20;
                                temp_f13 = (s32) ceil(var_a0, 0x8367, var_a4, (s32) var_a5, (u32) 0x8368, temp_a7, (f64) temp_a7, second half of f64);
                                if (temp_f13 > 0) {
                                    var_a3 = 0;
                                    if (temp_f13 & 1) {
                                        var_s0->unk0 = (f32) (((u32) *var_s1_2 >> 0x16) & 3) / 3.0f;
                                        var_s0->unk4 = (f32) ((f32) (((u32) *var_s1_2 >> 0xC) & 0x3FF) / 1023.0f);
                                        var_s0->unk8 = (f32) ((f32) (((u32) *var_s1_2 >> 2) & 0x3FF) / 1023.0f);
                                        temp_f14 = (f32) (*var_s1_2 & 0x3FF) / 1023.0f;
                                        var_s0 += 0x10;
                                        var_a3 = 1;
                                        var_s1_2 += 4;
                                        var_s0->unk-4 = temp_f14;
                                    }
                                    if ((temp_f13 >> 1) != 0) {
                                        do {
                                            var_s0->unk0 = (f32) (((u32) var_s1_2->unk0 >> 0x16) & 3) / 3.0f;
                                            var_s0->unk4 = (f32) ((f32) (((u32) var_s1_2->unk0 >> 0xC) & 0x3FF) / 1023.0f);
                                            var_s0->unk8 = (f32) ((f32) (((u32) var_s1_2->unk0 >> 2) & 0x3FF) / 1023.0f);
                                            var_s0->unkC = (f32) ((f32) (var_s1_2->unk0 & 0x3FF) / 1023.0f);
                                            var_s0->unk10 = (f32) ((f32) (((u32) var_s1_2->unk4 >> 0x16) & 3) / 3.0f);
                                            var_s0->unk14 = (f32) ((f32) (((u32) var_s1_2->unk4 >> 0xC) & 0x3FF) / 1023.0f);
                                            var_s0->unk18 = (f32) ((f32) (((u32) var_s1_2->unk4 >> 2) & 0x3FF) / 1023.0f);
                                            temp_f18 = (f32) (var_s1_2->unk4 & 0x3FF) / 1023.0f;
                                            var_a3 += 2;
                                            var_s0 += 0x20;
                                            var_s1_2 += 8;
                                            var_s0->unk-4 = temp_f18;
                                        } while (temp_f13 != var_a3);
                                    }
                                }
                            }
                        } else {
                            goto block_80;
                        }
                    } else if (arg3 >= 0x8366U) {
                        if (arg3 <= 0x8366U) {
                            temp_f13_2 = (s32) ceil(var_a0, 0x8366, var_a4, (s32) var_a5, (u32) var_a6, (s32) var_a7, (f64) ((s32) (((s32) arg2 >= 0) ? arg2 : (arg2 + 3)) >> 2), second half of f64);
                            if (temp_f13_2 > 0) {
                                var_a3_2 = 0;
                                if (temp_f13_2 & 1) {
                                    var_s0->unk0 = (f32) (((s32) *var_s2 >> 0xB) & 1);
                                    var_s0->unk4 = (f32) ((f32) (((s32) *var_s2 >> 6) & 0x1F) / 31.0f);
                                    var_s0->unk8 = (f32) ((f32) (((s32) *var_s2 >> 1) & 0x1F) / 31.0f);
                                    temp_f14_2 = (f32) (*var_s2 & 0x1F) / 31.0f;
                                    var_s0 += 0x10;
                                    var_a3_2 = 1;
                                    var_s2 += 2;
                                    var_s0->unk-4 = temp_f14_2;
                                }
                                if ((temp_f13_2 >> 1) != 0) {
                                    do {
                                        var_s0->unk0 = (f32) (((s32) var_s2->unk0 >> 0xB) & 1);
                                        var_s0->unk4 = (f32) ((f32) (((s32) var_s2->unk0 >> 6) & 0x1F) / 31.0f);
                                        var_s0->unk8 = (f32) ((f32) (((s32) var_s2->unk0 >> 1) & 0x1F) / 31.0f);
                                        var_s0->unkC = (f32) ((f32) (var_s2->unk0 & 0x1F) / 31.0f);
                                        var_s0->unk10 = (f32) (((s32) var_s2->unk2 >> 0xB) & 1);
                                        var_s0->unk14 = (f32) ((f32) (((s32) var_s2->unk2 >> 6) & 0x1F) / 31.0f);
                                        var_s0->unk18 = (f32) ((f32) (((s32) var_s2->unk2 >> 1) & 0x1F) / 31.0f);
                                        temp_f18_2 = (f32) (var_s2->unk2 & 0x1F) / 31.0f;
                                        var_a3_2 += 2;
                                        var_s0 += 0x20;
                                        var_s2 += 4;
                                        var_s0->unk-4 = temp_f18_2;
                                    } while (temp_f13_2 != var_a3_2);
                                }
                            }
                        }
                    } else if (arg3 == 0x8365) {
                        goto block_45;
                    }
                } else {
                    goto block_35;
                }
            } else {
                var_a1 = 0x8362;
                if (arg3 >= 0x8362U) {
                    if (arg3 > 0x8362U) {
                        var_at = arg2 >> 0x1F;
                        if (arg3 == 0x8363) {
block_35:
                            temp_a0 = (0xAAAA << 0x10) | 0xAAAB;
                            temp_v0 = (s32) MULTU_HI(((var_at == 0) ? arg2 : (u64) -(s32) arg2), temp_a0) >> 1;
                            temp_f13_3 = (s32) ceil(temp_a0, var_a1, (u32) var_a5, (s32) var_a6, (u32) var_a7, (bitwise s32) (f64) ((var_at == 0) ? temp_v0 : -temp_v0), second half of f64);
                            if (temp_f13_3 > 0) {
                                var_a3_3 = 0;
                                if (temp_f13_3 & 1) {
                                    var_s0->unk0 = (f32) (((s32) *var_s2 >> 0xB) & 0x1F) / 31.0f;
                                    var_s0->unk4 = (f32) ((f32) (((s32) *var_s2 >> 5) & 0x3F) / 63.0f);
                                    temp_f14_3 = (f32) (*var_s2 & 0x1F) / 31.0f;
                                    var_s0 += 0xC;
                                    var_a3_3 = 1;
                                    var_s2 += 2;
                                    var_s0->unk-4 = temp_f14_3;
                                }
                                if ((temp_f13_3 >> 1) != 0) {
                                    do {
                                        var_s0->unk0 = (f32) (((s32) var_s2->unk0 >> 0xB) & 0x1F) / 31.0f;
                                        var_s0->unk4 = (f32) ((f32) (((s32) var_s2->unk0 >> 5) & 0x3F) / 63.0f);
                                        var_s0->unk8 = (f32) ((f32) (var_s2->unk0 & 0x1F) / 31.0f);
                                        var_s0->unkC = (f32) ((f32) (((s32) var_s2->unk2 >> 0xB) & 0x1F) / 31.0f);
                                        var_s0->unk10 = (f32) ((f32) (((s32) var_s2->unk2 >> 5) & 0x3F) / 63.0f);
                                        temp_f17 = (f32) (var_s2->unk2 & 0x1F) / 31.0f;
                                        var_a3_3 += 2;
                                        var_s0 += 0x18;
                                        var_s2 += 4;
                                        var_s0->unk-4 = temp_f17;
                                    } while (temp_f13_3 != var_a3_3);
                                }
                            }
                        }
                    } else {
                        temp_a6 = arg2 >> 0x1F;
                        temp_a7_2 = (s32) MULTU_HI(((temp_a6 == 0) ? arg2 : (u64) -(s32) arg2), ((0xAAAA << 0x10) | 0xAAAB)) >> 1;
                        temp_a5 = (temp_a6 == 0) ? temp_a7_2 : -temp_a7_2;
                        temp_f13_4 = (s32) ceil(0x8362U, temp_a5, temp_a6, temp_a7_2, (bitwise u32) (f64) temp_a5, second half of f64);
                        if (temp_f13_4 > 0) {
                            var_a3_4 = 0;
                            if (temp_f13_4 & 1) {
                                var_s0->unk0 = (f32) (((s32) (u8) *var_s1 >> 5) & 3) / 3.0f;
                                var_s0->unk4 = (f32) ((f32) (((s32) (u8) *var_s1 >> 2) & 7) / 7.0f);
                                temp_f14_4 = (f32) ((u8) *var_s1 & 7) / 7.0f;
                                var_s0 += 0xC;
                                var_a3_4 = 1;
                                var_s1 += 1;
                                var_s0->unk-4 = temp_f14_4;
                            }
                            var_a4_2 = var_s1;
                            if ((temp_f13_4 >> 1) != 0) {
                                do {
                                    var_s0->unk0 = (f32) (((s32) var_a4_2->unk0 >> 5) & 3) / 3.0f;
                                    var_s0->unk4 = (f32) ((f32) (((s32) var_a4_2->unk0 >> 2) & 7) / 7.0f);
                                    var_s0->unk8 = (f32) ((f32) (var_a4_2->unk0 & 7) / 7.0f);
                                    var_s0->unkC = (f32) ((f32) (((s32) var_a4_2->unk1 >> 5) & 3) / 3.0f);
                                    var_s0->unk10 = (f32) ((f32) (((s32) var_a4_2->unk1 >> 2) & 7) / 7.0f);
                                    temp_f17_2 = (f32) (var_a4_2->unk1 & 7) / 7.0f;
                                    var_a3_4 += 2;
                                    var_s0 += 0x18;
                                    var_a4_2 += 2;
                                    var_s0->unk-4 = temp_f17_2;
                                } while (temp_f13_4 != var_a3_4);
                            }
                        }
                    }
                } else {
                    var_a1_2 = 0x8036;
                    if (arg3 >= 0x8036U) {
                        sp20 = var_a0;
                        if (arg3 <= 0x8036U) {
                            var_s1_3 = sp20;
                            temp_f13_5 = (s32) ceil(0x8036U, (s32) var_a5, (u32) var_a6, (s32) var_a7, (bitwise u32) (f64) ((s32) (((s32) arg2 >= 0) ? arg2 : (arg2 + 3)) >> 2), second half of f64);
                            if (temp_f13_5 > 0) {
                                var_a3_5 = 0;
                                if (temp_f13_5 & 1) {
                                    var_s0->unk0 = (f32) ((u32) *var_s1_3 >> 0x16) / 1023.0f;
                                    var_s0->unk4 = (f32) ((f32) (((u32) *var_s1_3 >> 0xC) & 0x3FF) / 1023.0f);
                                    var_s0->unk8 = (f32) ((f32) (((u32) *var_s1_3 >> 2) & 0x3FF) / 1023.0f);
                                    temp_f14_5 = (f32) (*var_s1_3 & 3) / 3.0f;
                                    var_s0 += 0x10;
                                    var_a3_5 = 1;
                                    var_s1_3 += 4;
                                    var_s0->unk-4 = temp_f14_5;
                                }
                                var_a4_3 = var_s1_3;
                                if ((temp_f13_5 >> 1) != 0) {
                                    do {
                                        var_s0->unk0 = (f32) ((u32) var_a4_3->unk0 >> 0x16) / 1023.0f;
                                        var_s0->unk4 = (f32) ((f32) (((u32) var_a4_3->unk0 >> 0xC) & 0x3FF) / 1023.0f);
                                        var_s0->unk8 = (f32) ((f32) (((u32) var_a4_3->unk0 >> 2) & 0x3FF) / 1023.0f);
                                        var_s0->unkC = (f32) ((f32) (var_a4_3->unk0 & 3) / 3.0f);
                                        var_s0->unk10 = (f32) ((f32) ((u32) var_a4_3->unk4 >> 0x16) / 1023.0f);
                                        var_s0->unk14 = (f32) ((f32) (((u32) var_a4_3->unk4 >> 0xC) & 0x3FF) / 1023.0f);
                                        var_s0->unk18 = (f32) ((f32) (((u32) var_a4_3->unk4 >> 2) & 0x3FF) / 1023.0f);
                                        temp_f18_3 = (f32) (var_a4_3->unk4 & 3) / 3.0f;
                                        var_a3_5 += 2;
                                        var_s0 += 0x20;
                                        var_a4_3 += 8;
                                        var_s0->unk-4 = temp_f18_3;
                                    } while (temp_f13_5 != var_a3_5);
                                }
                            }
                        }
                    } else {
                        sp20 = var_a0;
                        if (arg3 == 0x8035) {
block_80:
                            sp20 = var_a7;
                            var_s1_4 = sp20;
                            temp_f13_6 = (s32) ceil(var_a0, var_a1_2, var_a4, (s32) var_a5, (u32) var_a6, (s32) var_a7, (f64) ((s32) (((s32) arg2 >= 0) ? arg2 : (arg2 + 3)) >> 2), second half of f64);
                            if (temp_f13_6 > 0) {
                                var_a3_6 = 0;
                                if (temp_f13_6 & 1) {
                                    var_s0->unk0 = (f32) ((u32) *var_s1_4 >> 0x18) / 255.0f;
                                    var_s0->unk4 = (f32) ((f32) (((u32) *var_s1_4 >> 0x10) & 0xFF) / 255.0f);
                                    var_s0->unk8 = (f32) ((f32) (((u32) *var_s1_4 >> 8) & 0xFF) / 255.0f);
                                    temp_f14_6 = (f32) (*var_s1_4 & 0xFF) / 255.0f;
                                    var_s0 += 0x10;
                                    var_a3_6 = 1;
                                    var_s1_4 += 4;
                                    var_s0->unk-4 = temp_f14_6;
                                }
                                var_a4_4 = var_s1_4;
                                if ((temp_f13_6 >> 1) != 0) {
                                    do {
                                        var_s0->unk0 = (f32) ((u32) var_a4_4->unk0 >> 0x18) / 255.0f;
                                        var_s0->unk4 = (f32) ((f32) (((u32) var_a4_4->unk0 >> 0x10) & 0xFF) / 255.0f);
                                        var_s0->unk8 = (f32) ((f32) (((u32) var_a4_4->unk0 >> 8) & 0xFF) / 255.0f);
                                        var_s0->unkC = (f32) ((f32) (var_a4_4->unk0 & 0xFF) / 255.0f);
                                        var_s0->unk10 = (f32) ((f32) ((u32) var_a4_4->unk4 >> 0x18) / 255.0f);
                                        var_s0->unk14 = (f32) ((f32) (((u32) var_a4_4->unk4 >> 0x10) & 0xFF) / 255.0f);
                                        var_s0->unk18 = (f32) ((f32) (((u32) var_a4_4->unk4 >> 8) & 0xFF) / 255.0f);
                                        temp_f18_4 = (f32) (var_a4_4->unk4 & 0xFF) / 255.0f;
                                        var_a3_6 += 2;
                                        var_s0 += 0x20;
                                        var_a4_4 += 8;
                                        var_s0->unk-4 = temp_f18_4;
                                    } while (temp_f13_6 != var_a3_6);
                                }
                            }
                        }
                    }
                }
            }
        } else {
            temp_a7_3 = (s32) arg2 < 0;
            temp_a6_2 = (s32) ((temp_a7_3 == 0) ? arg2 : var_a6) >> 2;
            temp_f13_7 = (s32) ceil(var_a5, temp_a6_2, temp_a7_3, (bitwise s32) (f64) temp_a6_2, second half of f64);
            if (temp_f13_7 > 0) {
                var_a3_7 = 0;
                if (temp_f13_7 & 1) {
                    var_s0->unk0 = (f32) (((s32) *var_s2 >> 0xB) & 0x1F) / 31.0f;
                    var_s0->unk4 = (f32) ((f32) (((s32) *var_s2 >> 6) & 0x1F) / 31.0f);
                    var_s0->unk8 = (f32) ((f32) (((s32) *var_s2 >> 1) & 0x1F) / 31.0f);
                    temp_f14_7 = (f32) (*var_s2 & 1);
                    var_s0 += 0x10;
                    var_a3_7 = 1;
                    var_s2 += 2;
                    var_s0->unk-4 = temp_f14_7;
                }
                var_a4_5 = var_s2;
                if ((temp_f13_7 >> 1) != 0) {
                    do {
                        var_s0->unk0 = (f32) (((s32) var_a4_5->unk0 >> 0xB) & 0x1F) / 31.0f;
                        var_s0->unk4 = (f32) ((f32) (((s32) var_a4_5->unk0 >> 6) & 0x1F) / 31.0f);
                        var_s0->unk8 = (f32) ((f32) (((s32) var_a4_5->unk0 >> 1) & 0x1F) / 31.0f);
                        var_s0->unkC = (f32) (var_a4_5->unk0 & 1);
                        var_s0->unk10 = (f32) ((f32) (((s32) var_a4_5->unk2 >> 0xB) & 0x1F) / 31.0f);
                        var_s0->unk14 = (f32) ((f32) (((s32) var_a4_5->unk2 >> 6) & 0x1F) / 31.0f);
                        var_s0->unk18 = (f32) ((f32) (((s32) var_a4_5->unk2 >> 1) & 0x1F) / 31.0f);
                        temp_f18_5 = (f32) (var_a4_5->unk2 & 1);
                        var_a3_7 += 2;
                        var_s0 += 0x20;
                        var_a4_5 += 4;
                        var_s0->unk-4 = temp_f18_5;
                    } while (temp_f13_7 != var_a3_7);
                }
            }
        }
    } else {
        temp_a1 = arg3 < 0x1402U;
        if (arg3 >= 0x1404U) {
            if (arg3 < 0x1405U) {
                if ((s32) arg2 > 0) {
                    var_a1_3 = arg2 & 3;
                    var_a3_8 = 0;
                    if (var_a1_3 != 0) {
                        do {
                            var_a1_3 -= 1;
                            var_a3_8 += 1;
                            var_s0 += 4;
                            var_s0->unk-4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f0, $f4, $f0, $f5 */) / 4294967296.0);
                        } while (var_a1_3 != 0);
                    }
                    if (((s32) arg2 >> 2) != 0) {
                        do {
                            var_s0->unk0 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f7, $f4, $f7, $f5 */) / (second half of f64));
                            var_s0->unk4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f3, $f4, $f3, $f5 */) / (second half of f64));
                            var_s0->unk8 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f2, $f4, $f2, $f5 */) / (second half of f64));
                            var_a3_8 += 4;
                            var_s0 += 0x10;
                            var_s0->unk-4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f1, $f4, $f1, $f5 */) / (second half of f64));
                        } while (arg2 != var_a3_8);
                    }
                }
            } else if (arg3 >= 0x8032U) {
                if (arg3 > 0x8032U) {
                    if (arg3 == 0x8033) {
block_45:
                        temp_a1_2 = (s32) arg2 < 0;
                        temp_a0_2 = (s32) ((temp_a1_2 == 0) ? arg2 : (arg2 + 3)) >> 2;
                        temp_f13_8 = (s32) ceil((u64) temp_a0_2, temp_a1_2, var_a4, (s32) var_a5, (u32) var_a6, (s32) var_a7, (f64) temp_a0_2, second half of f64);
                        if (temp_f13_8 > 0) {
                            var_a3_9 = 0;
                            if (temp_f13_8 & 1) {
                                var_s0->unk0 = (f32) (((s32) *var_s2 >> 0xC) & 0xF) / 15.0f;
                                var_s0->unk4 = (f32) ((f32) (((s32) *var_s2 >> 8) & 0xF) / 15.0f);
                                var_s0->unk8 = (f32) ((f32) (((s32) *var_s2 >> 4) & 0xF) / 15.0f);
                                temp_f14_8 = (f32) (*var_s2 & 0xF) / 15.0f;
                                var_s0 += 0x10;
                                var_a3_9 = 1;
                                var_s2 += 2;
                                var_s0->unk-4 = temp_f14_8;
                            }
                            if ((temp_f13_8 >> 1) != 0) {
                                do {
                                    var_s0->unk0 = (f32) (((s32) var_s2->unk0 >> 0xC) & 0xF) / 15.0f;
                                    var_s0->unk4 = (f32) ((f32) (((s32) var_s2->unk0 >> 8) & 0xF) / 15.0f);
                                    var_s0->unk8 = (f32) ((f32) (((s32) var_s2->unk0 >> 4) & 0xF) / 15.0f);
                                    var_s0->unkC = (f32) ((f32) (var_s2->unk0 & 0xF) / 15.0f);
                                    var_s0->unk10 = (f32) ((f32) (((s32) var_s2->unk2 >> 0xC) & 0xF) / 15.0f);
                                    var_s0->unk14 = (f32) ((f32) (((s32) var_s2->unk2 >> 8) & 0xF) / 15.0f);
                                    var_s0->unk18 = (f32) ((f32) (((s32) var_s2->unk2 >> 4) & 0xF) / 15.0f);
                                    temp_f18_6 = (f32) (var_s2->unk2 & 0xF) / 15.0f;
                                    var_a3_9 += 2;
                                    var_s0 += 0x20;
                                    var_s2 += 4;
                                    var_s0->unk-4 = temp_f18_6;
                                } while (temp_f13_8 != var_a3_9);
                            }
                        }
                    }
                } else {
                    temp_t0 = arg2 >> 0x1F;
                    temp_t1 = (s32) MULTU_HI(((temp_t0 == 0) ? arg2 : (u64) -(s32) arg2), ((0xAAAA << 0x10) | 0xAAAB)) >> 1;
                    temp_a7_4 = (temp_t0 == 0) ? temp_t1 : -temp_t1;
                    temp_f13_9 = (s32) ceil(0x8032U, (s32) var_a5, (u32) var_a6, temp_a7_4, (bitwise u32) (f64) temp_a7_4, second half of f64);
                    if (temp_f13_9 > 0) {
                        var_a3_10 = 0;
                        if (temp_f13_9 & 1) {
                            var_s0->unk0 = (f32) (((s32) (u8) *var_s1 >> 5) & 7) / 7.0f;
                            var_s0->unk4 = (f32) ((f32) (((s32) (u8) *var_s1 >> 2) & 7) / 7.0f);
                            temp_f14_9 = (f32) ((u8) *var_s1 & 3) / 3.0f;
                            var_s0 += 0xC;
                            var_a3_10 = 1;
                            var_s1 += 1;
                            var_s0->unk-4 = temp_f14_9;
                        }
                        var_a4_6 = var_s1;
                        if ((temp_f13_9 >> 1) != 0) {
                            do {
                                var_s0->unk0 = (f32) (((s32) var_a4_6->unk0 >> 5) & 7) / 7.0f;
                                var_s0->unk4 = (f32) ((f32) (((s32) var_a4_6->unk0 >> 2) & 7) / 7.0f);
                                var_s0->unk8 = (f32) ((f32) (var_a4_6->unk0 & 3) / 3.0f);
                                var_s0->unkC = (f32) ((f32) (((s32) var_a4_6->unk1 >> 5) & 7) / 7.0f);
                                var_s0->unk10 = (f32) ((f32) (((s32) var_a4_6->unk1 >> 2) & 7) / 7.0f);
                                temp_f17_3 = (f32) (var_a4_6->unk1 & 3) / 3.0f;
                                var_a3_10 += 2;
                                var_s0 += 0x18;
                                var_a4_6 += 2;
                                var_s0->unk-4 = temp_f17_3;
                            } while (temp_f13_9 != var_a3_10);
                        }
                    }
                }
            } else if (arg3 >= 0x1406U) {
                if ((arg3 < 0x1407U) && ((s32) arg2 > 0)) {
                    var_a3_11 = 0;
                    if (arg2 & 1) {
                        var_s0 += 4;
                        var_a3_11 = 1;
                        var_t1 = var_a0 + 4;
                        var_s0->unk-4 = (f32) *var_a0;
                    }
                    var_a4_7 = var_t1;
                    if (((s32) arg2 >> 1) != 0) {
                        do {
                            *var_s0 = var_a4_7->unk0;
                            var_a3_11 += 2;
                            temp_f1 = var_a4_7->unk4;
                            var_s0 += 8;
                            var_a4_7 += 8;
                            var_s0->unk-4 = temp_f1;
                        } while (arg2 != var_a3_11);
                    }
                }
            } else if ((arg3 == 0x1405) && ((s32) arg2 > 0)) {
                var_a1_4 = arg2 & 3;
                var_a3_12 = 0;
                if (var_a1_4 != 0) {
                    do {
                        temp_f12 = (f32) ((u64) ((s64) *var_a7 << 0x20) >> 0x20) / 4294967296.0f;
                        var_a1_4 -= 1;
                        var_a3_12 += 1;
                        var_s0 += 4;
                        var_a7 += 4;
                        var_s0->unk-4 = temp_f12;
                    } while (var_a1_4 != 0);
                }
                var_s1_5 = var_a7;
                if (((s32) arg2 >> 2) != 0) {
                    do {
                        var_s0->unk0 = (f32) ((u64) ((s64) var_s1_5->unk0 << 0x20) >> 0x20) / 4294967296.0f;
                        var_s0->unk4 = (f32) ((f32) ((u64) ((s64) var_s1_5->unk4 << 0x20) >> 0x20) / 4294967296.0f);
                        var_s0->unk8 = (f32) ((f32) ((u64) ((s64) var_s1_5->unk8 << 0x20) >> 0x20) / 4294967296.0f);
                        temp_f13_10 = (f32) ((u64) ((s64) var_s1_5->unkC << 0x20) >> 0x20) / 4294967296.0f;
                        var_a3_12 += 4;
                        var_s0 += 0x10;
                        var_s1_5 += 0x10;
                        var_s0->unk-4 = temp_f13_10;
                    } while (arg2 != var_a3_12);
                }
            }
        } else if (temp_a1 == 0) {
            if (arg3 < 0x1403U) {
                if ((s32) arg2 > 0) {
                    var_a1_5 = arg2 & 3;
                    var_a3_13 = 0;
                    if (var_a1_5 != 0) {
                        do {
                            var_a1_5 -= 1;
                            var_a3_13 += 1;
                            var_s0 += 4;
                            var_s0->unk-4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f8, $f4, $f8, $f5 */) / 65535.0);
                        } while (var_a1_5 != 0);
                    }
                    if (((s32) arg2 >> 2) != 0) {
                        do {
                            var_s0->unk0 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f12, $f4, $f12, $f5 */) / 65535.0);
                            var_s0->unk4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f11, $f4, $f11, $f5 */) / 65535.0);
                            var_s0->unk8 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f10, $f4, $f10, $f5 */) / 65535.0);
                            var_a3_13 += 4;
                            var_s0 += 0x10;
                            var_s0->unk-4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f9, $f4, $f9, $f5 */) / 65535.0);
                        } while (arg2 != var_a3_13);
                    }
                }
            } else if (arg3 == 0x1403) {
                var_a3_14 = 0;
                if ((s32) arg2 > 0) {
                    do {
                        temp_f3 = (f32) *var_s2 / 65535.0f;
                        var_a3_14 += 1;
                        var_s0 += 4;
                        var_s2 += 2;
                        var_s0->unk-4 = temp_f3;
                    } while (arg2 != var_a3_14);
                }
            }
        } else if (arg3 >= 0x1401U) {
            if (temp_a1 != 0) {
                var_a3_15 = 0;
                if ((s32) arg2 > 0) {
                    do {
                        temp_f0 = (f32) *var_s1 / 255.0f;
                        var_a3_15 += 1;
                        var_s0 += 4;
                        var_s1 += 1;
                        var_s0->unk-4 = temp_f0;
                    } while (arg2 != var_a3_15);
                }
            }
        } else if (arg3 == 0x1400) {
            var_f6 = 255.0;
            if ((s32) arg2 > 0) {
                var_a1_6 = arg2 & 3;
                var_a3_16 = 0;
                if (var_a1_6 != 0) {
                    do {
                        var_f6 = second half of f64;
                        var_a1_6 -= 1;
                        var_a3_16 += 1;
                        var_s0 += 4;
                        var_s0->unk-4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f7, $f4, $f7, $f5 */) / (second half of f64));
                    } while (var_a1_6 != 0);
                }
                if (((s32) arg2 >> 2) != 0) {
                    do {
                        var_s0->unk0 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f11, $f4, $f11, $f5 */) / var_f6);
                        var_s0->unk4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f10, $f4, $f10, $f5 */) / var_f6);
                        var_s0->unk8 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f9, $f4, $f9, $f5 */) / var_f6);
                        var_a3_16 += 4;
                        var_s0 += 0x10;
                        var_s0->unk-4 = (f32) (M2C_ERROR(/* unknown instruction: madd.d $f8, $f4, $f8, $f5 */) / var_f6);
                    } while (arg2 != var_a3_16);
                }
            }
        }
    }
}

void __glOdysseyScaleBiasFilter(void *arg0, s32 arg1, void *arg2) {
    s32 var_a2;
    s32 var_a3;
    void *var_a2_2;
    void *var_a4;

    var_a4 = arg2;
    var_a2 = arg1 & 3;
    var_a3 = 0;
    if (arg1 > 0) {
        if (var_a2 != 0) {
            do {
                var_a4 += 0x10;
                var_a4->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f10, $f3, $f14 */);
                var_a2 -= 1;
                var_a4->unk-8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f15, $f2, $f12 */);
                var_a4->unk-C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f8, $f1, $f13 */);
                var_a3 += 1;
                var_a4->unk-10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f11, $f0, $f9 */);
            } while (var_a2 != 0);
        }
        var_a2_2 = var_a4;
        if ((arg1 >> 2) != 0) {
            do {
                var_a2_2 += 0x40;
                var_a2_2->unk-4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f10, $f1, $f14 */);
                var_a2_2->unk-8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f15, $f0, $f12 */);
                var_a2_2->unk-C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f8, $f31, $f13 */);
                var_a2_2->unk-10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f11, $f29, $f9 */);
                var_a2_2->unk-14 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f27, $f10, $f27, $f14 */);
                var_a2_2->unk-18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f25, $f15, $f25, $f12 */);
                var_a2_2->unk-1C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f23, $f8, $f23, $f13 */);
                var_a2_2->unk-20 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f11, $f21, $f9 */);
                var_a2_2->unk-24 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f19, $f10, $f19, $f14 */);
                var_a2_2->unk-28 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f15, $f18, $f12 */);
                var_a2_2->unk-2C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f8, $f17, $f13 */);
                var_a2_2->unk-30 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f11, $f16, $f9 */);
                var_a2_2->unk-34 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f10, $f7, $f14 */);
                var_a3 += 4;
                var_a2_2->unk-38 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f15, $f6, $f12 */);
                var_a2_2->unk-3C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f8, $f5, $f13 */);
                var_a2_2->unk-40 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f11, $f4, $f9 */);
            } while (arg1 != var_a3);
        }
    }
}

void __glOdysseyCvtScaleBias(s32 arg0, s32 arg1, u32 arg2) {
    f32 *var_a2;
    f32 *var_a2_10;
    f32 *var_a2_11;
    f32 *var_a2_12;
    f32 *var_a2_4;
    f32 *var_a2_7;
    f32 *var_a2_8;
    f32 *var_a2_9;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f19;
    f32 temp_f21;
    f32 temp_f23;
    f32 temp_f25;
    f32 temp_f27;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a1_7;
    s32 temp_a1_8;
    s32 temp_a2;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_14;
    s32 temp_a2_17;
    s32 temp_a2_20;
    s32 temp_a2_23;
    s32 temp_a2_26;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_9;
    s32 temp_v1;
    void *temp_a2_12;
    void *temp_a2_13;
    void *temp_a2_15;
    void *temp_a2_16;
    void *temp_a2_18;
    void *temp_a2_19;
    void *temp_a2_21;
    void *temp_a2_22;
    void *temp_a2_24;
    void *temp_a2_25;
    void *temp_a2_27;
    void *temp_a2_28;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_7;
    void *temp_a2_8;
    void *var_a2_2;
    void *var_a2_3;
    void *var_a2_5;
    void *var_a2_6;

    temp_v1 = arg2 < 0x1406U;
    if (temp_v1 == 0) {
        if (arg2 >= 0x1407U) {
            if (arg2 >= 0x8035U) {
                if (arg2 <= 0x8035U) {
                    temp_a2 = arg0 + (arg1 * 4);
                    var_a2 = temp_a2 - 4;
                    if (temp_a2 != arg0) {
                        temp_a1 = arg0 - 4;
loop_6:
                        temp_a2_2 = var_a2 - 4;
                        temp_a2_2->unk4 = (f32) (*var_a2 * 0.003921569f);
                        if (temp_a1 != temp_a2_2) {
                            temp_a2_3 = temp_a2_2 - 4;
                            temp_a2_3->unk4 = (f32) (temp_a2_2->unk0 * 0.003921569f);
                            if (temp_a1 != temp_a2_3) {
                                var_a2 = temp_a2_3 - 4;
                                var_a2->unk4 = (f32) (temp_a2_3->unk0 * 0.003921569f);
                                if (temp_a1 == var_a2) {

                                } else {
                                    goto loop_6;
                                }
                            }
                        }
                    }
                } else if (arg2 >= 0x8363U) {
                    temp_a2_4 = arg0 + (arg1 * 4);
                    if (arg2 <= 0x8363U) {
                        var_a2_2 = temp_a2_4 - 4;
                        if (temp_a2_4 != arg0) {
                            do {
                                temp_f23 = var_a2_2->unk-8;
                                temp_f21 = var_a2_2->unk-4;
                                temp_f19 = var_a2_2->unk0;
                                var_a2_2 -= 0xC;
                                var_a2_2->unk4 = (f32) (temp_f23 * 0.032258064f);
                                var_a2_2->unk8 = (f32) (temp_f21 * 0.015873017f);
                                var_a2_2->unkC = (f32) (temp_f19 * 0.032258064f);
                            } while ((arg0 - 4) != var_a2_2);
                        }
                    }
                } else if (arg2 == 0x8036) {
                    temp_a2_5 = arg0 + (arg1 * 4);
                    var_a2_3 = temp_a2_5 - 4;
                    if (temp_a2_5 != arg0) {
                        do {
                            var_a2_3 -= 0x10;
                            var_a2_3->unk4 = (f32) (var_a2_3->unk4 * 0.33333334f);
                            var_a2_3->unk8 = (f32) (var_a2_3->unk8 * 0.0009775171f);
                            var_a2_3->unkC = (f32) (var_a2_3->unkC * 0.0009775171f);
                            var_a2_3->unk10 = (f32) (var_a2_3->unk10 * 0.0009775171f);
                        } while ((arg0 - 4) != var_a2_3);
                    }
                }
            } else {
                switch (arg2) {                     /* switch 2; irregular */
                default:                            /* switch 2 */
                    temp_a2_6 = arg0 + (arg1 * 4);
                    temp_a1_2 = arg0 - 4;
                    var_a2_4 = temp_a2_6 - 4;
                    if (temp_a2_6 != arg0) {
loop_30:
                        temp_a2_7 = var_a2_4 - 4;
                        temp_a2_7->unk4 = (f32) (*var_a2_4 * 0.06666667f);
                        if (temp_a1_2 != temp_a2_7) {
                            temp_a2_8 = temp_a2_7 - 4;
                            temp_a2_8->unk4 = (f32) (temp_a2_7->unk0 * 0.06666667f);
                            if (temp_a1_2 != temp_a2_8) {
                                var_a2_4 = temp_a2_8 - 4;
                                var_a2_4->unk4 = (f32) (temp_a2_8->unk0 * 0.06666667f);
                                if (temp_a1_2 == var_a2_4) {

                                } else {
                                    goto loop_30;
                                }
                            }
                        }
                    }
                    break;
                case 0x8032:                        /* switch 2 */
                    temp_a2_9 = arg0 + (arg1 * 4);
                    var_a2_5 = temp_a2_9 - 4;
                    if (temp_a2_9 != arg0) {
                        do {
                            temp_f27 = var_a2_5->unk-4;
                            temp_f25 = var_a2_5->unk0;
                            var_a2_5 -= 0xC;
                            var_a2_5->unk8 = (f32) (temp_f27 * 0.14285715f);
                            var_a2_5->unkC = (f32) (temp_f25 * 0.14285715f);
                        } while ((arg0 - 4) != var_a2_5);
                    }
                    break;
                case 0x8034:                        /* switch 2 */
                    temp_a2_10 = arg0 + (arg1 * 4);
                    var_a2_6 = temp_a2_10 - 4;
                    if (temp_a2_10 != arg0) {
                        do {
                            temp_f12 = var_a2_6->unk-8;
                            temp_f11 = var_a2_6->unk-4;
                            temp_f10 = var_a2_6->unk0;
                            var_a2_6 -= 0x10;
                            var_a2_6->unk8 = (f32) (temp_f12 * 0.032258064f);
                            var_a2_6->unkC = (f32) (temp_f11 * 0.032258064f);
                            var_a2_6->unk10 = (f32) (temp_f10 * 0.032258064f);
                        } while ((arg0 - 4) != var_a2_6);
                    }
                    break;
                }
            }
        }
    } else if (arg2 >= 0x1403U) {
        if (arg2 < 0x1404U) {
            temp_a2_11 = arg0 + (arg1 * 4);
            var_a2_7 = temp_a2_11 - 4;
            if (temp_a2_11 != arg0) {
                temp_a1_3 = arg0 - 4;
loop_14:
                temp_a2_12 = var_a2_7 - 4;
                temp_a2_12->unk4 = (f32) (*var_a2_7 * 0.000015259022f);
                if (temp_a1_3 != temp_a2_12) {
                    temp_a2_13 = temp_a2_12 - 4;
                    temp_a2_13->unk4 = (f32) (temp_a2_12->unk0 * 0.000015259022f);
                    if (temp_a1_3 != temp_a2_13) {
                        var_a2_7 = temp_a2_13 - 4;
                        var_a2_7->unk4 = (f32) (temp_a2_13->unk0 * 0.000015259022f);
                        if (temp_a1_3 != var_a2_7) {
                            goto loop_14;
                        }
                    }
                }
            }
        } else if (arg2 >= 0x1405U) {
            if (temp_v1 != 0) {
                temp_a2_14 = arg0 + (arg1 * 4);
                temp_a1_4 = arg0 - 4;
                var_a2_8 = temp_a2_14 - 4;
                if (temp_a2_14 != arg0) {
loop_38:
                    temp_a2_15 = var_a2_8 - 4;
                    temp_a2_15->unk4 = (f32) (*var_a2_8 * 4.6566134e-10f);
                    if (temp_a1_4 != temp_a2_15) {
                        temp_a2_16 = temp_a2_15 - 4;
                        temp_a2_16->unk4 = (f32) (temp_a2_15->unk0 * 4.6566134e-10f);
                        if (temp_a1_4 != temp_a2_16) {
                            var_a2_8 = temp_a2_16 - 4;
                            var_a2_8->unk4 = (f32) (temp_a2_16->unk0 * 4.6566134e-10f);
                            if (temp_a1_4 == var_a2_8) {

                            } else {
                                goto loop_38;
                            }
                        }
                    }
                }
            }
        } else if (arg2 == 0x1404) {
            temp_a2_17 = arg0 + (arg1 * 4);
            var_a2_9 = temp_a2_17 - 4;
            if (temp_a2_17 != arg0) {
                temp_a1_5 = arg0 - 4;
loop_62:
                temp_a2_18 = var_a2_9 - 4;
                temp_a2_18->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f29, $f5, $f29, $f4 */);
                if (temp_a1_5 != temp_a2_18) {
                    temp_a2_19 = temp_a2_18 - 4;
                    temp_a2_19->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f31, $f5, $f31, $f4 */);
                    if (temp_a1_5 != temp_a2_19) {
                        var_a2_9 = temp_a2_19 - 4;
                        var_a2_9->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f5, $f0, $f4 */);
                        if (temp_a1_5 == var_a2_9) {

                        } else {
                            goto loop_62;
                        }
                    }
                }
            }
        }
    } else {
        switch (arg2) {                             /* switch 1; irregular */
        default:                                    /* switch 1 */
            temp_a2_20 = arg0 + (arg1 * 4);
            var_a2_10 = temp_a2_20 - 4;
            if (temp_a2_20 != arg0) {
                temp_a1_6 = arg0 - 4;
loop_22:
                temp_a2_21 = var_a2_10 - 4;
                temp_a2_21->unk4 = (f32) (*var_a2_10 * 0.003921569f);
                if (temp_a1_6 != temp_a2_21) {
                    temp_a2_22 = temp_a2_21 - 4;
                    temp_a2_22->unk4 = (f32) (temp_a2_21->unk0 * 0.003921569f);
                    if (temp_a1_6 != temp_a2_22) {
                        var_a2_10 = temp_a2_22 - 4;
                        var_a2_10->unk4 = (f32) (temp_a2_22->unk0 * 0.003921569f);
                        if (temp_a1_6 == var_a2_10) {

                        } else {
                            goto loop_22;
                        }
                    }
                }
            }
            break;
        case 0x1400:                                /* switch 1 */
            temp_a2_23 = arg0 + (arg1 * 4);
            temp_a1_7 = arg0 - 4;
            var_a2_11 = temp_a2_23 - 4;
            if (temp_a2_23 != arg0) {
loop_44:
                temp_a2_24 = var_a2_11 - 4;
                temp_a2_24->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f4, $f16, $f5 */);
                if (temp_a1_7 != temp_a2_24) {
                    temp_a2_25 = temp_a2_24 - 4;
                    temp_a2_25->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f17, $f4, $f17, $f5 */);
                    if (temp_a1_7 != temp_a2_25) {
                        var_a2_11 = temp_a2_25 - 4;
                        var_a2_11->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f4, $f18, $f5 */);
                        if (temp_a1_7 == var_a2_11) {

                        } else {
                            goto loop_44;
                        }
                    }
                }
            }
            break;
        case 0x1402:                                /* switch 1 */
            temp_a2_26 = arg0 + (arg1 * 4);
            var_a2_12 = temp_a2_26 - 4;
            if (temp_a2_26 != arg0) {
                temp_a1_8 = arg0 - 4;
loop_69:
                temp_a2_27 = var_a2_12 - 4;
                temp_a2_27->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f4, $f1, $f5 */);
                if (temp_a1_8 != temp_a2_27) {
                    temp_a2_28 = temp_a2_27 - 4;
                    temp_a2_28->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f4, $f2, $f5 */);
                    if (temp_a1_8 != temp_a2_28) {
                        var_a2_12 = temp_a2_28 - 4;
                        var_a2_12->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f4, $f3, $f5 */);
                        if (temp_a1_8 == var_a2_12) {

                        } else {
                            goto loop_69;
                        }
                    }
                }
            }
            break;
        }
    }
}

void __glOdysseyInitConvolutionState(s32 arg0) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a2->unk11BEB = 0;
        temp_a2->unk11BD0 = 0;
        temp_a2->unk119E0 = 0x1101;
        switch (arg0) {                             /* irregular */
        case 0x8012:
            temp_a2->unk11BD3 = 0;
            temp_a2->unk11BEA = 0;
            return;
        case 0x8010:
            temp_a2->unk11BD1 = 0;
            temp_a2->unk11BE8 = 0;
            return;
        case 0x8011:
            temp_a2->unk11BE9 = 0;
            temp_a2->unk11BD2 = 0;
            return;
        }
    } else {
        __glSetError(0x502, temp_a2);
    }
}

void __glOdysseyCvtToRGBA(void *arg0, f32 *arg1, s32 arg2, u32 arg3) {
    f32 *var_a1;
    f32 temp_f0;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f17;
    f32 temp_f17_2;
    f32 temp_f23;
    f32 temp_f3;
    s32 temp_a6;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_a3_5;
    s32 var_a3_6;
    s32 var_a3_7;
    s32 var_a3_8;
    s32 var_a3_9;
    s32 var_a6;
    s32 var_a6_2;
    void *var_a0;

    var_a0 = arg0;
    var_a1 = arg1;
    if (arg3 >= 0x1907U) {
        if (arg3 < 0x1908U) {
            var_a6 = arg2 & 3;
            if (arg2 > 0) {
                var_a3 = 0;
                if (var_a6 != 0) {
                    do {
                        temp_f0 = var_a0->unk-4;
                        var_a1->unk-4 = 1.0f;
                        var_a1 -= 0x10;
                        var_a6 -= 1;
                        var_a1->unk0 = var_a0->unk-C;
                        var_a3 += 1;
                        var_a1->unk4 = (f32) var_a0->unk-8;
                        var_a0 -= 0xC;
                        var_a1->unk8 = temp_f0;
                    } while (var_a6 != 0);
                }
                if ((arg2 >> 2) != 0) {
                    do {
                        var_a1->unk-4 = 1.0f;
                        var_a1->unk-8 = (f32) var_a0->unk-4;
                        var_a1->unk-C = (f32) var_a0->unk-8;
                        var_a1->unk-10 = (f32) var_a0->unk-C;
                        var_a1->unk-14 = 1.0f;
                        var_a1->unk-18 = (f32) var_a0->unk-10;
                        var_a1->unk-1C = (f32) var_a0->unk-14;
                        var_a1->unk-20 = (f32) var_a0->unk-18;
                        var_a1->unk-24 = 1.0f;
                        var_a1->unk-28 = (f32) var_a0->unk-1C;
                        var_a1->unk-2C = (f32) var_a0->unk-20;
                        var_a1->unk-30 = (f32) var_a0->unk-24;
                        var_a1 -= 0x40;
                        temp_f3 = var_a0->unk-28;
                        var_a1->unkC = 1.0f;
                        var_a3 += 4;
                        var_a1->unk0 = var_a0->unk-30;
                        var_a1->unk4 = (f32) var_a0->unk-2C;
                        var_a0 -= 0x30;
                        var_a1->unk8 = temp_f3;
                    } while (arg2 != var_a3);
                }
            }
        } else if (arg3 >= 0x8000U) {
            var_a6_2 = arg2 & 3;
            if (arg3 <= 0x8000U) {
                var_a3_2 = 0;
                if (arg2 > 0) {
                    if (var_a6_2 != 0) {
                        do {
                            var_a1 -= 0x10;
                            temp_f17 = var_a0->unk-10;
                            var_a1->unk0 = var_a0->unk-4;
                            var_a6_2 -= 1;
                            var_a1->unk4 = (f32) var_a0->unk-8;
                            var_a3_2 += 1;
                            var_a1->unk8 = (f32) var_a0->unk-C;
                            var_a0 -= 0x10;
                            var_a1->unkC = temp_f17;
                        } while (var_a6_2 != 0);
                    }
                    if ((arg2 >> 2) != 0) {
                        do {
                            var_a1->unk-4 = (f32) var_a0->unk-10;
                            var_a1->unk-8 = (f32) var_a0->unk-C;
                            var_a1->unk-C = (f32) var_a0->unk-8;
                            var_a1->unk-10 = (f32) var_a0->unk-4;
                            var_a1->unk-14 = (f32) var_a0->unk-20;
                            var_a1->unk-18 = (f32) var_a0->unk-1C;
                            var_a1->unk-1C = (f32) var_a0->unk-18;
                            var_a1->unk-20 = (f32) var_a0->unk-14;
                            var_a1->unk-24 = (f32) var_a0->unk-30;
                            var_a1->unk-28 = (f32) var_a0->unk-2C;
                            var_a1->unk-2C = (f32) var_a0->unk-28;
                            var_a1->unk-30 = (f32) var_a0->unk-24;
                            var_a1 -= 0x40;
                            temp_f23 = var_a0->unk-40;
                            var_a1->unk0 = var_a0->unk-34;
                            var_a3_2 += 4;
                            var_a1->unk4 = (f32) var_a0->unk-38;
                            var_a1->unk8 = (f32) var_a0->unk-3C;
                            var_a0 -= 0x40;
                            var_a1->unkC = temp_f23;
                        } while (arg2 != var_a3_2);
                    }
                }
            } else if (arg3 == 0x8049) {
                var_a3_3 = 0;
                if (arg2 > 0) {
                    do {
                        temp_f16 = var_a0->unk-4;
                        var_a1 -= 0x10;
                        var_a1->unk0 = temp_f16;
                        var_a3_3 += 1;
                        var_a1->unk4 = temp_f16;
                        var_a1->unk8 = temp_f16;
                        var_a0 -= 4;
                        var_a1->unkC = temp_f16;
                    } while (arg2 != var_a3_3);
                }
            }
        } else if (arg3 >= 0x190AU) {
            var_a3_4 = 0;
            if ((arg3 < 0x190BU) && (arg2 > 0)) {
                do {
                    temp_f13 = var_a0->unk-8;
                    var_a1 -= 0x10;
                    temp_f12 = var_a0->unk-4;
                    var_a1->unk0 = temp_f13;
                    var_a3_4 += 1;
                    var_a1->unk4 = temp_f13;
                    var_a1->unk8 = temp_f13;
                    var_a0 -= 8;
                    var_a1->unkC = temp_f12;
                } while (arg2 != var_a3_4);
            }
        } else if (arg3 == 0x1909) {
            var_a3_5 = 0;
            if (arg2 > 0) {
                do {
                    temp_f17_2 = var_a0->unk-4;
                    var_a1->unk-4 = 1.0f;
                    var_a1 -= 0x10;
                    var_a3_5 += 1;
                    var_a1->unk0 = temp_f17_2;
                    var_a1->unk4 = temp_f17_2;
                    var_a0 -= 4;
                    var_a1->unk8 = temp_f17_2;
                } while (arg2 != var_a3_5);
            }
        }
    } else {
        temp_a6 = arg3 < 0x1905U;
        if (temp_a6 == 0) {
            if (arg3 < 0x1906U) {
                var_a3_6 = 0;
                if (arg2 > 0) {
                    do {
                        temp_f16_2 = var_a0->unk-4;
                        var_a1->unk-10 = 0.0f;
                        var_a1->unk-C = 0.0f;
                        var_a3_6 += 1;
                        var_a1->unk-4 = 1.0f;
                        var_a1 -= 0x10;
                        var_a0 -= 4;
                        var_a1->unk8 = temp_f16_2;
                    } while (arg2 != var_a3_6);
                }
            } else if ((arg3 == 0x1906) && (arg2 > 0)) {
                var_a3_7 = 0;
                do {
                    temp_f14 = var_a0->unk-4;
                    var_a1->unk-10 = 0.0f;
                    var_a1->unk-C = 0.0f;
                    var_a3_7 += 1;
                    var_a1->unk-8 = 0.0f;
                    var_a1 -= 0x10;
                    var_a0 -= 4;
                    var_a1->unkC = temp_f14;
                } while (arg2 != var_a3_7);
            }
        } else if (arg3 >= 0x1904U) {
            if ((temp_a6 != 0) && (arg2 > 0)) {
                var_a3_8 = 0;
                do {
                    temp_f11 = var_a0->unk-4;
                    var_a1->unk-10 = 0.0f;
                    var_a1->unk-8 = 0.0f;
                    var_a3_8 += 1;
                    var_a1->unk-4 = 1.0f;
                    var_a1 -= 0x10;
                    var_a0 -= 4;
                    var_a1->unk4 = temp_f11;
                } while (arg2 != var_a3_8);
            }
        } else if ((arg3 == 0x1903) && (arg2 > 0)) {
            var_a3_9 = 0;
            do {
                temp_f15 = var_a0->unk-4;
                var_a1->unk-C = 0.0f;
                var_a1->unk-8 = 0.0f;
                var_a3_9 += 1;
                var_a1->unk-4 = 1.0f;
                var_a1 -= 0x10;
                var_a0 -= 4;
                *var_a1 = temp_f15;
            } while (arg2 != var_a3_9);
        }
    }
}

void __glOdysseyCvtToResidue(void *arg0, f32 *arg1, s32 arg2, s32 arg3, s32 arg4) {
    f32 *temp_a6_12;
    f32 *temp_t1_12;
    f32 *temp_t3_10;
    f32 *temp_t3_7;
    f32 *temp_v1_5;
    f32 *temp_v1_7;
    f32 *var_a1;
    f64 var_f4;
    f64 var_f4_2;
    f64 var_f4_3;
    s16 temp_a4;
    s16 temp_a7;
    s16 temp_a7_10;
    s16 temp_a7_8;
    s16 temp_t1;
    s16 temp_t1_10;
    s16 temp_t1_11;
    s16 temp_t1_5;
    s16 temp_t1_7;
    s16 temp_t1_9;
    s16 temp_t2;
    s16 temp_t2_4;
    s16 temp_t2_5;
    s16 temp_t2_6;
    s16 temp_t3;
    s16 temp_t3_3;
    s16 temp_t3_4;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_6;
    s32 temp_a6;
    s32 temp_a6_10;
    s32 temp_a6_11;
    s32 temp_a6_13;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_7;
    s32 temp_a6_8;
    s32 temp_a6_9;
    s32 temp_a7_11;
    s32 temp_a7_12;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_a7_7;
    s32 temp_a7_9;
    s32 temp_t1_4;
    s32 temp_t1_6;
    s32 temp_t1_8;
    s32 temp_t2_3;
    s32 temp_t3_11;
    s32 temp_t3_2;
    s32 temp_t3_5;
    s32 temp_t3_6;
    s32 temp_t3_8;
    s32 temp_t3_9;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 temp_v1_4;
    s32 temp_v1_6;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_v0;
    u32 temp_a5;
    u32 temp_a5_5;
    u32 temp_a5_7;
    u32 temp_a6_2;
    u32 temp_a6_6;
    u32 temp_a7_6;
    u32 temp_t1_2;
    u32 temp_t1_3;
    u32 temp_t2_2;
    u32 temp_t2_7;
    u32 temp_t2_8;
    u32 temp_t2_9;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v1_2;
    u32 temp_v1_3;
    void *var_a0;
    void *var_a1_2;

    var_a0 = arg0;
    var_a1 = arg1;
    if (arg3 != 0x1909) {
        if (arg3 != 0x190A) {
            if (arg3 != 0x1907) {
                if ((arg3 == 0x1908) && (arg2 > 0)) {
                    var_f4 = 0.000244140625;
                    var_a3 = 0;
                    var_a1_2 = var_a1 - 0x10;
loop_10:
                    temp_t1 = var_a0->unk-8;
                    var_a0 -= 8;
                    temp_t2 = var_a0->unk2;
                    temp_t3 = var_a0->unk4;
                    var_a3 += 1;
                    temp_a7 = var_a0->unk6;
                    if (arg4 != 1) {
                        temp_t1_2 = (u32) temp_t2 >> 0x1F;
                        if (arg4 != 2) {
                            temp_t2_2 = (u32) temp_t3 >> 0x1F;
                            if (arg4 != 3) {
                                temp_t1_3 = (u32) temp_a7 >> 0x1F;
                                if (arg4 == 4) {
                                    temp_a6 = (s32) MULTU_HI(((temp_t1_3 == 0) ? temp_a7 : -temp_a7), ((0x8102 << 0x10) | 0x409)) >> 6;
                                    temp_t2_3 = (s32) MULTU_HI(((temp_t1_3 == 0) ? temp_a7 : -temp_a7), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                                    var_a1_2->unkC = (f32) ((f64) (f32) (temp_a7 - (((temp_t1_3 == 0) ? temp_a6 : -temp_a6) * 0x7F)) * var_f4);
                                    var_f4 = second half of f64;
                                    var_a1_2->unk8 = (f32) (second half of f64);
                                    var_a1_2->unk4 = (f32) ((second half of f64) * (second half of f64));
                                    var_a1_2->unk0 = (f32) ((f64) (f32) (temp_a7 - (((temp_t1_3 == 0) ? temp_t2_3 : -temp_t2_3) * 0x7FF)) * (second half of f64));
                                }
                            } else {
                                temp_t1_4 = (s32) MULTU_HI(((temp_t2_2 == 0) ? temp_t3 : -temp_t3), ((0x8102 << 0x10) | 0x409)) >> 6;
                                temp_v0 = (s32) MULTU_HI(((temp_t2_2 == 0) ? temp_t3 : -temp_t3), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                                var_a1_2->unkC = (f32) ((f64) (f32) (temp_t3 - (((temp_t2_2 == 0) ? temp_t1_4 : -temp_t1_4) * 0x7F)) * var_f4);
                                var_a1_2->unk8 = (f32) (second half of f64);
                                var_a1_2->unk4 = (f32) ((second half of f64) * var_f4);
                                var_a1_2->unk0 = (f32) ((f64) (f32) (temp_t3 - (((temp_t2_2 == 0) ? temp_v0 : -temp_v0) * 0x7FF)) * var_f4);
                            }
                        } else {
                            temp_a7_2 = (s32) MULTU_HI(((temp_t1_2 == 0) ? temp_t2 : -temp_t2), ((0x8102 << 0x10) | 0x409)) >> 6;
                            temp_t3_2 = (s32) MULTU_HI(((temp_t1_2 == 0) ? temp_t2 : -temp_t2), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                            var_a1_2->unkC = (f32) ((f64) (f32) (temp_t2 - (((temp_t1_2 == 0) ? temp_a7_2 : -temp_a7_2) * 0x7F)) * var_f4);
                            var_a1_2->unk8 = (f32) (second half of f64);
                            var_a1_2->unk4 = (f32) ((second half of f64) * var_f4);
                            var_a1_2->unk0 = (f32) ((f64) (f32) (temp_t2 - (((temp_t1_2 == 0) ? temp_t3_2 : -temp_t3_2) * 0x7FF)) * var_f4);
                        }
                    } else {
                        var_a1_2->unkC = (f32) (second half of f64);
                        var_a1_2->unk8 = (f32) ((second half of f64) * var_f4);
                        var_a1_2->unk4 = (f32) (second half of f64);
                        var_a1_2->unk0 = (f32) ((second half of f64) * var_f4);
                    }
                    var_a1_2 -= 0x10;
                    if (arg2 != var_a3) {
                        goto loop_10;
                    }
                }
            } else if (arg2 > 0) {
                var_f4_2 = 0.000244140625;
                var_a3_2 = 0;
                var_v0 = arg2 >> 1;
                if (arg2 & 1) {
                    temp_t1_5 = var_a0->unk-6;
                    var_a0 -= 6;
                    temp_t2_4 = var_a0->unk2;
                    var_a3_2 = 1;
                    temp_t3_3 = var_a0->unk4;
                    var_a1 -= 0x10;
                    if (arg4 != 1) {
                        temp_a5 = (u32) temp_t2_4 >> 0x1F;
                        if (arg4 != 2) {
                            temp_a6_2 = (u32) temp_t3_3 >> 0x1F;
                            if (arg4 == 3) {
                                temp_a5_2 = (s32) MULTU_HI(((temp_a6_2 == 0) ? temp_t3_3 : -temp_t3_3), ((0x8102 << 0x10) | 0x409)) >> 6;
                                temp_a7_3 = (s32) MULTU_HI(((temp_a6_2 == 0) ? temp_t3_3 : -temp_t3_3), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                                var_f4_2 = second half of f64;
                                var_a1->unkC = (f32) ((f64) (f32) (temp_t3_3 - (((temp_a6_2 == 0) ? temp_a5_2 : -temp_a5_2) * 0x7F)) * (second half of f64));
                                var_a1->unk8 = (f32) (second half of f64);
                                var_a1->unk4 = (f32) ((second half of f64) * (second half of f64));
                                var_a1->unk0 = (f32) ((f64) (f32) (temp_t3_3 - (((temp_a6_2 == 0) ? temp_a7_3 : -temp_a7_3) * 0x7FF)) * (second half of f64));
                            }
                        } else {
                            temp_v1 = (s32) MULTU_HI(((temp_a5 == 0) ? temp_t2_4 : -temp_t2_4), ((0x8102 << 0x10) | 0x409)) >> 6;
                            temp_a7_4 = (s32) MULTU_HI(((temp_a5 == 0) ? temp_t2_4 : -temp_t2_4), ((0x8040 << 0x10) | 0x2011)) >> 8;
                            temp_a7_5 = (s32) MULTU_HI(((temp_a5 == 0) ? temp_t2_4 : -temp_t2_4), ((0x8020 << 0x10) | 0x803)) >> 9;
                            temp_a6_3 = (s32) MULTU_HI(((temp_a5 == 0) ? temp_t2_4 : -temp_t2_4), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                            var_a1->unkC = (f32) ((f64) (f32) (temp_t2_4 - (((temp_a5 == 0) ? temp_v1 : -temp_v1) * 0x7F)) * 0.000244140625);
                            var_a1->unk8 = (f32) ((f64) (f32) (temp_t2_4 - (((temp_a5 == 0) ? temp_a7_4 : -temp_a7_4) * 0x1FF)) * 0.000244140625);
                            var_a1->unk4 = (f32) ((f64) (f32) (temp_t2_4 - (((temp_a5 == 0) ? temp_a7_5 : -temp_a7_5) * 0x3FF)) * 0.000244140625);
                            var_a1->unk0 = (f32) ((f64) (f32) (temp_t2_4 - (((temp_a5 == 0) ? temp_a6_3 : -temp_a6_3) * 0x7FF)) * 0.000244140625);
                        }
                    } else {
                        temp_v1_2 = (u32) temp_t1_5 >> 0x1F;
                        temp_v0_2 = (s32) MULTU_HI(((temp_v1_2 == 0) ? temp_t1_5 : -temp_t1_5), ((0x8102 << 0x10) | 0x409)) >> 6;
                        temp_a6_4 = (s32) MULTU_HI(((temp_v1_2 == 0) ? temp_t1_5 : -temp_t1_5), ((0x8040 << 0x10) | 0x2011)) >> 8;
                        temp_a6_5 = (s32) MULTU_HI(((temp_v1_2 == 0) ? temp_t1_5 : -temp_t1_5), ((0x8020 << 0x10) | 0x803)) >> 9;
                        temp_a5_3 = (s32) MULTU_HI(((temp_v1_2 == 0) ? temp_t1_5 : -temp_t1_5), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                        var_a1->unkC = (f32) ((f64) (f32) (temp_t1_5 - (((temp_v1_2 == 0) ? temp_v0_2 : -temp_v0_2) * 0x7F)) * 0.000244140625);
                        var_a1->unk8 = (f32) ((f64) (f32) (temp_t1_5 - (((temp_v1_2 == 0) ? temp_a6_4 : -temp_a6_4) * 0x1FF)) * 0.000244140625);
                        var_a1->unk4 = (f32) ((f64) (f32) (temp_t1_5 - (((temp_v1_2 == 0) ? temp_a6_5 : -temp_a6_5) * 0x3FF)) * 0.000244140625);
                        var_a1->unk0 = (f32) ((f64) (f32) (temp_t1_5 - (((temp_v1_2 == 0) ? temp_a5_3 : -temp_a5_3) * 0x7FF)) * 0.000244140625);
                    }
                    var_v0 = arg2 >> 1;
                }
                if (var_v0 != 0) {
loop_49:
                    temp_t2_5 = var_a0->unk-4;
                    var_a3_2 += 2;
                    if (arg4 != 1) {
                        temp_a6_6 = (u32) temp_t2_5 >> 0x1F;
                        if (arg4 != 2) {
                            if (arg4 == 3) {
                                var_a1->unk-4 = (f32) (second half of f64);
                                var_a1->unk-8 = (f32) ((second half of f64) * var_f4_2);
                                var_a1->unk-C = (f32) (second half of f64);
                                var_a1->unk-10 = (f32) ((second half of f64) * var_f4_2);
                            }
                        } else {
                            temp_a5_4 = (s32) MULTU_HI(((temp_a6_6 == 0) ? temp_t2_5 : -temp_t2_5), ((0x8102 << 0x10) | 0x409)) >> 6;
                            temp_t1_6 = (s32) MULTU_HI(((temp_a6_6 == 0) ? temp_t2_5 : -temp_t2_5), ((0x8040 << 0x10) | 0x2011)) >> 8;
                            var_f4_2 = second half of f64;
                            var_a1->unk-4 = (f32) ((f64) (f32) (temp_t2_5 - (((temp_a6_6 == 0) ? temp_a5_4 : -temp_a5_4) * 0x7F)) * (second half of f64));
                            var_a1->unk-8 = (f32) ((f64) (f32) (temp_t2_5 - (((temp_a6_6 == 0) ? temp_t1_6 : -temp_t1_6) * 0x1FF)) * (second half of f64));
                            var_a1->unk-C = (f32) (second half of f64);
                            var_a1->unk-10 = (f32) ((second half of f64) * (second half of f64));
                        }
                    } else {
                        var_a1->unk-4 = (f32) (second half of f64);
                        var_a1->unk-8 = (f32) ((second half of f64) * var_f4_2);
                        var_a1->unk-C = (f32) (second half of f64);
                        var_a1->unk-10 = (f32) ((second half of f64) * var_f4_2);
                    }
                    temp_t1_7 = var_a0->unk-C;
                    var_a0 -= 0xC;
                    temp_t2_6 = var_a0->unk2;
                    temp_t3_4 = var_a0->unk4;
                    var_a1 -= 0x20;
                    if (arg4 != 1) {
                        temp_a5_5 = (u32) temp_t2_6 >> 0x1F;
                        if (arg4 != 2) {
                            temp_a7_6 = (u32) temp_t3_4 >> 0x1F;
                            if (arg4 == 3) {
                                temp_a6_7 = (s32) MULTU_HI(((temp_a7_6 == 0) ? temp_t3_4 : -temp_t3_4), ((0x8102 << 0x10) | 0x409)) >> 6;
                                temp_t1_8 = (s32) MULTU_HI(((temp_a7_6 == 0) ? temp_t3_4 : -temp_t3_4), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                                var_a1->unkC = (f32) ((f64) (f32) (temp_t3_4 - (((temp_a7_6 == 0) ? temp_a6_7 : -temp_a6_7) * 0x7F)) * var_f4_2);
                                var_a1->unk8 = (f32) (second half of f64);
                                var_a1->unk4 = (f32) ((second half of f64) * var_f4_2);
                                var_a1->unk0 = (f32) ((f64) (f32) (temp_t3_4 - (((temp_a7_6 == 0) ? temp_t1_8 : -temp_t1_8) * 0x7FF)) * var_f4_2);
                            }
                        } else {
                            temp_a7_7 = (s32) MULTU_HI(((temp_a5_5 == 0) ? temp_t2_6 : -temp_t2_6), ((0x8020 << 0x10) | 0x803)) >> 9;
                            temp_a6_8 = (s32) MULTU_HI(((temp_a5_5 == 0) ? temp_t2_6 : -temp_t2_6), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                            var_a1->unkC = (f32) (second half of f64);
                            var_a1->unk8 = (f32) ((second half of f64) * var_f4_2);
                            var_a1->unk4 = (f32) ((f64) (f32) (temp_t2_6 - (((temp_a5_5 == 0) ? temp_a7_7 : -temp_a7_7) * 0x3FF)) * var_f4_2);
                            var_a1->unk0 = (f32) ((f64) (f32) (temp_t2_6 - (((temp_a5_5 == 0) ? temp_a6_8 : -temp_a6_8) * 0x7FF)) * var_f4_2);
                        }
                    } else {
                        temp_v1_3 = (u32) temp_t1_7 >> 0x1F;
                        temp_v0_3 = (s32) MULTU_HI(((temp_v1_3 == 0) ? temp_t1_7 : -temp_t1_7), ((0x8102 << 0x10) | 0x409)) >> 6;
                        temp_a6_9 = (s32) MULTU_HI(((temp_v1_3 == 0) ? temp_t1_7 : -temp_t1_7), ((0x8040 << 0x10) | 0x2011)) >> 8;
                        temp_a6_10 = (s32) MULTU_HI(((temp_v1_3 == 0) ? temp_t1_7 : -temp_t1_7), ((0x8020 << 0x10) | 0x803)) >> 9;
                        temp_a5_6 = (s32) MULTU_HI(((temp_v1_3 == 0) ? temp_t1_7 : -temp_t1_7), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                        var_a1->unkC = (f32) ((f64) (f32) (temp_t1_7 - (((temp_v1_3 == 0) ? temp_v0_3 : -temp_v0_3) * 0x7F)) * var_f4_2);
                        var_a1->unk8 = (f32) ((f64) (f32) (temp_t1_7 - (((temp_v1_3 == 0) ? temp_a6_9 : -temp_a6_9) * 0x1FF)) * var_f4_2);
                        var_a1->unk4 = (f32) ((f64) (f32) (temp_t1_7 - (((temp_v1_3 == 0) ? temp_a6_10 : -temp_a6_10) * 0x3FF)) * var_f4_2);
                        var_a1->unk0 = (f32) ((f64) (f32) (temp_t1_7 - (((temp_v1_3 == 0) ? temp_a5_6 : -temp_a5_6) * 0x7FF)) * var_f4_2);
                    }
                    if (arg2 != var_a3_2) {
                        goto loop_49;
                    }
                }
            }
        } else if (arg2 > 0) {
            var_f4_3 = 0.000244140625;
            var_a3_3 = 0;
            if (arg2 & 1) {
                temp_t1_9 = var_a0->unk-4;
                var_a0 -= 4;
                var_a3_3 = 1;
                temp_a7_8 = var_a0->unk2;
                if (arg4 != 1) {
                    temp_v0_4 = (u32) temp_a7_8 >> 0x1F;
                    if (arg4 == 2) {
                        temp_t3_5 = (s32) MULTU_HI(((temp_v0_4 == 0) ? temp_a7_8 : -temp_a7_8), ((0x8102 << 0x10) | 0x409)) >> 6;
                        temp_v1_4 = (s32) MULTU_HI(((temp_v0_4 == 0) ? temp_a7_8 : -temp_a7_8), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                        temp_v1_5 = var_a1 - 0x10;
                        var_a1->unk-4 = (f32) ((f64) (f32) (temp_a7_8 - (((temp_v0_4 == 0) ? temp_t3_5 : -temp_t3_5) * 0x7F)) * 0.000244140625);
                        var_a1->unk-8 = (f32) (second half of f64);
                        var_a1->unk-C = (f32) ((second half of f64) * 0.000244140625);
                        var_a1 = temp_v1_5;
                        *temp_v1_5 = (f32) ((f64) (f32) (temp_a7_8 - (((temp_v0_4 == 0) ? temp_v1_4 : -temp_v1_4) * 0x7FF)) * 0.000244140625);
                    }
                } else {
                    temp_t2_7 = (u32) temp_t1_9 >> 0x1F;
                    temp_a7_9 = (s32) MULTU_HI(((temp_t2_7 == 0) ? temp_t1_9 : -temp_t1_9), ((0x8102 << 0x10) | 0x409)) >> 6;
                    temp_t3_6 = (s32) MULTU_HI(((temp_t2_7 == 0) ? temp_t1_9 : -temp_t1_9), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                    temp_t3_7 = var_a1 - 0x10;
                    var_a1->unk-4 = (f32) ((f64) (f32) (temp_t1_9 - (((temp_t2_7 == 0) ? temp_a7_9 : -temp_a7_9) * 0x7F)) * 0.000244140625);
                    var_a1->unk-8 = (f32) (second half of f64);
                    var_a1->unk-C = (f32) ((second half of f64) * 0.000244140625);
                    var_a1 = temp_t3_7;
                    *temp_t3_7 = (f32) ((f64) (f32) (temp_t1_9 - (((temp_t2_7 == 0) ? temp_t3_6 : -temp_t3_6) * 0x7FF)) * 0.000244140625);
                }
            }
            if ((arg2 >> 1) != 0) {
loop_31:
                temp_t1_10 = var_a0->unk-4;
                temp_a7_10 = var_a0->unk-2;
                if (arg4 != 1) {
                    temp_v0_5 = (u32) temp_a7_10 >> 0x1F;
                    if (arg4 == 2) {
                        temp_t3_8 = (s32) MULTU_HI(((temp_v0_5 == 0) ? temp_a7_10 : -temp_a7_10), ((0x8102 << 0x10) | 0x409)) >> 6;
                        temp_v1_6 = (s32) MULTU_HI(((temp_v0_5 == 0) ? temp_a7_10 : -temp_a7_10), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                        var_a1->unk-4 = (f32) ((f64) (f32) (temp_a7_10 - (((temp_v0_5 == 0) ? temp_t3_8 : -temp_t3_8) * 0x7F)) * var_f4_3);
                        var_a1->unk-8 = (f32) (second half of f64);
                        temp_v1_7 = var_a1 - 0x10;
                        var_a1->unk-C = (f32) ((second half of f64) * var_f4_3);
                        var_a1 = temp_v1_7;
                        *temp_v1_7 = (f32) ((f64) (f32) (temp_a7_10 - (((temp_v0_5 == 0) ? temp_v1_6 : -temp_v1_6) * 0x7FF)) * var_f4_3);
                    }
                } else {
                    temp_t2_8 = (u32) temp_t1_10 >> 0x1F;
                    temp_a7_11 = (s32) MULTU_HI(((temp_t2_8 == 0) ? temp_t1_10 : -temp_t1_10), ((0x8102 << 0x10) | 0x409)) >> 6;
                    temp_v0_6 = (s32) MULTU_HI(((temp_t2_8 == 0) ? temp_t1_10 : -temp_t1_10), ((0x8040 << 0x10) | 0x2011)) >> 8;
                    temp_v0_7 = (s32) MULTU_HI(((temp_t2_8 == 0) ? temp_t1_10 : -temp_t1_10), ((0x8020 << 0x10) | 0x803)) >> 9;
                    temp_t3_9 = (s32) MULTU_HI(((temp_t2_8 == 0) ? temp_t1_10 : -temp_t1_10), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                    var_a1->unk-4 = (f32) ((f64) (f32) (temp_t1_10 - (((temp_t2_8 == 0) ? temp_a7_11 : -temp_a7_11) * 0x7F)) * var_f4_3);
                    var_a1->unk-8 = (f32) ((f64) (f32) (temp_t1_10 - (((temp_t2_8 == 0) ? temp_v0_6 : -temp_v0_6) * 0x1FF)) * var_f4_3);
                    temp_t3_10 = var_a1 - 0x10;
                    var_a1->unk-C = (f32) ((f64) (f32) (temp_t1_10 - (((temp_t2_8 == 0) ? temp_v0_7 : -temp_v0_7) * 0x3FF)) * var_f4_3);
                    var_a1 = temp_t3_10;
                    *temp_t3_10 = (f32) ((f64) (f32) (temp_t1_10 - (((temp_t2_8 == 0) ? temp_t3_9 : -temp_t3_9) * 0x7FF)) * var_f4_3);
                }
                temp_t1_11 = var_a0->unk-8;
                var_a0 -= 8;
                if (arg4 != 1) {
                    if (arg4 == 2) {
                        var_a1->unk-4 = (f32) (second half of f64);
                        var_a1->unk-8 = (f32) ((second half of f64) * var_f4_3);
                        temp_t1_12 = var_a1 - 0x10;
                        var_a1->unk-C = (f32) (second half of f64);
                        var_a1 = temp_t1_12;
                        *temp_t1_12 = (f32) ((second half of f64) * var_f4_3);
                    }
                } else {
                    temp_a5_7 = (u32) temp_t1_11 >> 0x1F;
                    temp_a7_12 = (s32) MULTU_HI(((temp_a5_7 == 0) ? temp_t1_11 : -temp_t1_11), ((0x8020 << 0x10) | 0x803)) >> 9;
                    temp_a6_11 = (s32) MULTU_HI(((temp_a5_7 == 0) ? temp_t1_11 : -temp_t1_11), ((0x8010 << 0x10) | 0x201)) >> 0xA;
                    var_f4_3 = second half of f64;
                    var_a1->unk-4 = (f32) (second half of f64);
                    var_a1->unk-8 = (f32) ((second half of f64) * (second half of f64));
                    temp_a6_12 = var_a1 - 0x10;
                    var_a1->unk-C = (f32) ((f64) (f32) (temp_t1_11 - (((temp_a5_7 == 0) ? temp_a7_12 : -temp_a7_12) * 0x3FF)) * (second half of f64));
                    var_a1 = temp_a6_12;
                    *temp_a6_12 = (f32) ((f64) (f32) (temp_t1_11 - (((temp_a5_7 == 0) ? temp_a6_11 : -temp_a6_11) * 0x7FF)) * (second half of f64));
                }
                var_a3_3 += 2;
                if (arg2 != var_a3_3) {
                    goto loop_31;
                }
            }
        }
    } else if (arg2 > 0) {
        var_a3_4 = 0;
        do {
            temp_a4 = var_a0->unk-2;
            temp_t2_9 = (u32) temp_a4 >> 0x1F;
            temp_a6_13 = (s32) MULTU_HI(((temp_t2_9 == 0) ? temp_a4 : -temp_a4), ((0x8102 << 0x10) | 0x409)) >> 6;
            temp_t3_11 = (s32) MULTU_HI(((temp_t2_9 == 0) ? temp_a4 : -temp_a4), ((0x8010 << 0x10) | 0x201)) >> 0xA;
            var_a1 -= 0x10;
            var_a1->unkC = (f32) ((f64) (f32) (temp_a4 - (((temp_t2_9 == 0) ? temp_a6_13 : -temp_a6_13) * 0x7F)) * 0.000244140625);
            var_a3_4 += 1;
            var_a1->unk8 = (f32) (second half of f64);
            var_a1->unk4 = (f32) ((second half of f64) * 0.000244140625);
            var_a0 -= 2;
            var_a1->unk0 = (f32) ((f64) (f32) (temp_a4 - (((temp_t2_9 == 0) ? temp_t3_11 : -temp_t3_11) * 0x7FF)) * 0.000244140625);
        } while (arg2 != var_a3_4);
    }
}

void __glOdysseyReconstructFromResidue(void *arg0, s64 *arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s32 temp_s1;
    s32 var_a7;
    s32 var_at;
    s32 var_s2;
    s64 temp_f0;
    void *temp_a7;

    temp_a7 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg5) {                             /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            break;
        case 1:                                     /* switch 1 */
            break;
        case 2:                                     /* switch 1 */
            break;
        case 3:                                     /* switch 1 */
            break;
        }
        if (arg3 > 0) {
            var_s2 = 0;
loop_9:
            var_a7 = 0;
            if (arg2 > 0) {
loop_15:
                temp_s1 = (var_a7 + (var_s2 * temp_a7->unk11E1C * 4)) * 2;
                temp_f0 = (s64) M2C_ERROR(/* unknown instruction: madd.s $f0, $f5, $f0, $f4 */);
                M2C_TRAP_IF(arg4 == 0);
                var_a7 += 4;
                switch (arg5) {                     /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    *(temp_s1 + arg1) = (s16) ((temp_f0 > 0xFFFF) ? 0xFFFF : temp_f0);
block_13:
                    var_at = var_a7 < arg2;
                    break;
                default:                            /* switch 2 */
                    var_at = var_a7 < arg2;
                    if (arg5 == 3) {
                        (temp_s1 + arg1)->unk6 = (s16) ((temp_f0 > 0xFFFF) ? 0xFFFF : temp_f0);
                        goto block_13;
                    }
                    break;
                case 1:                             /* switch 2 */
                    (temp_s1 + arg1)->unk2 = (s16) ((temp_f0 > 0xFFFF) ? 0xFFFF : temp_f0);
                    goto block_13;
                case 2:                             /* switch 2 */
                    (temp_s1 + arg1)->unk4 = (s16) ((temp_f0 > 0xFFFF) ? 0xFFFF : temp_f0);
                    goto block_13;
                }
                if (var_at != 0) {
                    goto loop_15;
                }
            }
            var_s2 += 1;
            if (arg3 != var_s2) {
                goto loop_9;
            }
        }
    } else {
        __glSetError(0x502, temp_a7);
    }
}

s32 multiplicative_inverse(s32 arg0, s32 arg1) {
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s32 temp_a2;
    s32 temp_a7;
    s32 temp_f0;
    s32 temp_v1;
    s32 var_a5;

    spC = arg1;
    sp8 = 0;
    var_a5 = arg1;
    sp4 = arg0;
    sp0 = 1;
    if (arg1 != 0) {
        do {
            temp_f0 = (s32) ((f64) (second half of f64) / (second half of f64));
            M2C_TRAP_IF(var_a5 == 0);
            temp_a7 = sp8.unk4;
            temp_v1 = sp4;
            sp4 = temp_a7;
            temp_a2 = sp0;
            sp0 = sp8;
            sp8 = temp_a2 - (sp8 * temp_f0);
            sp8.unk4 = (s32) (temp_v1 - (temp_a7 * temp_f0));
            var_a5 = spC;
        } while (var_a5 != 0);
        return (sp0 >= 0) ? sp0 : (sp0 + arg1);
    }
    return 1;
}

s64 get_prime_sums(f32 *arg0, s64 *arg1, void *arg2, s64 arg3, s64 arg4) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    ? sp24;
    s32 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *var_a6;
    s32 *var_a1_3;
    s32 temp_a0_9;
    s32 temp_f10;
    s32 temp_s2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_s5;
    s64 *var_a7;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_a0_4;
    s64 temp_a0_5;
    s64 temp_a0_6;
    s64 temp_a0_7;
    s64 temp_a0_8;
    s64 temp_a3;
    s64 temp_a4;
    s64 temp_a4_2;
    s64 temp_a4_3;
    s64 temp_a5;
    s64 temp_a6;
    s64 temp_at_2;
    s64 temp_s3;
    s64 temp_s4;
    s64 temp_s7;
    s64 temp_t9;
    s64 temp_v0;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a1;
    s64 var_a1_2;
    s64 var_a4;
    s64 var_s2;
    s64 var_s4;
    s64 var_s6;
    s64 var_s7;
    s64 var_s8;
    s64 var_t1;
    s64 var_t2;
    void *temp_at;

    temp_at = &sub_0daf0000 - 0x6F78;
    sp0 = sub_0daf0000.unk-6F78;
    sp20 = temp_at->unk20;
    sp18 = temp_at->unk18;
    var_a6 = arg0;
    sp10 = temp_at->unk10;
    sp8 = temp_at->unk8;
    sp48 = arg3;
    if (arg0->unk0 < 0.0f) {

    }
    if (var_a6->unk4 < 0.0f) {

    }
    if (var_a6->unk8 < 0.0f) {

    }
    if (var_a6->unkC < 0.0f) {

    }
    if (var_a6->unk10 < 0.0f) {

    }
    if (var_a6->unk14 < 0.0f) {

    }
    if (var_a6->unk18 < 0.0f) {

    }
    if (var_a6->unk1C < 0.0f) {

    }
    M2C_ERROR(/* unknown instruction: movf $v1, $zero, $fcc0 */);
    var_a7 = arg1;
    arg2->unk0 = 0;
    M2C_ERROR(/* unknown instruction: movz.d $f6, $f4, $v1 */);
    do {
        M2C_ERROR(/* unknown instruction: movt.d $f10, $f9, $fcc1 */);
        temp_f10 = (s32) M2C_ERROR(/* unknown instruction: madd.d $f10, $f10, $f5, $f11 */);
        *var_a7 = (s64) temp_f10;
        var_a6 += 4;
        var_a7 += 8;
        arg2->unk0 = (s64) (arg2->unk0 + temp_f10);
    } while (var_a6 != (arg0 + 0x20));
    temp_a4 = saved_reg_gp->unk-3670;
    temp_a0 = arg1->unk0;
    if (temp_a0 < 0) {
        arg1->unk0 = temp_a0 + temp_a4;
    }
    temp_a0_2 = arg1->unk8;
    if (temp_a0_2 < 0) {
        arg1->unk8 = (s64) (temp_a0_2 + temp_a4);
    }
    temp_a0_3 = arg1->unk10;
    if (temp_a0_3 < 0) {
        arg1->unk10 = (s64) (temp_a0_3 + temp_a4);
    }
    temp_a0_4 = arg1->unk18;
    if (temp_a0_4 < 0) {
        arg1->unk18 = (s64) (temp_a0_4 + temp_a4);
    }
    temp_a0_5 = arg1->unk20;
    if (temp_a0_5 < 0) {
        arg1->unk20 = (s64) (temp_a0_5 + temp_a4);
    }
    temp_a0_6 = arg1->unk28;
    if (temp_a0_6 < 0) {
        arg1->unk28 = (s64) (temp_a0_6 + temp_a4);
    }
    temp_a0_7 = arg1->unk30;
    if (temp_a0_7 < 0) {
        arg1->unk30 = (s64) (temp_a0_7 + temp_a4);
    }
    temp_a0_8 = arg1->unk38;
    if (temp_a0_8 < 0) {
        arg1->unk38 = (s64) (temp_a0_8 + temp_a4);
    }
    temp_a4_2 = arg1->unk0 + arg1->unk8;
    sp50 = temp_a4_2;
    arg2->unk18 = temp_a4_2;
    sp28 = temp_a4_2;
    temp_s7 = arg1->unk10 + arg1->unk18;
    sp58 = temp_s7;
    arg2->unk20 = temp_s7;
    sp30 = temp_s7;
    temp_a3 = arg1->unk20 + arg1->unk28;
    arg2->unk28 = temp_a3;
    var_s5 = 0;
    temp_a4_3 = temp_a4_2 + temp_s7;
    arg2->unk8 = temp_a4_3;
    temp_s3 = arg1->unk30 + arg1->unk38;
    arg2->unk30 = temp_s3;
    var_s6 = temp_a3;
    temp_a5 = temp_a3 + temp_s3;
    arg2->unk10 = temp_a5;
    var_s7 = temp_s3;
    arg2->unk0 = (s64) (temp_a4_3 + temp_a5);
loop_35:
    var_a1 = sp50;
    if (var_s5 > 0) {
        sp40 = 0;
loop_37:
        var_a0 = sp58;
        var_s8 = 0;
loop_38:
        var_a1_2 = temp_a3;
        temp_t9 = var_a0 + var_a1;
        temp_s2 = temp_a3 + temp_t9;
        var_a2 = var_s7 + temp_s2;
        var_s2 = temp_s3 + temp_s2;
        sp38 = temp_s3 + (temp_t9 + var_s6);
        var_s4 = 0;
loop_39:
        var_a0_2 = var_s2;
        var_t1 = 0;
        var_a4 = temp_s3;
        var_t2 = var_a1_2 + temp_s3;
loop_42:
        var_a2_2 = 0;
        var_a1_3 = sp;
loop_43:
        temp_a0_9 = *var_a1_3;
        temp_at_2 = var_a1 % (s64) temp_a0_9;
        var_a1_3 += 4;
        M2C_TRAP_IF(temp_a0_9 == 0);
        if (temp_at_2 != 0) {
            M2C_TRAP_IF(temp_a0_9 == 0);
            if ((var_a0 % (s64) temp_a0_9) != 0) {
                M2C_TRAP_IF(temp_a0_9 == 0);
                if ((var_a1_2 % (s64) temp_a0_9) != 0) {
                    M2C_TRAP_IF(temp_a0_9 == 0);
                    if ((var_a4 % (s64) temp_a0_9) != 0) {
                        M2C_TRAP_IF(temp_a0_9 == 0);
                        if ((temp_t9 % (s64) temp_a0_9) != 0) {
                            M2C_TRAP_IF(temp_a0_9 == 0);
                            if ((var_t2 % (s64) temp_a0_9) != 0) {
                                M2C_TRAP_IF(temp_a0_9 == 0);
                                if ((var_a0_2 % (s64) temp_a0_9) != 0) {
                                    var_a2_2 += 1;
                                    if (var_a1_3 == &sp24) {

                                    } else {
                                        goto loop_43;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        temp_a6 = var_a4 + 1;
        if (var_a2_2 != 9) {
            var_a0_2 += 1;
            var_t1 += 1;
            var_t2 = var_a1_2 + temp_a6;
            var_a4 = temp_a6;
            if (var_a0_2 != var_a2) {
                goto loop_42;
            }
            var_s2 += 1;
            var_a2 += 1;
            var_a1_2 += 1;
            var_s4 += 1;
            if (var_s2 == sp38) {
                var_a0 += 1;
                var_s8 += 1;
                if (var_a0 == sp30) {
                    var_a1 += 1;
                    sp40 += 1;
                    if (var_a1 == sp28) {
                        goto block_55;
                    }
                    goto loop_37;
                }
                goto loop_38;
            }
            goto loop_39;
        }
        sp48->unk30 = var_a4;
        sp48->unk20 = var_a0;
        sp48->unk18 = var_a1;
        sp48->unk10 = var_t2;
        sp48->unk8 = temp_t9;
        temp_s4 = (var_t1 >= var_s4) ? var_t1 : var_s4;
        sp48->unk28 = var_a1_2;
        temp_v0 = (var_s8 >= sp40) ? var_s8 : sp40;
        sp48->unk0 = var_a0_2;
        return (temp_s4 >= temp_v0) ? temp_s4 : temp_v0;
    }
block_55:
    var_s6 += 1;
    var_s5 += 1;
    var_s7 += 1;
    sp28 += 1;
    sp30 += 1;
    if (var_s5 == 0x100) {
        return 0;
    }
    goto loop_35;
}

s32 __glOdyssey_ks_to_alphas(void *arg1, ? *arg2, s64 arg3, s64 arg4) {
    s64 sp38;
    s32 temp_a2_10;
    s32 temp_a2_11;
    s32 temp_a2_12;
    s32 temp_a2_13;
    s32 temp_a2_14;
    s32 temp_a2_15;
    s32 temp_a2_8;
    s32 temp_a2_9;
    s32 temp_s8;
    s64 temp_a2;
    s64 temp_a2_2;
    s64 temp_a2_3;
    s64 temp_a2_4;
    s64 temp_a2_5;
    s64 temp_a2_6;
    s64 temp_a2_7;
    s64 temp_a3;
    s64 temp_a5;
    s64 temp_a5_2;
    s64 temp_a5_3;
    s64 temp_a5_4;
    s64 temp_a5_5;
    s64 temp_a5_6;
    s64 temp_a5_7;
    s64 temp_a6;
    s64 temp_a7;
    s64 temp_a7_2;
    s64 temp_a7_3;
    s64 temp_hi;
    s64 temp_hi_2;
    s64 temp_hi_3;
    s64 temp_hi_4;
    s64 temp_hi_5;
    s64 temp_hi_6;
    s64 temp_hi_7;
    s64 temp_lo;
    s64 temp_lo_2;
    s64 temp_lo_3;
    s64 temp_lo_4;
    s64 temp_lo_5;
    s64 temp_lo_6;
    s64 temp_lo_7;
    s64 temp_v0;
    void *temp_s2;

    temp_s8 = __glOdysseyReconstructFromResidue(sp, &sp38, arg3);
    temp_s2 = &sub_0daf0000 - 0x3810 + (arg4 * 8);
    temp_v0 = __glOdysseyReconstructFromResidue((void *)0x1000, temp_s2->unk4);
    temp_a2 = temp_s2->unk0;
    temp_lo = ((s64) (temp_v0 * temp_v0) % temp_a2) * ((s64) (temp_v0 * sp38) % temp_a2);
    temp_a6 = (temp_lo % temp_a2) << 0;
    temp_a5 = 0x1000 - temp_a6;
    temp_hi = temp_a5 % temp_a2;
    arg2->unk1C = (s32) temp_hi;
    M2C_TRAP_IF(temp_a2 == 0);
    M2C_TRAP_IF(temp_a2 == 0);
    M2C_TRAP_IF(temp_a2 == 0);
    M2C_TRAP_IF(temp_a2 == 0);
    M2C_TRAP_IF(temp_a2 == 0);
    temp_lo_2 = __glOdysseyReconstructFromResidue((void *) ((sp38 % temp_a2) << 0), (s64 *) (temp_a2 << 0), temp_a2, sp38, temp_hi, temp_a5, temp_a6, temp_lo) * sp48;
    temp_a2_2 = temp_s2->unk0;
    temp_a5_2 = (temp_lo_2 % temp_a2_2) << 0xC;
    temp_hi_2 = temp_a5_2 % temp_a2_2;
    arg2->unk18 = (s32) temp_hi_2;
    M2C_TRAP_IF(temp_a2_2 == 0);
    M2C_TRAP_IF(temp_a2_2 == 0);
    M2C_TRAP_IF(temp_a2_2 == 0);
    temp_lo_3 = __glOdysseyReconstructFromResidue((void *) ((sp48 % temp_a2_2) << 0), (s64 *) (temp_a2_2 << 0), temp_a2_2, sp48, temp_hi_2, temp_a5_2, temp_lo_2, sp48) * sp68;
    temp_a2_3 = temp_s2->unk0;
    temp_a5_3 = (temp_lo_3 % temp_a2_3) << 0xC;
    temp_hi_3 = temp_a5_3 % temp_a2_3;
    arg2->unk14 = (s32) temp_hi_3;
    M2C_TRAP_IF(temp_a2_3 == 0);
    M2C_TRAP_IF(temp_a2_3 == 0);
    M2C_TRAP_IF(temp_a2_3 == 0);
    temp_lo_4 = __glOdysseyReconstructFromResidue((void *) ((sp40 % temp_a2_3) << 0), (s64 *) (temp_a2_3 << 0), temp_a2_3, sp40, temp_hi_3, temp_a5_3, temp_lo_3, sp68) * sp58;
    temp_a2_4 = temp_s2->unk0;
    temp_a5_4 = (temp_lo_4 % temp_a2_4) << 0xC;
    temp_hi_4 = temp_a5_4 % temp_a2_4;
    arg2->unk10 = (s32) temp_hi_4;
    M2C_TRAP_IF(temp_a2_4 == 0);
    M2C_TRAP_IF(temp_a2_4 == 0);
    M2C_TRAP_IF(temp_a2_4 == 0);
    temp_a7 = arg1->unk38;
    temp_lo_5 = __glOdysseyReconstructFromResidue((void *) ((sp68 % temp_a2_4) << 0), (s64 *) (temp_a2_4 << 0), temp_a2_4, sp68, temp_hi_4, temp_a5_4, temp_lo_4, sp58) * temp_a7;
    temp_a2_5 = temp_s2->unk0;
    temp_a5_5 = (temp_lo_5 % temp_a2_5) << 0xC;
    temp_hi_5 = temp_a5_5 % temp_a2_5;
    arg2->unkC = (s32) temp_hi_5;
    M2C_TRAP_IF(temp_a2_5 == 0);
    M2C_TRAP_IF(temp_a2_5 == 0);
    M2C_TRAP_IF(temp_a2_5 == 0);
    temp_a7_2 = arg1->unk28;
    temp_lo_6 = __glOdysseyReconstructFromResidue((void *) ((sp60 % temp_a2_5) << 0), (s64 *) (temp_a2_5 << 0), temp_a2_5, sp60, temp_hi_5, temp_a5_5, temp_lo_5, temp_a7) * temp_a7_2;
    temp_a2_6 = temp_s2->unk0;
    temp_a5_6 = (temp_lo_6 % temp_a2_6) << 0xC;
    temp_hi_6 = temp_a5_6 % temp_a2_6;
    arg2->unk8 = (s32) temp_hi_6;
    M2C_TRAP_IF(temp_a2_6 == 0);
    M2C_TRAP_IF(temp_a2_6 == 0);
    M2C_TRAP_IF(temp_a2_6 == 0);
    temp_a7_3 = arg1->unk18;
    temp_lo_7 = __glOdysseyReconstructFromResidue((void *) ((sp58 % temp_a2_6) << 0), (s64 *) (temp_a2_6 << 0), temp_a2_6, sp58, temp_hi_6, temp_a5_6, temp_lo_6, temp_a7_2) * temp_a7_3;
    temp_a2_7 = temp_s2->unk0;
    temp_a5_7 = (temp_lo_7 % temp_a2_7) << 0xC;
    temp_hi_7 = temp_a5_7 % temp_a2_7;
    arg2->unk4 = (s32) temp_hi_7;
    M2C_TRAP_IF(temp_a2_7 == 0);
    M2C_TRAP_IF(temp_a2_7 == 0);
    M2C_TRAP_IF(temp_a2_7 == 0);
    temp_a3 = temp_s2->unk0;
    M2C_TRAP_IF(temp_a3 == 0);
    M2C_TRAP_IF(temp_a3 == 0);
    arg2->unk0 = (s32) ((s64) (((s64) (__glOdysseyReconstructFromResidue((void *) ((sp50 % temp_a2_7) << 0), (s64 *) (temp_a2_7 << 0), temp_a2_7, sp50, temp_hi_7, temp_a5_7, temp_lo_7, temp_a7_3) * arg1->unk8) % temp_a3) << 0xC) % temp_a3);
    temp_a2_8 = arg2->unk0;
    if (temp_a2_8 < 0) {
        arg2->unk0 = (s32) (temp_a2_8 + temp_a3);
    }
    temp_a2_9 = arg2->unk4;
    if (temp_a2_9 < 0) {
        arg2->unk4 = (s32) (temp_a2_9 + temp_a3);
    }
    temp_a2_10 = arg2->unk8;
    if (temp_a2_10 < 0) {
        arg2->unk8 = (s32) (temp_a2_10 + temp_a3);
    }
    temp_a2_11 = arg2->unkC;
    if (temp_a2_11 < 0) {
        arg2->unkC = (s32) (temp_a2_11 + temp_a3);
    }
    temp_a2_12 = arg2->unk10;
    if (temp_a2_12 < 0) {
        arg2->unk10 = (s32) (temp_a2_12 + temp_a3);
    }
    temp_a2_13 = arg2->unk14;
    if (temp_a2_13 < 0) {
        arg2->unk14 = (s32) (temp_a2_13 + temp_a3);
    }
    temp_a2_14 = arg2->unk18;
    if (temp_a2_14 < 0) {
        arg2->unk18 = (s32) (temp_a2_14 + temp_a3);
    }
    temp_a2_15 = arg2->unk1C;
    if (temp_a2_15 < 0) {
        arg2->unk1C = (s32) (temp_a2_15 + temp_a3);
    }
    return temp_s8;
}

void __glOdysseyCvtToInternalFmt(f32 *arg0, s32 arg1, s32 arg2) {
    f32 *var_a2_2;
    f32 *var_a2_4;
    f32 *var_a2_6;
    f32 *var_a2_8;
    f32 *var_a2_9;
    f32 *var_a5;
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    s32 var_a2;
    s32 var_a2_3;
    s32 var_a2_5;
    s32 var_a2_7;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;

    var_a5 = arg0;
    if (arg2 != 0x1908) {
        if (arg2 != 0x1906) {
            if (arg2 != 0x1909) {
                if (arg2 != 0x8049) {
                    if (arg2 != 0x190A) {
                        if ((arg2 == 0x1907) && (arg1 > 0)) {
                            var_a2 = arg1 & 3;
                            var_a4 = 0;
                            if (var_a2 != 0) {
                                do {
                                    var_a2 -= 1;
                                    var_a5 += 0x10;
                                    var_a4 += 1;
                                    var_a5->unk-4 = 1.0f;
                                } while (var_a2 != 0);
                            }
                            var_a2_2 = var_a5;
                            if ((arg1 >> 2) != 0) {
                                do {
                                    var_a2_2 += 0x40;
                                    var_a2_2->unk-4 = 1.0f;
                                    var_a2_2->unk-14 = 1.0f;
                                    var_a4 += 4;
                                    var_a2_2->unk-24 = 1.0f;
                                    var_a2_2->unk-34 = 1.0f;
                                } while (arg1 != var_a4);
                            }
                        }
                    } else {
                        var_a2_3 = arg1 & 3;
                        if (arg1 > 0) {
                            var_a4_2 = 0;
                            if (var_a2_3 != 0) {
                                do {
                                    temp_f11 = *var_a5;
                                    var_a5 += 0x10;
                                    var_a2_3 -= 1;
                                    var_a5->unk-8 = temp_f11;
                                    var_a5->unk-C = temp_f11;
                                    var_a4_2 += 1;
                                    var_a5->unk-10 = temp_f11;
                                } while (var_a2_3 != 0);
                            }
                            var_a2_4 = var_a5;
                            if ((arg1 >> 2) != 0) {
                                do {
                                    temp_f15 = var_a2_4->unk30;
                                    var_a2_4 += 0x40;
                                    var_a2_4->unk-8 = temp_f15;
                                    var_a2_4->unk-C = temp_f15;
                                    temp_f14 = var_a2_4->unk-20;
                                    var_a2_4->unk-10 = temp_f15;
                                    var_a2_4->unk-18 = temp_f14;
                                    var_a2_4->unk-1C = temp_f14;
                                    temp_f13 = var_a2_4->unk-30;
                                    var_a2_4->unk-20 = temp_f14;
                                    var_a2_4->unk-28 = temp_f13;
                                    var_a2_4->unk-2C = temp_f13;
                                    temp_f12 = var_a2_4->unk-40;
                                    var_a2_4->unk-30 = temp_f13;
                                    var_a4_2 += 4;
                                    var_a2_4->unk-38 = temp_f12;
                                    var_a2_4->unk-3C = temp_f12;
                                    var_a2_4->unk-40 = temp_f12;
                                } while (arg1 != var_a4_2);
                            }
                        }
                    }
                } else {
                    var_a2_5 = arg1 & 3;
                    if (arg1 > 0) {
                        var_a4_3 = 0;
                        if (var_a2_5 != 0) {
                            do {
                                temp_f6 = *var_a5;
                                var_a5 += 0x10;
                                var_a5->unk-4 = temp_f6;
                                var_a2_5 -= 1;
                                var_a5->unk-8 = temp_f6;
                                var_a5->unk-C = temp_f6;
                                var_a4_3 += 1;
                                var_a5->unk-10 = temp_f6;
                            } while (var_a2_5 != 0);
                        }
                        var_a2_6 = var_a5;
                        if ((arg1 >> 2) != 0) {
                            do {
                                temp_f10 = var_a2_6->unk30;
                                var_a2_6 += 0x40;
                                var_a2_6->unk-4 = temp_f10;
                                var_a2_6->unk-8 = temp_f10;
                                var_a2_6->unk-C = temp_f10;
                                temp_f9 = var_a2_6->unk-20;
                                var_a2_6->unk-10 = temp_f10;
                                var_a2_6->unk-14 = temp_f9;
                                var_a2_6->unk-18 = temp_f9;
                                var_a2_6->unk-1C = temp_f9;
                                temp_f8 = var_a2_6->unk-30;
                                var_a2_6->unk-20 = temp_f9;
                                var_a2_6->unk-24 = temp_f8;
                                var_a2_6->unk-28 = temp_f8;
                                var_a2_6->unk-2C = temp_f8;
                                temp_f7 = var_a2_6->unk-40;
                                var_a2_6->unk-30 = temp_f8;
                                var_a2_6->unk-34 = temp_f7;
                                var_a4_3 += 4;
                                var_a2_6->unk-38 = temp_f7;
                                var_a2_6->unk-3C = temp_f7;
                                var_a2_6->unk-40 = temp_f7;
                            } while (arg1 != var_a4_3);
                        }
                    }
                }
            } else if (arg1 > 0) {
                var_a2_7 = arg1 & 3;
                var_a4_4 = 0;
                if (var_a2_7 != 0) {
                    do {
                        var_a5 += 0x10;
                        temp_f0 = var_a5->unk-10;
                        var_a5->unk-4 = 1.0f;
                        var_a2_7 -= 1;
                        var_a5->unk-8 = temp_f0;
                        var_a5->unk-C = temp_f0;
                        var_a4_4 += 1;
                        var_a5->unk-10 = temp_f0;
                    } while (var_a2_7 != 0);
                }
                var_a2_8 = var_a5;
                if ((arg1 >> 2) != 0) {
                    do {
                        var_a2_8 += 0x40;
                        var_a2_8->unk-4 = 1.0f;
                        var_a2_8->unk-14 = 1.0f;
                        var_a2_8->unk-24 = 1.0f;
                        temp_f5 = var_a2_8->unk-10;
                        var_a2_8->unk-34 = 1.0f;
                        var_a2_8->unk-8 = temp_f5;
                        var_a2_8->unk-C = temp_f5;
                        temp_f3 = var_a2_8->unk-20;
                        var_a2_8->unk-10 = temp_f5;
                        var_a2_8->unk-18 = temp_f3;
                        var_a2_8->unk-1C = temp_f3;
                        temp_f2 = var_a2_8->unk-30;
                        var_a2_8->unk-20 = temp_f3;
                        var_a2_8->unk-28 = temp_f2;
                        var_a2_8->unk-2C = temp_f2;
                        temp_f1 = var_a2_8->unk-40;
                        var_a2_8->unk-30 = temp_f2;
                        var_a4_4 += 4;
                        var_a2_8->unk-38 = temp_f1;
                        var_a2_8->unk-3C = temp_f1;
                        var_a2_8->unk-40 = temp_f1;
                    } while (arg1 != var_a4_4);
                }
            }
        } else if (arg1 > 0) {
            var_a4_5 = 0;
            if (arg1 & 1) {
                arg0->unk8 = 0.0f;
                arg0->unk4 = 0.0f;
                var_a5 = arg0 + 0x10;
                var_a4_5 = 1;
                arg0->unk0 = 0.0f;
            }
            var_a2_9 = var_a5;
            if ((arg1 >> 1) != 0) {
                do {
                    var_a2_9 += 0x20;
                    var_a2_9->unk-8 = 0.0f;
                    var_a2_9->unk-C = 0.0f;
                    var_a2_9->unk-10 = 0.0f;
                    var_a2_9->unk-18 = 0.0f;
                    var_a4_5 += 2;
                    var_a2_9->unk-1C = 0.0f;
                    var_a2_9->unk-20 = 0.0f;
                } while (arg1 != var_a4_5);
            }
        }
    }
}

/*
Decompilation failure in function __glOdysseyMap2DFilterToAlphas:

Unable to determine jump table for jr instruction at ody_image_convolve.s line 7483.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdysseyMap1DFilterToAlphas(void *arg0, f32 *arg1, s32 arg2, s64 arg3) {
    f32 *temp_a4;
    f32 *temp_a4_2;
    f32 *temp_a4_3;
    f32 *temp_a4_4;
    f32 *temp_a4_5;
    f32 *temp_s3;
    f32 *temp_s3_2;
    f32 *var_a5;
    f32 *var_a5_2;
    f32 *var_a5_3;
    f32 *var_a5_4;
    f32 *var_a5_5;
    f32 *var_a5_6;
    f32 *var_a5_7;
    f32 *var_a5_8;
    f32 *var_a5_9;
    f32 *var_a6;
    f32 *var_a6_2;
    f32 *var_a6_3;
    f32 *var_a6_4;
    f32 temp_f13;
    s32 temp_a0;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a6_7;
    s32 var_a6_8;
    s32 var_a6_9;
    s32 var_s0;
    s32 var_s0_2;
    s64 var_s1;
    s64 var_s1_2;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a7_5;
    void *temp_a7_6;
    void *temp_a7_7;
    void *temp_a7_8;
    void *temp_a7_9;
    void *temp_f12;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t0_4;

    if (*(s32 *)0x1018 != 1) {
        temp_a0 = (*(void **)0x1010)->unk2FC->unk40;
        if (arg2 != 2) {
            if (arg2 != 3) {
                if (temp_a0 != 1) {
                    if (temp_a0 != 2) {
                        if (temp_a0 != 3) {
                            if (temp_a0 == 4) {
                                var_a6 = NULL;
                                var_a5 = arg1;
                                temp_a7 = arg2 * 0xB60;
                                do {
                                    (var_a6 + (arg0->unk14 + temp_a7))->unk-B60 = (f32) var_a5->unk0;
                                    (var_a6 + (arg0->unk14 + temp_a7))->unk-B5C = (f32) var_a5->unk10;
                                    (var_a6 + (arg0->unk14 + temp_a7))->unk-B58 = 0.0f;
                                    (var_a6 + (arg0->unk14 + temp_a7))->unk-B54 = 0.0f;
                                    (var_a6 + (arg0->unk14 + temp_a7))->unk-B50 = (f32) var_a5->unk20;
                                    (var_a6 + (arg0->unk14 + temp_a7))->unk-B4C = (f32) var_a5->unk30;
                                    (var_a6 + (arg0->unk14 + temp_a7))->unk-B48 = 0.0f;
                                    var_a5 += 4;
                                    temp_t0 = var_a6 + (arg0->unk14 + temp_a7);
                                    var_a6 += 0x94;
                                    temp_t0->unk-B44 = 0.0f;
                                } while (var_a5 != (arg1 + 0x10));
                                __glOdysseyProgramConvolutionFilter((arg0->unk14 + temp_a7) - 0xB60, arg0, arg2 - 1, arg3, var_a5, var_a6, temp_a7);
                            }
                        } else {
                            var_a6_2 = NULL;
                            var_a5_2 = arg1;
                            temp_a7_2 = arg2 * 0xB60;
                            do {
                                (var_a6_2 + (arg0->unk14 + temp_a7_2))->unk-B60 = (f32) var_a5_2->unk0;
                                (var_a6_2 + (arg0->unk14 + temp_a7_2))->unk-B5C = (f32) var_a5_2->unk10;
                                (var_a6_2 + (arg0->unk14 + temp_a7_2))->unk-B58 = 0.0f;
                                (var_a6_2 + (arg0->unk14 + temp_a7_2))->unk-B54 = 0.0f;
                                (var_a6_2 + (arg0->unk14 + temp_a7_2))->unk-B50 = (f32) var_a5_2->unk20;
                                (var_a6_2 + (arg0->unk14 + temp_a7_2))->unk-B4C = 0.0f;
                                (var_a6_2 + (arg0->unk14 + temp_a7_2))->unk-B48 = 0.0f;
                                var_a5_2 += 4;
                                temp_t0_2 = var_a6_2 + (arg0->unk14 + temp_a7_2);
                                var_a6_2 += 0x94;
                                temp_t0_2->unk-B44 = 0.0f;
                            } while (var_a5_2 != (arg1 + 0x10));
                            __glOdysseyProgramConvolutionFilter((arg0->unk14 + temp_a7_2) - 0xB60, arg0, arg2 - 1, arg3, var_a5_2, var_a6_2, temp_a7_2);
                        }
                    } else {
                        var_a6_3 = NULL;
                        var_a5_3 = arg1;
                        temp_a7_3 = arg2 * 0xB60;
                        do {
                            temp_f13 = var_a5_3->unk0;
                            (var_a6_3 + (arg0->unk14 + temp_a7_3))->unk-B60 = temp_f13;
                            temp_f12 = var_a5_3->unk10;
                            (var_a6_3 + (arg0->unk14 + temp_a7_3))->unk-B5C = temp_f12;
                            (var_a6_3 + (arg0->unk14 + temp_a7_3))->unk-B58 = 0.0f;
                            (var_a6_3 + (arg0->unk14 + temp_a7_3))->unk-B54 = 0.0f;
                            (var_a6_3 + (arg0->unk14 + temp_a7_3))->unk-B50 = 0.0f;
                            (var_a6_3 + (arg0->unk14 + temp_a7_3))->unk-B4C = 0.0f;
                            (var_a6_3 + (arg0->unk14 + temp_a7_3))->unk-B48 = 0.0f;
                            var_a5_3 += 4;
                            temp_t0_3 = var_a6_3 + (arg0->unk14 + temp_a7_3);
                            var_a6_3 += 0x94;
                            temp_t0_3->unk-B44 = 0.0f;
                        } while (var_a5_3 != (arg1 + 0x10));
                        __glOdysseyProgramConvolutionFilter((arg0->unk14 + temp_a7_3) - 0xB60, arg0, arg2 - 1, arg3, var_a5_3, var_a6_3, temp_a7_3, temp_f12, temp_f13);
                    }
                } else {
                    var_a6_4 = NULL;
                    var_a5_4 = arg1;
                    temp_a7_4 = arg2 * 0xB60;
                    do {
                        (var_a6_4 + (arg0->unk14 + temp_a7_4))->unk-B60 = (f32) *var_a5_4;
                        (var_a6_4 + (arg0->unk14 + temp_a7_4))->unk-B5C = 0.0f;
                        (var_a6_4 + (arg0->unk14 + temp_a7_4))->unk-B58 = 0.0f;
                        (var_a6_4 + (arg0->unk14 + temp_a7_4))->unk-B54 = 0.0f;
                        (var_a6_4 + (arg0->unk14 + temp_a7_4))->unk-B50 = 0.0f;
                        (var_a6_4 + (arg0->unk14 + temp_a7_4))->unk-B4C = 0.0f;
                        (var_a6_4 + (arg0->unk14 + temp_a7_4))->unk-B48 = 0.0f;
                        var_a5_4 += 4;
                        temp_t0_4 = var_a6_4 + (arg0->unk14 + temp_a7_4);
                        var_a6_4 += 0x94;
                        temp_t0_4->unk-B44 = 0.0f;
                    } while (var_a5_4 != (arg1 + 0x10));
                    __glOdysseyProgramConvolutionFilter((arg0->unk14 + temp_a7_4) - 0xB60, arg0, arg2 - 1, arg3, var_a5_4, var_a6_4, temp_a7_4);
                }
            } else {
                var_s0 = 0;
                if (arg2 > 0) {
                    var_s1 = 0;
                    temp_s3 = arg1 + 0x10;
loop_37:
                    var_a6_5 = 0;
                    if (var_s1 != 0) {
                        var_a6_6 = 0;
                        if (var_s1 != 1) {
                            var_a6_7 = 0;
                            if (var_s1 == 2) {
                                var_a5_5 = arg1;
                                do {
                                    *(var_a6_7 + (arg0->unk14 + var_s0)) = var_a5_5->unk80;
                                    (var_a6_7 + (arg0->unk14 + var_s0))->unk4 = (f32) var_a5_5->unk90;
                                    (var_a6_7 + (arg0->unk14 + var_s0))->unk8 = 0.0f;
                                    temp_a7_5 = var_a6_7 + (arg0->unk14 + var_s0);
                                    temp_a7_5->unkC = 0.0f;
                                    temp_a4 = var_a6_7 + (arg0->unk14 + var_s0);
                                    temp_a4->unk10 = (f32) var_a5_5->unkA0;
                                    (var_a6_7 + (arg0->unk14 + var_s0))->unk14 = 0.0f;
                                    (var_a6_7 + (arg0->unk14 + var_s0))->unk18 = 0.0f;
                                    var_a5_5 += 4;
                                    temp_a1 = var_a6_7 + (arg0->unk14 + var_s0);
                                    var_a6_7 += 0x94;
                                    temp_a1->unk1C = 0.0f;
                                } while (var_a5_5 != temp_s3);
                                __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0, arg0, var_s1, arg3, temp_a4, var_a5_5, var_a6_7, temp_a7_5);
                            }
                        } else {
                            var_a5_6 = arg1;
                            do {
                                *(var_a6_6 + (arg0->unk14 + var_s0)) = var_a5_6->unk40;
                                (var_a6_6 + (arg0->unk14 + var_s0))->unk4 = (f32) var_a5_6->unk50;
                                (var_a6_6 + (arg0->unk14 + var_s0))->unk8 = 0.0f;
                                temp_a7_6 = var_a6_6 + (arg0->unk14 + var_s0);
                                temp_a7_6->unkC = 0.0f;
                                temp_a4_2 = var_a6_6 + (arg0->unk14 + var_s0);
                                temp_a4_2->unk10 = (f32) var_a5_6->unk60;
                                (var_a6_6 + (arg0->unk14 + var_s0))->unk14 = (f32) var_a5_6->unk70;
                                (var_a6_6 + (arg0->unk14 + var_s0))->unk18 = 0.0f;
                                var_a5_6 += 4;
                                temp_a1_2 = var_a6_6 + (arg0->unk14 + var_s0);
                                var_a6_6 += 0x94;
                                temp_a1_2->unk1C = 0.0f;
                            } while (var_a5_6 != temp_s3);
                            __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0, arg0, var_s1, arg3, temp_a4_2, var_a5_6, var_a6_6, temp_a7_6);
                        }
                    } else {
                        var_a5_7 = arg1;
                        do {
                            *(var_a6_5 + (arg0->unk14 + var_s0)) = var_a5_7->unk0;
                            (var_a6_5 + (arg0->unk14 + var_s0))->unk4 = (f32) var_a5_7->unk10;
                            (var_a6_5 + (arg0->unk14 + var_s0))->unk8 = 0.0f;
                            temp_a7_7 = var_a6_5 + (arg0->unk14 + var_s0);
                            temp_a7_7->unkC = 0.0f;
                            temp_a4_3 = var_a6_5 + (arg0->unk14 + var_s0);
                            temp_a4_3->unk10 = (f32) var_a5_7->unk20;
                            (var_a6_5 + (arg0->unk14 + var_s0))->unk14 = (f32) var_a5_7->unk30;
                            (var_a6_5 + (arg0->unk14 + var_s0))->unk18 = 0.0f;
                            var_a5_7 += 4;
                            temp_a1_3 = var_a6_5 + (arg0->unk14 + var_s0);
                            var_a6_5 += 0x94;
                            temp_a1_3->unk1C = 0.0f;
                        } while (var_a5_7 != temp_s3);
                        __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0, arg0, var_s1, arg3, temp_a4_3, var_a5_7, var_a6_5, temp_a7_7);
                    }
                    var_s1 += 1;
                    var_s0 += 0xB60;
                    if (arg2 != var_s1) {
                        goto loop_37;
                    }
                }
            }
        } else {
            var_s0_2 = 0;
            if (arg2 > 0) {
                var_s1_2 = 0;
                temp_s3_2 = arg1 + 0x10;
loop_21:
                var_a6_8 = 0;
                if (var_s1_2 != 0) {
                    var_a6_9 = 0;
                    if (var_s1_2 == 1) {
                        var_a5_8 = arg1;
                        do {
                            *(var_a6_9 + (arg0->unk14 + var_s0_2)) = var_a5_8->unk40;
                            (var_a6_9 + (arg0->unk14 + var_s0_2))->unk4 = (f32) var_a5_8->unk50;
                            (var_a6_9 + (arg0->unk14 + var_s0_2))->unk8 = 0.0f;
                            temp_a7_8 = var_a6_9 + (arg0->unk14 + var_s0_2);
                            temp_a7_8->unkC = 0.0f;
                            temp_a4_4 = var_a6_9 + (arg0->unk14 + var_s0_2);
                            temp_a4_4->unk10 = (f32) var_a5_8->unk60;
                            (var_a6_9 + (arg0->unk14 + var_s0_2))->unk14 = 0.0f;
                            (var_a6_9 + (arg0->unk14 + var_s0_2))->unk18 = 0.0f;
                            var_a5_8 += 4;
                            temp_a1_4 = var_a6_9 + (arg0->unk14 + var_s0_2);
                            var_a6_9 += 0x94;
                            temp_a1_4->unk1C = 0.0f;
                        } while (var_a5_8 != temp_s3_2);
                        __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0_2, arg0, var_s1_2, arg3, temp_a4_4, var_a5_8, var_a6_9, temp_a7_8);
                    }
                } else {
                    var_a5_9 = arg1;
                    do {
                        *(var_a6_8 + (arg0->unk14 + var_s0_2)) = var_a5_9->unk0;
                        (var_a6_8 + (arg0->unk14 + var_s0_2))->unk4 = (f32) var_a5_9->unk10;
                        (var_a6_8 + (arg0->unk14 + var_s0_2))->unk8 = 0.0f;
                        temp_a7_9 = var_a6_8 + (arg0->unk14 + var_s0_2);
                        temp_a7_9->unkC = 0.0f;
                        temp_a4_5 = var_a6_8 + (arg0->unk14 + var_s0_2);
                        temp_a4_5->unk10 = (f32) var_a5_9->unk20;
                        (var_a6_8 + (arg0->unk14 + var_s0_2))->unk14 = (f32) var_a5_9->unk30;
                        (var_a6_8 + (arg0->unk14 + var_s0_2))->unk18 = 0.0f;
                        var_a5_9 += 4;
                        temp_a1_5 = var_a6_8 + (arg0->unk14 + var_s0_2);
                        var_a6_8 += 0x94;
                        temp_a1_5->unk1C = 0.0f;
                    } while (var_a5_9 != temp_s3_2);
                    __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0_2, arg0, var_s1_2, arg3, temp_a4_5, var_a5_9, var_a6_8, temp_a7_9);
                }
                var_s1_2 += 1;
                var_s0_2 += 0xB60;
                if (arg2 != var_s1_2) {
                    goto loop_21;
                }
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdysseyMapSepFilterToAlphas(void *arg0, void *arg1, s64 arg2, s32 arg3, s64 arg4) {
    s64 sp0;
    f32 *temp_a4;
    f32 *temp_a4_2;
    f32 *temp_a4_3;
    f32 *temp_a5;
    f32 *temp_a5_2;
    f32 *temp_a5_3;
    f32 *temp_f12;
    f32 *temp_f13;
    s32 temp_a6;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s64 temp_s4;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s3_3;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a2;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t8_3;
    void *var_a7;
    void *var_a7_2;
    void *var_a7_3;
    void *var_a7_4;
    void *var_a7_5;
    void *var_a7_6;

    temp_s4 = arg2 + arg3;
    temp_a6 = arg2 < temp_s4;
    if (arg3 != 2) {
        if (arg3 != 3) {
            var_s3 = arg2;
            if (temp_a6 != 0) {
                var_s0 = arg2 * 0xB60;
                var_a6 = 0;
                var_a7 = arg1;
                do {
loop_4:
                    *(var_a6 + (arg0->unk14 + var_s0)) = var_a7->unk0;
                    (var_a6 + (arg0->unk14 + var_s0))->unk4 = 0.0f;
                    (var_a6 + (arg0->unk14 + var_s0))->unk8 = (f32) var_a7->unk10;
                    (var_a6 + (arg0->unk14 + var_s0))->unkC = 0.0f;
                    (var_a6 + (arg0->unk14 + var_s0))->unk10 = (f32) var_a7->unk20;
                    (var_a6 + (arg0->unk14 + var_s0))->unk14 = 0.0f;
                    (var_a6 + (arg0->unk14 + var_s0))->unk18 = 0.0f;
                    var_a7 += 4;
                    temp_t8 = var_a6 + (arg0->unk14 + var_s0);
                    var_a6 += 0x94;
                    temp_t8->unk1C = 0.0f;
                    if (var_a7 != (arg1 + 0x10)) {
                        goto loop_4;
                    }
                    __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0, arg0, temp_s4, arg4);
                    var_s3 += 1;
                    var_a6 = 0;
                    var_a7 = arg1;
                    var_s0 += 0xB60;
                } while (temp_s4 != var_s3);
            }
        } else {
            var_s3_2 = arg2;
            if (temp_a6 != 0) {
                temp_s2 = arg1 + 0x10;
                sp0 = arg2 + 2;
                var_s0_2 = arg2 * 0xB60;
loop_26:
                var_a7_2 = arg1;
                if (arg2 != var_s3_2) {
                    if ((arg2 + 1) == var_s3_2) {
                        var_a6_2 = 0;
                        var_a7_3 = arg1;
                        do {
                            *(var_a6_2 + (arg0->unk14 + var_s0_2)) = var_a7_3->unk40;
                            (var_a6_2 + (arg0->unk14 + var_s0_2))->unk4 = 0.0f;
                            (var_a6_2 + (arg0->unk14 + var_s0_2))->unk8 = (f32) var_a7_3->unk50;
                            temp_a5 = var_a6_2 + (arg0->unk14 + var_s0_2);
                            temp_a5->unkC = 0.0f;
                            temp_a4 = var_a6_2 + (arg0->unk14 + var_s0_2);
                            temp_a4->unk10 = (f32) var_a7_3->unk60;
                            (var_a6_2 + (arg0->unk14 + var_s0_2))->unk14 = 0.0f;
                            (var_a6_2 + (arg0->unk14 + var_s0_2))->unk18 = (f32) var_a7_3->unk70;
                            var_a7_3 += 4;
                            temp_a1 = var_a6_2 + (arg0->unk14 + var_s0_2);
                            var_a6_2 += 0x94;
                            temp_a1->unk1C = 0.0f;
                        } while (var_a7_3 != temp_s2);
                        __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0_2, arg0, var_s3_2, arg4, temp_a4, temp_a5, var_a6_2, var_a7_3);
                    } else {
                        var_a7_4 = arg1;
                        var_a6_3 = 0;
                        if (sp0 == var_s3_2) {
                            do {
                                *(var_a6_3 + (arg0->unk14 + var_s0_2)) = var_a7_4->unk80;
                                (var_a6_3 + (arg0->unk14 + var_s0_2))->unk4 = 0.0f;
                                (var_a6_3 + (arg0->unk14 + var_s0_2))->unk8 = (f32) var_a7_4->unk90;
                                (var_a6_3 + (arg0->unk14 + var_s0_2))->unkC = 0.0f;
                                temp_a5_2 = var_a6_3 + (arg0->unk14 + var_s0_2);
                                temp_a5_2->unk10 = (f32) var_a7_4->unkA0;
                                temp_a4_2 = var_a6_3 + (arg0->unk14 + var_s0_2);
                                temp_a4_2->unk14 = 0.0f;
                                (var_a6_3 + (arg0->unk14 + var_s0_2))->unk18 = 0.0f;
                                var_a7_4 += 4;
                                temp_a2 = var_a6_3 + (arg0->unk14 + var_s0_2);
                                var_a6_3 += 0x94;
                                temp_a2->unk1C = 0.0f;
                            } while (var_a7_4 != temp_s2);
                            __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0_2, arg0, var_s3_2, arg4, temp_a4_2, temp_a5_2, var_a6_3, var_a7_4);
                        }
                    }
                } else {
                    var_a6_4 = 0;
                    do {
                        temp_f13 = var_a7_2->unk0;
                        *(var_a6_4 + (arg0->unk14 + var_s0_2)) = temp_f13;
                        (var_a6_4 + (arg0->unk14 + var_s0_2))->unk4 = 0.0f;
                        temp_f12 = var_a7_2->unk10;
                        (var_a6_4 + (arg0->unk14 + var_s0_2))->unk8 = temp_f12;
                        (var_a6_4 + (arg0->unk14 + var_s0_2))->unkC = 0.0f;
                        (var_a6_4 + (arg0->unk14 + var_s0_2))->unk10 = (f32) var_a7_2->unk20;
                        (var_a6_4 + (arg0->unk14 + var_s0_2))->unk14 = 0.0f;
                        (var_a6_4 + (arg0->unk14 + var_s0_2))->unk18 = (f32) var_a7_2->unk30;
                        var_a7_2 += 4;
                        temp_t8_2 = var_a6_4 + (arg0->unk14 + var_s0_2);
                        var_a6_4 += 0x94;
                        temp_t8_2->unk1C = 0.0f;
                    } while (var_a7_2 != temp_s2);
                    __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0_2, arg0, var_s3_2, arg4, temp_f12, temp_f13);
                }
                var_s3_2 += 1;
                var_s0_2 += 0xB60;
                if (temp_s4 != var_s3_2) {
                    goto loop_26;
                }
            }
        }
    } else {
        var_s3_3 = arg2;
        if (temp_a6 != 0) {
            temp_s2_2 = arg1 + 0x10;
            var_s0_3 = arg2 * 0xB60;
loop_13:
            var_a7_5 = arg1;
            if (arg2 != var_s3_3) {
                var_a7_6 = arg1;
                if ((arg2 + 1) == var_s3_3) {
                    var_a6_5 = 0;
                    do {
                        *(var_a6_5 + (arg0->unk14 + var_s0_3)) = var_a7_6->unk40;
                        (var_a6_5 + (arg0->unk14 + var_s0_3))->unk4 = 0.0f;
                        (var_a6_5 + (arg0->unk14 + var_s0_3))->unk8 = (f32) var_a7_6->unk50;
                        temp_a5_3 = var_a6_5 + (arg0->unk14 + var_s0_3);
                        temp_a5_3->unkC = 0.0f;
                        temp_a4_3 = var_a6_5 + (arg0->unk14 + var_s0_3);
                        temp_a4_3->unk10 = (f32) var_a7_6->unk60;
                        (var_a6_5 + (arg0->unk14 + var_s0_3))->unk14 = 0.0f;
                        (var_a6_5 + (arg0->unk14 + var_s0_3))->unk18 = 0.0f;
                        var_a7_6 += 4;
                        temp_a1_2 = var_a6_5 + (arg0->unk14 + var_s0_3);
                        var_a6_5 += 0x94;
                        temp_a1_2->unk1C = 0.0f;
                    } while (var_a7_6 != temp_s2_2);
                    __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0_3, arg0, var_s3_3, arg4, temp_a4_3, temp_a5_3, var_a6_5, var_a7_6);
                }
            } else {
                var_a6_6 = 0;
                do {
                    *(var_a6_6 + (arg0->unk14 + var_s0_3)) = var_a7_5->unk0;
                    (var_a6_6 + (arg0->unk14 + var_s0_3))->unk4 = 0.0f;
                    (var_a6_6 + (arg0->unk14 + var_s0_3))->unk8 = (f32) var_a7_5->unk10;
                    (var_a6_6 + (arg0->unk14 + var_s0_3))->unkC = 0.0f;
                    (var_a6_6 + (arg0->unk14 + var_s0_3))->unk10 = (f32) var_a7_5->unk20;
                    (var_a6_6 + (arg0->unk14 + var_s0_3))->unk14 = 0.0f;
                    (var_a6_6 + (arg0->unk14 + var_s0_3))->unk18 = (f32) var_a7_5->unk30;
                    var_a7_5 += 4;
                    temp_t8_3 = var_a6_6 + (arg0->unk14 + var_s0_3);
                    var_a6_6 += 0x94;
                    temp_t8_3->unk1C = 0.0f;
                } while (var_a7_5 != temp_s2_2);
                __glOdysseyProgramConvolutionFilter(arg0->unk14 + var_s0_3, arg0, var_s3_3, arg4);
            }
            var_s3_3 += 1;
            var_s0_3 += 0xB60;
            if (temp_s4 != var_s3_3) {
                goto loop_13;
            }
        }
    }
}

void __glOdysseyProgram1DOffsets(s64 arg0, s64 arg1, s64 arg2, f64 fparg3) {
    s64 sp8;
    f64 sp0;
    f32 temp_f0;
    s32 temp_f14;
    s32 temp_f15;
    s32 temp_f16;
    s32 temp_f17;
    s32 temp_f19;
    s32 temp_f21;
    s32 temp_f23;
    s32 temp_f25;

    unksp18 = arg2;
    sp0 = fparg3;
    sp8 = arg0;
    temp_f0 = floorf((f32) ((f64) fparg3 * (second half of f64)), second half of f64);
    if ((arg1 != 0) && (arg1 != 1)) {
        if (arg1 != 2) {
            if (arg1 == 3) {
                if (unksp18 != 0) {
                    if (unksp18 != 1) {
                        if (unksp18 == 2) {
                            temp_f14 = (s32) -temp_f0;
                            sp8->unkB50 = 0;
                            sp8->unkB4C = 0;
                            sp8->unkB48 = 0;
                            sp8->unkB44 = (s32) (temp_f14 + 0xA);
                            sp8->unkB40 = (s32) (temp_f14 + 8);
                        }
                    } else {
                        temp_f23 = (s32) -temp_f0;
                        sp8->unkB50 = 0;
                        sp8->unkB4C = 0;
                        sp8->unkB48 = 0;
                        sp8->unkB44 = (s32) (temp_f23 + 6);
                        sp8->unkB40 = (s32) (temp_f23 + 4);
                    }
                } else {
                    sp8->unkB50 = 0;
                    temp_f21 = (s32) -temp_f0;
                    sp8->unkB4C = 0;
                    sp8->unkB48 = 0;
                    sp8->unkB40 = temp_f21;
                    sp8->unkB44 = (s32) (temp_f21 + 2);
                }
            }
        } else if (unksp18 != 0) {
            if (unksp18 == 1) {
                temp_f16 = (s32) -temp_f0;
                sp8->unkB50 = 0;
                sp8->unkB4C = 0;
                sp8->unkB48 = 0;
                sp8->unkB44 = (s32) (temp_f16 + 6);
                sp8->unkB40 = (s32) (temp_f16 + 4);
            }
        } else {
            sp8->unkB50 = 0;
            temp_f25 = (s32) -temp_f0;
            sp8->unkB4C = 0;
            sp8->unkB48 = 0;
            sp8->unkB40 = temp_f25;
            sp8->unkB44 = (s32) (temp_f25 + 2);
        }
    } else {
        temp_f15 = (s32) sp0;
        switch (temp_f15) {                         /* irregular */
        case 4:
            sp8->unkB50 = 0;
            temp_f17 = (s32) -temp_f0;
            sp8->unkB4C = 0;
            sp8->unkB48 = 0;
            sp8->unkB40 = temp_f17;
            sp8->unkB44 = (s32) (temp_f17 + 2);
            return;
        case 1:
            sp8->unkB50 = 0;
            sp8->unkB4C = 0;
            sp8->unkB44 = 0;
            sp8->unkB48 = 0;
            sp8->unkB40 = 0;
            return;
        case 2:
            sp8->unkB50 = 0;
            sp8->unkB4C = 0;
            sp8->unkB44 = 0;
            sp8->unkB48 = 0;
            sp8->unkB40 = (s32) -temp_f0;
            break;
        case 3:
            sp8->unkB50 = 0;
            temp_f19 = (s32) -temp_f0;
            sp8->unkB4C = 0;
            sp8->unkB48 = 0;
            sp8->unkB40 = temp_f19;
            sp8->unkB44 = (s32) (temp_f19 + 2);
            break;
        }
    }
}

/*
Decompilation failure in function __glOdysseyProgram2DOffsets:

Unable to determine jump table for jr instruction at ody_image_convolve.s line 11102.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c, 0x20, 0x24], gap at: 0x10. */
void __glOdysseyProgramSepOffsets(s64 arg0, s32 arg1, s64 arg2, f32 fparg3) {
    f32 temp_f0;
    s32 temp_f14;
    s32 temp_f15;
    s32 temp_f16;
    s32 temp_f17;
    s32 temp_f18;
    s32 temp_f19;

    unksp10 = arg2;
    unksp8 = arg0;
    temp_f0 = floorf((f32) ((f64) fparg3 * (second half of f64)), second half of f64);
    if ((arg1 != 0) && (arg1 != 1)) {
        if (arg1 != 2) {
            if (arg1 == 3) {
                switch (unksp10) {                  /* switch 1; irregular */
                case 2:                             /* switch 1 */
                    temp_f16 = (s32) -temp_f0;
                    unksp8->unkB50 = 0;
                    unksp8->unkB44 = 0;
                    unksp8->unkB40 = 0;
                    unksp8->unkB4C = (s32) (temp_f16 + 0xA);
                    unksp8->unkB48 = (s32) (temp_f16 + 8);
                    return;
                case 0:                             /* switch 1 */
                    unksp8->unkB50 = 0;
                    temp_f17 = (s32) -temp_f0;
                    unksp8->unkB44 = 0;
                    unksp8->unkB40 = 0;
                    unksp8->unkB48 = temp_f17;
                    unksp8->unkB4C = (s32) (temp_f17 + 2);
                    break;
                case 1:                             /* switch 1 */
                    temp_f18 = (s32) -temp_f0;
                    unksp8->unkB50 = 0;
                    unksp8->unkB44 = 0;
                    unksp8->unkB40 = 0;
                    unksp8->unkB4C = (s32) (temp_f18 + 6);
                    unksp8->unkB48 = (s32) (temp_f18 + 4);
                    break;
                }
            }
        } else {
            switch (unksp10) {                      /* switch 2; irregular */
            case 1:                                 /* switch 2 */
                temp_f14 = (s32) -temp_f0;
                unksp8->unkB50 = 0;
                unksp8->unkB44 = 0;
                unksp8->unkB40 = 0;
                unksp8->unkB4C = (s32) (temp_f14 + 6);
                unksp8->unkB48 = (s32) (temp_f14 + 4);
                return;
            case 0:                                 /* switch 2 */
                unksp8->unkB50 = 0;
                temp_f19 = (s32) -temp_f0;
                unksp8->unkB44 = 0;
                unksp8->unkB40 = 0;
                unksp8->unkB48 = temp_f19;
                unksp8->unkB4C = (s32) (temp_f19 + 2);
                return;
            }
        }
    } else {
        unksp8->unkB50 = 0;
        temp_f15 = (s32) -temp_f0;
        unksp8->unkB44 = 0;
        unksp8->unkB40 = 0;
        unksp8->unkB48 = temp_f15;
        unksp8->unkB4C = (s32) (temp_f15 + 2);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c], gap at: 0x10. */
f32 __glOdysseyGenericConvolution(void *arg0, s64 arg1, s64 arg2, s64 arg5, f64 fparg3, f32 fparg4) {
    s64 spD0;
    s64 spC8;
    s64 spC0;
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
    f64 sp0;
    f32 var_f0;
    s32 temp_a0_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_f15;
    s32 temp_f16;
    s32 temp_s0;
    s32 temp_t0;
    s32 temp_t0_4;
    s32 temp_t0_7;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a6;
    s32 var_at;
    s32 var_s0;
    s32 var_s1;
    s32 var_s5;
    s32 var_s6;
    s64 var_a1;
    s64 var_a2;
    s64 var_a4_2;
    s64 var_a5;
    s64 var_a5_2;
    s64 var_a5_3;
    s64 var_a7;
    s64 var_s7;
    s64 var_s8;
    void *temp_a0;
    void *temp_a0_3;
    void *temp_at;
    void *temp_at_2;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_s3_3;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t0_5;
    void *temp_t0_6;
    void *temp_t1;
    void *temp_t1_2;
    void *temp_t1_3;
    void *temp_t2;
    void *temp_t3;
    void *temp_t3_2;
    void *temp_t3_3;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t9;
    void *temp_t9_3;
    void *temp_t9_4;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *var_a3;
    void *var_s3;
    void *var_v0;

    unksp10 = arg5;
    sp58 = arg2;
    sp70 = arg1;
    sp0 = fparg3;
    floorf((f32) ((f64) fparg3 * (second half of f64)), second half of f64);
    sp68 = second half of f64;
    var_f0 = floorf((f32) ((f64) fparg4 * 0.5), second half of f64, 0.5, second half of f64);
    temp_f15 = (s32) fparg4;
    temp_f16 = (s32) sp0;
    if (temp_f16 != temp_f15) {
        var_a5 = temp_f16 * 2;
        goto block_2;
    }
    temp_t0 = temp_f16 >> 0x1F;
    var_a5 = temp_f16 * 2;
    if (((((((temp_f16 ^ temp_t0) - temp_t0) & 1) ^ temp_t0) - temp_t0) != 0) && (var_a5 = temp_f16 * 2, ((temp_f16 < 0xB) != 0)) && (var_a5 = temp_f16 * 2, ((temp_f16 < 2) == 0))) {
        var_f0 = __glOdysseyMap2DFilterToAlphas(arg0, sp70, sp58, unksp10);
    } else {
block_2:
        sp48 = var_a5;
        sp38 = temp_f16 * 4;
        sp40 = temp_f16 * 3;
        sp30 = sp58 > 0;
        var_s6 = 0;
        var_a2 = 0;
        sp60 = (s64) (s32) var_f0;
        sp50 = temp_f16 * temp_f15;
loop_4:
        var_a7 = sp30;
        var_a1 = sp38;
        var_s1 = 0;
        var_s5 = temp_f16;
        var_s8 = sp48;
        var_s7 = sp40;
        var_a5_2 = 0;
        var_s3 = NULL;
loop_5:
        var_s0 = 0;
        if (var_a7 != 0) {
            var_v0 = var_s3;
            var_a4 = temp_f16 > 3;
            var_at = temp_f16 > 1;
loop_11:
            temp_a6 = var_s0 - sp68;
            (arg0->unk14 + var_s1)->unkB40 = temp_a6;
            var_f0 = (bitwise f32) (s32) ((f64) (second half of f64) / (second half of f64));
            (arg0->unk14 + var_s1)->unkB48 = (s32) ((bitwise s32) var_f0 - sp60);
            M2C_TRAP_IF(temp_f16 == 0);
            var_a3 = var_s3;
            temp_a0 = arg0->unk14 + var_s1;
            if (var_a4 == 0) {
                var_a4_2 = sp48;
                if ((var_s0 + 2) < temp_f16) {
                    temp_a0->unkB44 = (s32) (temp_a6 + 2);
                    temp_at = arg0->unk14 + var_s1;
                    temp_at->unkB4C = (s32) temp_at->unkB48;
                    temp_t8 = sp70 + ((var_s6 + ((s32) (var_s3 + var_s0) * 4)) * 4);
                    *(var_a2 + (arg0->unk14 + var_s1)) = temp_t8->unk0;
                    (var_a2 + (arg0->unk14 + var_s1))->unk4 = (f32) temp_t8->unk10;
                    (var_a2 + (arg0->unk14 + var_s1))->unk10 = (f32) temp_t8->unk20;
                    (var_a2 + (arg0->unk14 + var_s1))->unk14 = 0.0f;
                    var_a5_3 = var_a5_2 + 1;
                    var_a6 = var_s1 + 0xB60;
                    temp_t0_2 = var_a2 + (arg0->unk14 + var_s1);
                    if (var_s5 < sp50) {
                        temp_s3 = temp_f16 + var_s3;
                        temp_t9 = sp70 + ((var_s6 + ((s32) (temp_s3 + var_s0) * 4)) * 4);
                        temp_t0_2->unk8 = (f32) temp_t9->unk0;
                        (var_a2 + (arg0->unk14 + var_s1))->unkC = (f32) temp_t9->unk10;
                        (var_a2 + (arg0->unk14 + var_s1))->unk18 = (f32) temp_t9->unk20;
                        var_s5 = temp_f16 + (temp_f16 + var_s5);
                        var_a1 = temp_f16 + (temp_f16 + var_a1);
                        var_s8 = temp_f16 + (temp_f16 + var_s8);
                        var_s7 = temp_f16 + (temp_f16 + var_s7);
                        var_s3 = temp_f16 + temp_s3;
                        var_s0 = 0;
                        (var_a2 + (arg0->unk14 + var_s1))->unk1C = 0.0f;
                    } else {
                        temp_t0_2->unk1C = 0.0f;
                        var_a4_2 = var_a2 + (arg0->unk14 + var_s1);
                        var_a4_2->unk18 = 0.0f;
                        var_a3 = var_a2 + (arg0->unk14 + var_s1);
                        var_a3->unkC = 0.0f;
                        (var_a2 + (arg0->unk14 + var_s1))->unk8 = 0.0f;
                    }
                    sp78 = var_a5_3;
                    spC0 = var_a5_3;
                    spC8 = var_a2;
                    spD0 = var_a1;
                    var_s1 = var_a6;
                    goto block_10;
                }
                temp_t9_2 = (s32) var_s3 >> 0x1F;
                var_a6 = var_s1 + 0xB60;
                if (var_at != 0) {
                    temp_a0->unkB44 = (s32) temp_a0->unkB40;
                    temp_t1 = arg0->unk14 + var_s1;
                    temp_t1->unkB4C = (s32) (temp_t1->unkB48 + 2);
                    var_a4_2 = sp70 + ((var_s6 + ((s32) (var_s3 + var_s0) * 4)) * 4);
                    temp_a6_2 = (s32) var_s3 >> 0x1F;
                    *(var_a2 + (arg0->unk14 + var_s1)) = var_a4_2->unk0;
                    (var_a2 + (arg0->unk14 + var_s1))->unk4 = (f32) var_a4_2->unk10;
                    if (((((((s32) var_s3 ^ temp_a6_2) - temp_a6_2) & 7) ^ temp_a6_2) - temp_a6_2) == 0) {
                        var_a5_3 = var_a5_2 + 1;
                        var_a7 = sp50;
                        temp_t0_3 = var_a2 + (arg0->unk14 + var_s1);
                        if (var_s7 < sp50) {
                            temp_s3_2 = temp_f16 + var_s3;
                            temp_v1 = sp70 + ((var_s6 + ((s32) (temp_s3_2 + var_s0) * 4)) * 4);
                            temp_t0_3->unk8 = (f32) temp_v1->unk0;
                            var_s3 = temp_f16 + temp_s3_2;
                            (var_a2 + (arg0->unk14 + var_s1))->unkC = (f32) temp_v1->unk10;
                            temp_at_2 = sp70 + ((var_s6 + ((s32) (var_s3 + var_s0) * 4)) * 4);
                            (var_a2 + (arg0->unk14 + var_s1))->unk10 = (f32) temp_at_2->unk0;
                            (var_a2 + (arg0->unk14 + var_s1))->unk14 = (f32) temp_at_2->unk10;
                            temp_t3 = sp70 + ((var_s6 + ((s32) (var_s0 + (temp_f16 + var_s3)) * 4)) * 4);
                            (var_a2 + (arg0->unk14 + var_s1))->unk18 = (f32) temp_t3->unk0;
                            var_s5 = temp_f16 + (temp_f16 + var_s5);
                            var_a1 = temp_f16 + (temp_f16 + var_a1);
                            var_s8 = temp_f16 + (temp_f16 + var_s8);
                            var_s7 = temp_f16 + (temp_f16 + var_s7);
                            (var_a2 + (arg0->unk14 + var_s1))->unk1C = (f32) temp_t3->unk10;
                        } else {
                            var_a7 = var_s8 < var_a7;
                            if (var_a7 != 0) {
                                temp_s3_3 = temp_f16 + var_s3;
                                temp_t9_3 = sp70 + ((var_s6 + ((s32) (temp_s3_3 + var_s0) * 4)) * 4);
                                temp_t0_3->unk8 = (f32) temp_t9_3->unk0;
                                var_s3 = temp_f16 + temp_s3_3;
                                (var_a2 + (arg0->unk14 + var_s1))->unkC = (f32) temp_t9_3->unk10;
                                temp_t1_2 = sp70 + ((var_s6 + ((s32) (var_s3 + var_s0) * 4)) * 4);
                                (var_a2 + (arg0->unk14 + var_s1))->unk10 = (f32) temp_t1_2->unk0;
                                var_a7 = var_a2 + (arg0->unk14 + var_s1);
                                var_a7->unk14 = (f32) temp_t1_2->unk10;
                                var_a4_2 = var_a2 + (arg0->unk14 + var_s1);
                                var_a4_2->unk18 = 0.0f;
                                var_s5 = temp_f16 + (temp_f16 + var_s5);
                                var_a1 = temp_f16 + (temp_f16 + var_a1);
                                var_s8 = temp_f16 + (temp_f16 + var_s8);
                                var_s7 = temp_f16 + (temp_f16 + var_s7);
                                (var_a2 + (arg0->unk14 + var_s1))->unk1C = 0.0f;
                            } else if (var_s5 < sp50) {
                                var_s3 += temp_f16;
                                temp_t2 = sp70 + ((var_s6 + ((s32) (var_s3 + var_s0) * 4)) * 4);
                                temp_t0_3->unk8 = (f32) temp_t2->unk0;
                                (var_a2 + (arg0->unk14 + var_s1))->unkC = (f32) temp_t2->unk10;
                                var_a4_2 = var_a2 + (arg0->unk14 + var_s1);
                                var_a4_2->unk1C = 0.0f;
                                (var_a2 + (arg0->unk14 + var_s1))->unk18 = 0.0f;
                                (var_a2 + (arg0->unk14 + var_s1))->unk14 = 0.0f;
                                var_s5 += temp_f16;
                                var_a1 += temp_f16;
                                var_s8 += temp_f16;
                                var_s7 += temp_f16;
                                (var_a2 + (arg0->unk14 + var_s1))->unk10 = 0.0f;
                            } else {
                                temp_t0_3->unk1C = 0.0f;
                                (var_a2 + (arg0->unk14 + var_s1))->unk18 = 0.0f;
                                var_a4_2 = var_a2 + (arg0->unk14 + var_s1);
                                var_a4_2->unk14 = 0.0f;
                                var_a3 = var_a2 + (arg0->unk14 + var_s1);
                                var_a3->unk10 = 0.0f;
                                (var_a2 + (arg0->unk14 + var_s1))->unkC = 0.0f;
                                (var_a2 + (arg0->unk14 + var_s1))->unk8 = 0.0f;
                            }
                        }
                        sp78 = var_a5_3;
                        spC0 = var_a5_3;
                        var_s0 = 0;
                        spC8 = var_a2;
                        var_a6 = var_s1 + 0xB60;
                        spD0 = var_a1;
                        var_s1 = var_a6;
                        goto block_10;
                    }
                    var_s5 += sp48;
                    var_a1 += sp48;
                    var_s8 += sp48;
                    var_s7 += sp48;
                    var_s3 += sp48;
                    goto loop_5;
                }
                temp_t0_4 = temp_a0->unkB48 + 2;
                if (var_s0 < temp_f16) {
                    temp_a0->unkB4C = temp_t0_4;
                    temp_t3_2 = arg0->unk14 + var_s1;
                    temp_t3_2->unkB44 = (s32) temp_t3_2->unkB40;
                    if (((((((s32) var_s3 ^ temp_t9_2) - temp_t9_2) & 3) ^ temp_t9_2) - temp_t9_2) == 0) {
                        var_a4_2 = sp48;
                        var_a7 = var_s6 + ((temp_f16 + var_s0) * 4);
                        *(var_a2 + (arg0->unk14 + var_s1)) = *(sp70 + ((var_s6 + ((s32) var_v0 * 4)) * 4));
                        temp_a0_2 = arg0->unk14;
                        if (sp50 >= var_a1) {
                            (var_a2 + (var_s1 + temp_a0_2))->unk8 = (f32) *(sp70 + ((var_s6 + ((temp_f16 + var_s0) * 4)) * 4));
                            (var_a2 + (arg0->unk14 + var_s1))->unk10 = (f32) *(sp70 + ((var_s6 + ((var_a4_2 + var_s0) * 4)) * 4));
                            (var_a2 + (arg0->unk14 + var_s1))->unk18 = (f32) *(sp70 + ((var_s6 + ((sp40 + var_s0) * 4)) * 4));
                            (var_a2 + (arg0->unk14 + var_s1))->unk4 = 0.0f;
                            (var_a2 + (arg0->unk14 + var_s1))->unkC = 0.0f;
                            spC8 = var_a2;
                            var_s5 += var_a4_2;
                            var_s8 += var_a4_2;
                            (var_a2 + (arg0->unk14 + var_s1))->unk14 = 0.0f;
                            var_s7 += var_a4_2;
                            var_a5_3 = var_a5_2 + 1;
                            sp78 = var_a5_3;
                            var_s3 += var_a4_2;
                            spC0 = var_a5_3;
                            var_s0 = 0;
                            spD0 = var_a1 + var_a4_2;
                            var_a6 = var_s1 + 0xB60;
                            temp_v1_2 = var_a2 + (arg0->unk14 + var_s1);
                            var_s1 = var_a6;
                            temp_v1_2->unk1C = 0.0f;
                        } else {
                            var_a7 *= 4;
                            var_a4_2 = var_s5 < sp50;
                            var_a5_3 = var_a5_2 + 1;
                            var_a3 = var_a2 + (var_s1 + temp_a0_2);
                            if (var_a4_2 != 0) {
                                var_a3->unk8 = (f32) *(sp70 + var_a7);
                            } else {
                                var_a3->unk8 = 0.0f;
                            }
                            var_a6 = var_s1 + 0xB60;
                            temp_t0_5 = var_a2 + (arg0->unk14 + var_s1);
                            if (var_s8 < sp50) {
                                temp_t0_5->unk10 = (f32) *(sp70 + ((var_s6 + ((sp48 + var_s0) * 4)) * 4));
                            } else {
                                temp_t0_5->unk10 = 0.0f;
                            }
                            (var_a2 + (arg0->unk14 + var_s1))->unk4 = 0.0f;
                            (var_a2 + (arg0->unk14 + var_s1))->unkC = 0.0f;
                            (var_a2 + (arg0->unk14 + var_s1))->unk14 = 0.0f;
                            spC8 = var_a2;
                            (var_a2 + (arg0->unk14 + var_s1))->unk18 = 0.0f;
                            sp78 = var_a5_3;
                            spC0 = var_a5_3;
                            spD0 = var_a1;
                            temp_t8_2 = var_a2 + (arg0->unk14 + var_s1);
                            var_s1 = var_a6;
                            temp_t8_2->unk1C = 0.0f;
                        }
                        goto block_10;
                    }
                    var_s5 += sp48;
                    var_a1 += sp48;
                    var_s8 += sp48;
                    var_s7 += sp48;
                    var_s3 += sp48;
                    goto loop_5;
                }
                var_a5_3 = var_a5_2 + 1;
                sp78 = var_a5_3;
                spC0 = var_a5_3;
                temp_a0->unkB4C = temp_t0_4;
                var_s0 = 0;
                var_s5 += var_a4_2;
                spC8 = var_a2;
                var_s8 += var_a4_2;
                spD0 = var_a1 + var_a4_2;
                temp_v1_3 = arg0->unk14 + var_s1;
                var_s7 += var_a4_2;
                var_s3 += var_a4_2;
                temp_v0 = temp_v1_3->unkB40;
                var_s1 = var_a6;
                temp_v1_3->unkB44 = temp_v0;
                goto block_10;
            }
            temp_t0_6 = sp70 + ((var_s6 + ((var_a3 + var_s0) * 4)) * 4);
            *(var_a2 + temp_a0) = temp_t0_6->unk0;
            (var_a2 + (arg0->unk14 + var_s1))->unk4 = (f32) temp_t0_6->unk10;
            (var_a2 + (arg0->unk14 + var_s1))->unk10 = (f32) temp_t0_6->unk20;
            (var_a2 + (arg0->unk14 + var_s1))->unk14 = (f32) temp_t0_6->unk30;
            var_a4_2 = var_s5 < sp50;
            temp_t0_7 = temp_a6 + 2;
            var_a7 = (s64) var_s5;
            temp_a0_3 = arg0->unk14 + var_s1;
            if (var_a4_2 != 0) {
                temp_a0_3->unkB44 = temp_t0_7;
                temp_t9_4 = arg0->unk14 + var_s1;
                temp_t9_4->unkB4C = (s32) temp_t9_4->unkB48;
                temp_t3_3 = sp70 + ((var_s6 + ((temp_f16 + var_a3 + var_s0) * 4)) * 4);
                (var_a2 + (arg0->unk14 + var_s1))->unk8 = (f32) temp_t3_3->unk0;
                (var_a2 + (arg0->unk14 + var_s1))->unkC = (f32) temp_t3_3->unk10;
                (var_a2 + (arg0->unk14 + var_s1))->unk18 = (f32) temp_t3_3->unk20;
                var_s3 = var_a3;
                (var_a2 + (arg0->unk14 + var_s1))->unk1C = (f32) temp_t3_3->unk30;
            } else {
                (var_a2 + temp_a0_3)->unk1C = 0.0f;
                (var_a2 + (arg0->unk14 + var_s1))->unk18 = 0.0f;
                (var_a2 + (arg0->unk14 + var_s1))->unkC = 0.0f;
                (var_a2 + (arg0->unk14 + var_s1))->unk8 = 0.0f;
                (arg0->unk14 + var_s1)->unkB44 = temp_t0_7;
                temp_t1_3 = arg0->unk14 + var_s1;
                temp_t1_3->unkB4C = (s32) temp_t1_3->unkB48;
            }
            var_a5_3 = var_a5_2 + 1;
            temp_s0 = var_s0 + 4;
            var_a6 = var_s1 + 0xB60;
            var_s0 = (temp_s0 >= temp_f16) ? 0 : temp_s0;
            var_s5 = (var_s0 == 0) ? (var_a7 + sp48) : var_s5;
            sp78 = var_a5_3;
            var_s8 = (var_s0 == 0) ? (var_s8 + sp48) : var_s8;
            spC0 = var_a5_3;
            var_s7 = (var_s0 == 0) ? (var_s7 + sp48) : var_s7;
            spC8 = var_a2;
            var_s1 = var_a6;
            spD0 = (var_s0 == 0) ? (var_a1 + sp48) : var_a1;
            var_s3 = (var_s0 == 0) ? (var_a3 + sp48) : var_s3;
block_10:
            __glOdysseyProgramGenericConvolutionFilter((arg0->unk14 + var_a6) - 0xB60, arg0, var_s6, var_a3, var_a4_2, var_a5_3, var_a6, var_a7);
            var_f0 = (bitwise f32) var_s3;
            var_v0 = var_s3 + var_s0;
            var_a1 = spD0;
            var_a7 = sp78 < sp58;
            var_a2 = spC8;
            var_at = (var_s0 + 1) < temp_f16;
            var_a5_2 = spC0;
            var_a4 = (var_s0 + 3) < temp_f16;
            if (var_a7 != 0) {
                goto loop_11;
            }
        }
        var_s6 += 1;
        var_a2 += 0x94;
        if (var_s6 != 4) {
            goto loop_4;
        }
    }
    return var_f0;
}

f64 ConvertToLerps(void *arg0) {
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f15;
    f32 temp_f15_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f7_3;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 var_f10;
    f32 var_f11;
    f32 var_f11_2;
    f32 var_f12;
    f32 var_f14;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f6_5;
    f32 var_f7;
    f32 var_f7_2;
    f32 var_f7_3;
    f32 var_f8;
    f64 var_f0;
    f64 var_f10_2;
    f64 var_f13;
    f64 var_f15;
    f64 var_f6_2;
    f64 var_f6_3;
    f64 var_f6_4;
    f64 var_f8_2;
    f64 var_f9;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_t2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t2;

    // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
    // At instruction: c.lt.d $f0, $f9
    if (M2C_ERROR()) {
        // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
        // At instruction: c.lt.d $f1, $f9
        if (M2C_ERROR()) {
            // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
            // At instruction: c.lt.d $f2, $f9
            if (M2C_ERROR()) {
                // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
                // At instruction: c.lt.d $f3, $f9
                if (M2C_ERROR()) {
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f9
                    // At instruction: c.lt.d $f4, $f9
                    if (M2C_ERROR()) {
                        var_f9 = second half of f64;
                        if ((f64) M2C_ERROR(/* Read from unset register $f7 */) < (second half of f64)) {
                            var_f8 = arg0->unk1C;
                            if ((f64) arg0->unk18 < (second half of f64)) {
                                var_a3 = 1;
                                var_a2 = M2C_ERROR(/* unknown instruction: movf $a2, $zero, $fcc7 */);
                            } else {
                                var_a2 = 0;
                                var_a3 = 1;
                            }
                        } else {
                            var_a3 = 1;
                            var_a2 = 0;
                            var_f8 = arg0->unk1C;
                        }
                    }
                } else {
                    var_f8 = arg0->unk1C;
                    var_a3 = 1;
                    var_a2 = 0;
                    var_f7 = arg0->unk14;
                }
            } else {
                var_f8 = arg0->unk1C;
                var_a3 = 1;
                var_f7 = arg0->unk14;
                var_a2 = 0;
                var_f11 = arg0->unk10;
            }
        } else {
            var_f8 = arg0->unk1C;
            var_f7 = arg0->unk14;
            var_a3 = 1;
            var_f11 = arg0->unk10;
            var_a2 = 0;
            var_f6 = arg0->unkC;
        }
    } else {
        var_f8 = arg0->unk1C;
        var_f7 = arg0->unk14;
        var_f11 = arg0->unk10;
        var_f6 = arg0->unkC;
        var_a3 = 1;
        var_a2 = 0;
        var_f10 = arg0->unk8;
    }
    temp_f16 = fabsf(M2C_ERROR(/* Read from unset register $f5 */));
    temp_f14 = temp_f16 + fabsf(temp_f13);
    temp_f14_2 = fabsf(temp_f14);
    if (temp_f14 != 0.0f) {
        var_f15 = (f64) (temp_f16 / temp_f14_2);
        var_f14 = second half of f64;
    } else {
        var_f15 = var_f9;
        var_f14 = second half of f64;
    }
    temp_a6 = M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc1 */);
    temp_f16_2 = (f32) var_f15;
    arg0->unk2C = temp_f16_2;
    if (temp_a6 != 0) {
        var_a4 = 0;
        if (M2C_ERROR(/* Read from unset register $f5 */) >= 0.0f) {
            var_a4 = 1;
        }
    } else {
        var_a4 = 0;
    }
    temp_a7 = M2C_ERROR(/* unknown instruction: movf $a7, $zero, $fcc3 */);
    arg0->unk6C = var_a4;
    if (((temp_a7 != 0) && (temp_f13 >= 0.0f)) || ((var_a5 = 0, (M2C_ERROR(/* Read from unset register $f5 */) >= 0.0f)) && (var_a5 = 0, (temp_a6 != 0)))) {
        var_a5 = 1;
    }
    arg0->unk4C = var_a5;
    if (var_a2 != 0) {
        var_t1 = sp0;
    } else if ((temp_a7 == 0) || (var_t1 = 1, (temp_a6 == 0))) {
        var_t1 = 0;
    }
    temp_f15 = fabsf(var_f6);
    temp_f5 = temp_f15 + fabsf(var_f10);
    temp_f5_2 = fabsf(temp_f5);
    if (temp_f5 != 0.0f) {
        var_f13 = (f64) (temp_f15 / temp_f5_2);
        var_f12 = second half of f64;
    } else {
        var_f13 = var_f9;
        var_f12 = second half of f64;
    }
    temp_a7_2 = M2C_ERROR(/* unknown instruction: movf $a7, $zero, $fcc7 */);
    temp_f15_2 = (f32) var_f13;
    arg0->unk30 = temp_f15_2;
    if (temp_a7_2 != 0) {
        var_a5_2 = 0;
        if (var_f6 >= 0.0f) {
            var_a5_2 = 1;
        }
    } else {
        var_a5_2 = 0;
    }
    temp_a4 = M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc1 */);
    arg0->unk70 = var_a5_2;
    if (((temp_a4 != 0) && (var_f10 >= 0.0f)) || ((var_a6 = 0, (var_f6 >= 0.0f)) && (var_a6 = 0, (temp_a7_2 != 0)))) {
        var_a6 = 1;
    }
    arg0->unk50 = var_a6;
    if (var_a2 != 0) {
        var_t0 = sp4;
    } else if ((temp_a4 == 0) || (var_t0 = 1, (temp_a7_2 == 0))) {
        var_t0 = 0;
    }
    temp_f13_2 = fabsf(var_f7);
    temp_f10 = temp_f13_2 + fabsf(var_f11);
    temp_f10_2 = fabsf(temp_f10);
    if (temp_f10 != 0.0f) {
        var_f6_2 = (f64) (temp_f13_2 / temp_f10_2);
        var_f7_2 = second half of f64;
    } else {
        var_f6_2 = var_f9;
        var_f7_2 = second half of f64;
    }
    temp_t2 = M2C_ERROR(/* unknown instruction: movf $t2, $zero, $fcc5 */);
    temp_f13_3 = (f32) var_f6_2;
    arg0->unk34 = temp_f13_3;
    if (temp_t2 != 0) {
        var_a6_2 = 0;
        if (var_f7_2 >= 0.0f) {
            var_a6_2 = 1;
        }
    } else {
        var_a6_2 = 0;
    }
    temp_a4_2 = M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc7 */);
    arg0->unk74 = var_a6_2;
    if (((temp_a4_2 != 0) && (var_f11 >= 0.0f)) || ((var_a7 = 0, (var_f7_2 >= 0.0f)) && (var_a7 = 0, (temp_t2 != 0)))) {
        var_a7 = 1;
    }
    arg0->unk54 = var_a7;
    if (var_a2 != 0) {
        var_t2 = sp8;
    } else if ((temp_a4_2 == 0) || (var_t2 = 1, (temp_t2 == 0))) {
        var_t2 = 0;
    }
    temp_f11 = fabsf(var_f8);
    temp_f7 = temp_f11 + fabsf(var_f12);
    temp_f7_2 = fabsf(temp_f7);
    if (temp_f7 != 0.0f) {
        var_f6_3 = (f64) (temp_f11 / temp_f7_2);
    } else {
        var_f6_3 = var_f9;
    }
    temp_a7_3 = M2C_ERROR(/* unknown instruction: movf $a7, $zero, $fcc3 */);
    arg0->unk38 = (f32) var_f6_3;
    if (temp_a7_3 != 0) {
        var_a5_3 = 0;
        if (var_f8 >= 0.0f) {
            var_a5_3 = 1;
        }
    } else {
        var_a5_3 = 0;
    }
    temp_a4_3 = M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc5 */);
    arg0->unk78 = var_a5_3;
    if (((temp_a4_3 != 0) && (var_f12 >= 0.0f)) || ((var_a6_3 = 0, (var_f8 >= 0.0f)) && (var_a6_3 = 0, (temp_a7_3 != 0)))) {
        var_a6_3 = 1;
    }
    arg0->unk58 = var_a6_3;
    if (var_a2 != 0) {
        var_a6_4 = spC;
    } else if ((temp_a4_3 == 0) || (var_a6_4 = 1, (temp_a7_3 == 0))) {
        var_a6_4 = 0;
    }
    temp_f8 = var_f14 + temp_f5_2;
    temp_f8_2 = fabsf(temp_f8);
    if (temp_f8 != 0.0f) {
        var_f6_4 = (f64) (temp_f5_2 / temp_f8_2);
        var_f7_3 = second half of f64;
    } else {
        var_f6_4 = var_f9;
        var_f7_3 = second half of f64;
    }
    temp_f12 = (f32) var_f6_4;
    arg0->unk3C = temp_f12;
    if (var_t1 != var_a3) {
        if (var_t0 != var_a3) {
            arg0->unk5C = 0;
            var_t1_2 = 0;
        } else {
            arg0->unk5C = var_a3;
            var_t1_2 = 0;
        }
        arg0->unk7C = 0;
        goto block_72;
    }
    var_t1_2 = 0;
    if (var_t0 != var_a3) {
        arg0->unk5C = var_a3;
        var_t1_2 = 1;
        arg0->unk7C = var_a3;
block_72:
        var_a7_2 = 0;
    } else {
        arg0->unk5C = 0;
        var_a7_2 = 1;
        arg0->unk7C = 0;
    }
    temp_f6 = temp_f10_2 + var_f7_3;
    temp_f6_2 = fabsf(temp_f6);
    if (temp_f6 != 0.0f) {
        var_f10_2 = (f64) (var_f7_3 / temp_f6_2);
        var_f11_2 = second half of f64;
    } else {
        var_f10_2 = var_f9;
        var_f11_2 = second half of f64;
    }
    temp_f5_3 = temp_f8_2 + temp_f6_2;
    temp_f7_3 = (f32) var_f10_2;
    arg0->unk40 = temp_f7_3;
    temp_a4_4 = M2C_ERROR(/* unknown instruction: movt $a4, $zero, $fcc2 */);
    if (var_t2 != var_a3) {
        if (var_a6_4 != var_a3) {
            arg0->unk60 = 0;
            var_t0_2 = 0;
            arg0->unk80 = 0;
            if (temp_a4_4 != 0) {
                goto block_79;
            }
        } else {
            arg0->unk60 = var_a3;
            var_t0_2 = 0;
            arg0->unk80 = 0;
            if (temp_a4_4 == 0) {

            } else {
block_79:
                var_f9 = (f64) (temp_f6_2 / fabsf(temp_f5_3));
            }
        }
        var_f6_5 = (f32) var_f9;
        arg0->unk44 = var_f6_5;
        if (var_a7_2 != var_a3) {
            goto block_81;
        }
        goto block_92;
        goto block_83;
    }
    if (var_a6_4 != var_a3) {
        arg0->unk60 = var_a3;
        arg0->unk80 = var_a3;
        var_t0_2 = 1;
        if (temp_a4_4 != 0) {
            var_f9 = (f64) (temp_f6_2 / fabsf(temp_f5_3));
        }
        var_f6_5 = (f32) var_f9;
        arg0->unk44 = var_f6_5;
        if (var_a7_2 == var_a3) {
block_92:
            var_f8_2 = 1.0;
            var_f5 = second half of f64;
            arg0->unk64 = var_a3;
            arg0->unk84 = var_a3;
            var_f4 = (f32) (1.0 - (f64) temp_f5_3);
            var_a4_2 = 1;
        } else {
block_81:
            arg0->unk64 = 0;
            var_a4_2 = 0;
            goto block_82;
        }
        goto block_83;
    }
    arg0->unk60 = 0;
    var_t0_2 = 0;
    arg0->unk80 = 0;
    if (temp_a4_4 != 0) {
        var_f9 = (f64) (temp_f6_2 / fabsf(temp_f5_3));
    }
    var_f6_5 = (f32) var_f9;
    var_a4_2 = 0;
    arg0->unk44 = var_f6_5;
    if (var_a7_2 != var_a3) {
        arg0->unk64 = var_a3;
block_82:
        arg0->unk84 = 0;
        var_f8_2 = 1.0;
        var_f5 = second half of f64;
        var_f4 = (f32) (1.0 - (f64) temp_f5_3);
block_83:
        arg0->unk48 = var_f4;
        arg0->unk68 = 0;
        var_a6_5 = 0;
        arg0->unk88 = 0;
    } else {
        var_f8_2 = 1.0;
        arg0->unk68 = var_a3;
        arg0->unk88 = var_a3;
        var_f5 = second half of f64;
        arg0->unk64 = 0;
        var_a4_2 = 0;
        arg0->unk84 = 0;
        var_f4 = (f32) (1.0 - (f64) temp_f5_3);
        var_a6_5 = 1;
        arg0->unk48 = var_f4;
    }
    if (var_a2 != 0) {

    } else {
        if (var_a3 != var_a4) {
            if (var_a3 != var_a5_2) {
                goto block_112;
            }
            goto block_122;
        }
        var_f8_2 = second half of f64;
        arg0->unk2C = (f32) ((second half of f64) - (f64) temp_f16_2);
        if (var_a3 == var_a5_2) {
block_122:
            var_f11_2 = second half of f64;
            arg0->unk30 = (f32) (var_f8_2 - (f64) temp_f15_2);
            if (var_a3 == var_a6_2) {
                goto block_123;
            }
            goto block_113;
        }
block_112:
        if (var_a3 != var_a6_2) {
block_113:
            if (var_a3 != var_a5_3) {
                goto block_114;
            }
            goto block_124;
        }
block_123:
        arg0->unk34 = (f32) (var_f8_2 - (f64) temp_f13_3);
        if (var_a3 == var_a5_3) {
block_124:
            arg0->unk38 = (f32) (var_f8_2 - (f64) var_f11_2);
            if (var_a3 == var_t1_2) {
                goto block_125;
            }
            goto block_115;
        }
block_114:
        if (var_a3 != var_t1_2) {
block_115:
            if (var_a3 != var_t0_2) {
                goto block_116;
            }
            goto block_126;
        }
block_125:
        arg0->unk3C = (f32) (var_f8_2 - (f64) temp_f12);
        if (var_a3 == var_t0_2) {
block_126:
            arg0->unk40 = (f32) (var_f8_2 - (f64) temp_f7_3);
            if (var_a3 == var_a4_2) {
                goto block_127;
            }
            goto block_117;
        }
block_116:
        if (var_a3 != var_a4_2) {
block_117:
            if (var_a3 == var_a6_5) {
                goto block_118;
            }
        } else {
block_127:
            arg0->unk44 = (f32) (var_f8_2 - (f64) var_f6_5);
            if (var_a3 == var_a6_5) {
block_118:
                arg0->unk48 = (f32) (var_f8_2 - (f64) var_f4);
            }
        }
    }
    arg0->unk90 = var_f5;
    arg0->unk8C = (f32) M2C_ERROR(/* unknown instruction: movz.s $f6, $f7, $a7 */);
    if (var_a3 != var_a2) {
        return var_f0;
    }
    arg0->unk8C = -1.0f;
    return var_f0;
}

void PackAlpha(s32 arg0, s32 arg1, s32 arg3, s32 arg4, s32 arg6, s32 arg7, f32 fparg2, f32 fparg5, f32 arg_sp0, s32 arg_spC, s32 arg_sp14, f32 arg_sp18, s32 *arg_sp24, s32 *arg_sp2C) {
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    f64 temp_f7;
    s32 temp_a1;
    s32 temp_a1_2;

    *arg_sp24 = (0xFBFFFFFF & ((0xF7FFFFFF & *arg_sp24) | (0x08000000 & (arg0 << 0x1B)))) | (0x04000000 & (arg3 << 0x1A));
    *arg_sp2C = (0xFBFFFFFF & ((0xF7FFFFFF & *arg_sp2C) | (0x08000000 & (arg6 << 0x1B)))) | (0x04000000 & (arg_spC << 0x1A));
    *arg_sp24 = (0xFEFFFFFF & ((0xFDFFFFFF & *arg_sp24) | (0x02000000 & (arg1 << 0x19)))) | (0x01000000 & (arg4 << 0x18));
    var_f5 = 4095.0f;
    *arg_sp2C = (0xFEFFFFFF & ((0xFDFFFFFF & *arg_sp2C) | (0x02000000 & (arg7 << 0x19)))) | (0x01000000 & (arg_sp14 << 0x18));
    if (!((f64) fparg2 >= 1.0)) {
        var_f5 = fparg2 * 4096.0f;
    }
    temp_f7 = (f64) arg_sp0;
    temp_a1 = (0xFF000FFF & *arg_sp24) | (0xFFF000 & ((s64) var_f5 << 0xC));
    *arg_sp24 = temp_a1;
    if (temp_f7 >= 1.0) {
        var_f5_2 = 4095.0f;
    } else {
        var_f5_2 = fparg5 * 4096.0f;
    }
    *arg_sp24 = (-0x1000 & temp_a1) | (((s64) var_f5_2 << 0) & 0xFFF);
    if (temp_f7 >= 1.0) {
        var_f5_3 = 4095.0f;
    } else {
        var_f5_3 = (second half of f64) * 4096.0f;
    }
    temp_a1_2 = (0xFF000FFF & *arg_sp2C) | (0xFFF000 & ((s64) var_f5_3 << 0xC));
    *arg_sp2C = temp_a1_2;
    if ((f64) arg_sp18 >= 1.0) {
        *arg_sp2C = (-0x1000 & temp_a1_2) | (((s64) (second half of f64) << 0) & 0xFFF);
        return;
    }
    *arg_sp2C = (-0x1000 & temp_a1_2) | (((s64) ((second half of f64) * 4096.0f) << 0) & 0xFFF);
}

void PackAlphaResidue(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14, s32 arg_sp1C, s32 *arg_sp24, s32 *arg_sp2C) {
    *arg_sp24 = (0xFBFFFFFF & ((0xF7FFFFFF & *arg_sp24) | (0x08000000 & (arg0 << 0x1B)))) | (0x04000000 & (arg3 << 0x1A));
    *arg_sp2C = (0xFBFFFFFF & ((0xF7FFFFFF & *arg_sp2C) | (0x08000000 & (arg6 << 0x1B)))) | (0x04000000 & (arg_spC << 0x1A));
    *arg_sp24 = (0xFEFFFFFF & ((0xFDFFFFFF & *arg_sp24) | (0x02000000 & (arg1 << 0x19)))) | (0x01000000 & (arg4 << 0x18));
    *arg_sp2C = (0xFEFFFFFF & ((0xFDFFFFFF & *arg_sp2C) | (0x02000000 & (arg7 << 0x19)))) | (0x01000000 & (arg_sp14 << 0x18));
    *arg_sp24 = (-0x1000 & ((0xFF000FFF & *arg_sp24) | (0xFFF000 & (arg2 << 0xC)))) | (arg5 & 0xFFF);
    *arg_sp2C = (-0x1000 & ((0xFF000FFF & *arg_sp2C) | (0xFFF000 & (arg_sp4 << 0xC)))) | (arg_sp1C & 0xFFF);
}

void PackLerpTree(void *arg0) {
    f32 temp_a5;
    f32 temp_a5_2;
    f32 temp_a5_3;
    f32 temp_f12;
    f32 temp_f13;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;

    __glOdysseyGenericConvolution(arg0->unk4C, (s64) arg0->unk6C, (s64) arg0->unkE0, (s64) arg0->unk100, (bitwise f64) arg0->unk174, arg0->unk194, arg0->unk2C, arg0->unkC0, arg0->unk154, arg0->unk208, arg0->unk228, arg0->unk1E8, arg0 + 0x270, arg0 + 0x274);
    temp_a5 = arg0->unk20C;
    temp_a2 = arg0->unk22C;
    __glOdysseyGenericConvolution(arg0->unk50, (s64) arg0->unk70, (s64) temp_a2, (s64) arg0->unkE4, (bitwise f64) arg0->unk104, temp_a5, arg0->unk178, arg0->unk198, arg0->unk158, temp_a5, temp_a2, arg0->unk1EC, arg0 + 0x278, arg0 + 0x27C);
    __glOdysseyGenericConvolution(arg0->unk54, (s64) arg0->unk74, (s64) arg0->unk15C, (s64) arg0->unk210, (bitwise f64) arg0->unk230, arg0->unk1F0, arg0 + 0x280, arg0 + 0x284);
    __glOdysseyGenericConvolution(arg0->unk58, (s64) arg0->unk78, (s64) arg0->unk160, (s64) arg0->unk214, (bitwise f64) arg0->unk234, arg0->unk1F4, arg0 + 0x288, arg0 + 0x28C);
    temp_a5_2 = arg0->unk218;
    temp_a2_2 = arg0->unk238;
    __glOdysseyGenericConvolution(arg0->unk5C, (s64) arg0->unk7C, (s64) temp_a2_2, (s64) arg0->unkF0, (bitwise f64) arg0->unk110, temp_a5_2, arg0->unk184, arg0->unk1A4, arg0->unk164, temp_a5_2, temp_a2_2, arg0->unk1F8, arg0 + 0x290, arg0 + 0x294);
    __glOdysseyGenericConvolution(arg0->unk60, (s64) arg0->unk80, (s64) arg0->unk168, (s64) arg0->unk21C, (bitwise f64) arg0->unk23C, arg0->unk1FC, arg0 + 0x298, arg0 + 0x29C);
    temp_f13 = arg0->unk16C;
    temp_f12 = arg0->unk200;
    __glOdysseyGenericConvolution(arg0->unk64, (s64) arg0->unk84, (bitwise s64) temp_f12, (bitwise s64) temp_f13, (bitwise f64) arg0->unk44, temp_f13, arg0->unk220, arg0->unk240, temp_f12, (bitwise f32) (arg0 + 0x2A0), arg0 + 0x2A4);
    temp_a5_3 = arg0->unk224;
    temp_a2_3 = arg0->unk244;
    __glOdysseyGenericConvolution(arg0->unk68, (s64) arg0->unk88, (s64) temp_a2_3, (s64) arg0->unkFC, (bitwise f64) arg0->unk11C, temp_a5_3, arg0->unk190, arg0->unk1B0, arg0->unk170, temp_a5_3, temp_a2_3, arg0->unk204, arg0 + 0x2A8, arg0 + 0x2AC);
    arg0->unk2C4 = (s32) ((0xFFFF0000 & arg0->unk2C4) | ((s32) (arg0->unk150 * 4096.0f) & 0xFFFF));
    arg0->unk2CC = (s32) ((0xFFFF0000 & arg0->unk2CC) | ((s32) (arg0->unk1E4 * 4096.0f) & 0xFFFF));
    arg0->unk2B4 = (s32) ((0xFFFF0000 & arg0->unk2B4) | ((s32) (arg0->unk28 * 4096.0f) & 0xFFFF));
    arg0->unk2BC = (s32) ((0xFFFF0000 & arg0->unk2BC) | ((s32) (arg0->unkBC * 4096.0f) & 0xFFFF));
    arg0->unk2C8 = (s32) ((0xFFFF0000 & arg0->unk2C8) | ((s32) (4096.0f * (arg0->unk24C * (arg0->unk1E0 * arg0->unk248))) & 0xFFFF));
    arg0->unk2C0 = (s32) ((0xFFFF0000 & arg0->unk2C0) | ((s32) (4096.0f * (arg0->unk1B8 * (arg0->unk14C * arg0->unk1B4))) & 0xFFFF));
    arg0->unk2B8 = (s32) ((0xFFFF0000 & arg0->unk2B8) | ((s32) (4096.0f * (arg0->unk124 * (arg0->unkB8 * arg0->unk120))) & 0xFFFF));
    arg0->unk2B0 = (s32) ((0xFFFF0000 & arg0->unk2B0) | ((s32) (4096.0f * (arg0->unk90 * (arg0->unk24 * arg0->unk8C))) & 0xFFFF));
}

void PackLerpTreeResidue(void *arg0) {
    s64 temp_f12;
    s64 temp_f14;

    __glOdysseyGenericConvolution(arg0->unk4C, (s64) arg0->unk6C, (s64) arg0->unk2C << 0, (s64) arg0->unkE0, (bitwise f64) arg0->unk100, (bitwise f32) ((s64) (second half of f64) << 0), arg0->unk174, arg0->unk194, (bitwise f32) (s64) arg0->unk154, arg0->unk208, arg0->unk228, (bitwise f32) (s64) (second half of f64), arg0 + 0x270, arg0 + 0x274);
    __glOdysseyGenericConvolution(arg0->unk50, (s64) arg0->unk70, (s64) arg0->unk30 << 0, (s64) arg0->unkE4, (bitwise f64) arg0->unk104, (bitwise f32) ((s64) (second half of f64) << 0), arg0->unk178, arg0->unk198, (bitwise f32) (s64) arg0->unk158, arg0->unk20C, arg0->unk22C, (bitwise f32) (s64) (second half of f64), arg0 + 0x278, arg0 + 0x27C);
    __glOdysseyGenericConvolution(arg0->unk54, (s64) arg0->unk74, (s64) arg0->unk34 << 0, (s64) arg0->unkE8, (bitwise f64) arg0->unk108, (bitwise f32) ((s64) (second half of f64) << 0), arg0->unk17C, arg0->unk19C, (bitwise f32) (s64) arg0->unk15C, arg0->unk210, arg0->unk230, (bitwise f32) (s64) (second half of f64), arg0 + 0x280, arg0 + 0x284);
    temp_f14 = (s64) (second half of f64);
    temp_f12 = (s64) (second half of f64);
    __glOdysseyGenericConvolution(arg0->unk58, (s64) arg0->unk78, (s64) arg0->unk38 << 0, (s64) arg0->unkEC, (bitwise f64) arg0->unk10C, (bitwise f32) (temp_f14 << 0), arg0->unk180, arg0->unk1A0, (bitwise f32) temp_f12, second half of f64, (void *) temp_f14, second half of f64, (void *) (s64) arg0->unk160, arg0->unk214, arg0->unk234, (s32) temp_f12, arg0 + 0x288, arg0 + 0x28C);
    __glOdysseyGenericConvolution(arg0->unk5C, (s64) arg0->unk7C, (s64) arg0->unk3C << 0, (s64) arg0->unkF0, (bitwise f64) arg0->unk110, (bitwise f32) ((s64) (second half of f64) << 0), arg0->unk184, arg0->unk1A4, (bitwise f32) (s64) arg0->unk164, arg0->unk218, arg0->unk238, (bitwise f32) (s64) (second half of f64), arg0 + 0x290, arg0 + 0x294);
    __glOdysseyGenericConvolution(arg0->unk60, (s64) arg0->unk80, (s64) arg0->unk40 << 0, (s64) arg0->unkF4, (bitwise f64) arg0->unk114, (bitwise f32) ((s64) arg0->unkD4 << 0), arg0->unk188, arg0->unk1A8, (bitwise f32) (s64) arg0->unk168, arg0->unk21C, arg0->unk23C, (bitwise f32) (s64) arg0->unk1FC, arg0 + 0x298, arg0 + 0x29C);
    __glOdysseyGenericConvolution(arg0->unk64, (s64) arg0->unk84, (s64) arg0->unk44 << 0, (s64) arg0->unkF8, (bitwise f64) arg0->unk118, (bitwise f32) ((s64) (second half of f64) << 0), arg0->unk18C, arg0->unk1AC, (bitwise f32) (s64) arg0->unk16C, arg0->unk220, arg0->unk240, (bitwise f32) (s64) arg0->unk200, arg0 + 0x2A0, arg0 + 0x2A4);
    __glOdysseyGenericConvolution(arg0->unk68, (s64) arg0->unk88, (s64) arg0->unk48 << 0, (s64) arg0->unkFC, (bitwise f64) arg0->unk11C, (bitwise f32) ((s64) (second half of f64) << 0), arg0->unk190, arg0->unk1B0, (bitwise f32) (s64) arg0->unk170, arg0->unk224, arg0->unk244, (bitwise f32) (s64) (second half of f64), arg0 + 0x2A8, arg0 + 0x2AC);
    arg0->unk2C4 = (s32) ((0xFFFF0000 & arg0->unk2C4) | ((s32) (arg0->unk150 * 4096.0f) & 0xFFFF));
    arg0->unk2CC = (s32) ((0xFFFF0000 & arg0->unk2CC) | ((s32) (arg0->unk1E4 * 4096.0f) & 0xFFFF));
    arg0->unk2B4 = (s32) ((0xFFFF0000 & arg0->unk2B4) | ((s32) (arg0->unk28 * 4096.0f) & 0xFFFF));
    arg0->unk2BC = (s32) ((0xFFFF0000 & arg0->unk2BC) | ((s32) (arg0->unkBC * 4096.0f) & 0xFFFF));
    arg0->unk2C0 = (s32) ((0xFFFF0000 & arg0->unk2C0) | (((s64) (arg0->unk1B8 * (arg0->unk14C * arg0->unk1B4)) << 0) & 0xFFFF));
    arg0->unk2B8 = (s32) ((0xFFFF0000 & arg0->unk2B8) | (((s64) (arg0->unk124 * (arg0->unkB8 * arg0->unk120)) << 0) & 0xFFFF));
    arg0->unk2B0 = (s32) ((0xFFFF0000 & arg0->unk2B0) | (((s64) ((second half of f64) * (arg0->unk24 * arg0->unk8C)) << 0) & 0xFFFF));
    arg0->unk2C8 = (s32) ((0xFFFF0000 & arg0->unk2C8) | (((s64) (arg0->unk24C * (arg0->unk1E0 * arg0->unk248)) << 0) & 0xFFFF));
}

void __glOdysseyProgramTexFilter(void *arg0) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;

    sp18 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        __glOdysseyGenericConvolution(arg0);
        __glOdysseyGenericConvolution(arg0 + 0x94);
        __glOdysseyGenericConvolution(arg0 + 0x128);
        __glOdysseyGenericConvolution(arg0 + 0x1BC);
        __glOdysseyGenericConvolution(arg0);
        if (sp18->unk119E0 == 0x1102) {
            temp_a0 = arg0 + 0x2D0;
            sp0 = (s64) temp_a0;
            __glOdysseyGenericConvolution(temp_a0);
            __glOdysseyGenericConvolution(arg0 + 0x364);
            __glOdysseyGenericConvolution(arg0 + 0x3F8);
            __glOdysseyGenericConvolution(arg0 + 0x48C);
            __glOdysseyGenericConvolution(temp_a0);
            temp_a0_2 = arg0 + 0x5A0;
            sp8 = (s64) temp_a0_2;
            __glOdysseyGenericConvolution(temp_a0_2);
            __glOdysseyGenericConvolution(arg0 + 0x634);
            __glOdysseyGenericConvolution(arg0 + 0x6C8);
            __glOdysseyGenericConvolution(arg0 + 0x75C);
            __glOdysseyGenericConvolution(temp_a0_2);
            temp_a0_3 = arg0 + 0x870;
            sp10 = (s64) temp_a0_3;
            __glOdysseyGenericConvolution(temp_a0_3);
            __glOdysseyGenericConvolution(arg0 + 0x904);
            __glOdysseyGenericConvolution(arg0 + 0x998);
            __glOdysseyGenericConvolution(arg0 + 0xA2C);
            __glOdysseyGenericConvolution(temp_a0_3);
        }
        arg0->unkB5C = (s32) ((-0x1000 & arg0->unkB5C) | (arg0->unkB50 & 0xFFF));
        arg0->unkB58 = (s32) ((0xF000FFFF & ((-0x1000 & arg0->unkB58) | (arg0->unkB48 & 0xFFF))) | (0x0FFF0000 & (arg0->unkB4C << 0x10)));
        arg0->unkB54 = (s32) ((0xF000FFFF & ((-0x1000 & arg0->unkB54) | (arg0->unkB40 & 0xFFF))) | (0x0FFF0000 & (arg0->unkB44 << 0x10)));
        return;
    }
    __glSetError(0x502);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xa0, 0xa4, 0xa8, 0xac, 0xd8, 0xdc], gap at: 0xb8. */
void __glOdysseyProgramConvolutionFilter(void *arg0, void *arg1, s64 arg2, s64 arg3) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    f64 sp60;
    ? sp20;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    s32 temp_v0;
    s32 var_s2;
    s64 temp_a1;
    s64 temp_a4;
    s64 var_s3;
    void *temp_a5;
    void *temp_a6;
    void *var_s1;
    void *var_s4;

    temp_a6 = *(void **)0x1010;
    temp_a4 = arg1->unk10 - 1;
    if (*(s32 *)0x1018 != 1) {
        sp90 = arg2;
        unkspD0 = arg3;
        sp88 = temp_a4;
        sp80 = (s64) (temp_a6 + 0x10000);
        temp_a5 = temp_a6->unk119E0;
        sp60 = (bitwise f64) (f32) temp_a6->unk2FC->unk40;
        if (temp_a5 != (void *)0x1102) {
            __glOdysseyGenericConvolution((void *) temp_a4, (s64) temp_a5, (s64) temp_a6, 0x1102);
            __glOdysseyGenericConvolution(arg0 + 0x94);
            __glOdysseyGenericConvolution(arg0 + 0x128);
            __glOdysseyGenericConvolution(arg0 + 0x1BC);
            __glOdysseyGenericConvolution(arg0);
        } else {
            temp_v0 = __glOdysseyImageLogBase2(sp88 * 8, temp_a4, temp_a5, temp_a6, 0x1102);
            sp68 = (s64) (arg0 + 0x870);
            sp70 = (s64) (arg0 + 0x5A0);
            sp78 = (s64) (arg0 + 0x2D0);
            temp_a1 = 1 << (0x17 - temp_v0);
            var_s2 = 0;
            sp98 = temp_a1;
            var_s4 = arg0;
            sp80->unk1BCC = (s32) temp_a1;
            var_s1 = arg0;
            var_s3 = 0;
loop_10:
loop_13:
            __glOdyssey_ks_to_alphas(var_s4, &sp20, (s64) sp, sp98, var_s3);
            switch (var_s2) {                       /* irregular */
            case 0:
                var_s1->unk2C = (f32) sp0;
                var_s1->unk30 = (f32) sp4;
                var_s1->unk34 = (f32) sp8;
                var_s1->unk38 = (f32) spC;
                var_s1->unk3C = (f32) sp10;
                var_s1->unk40 = (f32) sp14;
                var_s1->unk44 = (f32) sp18;
                var_s1->unk48 = (f32) sp1C;
                __glOdysseyGenericConvolution(arg0);
                break;
            case 3:
                temp_f16 = (f32) sp0;
                var_s1->unk89C = temp_f16;
                temp_f15 = (f32) sp4;
                var_s1->unk8A0 = temp_f15;
                temp_f14 = (f32) sp8;
                var_s1->unk8A4 = temp_f14;
                temp_f13 = (f32) spC;
                var_s1->unk8A8 = temp_f13;
                temp_f12 = (f32) sp10;
                var_s1->unk8AC = temp_f12;
                var_s1->unk8B0 = (f32) sp14;
                var_s1->unk8B4 = (f32) sp18;
                var_s1->unk8B8 = (f32) sp1C;
                __glOdysseyGenericConvolution((void *) sp68, (s64) sp18, (s64) sp14, (s64) sp10, (bitwise f64) sp, (bitwise f32) spC, (void *) sp8, (void *) sp4, temp_f12, temp_f13, (bitwise void *) temp_f14, temp_f15, (bitwise void *) temp_f16);
                break;
            case 1:
                var_s1->unk2FC = (f32) sp0;
                var_s1->unk300 = (f32) sp4;
                var_s1->unk304 = (f32) sp8;
                var_s1->unk308 = (f32) spC;
                var_s1->unk30C = (f32) sp10;
                var_s1->unk310 = (f32) sp14;
                var_s1->unk314 = (f32) sp18;
                var_s1->unk318 = (f32) sp1C;
                __glOdysseyGenericConvolution((void *) sp78, (s64) sp8, (s64) sp4, (s64) sp0, (bitwise f64) sp);
                break;
            case 2:
                var_s1->unk5CC = (f32) sp0;
                var_s1->unk5D0 = (f32) sp4;
                var_s1->unk5D4 = (f32) sp8;
                var_s1->unk5D8 = (f32) spC;
                var_s1->unk5DC = (f32) sp10;
                var_s1->unk5E0 = (f32) sp14;
                var_s1->unk5E4 = (f32) sp18;
                var_s1->unk5E8 = (f32) sp1C;
                __glOdysseyGenericConvolution((void *) sp70, (s64) sp8, (s64) sp4, (s64) sp0, (bitwise f64) sp);
                break;
            }
            var_s3 += 1;
            var_s1 += 0x94;
            if (var_s3 != 4) {
                goto loop_13;
            }
            var_s2 += 1;
            var_s1 = arg0;
            var_s3 = 0;
            var_s4 += 0x94;
            if (var_s2 != 4) {
                goto loop_10;
            }
        }
        if ((unkspD0 != 0) && (unkspD0 != 0x8010)) {
            __glOdysseyProgram2DOffsets(arg0, sp88, sp90);
        } else {
            __glOdysseyProgram1DOffsets((s64) arg0, sp88, sp90);
        }
        arg0->unkB5C = (s32) ((-0x1000 & arg0->unkB5C) | (arg0->unkB50 & 0xFFF));
        arg0->unkB58 = (s32) ((0xF000FFFF & ((-0x1000 & arg0->unkB58) | (arg0->unkB48 & 0xFFF))) | (0x0FFF0000 & (arg0->unkB4C << 0x10)));
        arg0->unkB54 = (s32) ((0xF000FFFF & ((-0x1000 & arg0->unkB54) | (arg0->unkB40 & 0xFFF))) | (0x0FFF0000 & (arg0->unkB44 << 0x10)));
        return;
    }
    __glSetError(0x502, (void *) temp_a4, temp_a6);
}

void __glOdysseyProgramGenericConvolutionFilter(void *arg0, void *arg1, s32 arg2) {
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    ? sp20;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    s32 temp_v0;
    s64 temp_a1;
    s64 temp_ra;
    void *temp_a0;
    void *temp_a3;
    void *var_s2;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp80 = temp_a3 + 0x10000;
        temp_a0 = arg0 + (arg2 * 0x94);
        if (temp_a3->unk119E0 != 0x1102) {
            __glOdysseyGenericConvolution(temp_a0, 0x1102, (s64) temp_a3, 1);
            __glOdysseyGenericConvolution(arg0);
        } else {
            sp90 = (s64) temp_a0;
            temp_v0 = __glOdysseyImageLogBase2((arg1->unk10 * 8) - 8, 0x1102, temp_a3, (void *)1);
            unkspA0 = 0;
            sp60 = (s64) (arg0 + 0x870);
            sp68 = (s64) (arg0 + 0x5A0);
            sp70 = (s64) (arg0 + 0x2D0);
            temp_a1 = 1 << (0x17 - temp_v0);
            sp88 = temp_a1;
            var_s2 = arg0;
            sp80->unk1BCC = (s32) temp_a1;
loop_8:
            __glOdyssey_ks_to_alphas((void *) sp90, &sp20, (s64) sp, sp88, unkspA0);
            switch (arg2) {                         /* irregular */
            case 0:
                var_s2->unk2C = (f32) sp0;
                var_s2->unk30 = (f32) sp4;
                var_s2->unk34 = (f32) sp8;
                var_s2->unk38 = (f32) spC;
                var_s2->unk3C = (f32) sp10;
                var_s2->unk40 = (f32) sp14;
                var_s2->unk44 = (f32) sp18;
                var_s2->unk48 = (f32) sp1C;
                __glOdysseyGenericConvolution(arg0, (s64) sp);
                break;
            case 3:
                temp_f15 = (f32) sp0;
                var_s2->unk89C = temp_f15;
                temp_f14 = (f32) sp4;
                var_s2->unk8A0 = temp_f14;
                temp_f13 = (f32) sp8;
                var_s2->unk8A4 = temp_f13;
                temp_f12 = (f32) spC;
                var_s2->unk8A8 = temp_f12;
                var_s2->unk8AC = (f32) sp10;
                var_s2->unk8B0 = (f32) sp14;
                var_s2->unk8B4 = (f32) sp18;
                var_s2->unk8B8 = (f32) sp1C;
                __glOdysseyGenericConvolution((void *) sp60, (s64) sp, (s64) sp1C, (s64) sp18, (bitwise f64) sp14, (bitwise f32) sp10, (void *) spC, (void *) sp8, temp_f12, temp_f13, (bitwise void *) temp_f14, temp_f15);
                break;
            case 1:
                var_s2->unk2FC = (f32) sp0;
                var_s2->unk300 = (f32) sp4;
                var_s2->unk304 = (f32) sp8;
                var_s2->unk308 = (f32) spC;
                var_s2->unk30C = (f32) sp10;
                var_s2->unk310 = (f32) sp14;
                var_s2->unk314 = (f32) sp18;
                var_s2->unk318 = (f32) sp1C;
                __glOdysseyGenericConvolution((void *) sp70, (s64) sp, (s64) sp8, (s64) sp4, (bitwise f64) sp0);
                break;
            case 2:
                var_s2->unk5CC = (f32) sp0;
                var_s2->unk5D0 = (f32) sp4;
                var_s2->unk5D4 = (f32) sp8;
                var_s2->unk5D8 = (f32) spC;
                var_s2->unk5DC = (f32) sp10;
                var_s2->unk5E0 = (f32) sp14;
                var_s2->unk5E4 = (f32) sp18;
                var_s2->unk5E8 = (f32) sp1C;
                __glOdysseyGenericConvolution((void *) sp68, (s64) sp, (s64) sp8, (s64) sp4, (bitwise f64) sp0);
                break;
            }
            temp_ra = unkspA0 + 1;
            var_s2 += 0x94;
            unkspA0 = temp_ra;
            if (temp_ra != 4) {
                goto loop_8;
            }
        }
        arg0->unkB54 = (s32) ((0xF000FFFF & ((-0x1000 & arg0->unkB54) | (arg0->unkB40 & 0xFFF))) | (0x0FFF0000 & (arg0->unkB44 << 0x10)));
        arg0->unkB5C = (s32) ((-0x1000 & arg0->unkB5C) | (arg0->unkB50 & 0xFFF));
        arg0->unkB58 = (s32) ((0xF000FFFF & ((-0x1000 & arg0->unkB58) | (arg0->unkB48 & 0xFFF))) | (0x0FFF0000 & (arg0->unkB4C << 0x10)));
        return;
    }
    __glSetError(0x502, temp_a3, (void *)1);
}
