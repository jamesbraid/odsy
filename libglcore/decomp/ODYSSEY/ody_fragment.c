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
Error occurred while processing instruction: bgez $t9, .L0d98247c

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
Error occurred while processing instruction: bltz $v0, .L0d98246c

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
Error occurred while processing instruction: bgez $t9, .L0d98247c

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
Error occurred while processing instruction: bltz $v0, .L0d98246c

s32 __glErrorCheckMaterial(s32, s32, f32);          /* extern */
? __glOdyim_FogFuncSGIS(s32, void *, s32, s32, ?, s32, u8); /* extern */
? __glScaleColorf(s64, void *, s64, ?, ?);          /* extern */
? __glScaleColori(s64, void *, s64, void *, void *, ?); /* extern */
? __glSetError(s32, void *, void *, void *, s32, s32, ?); /* extern */
? __glOdyim_FragmentLightfvSGIX(f32 *, s32, s32);   /* static */
? __glOdyim_FragmentLightivSGIX(s32 *, s32, s32);   /* static */
extern s32 HQ2_READ_FIFO;

void ValidateFragmentColorMaterial(void *arg0) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;

    temp_a6 = (-0xC1 & ((-0x31 & ((-0xD & ((-4 & arg0->unk9584) | 2)) | 8)) | 0x20)) | 0x80;
    arg0->unk9584 = temp_a6;
    temp_a5 = (-0xC1 & ((-0x31 & ((-0xD & ((-4 & arg0->unk9580) | 2)) | 8)) | 0x20)) | 0x80;
    arg0->unk9580 = temp_a5;
    temp_a3 = arg0->unk165AC;
    temp_a2 = arg0->unk165A8;
    if (arg0->unk704 & 0x2000) {
        if (temp_a2 != 0x404) {
            if (temp_a2 == 0x408) {
                goto block_13;
            }
        } else {
block_13:
            switch (temp_a3) {                      /* switch 2; irregular */
            case 0x1602:                            /* switch 2 */
                arg0->unk9580 = (s32) (temp_a5 | 3 | 0xC);
                break;
            case 0x1600:                            /* switch 2 */
                arg0->unk9580 = (s32) (temp_a5 | 0xC0);
                break;
            case 0x1202:                            /* switch 2 */
                arg0->unk9580 = (s32) (temp_a5 | 0x30);
                break;
            case 0x1200:                            /* switch 2 */
                arg0->unk9580 = (s32) (temp_a5 | 3);
                break;
            case 0x1201:                            /* switch 2 */
                arg0->unk9580 = (s32) (temp_a5 | 0xC);
                break;
            }
        }
        if ((temp_a2 != 0x405) && (temp_a2 != 0x408)) {
            /* Duplicate return node #5. Try simplifying control flow for better match */
            arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
            *(void *)0x1018 = 2;
            return;
        }
        switch (temp_a3) {                          /* switch 1; irregular */
        case 0x1602:                                /* switch 1 */
            arg0->unk9584 = (s32) (temp_a6 | 3 | 0xC);
            /* Duplicate return node #5. Try simplifying control flow for better match */
            arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
            *(void *)0x1018 = 2;
            return;
        case 0x1600:                                /* switch 1 */
            arg0->unk9584 = (s32) (temp_a6 | 0xC0);
            arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
            *(void *)0x1018 = 2;
            return;
        case 0x1202:                                /* switch 1 */
            arg0->unk9584 = (s32) (temp_a6 | 0x30);
            arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
            *(s32 *)0x1018 = 2;
            return;
        case 0x1200:                                /* switch 1 */
            arg0->unk9584 = (s32) (temp_a6 | 3);
            /* Duplicate return node #5. Try simplifying control flow for better match */
            arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
            *(void *)0x1018 = 2;
            return;
        case 0x1201:                                /* switch 1 */
            arg0->unk9584 = (s32) (temp_a6 | 0xC);
            /* Duplicate return node #5. Try simplifying control flow for better match */
            arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
            *(void *)0x1018 = 2;
            return;
        }
    } else {
    default:                                        /* switch 1 */
        arg0->unk16960 = (s32) (arg0->unk16960 | 0x800000);
        *(void *)0x1018 = 2;
    }
}

void __glOdysseyValidateFragment(void *arg0) {
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a7;

    if (arg0->unk588 != 0x81FA) {
        goto block_1;
    }
    if (arg0->unk700 & 0x40) {
        if (arg0->unkC94 != 0) {
            if (arg0->unk704 & 0x1000) {
                goto block_2;
            }
            if (arg0->unk708 & ((1 << arg0->unkE04) - 1)) {
                // Error: negative shift count
                // At instruction: bgez $t9, .L0d98247c
                if (M2C_ERROR()) {
                    goto block_28;
                }
                if (0x1763F0 >= 0) {
                    // Error: negative shift count
                    // At instruction: bltz $v0, .L0d98246c
                    if (M2C_ERROR()) {
                        goto block_2;
                    }
                }
block_28:
                var_a5 = 1;
            } else {
                goto block_1;
            }
        } else {
            goto block_2;
        }
    } else {
block_1:
block_2:
        var_a5 = 0;
    }
    var_a7 = 0x80000;
    var_a4 = (arg0->unk7C00 & ~0x80000) | ((var_a5 << 0x13) & 0x80000);
    arg0->unk7C00 = var_a4;
    if (var_a5 != 0) {
        arg0->unk9754 = (s32) (-0x1000 & (0xFF000FFF & arg0->unk9754));
        arg0->unk9764 = (s32) (0xFFF000 | arg0->unk9764 | 0xFFF);
        arg0->unk975C = (s32) (-0x1000 & (0xFF000FFF & arg0->unk975C));
        arg0->unk9760 = (s32) ((-0xC01 & (0xFF000FFF & arg0->unk9760)) | 0x800);
        arg0->unk9758 = (s32) ((-0xC01 & (0xFF000FFF & arg0->unk9758)) | 0x800);
        arg0->unk9768 = (s32) ((((-0xC01 & (0xFFF000 | arg0->unk9768)) | 0x800) & ~0x300) | 0x200);
        if (arg0->unk9830 != 0) {
            arg0->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
        }
        HQ2_READ_FIFO = 0x10407;
        HQ2_READ_FIFO = 0;
        HQ2_READ_FIFO = 0x11A50;
        HQ2_READ_FIFO = arg0->unk9754;
        HQ2_READ_FIFO = arg0->unk9758;
        HQ2_READ_FIFO = arg0->unk975C;
        var_a7 = arg0->unk9760;
        HQ2_READ_FIFO = var_a7;
        HQ2_READ_FIFO = arg0->unk9764;
        HQ2_READ_FIFO = arg0->unk9768;
        arg0->unk16970 = (s32) (arg0->unk16970 | 1);
        var_a4 = arg0->unk7C00;
    }
    temp_a6 = arg0->unk704 & 0x1000;
    var_a3 = 2;
    if (temp_a6 != 0) {
        goto block_8;
    }
    if (var_a5 == 0) {
        goto block_15;
    }
block_8:
    var_a7 = (s32) arg0->unkC94;
    if (var_a7 == 0) {
block_15:
        var_a3 = 1;
    }
    var_a4_2 = 3;
    arg0->unk7C00 = (s32) (((var_a3 << 0xD) & 0xE000) | (var_a4 & ~0xE000));
    if (temp_a6 != 0) {
        temp_a3 = arg0->unk165B0;
        var_a4_2 = 1;
        if (temp_a3 != 0x104) {
            if (temp_a3 != 0x1E01) {
                var_a4_2 = ((temp_a3 ^ 0x2100) == 0) ? 2 : sp0;
            }
        } else {
            var_a4_2 = 3;
        }
    }
    temp_a3_2 = (var_a4_2 << 0x18) & 0x07000000;
    temp_a6_2 = ~0x07000000;
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x800004);
    temp_a1 = (arg0->unk9580 & temp_a6_2) | temp_a3_2;
    arg0->unk9580 = temp_a1;
    *(s32 *)0x1018 = 2;
    __glOdyim_FogFuncSGIS(temp_a1, arg0 + 0x10000, temp_a3_2, var_a4_2, 0x07000000, temp_a6_2, (u8) var_a7);
}

