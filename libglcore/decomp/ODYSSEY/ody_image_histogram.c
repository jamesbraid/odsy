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
Error occurred while processing instruction: bgez $t0, .L0d9c1de0

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
Error occurred while processing instruction: bgez $t0, .L0d9c1de0

s32 __glOdysseyAsyncCheck(void *, ?);               /* extern */
? __glOdysseyAsyncDropMarker(void *, ?);            /* extern */
? __glSetError(?);                                  /* extern */
? __glim_GetHistogramEXT(s64, s64, s64, s64, s64);  /* extern */
? __glim_GetMinmaxEXT(s64, s64, s64, s64, s64);     /* extern */
extern ? __glSpanExpandAlphaNS;
extern ? __glSpanExpandLuminanceAlphaNS;
extern ? __glSpanExpandLuminanceNS;
extern ? __glSpanExpandRedAlphaNS;
extern ? __glSpanExpandRedNS;
extern ? __glSpanHistogramA;
extern ? __glSpanHistogramL;
extern ? __glSpanHistogramLA;
extern ? __glSpanHistogramRGB;
extern ? __glSpanHistogramRGBA;
extern ? __glSpanHistogramSinkA;
extern ? __glSpanHistogramSinkL;
extern ? __glSpanHistogramSinkLA;
extern ? __glSpanHistogramSinkRGB;
extern ? __glSpanHistogramSinkRGBA;
extern ? __glSpanMinmaxSinkL;
extern ? __glSpanMinmaxSinkLA;
extern ? __glSpanMinmaxSinkRGBA;
extern ? __glSpanUnpack4444Ushort;
extern ? __glSpanUnpack5551Ushort;
extern ? __glSpanUnpackUbyte;
extern ? __glSpanUnpackUshort;
extern ? __glSpanUnpack_10_10_10_2_Uint;

void __glOdyim_GetHistogramEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *temp_s0;

    sp20 = arg4;
    sp38 = arg3;
    temp_s0 = *(void **)0x1010;
    sp30 = arg2;
    sp28 = arg1;
    sp18 = arg0;
    if (!(temp_s0->unk718 & 8) || (__glOdysseyAsyncCheck(temp_s0, 8) != 0)) {
        __glim_GetHistogramEXT(sp18, sp28, sp30, sp38, sp20);
        if (temp_s0->unk718 & 8) {
            __glOdysseyAsyncDropMarker(temp_s0, 8);
        }
    }
}

