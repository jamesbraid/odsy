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
Error occurred while processing instruction: bgez $a1, .L0d9c0150

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
Error occurred while processing instruction: bgez $a1, .L0d9c0150

? __glSetError(?);                                  /* extern */
f32 ceilf(f32, f32, f32, f32, s64, ?);              /* extern */
f32 floorf(s64, u8, s64, s64, ?);                   /* extern */
? memset(void *, ?, s64);                           /* extern */

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xe8, 0xec, 0xf0, 0xf4, 0xf8, 0xfc, 0x190, 0x194, 0x198, 0x19c, 0x1c8, 0x1cc], gap at: 0x108. */
s64 __glOdysseyImageTilingCreate(void *arg0, void *arg1, s64 arg2, s64 arg3, u8 arg5) {
    s64 sp208;
    s64 sp200;
    s64 sp1F8;
    s64 sp1F0;
    s64 sp1E8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    f64 spC0;
    f64 spB8;
    f64 spB0;
    f64 spA8;
    f64 spA0;
    f64 sp98;
    f64 sp90;
    ? sp48;
    ? sp4;
    f32 temp_f10;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f1;
    f32 temp_f24;
    f32 temp_f27;
    f32 temp_f28;
    f32 temp_f29;
    f32 temp_f31;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f6;
    f32 temp_f7;
    f32 var_f20;
    f32 var_f20_2;
    f32 var_f20_3;
    f32 var_f20_4;
    f32 var_f22;
    f32 var_f22_2;
    f32 var_f22_3;
    f32 var_f26_2;
    f32 var_f30_2;
    f32 var_f4;
    f32 var_f5;
    f64 temp_f26;
    f64 temp_f26_2;
    f64 var_f24;
    f64 var_f26;
    f64 var_f28;
    f64 var_f30;
    s32 *temp_a1_3;
    s32 *temp_a1_4;
    s32 *temp_v0_4;
    s32 *temp_v0_6;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1;
    s32 temp_a7;
    s32 temp_at_3;
    s32 temp_at_5;
    s32 temp_f0;
    s32 temp_f2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s8;
    s32 temp_s8_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t2;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 var_a0_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_7;
    s32 var_a5_8;
    s32 var_a5_9;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a6_4;
    s32 var_a6_5;
    s32 var_a6_6;
    s32 var_a6_7;
    s32 var_a6_8;
    s32 var_a7;
    s32 var_ra;
    s32 var_ra_2;
    s32 var_s1;
    s32 var_s2_2;
    s32 var_s4;
    s32 var_s7;
    s32 var_t0;
    s32 var_t8_2;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_at;
    s64 temp_at_4;
    s64 temp_f13_3;
    s64 temp_f14;
    s64 temp_lo;
    s64 temp_s0;
    s64 temp_t9;
    s64 temp_v0_2;
    s64 temp_v1;
    s64 var_a0;
    s64 var_a1;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_a3;
    s64 var_a5_2;
    s64 var_a6;
    s64 var_s0;
    s64 var_s2;
    s64 var_s2_3;
    s64 var_s2_4;
    s64 var_s3;
    s64 var_s3_2;
    s64 var_s5;
    s64 var_s8;
    s64 var_t8;
    s8 var_a5_10;
    s8 var_a5_11;
    s8 var_a5_12;
    u32 temp_s0_3;
    u32 temp_s1;
    u64 temp_a0;
    u64 temp_at_2;
    u8 temp_a0_2;
    u8 temp_a1_2;
    u8 var_a5;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_a6_6;
    void *temp_s0_2;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_t2_2;
    void *temp_t2_3;
    void *temp_t3;
    void *temp_t9_2;
    void *temp_t9_3;
    void *temp_t9_4;
    void *temp_t9_5;
    void *temp_v0;
    void *temp_v0_3;

    var_s2 = saved_reg_s2;
    var_s3 = saved_reg_s3;
    var_s5 = saved_reg_s5;
    var_f24 = saved_reg_f24;
    var_f26 = saved_reg_f26;
    var_f28 = saved_reg_f28;
    var_f30 = saved_reg_f30;
    var_s8 = saved_reg_fp;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    unksp188 = var_a2;
    temp_v0 = *(void **)0x1010;
    unksp138 = (s64) temp_v0;
    if (!(temp_v0->unk704 & 0x20) || (temp_a6 = arg1->unk18, (temp_a6->unk38 != 1))) {
        goto block_2;
    }
    if (temp_a6->unk8 != 0) {
        goto block_106;
    }
    var_a5 = temp_a6->unkA;
    if (var_a5 == 0) {
block_2:
        var_a6 = 0;
    } else {
block_106:
        var_a6 = 1;
    }
    // Error: negative shift count
    // At instruction: bgez $a1, .L0d9c0150
    if (M2C_ERROR() || (var_a5 = (u8) arg1->unk14, var_a2 = (s64) var_a5->unk38, var_a3 = 1, (var_a2 != 1))) {
        goto block_5;
    }
    if (var_a5->unkA == 0) {
        var_a1 = 1;
        arg0->unkC = (f32) M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f7, $f8 */);
    } else {
block_5:
        var_a1 = 0;
    }
    temp_f0 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f1, $f2, $fcc2 */));
    if (temp_f0 > 0) {
        temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f5, $f6, $fcc0 */) - M2C_ERROR(/* unknown instruction: movf.s $f7, $f6, $fcc1 */));
        spD8 = var_a6;
        spD0 = var_a1;
        sp1E8 = (s64) temp_f0;
        if (temp_f2 > 0) {
            temp_v0_2 = unksp138->unk0(unksp138, 0xC, var_a2, var_a3, var_a5, var_a6);
            unksp160 = temp_v0_2;
            if (temp_v0_2 != 0) {
                unksp160->unk8 = NULL;
                unksp160->unk4 = 0;
                unksp160->unk0 = 0;
                if (unksp138->unk11BEB != 0) {
                    if (arg1->unkC != 0) {
                        unksp158 = (s64) unksp138->unk11E18;
                        unksp110 = (s64) unksp138->unk11E1C;
                    } else {
                        unksp110 = sp1E8;
                        unksp158 = (s64) temp_f2;
                    }
                    var_a5_2 = sp1E8;
                    var_s7 = 0;
                    var_s1 = 0;
                    goto block_13;
                }
                temp_a5 = unksp138->unk2FC;
                if (temp_a5->unk0 != 0) {
                    var_s1 = temp_a5->unk44 - 1;
                    temp_s5 = spD0 & 0xFF;
                    unksp108 = temp_a5->unk40 - 1;
                    var_s7 = unksp138->unk11BD4 == 0x8016;
                    if (temp_s5 != 0) {
                        var_t0 = (s32) M2C_ERROR(/* unknown instruction: msub.d $f8, $f8, $f9, $f10 */);
                    } else {
                        var_t0 = temp_f2 - var_s1;
                    }
                    var_a5_2 = sp1E8 - unksp108;
                    if ((var_a5_2 > 0) && (var_t0 > 0)) {
                        var_s5 = unksp1C0;
                        if (temp_s5 != 0) {
                            var_s1 = (s32) ((f64) (second half of f64) * (second half of f64));
                        }
                        if (arg1->unkC != 0) {
                            unksp158 = (s64) unksp138->unk11E18;
                            unksp110 = (s64) unksp138->unk11E1C;
                        } else {
                            unksp110 = sp1E8;
                            unksp158 = (s64) temp_f2;
                        }
                        if (var_s7 == 0) {
                            goto block_14;
                        }
                        goto block_15;
                    }
                    return 0;
                }
                if (arg1->unkC != 0) {
                    unksp158 = (s64) unksp138->unk11E18;
                    unksp110 = (s64) unksp138->unk11E1C;
                } else {
                    unksp110 = sp1E8;
                    unksp158 = (s64) temp_f2;
                }
                var_a5_2 = sp1E8;
                var_s7 = 0;
                var_s1 = 0;
block_13:
                unksp108 = 0;
block_14:
                unksp158 -= var_s1;
                unksp110 -= unksp108;
block_15:
                temp_at = unksp110 - unksp108;
                unksp140 = temp_at;
                temp_f13 = (f32) ((u64) (temp_at << 0x20) >> 0x20);
                temp_a1 = temp_f2 - var_s1;
                temp_a0 = (u64) ((unksp158 - var_s1) << 0x20) >> 0x20;
                temp_f14 = (s64) ceilf((f32) var_a5_2 / temp_f13, temp_f13);
                temp_f13_2 = (f32) temp_a0;
                unksp128 = temp_f14 << 0;
                temp_f13_3 = (s64) ceilf((bitwise f32) temp_a0, (bitwise f32) temp_a1, (f32) temp_a1 / temp_f13_2, temp_f13_2, temp_f14, second half of f64);
                temp_t9 = temp_f13_3 << 0;
                temp_lo = temp_t9 * unksp128;
                unksp120 = temp_t9;
                temp_s0 = temp_lo * 0x48;
                spE0 = temp_lo;
                temp_v0_3 = unksp138->unk0(unksp138, temp_s0, second half of f64, temp_f13_3);
                unksp160->unk8 = temp_v0_3;
                if (temp_v0_3 == NULL) {
                    __glSetError(0x505);
                    if (unksp160 != 0) {
                        unksp138->unkC(unksp138, unksp160);
                    }
                    return 0;
                }
                sp1F0 = temp_s0;
                memset(temp_v0_3, 0, temp_s0);
                if (unksp120 != 0) {
                    unksp180 = 0;
                    unksp170 = 0;
                    unksp130 = 0;
                    unksp1C0 = var_s5;
                    unksp100 = unksp120 - 1;
                    temp_v1 = unksp128 * 0x48;
                    unksp118 = temp_v1;
                    temp_s8 = spD8 & 0xFF;
                    unksp178 = temp_v1;
                    temp_s5_2 = spD0 & 0xFF;
                    unksp168 = (unksp128 - 1) * 0x48;
loop_24:
                    var_a0 = unksp128;
                    if (var_a0 != 0) {
                        var_a2_2 = unksp180;
                        unksp148 = var_a2_2 == 0;
                        unksp150 = unksp100 == var_a2_2;
                        spA0 = (bitwise f64) (f32) unksp108;
                        spA8 = (bitwise f64) (f32) (second half of f64);
                        var_s2_2 = unksp130 * 0x48;
                        sp98 = second half of f64;
                        var_s3_2 = 0;
                        spC8 = (bitwise s64) (f32) ((f64) unksp108 * 0.5);
loop_36:
                        temp_f24 = (f32) ((u64) (var_s3_2 << 0x20) >> 0x20);
                        temp_s0_2 = unksp160->unk8 + var_s2_2;
                        temp_s0_2->unk1 = (u8) (var_s2_2 == unksp168);
                        temp_s0_2->unk2 = (u8) unksp150;
                        temp_s0_2->unk0 = (u8) (var_s2_2 == unksp170);
                        var_f30_2 = (bitwise f32) sp98 + temp_f24;
                        temp_s0_2->unk4 = temp_f24;
                        temp_f28 = (f32) ((u64) ((unksp180 * (unksp158 - var_s1)) << 0x20) >> 0x20);
                        temp_s0_2->unkC = var_f30_2;
                        temp_s0_2->unk3 = (u8) unksp148;
                        temp_s0_2->unk8 = temp_f28;
                        var_f4 = (bitwise f32) spA8 + temp_f28;
                        temp_s0_2->unk10 = var_f4;
                        M2C_ERROR(/* unknown instruction: movf $a5, $zero, $fcc5 */);
                        M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc6 */);
                        temp_f5 = M2C_ERROR(/* unknown instruction: movz.s $f5, $f7, $a6 */) - M2C_ERROR(/* unknown instruction: movz.s $f8, $f7, $a5 */);
                        if (temp_f5 < var_f30_2) {
                            var_f30_2 = temp_f5;
                            temp_s0_2->unkC = temp_f5;
                        }
                        M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc0 */);
                        M2C_ERROR(/* unknown instruction: movf $a5, $zero, $fcc1 */);
                        temp_f5_2 = M2C_ERROR(/* unknown instruction: movz.s $f5, $f6, $a5 */) - M2C_ERROR(/* unknown instruction: movz.s $f8, $f6, $a6 */);
                        if (temp_f24 < var_f30_2) {
                            var_f4 = temp_f5_2;
                            temp_s0_2->unk10 = temp_f5_2;
                        }
                        temp_s0_2->unk28 = 0.0f;
                        temp_s0_2->unk24 = 0.0f;
                        temp_s0_2->unk18 = 0.0f;
                        temp_s0_2->unk14 = 0.0f;
                        temp_f6 = M2C_ERROR(/* unknown instruction: movf.s $f6, $f30, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f8, $f30, $fcc2 */);
                        temp_s0_2->unk2C = temp_f6;
                        temp_s0_2->unk1C = temp_f6;
                        temp_f7 = M2C_ERROR(/* unknown instruction: movf.s $f7, $f4, $fcc4 */) - M2C_ERROR(/* unknown instruction: movf.s $f9, $f4, $fcc3 */);
                        var_f5 = var_f4;
                        temp_s0_2->unk30 = temp_f7;
                        temp_s0_2->unk20 = temp_f7;
                        var_f22 = temp_f6 - (bitwise f32) spA0;
                        var_f20 = temp_f7;
                        if (temp_s5_2 != 0) {
                            var_f20 = (f32) ((f64) temp_f7 * (second half of f64));
                            temp_s0_2->unk30 = var_f20;
                            var_s1 = (s32) ((f64) var_s1 * (second half of f64));
                        }
                        temp_s0_2->unk2C = var_f22;
                        var_f20_2 = var_f20 - (f32) var_s1;
                        temp_s0_2->unk30 = var_f20_2;
                        if (var_s7 != 0) {
                            temp_f26 = (f64) var_s1;
                            spB0 = temp_f26;
                            var_f26_2 = (f32) (temp_f26 * (second half of f64));
                        } else {
                            temp_a1_2 = temp_s0_2->unk0;
                            if (temp_a1_2 != 0) {
                                sp90 = (bitwise f64) var_f5;
                                var_f22 += floorf(var_a0, temp_a1_2, var_a2_2, spC8, second half of f64);
                                temp_s0_2->unk2C = var_f22;
                            }
                            temp_f26_2 = (f64) (second half of f64);
                            spB0 = temp_f26_2;
                            var_f26_2 = (f32) (temp_f26_2 * (second half of f64));
                            if (temp_s0_2->unk3 != 0) {
                                sp90 = (bitwise f64) var_f5;
                                var_f20_2 += floorf((bitwise s64) var_f26_2);
                                temp_s0_2->unk30 = var_f20_2;
                            }
                            if (temp_s0_2->unk1 != 0) {
                                sp90 = (bitwise f64) var_f5;
                                temp_s0_2->unk2C = (f32) (ceilf((bitwise f32) spC8, second half of f64) + var_f22);
                            }
                            if (temp_s0_2->unk2 != 0) {
                                sp90 = (bitwise f64) var_f5;
                                temp_s0_2->unk30 = (f32) (ceilf(var_f26_2) + var_f20_2);
                            }
                        }
                        temp_s0_2->unk40 = var_f5;
                        temp_s0_2->unk3C = var_f30_2;
                        var_f22_2 = var_f5;
                        temp_s0_2->unk38 = temp_f28;
                        var_f20_3 = temp_f28;
                        temp_s0_2->unk34 = temp_f24;
                        if (temp_s8 != 0) {
                            if (temp_s5_2 != 0) {
                                goto block_46;
                            }
                            sp90 = (bitwise f64) var_f5;
                            var_f22_2 = (f32) ((f64) var_f5 * (second half of f64));
                            var_f20_3 = (f32) ((f64) temp_f28 * (second half of f64));
                            temp_s0_2->unk40 = var_f22_2;
                            temp_s0_2->unk38 = var_f20_3;
                        } else if (temp_s5_2 == 0) {
                            sp90 = (bitwise f64) var_f5;
                        } else {
block_46:
                            var_f20_3 = second half of f64;
                            if (temp_s8 == 0) {
                                sp90 = (bitwise f64) var_f5;
                                var_f22_2 = (f32) ((f64) var_f5 * (second half of f64));
                                var_f20_3 = (f32) ((f64) temp_f28 * (second half of f64));
                                temp_s0_2->unk40 = var_f22_2;
                                temp_s0_2->unk38 = var_f20_3;
                            }
                        }
                        sp90 = (bitwise f64) var_f5;
                        temp_f27 = floorf(spC8, second half of f64) + temp_f24;
                        spC0 = (bitwise f64) temp_f27;
                        temp_s0_2->unk34 = temp_f27;
                        var_f20_4 = floorf((bitwise s64) var_f26_2) + var_f20_3;
                        temp_s0_2->unk38 = var_f20_4;
                        temp_f29 = var_f30_2 - ceilf((bitwise f32) spC8, second half of f64);
                        spB8 = (bitwise f64) temp_f29;
                        temp_s0_2->unk3C = temp_f29;
                        var_f22_3 = var_f22_2 - ceilf(var_f26_2);
                        temp_s0_2->unk40 = var_f22_3;
                        if (var_s7 == 0) {
                            if (temp_s0_2->unk0 != 0) {
                                var_f30_2 = second half of f64;
                                temp_f31 = (bitwise f32) spC0 - floorf(spC8, second half of f64);
                                spC0 = (bitwise f64) temp_f31;
                                temp_s0_2->unk34 = temp_f31;
                            }
                            if (temp_s0_2->unk3 != 0) {
                                var_f20_4 -= floorf((bitwise s64) var_f26_2);
                                temp_s0_2->unk38 = var_f20_4;
                            }
                            if (temp_s0_2->unk1 != 0) {
                                ceilf((bitwise f32) spC8, second half of f64);
                                temp_f1 = (second half of f64) + (bitwise f32) spB8;
                                spB8 = (bitwise f64) temp_f1;
                                temp_s0_2->unk3C = temp_f1;
                            }
                            temp_a0_2 = temp_s0_2->unk2;
                            if (temp_a0_2 != 0) {
                                var_f22_3 += ceilf((bitwise f32) temp_a0_2, var_f26_2);
                                temp_s0_2->unk40 = var_f22_3;
                                if (temp_s5_2 == 0) {

                                } else {
                                    goto block_29;
                                }
                            } else {
                                goto block_28;
                            }
                        } else {
                            temp_f15 = (bitwise f32) spC0 - floorf(spC8, second half of f64);
                            spC0 = (bitwise f64) temp_f15;
                            temp_s0_2->unk34 = temp_f15;
                            var_f20_4 -= floorf((bitwise s64) var_f26_2);
                            temp_s0_2->unk38 = var_f20_4;
                            temp_f16 = (bitwise f32) spB8 - floorf(spC8, second half of f64);
                            spB8 = (bitwise f64) temp_f16;
                            temp_s0_2->unk3C = temp_f16;
                            var_f22_3 -= floorf((bitwise s64) var_f26_2);
                            temp_s0_2->unk40 = var_f22_3;
block_28:
                            if (temp_s5_2 != 0) {
block_29:
                                var_s1 = (s32) (spB0 * 2.0);
                            }
                        }
                        temp_s0_2->unk4 = (f32) (arg0->unk0 + temp_f24);
                        temp_f5_3 = arg0->unk4 + temp_f28;
                        temp_s0_2->unk8 = temp_f5_3;
                        temp_s0_2->unkC = (f32) ((second half of f64) + var_f30_2);
                        temp_f4 = arg0->unk4 + (bitwise f32) sp90;
                        temp_s0_2->unk10 = temp_f4;
                        temp_a5_2 = arg1->unk14;
                        var_a0 = 1;
                        var_a2_2 = 1;
                        var_s2_2 += 0x48;
                        if (temp_a5_2->unk38 == (s32) 1) {
                            if (temp_a5_2->unk9 != 0) {
                                temp_s0_2->unk8 = (f32) ((f32) ((u64) ((s64) temp_a5_2->unk24 << 0x20) >> 0x20) - temp_f5_3);
                                temp_s0_2->unk10 = (f32) ((f32) ((u64) ((s64) arg1->unk14->unk24 << 0x20) >> 0x20) - temp_f4);
                            }
                        }
                        temp_a6_2 = arg1->unk18;
                        if (temp_a6_2->unk38 != (s32) 1) {
                            goto block_32;
                        }
                        if (temp_a6_2->unk8 != 0) {
                            M2C_ERROR(/* unknown instruction: nmsub.s $f4, $f2, $f22, $f5 */);
                            temp_s0_2->unk40 = (f32) (second half of f64);
                            temp_s0_2->unk38 = (f32) M2C_ERROR(/* unknown instruction: nmsub.s $f2, $f2, $f20, $f5 */);
                            temp_s0_2->unk3C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f3, $f1, $f3, $f6 */);
                            temp_s0_2->unk34 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f5, $f6 */);
                        } else {
block_32:
                            if (unksp188 != 0) {
                                temp_s0_2->unk34 = (f32) ((f32) unksp188->unk0 + (bitwise f32) spC0);
                                temp_s0_2->unk38 = (f32) ((f32) unksp188->unk4 + var_f20_4);
                                temp_s0_2->unk3C = (f32) ((second half of f64) + (bitwise f32) spB8);
                                temp_s0_2->unk40 = (f32) ((f32) unksp188->unk4 + var_f22_3);
                            }
                        }
                        var_s3_2 += unksp140;
                        if (var_s2_2 != unksp178) {
                            goto loop_36;
                        }
                    }
                    unksp178 += unksp118;
                    unksp168 += unksp118;
                    temp_at_2 = unksp180 + 1;
                    unksp180 = temp_at_2;
                    unksp170 += unksp118;
                    unksp130 += unksp128;
                    if (temp_at_2 < unksp120) {
                        goto loop_24;
                    }
                    var_s2 = sp208;
                    var_s3 = sp200;
                    var_s8 = sp1F8;
                    var_s5 = unksp1C0;
                    var_f26 = unksp1B8;
                    var_f24 = unksp1B0;
                    var_f28 = unksp1A8;
                    var_f30 = unksp1A0;
                }
                unksp160->unk4 = (s32) unksp128;
                unksp160->unk0 = (s32) unksp120;
                temp_a6_3 = arg1->unk18;
                var_a7 = temp_a6_3->unk38;
                var_a5_3 = 0;
                if (var_a7 == 1) {
                    if (temp_a6_3->unk8 != 0) {
                        temp_a5_3 = arg1->unk14;
                        if (temp_a5_3->unk38 != 1) {

                        } else if ((temp_a5_3->unk9 != 0) && (unksp138->unkDD0 != 0)) {
                            temp_t1 = arg1->unk10;
                            sp1F8 = var_s8;
                            if ((temp_t1 != 5) && (sp1F8 = var_s8, (temp_t1 != 4)) && (temp_t2 = unksp138->unk4D4, temp_t1_2 = unksp138->unk760, sp1F8 = var_s8, (temp_t2 != temp_t1_2))) {
                                if (unksp138->unkC96 != 0) {
                                    sp1F8 = var_s8;
                                    if (temp_t1_2 != 0x408) {
                                        goto block_150;
                                    }
                                    goto block_158;
                                }
block_150:
                                if (unksp138->unkC97 != 0) {
                                    if (temp_t1_2 != 0x404) {
                                        goto block_152;
                                    }
                                    sp1F8 = var_s8;
                                    if ((temp_t2 == 0x400) || (sp1F8 = var_s8, (temp_t2 == 0x401))) {
                                        goto block_158;
                                    }
block_152:
                                    if (temp_t1_2 == 0x405) {
                                        sp1F8 = var_s8;
                                        if (temp_t2 != 0x402) {
                                            if (temp_t2 == 0x403) {
                                                sp1F8 = var_s8;
                                                unksp1C0 = var_s5;
                                                goto block_158;
                                            }
                                        } else {
                                            goto block_158;
                                        }
                                    }
                                }
                            } else {
block_158:
                                unksp1C0 = var_s5;
                                temp_s8_2 = spD8 & 0xFF;
                                temp_s5_3 = spD0 & 0xFF;
                                if (temp_s8_2 != 0) {
                                    if (temp_s5_3 != 0) {
                                        goto block_160;
                                    }
                                } else if (temp_s5_3 == 0) {

                                } else {
block_160:
                                    if (temp_s8_2 == 0) {

                                    }
                                }
                                M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc1 */);
                                M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc0 */);
                                M2C_ERROR(/* unknown instruction: madd.s $f10, $f6, $f5, $f10 */);
                                temp_f10 = M2C_ERROR(/* unknown instruction: movt.s $f10, $f6, $fcc7 */);
                                if ((M2C_ERROR(/* unknown instruction: movn.s $f13, $f11, $a1 */) <= temp_f10) && (temp_f10 <= M2C_ERROR(/* unknown instruction: movz.s $f11, $f12, $a0 */))) {
                                    M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc6 */);
                                    M2C_ERROR(/* unknown instruction: movf $a2, $zero, $fcc5 */);
                                    M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f9, $f4, $f5 */);
                                    temp_f5_4 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f9, $fcc4 */);
                                    var_s4 = 0;
                                    if (M2C_ERROR(/* unknown instruction: movz.s $f8, $f7, $a2 */) <= temp_f5_4) {
                                        var_s4 = 0;
                                        if (temp_f5_4 <= M2C_ERROR(/* unknown instruction: movn.s $f6, $f8, $a3 */)) {
                                            var_s4 = 1;
                                        }
                                    }
                                    var_a6_2 = var_s4 & 0xFF;
                                    if (unksp120 != 0) {
                                        unksp170 = 0;
                                        unksp180 = 0;
                                        unksp1A0 = var_f30;
                                        unksp1A8 = var_f28;
                                        unksp1B0 = var_f24;
                                        temp_s1 = unksp128 >> 1;
                                        unksp1B8 = var_f26;
                                        sp200 = var_s3;
                                        sp208 = var_s2;
                                        var_s0 = unksp128 * 0x48;
                                        unksp118 = var_s0;
                                        var_ra = (unksp128 - temp_s1) * 0x48;
                                        do {
                                            if (temp_s1 != 0) {
                                                var_s2_3 = unksp170;
                                                var_t8 = var_s0;
                                                var_a6_3 = 0;
                                                do {
                                                    var_a5_4 = 0x12;
                                                    temp_t9_2 = unksp160->unk8;
                                                    temp_t3 = temp_t9_2 + var_s2_3;
                                                    temp_t9_3 = temp_t9_2 + var_t8;
                                                    var_t8 -= 0x48;
                                                    var_s2_3 += 0x48;
                                                    temp_t9_4 = temp_t9_3 - 0x48;
loop_178:
                                                    temp_at_3 = *(var_a6_3 + (temp_t3 + 4));
                                                    var_a5_4 -= 2;
                                                    temp_v0_4 = var_a6_3 + &sp4;
                                                    *(var_a6_3 + sp) = *(var_a6_3 + temp_t3);
                                                    var_a6_3 += 8;
                                                    *temp_v0_4 = temp_at_3;
                                                    if (var_a5_4 > 0) {
                                                        goto loop_178;
                                                    }
                                                    var_a5_5 = 0;
                                                    var_a6_4 = 0x12;
loop_180:
                                                    var_a6_4 -= 2;
                                                    *(var_a5_5 + temp_t3) = *(var_a5_5 + temp_t9_4);
                                                    temp_v1_2 = var_a5_5 + (temp_t3 + 4);
                                                    temp_v0_5 = *(var_a5_5 + (temp_t9_4 + 4));
                                                    var_a5_5 += 8;
                                                    *temp_v1_2 = temp_v0_5;
                                                    if (var_a6_4 > 0) {
                                                        goto loop_180;
                                                    }
                                                    var_a6_5 = 0x12;
                                                    var_a5_6 = 0;
loop_182:
                                                    temp_a0_3 = *(var_a5_6 + &sp4);
                                                    var_a6_5 -= 2;
                                                    temp_a1_3 = var_a5_6 + (temp_t9_4 + 4);
                                                    *(var_a5_6 + temp_t9_4) = *(var_a5_6 + sp);
                                                    var_a5_6 += 8;
                                                    *temp_a1_3 = temp_a0_3;
                                                    if (var_a6_5 > 0) {
                                                        goto loop_182;
                                                    }
                                                    var_a6_3 = 0;
                                                } while (var_t8 != var_ra);
                                            }
                                            temp_a3 = unksp180 + 1;
                                            unksp180 = temp_a3;
                                            var_s0 += unksp118;
                                            unksp170 += unksp118;
                                            var_ra += unksp118;
                                        } while (unksp120 != temp_a3);
                                        var_s2 = sp208;
                                        var_s3 = sp200;
                                        var_f26 = unksp1B8;
                                        var_f24 = unksp1B0;
                                        var_f28 = unksp1A8;
                                        var_f30 = unksp1A0;
                                        goto block_169;
                                    }
                                } else {
                                    M2C_ERROR(/* unknown instruction: movf $a5, $zero, $fcc3 */);
                                    M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc2 */);
                                    M2C_ERROR(/* unknown instruction: nmsub.s $f5, $f9, $f4, $f5 */);
                                    temp_f5_5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f9, $fcc1 */);
                                    var_s4 = 0;
                                    if (M2C_ERROR(/* unknown instruction: movz.s $f8, $f7, $a4 */) <= temp_f5_5) {
                                        var_s4 = 0;
                                        if (temp_f5_5 <= M2C_ERROR(/* unknown instruction: movn.s $f6, $f8, $a5 */)) {
                                            var_s4 = 1;
                                        }
                                    }