/*
Decompilation failure in function __glOdyim_FragmentLightfvSGIX:

Unable to determine jump table for jr instruction at ody_fragment.s line 550.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_FragmentLightfSGIX(s32 arg1, s32 arg3, s32 arg4, f32 fparg2) {
    f32 sp20;
    s32 var_a3;
    s32 var_a4;

    var_a3 = arg3;
    var_a4 = arg4;
    sp20 = fparg2;
    if ((arg1 != 0x1205) && (arg1 != 0x1206) && (arg1 != 0x1207) && (var_a3 = 0x1208, (arg1 != 0x1208)) && (var_a4 = 0x1209, (arg1 != 0x1209))) {
        __glSetError(0x500, (void *)0x1207, (void *)0x1208, (void *)0x1209);
    } else {
        __glOdyim_FragmentLightfvSGIX(&sp20, var_a3, var_a4);
    }
}

/*
Decompilation failure in function __glOdyim_FragmentLightivSGIX:

Unable to determine jump table for jr instruction at ody_fragment.s line 1089.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_FragmentLightiSGIX(s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 sp24;
    s32 var_a3;
    s32 var_a4;

    var_a3 = arg3;
    var_a4 = arg4;
    sp24 = arg2;
    if ((arg1 != 0x1205) && (arg1 != 0x1206) && (var_a3 = 0x1208, (arg1 != 0x1207)) && (arg1 != 0x1208) && (var_a4 = 0x1209, (arg1 != 0x1209))) {
        __glSetError(0x500, (void *)0x1207, (void *)0x1208, (void *)0x1209);
    } else {
        __glOdyim_FragmentLightivSGIX(&sp24, var_a3, var_a4);
    }
}

void __glOdyim_FragmentLightModelfvSGIX(f32 *arg0, void *arg1) {
    s64 sp8;
    s64 sp0;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    s32 temp_a4;
    s8 temp_a1;
    s8 temp_t2;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError(0x500, temp_a2, (void *)0x840A, (void *)0x8408, 0x8409, 0x840B);
            break;
        case 0x840B:
            temp_t2 = M2C_ERROR(/* unknown instruction: movt $t2, $zero, $fcc0 */);
            temp_a2->unk165A6 = temp_t2;
            temp_a2->unk7BFC = (s32) ((((temp_t2 == 0) << 0x1B) & 0x08000000) | (temp_a2->unk7BFC & ~0x08000000));
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
            *(void *)0x1018 = 2;
            return;
        case 0x8408:
            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x100);
            temp_a2->unk165A4 = (s8) M2C_ERROR(/* unknown instruction: movt $at, $zero, $fcc1 */);
            *(void *)0x1018 = 2;
            return;
        case 0x8409:
            temp_a1 = M2C_ERROR(/* unknown instruction: movt $a1, $zero, $fcc2 */);
            temp_a2->unk165A5 = temp_a1;
            temp_a2->unk7BFC = (s32) (((temp_a1 << 0x15) & 0x200000) | (temp_a2->unk7BFC & ~0x200000));
            temp_a2->unk16960 = (s32) (temp_a2->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_a2->unk16964 = (s32) (temp_a2->unk16964 | 0x100);
            *(void *)0x1018 = 2;
            return;
        case 0x840A:
            sp8 = (s64) arg1;
            sp0 = (s64) temp_a2;
            __glScaleColorf(sp0, sp0 + 0x16594, sp8, 0x16594, 0x840B);
            if ((f64) arg1->unk0 >= 1.0) {
                var_f4 = 4095.0f;
            } else {
                var_f4 = (second half of f64) * 4096.0f;
            }
            temp_a4 = (0xFF000FFF & sp0->unk957C) | (0xFFF000 & ((s64) var_f4 << 0xC));
            sp0->unk957C = temp_a4;
            if ((f64) arg1->unk4 >= 1.0) {
                var_f4_2 = 4095.0f;
            } else {
                var_f4_2 = (second half of f64) * 4096.0f;
            }
            sp0->unk957C = (s32) ((((s64) var_f4_2 << 0) & 0xFFF) | (temp_a4 & ~0xFFF));
            var_f4_3 = 4095.0f;
            if (!((f64) arg1->unk8 >= 1.0)) {
                var_f4_3 = (second half of f64) * 4096.0f;
            }
            sp0->unk9580 = (s32) ((0xFF000FFF & sp0->unk9580) | (0xFFF000 & ((s64) var_f4_3 << 0xC)));
            sp0->unk16960 = (s32) (sp0->unk16960 | 0x800000);
            *(void *)0x1018 = 2;
            return;
        }
    } else {
        __glSetError(0x502, temp_a2, (void *)0x840B);
    }
}