void __glOdyim_GetMinmaxEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *temp_s0;

    sp20 = arg4;
    sp38 = arg3;
    temp_s0 = *(void **)0x1010;
    sp30 = arg2;
    sp28 = arg1;
    sp18 = arg0;
    if (!(temp_s0->unk718 & 8) || (__glOdysseyAsyncCheck(temp_s0, 8) != 0)) {
        __glim_GetMinmaxEXT(sp18, sp28, sp30, sp38, sp20);
        if (temp_s0->unk718 & 8) {
            __glOdysseyAsyncDropMarker(temp_s0, 8);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x210, 0x214, 0x218, 0x21c, 0x230, 0x234], gap at: 0x228. */
void doOdysseyHistogramMinMax(void *arg0, s32 arg1, s64 arg2, ? *arg3, ? *arg4, ? *arg5, void *arg6, s64 arg7) {
    s64 sp208;
    s64 sp200;
    s32 sp1F8;
    ? *sp168;
    s32 spB8;
    s32 spB4;
    s32 spA8;
    s32 sp1C;
    ? *var_a3;
    ? *var_a4;
    ? *var_a5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_ra;
    s32 var_s2;
    s32 var_s3;
    s32 var_s8;
    s64 (*temp_t9)(void *, s64, s64, ? *, ? *, ? *, void *);
    s64 temp_a1;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a2;
    s64 var_a2_2;
    s64 var_s0;
    s64 var_s4;
    s64 var_s6;
    s64 var_s7;
    void *var_a6;
    void *var_s1;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    unksp228 = var_a2;
    spB8 = arg1;
    spB4 = arg1;
    spA8 = arg1;
    if (var_a3 != (? *)0x1908) {
        if (var_a3 != (? *)1) {
            if (var_a3 != (? *)0x190A) {
                if ((var_a3 == (? *)0x1903) || (var_a3 == (? *)0x1906) || (var_a3 == (? *)0x1909)) {
                    sp1C = 1;
                    goto block_8;
                }
            } else {
                goto block_47;
            }
        } else {
block_47:
            sp1C = 2;
            goto block_8;
        }
    } else {
        var_a2 = 4;
        sp1C = (s32) 4;
block_8:
        if (var_a4 != (? *)0x1401) {
            if (var_a4 != (? *)0x1403) {
                var_a2 = 2;
                switch (var_a4) {                   /* switch 1; irregular */
                default:                            /* switch 1 */
                    var_s3 = 0;
                    break;
                case 0x8033:                        /* switch 1 */
                    sp1F8 = (s32) 2;
                    var_s3 = 1;
                    sp168 = &__glSpanUnpack4444Ushort;
                    break;
                case 0x8034:                        /* switch 1 */
                    sp1F8 = 2;
                    var_s3 = 1;
                    sp168 = &__glSpanUnpack5551Ushort;
                    break;
                case 0x8036:                        /* switch 1 */
                    sp1F8 = 4;
                    var_s3 = 1;
                    sp168 = &__glSpanUnpack_10_10_10_2_Uint;
                    break;
                }
            } else {
                var_s3 = 1;
                sp168 = &__glSpanUnpackUshort;
                sp1F8 = sp1C * 2;
            }
        } else {
            sp1F8 = sp1C;
            var_s3 = 1;
            sp168 = &__glSpanUnpackUbyte;
        }
        switch (var_a3) {                           /* switch 2; irregular */
        case 0x190A:                                /* switch 2 */
            var_s3 += 1;
            (sp + (var_s3 * 4))->unk164 = &__glSpanExpandLuminanceAlphaNS;
            break;
        case 0x1:                                   /* switch 2 */
            var_s3 += 1;
            var_a3 = &__glSpanExpandRedAlphaNS;
            var_a4 = sp + (var_s3 * 4);
            var_a4->unk164 = &__glSpanExpandRedAlphaNS;
            break;
        case 0x1909:                                /* switch 2 */
            var_s3 += 1;
            (sp + (var_s3 * 4))->unk164 = &__glSpanExpandLuminanceNS;
            break;
        case 0x1903:                                /* switch 2 */
            var_s3 += 1;
            (sp + (var_s3 * 4))->unk164 = &__glSpanExpandRedNS;
            break;
        case 0x1906:                                /* switch 2 */
            var_s3 += 1;
            var_a2 = (s64) (sp + (var_s3 * 4));
            var_a2->unk164 = &__glSpanExpandAlphaNS;
            break;
        }
        if (var_a5 != NULL) {
            temp_a0 = arg0->unk4FC;
            var_a2 = 0x1906;
            var_a4 = &__glSpanHistogramSinkA;
            if (temp_a0 != (s32) 0x1906) {
                var_a3 = (? *)0x1909;
                var_a4 = (? *)0x190A;
                if (temp_a0 != 0x1909) {
                    if (temp_a0 != 0x190A) {
                        var_a5 = (? *)0x1907;
                        var_a4 = &__glSpanHistogramSinkRGB;
                        if (temp_a0 != 0x1907) {
                            if (temp_a0 == 0x1908) {
                                var_s3 += 1;
                                (sp + (var_s3 * 4))->unk164 = (? *) ((var_a6 == NULL) ? &__glSpanHistogramSinkRGBA : &__glSpanHistogramRGBA);
                            }
                        } else {
                            var_s3 += 1;
                            var_a2 = (s64) ((var_a6 == NULL) ? &__glSpanHistogramSinkRGB : &__glSpanHistogramRGB);
                            var_a3 = sp + (var_s3 * 4);
                            var_a3->unk164 = (s32) var_a2;
                        }
                    } else {
                        var_s3 += 1;
                        (sp + (var_s3 * 4))->unk164 = (? *) ((var_a6 == NULL) ? &__glSpanHistogramSinkLA : &__glSpanHistogramLA);
                    }
                } else {
                    var_s3 += 1;
                    (sp + (var_s3 * 4))->unk164 = (? *) ((var_a6 == NULL) ? &__glSpanHistogramSinkL : &__glSpanHistogramL);
                }
            } else {
                var_s3 += 1;
                var_a2 = (s64) ((var_a6 == NULL) ? &__glSpanHistogramSinkA : &__glSpanHistogramA);
                var_a3 = sp + (var_s3 * 4);
                var_a3->unk164 = (s32) var_a2;
            }
        }
        if (var_a6 != NULL) {
            temp_a0_2 = arg0->unk55C;
            var_a6 = (void *)0x1906;
            switch (temp_a0_2) {                    /* switch 3; irregular */
            case 0x1906:                            /* switch 3 */
                var_s3 += 1;
                (sp + (var_s3 * 4))->unk164 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
                break;
            case 0x1909:                            /* switch 3 */
                var_s3 += 1;
                var_a5 = &__glSpanMinmaxSinkL;
                var_a6 = sp + (var_s3 * 4);
                var_a6->unk164 = &__glSpanMinmaxSinkL;
                break;
            case 0x190A:                            /* switch 3 */
                var_s3 += 1;
                (sp + (var_s3 * 4))->unk164 = &__glSpanMinmaxSinkLA;
                break;
            case 0x1907:                            /* switch 3 */
                var_s3 += 1;
                (sp + (var_s3 * 4))->unk164 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
                break;
            case 0x1908:                            /* switch 3 */
                var_s3 += 1;
                var_a3 = &__glSpanMinmaxSinkRGBA;
                var_a4 = sp + (var_s3 * 4);
                var_a4->unk164 = &__glSpanMinmaxSinkRGBA;
                break;
            }
        }
        temp_t9 = arg0->unk0;
        temp_a1 = arg1 * 0x10;
        sp200 = arg7;
        if (var_s3 >= 3) {
            sp208 = temp_a1;
            temp_v0 = temp_t9(arg0, arg1 * 0x20, var_a2, var_a3, var_a4, var_a5, var_a6);
            var_s4 = temp_v0;
            var_s6 = temp_v0 + sp208;
            if (temp_v0 == 0) {
                goto block_34;
            }
            goto block_36;
        }
        temp_v0_2 = temp_t9(arg0, temp_a1, var_a2, var_a3, var_a4, var_a5, var_a6);
        var_s4 = temp_v0_2;
        var_s6 = 0;
        if (temp_v0_2 != 0) {
block_36:
            var_s7 = sp200;
            if (unksp228 > 0) {
                var_s8 = 0;
                unksp220 = sp1F8 * arg1;
                var_s0 = var_s4;
                do {
                    var_a2_2 = var_s7;
                    var_s1 = sp;
                    if (var_s3 > 0) {
                        var_s2 = 0;
                        do {
                            var_s1->unk168(arg0, sp, var_a2_2, var_s0);
                            temp_ra = var_s2 & 1;
                            var_s2 += 1;
                            var_s1 += 4;
                            var_a2_2 = var_s0;
                            var_s0 = (temp_ra != 0) ? var_s4 : var_s6;
                        } while (var_s2 != var_s3);
                    }
                    var_s8 += 1;
                    var_s0 = var_s4;
                    var_s7 += unksp220;
                } while (unksp228 != var_s8);
            }
            arg0->unkC(arg0, var_s4);
        } else {
block_34:
            __glSetError(0x505);
        }
    }
}

void __glOdysseyHistogramMinMax(void *arg0, s64 arg5) {
    s32 temp_a6;
    s32 var_t1;
    s32 var_t2;
    s64 var_a6;

    // Error: negative shift count
    // At instruction: bgez $t0, .L0d9c1de0
    if (M2C_ERROR() || ((temp_a6 != 0) && (arg0->unk500 != 0))) {
        var_t1 = 0;
        var_a6 = 0 & 0xFF;
        if (temp_a6 != 0) {
            goto block_4;
        }
        goto block_10;
    }
    var_t1 = 1;
    if (temp_a6 == 0) {
        goto block_9;
    }
block_4:
    var_a6 = var_t1 & 0xFF;
    if (arg0->unk4E0 > 0) {
        var_t2 = 1;
        goto block_6;
    }
block_9:
    var_a6 = var_t1 & 0xFF;
block_10:
    var_t2 = 0;
    if (var_a6 == 0) {

    } else {
block_6:
        __glOdyim_GetMinmaxEXT(var_t2 & 0xFF, var_a6, arg5);
    }
}
