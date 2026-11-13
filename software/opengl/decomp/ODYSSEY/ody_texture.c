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
Error occurred while processing instruction: bgez $at, .L0d9d2ee8

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
Error occurred while processing instruction: bgez $a2, .L0d9d2f50

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
Error occurred while processing instruction: bgez $at, .L0d9d2ee8

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
Error occurred while processing instruction: bgez $a2, .L0d9d2f50

? .L0d9d8300(s64, s32, s32);                        /* extern */
? __glClampColorf(u64, s64, u64, s32, s32, s32, s32); /* extern */
? __glClampColori(u64, s64, u64, s32, s32, s32, s32); /* extern */
? __glNamesDeleteRange(u32 **, s64, s64, s32, s32); /* extern */
? __glNamesGenNames(void *, s32, s32, u64, void *); /* extern */
u64 __glNamesLockData(u32 **, s32, s8 *, s32, s32); /* extern */
s32 __glNamesNewData(u32 **, s32, s8 *, u64);       /* extern */
? __glNamesUnlockData(u32 **, void *, s32, u32 **, s32); /* extern */
s32 __glOdysseyAsyncCheck(u32 **, ?);               /* extern */
? __glOdysseyAsyncDropMarker(u32 **, ?);            /* extern */
? __glOdysseyClosePMObjReference(s64, s32, s64, s64); /* extern */
? __glOdysseyDestroyPMObj(u32 **, s32, s64);        /* extern */
? __glOdysseyDestroyPMObjGroup(u32 **, s32, s32, void *, s32, s32, ?); /* extern */
s32 __glOdysseyImageCalcFieldFormat(u32 **);        /* extern */
? __glOdysseyImageLoadBuzzRasterState(?);           /* extern */
s32 __glOdysseyImageLogBase2(s32, s64, s32, s32, s64, ?); /* extern */
? __glOdysseyImageSaveUserBuzzRasterState();        /* extern */
? __glOdysseyImageXfer(s64 *, u32 **, f32 *, ?, s32 *, u32, u32, s64); /* extern */
s32 __glOdysseyOpenPMObjReference(s64, s32, s64, s64, s32, s32); /* extern */
s32 __glOdysseyPMObjGroupResident(s32, s32, s32, s32, u32 **); /* extern */
void *__glOdysseySetCurrentFilter(s64, ?, s32, ?);  /* extern */
? __glOdysseyValidateHardware(void *, s32, s64, s32, s64, s32, ?, s32); /* extern */
? __glOdysseyValidateTexGen(s64, ?, ?);             /* extern */
s32 __glSetError(u32 **, s32, u64, u64, s32, s32, s32); /* extern */
s32 __glSpecBytesPerElement(s64);                   /* extern */
s64 __glSpecElementsPerGroup(s64, s64, u32 **);     /* extern */
? bcopy(s32, s32, s32);                             /* extern */
? bzero(void *, ?, ?, u32 **, u32 **, void *, ?);   /* extern */
f32 ceilf(f32, u32, s32, f32, f32, u64, u32, s32, f32, f32); /* extern */
? memset(s64, ?, ?, ?, ?);                          /* extern */
s32 sub_0d9d0000(u64, s8 *, s32, s32, s8, s32, s64 *); /* extern */
void __glOdyim_GetTexImage(u32 **arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32, s32, s32); /* static */
void __glOdysseyTextureSetDetailTable(u32 **arg0, s32 arg1, void *arg2); /* static */
extern u32 HQ2_READ_FIFO;
extern ? sub_0daf0000;

void FreeTextureObject(void *arg0, void *arg1) {
    s64 sp0;

    if (arg1->unk4FC != -1) {
        sp0 = (s64) arg1;
        __glOdysseyDestroyPMObjGroup(arg1 + 0x4FC);
    }
    arg0->unkC(arg0, arg1);
}

void InitTextureObject(u32 **arg0, s32 arg1, s32 arg2) {
    u32 **var_a4;
    u32 **var_a5;
    void *temp_a6;

    arg0->unk28 = 0;
    arg0->unk24 = 0x2901;
    arg0->unk20 = 0x2901;
    arg0->unk1C = 0x2901;
    arg0->unk18 = 0x2601;
    arg0->unk14 = 0x2702;
    arg0->unk10 = 0;
    arg0->unkC = arg2;
    arg0->unk8 = arg1;
    arg0->unk0 = (u32 *)1;
    arg0->unk44 = 0x104;
    arg0->unk40 = -4;
    arg0->unk3C = 1.0f;
    arg0->unk38 = 0.0f;
    arg0->unk34 = 0.0f;
    arg0->unk30 = 0.0f;
    var_a4 = arg0;
    var_a5 = arg0;
    arg0->unk2C = 0.0f;
    arg0->unk4 = (void *) (sub_0d9d0000 - 0xAD0);
    do {
        var_a4->unk570 = 0;
        var_a4->unk574 = 0;
        var_a4->unk578 = 0;
        var_a4->unk57C = 0;
        var_a4->unk580 = 0;
        var_a4->unk584 = 0;
        var_a4->unk588 = 0;
        var_a4->unk58C = 0;
        var_a4->unk590 = 0;
        var_a4->unk594 = 0;
        var_a4->unk56C = 1;
        var_a4 += 0x44;
        var_a5 += 4;
        var_a4->unk524 = 0;
        var_a5->unk510 = 0;
    } while (var_a4 != (arg0 + 0x440));
    arg0->unk50C = 2;
    arg0->unk504 = 2;
    arg0->unk500 = 0;
    arg0->unkA0 = 0;
    arg0->unk4FC = -1;
    temp_a6 = &sub_0daf0000 - 0x36D0;
    arg0->unk510 = temp_a6;
    arg0->unk508 = temp_a6;
    bzero(arg0 + 0xFC, 0x400, 0x2901, var_a4, var_a5, temp_a6, -1);
    __glOdysseyTextureSetDetailTable(arg0, 2, &sub_0daf0000 - 0x36D0);
    arg0->unkF8 = 0;
    arg0->unkF0 = 0;
    arg0->unkE8 = 0;
    arg0->unkE0 = 0;
    arg0->unkF4 = 0x1000;
    arg0->unkEC = 0x1000;
    arg0->unkE4 = 0x1000;
    arg0->unkDC = 0x1000;
    arg0->unkB4 = 0x82;
    arg0->unkBC = 0;
    arg0->unkB8 = 0;
    arg0->unkB0 = 0;
    arg0->unkAC = 0;
    arg0->unkA8 = 0;
    arg0->unkA4 = 0x08000000;
    arg0->unk60 = 0x3E8;
    arg0->unk5C = 0;
    arg0->unkCC = 0xF00;
    arg0->unkC8 = 0x3100;
    arg0->unkC4 = 0;
    arg0->unkC0 = 0;
    arg0->unkD8 = 0;
    arg0->unkD4 = 0;
    arg0->unkD0 = 0;
    arg0->unk7C = 0.0f;
    arg0->unk78 = 0.0f;
    arg0->unk74 = 0.0f;
    arg0->unk70 = 0.0f;
    arg0->unk8C = 1.0f;
    arg0->unk88 = 1.0f;
    arg0->unk84 = 1.0f;
    arg0->unk80 = 1.0f;
    arg0->unk6C = 0.0f;
    arg0->unk68 = 0.0f;
    arg0->unk64 = 0.0f;
    arg0->unk50 = 1.0f;
    arg0->unk4C = 1.0f;
    arg0->unk48 = 1.0f;
    arg0->unk58 = 1000.0f;
    arg0->unk54 = -1000.0f;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x38, 0x3c], gap at: 0x28. */
void __glOdysseyTextureDriverInit(void *arg0) {
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a0_3;
    s64 temp_s8;

    temp_s8 = arg0 + 0x120F8;
    __glOdysseyValidateTexGen(temp_s8, 0, 0xDE0);
    temp_a0 = arg0 + 0x12A8C;
    unksp30 = temp_a0;
    __glOdysseyValidateTexGen(temp_a0, 0, 0xDE1);
    temp_a0_2 = arg0 + 0x13420;
    unksp28 = temp_a0_2;
    __glOdysseyValidateTexGen(temp_a0_2, 0, 0x806F);
    temp_a0_3 = arg0 + 0x13DB4;
    unksp20 = temp_a0_3;
    __glOdysseyValidateTexGen(temp_a0_3, 0, 0x8095);
    __glOdysseyValidateTexGen(arg0 + 0x14748, 0, 0x8063);
    __glOdysseyValidateTexGen(arg0 + 0x150DC, 0, 0x8064);
    __glOdysseyValidateTexGen(arg0 + 0x15A70, 0, 0x8070);
    arg0->unk1641C = 0;
    arg0->unk16418 = 0;
    arg0->unk1640C = (s32) unksp28;
    arg0->unk16408 = (s32) unksp30;
    arg0->unk16404 = (s32) temp_s8;
    arg0->unk16410 = (s32) unksp20;
    arg0->unk7CC0 = 0;
    arg0->unk7CBC = 0;
    arg0->unk7CB8 = 0;
    arg0->unk7CB4 = 0;
    arg0->unk7CB0 = (s32) ((arg0->unk7CB0 & ~7) | 2);
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x100);
    *(s32 *)0x1018 = 2;
    arg0->unk7CC4 = (s32) arg0->unk1219C;
    arg0->unk7CC8 = (s32) arg0->unk121A0;
    arg0->unk7CCC = (s32) arg0->unk121A4;
    arg0->unk7CD0 = (s32) arg0->unk121A8;
    arg0->unk7CD4 = (s32) arg0->unk121AC;
    arg0->unk7CD8 = (s32) arg0->unk121B0;
    arg0->unk7CDC = (s32) arg0->unk121B4;
    arg0->unk16960 = (s32) (arg0->unk16960 | 0x200);
    *(void *)0x1018 = 2;
}

void __glOdysseyTextureDriverDestroy(u32 **arg0) {
    u32 **temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;

    temp_a1 = arg0->unk16404;
    if (temp_a1->unk8 != 0) {
        __glNamesUnlockData(temp_a1);
    }
    temp_a1_2 = arg0->unk16408;
    if (temp_a1_2->unk8 != 0) {
        __glNamesUnlockData(arg0, temp_a1_2);
    }
    temp_a1_3 = arg0->unk1640C;
    if (temp_a1_3->unk8 != 0) {
        __glNamesUnlockData(arg0, temp_a1_3);
    }
    temp_a1_4 = arg0->unk16410;
    if (temp_a1_4->unk8 != 0) {
        __glNamesUnlockData(arg0, temp_a1_4);
    }
}

s32 floatTo12(f32 fparg0) {
    s32 temp_f2;

    if ((f64) fparg0 <= (second half of f64)) {
        return 0;
    }
    temp_f2 = (s32) (fparg0 * 4096.0f);
    return (temp_f2 <= 0xFFF) ? temp_f2 : 0xFFF;
}

s32 floatToS58_Clamp(f32 fparg0) {
    M2C_ERROR(/* unknown instruction: movf.s $f2, $f12, $fcc1 */);
    return (s32) (M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc0 */) * 256.0f) & 0x3FFF;
}

s32 floatToS312_Clamp(f32 fparg0) {
    M2C_ERROR(/* unknown instruction: movf.s $f2, $f12, $fcc1 */);
    return (s32) (M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc0 */) * 4096.0f) & 0xFFFF;
}

u32 **__glOdysseyGetCurrentTexture(u32 **arg0, u32 arg1) {
    if (arg1 >= 0x8064U) {
        if (arg1 > 0x8064U) {
            if (arg1 >= 0x8070U) {
                if (arg1 > 0x8070U) {
                    if (arg1 == 0x8095) {
                        return arg0->unk16410;
                    }
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    return NULL;
                }
                return arg0 + 0x15A70;
            }
            if (arg1 == 0x806F) {
                return arg0->unk1640C;
            }
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return NULL;
        }
        return arg0 + 0x150DC;
    }
    if (arg1 >= 0xDE1U) {
        if (arg1 >= 0xDE2U) {
            if (arg1 == 0x8063) {
                return arg0 + 0x14748;
            }
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return NULL;
        }
        return arg0->unk16408;
    }
    if (arg1 != 0xDE0) {
        return NULL;
    }
    return arg0->unk16404;
}