void __glOdyim_FragmentLightModelfSGIX(s32 arg0, f32 fparg1) {
    f32 sp18;

    sp18 = fparg1;
    if ((arg0 != 0x8408) && (arg0 != 0x8409) && (arg0 != 0x840B)) {
        __glSetError(0x500, (void *)0x840B);
    } else {
        __glOdyim_FragmentLightModelfvSGIX(&sp18);
    }
}

void __glOdyim_FragmentLightModelivSGIX(s32 *arg0, s32 *arg1) {
    s64 sp8;
    s64 sp0;
    s32 temp_t9;
    s8 temp_a1;
    s8 temp_t2;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError(0x500, (void *)0x840A, (void *)0x8408, temp_a4, 0x8409, 0x840B);
            break;
        case 0x840B:
            temp_t2 = *arg1 != 0x1D00;
            temp_a4->unk165A6 = temp_t2;
            temp_a4->unk7BFC = (s32) ((((temp_t2 == 0) << 0x1B) & 0x08000000) | (temp_a4->unk7BFC & ~0x08000000));
            temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 2);
            *(void *)0x1018 = 2;
            return;
        case 0x8408:
            temp_a4->unk165A4 = (s8) (*arg1 != 0);
            temp_a4->unk16964 = (s32) (temp_a4->unk16964 | 0x100);
            *(void *)0x1018 = 2;
            return;
        case 0x8409:
            temp_a1 = *arg1 != 0;
            temp_a4->unk165A5 = temp_a1;
            temp_a4->unk7BFC = (s32) (((temp_a1 << 0x15) & 0x200000) | (temp_a4->unk7BFC & ~0x200000));
            temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_a4->unk16964 = (s32) (temp_a4->unk16964 | 0x100);
            *(void *)0x1018 = 2;
            return;
        case 0x840A:
            sp0 = (s64) arg1;
            sp8 = (s64) temp_a4;
            __glScaleColori(sp8, sp8 + 0x16594, sp0, (void *)0x16594, temp_a4, 0x840B);
            temp_t9 = (0xFFF000 & ((((s32) sp0->unk0 >> 0x14) & 0xFFF) << 0xC)) | (0xFF000FFF & sp8->unk957C);
            sp8->unk957C = temp_t9;
            sp8->unk957C = (s32) ((((s32) sp0->unk4 >> 0x14) & 0xFFF) | (temp_t9 & ~0xFFF));
            sp8->unk16960 = (s32) (sp8->unk16960 | 0x800000);
            sp8->unk9580 = (s32) ((0xFFF000 & ((((s32) sp0->unk8 >> 0x14) & 0xFFF) << 0xC)) | (0xFF000FFF & sp8->unk9580));
            *(void *)0x1018 = 2;
            break;
        }
    } else {
        __glSetError(0x502, temp_a4, (void *)0x840B);
    }
}

void __glOdyim_FragmentLightModeliSGIX(s64 arg0, s32 arg1) {
    s32 sp1C;

    sp1C = arg1;
    if ((arg0 != 0x8408) && (arg0 != 0x8409) && (arg0 != 0x840B)) {
        __glSetError(0x500, (void *)0x840B);
    } else {
        __glOdyim_FragmentLightModelivSGIX(&sp1C);
    }
}

