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
Error occurred while processing instruction: bgez $t2, .L0d964930

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
Error occurred while processing instruction: bgez $t2, .L0d964930

s32 __glOdysseyIoctl(void *, ?, s32 *, s32, s32, s32, u32, u32, u32, u32, f32, s32, s32, s32, s32, s32, s32); /* extern */
? __glOdysseySetDrawbuf(void *, s64, s64, s64, s64); /* extern */
? __glOdysseyValidateHardware(void *, u8, s32, s32, ?, ?, s32, u32); /* extern */
f32 __glOdysseyWindowToNormalizedEyeZ(s32, s32, s32, s32, ?, s32, u8, s64, f32, ?); /* extern */
? __glSetError(?, s32, s32, s64, s32, ?);           /* extern */
? __glim_Clear(s64);                                /* extern */
void __glOdysseyClear(void *arg0, f32 *arg1, s32 arg3, s16 arg4, s32 arg5, s32 arg6, s32 arg7, s32 fparg2, s32 arg_sp4); /* static */
extern u32 HQ2_READ_FIFO;

void __glOdyim_Clear(s64 arg0) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    f64 sp38;
    f64 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    f32 temp_f0;
    s16 var_a1;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a4;
    s64 temp_a7_2;
    s64 temp_t0;
    s64 var_a0;
    u32 temp_a1_3;
    u8 temp_a3_2;
    u8 temp_a6_2;
    u8 temp_a7;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_a1 = *(s32 *)0x1018;
    sp78 = temp_s0 + 0x10000;
    sp80 = arg0;
    if (temp_s0->unk16964 != 0) {
        if (temp_a1 != 0) {
            goto block_3;
        }
        goto block_8;
    }
    if (temp_a1 == 0) {
        goto block_9;
    }