block_169:
                                    var_a6_2 = var_s4 & 0xFF;
                                }
                                if (var_a6_2 == 0) {
                                    temp_s0_3 = unksp120 >> 1;
                                    if (temp_s0_3 != 0) {
                                        unksp170 = 0;
                                        unksp180 = 0;
                                        unksp1A0 = var_f30;
                                        unksp1A8 = var_f28;
                                        unksp1B0 = var_f24;
                                        unksp1B8 = var_f26;
                                        temp_at_4 = unksp128 * 0x48;
                                        sp200 = var_s3;
                                        sp208 = var_s2;
                                        unksp118 = temp_at_4;
                                        unksp178 = temp_at_4;
                                        var_ra_2 = (unksp120 - 1) * unksp128 * 0x48;
                                        do {
                                            if (unksp128 != 0) {
                                                var_s2_4 = unksp170;
                                                var_t8_2 = var_ra_2;
                                                var_a5_7 = 0x12;
                                                var_a6_6 = 0;
                                                do {
                                                    temp_t2_2 = unksp160->unk8;
                                                    temp_t9_5 = temp_t2_2 + var_t8_2;
                                                    temp_t2_3 = temp_t2_2 + var_s2_4;
                                                    var_s2_4 += 0x48;
loop_194:
                                                    temp_at_5 = *(var_a6_6 + (temp_t2_3 + 4));
                                                    var_a5_7 -= 2;
                                                    temp_v0_6 = var_a6_6 + (&sp48 + 4);
                                                    *(var_a6_6 + &sp48) = *(var_a6_6 + temp_t2_3);
                                                    var_a6_6 += 8;
                                                    *temp_v0_6 = temp_at_5;
                                                    if (var_a5_7 > 0) {
                                                        goto loop_194;
                                                    }
                                                    var_a6_7 = 0;
                                                    var_a5_8 = 0x12;
loop_196:
                                                    var_a5_8 -= 2;
                                                    *(var_a6_7 + temp_t2_3) = *(var_a6_7 + temp_t9_5);
                                                    temp_v1_3 = var_a6_7 + (temp_t2_3 + 4);
                                                    temp_v0_7 = *(var_a6_7 + (temp_t9_5 + 4));
                                                    var_a6_7 += 8;
                                                    *temp_v1_3 = temp_v0_7;
                                                    if (var_a5_8 > 0) {
                                                        goto loop_196;
                                                    }
                                                    var_a6_8 = 0x12;
                                                    var_a5_9 = 0;
loop_198:
                                                    temp_a0_4 = *(var_a5_9 + (&sp48 + 4));
                                                    var_a6_8 -= 2;
                                                    temp_a1_4 = var_a5_9 + (temp_t9_5 + 4);
                                                    *(var_a5_9 + temp_t9_5) = *(var_a5_9 + &sp48);
                                                    var_a5_9 += 8;
                                                    *temp_a1_4 = temp_a0_4;
                                                    if (var_a6_8 > 0) {
                                                        goto loop_198;
                                                    }
                                                    var_t8_2 += 0x48;
                                                    var_a5_7 = 0x12;
                                                    var_a6_6 = 0;
                                                } while (var_s2_4 != unksp178);
                                            }
                                            temp_a2 = unksp180 + 1;
                                            unksp180 = temp_a2;
                                            var_ra_2 += unksp128 * -0x48;
                                            unksp178 += unksp118;
                                            unksp170 += unksp118;
                                        } while (temp_s0_3 != temp_a2);
                                    }
                                }
                                var_a7 = arg1->unk18->unk38;
                            }
                        }
                    }
                    var_a5_3 = 0;
                    if (var_a7 == 1) {
                        var_a5_3 = 0;
                        if ((arg1->unk18->unk8 != 0) && ((temp_t1_3 = arg1->unk10, (temp_t1_3 == 5)) || (temp_t1_3 == 4) || (temp_t1_3 == 3) || (var_a5_3 = 0, ((unksp138->unk700 & 0x30000000) == 0)))) {
                            var_a5_3 = 1;
                        }
                    }
                }
                if (spE0 != 0) {
                    var_a0_2 = 0;
                    temp_a7 = var_a5_3 & 0xFF;
                    if (spE0 & 1) {
                        temp_a5_4 = unksp160->unk8;
                        if (temp_a7 != 0) {
                            spC0 = (bitwise f64) temp_a5_4->unk34;
                            spB8 = (bitwise f64) temp_a5_4->unk3C;
                            if (!(M2C_ERROR(/* unknown instruction: movf.s $f23, $f27, $fcc7 */) < 0.0f)) {
                                var_a5_10 = 1;
                                if (!(M2C_ERROR(/* unknown instruction: movf.s $f25, $f22, $fcc1 */) < 0.0f)) {
                                    temp_a6_4 = arg1->unk18;
                                    var_a5_10 = 1;
                                    if (!((f32) ((u64) ((s64) temp_a6_4->unk20 << 0x20) >> 0x20) < M2C_ERROR(/* unknown instruction: movf.s $f31, $f0, $fcc3 */))) {
                                        if ((f32) ((u64) ((s64) temp_a6_4->unk24 << 0x20) >> 0x20) < M2C_ERROR(/* unknown instruction: movf.s $f0, $f22, $fcc5 */)) {
                                            goto block_83;
                                        }
                                        goto block_131;
                                    }
                                }
                            } else {
block_83:
                                var_a5_10 = 1;
                            }
                        } else {
block_131:
                            var_a5_10 = 0;
                        }
                        var_a0_2 = 0x48;
                        temp_a5_4->unk44 = var_a5_10;
                    }
                    if ((spE0 >> 1) != 0) {
loop_97:
                        temp_s0_4 = unksp160->unk8 + var_a0_2;
                        if (temp_a7 != 0) {
                            spC0 = (bitwise f64) temp_s0_4->unk34;
                            spB8 = (bitwise f64) temp_s0_4->unk3C;
                            if (!(M2C_ERROR(/* unknown instruction: movf.s $f5, $f7, $fcc7 */) < 0.0f)) {
                                var_a5_11 = 1;
                                if (!(M2C_ERROR(/* unknown instruction: movf.s $f6, $f22, $fcc1 */) < 0.0f)) {
                                    temp_a6_5 = arg1->unk18;
                                    var_a5_11 = 1;
                                    if (!((f32) ((u64) ((s64) temp_a6_5->unk20 << 0x20) >> 0x20) < M2C_ERROR(/* unknown instruction: movf.s $f9, $f10, $fcc3 */))) {
                                        var_a5_11 = 1;
                                        if (!((f32) ((u64) ((s64) temp_a6_5->unk24 << 0x20) >> 0x20) < M2C_ERROR(/* unknown instruction: movf.s $f10, $f22, $fcc5 */))) {
                                            goto block_102;
                                        }
                                    }
                                }
                            } else {
                                var_a5_11 = 1;
                            }
                        } else {
block_102:
                            var_a5_11 = 0;
                        }
                        temp_s0_4->unk44 = var_a5_11;
                        temp_a0_5 = var_a0_2 + 0x48;
                        temp_s0_5 = unksp160->unk8 + temp_a0_5;
                        if (temp_a7 != 0) {
                            spC0 = (bitwise f64) temp_s0_5->unk34;
                            spB8 = (bitwise f64) temp_s0_5->unk3C;
                            if (!(M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc7 */) < 0.0f)) {
                                var_a5_12 = 1;
                                if (!(M2C_ERROR(/* unknown instruction: movf.s $f1, $f22, $fcc1 */) < 0.0f)) {
                                    temp_a6_6 = arg1->unk18;
                                    var_a5_12 = 1;
                                    if (!((f32) ((u64) ((s64) temp_a6_6->unk20 << 0x20) >> 0x20) < M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc3 */))) {
                                        if ((f32) ((u64) ((s64) temp_a6_6->unk24 << 0x20) >> 0x20) < M2C_ERROR(/* unknown instruction: movf.s $f5, $f22, $fcc5 */)) {
                                            goto block_95;
                                        }
                                        goto block_103;
                                    }
                                }
                            } else {
block_95:
                                var_a5_12 = 1;
                            }
                        } else {
block_103:
                            var_a5_12 = 0;
                        }
                        var_a0_2 = temp_a0_5 + 0x48;
                        temp_s0_5->unk44 = var_a5_12;
                        if (var_a0_2 != sp1F0) {
                            goto loop_97;
                        }
                    }
                }
                return unksp160;
            }
            __glSetError(0x505);
            return 0;
        }
    }
    return 0;
}

void __glOdysseyImageTilingFree(s64 arg0) {
    s64 sp8;
    s64 sp0;

    sp0 = arg0;
    sp8 = (s64) *(s32 *)0x1010;
    if (arg0 != 0) {
        sp8->unkC(sp8, sp0->unk8);
        sp0->unk8 = 0;
        sp0->unk4 = 0;
        sp0->unk0 = 0;
        sp8->unkC(sp8, (s32) sp0);
    }
}