void ApplyMaterialF(void *arg0, u32 arg1, void *arg2) {
    f32 temp_f5;
    f32 temp_f5_10;
    f32 temp_f5_11;
    f32 temp_f5_12;
    f32 temp_f5_13;
    f32 temp_f5_14;
    f32 temp_f5_15;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f5_8;
    f32 temp_f5_9;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f4_5;
    f32 var_f6;
    f32 var_f6_10;
    f32 var_f6_11;
    f32 var_f6_12;
    f32 var_f6_13;
    f32 var_f6_14;
    f32 var_f6_15;
    f32 var_f6_2;
    f32 var_f6_3;
    f32 var_f6_4;
    f32 var_f6_5;
    f32 var_f6_6;
    f32 var_f6_7;
    f32 var_f6_8;
    f32 var_f6_9;
    f64 temp_f4;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 var_t0;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    if (arg1 >= 0x1600U) {
        if (arg1 < 0x1601U) {
            if ((f64) (second half of f64) >= 1.0) {
                var_f6 = 4095.0f;
            } else {
                var_f6 = (second half of f64) * 4096.0f;
            }
            temp_a5 = (0xFF000FFF & arg0->unk18) | ((((s64) var_f6 << 0) & 0xFFF) << 0xC);
            arg0->unk18 = temp_a5;
            temp_f5 = arg2->unk4;
            if ((f64) temp_f5 >= 1.0) {
                var_f6_2 = 4095.0f;
            } else {
                var_f6_2 = temp_f5 * 4096.0f;
            }
            arg0->unk18 = (s32) ((((s64) var_f6_2 << 0) & 0xFFF) | (temp_a5 & ~0xFFF));
            temp_f5_2 = arg2->unk8;
            if ((f64) temp_f5_2 >= 1.0) {
                var_f4 = 4095.0f;
            } else {
                var_f4 = temp_f5_2 * 4096.0f;
            }
            var_t0 = (0xFF000FFF & arg0->unk1C) | ((((s64) var_f4 << 0) & 0xFFF) << 0xC);
            goto block_16;
        }
        if (arg1 >= 0x1602U) {
            if (arg1 < 0x1603U) {
                var_f6_3 = 4095.0f;
                if ((f64) (second half of f64) >= 1.0) {

                } else {
                    var_f6_3 = (second half of f64) * 4096.0f;
                }
                temp_a5_2 = (0xFF000FFF & arg0->unk8) | ((((s64) var_f6_3 << 0) & 0xFFF) << 0xC);
                arg0->unk8 = temp_a5_2;
                temp_f5_3 = arg2->unk0;
                var_f6_4 = 4095.0f;
                if (!((f64) temp_f5_3 >= 1.0)) {
                    var_f6_4 = temp_f5_3 * 4096.0f;
                }
                temp_a6 = (0xFF000FFF & arg0->unk0) | ((((s64) var_f6_4 << 0) & 0xFFF) << 0xC);
                arg0->unk0 = temp_a6;
                temp_f5_4 = arg2->unk4;
                if ((f64) temp_f5_4 >= 1.0) {
                    var_f6_5 = 4095.0f;
                } else {
                    var_f6_5 = temp_f5_4 * 4096.0f;
                }
                arg0->unk8 = (s32) ((-0x1000 & temp_a5_2) | (((s64) var_f6_5 << 0) & 0xFFF));
                temp_f5_5 = arg2->unk4;
                if ((f64) temp_f5_5 >= 1.0) {
                    var_f6_6 = 4095.0f;
                } else {
                    var_f6_6 = temp_f5_5 * 4096.0f;
                }
                arg0->unk0 = (s32) ((-0x1000 & temp_a6) | (((s64) var_f6_6 << 0) & 0xFFF));
                temp_f5_6 = arg2->unk8;
                if ((f64) temp_f5_6 >= 1.0) {
                    var_f6_7 = 4095.0f;
                } else {
                    var_f6_7 = temp_f5_6 * 4096.0f;
                }
                temp_a5_3 = (0xFF000FFF & arg0->unkC) | ((((s64) var_f6_7 << 0) & 0xFFF) << 0xC);
                arg0->unkC = temp_a5_3;
                temp_f5_7 = arg2->unk8;
                var_f6_8 = 4095.0f;
                if (!((f64) temp_f5_7 >= 1.0)) {
                    var_f6_8 = temp_f5_7 * 4096.0f;
                }
                arg0->unk4 = (s32) ((0xFF000FFF & arg0->unk4) | ((((s64) var_f6_8 << 0) & 0xFFF) << 0xC));
                temp_f5_8 = arg2->unkC;
                if ((f64) temp_f5_8 >= 1.0) {
                    var_f4_2 = 4095.0f;
                } else {
                    var_f4_2 = temp_f5_8 * 4096.0f;
                }
                arg0->unkC = (s32) ((-0x1000 & temp_a5_3) | (((s64) var_f4_2 << 0) & 0xFFF));
            }
        } else if (arg1 == 0x1601) {
            temp_f4 = (f64) arg2->unk0;
            temp_a1 = arg0->unk1C;
            if (temp_f4 > 127.968775) {
                var_t0 = temp_a1 | 0xFFF;
block_16:
                arg0->unk1C = var_t0;
            } else {
                arg0->unk1C = (s32) ((((s64) (temp_f4 * 32.0) << 0) & 0xFFF) | (temp_a1 & ~0xFFF));
            }
        }
    } else {
        switch (arg1) {                             /* irregular */
        default:
            if ((f64) (second half of f64) >= 1.0) {
                var_f6_9 = 4095.0f;
            } else {
                var_f6_9 = (second half of f64) * 4096.0f;
            }
            temp_a5_4 = (0xFF000FFF & arg0->unk8) | ((((s64) var_f6_9 << 0) & 0xFFF) << 0xC);
            arg0->unk8 = temp_a5_4;
            temp_f5_9 = arg2->unk4;
            if ((f64) temp_f5_9 >= 1.0) {
                var_f6_10 = 4095.0f;
            } else {
                var_f6_10 = temp_f5_9 * 4096.0f;
            }
            arg0->unk8 = (s32) ((-0x1000 & temp_a5_4) | (((s64) var_f6_10 << 0) & 0xFFF));
            temp_f5_10 = arg2->unk8;
            if ((f64) temp_f5_10 >= 1.0) {
                var_f6_11 = 4095.0f;
            } else {
                var_f6_11 = temp_f5_10 * 4096.0f;
            }
            temp_a5_5 = (0xFF000FFF & arg0->unkC) | ((((s64) var_f6_11 << 0) & 0xFFF) << 0xC);
            arg0->unkC = temp_a5_5;
            temp_f5_11 = arg2->unkC;
            if ((f64) temp_f5_11 >= 1.0) {
                var_f4_3 = 4095.0f;
            } else {
                var_f4_3 = temp_f5_11 * 4096.0f;
            }
            arg0->unkC = (s32) ((-0x1000 & temp_a5_5) | (((s64) var_f4_3 << 0) & 0xFFF));
            break;
        case 0x1200:
            if ((f64) (second half of f64) >= 1.0) {
                var_f6_12 = 4095.0f;
            } else {
                var_f6_12 = (second half of f64) * 4096.0f;
            }
            temp_a6_2 = (0xFF000FFF & arg0->unk0) | ((((s64) var_f6_12 << 0) & 0xFFF) << 0xC);
            arg0->unk0 = temp_a6_2;
            temp_f5_12 = arg2->unk4;
            if ((f64) temp_f5_12 >= 1.0) {
                var_f6_13 = 4095.0f;
            } else {
                var_f6_13 = temp_f5_12 * 4096.0f;
            }
            arg0->unk0 = (s32) ((((s64) var_f6_13 << 0) & 0xFFF) | (temp_a6_2 & ~0xFFF));
            temp_f5_13 = arg2->unk8;
            if ((f64) temp_f5_13 >= 1.0) {
                var_f4_4 = 4095.0f;
            } else {
                var_f4_4 = temp_f5_13 * 4096.0f;
            }
            arg0->unk4 = (s32) ((0xFF000FFF & arg0->unk4) | ((((s64) var_f4_4 << 0) & 0xFFF) << 0xC));
            break;
        case 0x1202:
            if ((f64) (second half of f64) >= 1.0) {
                var_f6_14 = 4095.0f;
            } else {
                var_f6_14 = (second half of f64) * 4096.0f;
            }
            temp_a5_6 = (0xFF000FFF & arg0->unk10) | ((((s64) var_f6_14 << 0) & 0xFFF) << 0xC);
            arg0->unk10 = temp_a5_6;
            temp_f5_14 = arg2->unk4;
            if ((f64) temp_f5_14 >= 1.0) {
                var_f6_15 = 4095.0f;
            } else {
                var_f6_15 = temp_f5_14 * 4096.0f;
            }
            arg0->unk10 = (s32) ((((s64) var_f6_15 << 0) & 0xFFF) | (temp_a5_6 & ~0xFFF));
            temp_f5_15 = arg2->unk8;
            if ((f64) temp_f5_15 >= 1.0) {
                var_f4_5 = 4095.0f;
            } else {
                var_f4_5 = temp_f5_15 * 4096.0f;
            }
            arg0->unk14 = (s32) ((0xFF000FFF & arg0->unk14) | ((((s64) var_f4_5 << 0) & 0xFFF) << 0xC));
            break;
        }
    }
    if (temp_a4->unk9830 != 0) {
        temp_a4->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x13C4D;
        HQ2_READ_FIFO = temp_a4->unk7C70;
        HQ2_READ_FIFO = temp_a4->unk7C74;
        HQ2_READ_FIFO = temp_a4->unk7C78;
        HQ2_READ_FIFO = temp_a4->unk7C7C;
        HQ2_READ_FIFO = temp_a4->unk7C80;
        HQ2_READ_FIFO = temp_a4->unk7C84;
        HQ2_READ_FIFO = temp_a4->unk7C88;
        HQ2_READ_FIFO = temp_a4->unk7C8C;
        HQ2_READ_FIFO = temp_a4->unk7C90;
        HQ2_READ_FIFO = temp_a4->unk7C94;
        HQ2_READ_FIFO = temp_a4->unk7C98;
        HQ2_READ_FIFO = temp_a4->unk7C9C;
        HQ2_READ_FIFO = temp_a4->unk7CA0;
        HQ2_READ_FIFO = temp_a4->unk7CA4;
        HQ2_READ_FIFO = temp_a4->unk7CA8;
        HQ2_READ_FIFO = temp_a4->unk7CAC;
        return;
    }
    HQ2_READ_FIFO = 0x13C4D;
    HQ2_READ_FIFO = temp_a4->unk7C70;
    HQ2_READ_FIFO = temp_a4->unk7C74;
    HQ2_READ_FIFO = temp_a4->unk7C78;
    HQ2_READ_FIFO = temp_a4->unk7C7C;
    HQ2_READ_FIFO = temp_a4->unk7C80;
    HQ2_READ_FIFO = temp_a4->unk7C84;
    HQ2_READ_FIFO = temp_a4->unk7C88;
    HQ2_READ_FIFO = temp_a4->unk7C8C;
    HQ2_READ_FIFO = temp_a4->unk7C90;
    HQ2_READ_FIFO = temp_a4->unk7C94;
    HQ2_READ_FIFO = temp_a4->unk7C98;
    HQ2_READ_FIFO = temp_a4->unk7C9C;
    HQ2_READ_FIFO = temp_a4->unk7CA0;
    HQ2_READ_FIFO = temp_a4->unk7CA4;
    HQ2_READ_FIFO = temp_a4->unk7CA8;
    HQ2_READ_FIFO = temp_a4->unk7CAC;
}