/*
Decompilation failure in function GetImageFmtEnumFromBuzzTexFormat:

Unable to determine jump table for jr instruction at ody_texture.s line 696.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function ChooseSuitableBuzzTexModeBaseFmt:

Unable to determine jump table for jr instruction at ody_texture.s line 795.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 ChooseSuitableBuzzTexObjFormat(u32 arg0) {
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v0_2;

    if (arg0 >= 0x8047U) {
        if (arg0 > 0x8047U) {
            if (arg0 >= 0x8053U) {
                if (arg0 > 0x8053U) {
                    if (arg0 >= 0x8059U) {
                        if (arg0 > 0x8059U) {
                            if (arg0 >= 0x8466U) {
                                if (arg0 > 0x8466U) {
                                    if (arg0 == 0x8467) {
                                        return 0x31;
                                    }
                                    /* Duplicate return node #33. Try simplifying control flow for better match */
                                    return 0;
                                }
                                return 0x30;
                            }
                            if (arg0 >= 0x805BU) {
                                if (arg0 <= 0x805BU) {
                                    /* Duplicate return node #61. Try simplifying control flow for better match */
                                    return 0x21;
                                }
                                /* Duplicate return node #33. Try simplifying control flow for better match */
                                return 0;
                            }
                            if (arg0 == 0x805A) {
                                /* Duplicate return node #61. Try simplifying control flow for better match */
                                return 0x21;
                            }
                            /* Duplicate return node #33. Try simplifying control flow for better match */
                            return 0;
                        }
                        /* Duplicate return node #31. Try simplifying control flow for better match */
                        return 0x12;
                    }
                    if (arg0 >= 0x8056U) {
                        if (arg0 > 0x8056U) {
                            if (arg0 >= 0x8058U) {
                                if (arg0 <= 0x8058U) {
                                    /* Duplicate return node #45. Try simplifying control flow for better match */
                                    return 0x11;
                                }
                                /* Duplicate return node #33. Try simplifying control flow for better match */
                                return 0;
                            }
                            if (arg0 == 0x8057) {
                                /* Duplicate return node #87. Try simplifying control flow for better match */
                                return 0xD;
                            }
                            /* Duplicate return node #33. Try simplifying control flow for better match */
                            return 0;
                        }
                        /* Duplicate return node #73. Try simplifying control flow for better match */
                        return 0xC;
                    }
                    if (arg0 >= 0x8055U) {
                        if (arg0 > 0x8055U) {
                            /* Duplicate return node #33. Try simplifying control flow for better match */
                            return 0;
                        }
                        /* Duplicate return node #73. Try simplifying control flow for better match */
                        return 0xC;
                    }
                    if (arg0 == 0x8054) {
                        /* Duplicate return node #61. Try simplifying control flow for better match */
                        return 0x21;
                    }
                    /* Duplicate return node #33. Try simplifying control flow for better match */
                    return 0;
                }
                return 0x21;
            }
            if (arg0 >= 0x804DU) {
                if (arg0 > 0x804DU) {
                    if (arg0 >= 0x8050U) {
                        if (arg0 > 0x8050U) {
                            if (arg0 >= 0x8052U) {
                                if (arg0 <= 0x8052U) {
                                    return 0x12;
                                }
                                /* Duplicate return node #33. Try simplifying control flow for better match */
                                return 0;
                            }
                            if (arg0 == 0x8051) {
                                /* Duplicate return node #45. Try simplifying control flow for better match */
                                return 0x11;
                            }
                            /* Duplicate return node #33. Try simplifying control flow for better match */
                            return 0;
                        }
                        return 0xD;
                    }
                    if (arg0 >= 0x804FU) {
                        if (arg0 <= 0x804FU) {
                            /* Duplicate return node #73. Try simplifying control flow for better match */
                            return 0xC;
                        }
                        /* Duplicate return node #33. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x804E) {
                        /* Duplicate return node #73. Try simplifying control flow for better match */
                        return 0xC;
                    }
                    /* Duplicate return node #33. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #50. Try simplifying control flow for better match */
                return 9;
            }
            if (arg0 >= 0x804AU) {
                if (arg0 > 0x804AU) {
                    if (arg0 >= 0x804CU) {
                        if (arg0 <= 0x804CU) {
                            return 9;
                        }
                        /* Duplicate return node #33. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x804B) {
                        /* Duplicate return node #67. Try simplifying control flow for better match */
                        return 2;
                    }
                    /* Duplicate return node #33. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #67. Try simplifying control flow for better match */
                return 2;
            }
            if (arg0 >= 0x8049U) {
                if (arg0 <= 0x8049U) {
                    return 2;
                }
                /* Duplicate return node #33. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 0x8048) {
                /* Duplicate return node #35. Try simplifying control flow for better match */
                return 0x10;
            }
            /* Duplicate return node #33. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #35. Try simplifying control flow for better match */
        return 0x10;
    }
    if (arg0 >= 0x803CU) {
        if (arg0 > 0x803CU) {
            if (arg0 >= 0x8042U) {
                if (arg0 > 0x8042U) {
                    if (arg0 >= 0x8045U) {
                        if (arg0 > 0x8045U) {
                            if (arg0 == 0x8046) {
                                return 0x10;
                            }
                            /* Duplicate return node #33. Try simplifying control flow for better match */
                            return 0;
                        }
                        /* Duplicate return node #58. Try simplifying control flow for better match */
                        return 0xB;
                    }
                    if (arg0 >= 0x8044U) {
                        if (arg0 > 0x8044U) {
                            /* Duplicate return node #33. Try simplifying control flow for better match */
                            return 0;
                        }
                        /* Duplicate return node #58. Try simplifying control flow for better match */
                        return 0xB;
                    }
                    if (arg0 == 0x8043) {
                        /* Duplicate return node #58. Try simplifying control flow for better match */
                        return 0xB;
                    }
                    /* Duplicate return node #33. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #55. Try simplifying control flow for better match */
                return 0xA;
            }
            if (arg0 >= 0x803FU) {
                if (arg0 > 0x803FU) {
                    if (arg0 >= 0x8041U) {
                        if (arg0 <= 0x8041U) {
                            return 0xA;
                        }
                        /* Duplicate return node #33. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x8040) {
                        /* Duplicate return node #64. Try simplifying control flow for better match */
                        return 4;
                    }
                    /* Duplicate return node #33. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #64. Try simplifying control flow for better match */
                return 4;
            }
            if (arg0 >= 0x803EU) {
                if (arg0 <= 0x803EU) {
                    /* Duplicate return node #70. Try simplifying control flow for better match */
                    return 8;
                }
                /* Duplicate return node #33. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 0x803D) {
                return 8;
            }
            /* Duplicate return node #33. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #24. Try simplifying control flow for better match */
        return 0;
    }
    temp_v0 = arg0 < 0x1907U;
    temp_a3 = arg0 < 3U;
    if (temp_v0 == 0) {
        temp_v0_2 = arg0 < 0x190AU;
        if (arg0 >= 0x1908U) {
            if (temp_v0_2 == 0) {
                if (arg0 >= 0x190BU) {
                    if (arg0 >= 0x803BU) {
                        if (arg0 <= 0x803BU) {
                            /* Duplicate return node #24. Try simplifying control flow for better match */
                            return 0;
                        }
                        /* Duplicate return node #33. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x2A10) {
                        return 0xC;
                    }
                    /* Duplicate return node #33. Try simplifying control flow for better match */
                    return 0;
                }
                /* Duplicate return node #58. Try simplifying control flow for better match */
                return 0xB;
            }
            if (arg0 >= 0x1909U) {
                if (temp_v0_2 != 0) {
                    /* Duplicate return node #64. Try simplifying control flow for better match */
                    return 4;
                }
                /* Duplicate return node #33. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 0x1908) {
                /* Duplicate return node #45. Try simplifying control flow for better match */
                return 0x11;
            }
            /* Duplicate return node #33. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #45. Try simplifying control flow for better match */
        return 0x11;
    }
    if (temp_a3 == 0) {
        if (arg0 >= 4U) {
            if (arg0 >= 0x1906U) {
                if (temp_v0 != 0) {
                    return 0;
                }
                /* Duplicate return node #33. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 4) {
                /* Duplicate return node #45. Try simplifying control flow for better match */
                return 0x11;
            }
            /* Duplicate return node #33. Try simplifying control flow for better match */
            return 0;
        }
        return 0x11;
    }
    if (arg0 >= 2U) {
        if (temp_a3 != 0) {
            return 0xB;
        }
        /* Duplicate return node #33. Try simplifying control flow for better match */
        return 0;
    }
    if (arg0 != 1) {
        return 0;
    }
    return 4;
}

/*
Decompilation failure in function CalcTexelSizes:

Unable to determine jump table for jr instruction at ody_texture.s line 1288.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 CalcPixelModePixelFormat(s32 arg0) {
    return ((arg0 ^ 1) == 0) ? 1 : 0;
}

s32 AllocateGfxMemForTexture(u32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s64 arg7, u32 **arg_sp4) {
    s64 sp70;
    s64 sp68;
    u64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s64 sp20;                                       /* compiler-managed */
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    u32 *sp8;
    u32 sp4;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_ra_3;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a4;
    s32 var_a4_2;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_f13;
    s64 temp_ra;
    s64 temp_ra_2;
    s64 temp_v0_2;
    s64 var_a3;
    s8 temp_a4;
    u32 **temp_a0;
    u32 **temp_v0;
    void *temp_s7;

    unkspC8 = arg7;
    temp_a0 = *(u32 ***)0x1010;
    sp60 = (u64) temp_a0;
    temp_v0 = __glOdysseyGetCurrentTexture(temp_a0, arg0);
    temp_s7 = temp_v0 + (arg1 * 0x44);
    sp68 = temp_s7 + 0x554;
    temp_v0_2 = __glOdysseyGetCurrentTexture(arg_sp4);
    sp70 = temp_v0_2;
    sp58 = (s64) temp_v0;
    __glOdysseyGetCurrentTexture((u32 **) temp_v0_2, (u32) sp, &sp4, &sp8, &spC, &sp10, &sp14, &sp18);
    temp_ra = arg5 * 2;
    unkspB8 = temp_ra;
    temp_ra_2 = arg2 - temp_ra;
    sp48 = temp_ra_2;
    temp_at = arg6 * 2;
    temp_f13 = (s64) ceilf((f32) temp_ra_2 * 0.0625f, 0x3D800000U);
    unksp88 = temp_at;
    temp_at_2 = arg3 - temp_at;
    temp_ra_3 = temp_f13 << 0;
    sp50 = temp_at_2;
    temp_s5 = unkspB8 + (((temp_ra_3 & 1) != 0) + temp_ra_3);
    var_a0 = temp_s5 * (unksp88 + ((s64) ceilf((f32) temp_at_2 * 0.0625f, 0x3D800000U) << 0));
    if (arg4 >= 2) {
        var_a0 = 1 << M2C_ERROR(/* Read from unset register $t9 */)(var_a0);
    }
    sp20 = 0;
    sp20.unk20 = 0;
    sp20.unk18 = 0;
    sp20.unk10 = 0;
    sp20.unk8 = 0;
    sp40 = var_a0;
    sp3C = temp_s5;
    sp38 = arg4;
    sp34 = arg3;
    sp30 = arg2;
    temp_a4 = 2 << sp18;
    unksp21 = temp_a4;
    sp20 = (arg0 != 0x8095) ? 4 : 0x14;
    if (arg5 != 0) {
        sp28 = (0x10 - arg6) & 0xF;
        sp2C = (0x10 - unkspC8) & 0xF;
        unksp24 = (0x10 - arg5) & 0xF;
    } else {
        sp2C = 0;
        sp28 = 0;
        unksp24 = 0;
    }
    if ((arg2 != 0) && (arg3 != 0)) {
        if (arg4 == 0) {
            goto block_7;
        }
        if (sub_0d9d0000(sp60, &sp20, sp58 + 0x4FC, arg1, temp_a4, sp18, &sp20) == 0) {
            if ((arg0 == 0x8063) || (arg0 == 0x8064) || (arg0 == 0x8070)) {
                memset(sp68, 0, 0x44, 0x8063, 0x8064);
            } else {
                __glSetError((u32 **)0x505);
            }
            return 0;
        }
        goto block_9;
    }
block_7:
    if ((sp58->unk4FC != -1) && (sp68->unk14 == 1)) {
        temp_a5 = sp58->unk9C;
        var_a2 = 0;
        var_a4 = 1;
        var_a3 = sp58;
        if (temp_a5 > 0) {
loop_31:
            if (arg1 != var_a2) {
                var_a4 = ((var_a3->unk568 ^ 1) == 0) ? 0 : var_a4;
            }
            var_a2 += 1;
            if (var_a2 < temp_a5) {
                if (arg1 != var_a2) {
                    var_a4 = ((var_a3->unk5AC ^ 1) == 0) ? 0 : var_a4;
                }
                var_a2 += 1;
                var_a3 += 0x88;
                if (var_a2 < temp_a5) {
                    goto loop_31;
                }
            }
            if (var_a4 != 0) {
                goto block_38;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(sp60, sp58 + 0x4FC, arg1, var_a3, var_a4, temp_a5, 1);
        } else {
block_38:
            __glOdysseyDestroyPMObjGroup((u32 **) sp60, sp58 + 0x4FC, var_a2, (void *) var_a3, var_a4, temp_a5, 1);
        }
    }
block_9:
    temp_s7->unk57C = arg5;
    temp_s7->unk578 = arg4;
    temp_s7->unk574 = arg3;
    temp_s7->unk570 = arg2;
    temp_s7->unk56C = arg_sp4;
    temp_s7->unk580 = sp0;
    temp_s7->unk584 = sp4;
    temp_s7->unk588 = sp8;
    temp_s7->unk58C = spC;
    temp_s7->unk590 = sp10;
    temp_s7->unk554 = (s32) sp70;
    temp_s7->unk594 = sp14;
    temp_s7->unk558 = sp18;
    temp_s7->unk55C = __glOdysseyGetCurrentTexture((u32 **) sp18, sp4, sp0, arg_sp4);
    temp_s7->unk560 = sp3C;
    temp_s7->unk564 = sp40;
    if (arg1 == 0) {
        var_a0_2 = 0;
        temp_s1 = sp48 >> 1;
        var_a2_2 = temp_s1;
        if (temp_s1 != 0) {
loop_11:
            temp_a2 = var_a2_2 >> 1;
            var_a0_2 += 1;
            var_a2_2 = temp_a2 >> 1;
            if (temp_a2 != 0) {
                var_a0_2 += 1;
                if (var_a2_2 != 0) {
                    goto loop_11;
                }
            }
        } else {
            var_a0_2 = 0;
        }
        temp_s2 = sp50 >> 1;
        var_a4_2 = 0;
        var_a2_3 = 0;
        var_a3_2 = temp_s2;
        if (temp_s2 != 0) {
loop_14:
            temp_a3 = var_a3_2 >> 1;
            var_a4_2 += 1;
            var_a3_2 = temp_a3 >> 1;
            if (temp_a3 != 0) {
                var_a4_2 += 1;
                if (var_a3_2 != 0) {
                    goto loop_14;
                }
            }
        } else {
            var_a4_2 = 0;
        }
        var_a3_3 = (s32) (arg4 - (unkspC8 * 2)) >> 1;
        if (var_a3_3 != 0) {
loop_17:
            temp_a3_2 = var_a3_3 >> 1;
            var_a2_3 += 1;
            var_a3_3 = temp_a3_2 >> 1;
            if (temp_a3_2 != 0) {
                var_a2_3 += 1;
                if (var_a3_3 != 0) {
                    goto loop_17;
                }
            }
        } else {
            var_a2_3 = 0;
        }
        sp58->unk98 = var_a2_3;
        sp58->unk90 = var_a0_2;
        temp_a0_2 = (var_a4_2 >= var_a0_2) ? var_a4_2 : var_a0_2;
        sp58->unk94 = var_a4_2;
        sp58->unk9C = (s32) ((var_a2_3 >= temp_a0_2) ? var_a2_3 : temp_a0_2);
    }
    return 1;
}

void LoadTextureFromHost(u32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s32 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC, u32 *arg_sp14) {
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    u64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    f64 sp98;
    s32 sp94;
    s32 sp90;
    s32 sp88;
    u32 **sp84;
    s32 sp80;
    u32 sp7C;
    u32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    u32 sp68;
    s32 sp64;
    u32 **sp60;
    s8 sp5B;
    s8 sp5A;
    s64 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s32 sp38;
    s64 sp30;
    s64 sp28;                                       /* compiler-managed */
    s64 sp20;
    s64 sp18;                                       /* compiler-managed */
    s64 sp10;                                       /* compiler-managed */
    s64 sp8;                                        /* compiler-managed */
    s64 sp0;
    f32 temp_f13;
    f32 temp_f1;
    f32 temp_f3;
    s32 temp_a5;
    s32 temp_lo;
    s32 temp_ra_2;
    s32 temp_s3;
    s32 temp_t8;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    s64 temp_a7;
    s64 temp_v0;
    s64 var_s2;
    u32 **temp_a1_3;
    u32 **temp_a3;
    u32 **temp_s6;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a5_2;
    u32 temp_a6_2;
    u32 temp_t8_2;
    u32 var_a0_2;
    u32 var_a1;
    u32 var_s1_2;
    u64 temp_a6;
    u64 var_a0;
    void *temp_ra;

    var_s1 = arg5;
    temp_s6 = *(u32 ***)0x1010;
    if ((arg_sp4 != 0) && (arg_spC != 0) && (arg_sp14 != NULL)) {
        spD8 = arg7;
        spC8 = arg2;
        spC0 = arg4;
        spB8 = arg6;
        spF0 = temp_s6 + 0x10000;
        temp_a1 = temp_s6->unk16418;
        spB0 = arg3;
        spA8 = arg1;
        if (temp_a1 != 0) {
            __glOdysseyGetCurrentTexture(temp_s6, temp_a1, arg_sp14);
        }
        temp_v0 = __glOdysseyGetCurrentTexture(temp_s6, arg0);
        temp_ra = temp_v0 + (spA8 * 0x44);
        temp_a5 = temp_ra->unk57C;
        spE8 = temp_v0;
        spF8 = (s64) (temp_ra + 0x554);
        if (temp_a5 != 0) {
            switch (arg0) {                         /* irregular */
            default:
                __glSetError((u32 **)0x502, 0xDE0);
                break;
            case 0x806F:
                spD8 = (spD8 - temp_a5) + 0x10;
                /* fallthrough */
            case 0xDE1:
                spB8 = (spB8 - temp_a5) + 0x10;
                /* fallthrough */
            case 0xDE0:
                var_s1 = (var_s1 - temp_a5) + 0x10;
                goto block_13;
            }
        } else {
block_13:
            sp38 = 0;
            sp30 = 0;
            sp28 = 0;
            sp20 = 0;
            sp18 = 0;
            sp10 = 0;
            sp8 = 0;
            sp0 = 0;
            sp38 = 0;
            unksp4 = 0;
            unkspC = (s32) spB0;
            sp8 = (s32) spC8;
            unksp2C = (s32) spC0;
            spE0 = __glSpecElementsPerGroup(spC8, spB0);
            var_a0 = spE0 * __glSpecBytesPerElement(spB0);
            if (temp_s6->unk4C8 != 0x85A3) {
                sp28 = 0;
            } else {
                sp28 = 1;
                var_a0 = (u64) (var_a0 >> 1);
            }
            spD0 = var_a0;
            temp_ra_2 = temp_s6->unk4A8;
            sp10 = (temp_ra_2 == 0) ? arg_sp4 : temp_ra_2;
            temp_t8 = temp_s6->unk4BC;
            unksp14 = (temp_t8 == 0) ? arg_spC : temp_t8;
            temp_t8_2 = temp_s6->unk4B4;
            sp18 = (temp_t8_2 >= spD0) ? temp_t8_2 : (u32) spD0;
            temp_f3 = (f32) ((u64) ((s64) temp_s6->unk4B0 << 0x20) >> 0x20);
            sp40 = temp_f3;
            sp50 = 0;
            sp50.unk38 = 0;
            sp50.unk30 = 0;
            sp50.unk28 = 0;
            sp50.unk20 = 0;
            sp50.unk18 = 0;
            temp_a6 = (u64) ((s64) temp_s6->unk4AC << 0x20) >> 0x20;
            sp50.unk10 = 0;
            sp50.unk8 = 0;
            sp5B = 1;
            sp5A = 1;
            temp_f1 = (f32) temp_a6;
            sp88 = 1;
            unksp54 = 0;
            sp48 = (f32) arg_sp4 + temp_f3;
            sp44 = temp_f1;
            sp4C = (f32) arg_spC + temp_f1;
            temp_a3 = spE8->unk4FC;
            sp68 = 0;
            sp64 = (s32) spA8;
            sp60 = temp_a3;
            sp6C = spF8->unkC;
            sp70 = spF8->unk1C;
            sp74 = spF8->unk20;
            sp80 = spF8->unk8;
            sp78 = spF8->unk4;
            temp_a1_2 = spF8->unk4;
            sp7C = temp_a1_2;
            sp84 = __glOdysseyGetCurrentTexture(spF8->unk0, temp_a1_2, (u32 *) spA8, temp_a3, (s32 *)1, (s32 *) &sp50, (s32 *) temp_a6, (s32 *) arg_spC);
            sp90 = var_s1;
            sp94 = (s32) spB8;
            temp_a5_2 = temp_s6->unk7C5C;
            temp_a0 = spF0->unk1D94;
            temp_s6->unk7C5C = temp_a0;
            temp_a1_3 = spF8->unk0;
            if ((temp_a1_3 != NULL) && (temp_a1_3 != (u32 **)8)) {
                var_a2 = ~0x100000;
                var_a1 = temp_s6->unk9DB != 0;
                var_a0_2 = (((temp_s6->unk9D8 != 0) << 0x14) & 0x100000) | (temp_a0 & var_a2);
            } else {
                var_a1 = temp_s6->unk9DB != 0;
                var_a2 = ~0x100000;
                var_a0_2 = ((var_a1 << 0x14) & 0x100000) | (temp_a0 & var_a2);
            }
            temp_s6->unk7C5C = var_a0_2;
            spA0 = (s64) temp_a5_2;
            temp_a7 = ((((temp_s6->unk9DA != 0) << 0x16) & 0x400000) | (((((temp_s6->unk9D9 != 0) << 0x15) & 0x200000) | (var_a0_2 & ~0x200000)) & ~0x400000)) & ~0x800000;
            temp_a6_2 = ((var_a1 << 0x17) & 0x800000) | temp_a7;
            temp_s6->unk7C5C = temp_a6_2;
            if (arg0 != 0x806F) {
                __glOdysseyImageXfer(&sp50, sp, &sp40, 0, &sp90, temp_a5_2, temp_a6_2, temp_a7);
            } else {
                temp_f13 = (f32) ((u64) ((s64) sp18 << 0x20) >> 0x20);
                temp_s3 = (spF8->unk10 * (2 << spF8->unk4)) << 8;
                sp98 = (bitwise f64) temp_f13;
                temp_lo = ((s64) (ceilf((bitwise f32) var_a0_2, var_a1, var_a2, (f32) ((u64) ((sp10 * spD0) << 0x20) >> 0x20) / temp_f13, temp_f13) * temp_f13) << 0) * unksp14;
                var_s0 = spC0 + (temp_s6->unk4B8 * temp_lo);
                if (arg_sp14 != NULL) {
                    var_s2 = spD8;
                    var_s1_2 = spD8 * temp_s3;
                    do {
                        unksp2C = var_s0;
                        sp68 = var_s1_2 >> 4;
                        __glOdysseyImageXfer(&sp50, sp, &sp40, 0, &sp90);
                        var_s2 += 1;
                        var_s1_2 += temp_s3;
                        var_s0 += temp_lo;
                    } while (var_s2 != (spD8 + arg_sp14));
                }
            }
            temp_s6->unk7C5C = (u32) spA0;
            spF0->unk6960 = (s32) (spF0->unk6960 | 0x80);
            *(s32 *)0x1018 = 2;
            spF8->unk14 = 1;
            spE8->unk500 = 1;
        }
    }
}

void LoadTextureFromReadable(u32 arg0, s64 arg1, s32 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp48;
    u32 **sp44;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    u32 sp28;
    s32 sp24;
    u32 *sp20;
    s8 sp1B;
    s8 sp1A;
    s64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_s2;
    s32 var_a1;
    s32 var_s2;
    s64 temp_a5;
    s64 temp_a7;
    s64 temp_v0;
    s64 var_a7;
    u32 **temp_s0;
    u32 **temp_v0_2;
    u32 *temp_a2_2;
    u32 temp_a0;
    u32 temp_a1;
    u32 temp_a5_2;
    u32 var_a0;
    u32 var_a6;
    void *temp_t2;

    var_s2 = arg2;
    temp_s0 = *(u32 ***)0x1010;
    if ((arg7 != 0) && (arg_sp4 != 0)) {
        sp88 = arg4;
        sp80 = arg6;
        sp78 = arg7;
        sp70 = arg5;
        sp98 = temp_s0 + 0x10000;
        temp_a1 = temp_s0->unk16418;
        sp68 = arg3;
        sp60 = arg1;
        if (temp_a1 != 0) {
            __glOdysseyGetCurrentTexture(temp_s0, temp_a1);
        }
        temp_v0 = __glOdysseyGetCurrentTexture(temp_s0, arg0);
        temp_t2 = temp_v0 + (sp60 * 0x44);
        temp_a2 = temp_t2->unk57C;
        sp90 = temp_v0;
        spA0 = (s64) (temp_t2 + 0x554);
        if (temp_a2 != 0) {
            temp_s2 = var_s2 - temp_a2;
            if (arg0 != 0x806F) {
                if (arg0 != 0xDE1) {
                    var_s2 = temp_s2 + 0x10;
                    if (arg0 != 0xDE0) {
                        __glSetError((u32 **)0x502);
                    } else {
                        goto block_11;
                    }
                } else {
                    goto block_10;
                }
            } else {
                sp88 = (sp88 - temp_a2) + 0x10;
block_10:
                sp68 = (sp68 - temp_a2) + 0x10;
                var_s2 = temp_s2 + 0x10;
                goto block_11;
            }
        } else {
block_11:
            sp10 = 0;
            sp10.unk38 = 0;
            sp10.unk30 = 0;
            sp10.unk28 = 0;
            sp10.unk20 = 0;
            sp10.unk18 = 0;
            sp10.unk10 = 0;
            sp10.unk8 = 0;
            sp1B = 1;
            temp_a5 = arg_sp4 + sp80;
            sp1A = 1;
            temp_a7 = sp78 + sp70;
            sp48 = 1;
            unksp14 = 0;
            sp4 = (f32) sp80;
            sp0 = (f32) sp70;
            spC = (f32) temp_a5;
            sp8 = (f32) temp_a7;
            temp_a2_2 = sp90->unk4FC;
            sp28 = 0;
            sp24 = (s32) sp60;
            sp20 = temp_a2_2;
            sp2C = temp_t2->unk560;
            sp30 = temp_t2->unk570;
            sp34 = temp_t2->unk574;
            sp40 = temp_t2->unk55C;
            sp38 = temp_t2->unk558;
            sp3C = temp_t2->unk558;
            temp_v0_2 = __glOdysseyGetCurrentTexture(temp_t2->unk554, (u32) sp60, temp_a2_2, (u32 **)1, (s32 *) &sp10, (s32 *) temp_a5, (s32 *) sp80, (s32 *) temp_a7);
            sp50 = var_s2;
            sp44 = temp_v0_2;
            sp54 = (s32) sp68;
            temp_a0 = sp98->unk1D94;
            sp58 = (s64) temp_s0->unk7C5C;
            temp_s0->unk7C5C = temp_a0;
            temp_a1_2 = spA0->unk0;
            if ((temp_a1_2 != 0) && (temp_a1_2 != 8)) {
                var_a1 = temp_s0->unk9DB != 0;
                var_a0 = (((temp_s0->unk9D8 != 0) << 0x14) & 0x100000) | (temp_a0 & ~0x100000);
            } else {
                var_a1 = temp_s0->unk9DB != 0;
                var_a0 = ((var_a1 << 0x14) & 0x100000) | (temp_a0 & ~0x100000);
            }
            temp_s0->unk7C5C = var_a0;
            var_a7 = ~0x800000;
            temp_a5_2 = ((var_a1 << 0x17) & 0x800000) | (((((temp_s0->unk9DA != 0) << 0x16) & 0x400000) | (((((temp_s0->unk9D9 != 0) << 0x15) & 0x200000) | (var_a0 & ~0x200000)) & ~0x400000)) & var_a7);
            var_a6 = 0x806F;
            temp_s0->unk7C5C = temp_a5_2;
            if (arg0 == 0x806F) {
                var_a7 = sp88;
                var_a6 = (u32) (var_a7 * ((spA0->unk10 * (2 << spA0->unk4)) << 8)) >> 4;
                sp28 = var_a6;
            }
            __glOdysseyImageXfer(&sp10, temp_s0 + 0x11DD4, sp, 0, &sp50, temp_a5_2, var_a6, var_a7);
            temp_s0->unk7C5C = (u32) sp58;
            sp98->unk6960 = (s32) (sp98->unk6960 | 0x80);
            *(s32 *)0x1018 = 2;
            spA0->unk14 = 1;
            sp90->unk500 = 1;
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4], gap at: 0x40. */
void DownsampleTextureThruHW(void *arg0, s64 arg1, s64 arg2) {
    s64 spE0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 sp28;
    s64 sp20;
    f64 sp18;
    f64 sp10;
    f64 sp8;
    f64 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7;
    s32 temp_s1_2;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t2_3;
    s32 temp_t8;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_t8;
    s64 temp_a1;
    s64 temp_a4_2;
    s64 temp_s4;
    s64 temp_s5;
    u32 temp_a1_2;
    u32 temp_a2_3;
    u32 temp_a3_2;
    u32 temp_at;
    void *temp_s0;
    void *temp_s1;
    void *temp_s7;

    unksp58 = arg1;
    spB8 = arg2;
    temp_s0 = *(void **)0x1010;
    unksp38 = (s64) temp_s0->unk7FE0;
    unksp50 = (s64) temp_s0->unk7FB4;
    temp_s1 = arg0 + (arg1 * 0x44);
    unksp48 = (s64) temp_s0->unk7FB0;
    unksp40 = (s64) temp_s0->unk7FB8;
    if (temp_s1->unk558 != 2) {
        unksp60 = 0;
    } else {
        unksp60 = ((2 ^ temp_s1->unk55C) == 0) ? 2 : 0;
    }
    temp_a0 = temp_s0->unk7C00;
    if (arg0->unkC != 0xDE0) {
        temp_s0->unk7C00 = (s32) (temp_a0 | 0x10);
    } else {
        temp_s0->unk7C00 = (s32) (temp_a0 | 8);
    }
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 4);
    *(s32 *)0x1018 = 2;
    temp_a4 = temp_s1->unk554;
    if (temp_a4 != 0) {
        if (temp_a4 != 1) {
            spC0 = (s64) (((temp_a4 ^ 8) == 0) ? 0xA : temp_a4);
        } else {
            spC0 = 5;
        }
    } else {
        spC0 = 4;
    }
    temp_s7 = arg0 + (spB8 * 0x44);
    temp_a2 = temp_s7->unk57C;
    temp_a3 = 0xDE0 ^ arg0->unkC;
    temp_a4_2 = (temp_a2 == 0) ? 0 : (0x10 - temp_a2);
    unksp68 = (s64) temp_a2;
    temp_s4 = temp_a2 * 2;
    temp_a2_2 = (temp_a3 == 0) ? 0 : temp_a2;
    unksp70 = temp_a4_2;
    spC8 = (s64) temp_a2_2;
    temp_a1 = (temp_a2_2 == 0) ? 0 : (0x10 - temp_a2_2);
    unksp78 = temp_a1;
    temp_s0->unk7CC4 = (s32) ((temp_s0->unk7CC4 & ~0x7C00) | ((__glOdysseyImageLogBase2(temp_s1->unk570 - temp_s4, temp_a1, temp_a2_2, temp_a3, temp_a4_2, 0xDE0) << 0xA) & 0x7C00));
    temp_s5 = spC8 * 2;
    temp_s0->unk7CC4 = (s32) (((temp_s0->unk7CC4 & ~0x3E0) | ((__glOdysseyImageLogBase2(temp_s1->unk574 - temp_s5) << 5) & 0x3E0)) & ~0x1F);
    sp20 = temp_s4;
    temp_a5 = temp_s0->unk7CD4;
    temp_t0 = (0xFFFE0000 & temp_s0->unk7CC8) | (0x1FFFF & (temp_s1->unk570 - temp_s4));
    temp_s0->unk7CC8 = temp_t0;
    if (unksp68 != 0) {
        var_a5 = temp_a5 | 0x3000;
        temp_s0->unk7CD4 = var_a5;
        temp_s0->unk7CC8 = (s32) (temp_t0 | 0xFC0000);
    } else {
        temp_s0->unk7CC8 = (s32) (0xFF03FFFF & temp_t0);
        var_a5 = temp_a5 & ~0x3000;
        temp_s0->unk7CD4 = var_a5;
    }
    temp_a4_3 = (0xFFFE0000 & temp_s0->unk7CCC) | (0x1FFFF & (temp_s1->unk574 - temp_s5));
    temp_s0->unk7CCC = temp_a4_3;
    if (spC8 != 0) {
        var_a5_2 = var_a5 | 0xC00;
        temp_s0->unk7CD4 = var_a5_2;
        temp_s0->unk7CCC = (s32) (temp_a4_3 | 0xFC0000);
    } else {
        temp_s0->unk7CCC = (s32) (0xFF03FFFF & temp_a4_3);
        var_a5_2 = var_a5 & ~0xC00;
        temp_s0->unk7CD4 = var_a5_2;
    }
    temp_t8 = temp_s0->unk7CDC;
    temp_s0->unk7CD0 = (s32) (0xFF03FFFF & (0xFFFE0000 & temp_s0->unk7CD0));
    if (unksp68 != 0) {
        var_t8 = temp_t8 | 0x01000000;
        goto block_13;
    }
    var_t8 = temp_t8 | 0x01000000;
    if (spC8 == 0) {
        temp_s0->unk7CD4 = (s32) (var_a5_2 | 0x10000000);
        temp_s0->unk7CDC = (s32) (temp_s0->unk7CDC & ~0x01000000);
    } else {
block_13:
        temp_s0->unk7CDC = var_t8;
        temp_s0->unk7CD4 = (s32) (var_a5_2 & ~0x10000000);
    }
    sp28 = temp_s5;
    temp_s0->unk7CD4 = (s32) ((temp_s0->unk7CD4 & ~0x03800000) | ((__glOdysseyGetCurrentTexture((u32 **) spC0, temp_s1->unk56C) << 0x17) & 0x03800000));
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x200);
    *(void *)0x1018 = 2;
    temp_s0->unk7FB0 = (u32) ((0xE0000000 & temp_s0->unk7FB0) | (0x1FFFFFFF & (arg0 + (unksp58 * 4))->unk514));
    temp_at = (((((temp_s0->unk7FB4 & 0x3FFFFFFF) | ((temp_s1->unk558 << 0x1E) & 0xC0000000)) & ~0x1C000000) | ((unksp60 << 0x1A) & 0x1C000000)) & ~0x03F00000) | ((spC0 << 0x14) & 0x03F00000);
    temp_s0->unk7FB4 = temp_at;
    temp_s0->unk7FB8 = (u32) (-0x1000 & temp_s0->unk7FB8);
    temp_s0->unk7FB4 = (u32) ((temp_s1->unk560 & 0xFFF) | (-0x1000 & temp_at));
    if (temp_s0->unk9830 != 0) {
        temp_s0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10EBC;
    temp_a3_2 = temp_s0->unk7FB0;
    HQ2_READ_FIFO = temp_a3_2;
    temp_a2_3 = temp_s0->unk7FB4;
    HQ2_READ_FIFO = temp_a2_3;
    temp_a1_2 = temp_s0->unk7FB8;
    HQ2_READ_FIFO = temp_a1_2;
    temp_s0->unk9830 = 0;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x1000);
    *(void *)0x1018 = 2;
    temp_s0->unk7FE0 = (s32) ((temp_s0->unk7FE0 & ~0x3F) | 0x3C);
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x800);
    *(void *)0x1018 = 2;
    temp_s0->unk96A0 = (s32) ((temp_s7->unk560 & 0xFFF) | (-0x1000 & temp_s0->unk96A0));
    temp_t2 = (temp_s0->unk96A4 & ~0x70) | ((__glOdysseyImageCalcFieldFormat(__glOdysseyGetCurrentTexture(temp_s7->unk554, temp_a1_2, (u32 *) temp_a2_3, (u32 **) temp_a3_2, (s32 *)0x10EBC, (s32 *)0xFA, (s32 *)-0x1000, (s32 *)0x03800000)) * 0x10) & 0x70);
    temp_s0->unk96A4 = temp_t2;
    temp_t2_2 = (temp_t2 & ~0x380) | ((temp_s7->unk55C << 7) & 0x380);
    temp_s0->unk96A4 = temp_t2_2;
    temp_t2_3 = (temp_t2_2 & ~0x1C00) | ((temp_s7->unk558 << 0xA) & 0x1C00);
    temp_s0->unk96A4 = temp_t2_3;
    temp_s0->unk96A4 = (s32) ((((temp_t2_3 & ~0xE000) | ((temp_s7->unk558 << 0xD) & 0xE000)) & ~0x80000) | 0x08000000);
    temp_a5_2 = temp_s0->unk16960 | 0x200000;
    temp_s0->unk16960 = temp_a5_2;
    temp_s0->unk969C = (s32) ((0xE0000000 & temp_s0->unk969C) | (0x1FFFFFFF & (arg0 + (spB8 * 4))->unk514));
    *(void *)0x1018 = 2;
    if (unksp68 != 0) {
        sp8 = (f64) (f32) (second half of f64);
        sp10 = (bitwise f64) (f32) (1.0 + (second half of f64));
    } else {
        sp8 = GLUE_F64(M2C_ERROR(/* Read from unset register $f19 */), 0U);
        sp10 = (bitwise f64) (f32) (1.0 - ((second half of f64) / (f64) temp_s7->unk570));
    }
    temp_a0_2 = temp_s7->unk574;
    if (spC8 != 0) {
        sp18 = (bitwise f64) (f32) (-1.0 / (second half of f64));
        sp0 = (bitwise f64) (f32) (1.0 + ((second half of f64) / (f64) ((u64) ((temp_a0_2 - sp28) << 0x20) >> 0x20)));
    } else {
        sp18 = second half of f64;
        sp0 = (bitwise f64) (f32) (1.0 - ((second half of f64) / (f64) temp_a0_2));
    }
    temp_a7 = temp_s0->unk7C24;
    temp_s0->unk7C24 = 0;
    temp_s1_2 = temp_s0->unk7C20;
    temp_a2_4 = 0xFFF000 & (unksp70 << 0xC);
    temp_s0->unk7C20 = temp_a2_4;
    temp_a3_3 = (temp_s7->unk570 + unksp70) & 0xFFF;
    temp_s0->unk7C20 = (s32) (temp_a2_4 | temp_a3_3);
    temp_a0_3 = 0xFFF000 & (unksp78 << 0xC);
    temp_s0->unk7C24 = temp_a0_3;
    temp_a1_3 = (temp_s7->unk574 + unksp78) & 0xFFF;
    temp_s0->unk7C24 = (s32) (temp_a0_3 | temp_a1_3);
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x10);
    *(void *)0x1018 = 2;
    if (temp_s0->unk16960 != 0) {
        spE0 = (s64) temp_a7;
        __glOdysseyValidateHardware(temp_s0, temp_a1_3, unksp78, temp_a3_3, unksp70, temp_a5_2, 0x200000, temp_a7);
    }
    HQ2_READ_FIFO = 0x14400;
    HQ2_READ_FIFO = 7;
    HQ2_READ_FIFO = 0x8F80B968;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = (bitwise u32) (f32) ((u64) (unksp70 << 0x20) >> 0x20);
    HQ2_READ_FIFO = (bitwise u32) (f32) ((u64) (unksp78 << 0x20) >> 0x20);
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = (bitwise u32) (f32) ((u64) ((temp_s7->unk570 + unksp70) << 0x20) >> 0x20);
    HQ2_READ_FIFO = (bitwise u32) (f32) ((u64) ((temp_s7->unk574 + unksp78) << 0x20) >> 0x20);
    HQ2_READ_FIFO = 0;
    HQ2_READ_FIFO = (bitwise u32) sp8;
    HQ2_READ_FIFO = second half of f64;
    HQ2_READ_FIFO = (u32) sp10;
    HQ2_READ_FIFO = second half of f64;
    HQ2_READ_FIFO = 0x14001;
    if (temp_s0->unk96F4 != 0) {
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        temp_s0->unk7FB8 = (u32) unksp40;
        temp_s0->unk7FB4 = (u32) unksp50;
        temp_s0->unk7FB0 = (u32) unksp48;
        temp_s0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10EBC;
        HQ2_READ_FIFO = temp_s0->unk7FB0;
        HQ2_READ_FIFO = temp_s0->unk7FB4;
        HQ2_READ_FIFO = temp_s0->unk7FB8;
        temp_s0->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x1000);
        *(void *)0x1018 = 2;
        temp_s0->unk7FE0 = (s32) unksp38;
        temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x800);
        *(void *)0x1018 = 2;
        temp_s0->unk7C20 = temp_s1_2;
        temp_s0->unk7C24 = temp_a7;
        temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x10);
        *(void *)0x1018 = 2;
        return;
    }
    temp_s0->unk7FB8 = (u32) unksp40;
    temp_s0->unk7FB4 = (u32) unksp50;
    temp_s0->unk7FB0 = (u32) unksp48;
    temp_s0->unk9830 = 0;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10EBC;
    HQ2_READ_FIFO = temp_s0->unk7FB0;
    HQ2_READ_FIFO = temp_s0->unk7FB4;
    HQ2_READ_FIFO = temp_s0->unk7FB8;
    temp_s0->unk9830 = 0;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x1000);
    *(void *)0x1018 = 2;
    temp_s0->unk7FE0 = (s32) unksp38;
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x800);
    *(void *)0x1018 = 2;
    temp_s0->unk7C20 = temp_s1_2;
    temp_s0->unk7C24 = temp_a7;
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x10);
    *(void *)0x1018 = 2;
}