block_3:
    if (temp_a1 != 2) {
        __glSetError(0x502, temp_a1, 0x10000);
    } else {
block_8:
        ((void *) sp78)->unk6975 = 1;
        temp_s0->unk2E40(temp_s0, temp_a1, 0x10000);
        *(void *)0x1018 = 0;
block_9:
        temp_a1_2 = sp80 & ~0x4700;
        if (temp_a1_2 != 0) {
            __glSetError(0x501, temp_a1_2, -0x4701, sp80);
        } else if (sp80 != 0) {
            temp_a4 = temp_s0->unkC84;
            if ((temp_a4 == 0x1C00) && ((temp_a6 = sp80 & 0x200, (temp_a6 == 0)) || (temp_a7 = temp_s0->unkC98, (temp_a7 == 0)) || (temp_s0->unk7B24(temp_s0 + 0x7AB8, temp_a1_2, -0x4701, sp80, temp_a4, 0x1C00, temp_a6, temp_a7), ((sp80 & 0x4500) != 0))) && (sp78->unk65C4 == 0)) {
                temp_a1_3 = sp78->unk65BC;
                if ((temp_s0->unk7C20 != temp_a1_3) || (sp78->unk65C0 != temp_s0->unk7C24)) {
                    temp_s0->unk7C20 = temp_a1_3;
                    temp_s0->unk7C24 = (u32) sp78->unk65C0;
                    if (sp78->unk-67D0 != 0) {
                        sp78->unk-67D0 = 0;
                        HQ2_READ_FIFO = 0x10443;
                        HQ2_READ_FIFO = 0xFA;
                        HQ2_READ_FIFO = 0x10046;
                        HQ2_READ_FIFO = 0x10046;
                    }
                    // Error: negative shift count
                    // At instruction: bgez $t2, .L0d964930
                    if (M2C_ERROR()) {
                        sp10 = 0;
                        sp14 = 0;
                        sp18 = 0;
                        sp1C = 0;
                        temp_a4_2 = ((u32) temp_s0->unk7C20 >> 0xC) & 0xFFF;
                        sp10 = temp_a4_2;
                        temp_a3 = temp_s0->unk7C20 & 0xFFF;
                        sp18 = temp_a3;
                        sp14 = ((u32) temp_s0->unk7C24 >> 0xC) & 0xFFF;
                        sp1C = temp_s0->unk7C24 & 0xFFF;
                        __glOdysseyIoctl(temp_s0, 0x6F64000D, &sp10, temp_a3, temp_a4_2);
                    }
                    M2C_ERROR(/* Read from unset register $v1 */)->unk6964 = (s32) (M2C_ERROR(/* Read from unset register $v1 */)->unk6964 | 0x2000);
                    *(void *)0x1018 = 2;
                }
                temp_a7_2 = sp80 & 0x4000;
                sp70 = (s64) temp_s0->unk7C5C;
                sp68 = (s64) temp_s0->unk7BFC;
                if (temp_a7_2 != 0) {
                    if (temp_s0->unkC94 != 0) {
                        sp20 = temp_s0->unk744;
                        sp24 = temp_s0->unk748;
                        sp28 = temp_s0->unk74C;
                        sp2C = temp_s0->unk750;
                    } else {
                        sp2C = 0.0f;
                        sp28 = 0.0f;
                        sp24 = 0.0f;
                        sp20 = temp_s0->unk754;
                    }
                    var_a4 = temp_s0->unk7C5C;
                } else {
                    var_a4 = sp70 & ~0xFFF & ~0x100000 & ~0x200000 & ~0x400000 & ~0x800000;
                    temp_s0->unk7C5C = var_a4;
                }
                temp_a3_2 = temp_s0->unkC99;
                var_a2 = 0;
                if (temp_a3_2 != 0) {
                    var_a2 = 0;
                    if (sp80 & 0x100) {
                        var_a2 = 0;
                        if (temp_s0->unk664 != 0) {
                            var_a2 = 1;
                        }
                    }
                }
                temp_a6_2 = temp_s0->unkC9A;
                if ((temp_a6_2 != 0) && (sp80 & 0x400)) {
                    var_a1 = temp_s0->unk68A;
                } else {
                    var_a1 = 0;
                }
                if (temp_a3_2 != 0) {
                    sp50 = temp_a7_2;
                    var_a1 = (temp_a6_2 == 0) ? ((var_a2 == 0) ? 0 : 0xFF) : var_a1;
                } else {
                    var_a2 = var_a1 != 0;
                    sp50 = temp_a7_2;
                }
                temp_a5 = ~0xFF000;
                temp_a3_3 = (var_a1 << 0xC) & 0xFF000;
                temp_a2 = (((var_a4 & ~0x01000000) | ((var_a2 << 0x18) & 0x01000000)) & temp_a5) | temp_a3_3;
                temp_s0->unk7C5C = temp_a2;
                temp_a1_4 = sp78->unk6960 | 0x80;
                sp78->unk6960 = temp_a1_4;
                *(void *)0x1018 = 2;
                temp_a0 = ~0x40000;
                temp_s0->unk7BFC = (s32) (temp_s0->unk7BFC & temp_a0);
                sp78->unk6960 = (s32) (sp78->unk6960 | 2);
                *(void *)0x1018 = 2;
                temp_f0 = __glOdysseyWindowToNormalizedEyeZ(temp_a0, temp_a1_4, temp_a2, temp_a3_3, 0xFF000, temp_a5, temp_a6_2, temp_a7_2, (f32) temp_s0->unk668, second half of f64);
                var_a0 = 0;
                if (temp_s0->unkCE4 == 0) {
                    var_a0 = 0;
                    if (sp50 != 0) {
                        if (sp80 & 0x100) {
                            goto block_47;
                        }
                        var_a0 = 0;
                        if (temp_s0->unkC99 == 0) {
block_47:
                            if (sp80 & 0x400) {
                                goto block_48;
                            }
                            var_a0 = 0;
                            if (temp_s0->unkC9A == 0) {
block_48:
                                var_a0 = 1;
                            }
                        }
                    }
                }
                if (temp_s0->unk7B74 != 0) {
                    var_a2_2 = var_a0 & 0xFF;
                } else {
                    temp_a1_5 = temp_s0->unk760;
                    switch (temp_a1_5) {            /* irregular */
                    default:
                        var_a2_2 = var_a0 & 0xFF;
                        break;
                    case 0x406:
                        sp40 = 0;
                        sp48 = 1;
                        sp38 = (bitwise f64) temp_f0;
                        sp58 = var_a0;
block_58:
                        __glOdysseySetDrawbuf(temp_s0, 0, 0, sp48, sp40);
                        temp_t0 = sp58 & 0xFF;
                        sp60 = temp_t0;
                        sp30 = (bitwise f64) (f32) ((f64) (second half of f64) * (second half of f64));
                        __glOdysseyClear(temp_s0, &sp20, (s32) temp_t0);
                        __glOdysseySetDrawbuf(temp_s0, sp48, sp40, 0, 0);
                        var_a2_2 = (s32) sp60;
                        break;
                    case 0x408:
                        sp48 = 1;
                        sp38 = (bitwise f64) temp_f0;
                        sp58 = var_a0;
                        sp40 = temp_s0->unkC97 != 0;
                        goto block_58;
                    case 0x407:
                        sp40 = 1;
                        sp48 = 0;
                        sp38 = (bitwise f64) temp_f0;
                        sp58 = var_a0;
                        goto block_58;
                    }
                }
                __glOdysseyClear(temp_s0, &sp20, var_a2_2, temp_s0->unk684, 0, 0, temp_s0->unkE74, temp_s0->unkE78, var_a2_2);
                temp_s0->unk7C5C = (s32) sp70;
                temp_s0->unk7BFC = (s32) sp68;
                sp78->unk6960 = (s32) (sp78->unk6960 | 0x82);
                *(void *)0x1018 = 2;
            }
        }
    }
}