void ApplyMaterialI(void *arg0, u32 arg1, void *arg2) {
    f32 temp_f7;
    f32 temp_f7_10;
    f32 temp_f7_11;
    f32 temp_f7_12;
    f32 temp_f7_13;
    f32 temp_f7_14;
    f32 temp_f7_15;
    f32 temp_f7_16;
    f32 temp_f7_17;
    f32 temp_f7_18;
    f32 temp_f7_19;
    f32 temp_f7_20;
    f32 temp_f7_2;
    f32 temp_f7_3;
    f32 temp_f7_4;
    f32 temp_f7_5;
    f32 temp_f7_6;
    f32 temp_f7_7;
    f32 temp_f7_8;
    f32 temp_f7_9;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f4_5;
    f32 var_f8;
    f32 var_f8_10;
    f32 var_f8_11;
    f32 var_f8_12;
    f32 var_f8_13;
    f32 var_f8_14;
    f32 var_f8_15;
    f32 var_f8_2;
    f32 var_f8_3;
    f32 var_f8_4;
    f32 var_f8_5;
    f32 var_f8_6;
    f32 var_f8_7;
    f32 var_f8_8;
    f32 var_f8_9;
    f64 temp_f4;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a6;
    s32 temp_a6_2;
    void *temp_a4;

    temp_a4 = *(void **)0x1010;
    if (arg1 >= 0x1600U) {
        if (arg1 < 0x1601U) {
            temp_f7 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f8, $f6 */);
            if ((f64) temp_f7 >= 1.0) {
                var_f8 = 4095.0f;
            } else {
                var_f8 = temp_f7 * 4096.0f;
            }
            temp_a5 = (0xFF000FFF & arg0->unk18) | ((((s64) var_f8 << 0) & 0xFFF) << 0xC);
            arg0->unk18 = temp_a5;
            temp_f7_2 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_2 >= 1.0) {
                var_f8_2 = 4095.0f;
            } else {
                var_f8_2 = temp_f7_2 * 4096.0f;
            }
            arg0->unk18 = (s32) ((((s64) var_f8_2 << 0) & 0xFFF) | (temp_a5 & ~0xFFF));
            temp_f7_3 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_3 >= 1.0) {
                var_f4 = 4095.0f;
            } else {
                var_f4 = temp_f7_3 * 4096.0f;
            }
            arg0->unk1C = (s32) ((0xFF000FFF & arg0->unk1C) | ((((s64) var_f4 << 0) & 0xFFF) << 0xC));
        } else if (arg1 >= 0x1602U) {
            if (arg1 < 0x1603U) {
                temp_f7_4 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f8, $f6 */);
                var_f8_3 = 4095.0f;
                if ((f64) temp_f7_4 >= 1.0) {

                } else {
                    var_f8_3 = temp_f7_4 * 4096.0f;
                }
                temp_a5_2 = (0xFF000FFF & arg0->unk8) | ((((s64) var_f8_3 << 0) & 0xFFF) << 0xC);
                arg0->unk8 = temp_a5_2;
                temp_f7_5 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
                var_f8_4 = 4095.0f;
                if (!((f64) temp_f7_5 >= 1.0)) {
                    var_f8_4 = temp_f7_5 * 4096.0f;
                }
                temp_a6 = (0xFF000FFF & arg0->unk0) | ((((s64) var_f8_4 << 0) & 0xFFF) << 0xC);
                arg0->unk0 = temp_a6;
                temp_f7_6 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
                if ((f64) temp_f7_6 >= 1.0) {
                    var_f8_5 = 4095.0f;
                } else {
                    var_f8_5 = temp_f7_6 * 4096.0f;
                }
                arg0->unk8 = (s32) ((-0x1000 & temp_a5_2) | (((s64) var_f8_5 << 0) & 0xFFF));
                temp_f7_7 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
                if ((f64) temp_f7_7 >= 1.0) {
                    var_f8_6 = 4095.0f;
                } else {
                    var_f8_6 = temp_f7_7 * 4096.0f;
                }
                arg0->unk0 = (s32) ((-0x1000 & temp_a6) | (((s64) var_f8_6 << 0) & 0xFFF));
                temp_f7_8 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
                if ((f64) temp_f7_8 >= 1.0) {
                    var_f8_7 = 4095.0f;
                } else {
                    var_f8_7 = temp_f7_8 * 4096.0f;
                }
                temp_a5_3 = (0xFF000FFF & arg0->unkC) | ((((s64) var_f8_7 << 0) & 0xFFF) << 0xC);
                arg0->unkC = temp_a5_3;
                temp_f7_9 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
                var_f8_8 = 4095.0f;
                if (!((f64) temp_f7_9 >= 1.0)) {
                    var_f8_8 = temp_f7_9 * 4096.0f;
                }
                arg0->unk4 = (s32) ((0xFF000FFF & arg0->unk4) | ((((s64) var_f8_8 << 0) & 0xFFF) << 0xC));
                temp_f7_10 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
                if ((f64) temp_f7_10 >= 1.0) {
                    var_f4_2 = 4095.0f;
                } else {
                    var_f4_2 = temp_f7_10 * 4096.0f;
                }
                arg0->unkC = (s32) ((-0x1000 & temp_a5_3) | (((s64) var_f4_2 << 0) & 0xFFF));
            }
        } else if (arg1 == 0x1601) {
            temp_f4 = (f64) arg2->unk0;
            temp_a1 = arg0->unk1C;
            if (temp_f4 > 127.968775) {
                arg0->unk1C = (s32) (temp_a1 | 0xFFF);
            } else {
                arg0->unk1C = (s32) ((((s64) (temp_f4 * 32.0) << 0) & 0xFFF) | (temp_a1 & ~0xFFF));
            }
        }
    } else {
        switch (arg1) {                             /* irregular */
        default:
            temp_f7_11 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f8, $f6 */);
            if ((f64) temp_f7_11 >= 1.0) {
                var_f8_9 = 4095.0f;
            } else {
                var_f8_9 = temp_f7_11 * 4096.0f;
            }
            temp_a5_4 = (0xFF000FFF & arg0->unk8) | ((((s64) var_f8_9 << 0) & 0xFFF) << 0xC);
            arg0->unk8 = temp_a5_4;
            temp_f7_12 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_12 >= 1.0) {
                var_f8_10 = 4095.0f;
            } else {
                var_f8_10 = temp_f7_12 * 4096.0f;
            }
            arg0->unk8 = (s32) ((-0x1000 & temp_a5_4) | (((s64) var_f8_10 << 0) & 0xFFF));
            temp_f7_13 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_13 >= 1.0) {
                var_f8_11 = 4095.0f;
            } else {
                var_f8_11 = temp_f7_13 * 4096.0f;
            }
            temp_a5_5 = (0xFF000FFF & arg0->unkC) | ((((s64) var_f8_11 << 0) & 0xFFF) << 0xC);
            arg0->unkC = temp_a5_5;
            temp_f7_14 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_14 >= 1.0) {
                var_f4_3 = 4095.0f;
            } else {
                var_f4_3 = temp_f7_14 * 4096.0f;
            }
            arg0->unkC = (s32) ((-0x1000 & temp_a5_5) | (((s64) var_f4_3 << 0) & 0xFFF));
            break;
        case 0x1200:
            temp_f7_15 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f8, $f6 */);
            if ((f64) temp_f7_15 >= 1.0) {
                var_f8_12 = 4095.0f;
            } else {
                var_f8_12 = temp_f7_15 * 4096.0f;
            }
            temp_a6_2 = (0xFF000FFF & arg0->unk0) | ((((s64) var_f8_12 << 0) & 0xFFF) << 0xC);
            arg0->unk0 = temp_a6_2;
            temp_f7_16 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_16 >= 1.0) {
                var_f8_13 = 4095.0f;
            } else {
                var_f8_13 = temp_f7_16 * 4096.0f;
            }
            arg0->unk0 = (s32) ((((s64) var_f8_13 << 0) & 0xFFF) | (temp_a6_2 & ~0xFFF));
            temp_f7_17 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_17 >= 1.0) {
                var_f4_4 = 4095.0f;
            } else {
                var_f4_4 = temp_f7_17 * 4096.0f;
            }
            arg0->unk4 = (s32) ((0xFF000FFF & arg0->unk4) | ((((s64) var_f4_4 << 0) & 0xFFF) << 0xC));
            break;
        case 0x1202:
            temp_f7_18 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f8, $f6 */);
            if ((f64) temp_f7_18 >= 1.0) {
                var_f8_14 = 4095.0f;
            } else {
                var_f8_14 = temp_f7_18 * 4096.0f;
            }
            temp_a5_6 = (0xFF000FFF & arg0->unk10) | ((((s64) var_f8_14 << 0) & 0xFFF) << 0xC);
            arg0->unk10 = temp_a5_6;
            temp_f7_19 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_19 >= 1.0) {
                var_f8_15 = 4095.0f;
            } else {
                var_f8_15 = temp_f7_19 * 4096.0f;
            }
            arg0->unk10 = (s32) ((((s64) var_f8_15 << 0) & 0xFFF) | (temp_a5_6 & ~0xFFF));
            temp_f7_20 = temp_a4->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f9, $f6 */);
            if ((f64) temp_f7_20 >= 1.0) {
                var_f4_5 = 4095.0f;
            } else {
                var_f4_5 = temp_f7_20 * 4096.0f;
            }
            arg0->unk14 = (s32) ((0xFF000FFF & arg0->unk14) | ((((s64) var_f4_5 << 0) & 0xFFF) << 0xC));
            break;
        }
    }
    if (temp_a4->unk9830 != 0) {
        temp_a4->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x13C4D;
        HQ2_READ_FIFO = temp_a4->unk7C70;
        HQ2_READ_FIFO = temp_a4->unk7C74;
        HQ2_READ_FIFO = temp_a4->unk7C78;
        HQ2_READ_FIFO = temp_a4->unk7C7C;
        HQ2_READ_FIFO = temp_a4->unk7C80;
        HQ2_READ_FIFO = temp_a4->unk7C84;
        HQ2_READ_FIFO = temp_a4->unk7C88;
        HQ2_READ_FIFO = temp_a4->unk7C8C;
        HQ2_READ_FIFO = temp_a4->unk7C90;
        HQ2_READ_FIFO = temp_a4->unk7C94;
        HQ2_READ_FIFO = temp_a4->unk7C98;
        HQ2_READ_FIFO = temp_a4->unk7C9C;
        HQ2_READ_FIFO = temp_a4->unk7CA0;
        HQ2_READ_FIFO = temp_a4->unk7CA4;
        HQ2_READ_FIFO = temp_a4->unk7CA8;
        HQ2_READ_FIFO = temp_a4->unk7CAC;
        return;
    }
    HQ2_READ_FIFO = 0x13C4D;
    HQ2_READ_FIFO = temp_a4->unk7C70;
    HQ2_READ_FIFO = temp_a4->unk7C74;
    HQ2_READ_FIFO = temp_a4->unk7C78;
    HQ2_READ_FIFO = temp_a4->unk7C7C;
    HQ2_READ_FIFO = temp_a4->unk7C80;
    HQ2_READ_FIFO = temp_a4->unk7C84;
    HQ2_READ_FIFO = temp_a4->unk7C88;
    HQ2_READ_FIFO = temp_a4->unk7C8C;
    HQ2_READ_FIFO = temp_a4->unk7C90;
    HQ2_READ_FIFO = temp_a4->unk7C94;
    HQ2_READ_FIFO = temp_a4->unk7C98;
    HQ2_READ_FIFO = temp_a4->unk7C9C;
    HQ2_READ_FIFO = temp_a4->unk7CA0;
    HQ2_READ_FIFO = temp_a4->unk7CA4;
    HQ2_READ_FIFO = temp_a4->unk7CA8;
    HQ2_READ_FIFO = temp_a4->unk7CAC;
}