s32 DoMipmapHackHW(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_v0;
    s32 var_s1;
    s32 var_s2;
    s32 var_v0;
    s64 temp_a0;
    s64 temp_t8;
    s64 var_s0;
    s64 var_s0_2;
    s64 var_s1_2;
    u32 temp_s6_2;
    void *temp_s6;
    void *var_s2_2;

    sp48 = arg1;
    temp_s5 = arg1->unkC;
    __glOdysseyImageSaveUserBuzzRasterState();
    sp40 = arg0;
    __glOdysseyImageLoadBuzzRasterState(0);
    temp_t8 = arg2 + 1;
    sp38 = temp_t8;
    sp28 = arg2;
    var_s0 = temp_t8;
    temp_s6 = sp48 + (arg2 * 0x44);
    temp_s7 = temp_s6->unk57C;
    sp20 = arg3;
    temp_a0 = temp_s7 * 2;
    temp_v0 = (temp_s5 == 0xDE0) ? 0 : temp_s7;
    sp30 = arg3 >= temp_t8;
    var_s1 = temp_s6->unk570 - temp_a0;
    temp_s8 = temp_v0 * 2;
    temp_s6_2 = temp_s6->unk56C;
    var_s2 = temp_s6->unk574 - temp_s8;
    if ((arg3 < temp_t8) == 0) {
        sp18 = temp_a0;
        sp10 = (s64) temp_v0;
loop_2:
        temp_s2 = var_s2 >> 1;
        temp_s1 = var_s1 >> 1;
        var_s2 = (temp_s2 == 0) ? 1 : temp_s2;
        var_s1 = (temp_s1 == 0) ? 1 : temp_s1;
        if (__glOdysseyGetCurrentTexture((u32 **) temp_s5, (u32) var_s0, sp18 + var_s1, temp_s8 + var_s2, (s32 *)1, (s32 *) temp_s7, (s32 *) sp10, NULL, temp_s6_2) != NULL) {
            var_s0 += 1;
            if ((sp20 + 1) == var_s0) {
                goto block_4;
            }
            goto loop_2;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(1);
        return 0;
    }
block_4:
    if (__glOdysseyOpenPMObjReference(sp40, sp48->unk4FC, sp28, sp20, sp48 + 0x514, 1) != 0) {
        var_s0_2 = sp38;
        if (sp30 != 0) {
            var_s1_2 = sp28;
            var_s2_2 = (sp38 * 0x44) + sp48;
            do {
                __glOdysseyGetCurrentTexture((u32 **) sp48, (u32) var_s1_2, (u32 *) var_s0_2);
                var_s0_2 += 1;
                var_s2_2 += 0x44;
                var_s1_2 += 1;
                var_s2_2->unk524 = 2;
            } while ((sp20 + 1) != var_s0_2);
        }
        __glOdysseyClosePMObjReference(sp40, sp48->unk4FC, sp28, sp20);
        __glOdysseyImageLoadBuzzRasterState(1);
        var_v0 = 1;
    } else {
        __glOdysseyImageLoadBuzzRasterState(1);
        var_v0 = 0;
    }
    return var_v0;
}

/*
Decompilation failure in function DoMipmapHack:

Cannot find branch target __glOdysseyGetCurrentTexture
*/

s32 __glOdysseyTextureActivate(u32 **arg0, void *arg1) {
    s64 sp10;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a6;
    s32 var_t0;
    s64 temp_s2;
    u32 temp_t8;
    u32 temp_t9;
    void *temp_a7_2;
    void *temp_s1_4;
    void *temp_t0;
    void *temp_t0_2;
    void *var_a3_3;
    void *var_a4;
    void *var_a7;

    temp_a7 = arg1->unk4FC;
    if (temp_a7 != -1) {
        temp_v1 = arg1->unk5C;
        temp_a3 = arg1->unk9C;
        temp_s1 = arg1->unk60;
        temp_s1_2 = ((0x806F ^ arg1->unkC) == 0) ? temp_v1 : ((temp_s1 >= temp_a3) ? temp_a3 : temp_s1);
        if (__glOdysseyOpenPMObjReference((s64) temp_a7, temp_v1, (s64) temp_s1_2, (s64) (arg1 + 0x514), 1, temp_a7) != 0) {
            arg0->unk16418 = arg1;
            arg0->unk16424 = temp_s1_2;
            arg0->unk16420 = (s32) arg1->unk5C;
            var_a5 = arg1->unk5C;
            sp10 = arg0 + 0x10000;
            if (temp_s1_2 >= var_a5) {
                var_a7 = (var_a5 * 4) + arg1;
                var_a4 = (var_a5 * 0x44) + arg1;
loop_10:
                temp_t0 = arg0 + ((var_a5 - arg1->unk5C) * 0xC);
                temp_t0->unk7CE0 = (s32) ((0xE0000000 & temp_t0->unk7CE0) | (0x1FFFFFFF & var_a7->unk514));
                temp_a6 = (0xFC0FFFFF & temp_t0->unk7CE4) | (0x03F00000 & (arg1->unk554 << 0x14));
                temp_t0->unk7CE4 = temp_a6;
                temp_a6_2 = (0x3FFFFFFF & temp_a6) | (0xC0000000 & (arg1->unk558 << 0x1E));
                temp_t0->unk7CE4 = temp_a6_2;
                temp_a3_2 = var_a4->unk56C;
                temp_t0_2 = temp_t0 + 0x7CE0;
                temp_s1_3 = -0x1000 & temp_a6_2;
                if ((temp_a3_2 == 0x8466) || (temp_a3_2 == 0x8467)) {
                    temp_t9 = var_a4->unk570 + 1;
                    temp_a3_3 = (s32) ((temp_t9 >> 0x1F) + temp_t9) >> 1;
                    temp_at = temp_a3_3 + 0xF;
                    var_a3 = (temp_at >= 0) ? temp_at : (temp_a3_3 + 0x1E);
                } else {
                    var_a3 = (var_a4->unk570 - (var_a4->unk57C * 2)) + 0xF;
                }
                temp_a3_4 = var_a3 >> 4;
                temp_v1_2 = (var_a4->unk57C == 0) ? temp_a3_4 : (temp_a3_4 + 2);
                temp_a2 = temp_v1_2 >> 0x1F;
                var_a7 += 4;
                temp_a3_5 = ((((((temp_v1_2 ^ temp_a2) - temp_a2) & 1) ^ temp_a2) - temp_a2) == 0) ? temp_v1_2 : (temp_v1_2 + 1);
                var_a5 += 1;
                var_a6 = 0;
                if (temp_a3_5 != 0x1000) {
                    temp_t0_2->unk4 = (s32) (temp_s1_3 | (temp_a3_5 & 0xFFF));
                } else {
                    temp_t0_2->unk4 = (s32) (temp_s1_3 | 1);
                }
                if (arg1->unkC == 0x806F) {
                    temp_a2_2 = var_a4->unk57C;
                    temp_a6_3 = (s32) ((var_a4->unk574 - (temp_a2_2 * 2)) + 0xF) >> 4;
                    temp_lo = temp_a3_5 * ((temp_a2_2 == 0) ? temp_a6_3 : (temp_a6_3 + 2));
                    var_a3_2 = 0;
                    if (temp_lo >= 2) {
                        var_a3_2 = 0;
loop_16:
                        var_a3_2 += 1;
                        if ((1 << var_a3_2) < temp_lo) {
                            var_a3_2 += 1;
                            if ((1 << var_a3_2) < temp_lo) {
                                goto loop_16;
                            }
                        }
                    }
                    var_a6 = var_a3_2;
                }
                var_a4 += 0x44;
                temp_t0_2->unk8 = (s32) ((var_a6 & 0xFFF) | (-0x1000 & temp_t0_2->unk8));
                if (var_a4 != (arg1 + ((temp_s1_2 + 1) * 0x44))) {
                    goto loop_10;
                }
            }
            temp_t8 = (0x03800000 & (__glOdysseyGetCurrentTexture((u32 **) arg1->unk554, arg1->unk56C) << 0x17)) | (0xFC7FFFFF & arg1->unkB4);
            temp_a0 = (temp_t8 >> 1) & 0xF;
            arg1->unkB4 = temp_t8;
            if ((temp_a0 != 2) && (temp_a0 != 3) && (temp_a0 != 4)) {
                /* Duplicate return node #22. Try simplifying control flow for better match */
                arg0->unk7FE0 = (s32) (arg0->unk7FE0 & ~0x3F);
                sp10->unk6960 = (s32) (sp10->unk6960 | 0x1C00);
                *(s32 *)0x1018 = 2;
                return 1;
            }
            temp_s3 = arg1->unk40;
            temp_s1_4 = sp10->unk6410;
            temp_s3_2 = -temp_s3;
            temp_s2 = temp_s3_2 - 1;
            if (__glOdysseyOpenPMObjReference((s64) arg0, temp_s1_4->unk4FC, 0, temp_s2, temp_s1_4 + 0x514, 1) != 0) {
                sp10->unk642C = (s32) temp_s2;
                sp10->unk6428 = 0;
                sp10->unk641C = temp_s1_4;
                if (temp_s3_2 > 0) {
                    var_a4_2 = 0;
                    var_a3_3 = arg0 + (temp_s3 * -0xFFFFFFF4);
loop_29:
                    temp_a5 = temp_s1_4->unk9C;
                    temp_a5_2 = (temp_a5 >= var_a4_2) ? var_a4_2 : temp_a5;
                    temp_a7_2 = temp_s1_4 + (temp_a5_2 * 0x44);
                    temp_t9_2 = (s32) (temp_a7_2->unk570 + 0xF) >> 4;
                    temp_s0 = temp_t9_2 >> 0x1F;
                    temp_s0_2 = ((((((temp_t9_2 ^ temp_s0) - temp_s0) & 1) ^ temp_s0) - temp_s0) == 0) ? temp_t9_2 : (temp_t9_2 + 1);
                    temp_a6_4 = -0x1000 & var_a3_3->unk7FE4;
                    if (temp_s0_2 == 0x1000) {
                        var_t0 = temp_a6_4 | 1;
                    } else {
                        var_t0 = temp_a6_4 | (temp_s0_2 & 0xFFF);
                    }
                    var_a3_3->unk7FE4 = var_t0;
                    var_a4_2 += 1;
                    var_a3_3->unk7FE0 = (s32) ((0xE0000000 & var_a3_3->unk7FE0) | (0x1FFFFFFF & (temp_s1_4 + (temp_a5_2 * 4))->unk514));
                    temp_t9_3 = (0xFC0FFFFF & var_t0) | (0x03F00000 & (temp_a7_2->unk554 << 0x14));
                    var_a3_3->unk7FE4 = temp_t9_3;
                    var_a3_3 += 0xC;
                    var_a3_3->unk7FD8 = (s32) ((0x3FFFFFFF & temp_t9_3) | (0xC0000000 & (temp_a7_2->unk558 << 0x1E)));
                    if (temp_s3_2 != var_a4_2) {
                        goto loop_29;
                    }
                }
                temp_s1_4->unkB4 = (s32) ((0x03800000 & (__glOdysseyGetCurrentTexture(temp_s1_4->unk554, temp_s1_4->unk56C) << 0x17)) | (0xFC7FFFFF & temp_s1_4->unkB4));
                arg0->unk7FE0 = (s32) (arg0->unk7FE0 & ~0x3F);
                sp10->unk6960 = (s32) (sp10->unk6960 | 0x1C00);
                *(s32 *)0x1018 = 2;
                return 1;
            }
            __glSetError((u32 **)0x505);
            __glOdysseyGetCurrentTexture(arg0, (u32) arg1);
            return 0;
        }
        sub_0d9d0000(0x505U);
        return 0;
    }
    return 0;
}

void __glOdysseyTextureDeactivate(s64 arg0, void *arg1) {
    s64 sp0;
    void *temp_s1;

    sp0 = arg0;
    __glOdysseyClosePMObjReference((s64) arg1->unk4FC, arg0->unk16420, (s64) arg0->unk16424);
    arg0->unk16418 = 0;
    arg1->unk550 = 0xDEADBEEF;
    arg1->unk54C = 0xDEADBEEF;
    arg1->unk548 = 0xDEADBEEF;
    arg1->unk544 = 0xDEADBEEF;
    arg1->unk540 = 0xDEADBEEF;
    arg1->unk53C = 0xDEADBEEF;
    arg1->unk538 = 0xDEADBEEF;
    arg1->unk534 = 0xDEADBEEF;
    arg1->unk530 = 0xDEADBEEF;
    arg1->unk52C = 0xDEADBEEF;
    arg1->unk528 = 0xDEADBEEF;
    arg1->unk524 = 0xDEADBEEF;
    arg1->unk520 = 0xDEADBEEF;
    arg1->unk51C = 0xDEADBEEF;
    arg1->unk518 = 0xDEADBEEF;
    arg1->unk514 = 0xDEADBEEF;
    temp_s1 = arg0->unk1641C;
    if (temp_s1 != NULL) {
        __glOdysseyClosePMObjReference(arg0, temp_s1->unk4FC, (s64) arg0->unk16428, (s64) arg0->unk1642C);
        temp_s1->unk550 = 0xBAADCADE;
        temp_s1->unk54C = 0xBAADCADE;
        temp_s1->unk548 = 0xBAADCADE;
        temp_s1->unk544 = 0xBAADCADE;
        temp_s1->unk540 = 0xBAADCADE;
        temp_s1->unk53C = 0xBAADCADE;
        temp_s1->unk538 = 0xBAADCADE;
        temp_s1->unk534 = 0xBAADCADE;
        temp_s1->unk530 = 0xBAADCADE;
        temp_s1->unk52C = 0xBAADCADE;
        temp_s1->unk528 = 0xBAADCADE;
        temp_s1->unk524 = 0xBAADCADE;
        temp_s1->unk520 = 0xBAADCADE;
        temp_s1->unk51C = 0xBAADCADE;
        temp_s1->unk518 = 0xBAADCADE;
        temp_s1->unk514 = 0xBAADCADE;
        arg0->unk1641C = NULL;
    }
}

void SetTexOffsetValues(void *arg0) {
    s32 temp_a2;

    temp_a2 = arg0->unkB4;
    if (arg0->unk57C != 0) {
        arg0->unkD8 = 0;
        arg0->unkD4 = 0;
        arg0->unkD0 = 0;
        arg0->unkB4 = (s32) (temp_a2 & ~0x10000000);
        arg0->unkBC = (s32) (arg0->unkBC | 0x01000000);
        return;
    }
    arg0->unkD8 = 0;
    arg0->unkD4 = 0;
    arg0->unkD0 = 0;
    arg0->unkB4 = (s32) (temp_a2 | 0x10000000);
    arg0->unkBC = (s32) (arg0->unkBC & ~0x01000000);
}

void __glOdysseyValidateTexture(s64 arg0, u32 **arg1) {
    s64 sp8;
    s32 temp_a1;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_lo;
    s32 temp_ra;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t1_4;
    s32 temp_t2;
    s32 temp_t8;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    u32 **var_a3;
    void *temp_a1_2;

    sp8 = arg0;
    __glOdysseyGetCurrentTexture(arg1);
    temp_a1 = arg1->unk18;
    if ((temp_a1 != 0x8097) && (temp_a1 != 0x8098) && (temp_a1 != 0x8099)) {
        arg1->unkA0 = (s32) (arg1->unkA0 & ~0x100000);
    } else {
        if (arg1->unkC != 0xDE1) {
            var_a1 = arg1->unkA0 & ~0x100000;
            arg1->unkA0 = var_a1;
            arg1->unkB4 = (s32) ((arg1->unkB4 & ~0x1E) | 2);
        } else {
            temp_a1_2 = sp8->unk16410;
            if ((arg1->unk554 == temp_a1_2->unk554) && (temp_a4 = temp_a1_2->unk574, temp_a3 = temp_a1_2->unk570, temp_lo = temp_a3 * temp_a4, (temp_lo != 0)) && (temp_a6 = ((temp_a1_2->unk90 << 0x14) & 0x01F00000) | (arg1->unkA4 & ~0x01F00000), arg1->unkA4 = temp_a6, temp_a7 = ~0xF8000, temp_a6_2 = temp_a6 & temp_a7, temp_a5 = ((temp_a1_2->unk94 << 0xF) & 0xF8000) | temp_a6_2, arg1->unkA4 = temp_a5, (__glOdysseyGetCurrentTexture((u32 **) sp8, (u32) temp_a1_2, (u32 *) temp_lo, (u32 **) temp_a3, (s32 *) temp_a4, (s32 *) temp_a5, (s32 *) temp_a6_2, (s32 *) temp_a7) != NULL))) {
                __glOdyim_GetTexImage(arg1, arg1->unk18);
            } else {
                arg1->unkB4 = (s32) ((arg1->unkB4 & ~0x1E) | 2);
            }
            var_a1 = arg1->unkA0;
        }
        arg1->unkA0 = (s32) (var_a1 | 0x200);
    }
    temp_a2 = arg1->unk5C;
    temp_a1_3 = arg1->unk90 - temp_a2;
    temp_t0 = arg1->unk98 - temp_a2;
    temp_at = (temp_a1_3 >= 1) ? temp_a1_3 : 0;
    temp_t9 = (temp_t0 >= 1) ? temp_t0 : 0;
    temp_a5_2 = arg1->unk94 - temp_a2;
    temp_ra = (temp_a5_2 >= 1) ? temp_a5_2 : 0;
    temp_a7_2 = arg1->unkA8;
    temp_a5_3 = arg1->unk570;
    temp_a6_3 = 0xFFFE0000 & temp_a7_2;
    arg1->unkA4 = (s32) ((temp_t9 & 0x1F) | ((((temp_ra << 5) & 0x3E0) | ((((temp_at << 0xA) & 0x7C00) | (arg1->unkA4 & ~0x7C00)) & ~0x3E0)) & ~0x1F));
    arg1->unkB0 = (s32) ((0x1FFFF & (s32) ((f32) (1 << temp_t9) * arg1->unk50)) | (0xFFFE0000 & arg1->unkB0));
    arg1->unkAC = (s32) ((0x1FFFF & (s32) ((f32) (1 << temp_ra) * arg1->unk4C)) | (0xFFFE0000 & arg1->unkAC));
    temp_a4_2 = (0x1FFFF & (s32) ((f32) (1 << temp_at) * arg1->unk48)) | temp_a6_3;
    arg1->unkA8 = temp_a4_2;
    if ((temp_a5_3 != 0) && (arg1->unk574 != 0) && (arg1->unk578 != 0)) {
        temp_a1_4 = arg1->unk24;
        temp_a3_2 = arg1->unk28;
        if (arg1->unkC != 0x806F) {
            if (temp_a3_2 != 0x2901) {
                __glOdyim_GetTexImage(arg1, 0x2901, temp_a2, temp_a3_2, temp_a4_2, temp_a5_3, temp_a6_3, temp_a7_2);
            }
        } else if (temp_a3_2 != temp_a1_4) {
            __glOdyim_GetTexImage(arg1, temp_a1_4, temp_a2, temp_a3_2, temp_a4_2, temp_a5_3, temp_a6_3, temp_a7_2);
        }
        temp_a1_5 = arg1->unk14;
        temp_t1 = arg1->unkC;
        if ((temp_a1_5 != 0x2600) && (temp_a1_5 != 0x2601) && (temp_a1_5 != 0x8146)) {
            temp_t8 = arg1->unk60;
            temp_t1_2 = arg1->unk9C;
            temp_t2 = arg1->unk57C;
            temp_t0_2 = temp_t2 * 2;
            temp_t1_3 = (temp_t1_2 >= temp_t8) ? temp_t8 : temp_t1_2;
            var_a7 = arg1->unk578 - temp_t0_2;
            var_a6 = arg1->unk574 - temp_t0_2;
            var_a5 = arg1->unk570 - temp_t0_2;
            if (temp_t1_3 > 0) {
                var_a4 = 1;
                var_a3 = arg1 + 0x44;
loop_19:
                temp_a6_4 = var_a6 >> 1;
                temp_at_2 = var_a4 < arg1->unk5C;
                temp_a7_3 = var_a7 >> 1;
                temp_a5_4 = var_a5 >> 1;
                var_a6 = (temp_a6_4 == 0) ? 1 : temp_a6_4;
                var_a5 = (temp_a5_4 == 0) ? 1 : temp_a5_4;
                var_a4 += 1;
                var_a7 = (temp_a7_3 == 0) ? 1 : temp_a7_3;
                if (temp_at_2 == 0) {
                    if ((var_a3->unk57C == temp_t2) && (var_a3->unk56C == arg1->unk56C)) {
                        if (var_a3->unk570 == (temp_t0_2 + var_a5)) {
                            temp_t1_4 = arg1->unkC;
                            if (temp_t1_4 != 0xDE0) {
                                if (var_a3->unk574 == (temp_t0_2 + var_a6)) {
                                    if ((temp_t1_4 != 0xDE1) && (var_a3->unk578 != (temp_t0_2 + var_a7))) {
                                        goto block_27;
                                    }
                                    goto block_18;
                                }
                                /* Duplicate return node #28. Try simplifying control flow for better match */
                                arg1->unk10 = 0;
                                return;
                            }
                            goto block_18;
                        }
                        /* Duplicate return node #28. Try simplifying control flow for better match */
                        arg1->unk10 = 0;
                        return;
                    }
                    goto block_27;
                }
block_18:
                var_a3 += 0x44;
                if ((temp_t1_3 + 1) != var_a4) {
                    goto loop_19;
                }
                /* Duplicate return node #32. Try simplifying control flow for better match */
                arg1->unk10 = 1;
                return;
            }
            arg1->unk10 = 1;
            return;
        }
        if ((temp_t1 != 0xDE0) && (temp_t1 != 0xDE1)) {
            arg1->unk10 = 1;
            return;
        }
        if (__glOdysseyGetCurrentTexture((u32 **) sp8, (u32) arg1) != NULL) {
            arg1->unk10 = 1;
            return;
        }
        arg1->unkA0 = (s32) (arg1->unkA0 | 0x4000);
        arg1->unk10 = 2;
        arg1->unkCC = 0;
        return;
    }
block_27:
    arg1->unk10 = 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54], gap at: 0x18. */
void __glOdysseyValidateTextureState(u32 **arg0, s64 arg4) {
    s64 sp58;
    s32 *temp_v0;
    s32 temp_at;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a1;
    s32 var_a3;
    s32 var_t0;
    s64 var_a4;
    u32 **temp_a1;
    u32 **temp_a1_2;
    u32 **temp_a1_3;
    u32 temp_a1_4;
    u32 temp_s7;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d9d2ee8
    if (M2C_ERROR()) {
        temp_a1 = arg0->unk1640C;
        var_a0 = temp_a1->unk10;
        if (var_a0 == 2) {
            __glOdysseyValidateTexture((s64) arg0, temp_a1, 0x10000);
            var_a0 = arg0->unk1640C->unk10;
        }
        var_a4 = -0xC01;
        if (var_a0 != 0) {
            arg0->unk7C00 = (s32) ((-0xC01 & ((arg0->unk7C00 & ~8 & ~0x10) | 0x20)) | 0x400);
            arg0->unk16960 = (s32) (arg0->unk16960 | 4);
            var_a0_2 = 2;
            goto block_4;
        }
        var_a1 = arg0->unk700;
        goto block_14;
    }
block_14:
    // Error: negative shift count
    // At instruction: bgez $a2, .L0d9d2f50
    if (M2C_ERROR()) {
        temp_a1_2 = arg0->unk16408;
        var_a0_3 = temp_a1_2->unk10;
        if (var_a0_3 == 2) {
            sp58 = var_a4;
            __glOdysseyValidateTexture((s64) arg0, temp_a1_2, (s64) var_a1 << 0x2E, 0x10000, var_a4);
            var_a0_3 = arg0->unk16408->unk10;
        }
        var_t0 = 0x10000 & var_a4;
        if (var_a0_3 != 0) {
            arg0->unk7C00 = (s32) ((-0xC01 & (((arg0->unk7C00 & ~8) | 0x10) & ~0x20)) | 0x400);
            arg0->unk16960 = (s32) (arg0->unk16960 | 4);
            var_a0_2 = 1;
            goto block_4;
        }
        goto block_19;
    }
    var_t0 = 0x10000 & var_a4;
block_19:
    if (var_t0 != 0) {
        temp_a1_3 = arg0->unk16404;
        var_a0_4 = temp_a1_3->unk10;
        if (var_a0_4 == 2) {
            __glOdysseyValidateTexture((s64) arg0, temp_a1_3);
            var_a0_4 = arg0->unk16404->unk10;
        }
        if (var_a0_4 != 0) {
            arg0->unk7C00 = (s32) ((-0xC01 & ((arg0->unk7C00 | 8) & ~0x10 & ~0x20)) | 0x400);
            arg0->unk16960 = (s32) (arg0->unk16960 | 4);
            var_a0_2 = 0;
block_4:
            *(void *)0x1018 = 2;
            temp_s7 = (arg0 + (var_a0_2 * 4))->unk16404;
            if (arg0->unk16418 != temp_s7) {
                arg0->unk16960 = (s32) (arg0->unk16960 | 0x11C200);
                *(void *)0x1018 = 2;
            }
            if (arg0->unk16418 != 0) {
                __glOdysseyGetCurrentTexture(arg0, arg0->unk16418);
            }
            if (__glOdysseyGetCurrentTexture(arg0, temp_s7) != NULL) {
                arg0->unk7CD4 = (s32) ((temp_s7->unkB4 & (M2C_ERROR(/* Read from unset register $t9 */) + 0x1259E0)->unk-3608) | (arg0->unk7CD4 & 0x7C0001));
                arg0->unk7CC4 = (s32) temp_s7->unkA4;
                arg0->unk7CC8 = (s32) temp_s7->unkA8;
                arg0->unk7CCC = (s32) temp_s7->unkAC;
                arg0->unk7CD0 = (s32) temp_s7->unkB0;
                arg0->unk7CD8 = (s32) temp_s7->unkB8;
                arg0->unk7CDC = (s32) temp_s7->unkBC;
                arg0->unk9724 = (s32) temp_s7->unkC0;
                arg0->unk9728 = (s32) temp_s7->unkC4;
                arg0->unk972C = (s32) temp_s7->unkC8;
                arg0->unk9730 = (s32) temp_s7->unkCC;
                arg0->unk8D6C = (s32) temp_s7->unkD0;
                arg0->unk8D70 = (s32) temp_s7->unkD4;
                arg0->unk8D74 = (s32) temp_s7->unkD8;
                arg0->unk8CEC = (s32) temp_s7->unkDC;
                arg0->unk8CF0 = (s32) temp_s7->unkE0;
                arg0->unk8CF4 = (s32) temp_s7->unkE4;
                arg0->unk8CF8 = (s32) temp_s7->unkE8;
                arg0->unk8CFC = (s32) temp_s7->unkEC;
                arg0->unk8D00 = (s32) temp_s7->unkF0;
                arg0->unk8D04 = (s32) temp_s7->unkF4;
                arg0->unk8D08 = (s32) temp_s7->unkF8;
                var_a3 = 0x100;
                var_a0_5 = 0;
                arg0->unk8CE8 = 2;
                do {
                    *(var_a0_5 + (arg0 + 0x87E4)) = *(var_a0_5 + (temp_s7 + 0xFC));
                    *(var_a0_5 + (arg0 + 0x87E8)) = *(var_a0_5 + (temp_s7 + 0x100));
                    *(var_a0_5 + (arg0 + 0x87EC)) = *(var_a0_5 + (temp_s7 + 0x104));
                    *(var_a0_5 + (arg0 + 0x87F0)) = *(var_a0_5 + (temp_s7 + 0x108));
                    *(var_a0_5 + (arg0 + 0x87F4)) = *(var_a0_5 + (temp_s7 + 0x10C));
                    *(var_a0_5 + (arg0 + 0x87F8)) = *(var_a0_5 + (temp_s7 + 0x110));
                    var_a3 -= 8;
                    *(var_a0_5 + (arg0 + 0x87FC)) = *(var_a0_5 + (temp_s7 + 0x114));
                    temp_v0 = var_a0_5 + (arg0 + 0x8800);
                    temp_at = *(var_a0_5 + (temp_s7 + 0x118));
                    var_a0_5 += 0x20;
                    *temp_v0 = temp_at;
                } while (var_a3 > 0);
                arg0->unk16960 = (s32) (temp_s7->unkA0 | arg0->unk16960);
                *(void *)0x1018 = 2;
                temp_s7->unkA0 = 0;
                return;
            }
            goto block_24;
        }
        goto block_23;
    }
block_23:
block_24:
    arg0->unk7C00 = (s32) (-0xC01 & (arg0->unk7C00 & ~8 & ~0x10 & ~0x20));
    arg0->unk16960 = (s32) (arg0->unk16960 | 4);
    *(void *)0x1018 = 2;
    temp_a1_4 = arg0->unk16418;
    if (temp_a1_4 != 0) {
        __glOdysseyGetCurrentTexture(arg0, temp_a1_4);
    }
}

s32 IsLegalRange(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 var_a1;

    if (arg1 >= 0) {
        var_a1 = 0x8000;
        if (arg1 < 2) {
            temp_a0 = arg0 - (arg1 * 2);
            if (temp_a0 >= 0) {
                var_a1 = temp_a0 > 0x8000;
                if (!(temp_a0 & (temp_a0 - 1)) && (var_a1 == 0)) {
                    return 1;
                }
            }
            __glSetError((u32 **)0x501, var_a1);
            return 0;
        }
    }
    return 0;
}

s32 CheckSubImageSizes(u32 arg0, s64 arg1, s32 arg2, s32 arg3, s32 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp38;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a7;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_t0;
    s32 var_v0;
    void *temp_a5;

    sp38 = arg5;
    sp8 = arg6;
    sp0 = arg7;
    sp10 = arg1;
    temp_a5 = __glOdysseyGetCurrentTexture(*(u32 ***)0x1010, arg0) + (sp10 * 0x44);
    temp_t0 = temp_a5->unk570;
    temp_a3 = temp_a5->unk578;
    temp_a7 = temp_a5->unk57C;
    temp_a2 = temp_a5->unk574;
    if ((temp_t0 != 0) && (temp_a2 != 0) && (temp_a3 != 0)) {
        temp_s2 = arg2 + temp_a7;
        temp_s1 = arg4 + ((temp_a3 <= 1) ? 0 : temp_a7);
        temp_s0 = arg3 + ((temp_a2 <= 1) ? 0 : temp_a7);
        if (temp_s2 >= 0) {
            if ((temp_s0 >= 0) && (temp_s1 >= 0) && (sp38 >= 0) && (sp8 >= 0)) {
                if (sp0 >= 0) {
                    var_v0 = 0x501;
                    if (temp_t0 >= (temp_s2 + sp38)) {
                        if (temp_a2 >= (temp_s0 + sp8)) {
                            var_v0 = 0x501;
                            if (temp_a3 >= (temp_s1 + sp0)) {
                                var_v0 = 0;
                            }
                        } else {
                            var_v0 = 0x501;
                        }
                    }
                    /* Duplicate return node #14. Try simplifying control flow for better match */
                    return var_v0;
                }
                goto block_15;
            }
            /* Duplicate return node #16. Try simplifying control flow for better match */
            return 0x501;
        }
block_15:
        return 0x501;
    }
    var_v0 = 0x502;
    return var_v0;
}

s32 CheckInternalFormat(s32 arg0) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;

    if (arg0 >= 0x8047) {
        if (arg0 > 0x8047) {
            if (arg0 >= 0x8053) {
                if (arg0 > 0x8053) {
                    if (arg0 >= 0x8059) {
                        if (arg0 > 0x8059) {
                            if (arg0 >= 0x8466) {
                                if (arg0 > 0x8466) {
                                    if (arg0 == 0x8467) {
                                        /* Duplicate return node #20. Try simplifying control flow for better match */
                                        return 0;
                                    }
                                    /* Duplicate return node #51. Try simplifying control flow for better match */
                                    return 0x501;
                                }
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            if (arg0 >= 0x805B) {
                                if (arg0 > 0x805B) {
                                    /* Duplicate return node #51. Try simplifying control flow for better match */
                                    return 0x501;
                                }
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            if (arg0 == 0x805A) {
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 >= 0x8056) {
                        if (arg0 > 0x8056) {
                            if (arg0 >= 0x8058) {
                                if (arg0 > 0x8058) {
                                    /* Duplicate return node #51. Try simplifying control flow for better match */
                                    return 0x501;
                                }
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            if (arg0 == 0x8057) {
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 >= 0x8055) {
                        if (arg0 > 0x8055) {
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x8054) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 >= 0x804D) {
                if (arg0 > 0x804D) {
                    if (arg0 >= 0x8050) {
                        if (arg0 > 0x8050) {
                            if (arg0 >= 0x8052) {
                                if (arg0 > 0x8052) {
                                    /* Duplicate return node #51. Try simplifying control flow for better match */
                                    return 0x501;
                                }
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            if (arg0 == 0x8051) {
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 >= 0x804F) {
                        if (arg0 > 0x804F) {
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x804E) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 >= 0x804A) {
                if (arg0 > 0x804A) {
                    if (arg0 >= 0x804C) {
                        if (arg0 > 0x804C) {
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x804B) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 >= 0x8049) {
                if (arg0 > 0x8049) {
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 0x8048) {
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            /* Duplicate return node #51. Try simplifying control flow for better match */
            return 0x501;
        }
        /* Duplicate return node #20. Try simplifying control flow for better match */
        return 0;
    }
    if (arg0 >= 0x803C) {
        if (arg0 > 0x803C) {
            if (arg0 >= 0x8042) {
                if (arg0 > 0x8042) {
                    if (arg0 >= 0x8045) {
                        if (arg0 > 0x8045) {
                            if (arg0 == 0x8046) {
                                /* Duplicate return node #20. Try simplifying control flow for better match */
                                return 0;
                            }
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 >= 0x8044) {
                        if (arg0 > 0x8044) {
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x8043) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 >= 0x803F) {
                if (arg0 > 0x803F) {
                    if (arg0 >= 0x8041) {
                        if (arg0 > 0x8041) {
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x8040) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 >= 0x803E) {
                if (arg0 > 0x803E) {
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 0x803D) {
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            /* Duplicate return node #51. Try simplifying control flow for better match */
            return 0x501;
        }
        /* Duplicate return node #20. Try simplifying control flow for better match */
        return 0;
    }
    temp_a2 = arg0 < 0x1907;
    temp_a3 = arg0 < 3;
    if (temp_a2 == 0) {
        temp_a2_2 = arg0 < 0x190A;
        if (arg0 >= 0x1908) {
            if (temp_a2_2 == 0) {
                if (arg0 >= 0x190B) {
                    if (arg0 >= 0x803B) {
                        if (arg0 > 0x803B) {
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return 0x501;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg0 == 0x2A10) {
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        return 0;
                    }
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 >= 0x1909) {
                if (temp_a2_2 == 0) {
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 0x1908) {
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            /* Duplicate return node #51. Try simplifying control flow for better match */
            return 0x501;
        }
        /* Duplicate return node #20. Try simplifying control flow for better match */
        return 0;
    }
    if (temp_a3 == 0) {
        if (arg0 >= 4) {
            if (arg0 >= 0x1906) {
                if (temp_a2 == 0) {
                    /* Duplicate return node #51. Try simplifying control flow for better match */
                    return 0x501;
                }
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            if (arg0 == 4) {
                /* Duplicate return node #20. Try simplifying control flow for better match */
                return 0;
            }
            /* Duplicate return node #51. Try simplifying control flow for better match */
            return 0x501;
        }
        /* Duplicate return node #20. Try simplifying control flow for better match */
        return 0;
    }
    if (arg0 >= 2) {
        if (temp_a3 != 0) {
            /* Duplicate return node #20. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #51. Try simplifying control flow for better match */
        return 0x501;
    }
    if (arg0 != 1) {
        return 0x501;
    }
    return 0;
}

s32 CheckHostFormatType(u32 *arg0, u32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 temp_a7;
    s32 temp_t8;
    s32 temp_v0_2;
    s32 var_t3;
    s32 var_t3_2;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;

    if (arg1 >= 0x8034U) {
        if (arg1 > 0x8034U) {
            if (arg1 >= 0x8364U) {
                if (arg1 > 0x8364U) {
                    if (arg1 >= 0x8367U) {
                        if (arg1 > 0x8367U) {
                            if (arg1 == 0x8368) {
                                goto block_20;
                            }
                            /* Duplicate return node #57. Try simplifying control flow for better match */
                            return 0x500;
                        }
                        goto block_20;
                    }
                    if (arg1 >= 0x8366U) {
                        if (arg1 > 0x8366U) {
                            /* Duplicate return node #57. Try simplifying control flow for better match */
                            return 0x500;
                        }
                        goto block_20;
                    }
                    if (arg1 == 0x8365) {
                        goto block_20;
                    }
                    /* Duplicate return node #57. Try simplifying control flow for better match */
                    return 0x500;
                }
                goto block_45;
            }
            if (arg1 >= 0x8362U) {
                if (arg1 <= 0x8362U) {
block_45:
                    temp_v0 = *arg0;
                    var_t3 = temp_v0 < 0x1909U;
                    if (temp_v0 != 0x1907) {
                        var_t3 = temp_v0 < 0x1909U;
                        if (temp_v0 != 0x80E0) {
                            return 0x502;
                        }
                    }
                    goto block_11;
                }
                if (arg1 != 0x8363) {
                    /* Duplicate return node #57. Try simplifying control flow for better match */
                    return 0x500;
                }
                goto block_50;
            }
            if (arg1 >= 0x8036U) {
                if (arg1 <= 0x8036U) {
                    goto block_20;
                }
                /* Duplicate return node #57. Try simplifying control flow for better match */
                return 0x500;
            }
            if (arg1 == 0x8035) {
                goto block_20;
            }
            /* Duplicate return node #57. Try simplifying control flow for better match */
            return 0x500;
        }
        goto block_20;
    }
    temp_v0_2 = arg1 < 0x1405U;
    if (temp_v0_2 == 0) {
        if (arg1 < 0x1406U) {
            goto block_10;
        }
        if (arg1 >= 0x8032U) {
            if (arg1 <= 0x8032U) {
block_50:
                temp_v0_3 = *arg0;
                var_t3 = temp_v0_3 < 0x1909U;
                if (temp_v0_3 != 0x1907) {
                    var_t3 = temp_v0_3 < 0x1909U;
                    if (temp_v0_3 != 0x80E0) {
                        return 0x502;
                    }
                }
                goto block_11;
            }
            if (arg1 == 0x8033) {
block_20:
                temp_v0_4 = *arg0;
                var_t3 = temp_v0_4 < 0x1909U;
                if (temp_v0_4 != 0x1908) {
                    var_t3 = temp_v0_4 < 0x1909U;
                    if (temp_v0_4 != 0x8000) {
                        var_t3 = temp_v0_4 < 0x1909U;
                        if (temp_v0_4 != 0x80E1) {
                            return 0x502;
                        }
                    }
                }
                goto block_11;
            }
            /* Duplicate return node #57. Try simplifying control flow for better match */
            return 0x500;
        }
        if (arg1 >= 0x1A00U) {
            if (arg1 < 0x1A01U) {
                temp_v0_5 = *arg0;
                var_t3 = temp_v0_5 < 0x1909U;
                if (temp_v0_5 != 0x1900) {
                    return 0x500;
                }
                goto block_11;
            }
            /* Duplicate return node #57. Try simplifying control flow for better match */
            return 0x500;
        }
        if (arg1 == 0x1406) {
            goto block_10;
        }
        /* Duplicate return node #57. Try simplifying control flow for better match */
        return 0x500;
    }
    temp_a7 = arg1 < 0x1402U;
    if (temp_a7 == 0) {
        if (arg1 < 0x1403U) {
            goto block_10;
        }
        if (arg1 >= 0x1404U) {
            if (temp_v0_2 != 0) {
                goto block_10;
            }
            /* Duplicate return node #57. Try simplifying control flow for better match */
            return 0x500;
        }
        if (arg1 == 0x1403) {
            goto block_10;
        }
        /* Duplicate return node #57. Try simplifying control flow for better match */
        return 0x500;
    }
    if (arg1 >= 0x1401U) {
        if (temp_a7 != 0) {
            goto block_10;
        }
        /* Duplicate return node #57. Try simplifying control flow for better match */
        return 0x500;
    }
    if (arg1 == 0x1400) {
block_10:
        var_t3 = (u32) *arg0 < 0x1909U;
block_11:
        if (var_t3 == 0) {
            if (*arg0 >= 0x190AU) {
                if (*arg0 >= 0x80E1U) {
                    if (*arg0 > 0x80E1U) {
                        if (*arg0 >= 0x8467U) {
                            if (*arg0 > 0x8467U) {
                                /* Duplicate return node #42. Try simplifying control flow for better match */
                                return 0x500;
                            }
                            goto block_91;
                        }
                        if (*arg0 == 0x8466) {
block_91:
                            if (arg1 != 0x1403) {
                                return 0x500;
                            }
                            goto block_26;
                        }
                        /* Duplicate return node #42. Try simplifying control flow for better match */
                        return 0x500;
                    }
                    goto block_26;
                }
                if (*arg0 >= 0x8000U) {
                    if (*arg0 > 0x8000U) {
                        if (*arg0 == 0x80E0) {
                            goto block_25;
                        }
                        /* Duplicate return node #42. Try simplifying control flow for better match */
                        return 0x500;
                    }
                    goto block_26;
                }
                if (*arg0 == 0x190A) {
                    goto block_25;
                }
                /* Duplicate return node #42. Try simplifying control flow for better match */
                return 0x500;
            }
            goto block_25;
        }
        if (*arg0 >= 0x1905U) {
            if (*arg0 >= 0x1906U) {
                if (*arg0 >= 0x1907U) {
                    if (*arg0 >= 0x1908U) {
                        if (*arg0 == 0x1908) {
                            goto block_25;
                        }
                        /* Duplicate return node #42. Try simplifying control flow for better match */
                        return 0x500;
                    }
                    goto block_25;
                }
                if (*arg0 == 0x1906) {
                    goto block_25;
                }
                /* Duplicate return node #42. Try simplifying control flow for better match */
                return 0x500;
            }
            goto block_26;
        }
        if (*arg0 >= 0x1903U) {
            if ((*arg0 >= 0x1904U) && (*arg0 != 0x1904)) {
                /* Duplicate return node #42. Try simplifying control flow for better match */
                return 0x500;
            }
            goto block_26;
        }
        if (*arg0 == 0x1900) {
block_25:
block_26:
            switch (arg4) {                         /* irregular */
            default:
            case 0x85A2:
                return 0;
            case 0x85A3:
                if (*arg0 != 0x1907) {
                    if (*arg0 != 0x1908) {
                        return 0x502;
                    }
                    goto block_94;
                }
block_94:
                *arg0 = 0x1908;
                if (arg1 != 0x1401) {
                    var_t3_2 = arg2 >> 0x1F;
                    if (arg1 != 0x1403) {
                        return 0x502;
                    }
                    goto block_100;
                }
                var_t3_2 = arg2 >> 0x1F;
block_100:
                temp_t8 = arg3 >> 0x1F;
                if (((((((arg2 ^ var_t3_2) - var_t3_2) & 1) ^ var_t3_2) - var_t3_2) != 0) || ((((((arg3 ^ temp_t8) - temp_t8) & 1) ^ temp_t8) - temp_t8) != 0)) {
                    return 0x502;
                }
                /* Duplicate return node #29. Try simplifying control flow for better match */
                return 0;
            case 0x85A4:
                return 0x502;
            }
        } else {
            return 0x500;
        }
    } else {
        return 0x500;
    }
}

s32 CheckTargetLevel(u32 arg0, s32 arg1) {
    if (arg0 >= 0x8064U) {
        if (arg0 > 0x8064U) {
            if (arg0 >= 0x8070U) {
                if (arg0 > 0x8070U) {
                    if (arg0 == 0x8095) {
                        goto block_11;
                    }
                    /* Duplicate return node #15. Try simplifying control flow for better match */
                    return 0x500;
                }
                goto block_11;
            }
            if (arg0 != 0x806F) {
                /* Duplicate return node #15. Try simplifying control flow for better match */
                return 0x500;
            }
            goto block_11;
        }
        goto block_11;
    }
    if (arg0 >= 0xDE1U) {
        if (arg0 >= 0xDE2U) {
            if (arg0 == 0x8063) {
                goto block_11;
            }
            /* Duplicate return node #15. Try simplifying control flow for better match */
            return 0x500;
        }
        goto block_11;
    }
    if (arg0 == 0xDE0) {
block_11:
        if ((arg1 < 0) || ((*(void **)0x1010)->unkE94 < arg1)) {
            return 0x501;
        }
        return 0;
    }
    return 0x500;
}

void TexImage(u32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 *arg_sp4, s32 arg_spC, s32 arg_sp14, u32 *arg_sp1C, u32 **arg_sp24, s32 *arg_sp2C) {
    s64 spA8;
    s64 spA0;
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
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_t0;
    s64 temp_a0;
    s64 temp_a0_2;
    s64 temp_a2;
    s64 temp_a3;
    s64 temp_a7;
    s64 temp_lo;
    s64 temp_ra;
    s64 temp_t0_2;
    s64 temp_t2;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_t2;
    s64 var_t3;
    s64 var_t8;
    u32 **temp_s1;
    u32 **temp_v0;
    u32 **temp_v0_2;
    u32 **temp_v0_3;

    spA8 = arg1;
    spA0 = arg2;
    sp98 = arg3;
    sp78 = arg4;
    sp80 = arg5;
    sp90 = arg6;
    sp88 = arg7;
    temp_s1 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp70 = __glOdysseyGetCurrentTexture(temp_s1, arg0);
        temp_v0 = __glOdysseyValidateTextureState((u32 **) arg0, spA8);
        if (temp_v0 != NULL) {
            __glSetError(temp_v0);
        } else {
            temp_v0_2 = __glOdysseyValidateTextureState(&arg_sp1C, (s64) arg_sp24, 0, sp98, temp_s1->unk4C8);
            if (temp_v0_2 != NULL) {
                __glSetError(temp_v0_2);
            } else {
                temp_v0_3 = __glOdysseyValidateTextureState((u32 **) spA0);
                if (temp_v0_3 != NULL) {
                    __glSetError(temp_v0_3);
                } else {
                    temp_a0 = arg_spC + sp98;
                    sp30 = temp_a0;
                    if ((__glOdysseyValidateTextureState((u32 **) temp_a0, sp90) != 0) && (temp_a0_2 = arg_sp14 + sp78, sp28 = temp_a0_2, (__glOdysseyValidateTextureState((u32 **) temp_a0_2, sp88) != 0)) && (__glOdysseyValidateTextureState((u32 **) sp80, (s64) arg_sp4) != 0)) {
                        if (!(temp_s1->unk718 & 1) || (__glOdysseyAsyncCheck(temp_s1, 1) != 0)) {
                            switch (arg0) {         /* irregular */
                            default:
                                sp20 = 0;
block_19:
                                if (__glOdysseyGetCurrentTexture((u32 **) arg0, (u32) spA8, (u32 *) sp30, (u32 **) sp28, (s32 *) sp80, (s32 *) sp90, (s32 *) sp88, arg_sp4, (u32) spA0) != NULL) {
                                    if (sp20 != 0) {
                                        __glOdysseyDestroyPMObj(temp_s1, sp70 + 0x4FC, spA8);
                                    } else {
                                        sp70->unk10 = 2;
                                        sp70->unkA0 = (s32) (sp70->unkA0 | 0x200);
                                        temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x200);
                                        *(void *)0x1018 = 2;
                                        if (arg_sp2C != NULL) {
                                            __glOdysseyGetCurrentTexture((u32 **) arg0, (u32) spA8, arg_sp1C, arg_sp24, arg_sp2C, NULL, NULL, NULL, (u32) sp98, (s32) sp78, (s32) sp80);
                                            if (temp_s1->unk718 & 1) {
                                                __glOdysseyAsyncDropMarker(temp_s1, 1);
                                            }
                                        }
                                    }
                                }
                                break;
                            case 0x8063:
                            case 0x8064:
                                /* fallthrough */
                            case 0x8070:
                                sp20 = 1;
                                if (spA8 != 0) {
                                    temp_a3 = sp90 * 2;
                                    temp_t0 = 1 << spA8;
                                    temp_lo = temp_t0 * (sp98 - temp_a3);
                                    temp_ra = sp88 * 2;
                                    temp_a7 = sp78 - temp_ra;
                                    temp_a2 = (s32) arg_sp4 * 2;
                                    temp_t3 = sp80 - temp_a2;
                                    var_t8 = temp_lo;
                                    var_t2 = ((0x8063 ^ arg0) == 0) ? temp_a7 : (temp_t0 * temp_a7);
                                    var_t3 = ((arg0 ^ 0x8070) == 0) ? (temp_t0 * temp_t3) : temp_t3;
                                    if (temp_lo != 0) {
                                        goto block_25;
                                    }
                                    if ((var_t2 == 0) && (var_t3 == 0)) {

                                    } else {
block_25:
                                        sp68 = 0;
                                        sp48 = temp_a2;
                                        sp40 = temp_a3;
                                        sp38 = temp_ra;
loop_26:
loop_27:
                                        temp_t2 = (var_t2 == 0) ? 1 : var_t2;
                                        sp50 = temp_t2;
                                        temp_t0_2 = (var_t3 == 0) ? 1 : var_t3;
                                        sp60 = temp_t0_2;
                                        temp_t8 = (var_t8 == 0) ? 1 : var_t8;
                                        sp58 = temp_t8;
                                        if (__glOdysseyGetCurrentTexture((u32 **) arg0, (u32) sp68, sp40 + temp_t8, sp38 + temp_t2, sp48 + temp_t0_2, (s32 *) sp90, (s32 *) sp88, arg_sp4, (u32) spA0) != NULL) {
                                            var_t2 = (s64) (temp_t2 >> 1);
                                            var_t8 = (s64) (sp58 >> 1);
                                            var_t3 = (s64) (sp60 >> 1);
                                            sp68 += 1;
                                            if (var_t8 == 0) {
                                                if ((var_t2 == 0) && (var_t3 == 0)) {

                                                } else {
                                                    goto loop_27;
                                                }
                                            } else {
                                                goto loop_26;
                                            }
                                        } else {
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x554($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x55b($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x55c($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x563($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x564($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x56b($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x56c($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x573($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x574($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x57b($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x57c($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x583($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x584($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x58b($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdl $zero, 0x58c($t9) */);
                                            M2C_ERROR(/* unknown instruction: sdr $zero, 0x593($t9) */);
                                            (sp70 + (spA8 * 0x44))->unk594 = (unaligned s32) 0;
                                        }
                                    }
                                    __glOdysseyDestroyPMObjGroup(temp_s1, sp70 + 0x4FC);
                                } else {
                                    goto block_19;
                                }
                                break;
                            }
                        }
                    } else {
                        __glSetError((u32 **)0x501);
                    }
                }
            }
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

/*
Decompilation failure in function CopyTexImage:

Unable to determine jump table for jr instruction at ody_texture.s line 7146.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void TexSubImage(u32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC, u32 *arg_sp14, u32 **arg_sp1C, s32 *arg_sp24) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    u32 **temp_s1;
    u32 **temp_v0;
    u32 **temp_v0_2;
    u32 **temp_v0_3;

    sp48 = arg2;
    sp30 = arg3;
    sp40 = arg4;
    sp50 = arg5;
    sp28 = arg6;
    sp38 = arg7;
    temp_s1 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        sp20 = __glOdysseyGetCurrentTexture(temp_s1, arg0);
        temp_v0 = __glOdysseyValidateTextureState((u32 **) arg0, arg1);
        if (temp_v0 != NULL) {
            __glSetError(temp_v0);
        } else {
            temp_v0_2 = __glOdysseyValidateTextureState(&arg_sp14, (s64) arg_sp1C, sp48, sp50, temp_s1->unk4C8);
            if (temp_v0_2 != NULL) {
                __glSetError(temp_v0_2);
            } else if (!(temp_s1->unk718 & 1) || (__glOdysseyAsyncCheck(temp_s1, 1) != 0)) {
                temp_v0_3 = __glOdysseyValidateTextureState((u32 **) arg0, arg1, sp48, sp30, (s32) sp40, arg_sp4 + sp50, arg_spC + sp28, sp38);
                if (temp_v0_3 != NULL) {
                    __glSetError(temp_v0_3);
                } else {
                    __glOdysseyGetCurrentTexture((u32 **) arg0, (u32) arg1, arg_sp14, arg_sp1C, arg_sp24, (s32 *) sp48, (s32 *) sp30, (s32 *) sp40, (u32) sp50, (s32) sp28, (s32) sp38);
                    if (temp_s1->unk718 & 1) {
                        __glOdysseyAsyncDropMarker(temp_s1, 1);
                    }
                    sp20->unk10 = 2;
                    temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                }
            }
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

/*
Decompilation failure in function CopyTexSubImage:

Unable to determine jump table for jr instruction at ody_texture.s line 7419.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_TexImage1D(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 temp_t2;
    s32 var_v0;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp68 = arg4;
        sp60 = arg5;
        sp58 = arg6;
        sp50 = arg3;
        sp48 = arg7;
        sp38 = arg2;
        sp40 = arg1;
        sp30 = (s64) *(s32 *)0x1010;
        if ((arg0 != (u32 **)0xDE0) && (arg0 != (u32 **)0x8063)) {
            __glSetError((u32 **)0x500, 0x8063);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp30, 1);
            if (temp_v0->unk0 != 0x8010) {
                goto block_6;
            }
            if ((temp_v0->unk4 == 0x8016) && (temp_t2 = temp_v0->unk40, (temp_t2 > 0))) {
                var_v0 = 1 - temp_t2;
            } else {
block_6:
                var_v0 = 0;
            }
            __glOdysseyValidateTextureState(arg0, sp40, sp38, sp50, 1, 1, sp68, 0, 0, var_v0, 0, (s32) sp60, (s32) sp58, (s32) sp48);
            __glOdysseySetCurrentFilter(sp30, 2);
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_TexImage2D(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 temp_a6;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 var_t2;
    s32 var_t3;
    void *temp_a1;
    void *temp_v0;

    temp_t2 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError((u32 **)0x500, 0x8064);
            break;
        case 0xDE1:
        case 0x8064:
            if (arg0 == (u32 **)0x8095) {
            case 0x8095:
                if ((arg5 != 0) || (sp38 = arg1, sp60 = arg4, sp58 = arg2, sp50 = arg7, sp48 = arg6, sp40 = arg3, sp68 = (s64) temp_t2, sp30 = arg5, (arg1 != 0))) {
                    __glSetError((u32 **)0x501, 0x8064);
                } else {
                    goto block_10;
                }
            } else {
block_10:
                sp60 = arg4;
                sp58 = arg2;
                sp50 = arg7;
                sp48 = arg6;
                sp40 = arg3;
                sp30 = arg5;
                sp68 = (s64) temp_t2;
                sp38 = arg1;
                temp_v0 = __glOdysseySetCurrentFilter(sp68, 2, 0x8064);
                temp_t2_2 = temp_v0->unk0;
                var_t3 = 0;
                if ((temp_t2_2 == 0x8011) || (var_t2 = 0, (temp_t2_2 == 0x8012))) {
                    var_t2 = 0;
                    if (temp_v0->unk4 == 0x8016) {
                        temp_a6 = temp_v0->unk44;
                        temp_t1 = temp_v0->unk40;
                        var_t2 = (temp_t1 >= 1) ? (1 - temp_t1) : 0;
                        var_t3 = (temp_a6 >= 1) ? (1 - temp_a6) : 0;
                    }
                }
                __glOdysseyValidateTextureState(arg0, sp38, sp58, sp40, (s32) sp60, 1, sp30, sp30, 0, var_t2, !(sp68->unk704 & 0x20) ? var_t3 : (var_t3 + (sp60 + var_t3)), (s32) sp48, (s32) sp50, arg_sp4);
                if (arg0 == (u32 **)0x8095) {
                    sp68->unk16408->unk10 = 2;
                    temp_a1 = sp68->unk16408;
                    temp_a1->unkA0 = (s32) (temp_a1->unkA0 | 0x200);
                    return;
                }
            }
            break;
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_TexImage3D(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s32 arg7, s32 arg_sp4, s32 arg_spC) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a5;
    s32 var_t2;
    s32 var_t3;
    void *temp_s2;
    void *temp_v0;

    temp_s2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if ((arg0 != (u32 **)0x806F) && (arg0 != (u32 **)0x8070)) {
            __glSetError((u32 **)0x500, 0x8070);
        } else {
            sp58 = arg1;
            sp50 = arg2;
            sp48 = arg3;
            sp40 = arg6;
            sp38 = arg5;
            sp30 = arg4;
            if (arg7 != 0x1A00) {
                temp_v0 = __glOdysseySetCurrentFilter((s64) temp_s2, 2, 0x8070, 0x1A00);
                temp_a0 = temp_v0->unk0;
                var_t3 = 0;
                var_t2 = 0;
                if ((temp_a0 == 0x8011) || (temp_a0 == 0x8012)) {
                    if (temp_v0->unk4 == 0x8016) {
                        temp_a2 = temp_v0->unk44;
                        temp_a5 = temp_v0->unk40;
                        var_t2 = (temp_a5 >= 1) ? (1 - temp_a5) : 0;
                        var_t3 = (temp_a2 >= 1) ? (1 - temp_a2) : 0;
                    }
                }
                __glOdysseyValidateTextureState(arg0, sp58, sp50, sp48, (s32) sp30, sp38, sp40, sp40, (s32) sp40, var_t2, !(temp_s2->unk704 & 0x20) ? var_t3 : (var_t3 + (sp30 + var_t3)), arg7, arg_sp4, arg_spC);
            } else {
                __glSetError((u32 **)0x500, 0x8070, 0x1A00U);
            }
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_CopyTexImage1DEXT(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp20;
    s32 temp_a6;
    s64 var_a7;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp68 = arg4;
        sp60 = arg5;
        sp58 = arg6;
        sp50 = arg3;
        sp48 = arg1;
        sp40 = arg2;
        sp20 = (s64) *(s32 *)0x1010;
        if (arg0 != (u32 **)0xDE0) {
            __glSetError((u32 **)0x500, 1);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp20, 1, 1);
            var_a7 = 0;
            if (temp_v0->unk0 == 0x8010) {
                if (temp_v0->unk4 == 0x8016) {
                    temp_a6 = temp_v0->unk40;
                    if (temp_a6 > 0) {
                        var_a7 = 1 - temp_a6;
                    }
                }
            }
            __glOdysseyValidateTextureState(arg0, sp48, sp40, sp50, (s32) sp68, sp60, 1, var_a7, 0, (s32) sp58, 0);
            __glOdysseySetCurrentFilter(sp20, 2);
        }
    } else {
        __glSetError((u32 **)0x502, 1);
    }
}

void __glOdyim_CopyTexImage2DEXT(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_t2;
    s64 var_a7;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp50 = arg2;
        sp48 = arg3;
        sp40 = arg4;
        sp38 = arg1;
        sp30 = arg7;
        sp28 = arg5;
        sp20 = arg6;
        sp58 = (s64) *(s32 *)0x1010;
        if (arg0 != (u32 **)0xDE1) {
            __glSetError((u32 **)0x500);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp58, 2);
            temp_t2 = temp_v0->unk0;
            var_a7 = 0;
            if ((temp_t2 == 0x8011) || (var_t2 = 0, (temp_t2 == 0x8012))) {
                var_t2 = 0;
                if (temp_v0->unk4 == 0x8016) {
                    temp_t9 = temp_v0->unk44;
                    temp_v1 = temp_v0->unk40;
                    var_a7 = (temp_v1 >= 1) ? (1 - temp_v1) : 0;
                    var_t2 = (temp_t9 >= 1) ? (1 - temp_t9) : 0;
                }
            }
            __glOdysseyValidateTextureState(arg0, sp38, sp50, sp48, (s32) sp40, sp28, sp20, var_a7, !(sp58->unk704 & 0x20) ? var_t2 : (var_t2 + (sp20 + var_t2)), (s32) sp30, (s32) sp30);
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_TexSubImage1D(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp30;
    s32 temp_a3;
    s32 var_v0;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp78 = arg3;
        sp70 = arg4;
        sp68 = arg5;
        sp60 = arg6;
        sp58 = arg1;
        sp50 = arg2;
        sp30 = (s64) *(s32 *)0x1010;
        if (arg0 != (u32 **)0xDE0) {
            __glSetError((u32 **)0x500);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp30, 1);
            if (temp_v0->unk0 != 0x8010) {
                goto block_5;
            }
            if (temp_v0->unk4 == 0x8016) {
                temp_a3 = temp_v0->unk40;
                var_v0 = 0;
                if (temp_a3 > 0) {
                    var_v0 = 1 - temp_a3;
                }
            } else {
block_5:
                var_v0 = 0;
            }
            __glOdysseyValidateTextureState(arg0, sp58, sp50, 0, 0, sp78, 1, 1, var_v0, 0, (s32) sp70, (s32) sp68, (s32) sp60);
            __glOdysseySetCurrentFilter(sp30, 2);
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_TexSubImage2D(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_t2;
    s32 var_t2;
    s32 var_t3;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp68 = arg2;
        sp60 = arg3;
        sp58 = arg4;
        sp48 = arg7;
        sp40 = arg6;
        sp38 = arg5;
        sp50 = arg1;
        sp30 = (s64) *(s32 *)0x1010;
        if ((arg0 != (u32 **)0xDE1) && (arg0 != (u32 **)0x8095)) {
            __glSetError((u32 **)0x500, 0x8095);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp30, 2);
            temp_t2 = temp_v0->unk0;
            var_t3 = 0;
            if ((temp_t2 == 0x8011) || (var_t2 = 0, (temp_t2 == 0x8012))) {
                var_t2 = 0;
                if (temp_v0->unk4 == 0x8016) {
                    temp_a2 = temp_v0->unk44;
                    temp_a5 = temp_v0->unk40;
                    var_t3 = (temp_a5 >= 1) ? (1 - temp_a5) : 0;
                    var_t2 = (temp_a2 >= 1) ? (1 - temp_a2) : 0;
                }
            }
            __glOdysseyValidateTextureState(arg0, sp50, sp68, sp60, 0, sp58, sp38, 1, var_t3, !(sp30->unk704 & 0x20) ? var_t2 : ((var_t2 + (sp38 + var_t2)) - 1), (s32) sp40, (s32) sp48, arg_sp4);
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_TexSubImage3D(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4, s32 arg_spC, s32 arg_sp14) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a5;
    s32 var_t2;
    s32 var_t3;
    void *temp_s1;
    void *temp_v0;

    temp_s1 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != (u32 **)0x806F) {
            __glSetError((u32 **)0x500);
        } else {
            sp60 = arg7;
            sp58 = arg1;
            sp50 = arg2;
            sp48 = arg3;
            sp40 = arg5;
            sp38 = arg4;
            sp30 = arg6;
            if (arg_sp4 != 0x1A00) {
                temp_v0 = __glOdysseySetCurrentFilter((s64) temp_s1, 2, arg_sp4);
                temp_a0 = temp_v0->unk0;
                var_t3 = 0;
                if ((temp_a0 == 0x8011) || (var_t2 = 0, (temp_a0 == 0x8012))) {
                    var_t2 = 0;
                    if (temp_v0->unk4 == 0x8016) {
                        temp_a2 = temp_v0->unk44;
                        temp_a5 = temp_v0->unk40;
                        var_t2 = (temp_a5 >= 1) ? (1 - temp_a5) : 0;
                        var_t3 = (temp_a2 >= 1) ? (1 - temp_a2) : 0;
                    }
                }
                __glOdysseyValidateTextureState(arg0, sp58, sp50, sp48, (s32) sp38, sp40, sp30, sp60, var_t2, !(temp_s1->unk704 & 0x20) ? var_t3 : ((var_t3 + (sp30 + var_t3)) - 1), arg_sp4, arg_spC, arg_sp14);
            } else {
                __glSetError((u32 **)0x500, arg_sp4);
            }
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_CopyTexSubImage1DEXT(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp20;
    s32 temp_a3;
    s32 var_v0;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp60 = arg3;
        sp58 = arg4;
        sp50 = arg5;
        sp48 = arg1;
        sp40 = arg2;
        sp20 = (s64) *(s32 *)0x1010;
        if (arg0 != (u32 **)0xDE0) {
            __glSetError((u32 **)0x500, 1);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp20, 1, 1);
            if (temp_v0->unk0 != 0x8010) {
                goto block_5;
            }
            if ((temp_v0->unk4 == 0x8016) && (temp_a3 = temp_v0->unk40, (temp_a3 > 0))) {
                var_v0 = 1 - temp_a3;
            } else {
block_5:
                var_v0 = 0;
            }
            __glOdysseyValidateTextureState(arg0, sp48, sp40, 0, 0, sp60, sp58, sp50, 1, var_v0, 0);
            __glOdysseySetCurrentFilter(sp20, 2);
        }
    } else {
        __glSetError((u32 **)0x502, 1);
    }
}

void __glOdyim_CopyTexSubImage2DEXT(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_t2;
    s32 var_t3;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp50 = arg2;
        sp48 = arg3;
        sp40 = arg4;
        sp38 = arg1;
        sp30 = arg6;
        sp28 = arg5;
        sp20 = arg7;
        sp58 = (s64) *(s32 *)0x1010;
        if (arg0 != (u32 **)0xDE1) {
            __glSetError((u32 **)0x500);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp58, 2);
            temp_t2 = temp_v0->unk0;
            if (temp_t2 != 0x8011) {
                var_t2 = 0;
                if (temp_t2 != 0x8012) {
                    goto block_6;
                }
            }
            var_t2 = 0;
            if (temp_v0->unk4 == 0x8016) {
                temp_t9 = temp_v0->unk44;
                temp_v1 = temp_v0->unk40;
                var_t3 = (temp_v1 >= 1) ? (1 - temp_v1) : 0;
                var_t2 = (temp_t9 >= 1) ? (1 - temp_t9) : 0;
            } else {
block_6:
                var_t3 = 0;
            }
            __glOdysseyValidateTextureState(arg0, sp38, sp50, sp48, 0, sp40, sp28, sp30, (s32) sp20, var_t3, !(sp58->unk704 & 0x20) ? var_t2 : ((var_t2 + (sp20 + var_t2)) - 1));
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

void __glOdyim_CopyTexSubImage3DEXT(u32 **arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_t2;
    s32 var_t3;
    void *temp_v0;

    if (*(s32 *)0x1018 != 1) {
        sp50 = arg3;
        sp48 = arg4;
        sp40 = arg5;
        sp38 = arg2;
        sp30 = arg7;
        sp28 = arg6;
        sp20 = arg1;
        sp58 = (s64) *(s32 *)0x1010;
        if (arg0 != (u32 **)0x806F) {
            __glSetError((u32 **)0x500);
        } else {
            temp_v0 = __glOdysseySetCurrentFilter(sp58, 2);
            temp_t2 = temp_v0->unk0;
            if (temp_t2 != 0x8011) {
                var_t2 = 0;
                if (temp_t2 != 0x8012) {
                    goto block_6;
                }
            }
            var_t2 = 0;
            if (temp_v0->unk4 == 0x8016) {
                temp_t9 = temp_v0->unk44;
                temp_v1 = temp_v0->unk40;
                var_t3 = (temp_v1 >= 1) ? (1 - temp_v1) : 0;
                var_t2 = (temp_t9 >= 1) ? (1 - temp_t9) : 0;
            } else {
block_6:
                var_t3 = 0;
            }
            __glOdysseyValidateTextureState(arg0, sp20, sp38, sp50, (s32) sp48, sp40, sp28, sp30, arg_sp4, var_t3, !(sp58->unk704 & 0x20) ? var_t2 : ((var_t2 + (arg_sp4 + var_t2)) - 1));
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x100, 0x104, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x130, 0x134], gap at: 0x128. */
void __glOdyim_GetTexImage(u32 arg0, s32 arg1, u32 *arg2, s64 arg3, s64 arg4) {
    u32 *sp154;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    u64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    f64 sp98;
    s32 sp94;
    s32 sp90;
    s32 sp88;
    s32 sp7C;
    s32 sp78;
    u32 sp68;
    s32 sp64;
    u32 sp60;
    s32 sp5C;
    u32 *sp58;
    s64 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 temp_f13;
    f32 temp_f1;
    f32 temp_f3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_t9;
    s32 var_s1_2;
    s32 var_v0_2;
    s64 temp_a3;
    s64 temp_lo;
    s64 temp_s1;
    s64 var_a7;
    s64 var_t1;
    s64 var_t2;
    s64 var_v0;
    u32 **temp_s3;
    u32 **temp_v0;
    u32 **temp_v0_2;
    u32 **temp_v0_3;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a5_2;
    u32 temp_t3;
    u32 var_a0;
    u32 var_a1;
    u32 var_s2;
    u64 temp_a4;
    u64 temp_a5;
    u64 temp_a7_3;
    void *temp_a6;
    void *temp_v0_4;
    void *temp_v0_5;
    void *var_s1;

    spF0 = arg4;
    spF8 = arg3;
    sp154 = arg2;
    temp_s3 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyValidateTextureState();
        if (temp_v0 != NULL) {
            __glSetError(temp_v0);
        } else {
            temp_v0_2 = __glOdysseyValidateTextureState(&sp154, spF8, 0, 2, temp_s3->unk49C);
            if (temp_v0_2 != NULL) {
                __glSetError(temp_v0_2);
            } else if ((arg0 != 0x8063) && (arg0 != 0x8064) && (arg0 != 0x8070)) {
                if (spF0 != 0) {
                    temp_a1 = temp_s3->unk16418;
                    if (temp_a1 != 0) {
                        __glOdysseyGetCurrentTexture(temp_s3, temp_a1);
                    }
                    temp_v0_3 = __glOdysseyGetCurrentTexture(temp_s3, arg0);
                    temp_a6 = temp_v0_3 + (arg1 * 0x44);
                    var_s1 = temp_a6 + 0x554;
                    if ((temp_a6->unk570 != 0) && (temp_a6->unk574 != 0) && (temp_a6->unk578 != 0)) {
                        spB0 = (s64) temp_v0_3;
                        if (arg0 != 0xDE0) {
                            if (arg0 != 0xDE1) {
                                var_v0 = 0;
                                if (arg0 != 0x806F) {
                                    goto block_18;
                                }
                            }
                            spE8 = (s64) var_s1;
                            temp_v0_4 = __glOdysseySetCurrentFilter((s64) temp_s3, 2);
                            temp_a7 = temp_v0_4->unk0;
                            if ((temp_a7 != 0x8011) && (var_v0 = 0, (temp_a7 != 0x8012))) {
                                var_s1 = (void *) spE8;
block_18:
                                var_a7 = 0;
                            } else {
                                var_v0 = 0;
                                if (temp_v0_4->unk4 != 0x8016) {
                                    var_a7 = 0;
                                    var_s1 = (void *) spE8;
                                } else {
                                    temp_t1 = temp_v0_4->unk44;
                                    temp_t8 = temp_v0_4->unk40;
                                    var_v0 = (temp_t1 >= 1) ? (1 - temp_t1) : 0;
                                    var_a7 = (temp_t8 >= 1) ? (1 - temp_t8) : 0;
                                    var_s1 = (void *) spE8;
                                }
                            }
                        } else {
                            spE8 = (s64) var_s1;
                            temp_v0_5 = __glOdysseySetCurrentFilter((s64) temp_s3, 1);
                            if (temp_v0_5->unk0 != 0x8010) {
                                goto block_55;
                            }
                            if (temp_v0_5->unk4 != 0x8016) {
block_55:
                                var_a7 = 0;
                            } else {
                                temp_t9 = temp_v0_5->unk40;
                                var_a7 = (temp_t9 >= 1) ? (1 - temp_t9) : 0;
                            }
                            var_v0 = 0;
                            var_s1 = (void *) spE8;
                        }
                        temp_t0 = var_s1->unk28;
                        if (temp_t0 != 0) {
                            switch (arg0) {         /* irregular */
                            default:
                                __glSetError((u32 **)0x502);
                                break;
                            case 0xDE0:
                                var_t2 = 0;
                                spD0 = 0;
                                var_t1 = 0x10 - temp_t0;
block_26:
                                spD8 = var_t1;
                                spA8 = var_t2;
                                spA0 = var_v0;
                                goto block_27;
                            case 0x806F:
                                var_t1 = 0x10 - temp_t0;
                                var_t2 = var_t1;
block_45:
                                spD0 = var_t1;
                                goto block_26;
                            case 0xDE1:
                                var_t2 = 0;
                                var_t1 = 0x10 - temp_t0;
                                goto block_45;
                            }
                        } else {
                            spA8 = 0;
                            spD0 = 0;
                            spD8 = 0;
                            spA0 = var_v0;
block_27:
                            unksp120 = var_a7;
                            temp_a1_2 = spB0->unk4FC;
                            temp_f1 = (f32) ((u64) (spD0 << 0x20) >> 0x20);
                            temp_f3 = (f32) ((u64) (spD8 << 0x20) >> 0x20);
                            sp44 = temp_f1;
                            sp40 = temp_f3;
                            spE8 = (s64) var_s1;
                            sp48 = (f32) var_s1->unk1C + temp_f3;
                            sp50 = 0;
                            sp50.unk38 = 0;
                            sp50.unk30 = 0;
                            sp50.unk28 = 0;
                            sp50.unk20 = 0;
                            sp50.unk18 = 0;
                            sp50.unk10 = 0;
                            sp50.unk8 = 0;
                            sp5C = (s32) spF8;
                            sp58 = sp154;
                            sp7C = (s32) spF0;
                            sp88 = 0;
                            unksp54 = 0;
                            sp4C = (f32) var_s1->unk20 + temp_f1;
                            temp_s1 = __glSpecElementsPerGroup((s64) sp154, spF8, __glOdysseyGetCurrentTexture(var_s1->unk0, temp_a1_2, (u32 *)1, (u32 **) 0, NULL, (s32 *) 0, (s32 *)1, (s32 *)1, temp_a1_2, arg1, 0, var_s1->unkC, var_s1->unk1C, var_s1->unk20, var_s1->unk4, var_s1->unk4, var_s1->unk8, 1));
                            var_a0 = temp_s1 * __glSpecBytesPerElement(spF8);
                            if (temp_s3->unk49C != 0x85A3) {
                                sp78 = 0;
                            } else {
                                sp78 = 1;
                                var_a0 = var_a0 >> 1;
                            }
                            var_a1 = temp_s3->unk47C;
                            if (var_a1 == 0) {
                                var_a1 = spE8->unk1C + unksp120;
                            }
                            sp60 = var_a1;
                            var_v0_2 = temp_s3->unk490;
                            if (var_v0_2 == 0) {
                                var_v0_2 = spE8->unk20 + spA0;
                            }
                            sp64 = var_v0_2;
                            temp_a1_3 = temp_s3->unk488;
                            sp68 = (temp_a1_3 >= var_a0) ? temp_a1_3 : var_a0;
                            sp90 = temp_s3->unk484;
                            sp94 = temp_s3->unk480;
                            temp_t3 = temp_s3->unk47C;
                            spB8 = (s64) temp_t3;
                            if (temp_t3 >= (u32) (spE8->unk1C + unksp120)) {
                                temp_s3->unk47C = 0U;
                                if (arg0 == 0x806F) {
                                    goto block_34;
                                }
                                goto block_39;
                            }
                            if (arg0 != 0x806F) {
block_39:
                                __glOdysseyImageXfer(&sp50, sp, &sp40, 0, &sp90);
                            } else {
block_34:
                                temp_a7_2 = ((void *) spE8)->unk10;
                                temp_a4 = (u64) ((s64) sp68 << 0x20) >> 0x20;
                                temp_a5 = (u64) ((sp60 * var_a0) << 0x20) >> 0x20;
                                temp_f13 = (f32) temp_a4;
                                sp98 = (bitwise f64) temp_f13;
                                temp_a3 = (temp_a7_2 * (2 << ((void *) spE8)->unk4)) << 8;
                                spC8 = temp_a3;
                                temp_lo = ((s64) (ceilf((bitwise f32) var_a0, temp_a1_3, 0x806F, (bitwise f32) temp_a3, (bitwise f32) temp_a4, temp_a5, sp60, temp_a7_2, (f32) temp_a5 / temp_f13, temp_f13) * temp_f13) << 0) * sp64;
                                spC0 = temp_lo;
                                var_s1_2 = spF0 + (temp_s3->unk48C * temp_lo);
                                if (spE8->unk24 != 0) {
                                    spE0 = 0;
                                    var_s2 = spC8 * spA8;
                                    do {
                                        sp7C = var_s1_2;
                                        temp_a5_2 = var_s2 >> 4;
                                        __glOdysseyImageXfer(&sp50, sp, &sp40, 0, &sp90, temp_a5_2, temp_a5_2);
                                        temp_a7_3 = spE0 + 1;
                                        spE0 = temp_a7_3;
                                        var_s1_2 += spC0;
                                        var_s2 += spC8;
                                    } while (temp_a7_3 < (u32) spE8->unk24);
                                }
                            }
                            temp_s3->unk47C = (u32) spB8;
                            if (arg0 == 0xDE0) {
                                __glOdysseySetCurrentFilter((s64) temp_s3, 2);
                            }
                        }
                    }
                } else {
                    __glSetError((u32 **)0x502, 0x10000);
                }
            } else {
                __glSetError((u32 **)0x500);
            }
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

/*
Decompilation failure in function __glOdysseyTextureSetSWrap:

Unable to determine jump table for jr instruction at ody_texture.s line 9613.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyTextureSetTWrap:

Unable to determine jump table for jr instruction at ody_texture.s line 9703.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyTextureSetRWrap:

Unable to determine jump table for jr instruction at ody_texture.s line 9796.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdysseyTextureSetMaxLOD(void *arg0) {
    M2C_ERROR(/* unknown instruction: movf.s $f3, $f4, $fcc2 */);
    M2C_ERROR(/* unknown instruction: movf.s $f2, $f3, $fcc1 */);
    arg0->unkA0 = (s32) (arg0->unkA0 | 0x4000);
    arg0->unkCC = (s32) ((s32) (M2C_ERROR(/* unknown instruction: movf.s $f0, $f2, $fcc0 */) * 256.0f) & 0x3FFF);
}

/*
Decompilation failure in function __glOdysseyTextureSetMinFilter:

Unable to determine jump table for jr instruction at ody_texture.s line 10136.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyTextureSetMagFilter:

Unable to determine jump table for jr instruction at ody_texture.s line 10291.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyTextureSetDetailLevel:

Unable to determine jump table for jr instruction at ody_texture.s line 10406.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyTextureSetDetailMode:

Unable to determine jump table for jr instruction at ody_texture.s line 10449.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyTextureSetMaxClamp:

Unable to determine jump table for jr instruction at ody_texture.s line 10520.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_TexParameterfv(u32 arg0, u64 arg1, u64 arg2) {
    u64 sp8;
    u64 sp0;
    f32 temp_f12;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a0;
    s32 var_a1;
    s32 var_ra;
    u32 **temp_v0;

    sp0 = arg2;
    temp_a1 = *(s32 *)0x1010;
    sp8 = (u64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetCurrentTexture((u32 **) sp8, arg0, (u32 *)0x120000);
        var_a1 = 0x813C;
        if (temp_v0 != NULL) {
            temp_a3 = arg1 < 0x813CU;
            temp_a4 = arg1 > 0x813CU;
            if (temp_a3 == 0) {
                if (temp_a4 == 0) {
                    temp_f4 = sp0->unk0;
                    unksp20 = (s64) temp_v0;
                    if (!(temp_f4 < 0.0f)) {
                        unksp20->unk500 = 1;
                        unksp20->unk5C = (s32) temp_f4;
                        __glOdyim_GetTexImage((u32 **) unksp20, 0x813C);
                        unksp20->unk10 = 2;
                        var_ra = unksp20->unkA0 | 0x200;
                        goto block_6;
                    }
                    goto block_37;
                }
                temp_a4_2 = arg1 < 0x8190U;
                temp_a5 = arg1 > 0x8190U;
                if (temp_a4_2 == 0) {
                    if (temp_a5 == 0) {
                        temp_v0->unk6C = (f32) sp0->unk0;
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    if (arg1 >= 0x8369U) {
                        if (arg1 > 0x8369U) {
                            var_a1 = 0x836B;
                            temp_a2 = arg1 < 0x836BU;
                            if (temp_a2 == 0) {
                                temp_a3_2 = arg1 > 0x836BU;
                                if (temp_a3_2 == 0) {
                                    __glOdyim_GetTexImage(temp_v0, (s32) (temp_v0 + 0x50), temp_a2, temp_a3_2, (s32) sp0, temp_a5);
                                    /* Duplicate return node #7. Try simplifying control flow for better match */
                                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                goto block_36;
                            }
                            if (arg1 == 0x836A) {
                                __glOdyim_GetTexImage(temp_v0, (s32) (temp_v0 + 0x4C), temp_a2, temp_a3, temp_a4_2, temp_a5);
                                /* Duplicate return node #7. Try simplifying control flow for better match */
                                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_36;
                        }
                        __glOdyim_GetTexImage(temp_v0, (s32) (temp_v0 + 0x48));
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    var_a1 = 0x819A;
                    if (arg1 >= 0x819BU) {
                        if ((arg1 <= 0x819BU) && ((temp_v0_2 = (s64) sp0->unk0 << 0, (temp_v0_2 == 0x819C)) || (temp_v0_2 == 0x819D))) {
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_36;
                    }
                    if ((arg1 == 0x819A) && ((temp_v0_3 = (s64) sp0->unk0 << 0, (temp_v0_3 == 0)) || (temp_v0_3 == 1))) {
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_36;
                }
                if (arg1 >= 0x817AU) {
                    var_a1 = 0x818F;
                    if (arg1 > 0x817AU) {
                        if (arg1 >= 0x818FU) {
                            unksp20 = (s64) temp_v0;
                            if (arg1 <= 0x818FU) {
                                unksp20->unk68 = (f32) sp0->unk0;
                                unksp20->unkC4 = __glOdysseyTextureDriverDestroy((bitwise u32 **) sp0->unk0);
                                var_ra = unksp20->unkA0 | 0x4000;
                                goto block_6;
                            }
                            goto block_36;
                        }
                        unksp20 = (s64) temp_v0;
                        if (arg1 != 0x818E) {
                            goto block_36;
                        }
                        unksp20->unk64 = (f32) sp0->unk0;
                        unksp20->unkC0 = __glOdysseyTextureDriverDestroy((bitwise u32 **) sp0->unk0);
                        var_ra = unksp20->unkA0 | 0x4000;
block_6:
                        ((void *) unksp20)->unkA0 = var_ra;
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    unksp20 = (s64) temp_v0;
                    unksp20->unk80 = (f32) sp0->unk0;
                    unksp20->unk84 = (u32 **) sp0->unk4;
                    unksp20->unk88 = (u32 **) sp0->unk8;
                    unksp20->unk8C = (u32 **) sp0->unkC;
                    unksp20->unkDC = __glOdysseyTextureDriverDestroy((bitwise u32 **) sp0->unk0);
                    unksp20->unkE4 = __glOdysseyTextureDriverDestroy(sp0->unk4);
                    unksp20->unkEC = __glOdysseyTextureDriverDestroy(sp0->unk8);
                    unksp20->unkF4 = __glOdysseyTextureDriverDestroy(sp0->unkC);
                    unksp20->unkA0 = (s32) (0x10000 | unksp20->unkA0);
                    /* Duplicate return node #7. Try simplifying control flow for better match */
                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                    return;
                }
                var_a1 = 0x8179;
                if (arg1 >= 0x8179U) {
                    unksp20 = (s64) temp_v0;
                    if (arg1 <= 0x8179U) {
                        unksp20->unk70 = (f32) sp0->unk0;
                        unksp20->unk74 = (u32 **) sp0->unk4;
                        unksp20->unk78 = (u32 **) sp0->unk8;
                        unksp20->unk7C = (u32 **) sp0->unkC;
                        unksp20->unkE0 = __glOdysseyTextureDriverDestroy((bitwise u32 **) sp0->unk0);
                        unksp20->unkE8 = __glOdysseyTextureDriverDestroy(sp0->unk4);
                        unksp20->unkF0 = __glOdysseyTextureDriverDestroy(sp0->unk8);
                        unksp20->unkF8 = __glOdysseyTextureDriverDestroy(sp0->unkC);
                        unksp20->unkA0 = (s32) (0x10000 | unksp20->unkA0);
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_36;
                }
                var_a1 = 0x813D;
                if (arg1 == 0x813D) {
                    temp_f4_2 = sp0->unk0;
                    unksp20 = (s64) temp_v0;
                    if (!(temp_f4_2 < 0.0f)) {
                        unksp20->unk500 = 1;
                        unksp20->unk60 = (s32) temp_f4_2;
                        __glOdyim_GetTexImage((u32 **) unksp20, 0x813D, (s32) sp0, 1, temp_a4_2, temp_a5);
                        unksp20->unk10 = 2;
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_37;
                }
                goto block_36;
            }
            var_a1 = 0x8072;
            if (arg1 >= 0x8072U) {
                if (arg1 > 0x8072U) {
                    temp_a2_2 = arg1 < 0x80BFU;
                    temp_a3_3 = arg1 > 0x80BFU;
                    if (temp_a2_2 == 0) {
                        var_a1 = 0x813B;
                        if (temp_a3_3 == 0) {
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        if (arg1 >= 0x813BU) {
                            if (arg1 <= 0x813BU) {
                                temp_f12 = sp0->unk0;
                                temp_v0->unk58 = temp_f12;
                                __glOdyim_GetTexImage(temp_v0, 0x813B, temp_a2_2, temp_a3_3, temp_a4, (bitwise s32) temp_f12);
                                /* Duplicate return node #7. Try simplifying control flow for better match */
                                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_36;
                        }
                        if (arg1 == 0x813A) {
                            temp_v0->unk54 = (f32) sp0->unk0;
                            temp_f4_3 = sp0->unk0;
                            var_a0 = 0x3100;
                            if (temp_f4_3 < -15.0f) {
                                goto block_80;
                            }
                            if (temp_f4_3 > 15.0f) {
                                temp_v0->unkC8 = 0xF00;
                            } else {
                                var_a0 = (s32) (temp_f4_3 * 256.0f) & 0x3FFF;
block_80:
                                temp_v0->unkC8 = var_a0;
                            }
                            temp_v0->unkA0 = (s32) (temp_v0->unkA0 | 0x4000);
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_36;
                    }
                    var_a1 = 0x809B;
                    if (arg1 >= 0x809BU) {
                        if (arg1 <= 0x809BU) {
                            __glOdyim_GetTexImage(temp_v0, (s32) sp0->unk0, temp_a2_2, temp_a3_3, temp_a4);
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_36;
                    }
                    if (arg1 == 0x809A) {
                        __glOdyim_GetTexImage(temp_v0, (s32) sp0->unk0, temp_a2_2, temp_a3_3, temp_a4);
                        /* Duplicate return node #7. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_36;
                }
                __glOdyim_GetTexImage(temp_v0, (s32) sp0->unk0);
                /* Duplicate return node #7. Try simplifying control flow for better match */
                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                *(void *)0x1018 = 2;
                return;
            }
            if (arg1 >= 0x2802U) {
                if (arg1 >= 0x2803U) {
                    var_a1 = 0x8066;
                    if (arg1 >= 0x8066U) {
                        if (arg1 <= 0x8066U) {
                            temp_f4_4 = sp0->unk0;
                            if (!(temp_f4_4 < 0.0f)) {
                                temp_v0->unk3C = temp_f4_4;
                                /* Duplicate return node #7. Try simplifying control flow for better match */
                                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                *(void *)0x1018 = 2;
                                return;
                            }
block_37:
                            __glSetError((u32 **)0x501, var_a1);
                        } else {
                            goto block_36;
                        }
                    } else {
                        if (arg1 == 0x2803) {
                            __glOdyim_GetTexImage(temp_v0, (s32) sp0->unk0);
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_36;
                    }
                } else {
                    __glOdyim_GetTexImage(temp_v0, (s32) sp0->unk0);
                    /* Duplicate return node #7. Try simplifying control flow for better match */
                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                }
            } else {
                if (arg1 >= 0x2800U) {
                    if (arg1 >= 0x2801U) {
                        if (arg1 == 0x2801) {
                            __glOdyim_GetTexImage(temp_v0, (s32) sp0->unk0);
                            /* Duplicate return node #7. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_36;
                    }
                    __glOdyim_GetTexImage(temp_v0, (s32) sp0->unk0);
                    /* Duplicate return node #7. Try simplifying control flow for better match */
                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                    return;
                }
                unksp20 = (s64) temp_v0;
                if (arg1 == 0x1004) {
                    __glClampColorf(sp8, unksp20 + 0x2C, sp0, temp_a3, temp_a4);
                    temp_a0 = __glOdysseyTextureDriverDestroy((bitwise u32 **) sp0->unk0) << 0xC;
                    unksp20->unkB8 = (s32) ((0xFFF000 & temp_a0) | (0xFF000FFF & unksp20->unkB8));
                    temp_a0_2 = unksp20->unkB8;
                    unksp20->unkB8 = (s32) ((__glOdysseyTextureDriverDestroy((u32 **) temp_a0, (u32 **)0xFF000000, sp0->unk4) & 0xFFF) | (-0x1000 & temp_a0_2));
                    unksp20->unkBC = (s32) ((0xFFF000 & (__glOdysseyTextureDriverDestroy((u32 **) temp_a0_2, sp0->unk8) << 0xC)) | (0xFF000FFF & unksp20->unkBC));
                    temp_v0_4 = __glOdysseyTextureDriverDestroy(sp0->unkC) & 0xFFF;
                    unksp20->unkA0 = (s32) (unksp20->unkA0 | 0x200);
                    unksp20->unkBC = (s32) (temp_v0_4 | (-0x1000 & unksp20->unkBC));
                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                    return;
                }
                goto block_36;
            }
        } else {
block_36:
            __glSetError((u32 **)0x500, var_a1);
        }
    } else {
        __glSetError((u32 **)0x502, temp_a1, 0x120000U);
    }
}

void __glOdyim_TexParameterf(u32 arg1, s32 arg2, u64 arg4, s32 arg5, s32 arg6, s32 arg7, f32 fparg2) {
    f32 sp20;
    s32 var_a2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    u64 var_a3;
    u64 var_a4;

    var_a2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a3 = 0x813C;
    sp20 = fparg2;
    if (arg1 >= 0x813CU) {
        if (arg1 > 0x813CU) {
            var_a2 = arg1 > 0x8190U;
            if (arg1 >= 0x8190U) {
                var_a3 = 0x8369;
                if (var_a2 != 0) {
                    var_a4 = arg1 < 0x8369U;
                    var_a5 = arg1 > 0x8369U;
                    if (var_a4 == 0) {
                        var_a4 = 0x836A;
                        if (var_a5 != 0) {
                            var_a3 = 0x836B;
                            var_a6 = arg1 < 0x836BU;
                            var_a7 = arg1 > 0x836BU;
                            if (var_a6 == 0) {
                                if (var_a7 != 0) {
                                    goto block_40;
                                }
                                goto block_23;
                            }
                            if (arg1 != 0x836A) {
                                goto block_40;
                            }
                            goto block_23;
                        }
                        goto block_23;
                    }
                    var_a3 = 0x819B;
                    if (arg1 >= 0x819BU) {
                        if (arg1 > 0x819BU) {
                            goto block_40;
                        }
                        goto block_23;
                    }
                    if (arg1 != 0x819A) {
                        goto block_40;
                    }
                    goto block_23;
                }
                goto block_23;
            }
            var_a3 = 0x817A;
            var_a2 = arg1 < 0x817AU;
            var_a4 = arg1 > 0x817AU;
            if (var_a2 == 0) {
                var_a2 = 0x818E;
                if (var_a4 != 0) {
                    var_a3 = 0x818F;
                    var_a5 = arg1 < 0x818FU;
                    var_a6 = arg1 > 0x818FU;
                    if (var_a5 == 0) {
                        if (var_a6 != 0) {
                            goto block_40;
                        }
                        goto block_23;
                    }
                    if (arg1 != 0x818E) {
                        goto block_40;
                    }
                    goto block_23;
                }
                goto block_23;
            }
            var_a3 = 0x8179;
            var_a7 = arg1 < 0x8179U;
            if (var_a7 == 0) {
                if (arg1 > 0x8179U) {
                    goto block_40;
                }
                goto block_23;
            }
            if (arg1 != 0x813D) {
                goto block_40;
            }
            goto block_23;
        }
        goto block_23;
    }
    if (arg1 >= 0x8072U) {
        var_a3 = 0x80BF;
        if (arg1 > 0x8072U) {
            if (arg1 >= 0x80BFU) {
                var_a3 = 0x813B;
                if (arg1 > 0x80BFU) {
                    if (arg1 >= 0x813BU) {
                        if (arg1 > 0x813BU) {
                            goto block_40;
                        }
                        goto block_23;
                    }
                    var_a3 = 0x813A;
                    if (arg1 != 0x813A) {
                        goto block_40;
                    }
                    goto block_23;
                }
                goto block_23;
            }
            var_a3 = 0x809B;
            if (arg1 >= 0x809BU) {
                if (arg1 > 0x809BU) {
                    goto block_40;
                }
                goto block_23;
            }
            if (arg1 != 0x809A) {
                goto block_40;
            }
            goto block_23;
        }
        goto block_23;
    }
    var_a3 = arg1 < 0x2802U;
    if (var_a3 == 0) {
        if (arg1 >= 0x2803U) {
            var_a3 = 0x8066;
            if (arg1 >= 0x8066U) {
                if (arg1 > 0x8066U) {
                    goto block_40;
                }
                goto block_23;
            }
            if (arg1 != 0x2803) {
                goto block_40;
            }
            goto block_23;
        }
        goto block_23;
    }
    if (arg1 >= 0x2801U) {
        if (var_a3 != 0) {
            goto block_23;
        }
        goto block_40;
    }
    if (arg1 != 0x2800) {
block_40:
        __glSetError((u32 **)0x500, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    } else {
block_23:
        __glOdyim_TexParameterfv((u32) &sp20, var_a3, var_a4, var_a5, var_a6, var_a7);
    }
}

void __glOdyim_TexParameteriv(u32 arg0, u64 arg1, u64 arg2) {
    s64 sp28;
    u64 sp8;
    u64 sp0;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f13_4;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f15;
    f32 temp_f15_2;
    f32 temp_f16;
    f32 temp_f16_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a7;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a1;
    u32 **temp_v0;
    u32 temp_a5_6;
    u32 temp_t1;
    u32 temp_t8_2;

    sp0 = arg2;
    temp_a1 = *(s32 *)0x1010;
    sp8 = (u64) temp_a1;
    if (*(s32 *)0x1018 != 1) {
        temp_v0 = __glOdysseyGetCurrentTexture((u32 **) sp8, arg0, (u32 *)0x120000);
        var_a1 = 0x813C;
        if (temp_v0 != NULL) {
            temp_a3 = arg1 < 0x813CU;
            temp_a4 = arg1 > 0x813CU;
            if (temp_a3 == 0) {
                if (temp_a4 == 0) {
                    temp_a5 = sp0->unk0;
                    sp28 = (s64) temp_v0;
                    if (temp_a5 >= 0) {
                        sp28->unk500 = 1;
                        sp28->unk5C = temp_a5;
                        __glOdyim_GetTexImage((u32 **) sp28, 0x813C);
                        sp28->unk10 = 2;
                        sp28->unkA0 = (s32) (sp28->unkA0 | 0x200);
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_68;
                }
                if (arg1 >= 0x8190U) {
                    var_a1 = 0x8369;
                    if (arg1 <= 0x8190U) {
                        temp_v0->unk6C = (f32) sp0->unk0;
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    if (arg1 >= 0x8369U) {
                        if (arg1 > 0x8369U) {
                            var_a1 = 0x836B;
                            if (arg1 >= 0x836BU) {
                                if (arg1 <= 0x836BU) {
                                    __glOdyim_GetTexImage(temp_v0, (s32) (temp_v0 + 0x50));
                                    /* Duplicate return node #6. Try simplifying control flow for better match */
                                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                    *(void *)0x1018 = 2;
                                    return;
                                }
                                goto block_32;
                            }
                            if (arg1 == 0x836A) {
                                __glOdyim_GetTexImage(temp_v0, (s32) (temp_v0 + 0x4C));
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_32;
                        }
                        __glOdyim_GetTexImage(temp_v0, (s32) (temp_v0 + 0x48));
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    if (arg1 >= 0x819BU) {
                        if (arg1 <= 0x819BU) {
                            temp_a5_2 = sp0->unk0;
                            if (temp_a5_2 != 0x819C) {
                                if (temp_a5_2 == 0x819D) {
                                    goto block_58;
                                }
                                goto block_32;
                            }
block_58:
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_32;
                    }
                    if (arg1 == 0x819A) {
                        temp_a5_3 = sp0->unk0;
                        if (temp_a5_3 != 0) {
                            if (temp_a5_3 == 1) {
                                goto block_74;
                            }
                            goto block_32;
                        }
block_74:
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_32;
                }
                if (arg1 >= 0x817AU) {
                    var_a1 = 0x818F;
                    if (arg1 > 0x817AU) {
                        if (arg1 >= 0x818FU) {
                            sp28 = (s64) temp_v0;
                            if (arg1 <= 0x818FU) {
                                temp_f13 = (f32) sp0->unk0;
                                sp28->unk68 = temp_f13;
                                sp28->unkC4 = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unk0, (bitwise u32 **) temp_f13);
                                sp28->unkA0 = (s32) (sp28->unkA0 | 0x4000);
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_32;
                        }
                        sp28 = (s64) temp_v0;
                        if (arg1 == 0x818E) {
                            temp_f13_2 = (f32) sp0->unk0;
                            sp28->unk64 = temp_f13_2;
                            sp28->unkC0 = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unk0, (bitwise u32 **) temp_f13_2);
                            sp28->unkA0 = (s32) (sp28->unkA0 | 0x4000);
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_32;
                    }
                    temp_a0 = sp0->unk0;
                    sp28 = (s64) temp_v0;
                    temp_f16 = (f32) temp_a0;
                    sp28->unk80 = temp_f16;
                    temp_f15 = (f32) sp0->unk4;
                    sp28->unk84 = temp_f15;
                    temp_f14 = (f32) sp0->unk8;
                    sp28->unk88 = temp_f14;
                    temp_f13_3 = (f32) sp0->unkC;
                    sp28->unk8C = temp_f13_3;
                    sp28->unkDC = __glOdysseyTextureDriverDestroy((u32 **) temp_a0, (u32 **)0x818F, (bitwise u32 **) (f32) sp0->unk0, temp_f13_3, temp_f14, temp_f15, temp_f16);
                    sp28->unkE4 = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unk4);
                    sp28->unkEC = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unk8);
                    sp28->unkF4 = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unkC);
                    sp28->unkA0 = (s32) (0x10000 | sp28->unkA0);
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                    return;
                }
                var_a1 = 0x8179;
                if (arg1 >= 0x8179U) {
                    sp28 = (s64) temp_v0;
                    if (arg1 <= 0x8179U) {
                        temp_a0_2 = sp0->unk0;
                        temp_f16_2 = (f32) temp_a0_2;
                        sp28->unk70 = temp_f16_2;
                        temp_f15_2 = (f32) sp0->unk4;
                        sp28->unk74 = temp_f15_2;
                        temp_f14_2 = (f32) sp0->unk8;
                        sp28->unk78 = temp_f14_2;
                        temp_f13_4 = (f32) sp0->unkC;
                        sp28->unk7C = temp_f13_4;
                        sp28->unkE0 = __glOdysseyTextureDriverDestroy((u32 **) temp_a0_2, (u32 **)0x8179, (bitwise u32 **) (f32) sp0->unk0, temp_f13_4, temp_f14_2, temp_f15_2, temp_f16_2);
                        sp28->unkE8 = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unk4);
                        sp28->unkF0 = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unk8);
                        sp28->unkF8 = __glOdysseyTextureDriverDestroy((bitwise u32 **) (f32) sp0->unkC);
                        sp28->unkA0 = (s32) (0x10000 | sp28->unkA0);
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_32;
                }
                if (arg1 == 0x813D) {
                    temp_a5_4 = sp0->unk0;
                    sp28 = (s64) temp_v0;
                    if (temp_a5_4 >= 0) {
                        sp28->unk500 = 1;
                        sp28->unk60 = temp_a5_4;
                        __glOdyim_GetTexImage((u32 **) sp28, 0x8179);
                        sp28->unk10 = 2;
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_68;
                }
                goto block_32;
            }
            if (arg1 >= 0x8072U) {
                if (arg1 > 0x8072U) {
                    temp_a2 = arg1 < 0x80BFU;
                    temp_a3_2 = arg1 > 0x80BFU;
                    if (temp_a2 == 0) {
                        if (temp_a3_2 == 0) {
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        var_a1 = 0x813B;
                        if (arg1 >= 0x813BU) {
                            if (arg1 <= 0x813BU) {
                                temp_v0->unk58 = (f32) sp0->unk0;
                                __glOdyim_GetTexImage(temp_v0, 0x813B, temp_a2, temp_a3_2, temp_a4);
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                *(void *)0x1018 = 2;
                                return;
                            }
                            goto block_32;
                        }
                        if (arg1 == 0x813A) {
                            temp_v0->unk54 = (f32) sp0->unk0;
                            temp_a1_2 = sp0->unk0;
                            if (temp_a1_2 < -0xF) {
                                temp_v0->unkC8 = 0x3100;
                            } else if (temp_a1_2 >= 0x10) {
                                temp_v0->unkC8 = 0xF00;
                            } else {
                                temp_v0->unkC8 = (s32) ((temp_a1_2 << 8) & 0x3FFF);
                            }
                            temp_v0->unkA0 = (s32) (temp_v0->unkA0 | 0x4000);
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_32;
                    }
                    var_a1 = 0x809B;
                    if (arg1 >= 0x809BU) {
                        if (arg1 <= 0x809BU) {
                            __glOdyim_GetTexImage(temp_v0, sp0->unk0, temp_a2, temp_a3_2, temp_a4);
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_32;
                    }
                    if (arg1 == 0x809A) {
                        __glOdyim_GetTexImage(temp_v0, sp0->unk0, temp_a2, temp_a3_2, temp_a4);
                        /* Duplicate return node #6. Try simplifying control flow for better match */
                        sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                        *(void *)0x1018 = 2;
                        return;
                    }
                    goto block_32;
                }
                __glOdyim_GetTexImage(temp_v0, sp0->unk0);
                /* Duplicate return node #6. Try simplifying control flow for better match */
                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                *(void *)0x1018 = 2;
                return;
            }
            if (arg1 >= 0x2802U) {
                var_a1 = 0x8066;
                if (arg1 >= 0x2803U) {
                    if (arg1 >= 0x8066U) {
                        if (arg1 <= 0x8066U) {
                            temp_a5_5 = sp0->unk0;
                            if (temp_a5_5 >= 0) {
                                temp_v0->unk3C = (f32) temp_a5_5;
                                /* Duplicate return node #6. Try simplifying control flow for better match */
                                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                                *(void *)0x1018 = 2;
                                return;
                            }
block_68:
                            __glSetError((u32 **)0x501, var_a1);
                        } else {
                            goto block_32;
                        }
                    } else {
                        if (arg1 == 0x2803) {
                            __glOdyim_GetTexImage(temp_v0, sp0->unk0);
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_32;
                    }
                } else {
                    __glOdyim_GetTexImage(temp_v0, sp0->unk0);
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                }
            } else {
                var_a1 = arg1 < 0x2801U;
                if (arg1 >= 0x2800U) {
                    if (var_a1 == 0) {
                        if (arg1 == 0x2801) {
                            __glOdyim_GetTexImage(temp_v0, sp0->unk0, 0x2801, temp_a3, temp_a4);
                            /* Duplicate return node #6. Try simplifying control flow for better match */
                            sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                            *(void *)0x1018 = 2;
                            return;
                        }
                        goto block_32;
                    }
                    __glOdyim_GetTexImage(temp_v0, sp0->unk0);
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                    *(void *)0x1018 = 2;
                    return;
                }
                sp28 = (s64) temp_v0;
                if (arg1 != 0x1004) {
                    goto block_32;
                }
                __glClampColori(sp8, sp28 + 0x2C, sp0, temp_a3, temp_a4);
                temp_t8 = sp0->unk0;
                temp_t3 = (0xFF000FFF & sp28->unkB8) | (0xFFF000 & ((((u32) (temp_t8 & (((u32) temp_t8 >> 0x1F) - 1)) >> 0x13) & 0xFFF) << 0xC));
                sp28->unkB8 = temp_t3;
                temp_t8_2 = sp0->unk4;
                sp28->unkB8 = (s32) ((-0x1000 & temp_t3) | (((u32) (temp_t8_2 & ((temp_t8_2 >> 0x1F) - 1)) >> 0x13) & 0xFFF));
                temp_t1 = sp0->unk8;
                temp_a7 = (0xFF000FFF & sp28->unkBC) | (0xFFF000 & ((((u32) (temp_t1 & ((temp_t1 >> 0x1F) - 1)) >> 0x13) & 0xFFF) << 0xC));
                sp28->unkBC = temp_a7;
                temp_a5_6 = sp0->unkC;
                sp28->unkA0 = (s32) (sp28->unkA0 | 0x200);
                sp28->unkBC = (s32) ((-0x1000 & temp_a7) | (((u32) (temp_a5_6 & ((temp_a5_6 >> 0x1F) - 1)) >> 0x13) & 0xFFF));
                sp8->unk16964 = (s32) (sp8->unk16964 | 0x200);
                *(void *)0x1018 = 2;
            }
        } else {
block_32:
            __glSetError((u32 **)0x500, var_a1);
        }
    } else {
        __glSetError((u32 **)0x502, temp_a1, 0x120000U);
    }
}

void __glOdyim_TexParameteri(u64 arg1, s32 arg2, u64 arg3, s32 arg5, s32 arg6, s32 arg7) {
    s32 sp24;
    s32 var_a2;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    u64 var_a3;
    u64 var_a4;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    var_a4 = 0x813C;
    sp24 = var_a2;
    if (arg1 >= 0x813CU) {
        if (arg1 > 0x813CU) {
            var_a2 = arg1 > 0x8190U;
            if (arg1 >= 0x8190U) {
                var_a3 = 0x8369;
                if (var_a2 != 0) {
                    var_a4 = arg1 < 0x8369U;
                    var_a5 = arg1 > 0x8369U;
                    if (var_a4 == 0) {
                        var_a4 = 0x836A;
                        if (var_a5 != 0) {
                            var_a3 = 0x836B;
                            var_a6 = arg1 < 0x836BU;
                            var_a7 = arg1 > 0x836BU;
                            if (var_a6 == 0) {
                                if (var_a7 != 0) {
                                    goto block_40;
                                }
                                goto block_23;
                            }
                            if (arg1 != 0x836A) {
                                goto block_40;
                            }
                            goto block_23;
                        }
                        goto block_23;
                    }
                    var_a3 = 0x819B;
                    if (arg1 >= 0x819BU) {
                        if (arg1 > 0x819BU) {
                            goto block_40;
                        }
                        goto block_23;
                    }
                    if (arg1 != 0x819A) {
                        goto block_40;
                    }
                    goto block_23;
                }
                goto block_23;
            }
            var_a3 = 0x817A;
            var_a2 = arg1 < 0x817AU;
            var_a4 = arg1 > 0x817AU;
            if (var_a2 == 0) {
                var_a2 = 0x818E;
                if (var_a4 != 0) {
                    var_a3 = 0x818F;
                    var_a5 = arg1 < 0x818FU;
                    var_a6 = arg1 > 0x818FU;
                    if (var_a5 == 0) {
                        if (var_a6 != 0) {
                            goto block_40;
                        }
                        goto block_23;
                    }
                    if (arg1 != 0x818E) {
                        goto block_40;
                    }
                    goto block_23;
                }
                goto block_23;
            }
            var_a3 = 0x8179;
            var_a7 = arg1 < 0x8179U;
            if (var_a7 == 0) {
                if (arg1 > 0x8179U) {
                    goto block_40;
                }
                goto block_23;
            }
            if (arg1 != 0x813D) {
                goto block_40;
            }
            goto block_23;
        }
        goto block_23;
    }
    if (arg1 >= 0x8072U) {
        var_a3 = 0x80BF;
        if (arg1 > 0x8072U) {
            if (arg1 >= 0x80BFU) {
                var_a3 = 0x813B;
                if (arg1 > 0x80BFU) {
                    if (arg1 >= 0x813BU) {
                        if (arg1 > 0x813BU) {
                            goto block_40;
                        }
                        goto block_23;
                    }
                    var_a3 = 0x813A;
                    if (arg1 != 0x813A) {
                        goto block_40;
                    }
                    goto block_23;
                }
                goto block_23;
            }
            var_a3 = 0x809B;
            if (arg1 >= 0x809BU) {
                if (arg1 > 0x809BU) {
                    goto block_40;
                }
                goto block_23;
            }
            if (arg1 != 0x809A) {
                goto block_40;
            }
            goto block_23;
        }
        goto block_23;
    }
    var_a3 = arg1 < 0x2802U;
    if (var_a3 == 0) {
        if (arg1 >= 0x2803U) {
            var_a3 = 0x8066;
            if (arg1 >= 0x8066U) {
                if (arg1 > 0x8066U) {
                    goto block_40;
                }
                goto block_23;
            }
            if (arg1 != 0x2803) {
                goto block_40;
            }
            goto block_23;
        }
        goto block_23;
    }
    if (arg1 >= 0x2801U) {
        if (var_a3 != 0) {
            goto block_23;
        }
        goto block_40;
    }
    if (arg1 != 0x2800) {
block_40:
        __glSetError((u32 **)0x500, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    } else {
block_23:
        __glOdyim_TexParameteriv((u32) &sp24, var_a3, var_a4, var_a5, var_a6, var_a7);
    }
}

/*
Decompilation failure in function __glOdysseyTextureSetOp:

Unable to determine jump table for jr instruction at ody_texture.s line 12689.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdyim_TexEnvfv(u64 arg0, s32 arg1, s32 arg2) {
    s64 sp10;
    s64 sp8;
    u64 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a5;
    s64 temp_a1;
    s64 temp_a4;
    void *var_a1;

    temp_a5 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x2300) {
            __glSetError((u32 **)0x500, 0x2200, arg0, (u64) temp_a5, arg2);
        } else {
            sp0 = (u64) temp_a5;
            if (arg1 != 0x2200) {
                if (arg1 != 0x2201) {
                    __glSetError((u32 **)0x500, 0x2200, 0x2201U, arg0, temp_a5, arg2);
                } else {
                    temp_a4 = arg0 * 0x24;
                    sp8 = temp_a4;
                    temp_a1 = sp0->unk9B4 + temp_a4 + 0xFFFB1404;
                    sp10 = temp_a1;
                    __glClampColorf(sp0, temp_a1, (u64) arg2, 0xFFFB1404, (s32) temp_a4, arg0 * 8, arg2);
                    if (*(0xFFFB1400 + (s32) (sp0->unk9B4 + sp8)) == 0x104) {
                        sp0->unk7CB8 = (s32) (0xFFF000 | sp0->unk7CB8 | 0xFFF);
                        sp0->unk7CB4 = (s32) (0xFFF000 | sp0->unk7CB4 | 0xFFF);
                    } else {
                        temp_a1_2 = sub_0d9d0000(sp0, sp10->unk0) << 0xC;
                        temp_a0 = sp0->unk7CB4;
                        sp0->unk7CB4 = (s32) ((0xFFF000 & temp_a1_2) | (0xFF000FFF & temp_a0));
                        temp_a1_3 = sp0->unk7CB4;
                        sp0->unk7CB4 = (s32) ((sub_0d9d0000((u64) temp_a0, (s8 *) temp_a1_2, 0xFF000000, sp10->unk4) & 0xFFF) | (-0x1000 & temp_a1_3));
                        temp_a0_2 = sp0->unk7CB8;
                        sp0->unk7CB8 = (s32) ((0xFFF000 & (sub_0d9d0000(-0x1000U, (s8 *) temp_a1_3, sp10->unk8) << 0xC)) | (0xFF000FFF & temp_a0_2));
                        sp0->unk7CB8 = (s32) ((sub_0d9d0000((u64) temp_a0_2, sp10->unkC) & 0xFFF) | (-0x1000 & sp0->unk7CB8));
                    }
                    var_a1 = sp0 + 0x10000;
                    sp0->unk16960 = (s32) (sp0->unk16960 | 0x100);
                    *(void *)0x1018 = 2;
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    var_a1->unk6964 = (s32) (var_a1->unk6964 | 0x200);
                    *(void *)0x1018 = 2;
                }
            } else {
                __glOdyim_TexParameteri(sp0, (s32) arg0, (s64) *arg2 << 0, (s32) arg0, temp_a5, arg2);
                var_a1 = sp0 + 0x10000;
                var_a1->unk6964 = (s32) (var_a1->unk6964 | 0x200);
                *(void *)0x1018 = 2;
            }
        }
    } else {
        __glSetError((u32 **)0x502, (s32) arg0, (u64) temp_a5, (u64) arg2);
    }
}

void __glOdyim_TexEnvf(s32 arg1, f32 fparg2) {
    f32 sp20;

    sp20 = fparg2;
    if (arg1 != 0x2200) {
        __glSetError((u32 **)0x500);
    } else {
        __glOdyim_TexEnvfv((u64) &sp20);
    }
}

void __glOdyim_TexEnviv(u64 arg0, s32 arg1, s32 arg2) {
    s64 sp10;
    s64 sp8;
    u64 sp0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a5;
    s64 temp_a1;
    s64 temp_a4;
    void *var_a1;

    temp_a5 = *(s32 *)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0x2300) {
            __glSetError((u32 **)0x500, 0x2200, arg0, (u64) temp_a5, arg2);
        } else {
            sp0 = (u64) temp_a5;
            if (arg1 != 0x2200) {
                if (arg1 != 0x2201) {
                    __glSetError((u32 **)0x500, 0x2200, 0x2201U, arg0, temp_a5, arg2);
                } else {
                    temp_a4 = arg0 * 0x24;
                    sp8 = temp_a4;
                    temp_a1 = sp0->unk9B4 + temp_a4 + 0xFFFB1404;
                    sp10 = temp_a1;
                    __glClampColori(sp0, temp_a1, (u64) arg2, 0xFFFB1404, (s32) temp_a4, arg0 * 8, arg2);
                    if (*(0xFFFB1400 + (s32) (sp0->unk9B4 + sp8)) == 0x104) {
                        sp0->unk7CB8 = (s32) (0xFFF000 | sp0->unk7CB8 | 0xFFF);
                        sp0->unk7CB4 = (s32) (0xFFF000 | sp0->unk7CB4 | 0xFFF);
                    } else {
                        temp_a1_2 = sub_0d9d0000(sp0, sp10->unk0) << 0xC;
                        temp_a0 = sp0->unk7CB4;
                        sp0->unk7CB4 = (s32) ((0xFFF000 & temp_a1_2) | (0xFF000FFF & temp_a0));
                        temp_a1_3 = sp0->unk7CB4;
                        sp0->unk7CB4 = (s32) ((sub_0d9d0000((u64) temp_a0, (s8 *) temp_a1_2, 0xFF000000, sp10->unk4) & 0xFFF) | (-0x1000 & temp_a1_3));
                        temp_a0_2 = sp0->unk7CB8;
                        sp0->unk7CB8 = (s32) ((0xFFF000 & (sub_0d9d0000(-0x1000U, (s8 *) temp_a1_3, sp10->unk8) << 0xC)) | (0xFF000FFF & temp_a0_2));
                        sp0->unk7CB8 = (s32) ((sub_0d9d0000((u64) temp_a0_2, sp10->unkC) & 0xFFF) | (-0x1000 & sp0->unk7CB8));
                    }
                    var_a1 = sp0 + 0x10000;
                    sp0->unk16960 = (s32) (sp0->unk16960 | 0x100);
                    *(void *)0x1018 = 2;
                    /* Duplicate return node #11. Try simplifying control flow for better match */
                    var_a1->unk6964 = (s32) (var_a1->unk6964 | 0x200);
                    *(void *)0x1018 = 2;
                }
            } else {
                __glOdyim_TexParameteri(sp0, (s32) arg0, (u64) *arg2, (s32) arg0, temp_a5, arg2);
                var_a1 = sp0 + 0x10000;
                var_a1->unk6964 = (s32) (var_a1->unk6964 | 0x200);
                *(void *)0x1018 = 2;
            }
        }
    } else {
        __glSetError((u32 **)0x502, (s32) arg0, (u64) temp_a5, (u64) arg2);
    }
}

void __glOdyim_TexEnvi(s32 arg1, s32 arg2) {
    s32 sp24;

    sp24 = arg2;
    if (arg1 != 0x2200) {
        __glSetError((u32 **)0x500);
    } else {
        __glOdyim_TexEnviv((u64) &sp24);
    }
}

void QuickSortPairs(s64 arg0, s32 arg1, s64 arg2) {
    s64 sp18;
    f32 var_f5;
    f32 var_f6;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a1;
    s32 var_a7;
    s32 var_condition_bit;
    s64 var_a0;
    s64 var_ra;
    s64 var_s0;
    s64 var_s1;

loop_0:
    var_ra = saved_reg_ra;
    var_a1 = arg1;
    var_s1 = arg0;
    var_s0 = arg2;
    if (var_a1 < arg2) {
        var_a0 = 0;
loop_23:
        var_a7 = M2C_ERROR(/* Read from unset register $a4 */) < var_s0;
loop_8:
        var_f5 = *M2C_ERROR(/* Read from unset register $a5 */);
        var_f6 = *M2C_ERROR(/* Read from unset register $a6 */);
        var_condition_bit = var_f6 <= M2C_ERROR(/* Read from unset register $f4 */);
        if ((M2C_ERROR(/* Read from unset register $f4 */) < var_f5) && (var_a7 != 0)) {
loop_12:
            temp_a4 = M2C_ERROR(/* Read from unset register $a4 */) + 1;
            var_f5 = *(var_s1 + (temp_a4 * 8));
            var_condition_bit = M2C_ERROR(/* Read from unset register $f4 */) < var_f5;
            if ((M2C_ERROR(/* Read from unset register $f4 */) < var_f5) && (temp_a4 < var_s0)) {
                temp_a4_2 = temp_a4 + 1;
                var_f5 = *(var_s1 + (temp_a4_2 * 8));
                var_condition_bit = M2C_ERROR(/* Read from unset register $f4 */) < var_f5;
                if (M2C_ERROR(/* Read from unset register $f4 */) < var_f5) {
                    if (temp_a4_2 < var_s0) {
                        goto loop_12;
                    }
                }
            }
        }
        if (var_condition_bit && (M2C_ERROR(/* Read from unset register $a4 */) < var_s0)) {
loop_3:
            var_s0 -= 1;
            var_f6 = *(var_s1 + (var_s0 * 8));
            if ((var_f6 <= M2C_ERROR(/* Read from unset register $f4 */)) && (M2C_ERROR(/* Read from unset register $a4 */) < var_s0)) {
                var_s0 -= 1;
                var_f6 = *(var_s1 + (var_s0 * 8));
                if (var_f6 <= M2C_ERROR(/* Read from unset register $f4 */)) {
                    if (M2C_ERROR(/* Read from unset register $a4 */) < var_s0) {
                        goto loop_3;
                    }
                }
            }
        }
        if (M2C_ERROR(/* Read from unset register $a4 */) != var_s0) {
            *M2C_ERROR(/* Read from unset register $a5 */) = var_f6;
            *M2C_ERROR(/* Read from unset register $a6 */) = var_f5;
            M2C_ERROR(/* Read from unset register $a5 */)->unk4 = (f32) M2C_ERROR(/* Read from unset register $a6 */)->unk4;
            var_a0 = 1;
            var_a7 = M2C_ERROR(/* Read from unset register $a4 */) < var_s0;
            M2C_ERROR(/* Read from unset register $a6 */)->unk4 = (f32) M2C_ERROR(/* Read from unset register $a5 */)->unk4;
            goto loop_8;
        }
        if (var_a0 != 0) {
            sp18 = var_ra;
            .L0d9d8300(var_s1, var_a1, M2C_ERROR(/* Read from unset register $a4 */) - 1);
            var_a1 = var_s0 + 1;
            var_s0 = unksp10;
            var_a0 = var_s1;
            var_s1 = unksp8;
            if (0 >= 0) {
                goto loop_0;
            }
            goto loop_23;
        }
    }
}

void SetDetailEntry(s32 arg0, s32 arg1, f32 fparg2) {
    f32 var_f14;
    f32 var_f4;
    f64 temp_f5;
    s32 *temp_a4;
    s32 temp_a3;

    if ((f64) fparg2 < GLUE_F64(M2C_ERROR(/* Read from unset register $f1 */), 0U)) {
        var_f14 = 0.0f;
    } else {
        var_f14 = M2C_ERROR(/* unknown instruction: movt.s $f14, $f1, $fcc1 */);
    }
    temp_f5 = (f64) var_f14;
    temp_a4 = arg0 + (arg1 * 4);
    temp_a3 = *temp_a4;
    if (temp_f5 != (second half of f64)) {
        var_f4 = 4095.0f;
        if (!((second half of f64) <= temp_f5)) {
            var_f4 = var_f14 * 4096.0f;
        }
        *temp_a4 = ((0xFFF000 & ((s64) var_f4 << 0xC)) | (temp_a3 & ~0xFFF000)) & ~0x02000000 & ~0x08000000;
        return;
    }
    *temp_a4 = (0xFFF000 | temp_a3) & ~0x02000000 & ~0x08000000;
}

void __glOdysseyTextureSetDetailTable(u32 **arg0, s32 arg1, void *arg2) {
    f32 temp_f4;
    s32 temp_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_s0;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;

    var_s0 = 0;
    var_s3 = 0;
    var_s2 = 0;
    var_s4 = arg1 > 0;
loop_10:
    var_a3 = var_s0 * 8;
    if (var_s4 != 0) {
        var_a3 += arg2;
        temp_f4 = (f32) ((f64) var_s2 * 0.03125);
        var_a4 = var_s0 * 8;
        if (temp_f4 < *var_a3) {
loop_2:
            var_s0 += 1;
            var_s4 = var_s0 < arg1;
            if ((var_s4 != 0) && (temp_f4 < *(arg2 + (var_s0 * 8)))) {
                var_s0 += 1;
                var_s4 = var_s0 < arg1;
                if (var_s4 != 0) {
                    if (temp_f4 < *(arg2 + (var_s0 * 8))) {
                        goto loop_2;
                    }
                }
            }
            goto block_5;
        }
    } else {
block_5:
        var_a4 = var_s0 * 8;
    }
    temp_a1 = var_s0 - 1;
    var_a2 = temp_a1 * 8;
    if (temp_a1 >= 0) {
        var_a2 += arg2;
        if (arg1 == var_s0) {

        } else {
            M2C_ERROR(/* unknown instruction: madd.s $f14, $f4, $f14, $f15 */);
        }
    }
    __glOdyim_TexEnvi(arg0 + 0xFC, var_s3, (void *) var_a2, (f32 *) var_a3, arg2 + var_a4);
    var_s3 += 1;
    var_s2 -= 1;
    if (var_s3 != 0x100) {
        goto loop_10;
    }
}

void __glOdyim_DetailTexFuncSGIS(u32 arg0, s32 arg1, s32 arg2) {
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_t8;
    s32 temp_v0;
    u32 **temp_s1;
    u32 **temp_s3;

    temp_s1 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0xDE1) {
            __glSetError((u32 **)0x500);
        } else if (arg1 > 0) {
            temp_s5 = arg1 * 2 * 4;
            temp_s4 = __glSetError(temp_s1, temp_s5);
            temp_v0 = ((s32 (*)(u32 **, s32)) temp_s1->unk0)(temp_s1, temp_s5);
            temp_s2 = temp_v0;
            if ((temp_s4 != 0) && (temp_v0 != 0)) {
                temp_s3 = __glOdysseyGetCurrentTexture(temp_s1, arg0);
                bcopy(arg2, temp_s4, temp_s5);
                temp_t8 = temp_s3->unk508;
                temp_s3->unk504 = arg1;
                temp_ra = temp_t8 ^ (s32) (&sub_0daf0000 - 0x36D0);
                temp_s3->unk508 = temp_s4;
                unksp28 = (s64) ((temp_ra == 0) ? 0 : temp_t8);
                bcopy(arg2, temp_s2, temp_s5);
                __glOdyim_TexEnvi(temp_s2, 0, arg1 - 1);
                __glOdysseyTextureSetDetailTable(temp_s3, arg1, (void *) temp_s2);
                temp_s3->unkA0 = (s32) (temp_s3->unkA0 | 0x100000);
                temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x200);
                *(void *)0x1018 = 2;
                __glOdysseyTextureSetDetailTable(temp_s1, temp_s2);
                if (unksp28 != 0) {
                    temp_s1->unkC(temp_s1, unksp28);
                }
            } else {
                __glSetError((u32 **)0x505);
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501);
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x18. */
void __glOdyim_BindTexture(s32 arg0, s8 *arg1, s32 arg3, s32 arg4) {
    s64 sp40;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    u32 **temp_a0;
    u32 **temp_s1;
    u32 **var_a3_2;
    u32 temp_a1_2;
    u64 temp_v0;
    u64 var_s2;
    void *temp_a1;

    var_a3 = arg3;
    var_a4 = arg4;
    temp_s1 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != 0xDE0) {
            if (arg0 != 0xDE1) {
                var_a4 = 3;
                if (arg0 != 0x8095) {
                    var_a3 = 0x806F;
                    var_a4 = 2;
                    if (arg0 != 0x806F) {
                        __glSetError((u32 **)0x500, 0xDE1, 0x8095U, 0x806FU, 2);
                    } else {
                        unksp18 = 2;
                        if (arg1 != NULL) {
                            goto block_7;
                        }
                        goto block_19;
                        goto block_8;
                    }
                } else {
                    unksp18 = 3;
                    goto block_18;
                }
            } else {
                unksp18 = 1;
                goto block_18;
            }
        } else {
            unksp18 = 0;
block_18:
            if (arg1 == NULL) {
block_19:
                var_s2 = (u64) (temp_s1 + (unksp18 * 0x994) + 0x120F8);
            } else {
block_7:
                var_s2 = __glNamesLockData(temp_s1, temp_s1->unk16414, arg1, var_a3, var_a4);
            }
block_8:
            if (var_s2 != 0) {
                var_a2 = var_s2->unkC;
                if (var_a2 == arg0) {
                    var_a3_2 = temp_s1 + 0x10000;
                    unksp10 = (s64) var_a3_2;
                    goto block_11;
                }
                __glSetError((u32 **)0x502);
            } else {
                temp_v0 = __glNamesLockData(temp_s1, 0x994);
                var_s2 = temp_v0;
                if (temp_v0 != 0) {
                    sub_0d9d0000(temp_v0, arg1, arg0);
                    unksp10 = (s64) (temp_s1 + 0x10000);
                    var_a2 = __glNamesNewData(temp_s1, temp_s1->unk16414, arg1, var_s2) & 0xFF;
                    if (var_a2 != 0) {
                        var_a3_2 = *var_s2 + 1;
                        *var_s2 = var_a3_2;
block_11:
                        temp_a0 = &temp_s1[unksp18];
                        temp_a1 = temp_a0->unk16404;
                        temp_a4 = temp_a1->unk8;
                        if (temp_a4 != 0) {
                            sp40 = (s64) (temp_a0 + 0x10000);
                            __glNamesUnlockData(temp_s1, temp_a1, var_a2, var_a3_2, temp_a4);
                        }
                        temp_a0->unk16404 = (void *) var_s2;
                        temp_a4_2 = var_s2->unkA0 | 0x114200;
                        var_s2->unkA0 = temp_a4_2;
                        temp_a3 = unksp10->unk6964 | 0x200;
                        unksp10->unk6964 = temp_a3;
                        *(void *)0x1018 = 2;
                        temp_a1_2 = unksp10->unk6418;
                        if (temp_a1_2 != 0) {
                            if (temp_a1_2 != var_s2) {
                                __glOdysseyGetCurrentTexture(temp_s1, temp_a1_2, (u32 *)2, (u32 **) temp_a3, (s32 *) temp_a4_2, (s32 *)0x114200);
                            }
                        }
                    }
                } else {
                    __glSetError((u32 **)0x505);
                }
            }
        }
    } else {
        __glSetError((u32 **)0x502);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x40, 0x44], gap at: 0x30. */
void __glOdyim_DeleteTextures(s32 arg0, s32 *arg1) {
    s64 sp8;
    s64 sp0;
    s32 *var_s2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_s3;
    s32 temp_t9;
    s32 var_s1;
    s32 var_s3;
    s8 **var_s0;
    s8 *temp_a1_2;
    s8 *temp_v0;
    u32 **temp_s5;
    void *temp_a1;

    temp_s5 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            temp_t9 = temp_s5->unk16414;
            unksp28 = (s64) temp_t9;
            temp_a2 = *arg1;
            sp0 = (s64) temp_t9;
            unksp30 = (s64) temp_a2;
            var_s3 = temp_a2;
            if (arg0 > 0) {
                unksp30 = (s64) temp_a2;
                var_s3 = temp_a2;
                var_s2 = arg1;
loop_10:
                temp_a1 = temp_s5->unk16418;
                if ((temp_a1 != NULL) && (temp_a1->unk8 == var_s2->unk0)) {
                    __glOdysseyGetCurrentTexture(temp_s5, (u32) temp_a1);
                }
                if (var_s2->unk0 != 0) {
                    var_s1 = 0;
                    var_s0 = temp_s5 + 0x16404;
loop_6:
                    temp_a1_2 = *var_s0;
                    if (temp_a1_2->unk8 != var_s2->unk0) {
                        var_s1 += 1;
                        var_s0 += 4;
                        if (var_s1 != 4) {
                            goto loop_6;
                        }
                    } else {
                        sub_0d9d0000((u64) temp_s5, temp_a1_2);
                        temp_v0 = temp_s5 + (0x994 * var_s1) + 0x120F8;
                        temp_s5[var_s1].unk16404 = temp_v0;
                        *var_s0 = temp_v0;
                        temp_s5->unk16960 = (s32) (0x114200 | temp_s5->unk16960);
                        *(void *)0x1018 = 2;
                    }
                    if (var_s2->unk0 != var_s3) {
                        __glNamesDeleteRange(temp_s5, unksp28, unksp30, var_s3 - unksp30, var_s2->unk0);
                        temp_a4 = var_s2->unk0;
                        unksp30 = (s64) temp_a4;
                        var_s3 = temp_a4;
                    }
                } else {
                    __glNamesDeleteRange(temp_s5, unksp28, unksp30, var_s3 - unksp30, var_s2->unk0);
                    temp_s3 = var_s2->unk4;
                    unksp30 = (s64) temp_s3;
                    var_s3 = temp_s3 - 1;
                }
                var_s2 += 4;
                var_s3 += 1;
                if (var_s2 != ((arg0 * 4) + arg1)) {
                    goto loop_10;
                }
            }
        } else {
            sp8 = (s64) arg1;
            __glSetError((u32 **)0x501, (s32) arg1);
            sp0 = (s64) temp_s5->unk16414;
            var_s3 = *sp8;
            unksp30 = (s64) var_s3;
        }
        __glNamesDeleteRange(temp_s5, sp0, unksp30, var_s3 - unksp30);
        temp_s5->unk16964 = (s32) (temp_s5->unk16964 | 0x200);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError((u32 **)0x502, (s32) arg1);
}

void __glOdyim_GenTextures(s32 arg0, u64 arg1) {
    void *temp_a5;

    temp_a5 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            if ((arg1 != 0) && (arg0 != 0)) {
                __glNamesGenNames(temp_a5, temp_a5->unk16414, arg0, arg1, temp_a5);
            }
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(0x501, arg0, arg1, temp_a5);
        }
    } else {
        __glSetError((u32 **)0x502, arg0, arg1, (u64) temp_a5);
    }
}

s32 __glOdysseyIsTextureResident(u32 **arg1) {
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_v0;

    temp_a5 = arg1->unk4FC;
    temp_v0 = arg1->unk9C;
    temp_a3 = arg1->unk60;
    if (temp_a5 == -1) {
        return 0;
    }
    return __glOdysseyPMObjGroupResident(temp_a5, arg1->unk5C, (temp_a3 >= temp_v0) ? temp_v0 : temp_a3, temp_a5, arg1) & 0xFF;
}

s32 __glOdyim_AreTexturesResident(s32 arg0, s8 **arg1, s8 *arg2) {
    s32 var_s7;
    s32 var_v0;
    s8 **var_s1;
    s8 *temp_a2;
    s8 *var_s2;
    u32 **temp_s0;
    u64 temp_v0;
    void *temp_s4;

    temp_s0 = *(u32 ***)0x1010;
    var_s1 = arg1;
    var_s2 = arg2;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            if (arg0 > 0) {
                var_s7 = 1;
                temp_s4 = temp_s0 + 0x10000;
loop_7:
                temp_a2 = *var_s1;
                if (temp_a2 != NULL) {
                    temp_v0 = __glNamesLockData(temp_s0, temp_s4->unk6414, temp_a2);
                    if (temp_v0 != 0) {
                        if (__glOdysseyIsTextureResident(temp_s0, temp_v0) == 0) {
                            *var_s2 = 0;
                            var_s7 = 0;
                        } else {
                            *var_s2 = 1;
                        }
                        __glNamesUnlockData(temp_s0, (void *) temp_v0);
                        var_s1 += 4;
                        var_s2 += 1;
                        if (var_s1 != ((arg0 * 4) + arg1)) {
                            goto loop_7;
                        }
                        goto block_12;
                    }
                    __glSetError((u32 **)0x501);
                    var_v0 = 0;
                    /* Duplicate return node #13. Try simplifying control flow for better match */
                    return var_v0;
                }
                __glSetError((u32 **)0x501);
                return 0;
            }
            var_s7 = 1;
block_12:
            var_v0 = var_s7;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            return var_v0;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x501);
        var_v0 = 0;
        /* Duplicate return node #13. Try simplifying control flow for better match */
        return var_v0;
    }
    __glSetError((u32 **)0x502);
    var_v0 = 0;
    return var_v0;
}

f32 Clampf(f32 fparg0, f32 fparg1, f32 fparg2) {
    if (!(fparg0 < fparg1)) {
        return M2C_ERROR(/* unknown instruction: movf.s $f0, $f12, $fcc1 */);
    }
    return fparg1;
}

void __glOdyim_PrioritizeTextures(s32 arg0, s8 **arg1, s32 *arg2) {
    s32 *var_s1;
    s8 **var_s0;
    s8 *temp_a2;
    u32 **temp_s2;
    u32 **var_s5;
    u64 temp_v0;

    temp_s2 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 >= 0) {
            if (arg0 > 0) {
                var_s1 = arg2;
                var_s0 = arg1;
                var_s5 = temp_s2 + 0x10000;
loop_7:
                temp_a2 = *var_s0;
                if (temp_a2 != NULL) {
                    temp_v0 = __glNamesLockData(temp_s2, temp_s2->unk16414, temp_a2);
                    if (temp_v0 != 0) {
                        temp_v0->unk3C = (bitwise f32) __glOdyim_AreTexturesResident(*var_s1, NULL, temp_s2->unkDD8);
                        M2C_ERROR(/* Read from unset register $t9 */)(temp_s2, temp_v0);
                    }
                }
                var_s0 += 4;
                var_s1 += 4;
                if (var_s0 != ((arg0 * 4) + arg1)) {
                    goto loop_7;
                }
            } else {
                var_s5 = temp_s2 + 0x10000;
            }
        } else {
            __glSetError((u32 **)0x501);
            var_s5 = temp_s2 + 0x10000;
        }
        var_s5->unk6964 = (s32) (var_s5->unk6964 | 0x200);
        *(void *)0x1018 = 2;
        return;
    }
    __glSetError((u32 **)0x502);
}

s32 __glOdyim_IsTexture(s8 *arg0) {
    u32 **temp_s0;
    u64 temp_v0;

    temp_s0 = *(u32 ***)0x1010;
    if (*(s32 *)0x1018 != 1) {
        if (arg0 != NULL) {
            temp_v0 = __glNamesLockData(temp_s0, temp_s0->unk16414, arg0);
            if (temp_v0 == 0) {
                return 0;
            }
            __glNamesUnlockData(temp_s0, (void *) temp_v0);
            return 1;
        }
        return 0;
    }
    __glSetError((u32 **)0x502, (s32) arg0);
    return 0;
}