void __glOdysseyClear(void *arg0, s64 arg1, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, f64 fparg2, u8 arg_sp4) {
    s64 sp98;
    s64 sp90;
    s64 sp88;
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
    f64 sp30;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_t0;
    s32 temp_t3_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_s3;
    s64 var_a0;
    s64 var_a1;
    s64 var_a4_2;
    u32 temp_a0;
    u32 temp_a7;
    u32 temp_a7_2;
    u32 temp_t3;

    temp_s4 = arg0->unk7BFC;
    sp68 = (s64) temp_s4;
    sp78 = (s64) arg0->unk7C30;
    arg0->unk7BFC = (s32) (((-0x11 & (-5 & (temp_s4 & ~0x4000 & ~0x20000 & ~0x100 & ~0x400000 & ~0x80000 & ~0x100000)) & ~0x80) | 0x1000) & ~0x800);
    arg0->unk16960 = (s32) (arg0->unk16960 | 2);
    *(s32 *)0x1018 = 2;
    sp90 = (s64) arg0->unk7C2C;
    sp70 = (s64) arg0->unk7C00;
    sp80 = (s64) arg0->unk96A4;
    arg0->unk7C00 = (s32) (-0x11 & (-5 & (((arg0->unk7C00 & ~0xE000) | 0x2000) & ~1 & ~2) & ~8) & ~0x20 & ~0xC00);
    arg0->unk16960 = (s32) (arg0->unk16960 | 4);
    *(void *)0x1018 = 2;
    temp_t3 = arg0->unk7C5C;
    sp98 = arg1;
    sp58 = temp_t3 & 0xFFF;
    sp60 = (temp_t3 >> 0x18) & 1;
    arg0->unk7BFC = (s32) (0x10000 | arg0->unk7BFC | 0x8000);
    sp50 = (temp_t3 >> 0x17) & 1;
    arg0->unk7C30 = (u32) (arg0->unk7C30 | 7);
    arg0->unk7C2C = (u32) (0x20000 | ((((0x800000 | (((arg3 & 0xFF) | ((arg0->unk7C2C | 0x0E000000) & ~0xFF) | 0xFF00) & ~0x01C00000)) & ~0x380000) | 0x100000) & ~0x70000));
    temp_t0 = (temp_t3 >> 0xC) & 0xFF;
    sp30 = fparg2;
    temp_t3_2 = (temp_t3 >> 0x14) & 1;
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    var_a1 = 0x10420;
    HQ2_READ_FIFO = 0x10420;
    HQ2_READ_FIFO = arg0->unk7C30;
    sp48 = (temp_t3 >> 0x16) & 1;
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x1041F;
    HQ2_READ_FIFO = arg0->unk7C2C;
    temp_a0 = arg0->unk96A4;
    temp_a4 = (temp_a0 >> 7) & 7;
    temp_a3 = (temp_a0 >> 0xA) & 7;
    if (!(temp_a0 & 0x80000)) {
        var_s3 = 0;
        if ((((temp_t3 >> 0x15) & 1) == temp_t3_2) && ((var_s3 = 1, (sp48 != temp_t3_2)) || (sp50 != temp_t3_2))) {
            var_s3 = 0;
        }
    } else {
        var_s3 = 0;
        if ((sp58 == 0xFFF) || (sp58 == 0)) {
            var_s3 = 1;
        }
    }
    if (arg0->unkC99 != 0) {
        if (temp_a3 != 2) {

        } else if ((temp_a4 == 4) || (temp_a4 == 3)) {
            goto block_42;
        }
    } else {
block_42:
        var_s3 = 0;
    }
    if (temp_t0 != 0xFF) {
        goto block_13;
    }
    if (sp60 != 0) {
        goto block_49;
    }
block_13:
    var_a1 = sp60;
    if (temp_t0 != 0) {
        var_a4 = 0;
    } else {
        var_a4 = 0;
        if (var_a1 == 0) {
block_49:
            var_a4 = 1;
        }
    }
    if ((temp_a3 == 0) || (var_a1 = (s64) arg_sp4, var_a3 = 1, (var_a1 == 0))) {
        var_a3 = 0;
    }
    temp_a2 = arg0->unk7B70;
    var_a3_2 = 0;
    temp_a2_2 = (temp_a2 & 0x10) == 0;
    temp_s3 = (temp_a2_2 != 0) ? 0 : (((arg6 * arg7) < arg0->unk19DD4) ? 0 : (((temp_a0 * 0x10) < 0) ? 0 : (var_a3 & (var_a4 & var_s3))));
    if ((temp_a2 & 0x40) && ((temp_s3 == 0) || (var_a3_2 = 1, (arg_sp4 == 0)))) {
        var_a3_2 = 0;
    }
    arg0->unk16960 = (s32) (0x200000 | arg0->unk16960);
    arg0->unk96A4 = (u32) ((((0x800000 & (temp_s3 << 0x17)) | (0xFF7FFFFF & temp_a0)) & 0x7FFFFFFF) | ((var_a3_2 << 0x1F) & 0x80000000));
    *(void *)0x1018 = 2;
    temp_a7 = arg0->unk7C04;
    sp88 = (s64) temp_a7;
    temp_a7_2 = (((temp_a7 & ~0xC) | 8) & ~3) | 2;
    arg0->unk7C04 = temp_a7_2;
    temp_a6 = arg0->unk9830;
    if (temp_a6 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10415;
    HQ2_READ_FIFO = arg0->unk7C04;
    if (arg0->unk16960 != 0) {
        __glOdysseyValidateHardware(arg0, (u8) var_a1, temp_a2_2, var_a3_2, 0x200000, 0xFF7FFFFF, temp_a6, temp_a7_2);
    }
    temp_a4_2 = arg5 + arg7;
    if (temp_s3 != 0) {
        temp_a5 = arg4 + arg6;
        sp40 = (s64) temp_a5;
        sp38 = (s64) temp_a4_2;
        temp_a3_2 = arg0->unk7B70 & 0x800000;
        var_a0 = sp38;
        var_a4_2 = sp40;
        if (__glOdysseyIoctl(arg0, 0x6F64000E, sp, temp_a3_2, temp_a4_2, temp_a5, sp98->unk0, sp98->unk4, sp98->unk8, sp98->unkC, (bitwise f32) sp30, arg4, temp_a5, arg5, temp_a4_2, 0x30, temp_a3_2) != 0) {
            arg0->unk16960 = (s32) (0x200000 | arg0->unk16960);
            arg0->unk96A4 = (u32) (0xFF7FFFFF & arg0->unk96A4);
            *(void *)0x1018 = 2;
            if (arg0->unk16960 != 0) {
                __glOdysseyValidateHardware(arg0);
                var_a0 = sp38;
                var_a4_2 = sp40;
            }
            goto block_30;
        }
        if (temp_s3 == 0) {
            goto block_29;
        }
    } else {
block_29:
        var_a0 = arg5 + arg7;
        var_a4_2 = arg4 + arg6;
block_30:
        HQ2_READ_FIFO = 0x14400;
        HQ2_READ_FIFO = 7;
        HQ2_READ_FIFO = 0x8F80A944;
        HQ2_READ_FIFO = sp98->unk0;
        HQ2_READ_FIFO = sp98->unk4;
        HQ2_READ_FIFO = sp98->unk8;
        HQ2_READ_FIFO = sp98->unkC;
        HQ2_READ_FIFO = (bitwise u32) (f32) arg4;
        HQ2_READ_FIFO = (bitwise u32) (f32) arg5;
        HQ2_READ_FIFO = (bitwise u32) sp30;
        HQ2_READ_FIFO = (bitwise u32) (f32) var_a4_2;
        HQ2_READ_FIFO = (bitwise u32) (f32) var_a0;
        HQ2_READ_FIFO = (bitwise u32) sp30;
        HQ2_READ_FIFO = 0x14001;
        if (arg0->unk96F4 != 0) {
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        arg0->unk9830 = 1;
    }
    arg0->unk96A4 = (u32) sp80;
    arg0->unk7C00 = (s32) sp70;
    arg0->unk7BFC = (s32) sp68;
    arg0->unk7C2C = (u32) sp90;
    arg0->unk7C30 = (u32) sp78;
    arg0->unk7C04 = (u32) sp88;
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x200006);
    *(void *)0x1018 = 2;
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10415;
    HQ2_READ_FIFO = arg0->unk7C04;
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10420;
    HQ2_READ_FIFO = arg0->unk7C30;
    if (arg0->unk9830 != 0) {
        arg0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x1041F;
        HQ2_READ_FIFO = arg0->unk7C2C;
        return;
    }
    HQ2_READ_FIFO = 0x1041F;
    HQ2_READ_FIFO = arg0->unk7C2C;
}

void __glOdyim_SoftClear(s64 arg0, s32 arg5) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_a5;
    void *temp_a4;

    var_a5 = arg5;
    temp_a4 = *(void **)0x1010;
    temp_a2 = *(s32 *)0x1018;
    temp_a3 = temp_a4 + 0x10000;
    sp0 = arg0;
    if (temp_a4->unk16964 != 0) {
        if (temp_a2 != 0) {
            var_a5 = 2;
            goto block_3;
        }
        goto block_6;
    }
    var_a5 = 2;
    if (temp_a2 == 0) {
        goto block_7;
    }
block_3:
    if (temp_a2 != 2) {
        __glSetError(0x502, temp_a2, temp_a3, (s64) temp_a4, 2, 1);
    } else {
block_6:
        temp_a4->unk16975 = 1;
        temp_a4->unk2E40(temp_a4, temp_a2, temp_a3, temp_a4, var_a5, 1);
        *(void *)0x1018 = 0;
block_7:
        __glim_Clear(sp0);
    }
}