void ApplyParameterF(void *arg1, u32 arg2, void *arg3) {
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;

    if (arg2 >= 0x1600U) {
        if (arg2 >= 0x1601U) {
            if (arg2 >= 0x1602U) {
                if (arg2 >= 0x1603U) {
                    if (arg2 == 0x1603) {
                        arg1->unk44 = (f32) arg3->unk0;
                        arg1->unk4C = (f32) arg3->unk4;
                        arg1->unk48 = (f32) arg3->unk8;
                    }
                } else {
                    temp_f13 = arg3->unk0;
                    arg1->unk0 = temp_f13;
                    temp_f14 = arg3->unk4;
                    arg1->unk4 = temp_f14;
                    temp_f15 = arg3->unk8;
                    arg1->unk8 = temp_f15;
                    temp_f12 = arg3->unkC;
                    arg1->unk18 = temp_f15;
                    arg1->unk14 = temp_f14;
                    arg1->unk10 = temp_f13;
                    arg1->unk1C = temp_f12;
                    arg1->unkC = temp_f12;
                }
            } else if (arg2 == 0x1601) {
                arg1->unk40 = (f32) arg3->unk0;
            }
        } else {
            __glScaleColorf((s64) (arg1 + 0x30), arg3, (s64) arg1);
        }
    } else if (arg2 >= 0x1201U) {
        if (arg2 >= 0x1202U) {
            if (arg2 == 0x1202) {
                arg1->unk20 = (f32) arg3->unk0;
                arg1->unk24 = (f32) arg3->unk4;
                arg1->unk28 = (f32) arg3->unk8;
                arg1->unk2C = (f32) arg3->unkC;
            }
        } else {
            arg1->unk10 = (f32) arg3->unk0;
            arg1->unk14 = (f32) arg3->unk4;
            arg1->unk18 = (f32) arg3->unk8;
            arg1->unk1C = (f32) arg3->unkC;
        }
    } else {
        if (arg2 != 0x1200) {
            return;
        }
        arg1->unk0 = (f32) arg3->unk0;
        arg1->unk4 = (f32) arg3->unk4;
        arg1->unk8 = (f32) arg3->unk8;
        arg1->unkC = (f32) arg3->unkC;
    }
}

void __glim_FragmentMaterialfvSGIX(s32 arg0, s64 arg1, s32 *arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp10 = (s64) arg2;
    sp8 = arg1;
    sp0 = (s64) *(s32 *)0x1010;
    temp_v0 = __glErrorCheckMaterial(*arg2);
    if (temp_v0 != 0) {
        __glSetError(temp_v0, (void *)0x405);
    } else {
        switch (arg0) {                             /* irregular */
        case 0x408:
            __glOdyim_FragmentLightModeliSGIX(sp0, sp0 + 0x16544, sp8, sp10);
            __glOdyim_FragmentLightModeliSGIX(sp0, sp0 + 0x164F4, sp8, sp10);
            break;
        case 0x404:
            __glOdyim_FragmentLightModeliSGIX(sp0, sp0 + 0x164F4, sp8, sp10, 0x164F4);
            break;
        case 0x405:
            __glOdyim_FragmentLightModeliSGIX(sp0, sp0 + 0x16544, sp8, sp10, 0x16544);
            break;
        }
    }
}

void __glOdyim_FragmentMaterialfvSGIX(f32 *arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp10 = arg2;
    sp8 = arg1;
    sp0 = (s64) *(s32 *)0x1010;
    __glim_FragmentMaterialfvSGIX();
    switch (arg0) {                                 /* irregular */
    case 0x408:
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C70, (s32) sp8, sp10);
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C90, (s32) sp8, sp10);
        break;
    case 0x404:
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C70, (s32) sp8, sp10);
        break;
    case 0x405:
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C90, (s32) sp8, sp10);
        break;
    }
}

void __glOdyim_FragmentMaterialfSGIX(s64 arg1, f32 fparg2) {
    f32 sp20;

    sp20 = fparg2;
    if (arg1 != 0x1601) {
        __glSetError(0x500);
    } else {
        __glOdyim_FragmentMaterialfvSGIX(&sp20);
    }
}

void ApplyParameterI(void *arg0, void *arg1, u32 arg2, void *arg3) {
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f29;
    f32 temp_f2;

    if (arg2 >= 0x1600U) {
        if (arg2 >= 0x1601U) {
            if (arg2 >= 0x1602U) {
                if (arg2 >= 0x1603U) {
                    if (arg2 == 0x1603) {
                        arg1->unk44 = (f32) arg3->unk0;
                        arg1->unk4C = (f32) arg3->unk4;
                        arg1->unk48 = (f32) arg3->unk8;
                    }
                } else {
                    temp_f0 = arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f1, $f31, $f1, $f4 */);
                    arg1->unk0 = temp_f0;
                    temp_f1 = arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f2, $f31, $f2, $f4 */);
                    arg1->unk4 = temp_f1;
                    temp_f2 = arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f3, $f31, $f3, $f4 */);
                    arg1->unk8 = temp_f2;
                    arg1->unk18 = temp_f2;
                    arg1->unk14 = temp_f1;
                    arg1->unk10 = temp_f0;
                    temp_f29 = arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f31, $f31, $f3, $f4 */);
                    arg1->unk1C = temp_f29;
                    arg1->unkC = temp_f29;
                }
            } else if (arg2 == 0x1601) {
                arg1->unk40 = (f32) arg3->unk0;
            }
        } else {
            __glScaleColori((s64) (arg1 + 0x30), arg3, 0x1603, arg1);
        }
    } else if (arg2 >= 0x1201U) {
        if (arg2 >= 0x1202U) {
            if (arg2 == 0x1202) {
                arg1->unk20 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f12, $f4, $f12, $f6 */));
                arg1->unk24 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f10, $f4, $f10, $f6 */));
                arg1->unk28 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f8, $f4, $f8, $f6 */));
                arg1->unk2C = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f6 */));
            }
        } else {
            arg1->unk10 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f27, $f15, $f27, $f17 */));
            arg1->unk14 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f23, $f15, $f23, $f17 */));
            arg1->unk18 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f19, $f15, $f19, $f17 */));
            arg1->unk1C = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f15, $f15, $f16, $f17 */));
        }
    } else {
        if (arg2 != 0x1200) {
            return;
        }
        arg1->unk0 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f11, $f3, $f11, $f5 */));
        arg1->unk4 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f9, $f3, $f9, $f5 */));
        arg1->unk8 = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f7, $f3, $f7, $f5 */));
        arg1->unkC = (f32) (arg0->unkDF0 * M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f4, $f5 */));
    }
}

void __glim_FragmentMaterialivSGIX(s32 arg0, s32 arg1, s32 *arg2) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_v0;

    sp0 = (s64) *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a2 = *arg2;
        temp_v0 = __glErrorCheckMaterial(arg0, temp_a2, (f32) temp_a2);
        if (temp_v0 != 0) {
            __glSetError(temp_v0);
        } else {
            switch (arg0) {                         /* irregular */
            case 0x408:
                __glOdyim_FragmentMaterialfSGIX(sp0, (bitwise f32) (sp0 + 0x16544), arg1, arg2, 0x405, 0x408);
                __glOdyim_FragmentMaterialfSGIX(sp0, (bitwise f32) (sp0 + 0x164F4), arg1, arg2);
                break;
            case 0x404:
                __glOdyim_FragmentMaterialfSGIX(sp0, (bitwise f32) (sp0 + 0x164F4), arg1, arg2, 0x164F4);
                break;
            case 0x405:
                __glOdyim_FragmentMaterialfSGIX(sp0, (bitwise f32) (sp0 + 0x16544), arg1, arg2, 0x16544, 0x408);
                break;
            }
        }
    } else {
        __glSetError(0x502);
    }
}

void __glOdyim_FragmentMaterialivSGIX(s32 *arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;

    sp10 = arg2;
    sp8 = arg1;
    sp0 = (s64) *(s32 *)0x1010;
    __glim_FragmentMaterialivSGIX();
    switch (arg0) {                                 /* irregular */
    case 0x408:
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C70, (s32) sp8, sp10);
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C90, (s32) sp8, sp10);
        break;
    case 0x404:
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C70, (s32) sp8, sp10);
        break;
    case 0x405:
        __glOdyim_FragmentLightModeliSGIX(sp0 + 0x7C90, (s32) sp8, sp10);
        break;
    }
}

void __glOdyim_FragmentMaterialiSGIX(s32 arg1, s32 arg2) {
    s32 sp24;

    sp24 = arg2;
    if (arg1 != 0x1601) {
        __glSetError(0x500);
    } else {
        __glOdyim_FragmentMaterialivSGIX(&sp24);
    }
}

void __glOdyim_FragmentColorMaterialSGIX(s32 arg0, s32 arg1, void *arg4, s32 arg5) {
    s32 var_a5;
    void *temp_a3;
    void *var_a4;

    var_a4 = arg4;
    var_a5 = arg5;
    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x404) {
            var_a4 = (void *)0x405;
            if ((arg0 != 0x405) && (var_a5 = 0x408, (arg0 != 0x408))) {
                __glSetError(0x500, (void *)0x404, temp_a3, (void *)0x405, 0x408, 0x1200);
            } else {
                goto block_6;
            }
        } else {
block_6:
            if ((arg1 != 0x1200) && (arg1 != 0x1201) && (arg1 != 0x1202) && (arg1 != 0x1600) && (arg1 != 0x1602)) {
                __glSetError(0x500, (void *)0x404, temp_a3, var_a4, var_a5, 0x1200, 0x1201);
            } else {
                temp_a3->unk165A8 = arg0;
                temp_a3->unk165AC = arg1;
                temp_a3->unk16964 = (s32) (temp_a3->unk16964 | 0x80);
                *(void *)0x1018 = 2;
            }
        }
    } else {
        __glSetError(0x502, temp_a3);
    }
}

void __glOdysseyInitFragmentLighting(void *arg0) {
    arg0->unk165AC = 0x1602;
    arg0->unk165A8 = 0x408;
    arg0->unk16970 = 1;
    arg0->unk164E8 = 1.0f;
    arg0->unk164E4 = 180.0f;
    arg0->unk164D8 = -1.0f;
    arg0->unk164C8 = 1.0f;
    arg0->unk164B8 = 1.0f;
}

void __glOdysseyInitFragmentMaterial(void) {

}

void __glOdyim_LightEnviSGIX(s32 arg0, s32 arg1) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x8407) {
            __glSetError(0x500, (void *)0x8407, temp_a3, (void *)0x1E01, 0x2100);
        } else if ((arg1 != 0x104) && (arg1 != 0x1E01) && (arg1 != 0x2100)) {
            __glSetError(0x500, (void *)0x8407, temp_a3, (void *)0x104, 0x1E01, 0x2100, 2);
        } else {
            temp_a3->unk165B0 = arg1;
            temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 0x80);
            *(void *)0x1018 = 2;
        }
    } else {
        __glSetError(0x502, temp_a3, (void *)0x1E01, (void *)0x2100);
    }
}
