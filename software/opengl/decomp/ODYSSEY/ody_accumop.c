Error occurred while processing instruction: bal __glOdysseyAccumClose - 0xa0

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
Error occurred while processing instruction: bgez $t1, .L0d953684

Error occurred while processing instruction: c.lt.d $f9, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f15, $f5

Error occurred while processing instruction: c.lt.d $f17, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f14, $f5

Error occurred while processing instruction: c.lt.d $f16, $f5

Error occurred while processing instruction: c.lt.d $f18, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f14, $f5

Error occurred while processing instruction: c.lt.d $f16, $f5

Error occurred while processing instruction: c.lt.d $f18, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f14, $f5

Error occurred while processing instruction: c.lt.d $f16, $f5

Error occurred while processing instruction: c.lt.d $f18, $f5

Error occurred while processing instruction: c.lt.d $f9, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f15, $f5

Error occurred while processing instruction: c.lt.d $f17, $f5

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x120

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0xa0

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
Error occurred while processing instruction: bgez $t1, .L0d953684

Error occurred while processing instruction: c.lt.d $f9, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f15, $f5

Error occurred while processing instruction: c.lt.d $f17, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f14, $f5

Error occurred while processing instruction: c.lt.d $f16, $f5

Error occurred while processing instruction: c.lt.d $f18, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f14, $f5

Error occurred while processing instruction: c.lt.d $f16, $f5

Error occurred while processing instruction: c.lt.d $f18, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f14, $f5

Error occurred while processing instruction: c.lt.d $f16, $f5

Error occurred while processing instruction: c.lt.d $f18, $f5

Error occurred while processing instruction: c.lt.d $f9, $f5

Error occurred while processing instruction: c.lt.d $f12, $f5

Error occurred while processing instruction: c.lt.d $f15, $f5

Error occurred while processing instruction: c.lt.d $f17, $f5

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x120

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Error occurred while processing instruction: bal __glOdysseyAccumClose - 0x190

Bad function call operand __glOdysseyAccumClose - 0xa0
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x120
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0xa0
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Tried to use a double-precision instruction with odd-numbered float register $f5
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x120
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
Bad function call operand __glOdysseyAccumClose - 0x190
? __glInitBuffer();                                 /* extern */
? __glOdysseyClearScratchBuffer(void *, void *, f32, f32, f32, f32); /* extern */
s32 __glOdysseyCreatePMObj(void *, void *, void *, ?, s32, s32, s32, s64, ?, s64); /* extern */
? __glOdysseyImageCalcXferReadParams(s32, s32, void *, s64 *); /* extern */
? __glOdysseyImageDescribeWindow(s32, ?);           /* extern */
? __glOdysseyImageLoadBuzzRasterState(?);           /* extern */
s32 __glOdysseyImageLogBase2(s32, s32, s32, ?, s32); /* extern */
? __glOdysseyImageMovePixelsCopy(void *, void *, void *, ?, ?, s32, s32, s32); /* extern */
? __glOdysseyImageSaveUserBuzzRasterState(u8, u8, u8, ?, ?, ?, ?, ?); /* extern */
? __glOdysseyIoctl(void *, ?, void *, s32, s32, u32, s32, s32); /* extern */
? __glOdysseyRenderFunc_DownloadColor(? *, f32 *, s64, ?, ?, s64, s64, void *, f32, ?, f32, f32, f32, f32, f32); /* extern */
? __glOdysseyRenderFunc_ReadbackColor(? *, f32 *, f32); /* extern */
s64 __glSetError(?, s64, u8, ?, ?, ?, ?, ?);        /* extern */
? __text0(void *, void *, void *, s32, ? *);        /* extern */
f64 ceil(f64, ?);                                   /* extern */
f32 ceilf(s32, s32, s32, f32);                      /* extern */
f64 pow(?, f64);                                    /* extern */
f32 powf(f32, f32);                                 /* extern */
extern u32 HQ2_READ_FIFO;

void sendBlenderOpTokens(s32 arg0, s32 arg1, s32 arg2) {
    void *temp_a3;

    temp_a3 = *(void **)0x1010;
    temp_a3->unk7C34 = (s32) ((((((temp_a3->unk7C34 & ~0xE000) | ((arg0 << 0xD) & 0xE000)) & ~0x1FC0) | ((arg1 << 6) & 0x1FC0)) & ~0x3F) | (arg2 & 0x3F));
    temp_a3->unk16960 = (s32) (temp_a3->unk16960 | 1);
    *(s32 *)0x1018 = 2;
}

void sendBlenderColorTokensAccum24(s32 arg0) {
    s32 temp_a0;
    s32 temp_a3;
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    temp_a0 = arg0 & 0xFFF;
    temp_a3 = (arg0 << 0xC) & 0xFFF000;
    temp_a1->unk7C3C = (s32) (temp_a0 | (-0x1000 & (temp_a3 | (0xFF000FFF & temp_a1->unk7C3C))));
    temp_a1->unk7C38 = (s32) (temp_a0 | (-0x1000 & (temp_a3 | (0xFF000FFF & temp_a1->unk7C38))));
    temp_a1->unk16960 = (s32) (temp_a1->unk16960 | 1);
    *(s32 *)0x1018 = 2;
}

/*
Decompilation failure in function destroyScratchBufAccum:

Unable to determine jump table for jr instruction at ody_accumop.s line 153.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 __glOdysseyAccumClose(void) {
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    if (temp_a2->unk11EC0 != -1) {
        temp_a2->unk11EC4 = 0;
        temp_a2->unk11EC0 = -1;
    }
    if (temp_a2->unk11EFC != -1) {
        temp_a2->unk11F00 = 0;
        temp_a2->unk11EFC = -1;
    }
    if ((temp_a2->unk12064 != -1) || (temp_a2->unk120AC != -1)) {
        temp_a2->unk120F5 = 0;
        temp_a2->unk120B0 = 0;
        temp_a2->unk12068 = 0;
        temp_a2->unk120AC = -1;
        temp_a2->unk12064 = -1;
        return 1;
    }
    temp_a2->unk120F5 = 0;
    return 1;
}

s32 initScratchBufAccum(void) {
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s8 sp1;
    s8 sp0;
    f64 temp_f0;
    f64 temp_f0_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_v0;
    s32 var_v0;
    s64 temp_f13;
    s64 temp_f2;
    u8 var_a0;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    if (((f32) temp_s1->unkE74 != (f32) ((u64) ((s64) temp_s1->unk12090 << 0x20) >> 0x20)) || ((f32) temp_s1->unkE78 != (f32) ((u64) ((s64) temp_s1->unk12094 << 0x20) >> 0x20))) {
        var_a0 = 1;
        temp_s1->unk120F4 = 1U;
    } else {
        var_a0 = temp_s1->unk120F4;
    }
    temp_v0 = temp_s1->unk12064;
    if (var_a0 != 0) {
        if (temp_v0 == -1) {
            goto block_6;
        }
        goto block_7;
        goto block_8;
    }
    if (temp_v0 != -1) {
        var_v0 = 1;
        if (temp_s1->unk120AC != -1) {
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return var_v0;
        }
        goto block_7;
    }
block_6:
    if (temp_s1->unk120AC != -1) {
block_7:
        // Error: Bad function call operand __glOdysseyAccumClose - 0xa0
        // At instruction: bal __glOdysseyAccumClose - 0xa0
    }
block_8:
    sp10 = (s32) (s64) (temp_s1->unk11E30 + 1.0f);
    sp0 = 6;
    sp1 = 8;
    sp20 = 0;
    sp1C = 0;
    spC = 0;
    sp8 = 0;
    temp_f2 = (s64) (temp_s1->unk11E34 + 1.0f);
    sp4 = 0;
    sp18 = 1;
    sp14 = (s32) temp_f2;
    temp_s1->unk1206C = 0;
    temp_s1->unk12068 = 0;
    temp_s1->unk12064 = -1;
    if (__glOdysseyCreatePMObj(temp_s1, sp, temp_s1 + 0x12064, 0, 6, 8, 1, temp_f2) != 0) {
        temp_s1->unk1207B = 1;
        temp_s1->unk12070 = 1;
        temp_s1->unk12074 = 1;
        temp_s1->unk120A8 = 1;
        temp_s1->unk12090 = (s32) temp_s1->unkE74;
        temp_s1->unk12094 = (s32) temp_s1->unkE78;
        temp_f0 = ceil((f64) ((f32) temp_s1->unkE74 * 0.03125f), second half of f64);
        temp_s1->unk120B4 = 0;
        temp_s1->unk120B0 = 0;
        temp_s1->unk120AC = -1;
        temp_s1->unk1209C = 2;
        temp_s1->unk12098 = 2;
        temp_s1->unk120A4 = 0xC;
        temp_s1->unk120A0 = 0;
        temp_a4 = temp_s1->unk12064;
        temp_a5 = temp_s1->unk12068;
        temp_a6 = temp_s1->unk1206C;
        temp_s1->unk12088 = temp_a6;
        temp_f13 = (s64) (temp_f0 * 2.0);
        temp_s1->unk12084 = temp_a5;
        temp_s1->unk12080 = temp_a4;
        temp_s1->unk1208C = (s32) temp_f13;
        if (__glOdysseyCreatePMObj(temp_s1, sp, temp_s1 + 0x120AC, 0, temp_a4, temp_a5, temp_a6, 0xC, second half of f64, temp_f13) != 0) {
            temp_s1->unk120C3 = 1;
            temp_s1->unk120B8 = 1;
            temp_s1->unk120BC = 1;
            temp_s1->unk120F0 = 1;
            temp_s1->unk120D8 = (s32) temp_s1->unkE74;
            temp_s1->unk120DC = (s32) temp_s1->unkE78;
            temp_f0_2 = ceil((f64) ((f32) temp_s1->unkE74 * 0.03125f), second half of f64);
            temp_s1->unk120F4 = 0U;
            temp_s1->unk120E4 = 2;
            temp_s1->unk120E0 = 2;
            temp_s1->unk120EC = 0xC;
            temp_s1->unk120E8 = 0;
            temp_s1->unk120D0 = (s32) temp_s1->unk120B4;
            temp_s1->unk120CC = (s32) temp_s1->unk120B0;
            temp_s1->unk120C8 = (s32) temp_s1->unk120AC;
            temp_s1->unk120D4 = (s32) (s64) (temp_f0_2 * 2.0);
            return 1;
        }
        __glSetError(0x505);
        return 0;
    }
    __glSetError(0x505);
    var_v0 = 0;
    return var_v0;
}

/*
Decompilation failure in function initVisualNumComp:

Unable to determine jump table for jr instruction at ody_accumop.s line 564.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void initAccumGfxImages(void) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s3;

    temp_s3 = *(void **)0x1010;
    temp_a1 = temp_s3->unk16D74;
    temp_s3->unk11EB0 = 1;
    temp_s3->unk11EBA = 1;
    temp_s3->unk11EBB = 1;
    temp_s3->unk11EB4 = 1;
    temp_s3->unk11EE8 = 1;
    temp_a2 = temp_s3->unkE74;
    temp_s3->unk11ED0 = temp_a2;
    temp_s3->unk11ECC = temp_a1;
    temp_s3->unk11EC4 = 4;
    temp_s3->unk11EC0 = -3;
    temp_s3->unk11ED4 = (s32) temp_s3->unkE78;
    temp_v0 = __glOdysseyImageLogBase2(temp_s3->unk16D70, temp_a1, temp_a2, 1);
    temp_s3->unk11EEC = 1;
    temp_s3->unk11EF6 = 1;
    temp_s3->unk11EF7 = 1;
    temp_s3->unk11EF0 = 1;
    temp_s3->unk11F24 = 1;
    temp_s3->unk11EE4 = 0xC;
    temp_a4 = temp_v0 - 1;
    temp_s3->unk11EDC = temp_a4;
    temp_s3->unk11ED8 = temp_a4;
    temp_a1_2 = temp_s3->unkE74;
    temp_s3->unk11F0C = temp_a1_2;
    temp_s3->unk11F08 = (s32) temp_s3->unk16D88;
    temp_s3->unk11F00 = 5;
    temp_s3->unk11EFC = -3;
    temp_s3->unk11F10 = (s32) temp_s3->unkE78;
    temp_v0_2 = __glOdysseyImageLogBase2(temp_s3->unk16D84, temp_a1_2, 1, 0xC, temp_a4);
    temp_s3->unk11F20 = 0xC;
    temp_a5 = temp_v0_2 - 1;
    temp_s3->unk11F18 = temp_a5;
    temp_s3->unk11F14 = temp_a5;
}

void initBuffersForAccum(void) {
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    __glOdysseyAccumClose();
    __glOdysseyImageDescribeWindow(temp_s0 + 0x11E38, 1);
    __glOdysseyImageDescribeWindow(temp_s0 + 0x11E74, 0);
    temp_s0->unk120F5 = 1;
}

void initGeomForAccum(void) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f2;
    f32 temp_f3;
    void *temp_at;

    temp_at = *(void **)0x1010;
    temp_at->unk1203C = 0;
    temp_at->unk12054 = 0.0f;
    temp_at->unk12050 = 0.0f;
    temp_at->unk12044 = 0.0f;
    temp_at->unk12040 = 0.0f;
    temp_f3 = temp_at->unk11E2C;
    temp_at->unk12060 = 0;
    temp_at->unk12038 = temp_f3;
    temp_f2 = temp_at->unk11E28;
    temp_at->unk12028 = temp_f3;
    temp_f0 = (f32) (s32) (temp_at->unk11E30 + 1.0f);
    temp_at->unk1202C = temp_f2;
    temp_at->unk1201C = temp_f2;
    temp_f1 = (f32) (s32) (temp_at->unk11E34 + 1.0f);
    temp_at->unk12034 = temp_f0;
    temp_at->unk12024 = temp_f0;
    temp_at->unk12030 = temp_f1;
    temp_at->unk12020 = temp_f1;
    temp_f1_2 = temp_f1 - temp_f3;
    temp_f0_2 = temp_f0 - temp_f2;
    temp_at->unk1205C = temp_f1_2;
    temp_at->unk12058 = temp_f0_2;
    temp_at->unk1204C = temp_f1_2;
    temp_at->unk12048 = temp_f0_2;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xd8, 0xdc, 0xe0, 0xe4, 0x100, 0x104, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x120, 0x124, 0x128, 0x12c, 0x130, 0x134, 0x138, 0x13c, 0x140, 0x144], gap at: 0xe8. */
void softLoad(s64 arg0, f32 fparg1) {
    s64 sp158;
    s64 spC0;
    void *spAC;
    ? sp68;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;                                       /* compiler-managed */
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s32 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;                                       /* compiler-managed */
    s64 sp10;                                       /* compiler-managed */
    s64 sp8;                                        /* compiler-managed */
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f4_2;
    f32 temp_f8;
    f32 temp_f8_10;
    f32 temp_f8_11;
    f32 temp_f8_12;
    f32 temp_f8_13;
    f32 temp_f8_14;
    f32 temp_f8_15;
    f32 temp_f8_16;
    f32 temp_f8_17;
    f32 temp_f8_19;
    f32 temp_f8_20;
    f32 temp_f8_3;
    f32 temp_f8_4;
    f32 temp_f8_5;
    f32 temp_f8_6;
    f32 temp_f8_7;
    f32 temp_f8_8;
    f32 temp_f8_9;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f64 temp_f4;
    f64 temp_f8_18;
    f64 temp_f8_2;
    f64 temp_f9;
    f64 temp_f9_10;
    f64 temp_f9_11;
    f64 temp_f9_12;
    f64 temp_f9_13;
    f64 temp_f9_14;
    f64 temp_f9_15;
    f64 temp_f9_16;
    f64 temp_f9_17;
    f64 temp_f9_18;
    f64 temp_f9_2;
    f64 temp_f9_3;
    f64 temp_f9_4;
    f64 temp_f9_5;
    f64 temp_f9_6;
    f64 temp_f9_7;
    f64 temp_f9_8;
    f64 temp_f9_9;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_f1;
    s32 temp_f2;
    s32 temp_s6;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v0_2;
    s32 var_a6;
    s32 var_f12;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    void *temp_a2;
    void *temp_s2;
    void *temp_v0;
    void *var_a4;
    void *var_a5;
    void *var_s1;

    temp_s2 = *(void **)0x1010;
    sp38 = 0;
    sp30 = 0;
    sp28 = 0;
    temp_f0 = (f32) temp_s2->unkE78;
    sp20 = 0;
    temp_f2 = (s32) temp_s2->unk11E28;
    sp18 = 0;
    sp10 = 0;
    sp8 = 0;
    unkspC = 0x1403;
    temp_f1 = (s32) (temp_f0 - temp_s2->unk11E2C);
    var_s3 = (s32) (temp_f0 - (temp_s2->unk11E34 + 1.0f));
    sp8 = 0x1908;
    temp_s8 = (s32) (temp_s2->unk11E30 + 1.0f) - temp_f2;
    temp_s6 = temp_f1 - var_s3;
    sp38 = 0;
    sp10 = temp_s8;
    unksp14 = temp_s6;
    unkspF8 = arg0;
    unkspF0 = (s64) temp_f2;
    temp_v0 = temp_s2->unk0(temp_s2, temp_s8 * temp_s6 * 8, 0x1403, 0x1908, 0, 0);
    var_s1 = temp_v0;
    if (temp_v0 != NULL) {
        sp18 = 1;
        unksp2C = temp_v0;
        sp40 = temp_s2->unk1201C;
        sp44 = temp_s2->unk12020;
        unkspE8 = (s64) temp_s2;
        sp48 = temp_s2->unk12024;
        sp4C = temp_s2->unk12028;
        sp50 = temp_s2->unk12050;
        sp54 = temp_s2->unk12054;
        sp58 = temp_s2->unk12058;
        spC0 = 0;
        spC0.unk10 = 0;
        spC0.unk8 = 0;
        temp_a2 = temp_s2 + 0x11E38;
        spAC = temp_a2;
        var_s0 = temp_s8;
        sp5C = temp_s2->unk1205C;
        __glOdysseyImageCalcXferReadParams(sp8, unkspC, temp_a2, &spC0);
        if ((u8) spC0 != 0) {
            var_s4 = temp_s8;
            var_s2 = temp_s6;
        } else {
            var_s2 = temp_s2->unk11E18;
            var_s4 = temp_s2->unk11E1C;
        }
        var_f6 = sp40;
        if (temp_s8 > 0) {
            var_f5 = sp44;
            var_f7 = sp50;
            var_f4 = sp54;
            sp158 = (s64) var_s1;
loop_11:
            if (var_s4 < var_s0) {
                temp_f15 = (f32) var_s4;
                sp58 = temp_f15 + var_f7;
                sp48 = temp_f15 + var_f6;
            } else {
                temp_f16 = (f32) var_s0;
                sp58 = temp_f16 + var_f7;
                sp48 = temp_f16 + var_f6;
            }
            var_s1_2 = temp_s6;
            if (temp_s6 > 0) {
loop_15:
                var_f12 = var_s1_2;
                if (var_s2 < var_s1_2) {
                    temp_f17 = (f32) var_s2;
                    sp5C = temp_f17 + var_f4;
                    sp4C = var_f5 - temp_f17;
                } else {
                    temp_f12 = (f32) var_f12;
                    temp_f13 = temp_f12 + var_f4;
                    var_f12 = (bitwise s32) (var_f5 - temp_f12);
                    sp5C = temp_f13;
                    sp4C = var_f12;
                }
                __glOdysseyRenderFunc_ReadbackColor(&sp68, &sp40, (bitwise f32) var_f12);
                temp_a5 = var_s2 < var_s1_2;
                var_f5 = (bitwise f32) sp4C;
                var_s1_2 -= var_s2;
                var_f4 = sp5C;
                if (temp_a5 != 0) {
                    sp54 = var_f4;
                    sp44 = var_f5;
                    if (var_s1_2 > 0) {
                        goto loop_15;
                    }
                }
            }
            temp_a6 = var_s4 < var_s0;
            var_f6 = sp48;
            var_s0 -= var_s4;
            var_f7 = sp58;
            if (temp_a6 != 0) {
                sp50 = var_f7;
                sp40 = var_f6;
                var_f5 = temp_s2->unk12020;
                sp44 = var_f5;
                sp4C = temp_s2->unk12028;
                var_f4 = temp_s2->unk12054;
                sp54 = var_f4;
                sp5C = temp_s2->unk1205C;
                if (var_s0 > 0) {
                    goto loop_11;
                }
            }
            var_s1 = (void *) sp158;
        }
        temp_v0_2 = unkspF8->unk1C;
        temp_f4 = (f64) fparg1;
        var_a4 = unkspF8->unk10 + (unkspF8->unk18 * (unkspF0 + (temp_v0_2 * var_s3)));
        if ((temp_f4 < (second half of f64)) || (temp_f4 > 1.0)) {
            var_a6 = 1;
        } else {
            var_a6 = 0;
        }
        var_a5 = var_s1;
        if (var_s3 < temp_f1) {
            temp_t1 = (temp_s8 & 3) - 1;
            temp_t0 = (temp_s8 >> 2) - 1;
            temp_f4_2 = fparg1 / 65535.0f;
loop_25:
            var_s3 += 1;
            var_s0_2 = temp_t0;
            if (temp_t0 >= 0) {
loop_43:
                temp_f8 = (f32) var_a5->unk0 * temp_f4_2;
                var_s0_2 -= 1;
                var_a4->unk0 = temp_f8;
                if (var_a6 != 0) {
                    temp_f9 = (f64) temp_f8;
                    if (temp_f9 < (second half of f64)) {
                        var_a4->unk0 = (f32) (second half of f64);
                    } else if (temp_f9 > 1.0) {
                        var_a4->unk0 = 1.0f;
                    }
                    temp_f8_2 = (f64) ((f32) var_a5->unk2 * temp_f4_2);
                    var_a4->unk4 = (f32) (second half of f64);
                    if (temp_f8_2 < (second half of f64)) {
                        var_a4->unk4 = (f32) (second half of f64);
                    } else if (temp_f8_2 > 1.0) {
                        var_a4->unk4 = 1.0f;
                    }
                    temp_f8_3 = (f32) var_a5->unk4 * temp_f4_2;
                    var_a4->unk8 = temp_f8_3;
                    if (var_a6 != 0) {
                        temp_f9_2 = (f64) temp_f8_3;
                        if (temp_f9_2 < (second half of f64)) {
                            var_a4->unk8 = (f32) (second half of f64);
                        } else if (temp_f9_2 > 1.0) {
                            var_a4->unk8 = 1.0f;
                        }
                        temp_f8_4 = (f32) var_a5->unk6 * temp_f4_2;
                        var_a4->unkC = temp_f8_4;
                        if (var_a6 != 0) {
                            temp_f9_3 = (f64) temp_f8_4;
                            if (temp_f9_3 < (second half of f64)) {
                                var_a4->unkC = (f32) (second half of f64);
                            } else if (temp_f9_3 > 1.0) {
                                var_a4->unkC = 1.0f;
                            }
                            temp_f8_5 = (f32) var_a5->unk8 * temp_f4_2;
                            var_a4->unk10 = temp_f8_5;
                            if (var_a6 != 0) {
                                temp_f9_4 = (f64) temp_f8_5;
                                if (temp_f9_4 < (second half of f64)) {
                                    var_a4->unk10 = (f32) (second half of f64);
                                } else if (temp_f9_4 > 1.0) {
                                    var_a4->unk10 = 1.0f;
                                }
                                temp_f8_6 = (f32) var_a5->unkA * temp_f4_2;
                                var_a4->unk14 = temp_f8_6;
                                if (var_a6 != 0) {
                                    temp_f9_5 = (f64) temp_f8_6;
                                    if (temp_f9_5 < (second half of f64)) {
                                        var_a4->unk14 = (f32) (second half of f64);
                                    } else if (temp_f9_5 > 1.0) {
                                        var_a4->unk14 = 1.0f;
                                    }
                                    temp_f8_7 = (f32) var_a5->unkC * temp_f4_2;
                                    var_a4->unk18 = temp_f8_7;
                                    if (var_a6 != 0) {
                                        temp_f9_6 = (f64) temp_f8_7;
                                        if (temp_f9_6 < (second half of f64)) {
                                            var_a4->unk18 = (f32) (second half of f64);
                                        } else if (temp_f9_6 > 1.0) {
                                            var_a4->unk18 = 1.0f;
                                        }
                                        temp_f8_8 = (f32) var_a5->unkE * temp_f4_2;
                                        var_a4->unk1C = temp_f8_8;
                                        if (var_a6 != 0) {
                                            temp_f9_7 = (f64) temp_f8_8;
                                            if (temp_f9_7 < (second half of f64)) {
                                                var_a4->unk1C = (f32) (second half of f64);
                                            } else if (temp_f9_7 > 1.0) {
                                                var_a4->unk1C = 1.0f;
                                            }
                                            temp_f8_9 = (f32) var_a5->unk10 * temp_f4_2;
                                            var_a4->unk20 = temp_f8_9;
                                            if (var_a6 != 0) {
                                                temp_f9_8 = (f64) temp_f8_9;
                                                if (temp_f9_8 < (second half of f64)) {
                                                    var_a4->unk20 = (f32) (second half of f64);
                                                } else if (temp_f9_8 > 1.0) {
                                                    var_a4->unk20 = 1.0f;
                                                }
                                                temp_f8_10 = (f32) var_a5->unk12 * temp_f4_2;
                                                var_a4->unk24 = temp_f8_10;
                                                if (var_a6 != 0) {
                                                    temp_f9_9 = (f64) temp_f8_10;
                                                    if (temp_f9_9 < (second half of f64)) {
                                                        var_a4->unk24 = (f32) (second half of f64);
                                                    } else if (temp_f9_9 > 1.0) {
                                                        var_a4->unk24 = 1.0f;
                                                    }
                                                    temp_f8_11 = (f32) var_a5->unk14 * temp_f4_2;
                                                    var_a4->unk28 = temp_f8_11;
                                                    if (var_a6 != 0) {
                                                        temp_f9_10 = (f64) temp_f8_11;
                                                        if (temp_f9_10 < (second half of f64)) {
                                                            var_a4->unk28 = (f32) (second half of f64);
                                                        } else if (temp_f9_10 > 1.0) {
                                                            var_a4->unk28 = 1.0f;
                                                        }
                                                        temp_f8_12 = (f32) var_a5->unk16 * temp_f4_2;
                                                        var_a4->unk2C = temp_f8_12;
                                                        if (var_a6 != 0) {
                                                            temp_f9_11 = (f64) temp_f8_12;
                                                            if (temp_f9_11 < (second half of f64)) {
                                                                var_a4->unk2C = (f32) (second half of f64);
                                                            } else if (temp_f9_11 > 1.0) {
                                                                var_a4->unk2C = 1.0f;
                                                            }
                                                            temp_f8_13 = (f32) var_a5->unk18 * temp_f4_2;
                                                            var_a4->unk30 = temp_f8_13;
                                                            if (var_a6 != 0) {
                                                                temp_f9_12 = (f64) temp_f8_13;
                                                                if (temp_f9_12 < (second half of f64)) {
                                                                    var_a4->unk30 = (f32) (second half of f64);
                                                                } else if (temp_f9_12 > 1.0) {
                                                                    var_a4->unk30 = 1.0f;
                                                                }
                                                                temp_f8_14 = (f32) var_a5->unk1A * temp_f4_2;
                                                                var_a4->unk34 = temp_f8_14;
                                                                if (var_a6 != 0) {
                                                                    temp_f9_13 = (f64) temp_f8_14;
                                                                    if (temp_f9_13 < (second half of f64)) {
                                                                        var_a4->unk34 = (f32) (second half of f64);
                                                                    } else if (temp_f9_13 > 1.0) {
                                                                        var_a4->unk34 = 1.0f;
                                                                    }
                                                                    temp_f8_15 = (f32) var_a5->unk1C * temp_f4_2;
                                                                    var_a4->unk38 = temp_f8_15;
                                                                    if (var_a6 != 0) {
                                                                        temp_f9_14 = (f64) temp_f8_15;
                                                                        if (temp_f9_14 < (second half of f64)) {
                                                                            var_a4->unk38 = (f32) (second half of f64);
                                                                        } else if (temp_f9_14 > 1.0) {
                                                                            var_a4->unk38 = 1.0f;
                                                                        }
                                                                        temp_f8_16 = (f32) var_a5->unk1E * temp_f4_2;
                                                                        var_a4->unk3C = temp_f8_16;
                                                                        if (var_a6 != 0) {
                                                                            temp_f9_15 = (f64) temp_f8_16;
                                                                            if (temp_f9_15 < (second half of f64)) {
                                                                                var_a4->unk3C = (f32) (second half of f64);
                                                                            } else if (temp_f9_15 > 1.0) {
                                                                                var_a4->unk3C = 1.0f;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        goto block_41;
                                                                    }
                                                                } else {
                                                                    goto block_40;
                                                                }
                                                            } else {
                                                                goto block_39;
                                                            }
                                                        } else {
                                                            goto block_38;
                                                        }
                                                    } else {
                                                        goto block_37;
                                                    }
                                                } else {
                                                    goto block_36;
                                                }
                                            } else {
                                                goto block_35;
                                            }
                                        } else {
                                            goto block_34;
                                        }
                                    } else {
                                        goto block_33;
                                    }
                                } else {
                                    goto block_32;
                                }
                            } else {
                                goto block_31;
                            }
                        } else {
                            goto block_30;
                        }
                    } else {
                        goto block_29;
                    }
                } else {
                    var_a4->unk4 = (f32) ((f32) var_a5->unk2 * temp_f4_2);
                    var_a4->unk8 = (f32) ((f32) var_a5->unk4 * temp_f4_2);
block_29:
                    var_a4->unkC = (f32) ((f32) var_a5->unk6 * temp_f4_2);
block_30:
                    var_a4->unk10 = (f32) ((f32) var_a5->unk8 * temp_f4_2);
block_31:
                    var_a4->unk14 = (f32) ((f32) var_a5->unkA * temp_f4_2);
block_32:
                    var_a4->unk18 = (f32) ((f32) var_a5->unkC * temp_f4_2);
block_33:
                    var_a4->unk1C = (f32) ((f32) var_a5->unkE * temp_f4_2);
block_34:
                    var_a4->unk20 = (f32) ((f32) var_a5->unk10 * temp_f4_2);
block_35:
                    var_a4->unk24 = (f32) ((f32) var_a5->unk12 * temp_f4_2);
block_36:
                    var_a4->unk28 = (f32) ((f32) var_a5->unk14 * temp_f4_2);
block_37:
                    var_a4->unk2C = (f32) ((f32) var_a5->unk16 * temp_f4_2);
block_38:
                    var_a4->unk30 = (f32) ((f32) var_a5->unk18 * temp_f4_2);
block_39:
                    var_a4->unk34 = (f32) ((f32) var_a5->unk1A * temp_f4_2);
block_40:
                    var_a4->unk38 = (f32) ((f32) var_a5->unk1C * temp_f4_2);
block_41:
                    var_a4->unk3C = (f32) ((f32) var_a5->unk1E * temp_f4_2);
                }
                var_a5 += 0x20;
                var_a4 += 0x40;
                if (var_s0_2 != -1) {
                    goto loop_43;
                }
            }
            var_s0_3 = temp_t1;
            if (temp_t1 >= 0) {
loop_131:
                temp_f8_17 = (f32) var_a5->unk0 * temp_f4_2;
                var_s0_3 -= 1;
                var_a4->unk0 = temp_f8_17;
                if (var_a6 != 0) {
                    temp_f9_16 = (f64) temp_f8_17;
                    if (temp_f9_16 < (second half of f64)) {
                        var_a4->unk0 = (f32) (second half of f64);
                    } else if (temp_f9_16 > 1.0) {
                        var_a4->unk0 = 1.0f;
                    }
                    temp_f8_18 = (f64) ((f32) var_a5->unk2 * temp_f4_2);
                    var_a4->unk4 = (f32) (second half of f64);
                    if (temp_f8_18 < (second half of f64)) {
                        var_a4->unk4 = (f32) (second half of f64);
                    } else if (temp_f8_18 > 1.0) {
                        var_a4->unk4 = 1.0f;
                    }
                    temp_f8_19 = (f32) var_a5->unk4 * temp_f4_2;
                    var_a4->unk8 = temp_f8_19;
                    if (var_a6 != 0) {
                        temp_f9_17 = (f64) temp_f8_19;
                        if (temp_f9_17 < (second half of f64)) {
                            var_a4->unk8 = (f32) (second half of f64);
                        } else if (temp_f9_17 > 1.0) {
                            var_a4->unk8 = 1.0f;
                        }
                        temp_f8_20 = (f32) var_a5->unk6 * temp_f4_2;
                        var_a4->unkC = temp_f8_20;
                        if (var_a6 != 0) {
                            temp_f9_18 = (f64) temp_f8_20;
                            if (temp_f9_18 < (second half of f64)) {
                                var_a4->unkC = (f32) (second half of f64);
                            } else if (temp_f9_18 > 1.0) {
                                var_a4->unkC = 1.0f;
                            }
                        }
                    } else {
                        goto block_146;
                    }
                } else {
                    var_a4->unk4 = (f32) ((f32) var_a5->unk2 * temp_f4_2);
                    var_a4->unk8 = (f32) ((f32) var_a5->unk4 * temp_f4_2);
block_146:
                    var_a4->unkC = (f32) ((f32) var_a5->unk6 * temp_f4_2);
                }
                var_a5 += 8;
                var_a4 += 0x10;
                if (var_s0_3 != -1) {
                    goto loop_131;
                }
            }
            var_a4 += (temp_v0_2 - temp_s8) * 0x10;
            if (var_s3 != temp_f1) {
                goto loop_25;
            }
        }
        unkspE8->unkC(unkspE8, var_s1);
    } else {
        __glSetError(0x505);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xe0, 0xe4, 0x100, 0x104, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x120, 0x124, 0x128, 0x12c, 0x130, 0x134, 0x138, 0x13c, 0x140, 0x144], gap at: 0xe8. */
void softAccumulate(s64 arg0, f64 fparg1) {
    s64 sp158;
    f64 spD8;
    s64 spC0;
    void *spAC;
    ? sp68;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;                                       /* compiler-managed */
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s32 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;                                       /* compiler-managed */
    s64 sp10;                                       /* compiler-managed */
    s64 sp8;                                        /* compiler-managed */
    f32 temp_f0;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f8;
    f32 temp_f8_3;
    f32 var_f4;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    f32 var_f8_10;
    f32 var_f8_11;
    f32 var_f8_12;
    f32 var_f8_13;
    f32 var_f8_14;
    f32 var_f8_15;
    f32 var_f8_16;
    f32 var_f8_2;
    f32 var_f8_3;
    f32 var_f8_4;
    f32 var_f8_5;
    f32 var_f8_6;
    f32 var_f8_7;
    f32 var_f8_8;
    f32 var_f8_9;
    f64 temp_f8_2;
    f64 temp_f8_4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_f1;
    s32 temp_f2;
    s32 temp_s6;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_f12;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s3;
    s32 var_s4;
    void *temp_a2;
    void *temp_s2;
    void *var_a4;

    temp_s2 = *(void **)0x1010;
    spD8 = fparg1;
    sp38 = 0;
    sp30 = 0;
    sp28 = 0;
    temp_f0 = (f32) temp_s2->unkE78;
    sp20 = 0;
    temp_f2 = (s32) temp_s2->unk11E28;
    sp18 = 0;
    sp10 = 0;
    sp8 = 0;
    unkspC = 0x1403;
    temp_f1 = (s32) (temp_f0 - temp_s2->unk11E2C);
    var_s3 = (s32) (temp_f0 - (temp_s2->unk11E34 + 1.0f));
    sp8 = 0x1908;
    temp_s8 = (s32) (temp_s2->unk11E30 + 1.0f) - temp_f2;
    temp_s6 = temp_f1 - var_s3;
    sp38 = 0;
    sp10 = temp_s8;
    unksp14 = temp_s6;
    unkspF8 = arg0;
    unkspF0 = (s64) temp_f2;
    temp_v0 = temp_s2->unk0(temp_s2, temp_s8 * temp_s6 * 8, 0x1403, 0x1908, 0, 0);
    var_s1 = temp_v0;
    if (temp_v0 != 0) {
        sp18 = 1;
        unksp2C = temp_v0;
        sp40 = temp_s2->unk1201C;
        sp44 = temp_s2->unk12020;
        unkspE8 = (s64) temp_s2;
        sp48 = temp_s2->unk12024;
        sp4C = temp_s2->unk12028;
        sp50 = temp_s2->unk12050;
        sp54 = temp_s2->unk12054;
        sp58 = temp_s2->unk12058;
        spC0 = 0;
        spC0.unk10 = 0;
        spC0.unk8 = 0;
        temp_a2 = temp_s2 + 0x11E38;
        spAC = temp_a2;
        var_s0 = temp_s8;
        sp5C = temp_s2->unk1205C;
        __glOdysseyImageCalcXferReadParams(sp8, unkspC, temp_a2, &spC0);
        if ((u8) spC0 != 0) {
            var_s4 = temp_s8;
            var_s2 = temp_s6;
        } else {
            var_s2 = temp_s2->unk11E18;
            var_s4 = temp_s2->unk11E1C;
        }
        var_f7 = sp40;
        if (temp_s8 > 0) {
            var_f5 = sp44;
            var_f6 = sp50;
            var_f4 = sp54;
            sp158 = (s64) var_s1;
loop_11:
            if (var_s4 < var_s0) {
                temp_f15 = (f32) var_s4;
                sp58 = temp_f15 + var_f6;
                sp48 = temp_f15 + var_f7;
            } else {
                temp_f16 = (f32) var_s0;
                sp58 = temp_f16 + var_f6;
                sp48 = temp_f16 + var_f7;
            }
            var_s1_2 = temp_s6;
            if (temp_s6 > 0) {
loop_15:
                var_f12 = var_s1_2;
                if (var_s2 < var_s1_2) {
                    temp_f17 = (f32) var_s2;
                    sp5C = temp_f17 + var_f4;
                    sp4C = var_f5 - temp_f17;
                } else {
                    temp_f12 = (f32) var_f12;
                    temp_f13 = temp_f12 + var_f4;
                    var_f12 = (bitwise s32) (var_f5 - temp_f12);
                    sp5C = temp_f13;
                    sp4C = var_f12;
                }
                __glOdysseyRenderFunc_ReadbackColor(&sp68, &sp40, (bitwise f32) var_f12);
                temp_a5 = var_s2 < var_s1_2;
                var_f5 = (bitwise f32) sp4C;
                var_s1_2 -= var_s2;
                var_f4 = sp5C;
                if (temp_a5 != 0) {
                    sp54 = var_f4;
                    sp44 = var_f5;
                    if (var_s1_2 > 0) {
                        goto loop_15;
                    }
                }
            }
            temp_a6 = var_s4 < var_s0;
            var_f7 = sp48;
            var_s0 -= var_s4;
            var_f6 = sp58;
            if (temp_a6 != 0) {
                sp50 = var_f6;
                sp40 = var_f7;
                var_f5 = temp_s2->unk12020;
                sp44 = var_f5;
                sp4C = temp_s2->unk12028;
                var_f4 = temp_s2->unk12054;
                sp54 = var_f4;
                sp5C = temp_s2->unk1205C;
                if (var_s0 > 0) {
                    goto loop_11;
                }
            }
            var_s1 = (s32) sp158;
        }
        temp_v0_2 = unkspF8->unk1C;
        var_a4 = unkspF8->unk10 + (unkspF8->unk18 * (unkspF0 + (temp_v0_2 * var_s3)));
        if (var_s3 < temp_f1) {
            temp_t0 = (temp_s8 & 3) - 1;
            temp_t1 = (temp_s8 >> 2) - 1;
            temp_a6_2 = M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc0 */);
loop_21:
            var_s3 += 1;
            var_s0_2 = temp_t1;
            if (temp_t1 >= 0) {
loop_71:
                temp_f8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                var_s0_2 -= 1;
                var_a4->unk0 = temp_f8;
                temp_f8_2 = (f64) temp_f8;
                if (temp_a6_2 != 0) {
                    if (temp_f8_2 < -1.0) {
                        var_a4->unk0 = (f32) (second half of f64);
                    }
                    var_a4->unk4 = (f32) (second half of f64);
                    if ((f64) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f4 */) < -1.0) {
                        var_a4->unk4 = (f32) (second half of f64);
                    }
                    var_f8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk8 = var_f8;
                    if (temp_a6_2 != 0) {
                        goto block_77;
                    }
                    goto block_29;
                }
                if (temp_f8_2 > 1.0) {
                    var_a4->unk0 = 1.0f;
                }
                temp_f11 = M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f12, $f4 */);
                var_a4->unk4 = temp_f11;
                if ((f64) temp_f11 > 1.0) {
                    var_a4->unk4 = 1.0f;
                }
                var_f8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                var_a4->unk8 = var_f8;
                if (temp_a6_2 == 0) {
block_29:
                    if ((f64) var_f8 > 1.0) {
                        var_a4->unk8 = 1.0f;
                    }
                    var_f8_2 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unkC = var_f8_2;
                    goto block_32;
                }
block_77:
                if ((f64) var_f8 < -1.0) {
                    var_a4->unk8 = (f32) (second half of f64);
                }
                var_f8_2 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                var_a4->unkC = var_f8_2;
                if (temp_a6_2 != 0) {
                    if ((f64) var_f8_2 < -1.0) {
                        var_a4->unkC = (f32) (second half of f64);
                    }
                    var_f8_3 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk10 = var_f8_3;
                    if (temp_a6_2 != 0) {
                        if ((f64) var_f8_3 < -1.0) {
                            var_a4->unk10 = (f32) (second half of f64);
                        }
                        var_f8_4 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                        var_a4->unk14 = var_f8_4;
                        if (temp_a6_2 != 0) {
                            if ((f64) var_f8_4 < -1.0) {
                                var_a4->unk14 = (f32) (second half of f64);
                            }
                            var_f8_5 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                            var_a4->unk18 = var_f8_5;
                            if (temp_a6_2 != 0) {
                                if ((f64) var_f8_5 < -1.0) {
                                    var_a4->unk18 = (f32) (second half of f64);
                                }
                                var_f8_6 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                var_a4->unk1C = var_f8_6;
                                if (temp_a6_2 != 0) {
                                    if ((f64) var_f8_6 < -1.0) {
                                        var_a4->unk1C = (f32) (second half of f64);
                                    }
                                    var_f8_7 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                    var_a4->unk20 = var_f8_7;
                                    if (temp_a6_2 != 0) {
                                        if ((f64) var_f8_7 < -1.0) {
                                            var_a4->unk20 = (f32) (second half of f64);
                                        }
                                        var_f8_8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                        var_a4->unk24 = var_f8_8;
                                        if (temp_a6_2 != 0) {
                                            if ((f64) var_f8_8 < -1.0) {
                                                var_a4->unk24 = (f32) (second half of f64);
                                            }
                                            var_f8_9 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                            var_a4->unk28 = var_f8_9;
                                            if (temp_a6_2 != 0) {
                                                if ((f64) var_f8_9 < -1.0) {
                                                    var_a4->unk28 = (f32) (second half of f64);
                                                }
                                                var_f8_10 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                                var_a4->unk2C = var_f8_10;
                                                if (temp_a6_2 != 0) {
                                                    if ((f64) var_f8_10 < -1.0) {
                                                        var_a4->unk2C = (f32) (second half of f64);
                                                    }
                                                    var_f8_11 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                                    var_a4->unk30 = var_f8_11;
                                                    if (temp_a6_2 != 0) {
                                                        if ((f64) var_f8_11 < -1.0) {
                                                            var_a4->unk30 = (f32) (second half of f64);
                                                        }
                                                        var_f8_12 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                                        var_a4->unk34 = var_f8_12;
                                                        if (temp_a6_2 != 0) {
                                                            if ((f64) var_f8_12 < -1.0) {
                                                                var_a4->unk34 = (f32) (second half of f64);
                                                            }
                                                            var_f8_13 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                                            var_a4->unk38 = var_f8_13;
                                                            if (temp_a6_2 != 0) {
                                                                if ((f64) var_f8_13 < -1.0) {
                                                                    var_a4->unk38 = (f32) (second half of f64);
                                                                }
                                                                var_f8_14 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                                                                var_a4->unk3C = var_f8_14;
                                                                if (temp_a6_2 != 0) {
                                                                    if ((f64) var_f8_14 < -1.0) {
                                                                        var_a4->unk3C = (f32) (second half of f64);
                                                                    }
                                                                } else {
                                                                    goto block_68;
                                                                }
                                                            } else {
                                                                goto block_65;
                                                            }
                                                        } else {
                                                            goto block_62;
                                                        }
                                                    } else {
                                                        goto block_59;
                                                    }
                                                } else {
                                                    goto block_56;
                                                }
                                            } else {
                                                goto block_53;
                                            }
                                        } else {
                                            goto block_50;
                                        }
                                    } else {
                                        goto block_47;
                                    }
                                } else {
                                    goto block_44;
                                }
                            } else {
                                goto block_41;
                            }
                        } else {
                            goto block_38;
                        }
                    } else {
                        goto block_35;
                    }
                } else {
block_32:
                    if ((f64) var_f8_2 > 1.0) {
                        var_a4->unkC = 1.0f;
                    }
                    var_f8_3 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk10 = var_f8_3;
block_35:
                    if ((f64) var_f8_3 > 1.0) {
                        var_a4->unk10 = 1.0f;
                    }
                    var_f8_4 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk14 = var_f8_4;
block_38:
                    if ((f64) var_f8_4 > 1.0) {
                        var_a4->unk14 = 1.0f;
                    }
                    var_f8_5 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk18 = var_f8_5;
block_41:
                    if ((f64) var_f8_5 > 1.0) {
                        var_a4->unk18 = 1.0f;
                    }
                    var_f8_6 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk1C = var_f8_6;
block_44:
                    if ((f64) var_f8_6 > 1.0) {
                        var_a4->unk1C = 1.0f;
                    }
                    var_f8_7 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk20 = var_f8_7;
block_47:
                    if ((f64) var_f8_7 > 1.0) {
                        var_a4->unk20 = 1.0f;
                    }
                    var_f8_8 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk24 = var_f8_8;
block_50:
                    if ((f64) var_f8_8 > 1.0) {
                        var_a4->unk24 = 1.0f;
                    }
                    var_f8_9 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk28 = var_f8_9;
block_53:
                    if ((f64) var_f8_9 > 1.0) {
                        var_a4->unk28 = 1.0f;
                    }
                    var_f8_10 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk2C = var_f8_10;
block_56:
                    if ((f64) var_f8_10 > 1.0) {
                        var_a4->unk2C = 1.0f;
                    }
                    var_f8_11 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk30 = var_f8_11;
block_59:
                    if ((f64) var_f8_11 > 1.0) {
                        var_a4->unk30 = 1.0f;
                    }
                    var_f8_12 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk34 = var_f8_12;
block_62:
                    if ((f64) var_f8_12 > 1.0) {
                        var_a4->unk34 = 1.0f;
                    }
                    var_f8_13 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk38 = var_f8_13;
block_65:
                    if ((f64) var_f8_13 > 1.0) {
                        var_a4->unk38 = 1.0f;
                    }
                    var_f8_14 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk3C = var_f8_14;
block_68:
                    if ((f64) var_f8_14 > 1.0) {
                        var_a4->unk3C = 1.0f;
                    }
                }
                var_a4 += 0x40;
                if (var_s0_2 != -1) {
                    goto loop_71;
                }
            }
            var_s0_3 = temp_t0;
            if (temp_t0 >= 0) {
loop_123:
                temp_f8_3 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                var_s0_3 -= 1;
                var_a4->unk0 = temp_f8_3;
                temp_f8_4 = (f64) temp_f8_3;
                if (temp_a6_2 != 0) {
                    if (temp_f8_4 < -1.0) {
                        var_a4->unk0 = (f32) (second half of f64);
                    }
                    var_a4->unk4 = (f32) (second half of f64);
                    if ((f64) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f4 */) < -1.0) {
                        var_a4->unk4 = (f32) (second half of f64);
                    }
                    var_f8_15 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unk8 = var_f8_15;
                    if (temp_a6_2 != 0) {
                        goto block_129;
                    }
                    goto block_138;
                }
                if (temp_f8_4 > 1.0) {
                    var_a4->unk0 = 1.0f;
                }
                var_a4->unk4 = (f32) (second half of f64);
                if ((f64) M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f4 */) > 1.0) {
                    var_a4->unk4 = 1.0f;
                }
                var_f8_15 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                var_a4->unk8 = var_f8_15;
                if (temp_a6_2 == 0) {
block_138:
                    if ((f64) var_f8_15 > 1.0) {
                        var_a4->unk8 = 1.0f;
                    }
                    var_f8_16 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                    var_a4->unkC = var_f8_16;
                    goto block_141;
                }
block_129:
                if ((f64) var_f8_15 < -1.0) {
                    var_a4->unk8 = (f32) (second half of f64);
                }
                var_f8_16 = M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f9, $f4 */);
                var_a4->unkC = var_f8_16;
                if (temp_a6_2 == 0) {
block_141:
                    if ((f64) var_f8_16 > 1.0) {
                        var_a4->unkC = 1.0f;
                    }
                } else if ((f64) var_f8_16 < -1.0) {
                    var_a4->unkC = (f32) (second half of f64);
                }
                var_a4 += 0x10;
                if (var_s0_3 != -1) {
                    goto loop_123;
                }
            }
            var_a4 += (temp_v0_2 - temp_s8) * 0x10;
            if (var_s3 != temp_f1) {
                goto loop_21;
            }
        }
        unkspE8->unkC(unkspE8, var_s1);
    } else {
        __glSetError(0x505);
    }
}

void softMult(void *arg0, f32 fparg1) {
    s64 sp8;
    s64 sp0;
    f32 temp_f0;
    f32 temp_f7;
    f32 temp_f7_10;
    f32 temp_f7_11;
    f32 temp_f7_12;
    f32 temp_f7_13;
    f32 temp_f7_14;
    f32 temp_f7_15;
    f32 temp_f7_16;
    f32 temp_f7_17;
    f32 temp_f7_19;
    f32 temp_f7_20;
    f32 temp_f7_3;
    f32 temp_f7_4;
    f32 temp_f7_5;
    f32 temp_f7_6;
    f32 temp_f7_7;
    f32 temp_f7_8;
    f32 temp_f7_9;
    f32 temp_f8_18;
    f32 temp_f8_2;
    f32 var_f6;
    f64 temp_f6;
    f64 temp_f7_18;
    f64 temp_f7_2;
    f64 temp_f8;
    f64 temp_f8_10;
    f64 temp_f8_11;
    f64 temp_f8_12;
    f64 temp_f8_13;
    f64 temp_f8_14;
    f64 temp_f8_15;
    f64 temp_f8_16;
    f64 temp_f8_17;
    f64 temp_f8_19;
    f64 temp_f8_20;
    f64 temp_f8_3;
    f64 temp_f8_4;
    f64 temp_f8_5;
    f64 temp_f8_6;
    f64 temp_f8_7;
    f64 temp_f8_8;
    f64 temp_f8_9;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_f0_2;
    s32 temp_f2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a6;
    s64 temp_t2;
    void *temp_a4;
    void *var_a3;

    temp_f6 = (f64) fparg1;
    temp_a4 = *(void **)0x1010;
    if (temp_f6 != 1.0) {
        temp_f0 = (f32) temp_a4->unkE78;
        temp_t0 = arg0->unk1C;
        var_a6 = (s32) (temp_f0 - (temp_a4->unk11E34 + 1.0f));
        temp_f2 = (s32) temp_a4->unk11E28;
        temp_f0_2 = (s32) (temp_f0 - temp_a4->unk11E2C);
        var_a3 = arg0->unk10 + (arg0->unk18 * (temp_f2 + (temp_t0 * var_a6)));
        if ((temp_f6 < -1.0) || ((second half of f64) < temp_f6)) {
            var_a0 = 1;
        } else {
            var_a0 = 0;
        }
        temp_t3 = (s32) (temp_a4->unk11E30 + 1.0f) - temp_f2;
        temp_t8 = temp_t0 - temp_t3;
        temp_a4_2 = var_a6 < temp_f0_2;
        if (fparg1 == 0.0f) {
            if (temp_a4_2 != 0) {
                temp_a4_3 = temp_t3 - 1;
                do {
                    var_a6 += 1;
                    var_a0_2 = temp_a4_3;
                    if (temp_a4_3 >= 0) {
                        do {
                            var_a3 += 0x10;
                            var_a3->unk-4 = 0.0f;
                            var_a3->unk-8 = 0.0f;
                            var_a0_2 -= 1;
                            var_a3->unk-C = 0.0f;
                            var_a3->unk-10 = 0.0f;
                        } while (var_a0_2 != -1);
                    }
                    var_a3 += temp_t8 * 0x10;
                } while (var_a6 != temp_f0_2);
            }
        } else if (temp_a4_2 != 0) {
            var_f6 = -1.0f;
            temp_t2 = temp_t3 & 3;
            sp0 = temp_t2;
            temp_t1 = temp_t3 >> 2;
            temp_t2_2 = temp_t2 - 1;
            sp8 = (s64) temp_t1;
            temp_t1_2 = temp_t1 - 1;
loop_16:
            var_a6 += 1;
            var_a4 = temp_t1_2;
            if (temp_t1_2 >= 0) {
loop_34:
                temp_f7 = var_a3->unk0 * fparg1;
                var_a4 -= 1;
                var_a3->unk0 = temp_f7;
                if (var_a0 != 0) {
                    temp_f8 = (f64) temp_f7;
                    if (temp_f8 < -1.0) {
                        var_a3->unk0 = var_f6;
                    } else if ((second half of f64) < temp_f8) {
                        var_a3->unk0 = (f32) (second half of f64);
                    }
                    temp_f8_2 = var_a3->unk4 * fparg1;
                    temp_f7_2 = (f64) temp_f8_2;
                    var_f6 = second half of f64;
                    var_a3->unk4 = temp_f8_2;
                    if (temp_f7_2 < -1.0) {
                        var_a3->unk4 = (f32) (second half of f64);
                    } else if ((second half of f64) < temp_f7_2) {
                        var_a3->unk4 = (f32) (second half of f64);
                    }
                    temp_f7_3 = var_a3->unk8 * fparg1;
                    var_a3->unk8 = temp_f7_3;
                    if (var_a0 != 0) {
                        temp_f8_3 = (f64) temp_f7_3;
                        if (temp_f8_3 < -1.0) {
                            var_a3->unk8 = (f32) (second half of f64);
                        } else if ((second half of f64) < temp_f8_3) {
                            var_a3->unk8 = (f32) (second half of f64);
                        }
                        temp_f7_4 = var_a3->unkC * fparg1;
                        var_a3->unkC = temp_f7_4;
                        if (var_a0 != 0) {
                            temp_f8_4 = (f64) temp_f7_4;
                            if (temp_f8_4 < -1.0) {
                                var_a3->unkC = (f32) (second half of f64);
                            } else if ((second half of f64) < temp_f8_4) {
                                var_a3->unkC = (f32) (second half of f64);
                            }
                            temp_f7_5 = var_a3->unk10 * fparg1;
                            var_a3->unk10 = temp_f7_5;
                            if (var_a0 != 0) {
                                temp_f8_5 = (f64) temp_f7_5;
                                if (temp_f8_5 < -1.0) {
                                    var_a3->unk10 = (f32) (second half of f64);
                                } else if ((second half of f64) < temp_f8_5) {
                                    var_a3->unk10 = (f32) (second half of f64);
                                }
                                temp_f7_6 = var_a3->unk14 * fparg1;
                                var_a3->unk14 = temp_f7_6;
                                if (var_a0 != 0) {
                                    temp_f8_6 = (f64) temp_f7_6;
                                    if (temp_f8_6 < -1.0) {
                                        var_a3->unk14 = (f32) (second half of f64);
                                    } else if ((second half of f64) < temp_f8_6) {
                                        var_a3->unk14 = (f32) (second half of f64);
                                    }
                                    temp_f7_7 = var_a3->unk18 * fparg1;
                                    var_a3->unk18 = temp_f7_7;
                                    if (var_a0 != 0) {
                                        temp_f8_7 = (f64) temp_f7_7;
                                        if (temp_f8_7 < -1.0) {
                                            var_a3->unk18 = (f32) (second half of f64);
                                        } else if ((second half of f64) < temp_f8_7) {
                                            var_a3->unk18 = (f32) (second half of f64);
                                        }
                                        temp_f7_8 = var_a3->unk1C * fparg1;
                                        var_a3->unk1C = temp_f7_8;
                                        if (var_a0 != 0) {
                                            temp_f8_8 = (f64) temp_f7_8;
                                            if (temp_f8_8 < -1.0) {
                                                var_a3->unk1C = (f32) (second half of f64);
                                            } else if ((second half of f64) < temp_f8_8) {
                                                var_a3->unk1C = (f32) (second half of f64);
                                            }
                                            temp_f7_9 = var_a3->unk20 * fparg1;
                                            var_a3->unk20 = temp_f7_9;
                                            if (var_a0 != 0) {
                                                temp_f8_9 = (f64) temp_f7_9;
                                                if (temp_f8_9 < -1.0) {
                                                    var_a3->unk20 = (f32) (second half of f64);
                                                } else if ((second half of f64) < temp_f8_9) {
                                                    var_a3->unk20 = (f32) (second half of f64);
                                                }
                                                temp_f7_10 = var_a3->unk24 * fparg1;
                                                var_a3->unk24 = temp_f7_10;
                                                if (var_a0 != 0) {
                                                    temp_f8_10 = (f64) temp_f7_10;
                                                    if (temp_f8_10 < -1.0) {
                                                        var_a3->unk24 = (f32) (second half of f64);
                                                    } else if ((second half of f64) < temp_f8_10) {
                                                        var_a3->unk24 = (f32) (second half of f64);
                                                    }
                                                    temp_f7_11 = var_a3->unk28 * fparg1;
                                                    var_a3->unk28 = temp_f7_11;
                                                    if (var_a0 != 0) {
                                                        temp_f8_11 = (f64) temp_f7_11;
                                                        if (temp_f8_11 < -1.0) {
                                                            var_a3->unk28 = (f32) (second half of f64);
                                                        } else if ((second half of f64) < temp_f8_11) {
                                                            var_a3->unk28 = (f32) (second half of f64);
                                                        }
                                                        temp_f7_12 = var_a3->unk2C * fparg1;
                                                        var_a3->unk2C = temp_f7_12;
                                                        if (var_a0 != 0) {
                                                            temp_f8_12 = (f64) temp_f7_12;
                                                            if (temp_f8_12 < -1.0) {
                                                                var_a3->unk2C = (f32) (second half of f64);
                                                            } else if ((second half of f64) < temp_f8_12) {
                                                                var_a3->unk2C = (f32) (second half of f64);
                                                            }
                                                            temp_f7_13 = var_a3->unk30 * fparg1;
                                                            var_a3->unk30 = temp_f7_13;
                                                            if (var_a0 != 0) {
                                                                temp_f8_13 = (f64) temp_f7_13;
                                                                if (temp_f8_13 < -1.0) {
                                                                    var_a3->unk30 = (f32) (second half of f64);
                                                                } else if ((second half of f64) < temp_f8_13) {
                                                                    var_a3->unk30 = (f32) (second half of f64);
                                                                }
                                                                temp_f7_14 = var_a3->unk34 * fparg1;
                                                                var_a3->unk34 = temp_f7_14;
                                                                if (var_a0 != 0) {
                                                                    temp_f8_14 = (f64) temp_f7_14;
                                                                    if (temp_f8_14 < -1.0) {
                                                                        var_a3->unk34 = (f32) (second half of f64);
                                                                    } else if ((second half of f64) < temp_f8_14) {
                                                                        var_a3->unk34 = (f32) (second half of f64);
                                                                    }
                                                                    temp_f7_15 = var_a3->unk38 * fparg1;
                                                                    var_a3->unk38 = temp_f7_15;
                                                                    if (var_a0 != 0) {
                                                                        temp_f8_15 = (f64) temp_f7_15;
                                                                        if (temp_f8_15 < -1.0) {
                                                                            var_a3->unk38 = (f32) (second half of f64);
                                                                        } else if ((second half of f64) < temp_f8_15) {
                                                                            var_a3->unk38 = (f32) (second half of f64);
                                                                        }
                                                                        temp_f7_16 = var_a3->unk3C * fparg1;
                                                                        var_a3->unk3C = temp_f7_16;
                                                                        if (var_a0 != 0) {
                                                                            temp_f8_16 = (f64) temp_f7_16;
                                                                            if (temp_f8_16 < -1.0) {
                                                                                var_a3->unk3C = (f32) (second half of f64);
                                                                            } else if ((second half of f64) < temp_f8_16) {
                                                                                var_a3->unk3C = (f32) (second half of f64);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        goto block_32;
                                                                    }
                                                                } else {
                                                                    goto block_31;
                                                                }
                                                            } else {
                                                                goto block_30;
                                                            }
                                                        } else {
                                                            goto block_29;
                                                        }
                                                    } else {
                                                        goto block_28;
                                                    }
                                                } else {
                                                    goto block_27;
                                                }
                                            } else {
                                                goto block_26;
                                            }
                                        } else {
                                            goto block_25;
                                        }
                                    } else {
                                        goto block_24;
                                    }
                                } else {
                                    goto block_23;
                                }
                            } else {
                                goto block_22;
                            }
                        } else {
                            goto block_21;
                        }
                    } else {
                        goto block_20;
                    }
                } else {
                    var_a3->unk8 = (f32) (var_a3->unk8 * fparg1);
                    var_a3->unk4 = (f32) (var_a3->unk4 * fparg1);
block_20:
                    var_a3->unkC = (f32) (var_a3->unkC * fparg1);
block_21:
                    var_a3->unk10 = (f32) (var_a3->unk10 * fparg1);
block_22:
                    var_a3->unk14 = (f32) (var_a3->unk14 * fparg1);
block_23:
                    var_a3->unk18 = (f32) (var_a3->unk18 * fparg1);
block_24:
                    var_a3->unk1C = (f32) (var_a3->unk1C * fparg1);
block_25:
                    var_a3->unk20 = (f32) (var_a3->unk20 * fparg1);
block_26:
                    var_a3->unk24 = (f32) (var_a3->unk24 * fparg1);
block_27:
                    var_a3->unk28 = (f32) (var_a3->unk28 * fparg1);
block_28:
                    var_a3->unk2C = (f32) (var_a3->unk2C * fparg1);
block_29:
                    var_a3->unk30 = (f32) (var_a3->unk30 * fparg1);
block_30:
                    var_a3->unk34 = (f32) (var_a3->unk34 * fparg1);
block_31:
                    var_a3->unk38 = (f32) (var_a3->unk38 * fparg1);
block_32:
                    var_a3->unk3C = (f32) (var_a3->unk3C * fparg1);
                }
                var_a3 += 0x40;
                if (var_a4 != -1) {
                    goto loop_34;
                }
            }
            var_a4_2 = temp_t2_2;
            if (temp_t2_2 >= 0) {
loop_122:
                temp_f7_17 = var_a3->unk0 * fparg1;
                var_a4_2 -= 1;
                var_a3->unk0 = temp_f7_17;
                if (var_a0 != 0) {
                    temp_f8_17 = (f64) temp_f7_17;
                    if (temp_f8_17 < -1.0) {
                        var_a3->unk0 = var_f6;
                    } else if ((second half of f64) < temp_f8_17) {
                        var_a3->unk0 = (f32) (second half of f64);
                    }
                    temp_f8_18 = var_a3->unk4 * fparg1;
                    temp_f7_18 = (f64) temp_f8_18;
                    var_f6 = second half of f64;
                    var_a3->unk4 = temp_f8_18;
                    if (temp_f7_18 < -1.0) {
                        var_a3->unk4 = (f32) (second half of f64);
                    } else if ((second half of f64) < temp_f7_18) {
                        var_a3->unk4 = (f32) (second half of f64);
                    }
                    temp_f7_19 = var_a3->unk8 * fparg1;
                    var_a3->unk8 = temp_f7_19;
                    if (var_a0 != 0) {
                        temp_f8_19 = (f64) temp_f7_19;
                        if (temp_f8_19 < -1.0) {
                            var_a3->unk8 = (f32) (second half of f64);
                        } else if ((second half of f64) < temp_f8_19) {
                            var_a3->unk8 = (f32) (second half of f64);
                        }
                        temp_f7_20 = var_a3->unkC * fparg1;
                        var_a3->unkC = temp_f7_20;
                        if (var_a0 != 0) {
                            temp_f8_20 = (f64) temp_f7_20;
                            if (temp_f8_20 < -1.0) {
                                var_a3->unkC = (f32) (second half of f64);
                            } else if ((second half of f64) < temp_f8_20) {
                                var_a3->unkC = (f32) (second half of f64);
                            }
                        }
                    } else {
                        goto block_137;
                    }
                } else {
                    var_a3->unk8 = (f32) (var_a3->unk8 * fparg1);
                    var_a3->unk4 = (f32) (var_a3->unk4 * fparg1);
block_137:
                    var_a3->unkC = (f32) (var_a3->unkC * fparg1);
                }
                var_a3 += 0x10;
                if (var_a4_2 != -1) {
                    goto loop_122;
                }
            }
            var_a3 += temp_t8 * 0x10;
            if (var_a6 != temp_f0_2) {
                goto loop_16;
            }
        }
    }
}

void softAdd(void *arg0, f32 fparg1) {
    s64 sp8;
    s64 sp0;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f8;
    f32 temp_f8_3;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 temp_f9_3;
    f32 var_f8;
    f32 var_f8_10;
    f32 var_f8_11;
    f32 var_f8_12;
    f32 var_f8_13;
    f32 var_f8_14;
    f32 var_f8_15;
    f32 var_f8_16;
    f32 var_f8_2;
    f32 var_f8_3;
    f32 var_f8_4;
    f32 var_f8_5;
    f32 var_f8_6;
    f32 var_f8_7;
    f32 var_f8_8;
    f32 var_f8_9;
    f64 temp_f8_2;
    f64 temp_f8_4;
    s32 temp_a0;
    s32 temp_f0_2;
    s32 temp_f3;
    s32 temp_t0_2;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a6;
    s64 temp_t0;
    void *temp_a4;
    void *var_a3;

    temp_a4 = *(void **)0x1010;
    if ((f64) fparg1 != (second half of f64)) {
        temp_f0 = (f32) temp_a4->unkE78;
        temp_t8 = arg0->unk1C;
        var_a6 = (s32) (temp_f0 - (temp_a4->unk11E34 + 1.0f));
        temp_f3 = (s32) temp_a4->unk11E28;
        temp_f0_2 = (s32) (temp_f0 - temp_a4->unk11E2C);
        temp_t3 = (s32) (temp_a4->unk11E30 + 1.0f) - temp_f3;
        var_a3 = arg0->unk10 + (arg0->unk18 * (temp_f3 + (temp_t8 * var_a6)));
        if (var_a6 < temp_f0_2) {
            temp_t0 = temp_t3 & 3;
            sp0 = temp_t0;
            temp_t2 = temp_t3 >> 2;
            temp_t0_2 = temp_t0 - 1;
            sp8 = (s64) temp_t2;
            temp_t2_2 = temp_t2 - 1;
            temp_a0 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc1 */);
loop_5:
            var_a6 += 1;
            var_a4 = temp_t2_2;
            if (temp_t2_2 >= 0) {
loop_55:
                temp_f8 = var_a3->unk0 + fparg1;
                var_a4 -= 1;
                var_a3->unk0 = temp_f8;
                temp_f8_2 = (f64) temp_f8;
                if (temp_a0 != 0) {
                    if (temp_f8_2 < (second half of f64)) {
                        var_a3->unk0 = -1.0f;
                    }
                    temp_f9 = var_a3->unk4 + fparg1;
                    var_a3->unk4 = temp_f9;
                    if ((f64) temp_f9 < (second half of f64)) {
                        var_a3->unk4 = -1.0f;
                    }
                    var_f8 = var_a3->unk8 + fparg1;
                    var_a3->unk8 = var_f8;
                    if (temp_a0 != 0) {
                        goto block_61;
                    }
                    goto block_13;
                }
                if (temp_f8_2 > 1.0) {
                    var_a3->unk0 = 1.0f;
                }
                temp_f1 = var_a3->unk4 + fparg1;
                var_a3->unk4 = temp_f1;
                if ((f64) temp_f1 > 1.0) {
                    var_a3->unk4 = 1.0f;
                }
                var_f8 = var_a3->unk8 + fparg1;
                var_a3->unk8 = var_f8;
                if (temp_a0 == 0) {
block_13:
                    if ((f64) var_f8 > 1.0) {
                        var_a3->unk8 = 1.0f;
                    }
                    var_f8_2 = var_a3->unkC + fparg1;
                    var_a3->unkC = var_f8_2;
                    goto block_16;
                }
block_61:
                if ((f64) var_f8 < (second half of f64)) {
                    var_a3->unk8 = -1.0f;
                }
                var_f8_2 = var_a3->unkC + fparg1;
                var_a3->unkC = var_f8_2;
                if (temp_a0 != 0) {
                    if ((f64) var_f8_2 < (second half of f64)) {
                        var_a3->unkC = -1.0f;
                    }
                    var_f8_3 = var_a3->unk10 + fparg1;
                    var_a3->unk10 = var_f8_3;
                    if (temp_a0 != 0) {
                        if ((f64) var_f8_3 < (second half of f64)) {
                            var_a3->unk10 = -1.0f;
                        }
                        var_f8_4 = var_a3->unk14 + fparg1;
                        var_a3->unk14 = var_f8_4;
                        if (temp_a0 != 0) {
                            if ((f64) var_f8_4 < (second half of f64)) {
                                var_a3->unk14 = -1.0f;
                            }
                            var_f8_5 = var_a3->unk18 + fparg1;
                            var_a3->unk18 = var_f8_5;
                            if (temp_a0 != 0) {
                                if ((f64) var_f8_5 < (second half of f64)) {
                                    var_a3->unk18 = -1.0f;
                                }
                                var_f8_6 = var_a3->unk1C + fparg1;
                                var_a3->unk1C = var_f8_6;
                                if (temp_a0 != 0) {
                                    if ((f64) var_f8_6 < (second half of f64)) {
                                        var_a3->unk1C = -1.0f;
                                    }
                                    var_f8_7 = var_a3->unk20 + fparg1;
                                    var_a3->unk20 = var_f8_7;
                                    if (temp_a0 != 0) {
                                        if ((f64) var_f8_7 < (second half of f64)) {
                                            var_a3->unk20 = -1.0f;
                                        }
                                        var_f8_8 = var_a3->unk24 + fparg1;
                                        var_a3->unk24 = var_f8_8;
                                        if (temp_a0 != 0) {
                                            if ((f64) var_f8_8 < (second half of f64)) {
                                                var_a3->unk24 = -1.0f;
                                            }
                                            var_f8_9 = var_a3->unk28 + fparg1;
                                            var_a3->unk28 = var_f8_9;
                                            if (temp_a0 != 0) {
                                                if ((f64) var_f8_9 < (second half of f64)) {
                                                    var_a3->unk28 = -1.0f;
                                                }
                                                var_f8_10 = var_a3->unk2C + fparg1;
                                                var_a3->unk2C = var_f8_10;
                                                if (temp_a0 != 0) {
                                                    if ((f64) var_f8_10 < (second half of f64)) {
                                                        var_a3->unk2C = -1.0f;
                                                    }
                                                    var_f8_11 = var_a3->unk30 + fparg1;
                                                    var_a3->unk30 = var_f8_11;
                                                    if (temp_a0 != 0) {
                                                        if ((f64) var_f8_11 < (second half of f64)) {
                                                            var_a3->unk30 = -1.0f;
                                                        }
                                                        var_f8_12 = var_a3->unk34 + fparg1;
                                                        var_a3->unk34 = var_f8_12;
                                                        if (temp_a0 != 0) {
                                                            if ((f64) var_f8_12 < (second half of f64)) {
                                                                var_a3->unk34 = -1.0f;
                                                            }
                                                            var_f8_13 = var_a3->unk38 + fparg1;
                                                            var_a3->unk38 = var_f8_13;
                                                            if (temp_a0 != 0) {
                                                                if ((f64) var_f8_13 < (second half of f64)) {
                                                                    var_a3->unk38 = -1.0f;
                                                                }
                                                                var_f8_14 = var_a3->unk3C + fparg1;
                                                                var_a3->unk3C = var_f8_14;
                                                                if (temp_a0 != 0) {
                                                                    if ((f64) var_f8_14 < (second half of f64)) {
                                                                        var_a3->unk3C = -1.0f;
                                                                    }
                                                                } else {
                                                                    goto block_52;
                                                                }
                                                            } else {
                                                                goto block_49;
                                                            }
                                                        } else {
                                                            goto block_46;
                                                        }
                                                    } else {
                                                        goto block_43;
                                                    }
                                                } else {
                                                    goto block_40;
                                                }
                                            } else {
                                                goto block_37;
                                            }
                                        } else {
                                            goto block_34;
                                        }
                                    } else {
                                        goto block_31;
                                    }
                                } else {
                                    goto block_28;
                                }
                            } else {
                                goto block_25;
                            }
                        } else {
                            goto block_22;
                        }
                    } else {
                        goto block_19;
                    }
                } else {
block_16:
                    if ((f64) var_f8_2 > 1.0) {
                        var_a3->unkC = 1.0f;
                    }
                    var_f8_3 = var_a3->unk10 + fparg1;
                    var_a3->unk10 = var_f8_3;
block_19:
                    if ((f64) var_f8_3 > 1.0) {
                        var_a3->unk10 = 1.0f;
                    }
                    var_f8_4 = var_a3->unk14 + fparg1;
                    var_a3->unk14 = var_f8_4;
block_22:
                    if ((f64) var_f8_4 > 1.0) {
                        var_a3->unk14 = 1.0f;
                    }
                    var_f8_5 = var_a3->unk18 + fparg1;
                    var_a3->unk18 = var_f8_5;
block_25:
                    if ((f64) var_f8_5 > 1.0) {
                        var_a3->unk18 = 1.0f;
                    }
                    var_f8_6 = var_a3->unk1C + fparg1;
                    var_a3->unk1C = var_f8_6;
block_28:
                    if ((f64) var_f8_6 > 1.0) {
                        var_a3->unk1C = 1.0f;
                    }
                    var_f8_7 = var_a3->unk20 + fparg1;
                    var_a3->unk20 = var_f8_7;
block_31:
                    if ((f64) var_f8_7 > 1.0) {
                        var_a3->unk20 = 1.0f;
                    }
                    var_f8_8 = var_a3->unk24 + fparg1;
                    var_a3->unk24 = var_f8_8;
block_34:
                    if ((f64) var_f8_8 > 1.0) {
                        var_a3->unk24 = 1.0f;
                    }
                    var_f8_9 = var_a3->unk28 + fparg1;
                    var_a3->unk28 = var_f8_9;
block_37:
                    if ((f64) var_f8_9 > 1.0) {
                        var_a3->unk28 = 1.0f;
                    }
                    var_f8_10 = var_a3->unk2C + fparg1;
                    var_a3->unk2C = var_f8_10;
block_40:
                    if ((f64) var_f8_10 > 1.0) {
                        var_a3->unk2C = 1.0f;
                    }
                    var_f8_11 = var_a3->unk30 + fparg1;
                    var_a3->unk30 = var_f8_11;
block_43:
                    if ((f64) var_f8_11 > 1.0) {
                        var_a3->unk30 = 1.0f;
                    }
                    var_f8_12 = var_a3->unk34 + fparg1;
                    var_a3->unk34 = var_f8_12;
block_46:
                    if ((f64) var_f8_12 > 1.0) {
                        var_a3->unk34 = 1.0f;
                    }
                    var_f8_13 = var_a3->unk38 + fparg1;
                    var_a3->unk38 = var_f8_13;
block_49:
                    if ((f64) var_f8_13 > 1.0) {
                        var_a3->unk38 = 1.0f;
                    }
                    var_f8_14 = var_a3->unk3C + fparg1;
                    var_a3->unk3C = var_f8_14;
block_52:
                    if ((f64) var_f8_14 > 1.0) {
                        var_a3->unk3C = 1.0f;
                    }
                }
                var_a3 += 0x40;
                if (var_a4 != -1) {
                    goto loop_55;
                }
            }
            var_a4_2 = temp_t0_2;
            if (temp_t0_2 >= 0) {
loop_108:
                temp_f8_3 = var_a3->unk0 + fparg1;
                var_a4_2 -= 1;
                var_a3->unk0 = temp_f8_3;
                temp_f8_4 = (f64) temp_f8_3;
                if (temp_a0 != 0) {
                    if (temp_f8_4 < (second half of f64)) {
                        var_a3->unk0 = -1.0f;
                    }
                    temp_f9_2 = var_a3->unk4 + fparg1;
                    var_a3->unk4 = temp_f9_2;
                    if ((f64) temp_f9_2 < (second half of f64)) {
                        var_a3->unk4 = -1.0f;
                    }
                    var_f8_15 = var_a3->unk8 + fparg1;
                    var_a3->unk8 = var_f8_15;
                    if (temp_a0 != 0) {
                        goto block_114;
                    }
                    goto block_123;
                }
                if (temp_f8_4 > 1.0) {
                    var_a3->unk0 = 1.0f;
                }
                temp_f9_3 = var_a3->unk4 + fparg1;
                var_a3->unk4 = temp_f9_3;
                if ((f64) temp_f9_3 > 1.0) {
                    var_a3->unk4 = 1.0f;
                }
                var_f8_15 = var_a3->unk8 + fparg1;
                var_a3->unk8 = var_f8_15;
                if (temp_a0 == 0) {
block_123:
                    if ((f64) var_f8_15 > 1.0) {
                        var_a3->unk8 = 1.0f;
                    }
                    var_f8_16 = var_a3->unkC + fparg1;
                    var_a3->unkC = var_f8_16;
                    goto block_126;
                }
block_114:
                if ((f64) var_f8_15 < (second half of f64)) {
                    var_a3->unk8 = -1.0f;
                }
                var_f8_16 = var_a3->unkC + fparg1;
                var_a3->unkC = var_f8_16;
                if (temp_a0 == 0) {
block_126:
                    if ((f64) var_f8_16 > 1.0) {
                        var_a3->unkC = 1.0f;
                    }
                } else if ((f64) var_f8_16 < (second half of f64)) {
                    var_a3->unkC = -1.0f;
                }
                var_a3 += 0x10;
                if (var_a4_2 != -1) {
                    goto loop_108;
                }
            }
            var_a3 += (temp_t8 - temp_t3) * 0x10;
            if (var_a6 != temp_f0_2) {
                goto loop_5;
            }
        }
    }
}

s64 softReturn(s64 arg0, s32 arg6, s32 arg7, f64 fparg1) {
    s64 sp158;
    s64 sp148;
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
    f64 spD0;
    void *spC0;
    s64 *spBC;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    s32 sp80;
    ? sp78;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s32 sp48;
    s32 sp3C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s64 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 var_f6;
    f32 var_f6_2;
    f32 var_f6_3;
    f32 var_f7;
    f32 var_f7_2;
    f32 var_f7_3;
    f32 var_f8;
    f32 var_f8_2;
    f32 var_f8_3;
    f32 var_f9;
    f32 var_f9_2;
    f32 var_f9_3;
    s16 var_t1_2;
    s16 var_t1_4;
    s32 temp_a0;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_f0_2;
    s32 temp_f1;
    s32 temp_f2;
    s32 temp_f3;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_t8;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t1_3;
    s64 temp_a2;
    s64 temp_a3_2;
    s64 var_ra;
    s64 var_t3;
    s64 var_v0;
    u32 temp_a4;
    u32 temp_a5;
    void *temp_s1;
    void *temp_v0;
    void *var_a4;
    void *var_a7_2;

    var_ra = saved_reg_ra;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_s1 = *(void **)0x1010;
    var_v0 = arg0;
    if (temp_s1->unk165C4 == 0) {
        temp_a4 = temp_s1->unk165BC;
        spD0 = fparg1;
        sp128 = arg0;
        if ((temp_s1->unk7C20 != temp_a4) || (temp_s1->unk165C0 != temp_s1->unk7C24)) {
            temp_s1->unk7C20 = temp_a4;
            temp_a5 = temp_s1->unk165C0;
            temp_s1->unk7C24 = temp_a5;
            if (temp_s1->unk9830 != 0) {
                temp_s1->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                var_a7 = 0xFA;
                HQ2_READ_FIFO = 0xFA;
                var_a6 = 0x10046;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            // Error: negative shift count
            // At instruction: bgez $t1, .L0d953684
            if (M2C_ERROR()) {
                spC = 0;
                sp8 = 0;
                sp4 = 0;
                sp0 = 0;
                temp_a4_2 = ((u32) temp_s1->unk7C20 >> 0xC) & 0xFFF;
                sp0 = temp_a4_2;
                temp_a3 = temp_s1->unk7C20 & 0xFFF;
                sp8 = temp_a3;
                sp4 = ((u32) temp_s1->unk7C24 >> 0xC) & 0xFFF;
                spC = temp_s1->unk7C24 & 0xFFF;
                __glOdysseyIoctl(temp_s1, 0x6F64000D, sp, temp_a3, temp_a4_2, temp_a5, var_a6, var_a7);
                var_ra = sp158;
            }
            sp158 = var_ra;
            temp_s1->unk16964 = (s32) (temp_s1->unk16964 | 0x2000);
            *(?32 *)0x1018 = 2;
        }
        temp_a5_2 = temp_s1->unkE78;
        temp_f0 = (f32) temp_a5_2;
        temp_f2 = (s32) temp_s1->unk11E28;
        temp_f3 = (s32) (temp_s1->unk11E30 + 1.0f);
        temp_f1 = (s32) (temp_f0 - temp_s1->unk11E2C);
        temp_f0_2 = (s32) (temp_f0 - (temp_s1->unk11E34 + 1.0f));
        sp110 = (s64) temp_f3;
        temp_a2 = temp_f3 - temp_f2;
        sp148 = (s64) temp_f0_2;
        temp_a3_2 = temp_f1 - temp_f0_2;
        sp158 = var_ra;
        sp118 = (s64) temp_f2;
        sp120 = temp_a2;
        sp108 = temp_a3_2;
        temp_v0 = temp_s1->unk0(temp_s1, temp_a2 * temp_a3_2 * 8, temp_a2, temp_a3_2, temp_f2, temp_a5_2);
        if (temp_v0 != NULL) {
            temp_a6 = sp128->unk1C;
            var_a7_2 = sp128->unk10 + (sp128->unk18 * (sp118 + (temp_a6 * sp148)));
            if (((f64) (second half of f64) < (second half of f64)) || ((second half of f64) > 1.0)) {
                var_a5 = 1;
            } else {
                var_a5 = 0;
            }
            var_a4 = temp_v0;
            var_t3 = sp148;
            if (sp148 < temp_f1) {
                temp_ra = sp120 >> 2;
                temp_t8 = (sp120 & 3) - 1;
                spD8 = (s64) temp_ra;
                temp_ra_2 = temp_ra - 1;
loop_22:
                var_t3 += 1;
                var_t0 = temp_ra_2;
                if (temp_ra_2 >= 0) {
loop_27:
                    temp_f6 = (f32) (second half of f64);
                    temp_f7 = (f32) ((second half of f64) + 0.5);
                    var_t1 = 0;
                    temp_f9 = (f32) (second half of f64);
                    if ((var_a5 != 0) && (temp_f9 > 65535.0f)) {
                        var_a4->unk0 = 0xFFFF;
                        goto block_30;
                    }
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                    // At instruction: c.lt.d $f12, $f5
                    if (M2C_ERROR()) {
                        var_t1 = (s32) temp_f9;
                    }
                    var_a4->unk0 = (s16) var_t1;
                    if (var_a5 == 0) {
                        goto block_31;
                    }
block_30:
                    if (!((f32) ((second half of f64) + 0.5) > 65535.0f)) {
block_31:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f9, $f5
                        if (M2C_ERROR()) {

                        } else {
                            var_t1 = (s32) (second half of f64);
                        }
                        var_a4->unk2 = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_42;
                        }
                        goto block_41;
                    }
                    var_a4->unk2 = 0xFFFF;
                    if (var_a5 != 0) {
block_41:
                        if (!(temp_f7 > 65535.0f)) {
                            goto block_42;
                        }
                        var_a4->unk4 = 0xFFFF;
                        goto block_47;
                    }
block_42:
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                    // At instruction: c.lt.d $f15, $f5
                    if (M2C_ERROR()) {
                        var_t1 = (s32) temp_f7;
                    }
                    var_a4->unk4 = (s16) var_t1;
                    if (var_a5 == 0) {
                        goto block_48;
                    }
block_47:
                    if (!(temp_f6 > 65535.0f)) {
block_48:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f17, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) temp_f6;
                        }
                        var_a4->unk6 = (s16) var_t1;
                        var_f6 = (f32) (second half of f64);
                        var_f7 = (f32) ((second half of f64) + 0.5);
                        var_f8 = (f32) ((second half of f64) + 0.5);
                        var_f9 = (f32) (second half of f64);
                        if (var_a5 == 0) {
                            goto block_54;
                        }
                        goto block_53;
                    }
                    var_a4->unk6 = 0xFFFF;
                    var_f6 = (f32) (second half of f64);
                    var_f7 = (f32) ((second half of f64) + 0.5);
                    var_f8 = (f32) ((second half of f64) + 0.5);
                    var_f9 = (f32) (second half of f64);
block_53:
                    if (!(var_f9 > 65535.0f)) {
block_54:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f12, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f9;
                        }
                        var_a4->unk8 = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_60;
                        }
                        goto block_59;
                    }
                    var_a4->unk8 = 0xFFFF;
block_59:
                    if (!(var_f8 > 65535.0f)) {
block_60:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f14, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f8;
                        }
                        var_a4->unkA = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_66;
                        }
                        goto block_65;
                    }
                    var_a4->unkA = 0xFFFF;
block_65:
                    if (!(var_f7 > 65535.0f)) {
block_66:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f16, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f7;
                        }
                        var_a4->unkC = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_72;
                        }
                        goto block_71;
                    }
                    var_a4->unkC = 0xFFFF;
block_71:
                    if (!(var_f6 > 65535.0f)) {
block_72:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f18, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f6;
                        }
                        var_a4->unkE = (s16) var_t1;
                        var_f6_2 = (f32) (second half of f64);
                        var_f7_2 = (f32) ((second half of f64) + 0.5);
                        var_f8_2 = (f32) ((second half of f64) + 0.5);
                        var_f9_2 = (f32) (second half of f64);
                        if (var_a5 == 0) {
                            goto block_78;
                        }
                        goto block_77;
                    }
                    var_a4->unkE = 0xFFFF;
                    var_f6_2 = (f32) (second half of f64);
                    var_f7_2 = (f32) ((second half of f64) + 0.5);
                    var_f8_2 = (f32) ((second half of f64) + 0.5);
                    var_f9_2 = (f32) (second half of f64);
block_77:
                    if (!(var_f9_2 > 65535.0f)) {
block_78:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f12, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f9_2;
                        }
                        var_a4->unk10 = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_84;
                        }
                        goto block_83;
                    }
                    var_a4->unk10 = 0xFFFF;
block_83:
                    if (!(var_f8_2 > 65535.0f)) {
block_84:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f14, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f8_2;
                        }
                        var_a4->unk12 = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_90;
                        }
                        goto block_89;
                    }
                    var_a4->unk12 = 0xFFFF;
block_89:
                    if (!(var_f7_2 > 65535.0f)) {
block_90:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f16, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f7_2;
                        }
                        var_a4->unk14 = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_96;
                        }
                        goto block_95;
                    }
                    var_a4->unk14 = 0xFFFF;
block_95:
                    if (!(var_f6_2 > 65535.0f)) {
block_96:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f18, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f6_2;
                        }
                        var_a4->unk16 = (s16) var_t1;
                        var_f6_3 = (f32) (second half of f64);
                        var_f7_3 = (f32) ((second half of f64) + 0.5);
                        var_f8_3 = (f32) ((second half of f64) + 0.5);
                        var_f9_3 = (f32) (second half of f64);
                        if (var_a5 == 0) {
                            goto block_102;
                        }
                        goto block_101;
                    }
                    var_a4->unk16 = 0xFFFF;
                    var_f6_3 = (f32) (second half of f64);
                    var_f7_3 = (f32) ((second half of f64) + 0.5);
                    var_f8_3 = (f32) ((second half of f64) + 0.5);
                    var_f9_3 = (f32) (second half of f64);
block_101:
                    if (!(var_f9_3 > 65535.0f)) {
block_102:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f12, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f9_3;
                        }
                        var_a4->unk18 = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_108;
                        }
                        goto block_107;
                    }
                    var_a4->unk18 = 0xFFFF;
block_107:
                    if (!(var_f8_3 > 65535.0f)) {
block_108:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f14, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f8_3;
                        }
                        var_a4->unk1A = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_114;
                        }
                        goto block_113;
                    }
                    var_a4->unk1A = 0xFFFF;
block_113:
                    if (!(var_f7_3 > 65535.0f)) {
block_114:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f16, $f5
                        if (M2C_ERROR()) {
                            var_t1 = (s32) var_f7_3;
                        }
                        var_a4->unk1C = (s16) var_t1;
                        if (var_a5 == 0) {
                            goto block_117;
                        }
                        goto block_120;
                    }
                    var_a4->unk1C = 0xFFFF;
block_120:
                    if (var_f6_3 > 65535.0f) {
                        var_t1_2 = 0xFFFF;
                    } else {
block_117:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f18, $f5
                        if (M2C_ERROR()) {

                        } else {
                            var_t1_2 = (s16) (s32) var_f6_3;
                        }
                    }
                    var_t0 -= 1;
                    var_a4 += 0x20;
                    var_a7_2 += 0x40;
                    var_a4->unk-2 = var_t1_2;
                    if (var_t0 != -1) {
                        goto loop_27;
                    }
                }
                var_t0_2 = temp_t8;
                if (temp_t8 >= 0) {
loop_128:
                    temp_f6_2 = (f32) (second half of f64);
                    temp_f7_2 = (f32) ((second half of f64) + 0.5);
                    var_t1_3 = 0;
                    var_t0_2 -= 1;
                    var_a7_2 += 0x10;
                    temp_f9_2 = (f32) (second half of f64);
                    if ((var_a5 != 0) && (temp_f9_2 > 65535.0f)) {
                        var_a4->unk0 = 0xFFFF;
                        goto block_131;
                    }
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                    // At instruction: c.lt.d $f12, $f5
                    if (M2C_ERROR()) {
                        var_t1_3 = (s32) temp_f9_2;
                    }
                    var_a4->unk0 = (s16) var_t1_3;
                    if (var_a5 == 0) {
                        goto block_132;
                    }
block_131:
                    if (!((f32) ((second half of f64) + 0.5) > 65535.0f)) {
block_132:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f9, $f5
                        if (M2C_ERROR()) {

                        } else {
                            var_t1_3 = (s32) (second half of f64);
                        }
                        var_a4->unk2 = (s16) var_t1_3;
                        if (var_a5 == 0) {
                            goto block_143;
                        }
                        goto block_142;
                    }
                    var_a4->unk2 = 0xFFFF;
                    if (var_a5 != 0) {
block_142:
                        if (!(temp_f7_2 > 65535.0f)) {
                            goto block_143;
                        }
                        var_a4->unk4 = 0xFFFF;
                        goto block_149;
                    }
block_143:
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                    // At instruction: c.lt.d $f15, $f5
                    if (M2C_ERROR()) {
                        var_t1_3 = (s32) temp_f7_2;
                    }
                    var_a4->unk4 = (s16) var_t1_3;
                    if (var_a5 == 0) {
                        goto block_146;
                    }
block_149:
                    if (temp_f6_2 > 65535.0f) {
                        var_t1_4 = 0xFFFF;
                    } else {
block_146:
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f5
                        // At instruction: c.lt.d $f17, $f5
                        if (M2C_ERROR()) {

                        } else {
                            var_t1_4 = (s16) (s32) temp_f6_2;
                        }
                    }
                    var_a4 += 8;
                    var_a4->unk-2 = var_t1_4;
                    if (var_t0_2 != -1) {
                        goto loop_128;
                    }
                }
                var_a7_2 += (temp_a6 - sp120) * 0x10;
                if (temp_f1 != var_t3) {
                    goto loop_22;
                }
            }
            temp_a6_2 = temp_s1->unk11C34;
            temp_a4_3 = temp_s1->unk11C3C;
            temp_a2_2 = temp_s1->unk11C40;
            sp100 = (s64) temp_s1->unk11C44;
            temp_a0 = temp_s1->unk11CC0;
            temp_s1->unk11C44 = (s32) temp_s1->unk11D18;
            temp_s1->unk11C40 = (s32) temp_s1->unk11D14;
            temp_s1->unk11C3C = (s32) temp_s1->unk11D10;
            temp_s1->unk11C34 = (s32) temp_s1->unk11D08;
            spF8 = (s64) temp_a6_2;
            spE8 = (s64) temp_a4_3;
            spF0 = (s64) temp_a2_2;
            if (temp_s1->unk7C5C != temp_a0) {
                temp_s1->unk7C5C = temp_a0;
                temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x80);
                var_a7_2 = (void *)2;
                *(void *)0x1018 = 2;
            }
            if (temp_s1->unk700 & 8) {
                spE0 = (s64) temp_v0;
                temp_s1->unk7BFC = (s32) (0x40000 | temp_s1->unk7BFC);
                temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 2);
                temp_s1->unk11C34 = (s32) (0x40000 | temp_s1->unk11C34);
                *(void *)0x1018 = 2;
            }
            sp10 = 0;
            sp10.unk38 = 0;
            sp10.unk30 = 0;
            sp10.unk28 = 0;
            sp10.unk20 = 0;
            sp10.unk18 = 0;
            sp10.unk10 = 0;
            sp10.unk8 = 0;
            sp28 = 1;
            sp1C = 0x1403;
            sp18 = 0x1908;
            sp24 = (s32) sp108;
            sp20 = (s32) sp120;
            sp48 = 0;
            spE0 = (s64) temp_v0;
            unksp14 = 0;
            sp3C = (s32) spE0;
            temp_f18 = temp_s1->unk12040;
            sp50 = temp_f18;
            temp_f17 = temp_s1->unk12044;
            sp54 = temp_f17;
            sp58 = temp_s1->unk12048;
            temp_f16 = temp_s1->unk1204C;
            sp60 = (f32) sp118;
            sp5C = temp_f16;
            temp_f14 = (f32) sp110;
            sp68 = temp_f14;
            temp_f15 = temp_s1->unk11E34 + 1.0f;
            sp64 = temp_f15;
            sp80 = 0;
            spA0 = 0.0f;
            spA4 = 0.0f;
            spA8 = 0.0f;
            spAC = 0.0f;
            sp90 = 1.0f;
            sp94 = 1.0f;
            sp98 = 1.0f;
            sp9C = 1.0f;
            spC0 = temp_s1 + 0x11E74;
            spBC = &sp10;
            sp6C = temp_s1->unk11E2C;
            __glOdysseyRenderFunc_DownloadColor(&sp78, &sp50, spE0, 0x1403, 0x1908, sp108, sp120, var_a7_2, 1.0f, 0, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18);
            temp_s1->unk11C44 = (s32) sp100;
            temp_s1->unk11C40 = (s32) spF0;
            temp_s1->unk11C3C = (s32) spE8;
            temp_s1->unk11C34 = (s32) spF8;
            var_v0 = temp_s1->unkC(temp_s1, spE0);
        } else {
            var_v0 = __glSetError(0x505, sp148);
        }
    }
    return var_v0;
}

void __glSoftAllocAccum(void *arg0, s32 arg1) {
    arg0->unk7AF0(arg1, arg0->unkE74, arg0->unkE78);
}

void softClear(void *arg0) {
    f32 temp_f0;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f7;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_f0_2;
    s32 temp_f4;
    s32 temp_t0;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a4;
    s32 var_a5;
    void *temp_s1;
    void *var_a3;

    var_a1 = arg0->unk10;
    temp_s1 = *(void **)0x1010;
    if (var_a1 == 0) {
        arg0->unk84(temp_s1, arg0);
        var_a1 = arg0->unk10;
    }
    temp_f0 = (f32) temp_s1->unkE78;
    temp_a0 = arg0->unk1C;
    var_a5 = (s32) (temp_f0 - (temp_s1->unk11E34 + 1.0f));
    temp_f4 = (s32) temp_s1->unk11E28;
    temp_f0_2 = (s32) (temp_f0 - temp_s1->unk11E2C);
    temp_f6 = temp_s1->unk67C;
    temp_a4 = (s32) (temp_s1->unk11E30 + 1.0f) - temp_f4;
    temp_f7 = temp_s1->unk678;
    temp_f4_2 = temp_s1->unk674;
    temp_f5 = temp_s1->unk670;
    var_a3 = var_a1 + (arg0->unk18 * (temp_f4 + (temp_a0 * var_a5)));
    if (var_a5 < temp_f0_2) {
        temp_t0 = (temp_a4 & 3) - 1;
        temp_a6 = temp_a4 >> 2;
        temp_t2 = temp_a6 - 1;
loop_11:
        var_a0 = temp_t2;
        if (temp_t2 >= 0) {
            var_a4 = temp_a6 & 3;
            if (var_a4 == 0) {

            } else {
                do {
                    var_a3 += 0x40;
                    var_a3->unk-4 = temp_f6;
                    var_a3->unk-8 = temp_f7;
                    var_a3->unk-C = temp_f4_2;
                    var_a3->unk-10 = temp_f5;
                    var_a3->unk-14 = temp_f6;
                    var_a3->unk-18 = temp_f7;
                    var_a3->unk-1C = temp_f4_2;
                    var_a3->unk-20 = temp_f5;
                    var_a3->unk-24 = temp_f6;
                    var_a3->unk-28 = temp_f7;
                    var_a3->unk-2C = temp_f4_2;
                    var_a3->unk-30 = temp_f5;
                    var_a3->unk-34 = temp_f6;
                    var_a3->unk-38 = temp_f7;
                    var_a4 -= 1;
                    var_a3->unk-3C = temp_f4_2;
                    var_a0 -= 1;
                    var_a3->unk-40 = temp_f5;
                } while (var_a4 != 0);
            }
            if ((temp_a6 >> 2) != 0) {
                do {
                    var_a3 += 0x100;
                    var_a3->unk-4 = temp_f6;
                    var_a3->unk-8 = temp_f7;
                    var_a3->unk-C = temp_f4_2;
                    var_a3->unk-10 = temp_f5;
                    var_a3->unk-14 = temp_f6;
                    var_a3->unk-18 = temp_f7;
                    var_a3->unk-1C = temp_f4_2;
                    var_a3->unk-20 = temp_f5;
                    var_a3->unk-24 = temp_f6;
                    var_a3->unk-28 = temp_f7;
                    var_a3->unk-2C = temp_f4_2;
                    var_a3->unk-30 = temp_f5;
                    var_a3->unk-34 = temp_f6;
                    var_a3->unk-38 = temp_f7;
                    var_a3->unk-3C = temp_f4_2;
                    var_a3->unk-40 = temp_f5;
                    var_a3->unk-44 = temp_f6;
                    var_a3->unk-48 = temp_f7;
                    var_a3->unk-4C = temp_f4_2;
                    var_a3->unk-50 = temp_f5;
                    var_a3->unk-54 = temp_f6;
                    var_a3->unk-58 = temp_f7;
                    var_a3->unk-5C = temp_f4_2;
                    var_a3->unk-60 = temp_f5;
                    var_a3->unk-64 = temp_f6;
                    var_a3->unk-68 = temp_f7;
                    var_a3->unk-6C = temp_f4_2;
                    var_a3->unk-70 = temp_f5;
                    var_a3->unk-74 = temp_f6;
                    var_a3->unk-78 = temp_f7;
                    var_a3->unk-7C = temp_f4_2;
                    var_a3->unk-80 = temp_f5;
                    var_a3->unk-84 = temp_f6;
                    var_a3->unk-88 = temp_f7;
                    var_a3->unk-8C = temp_f4_2;
                    var_a3->unk-90 = temp_f5;
                    var_a3->unk-94 = temp_f6;
                    var_a3->unk-98 = temp_f7;
                    var_a3->unk-9C = temp_f4_2;
                    var_a3->unk-A0 = temp_f5;
                    var_a3->unk-A4 = temp_f6;
                    var_a3->unk-A8 = temp_f7;
                    var_a3->unk-AC = temp_f4_2;
                    var_a3->unk-B0 = temp_f5;
                    var_a3->unk-B4 = temp_f6;
                    var_a3->unk-B8 = temp_f7;
                    var_a3->unk-BC = temp_f4_2;
                    var_a3->unk-C0 = temp_f5;
                    var_a3->unk-C4 = temp_f6;
                    var_a3->unk-C8 = temp_f7;
                    var_a3->unk-CC = temp_f4_2;
                    var_a3->unk-D0 = temp_f5;
                    var_a3->unk-D4 = temp_f6;
                    var_a3->unk-D8 = temp_f7;
                    var_a3->unk-DC = temp_f4_2;
                    var_a3->unk-E0 = temp_f5;
                    var_a3->unk-E4 = temp_f6;
                    var_a3->unk-E8 = temp_f7;
                    var_a3->unk-EC = temp_f4_2;
                    var_a3->unk-F0 = temp_f5;
                    var_a3->unk-F4 = temp_f6;
                    var_a3->unk-F8 = temp_f7;
                    var_a0 -= 4;
                    var_a3->unk-FC = temp_f4_2;
                    var_a3->unk-100 = temp_f5;
                } while (var_a0 != -1);
            }
        }
        var_a5 += 1;
        var_a0_2 = temp_t0;
        if (temp_t0 >= 0) {
            do {
                var_a3 += 0x10;
                var_a3->unk-4 = temp_f6;
                var_a3->unk-8 = temp_f7;
                var_a0_2 -= 1;
                var_a3->unk-C = temp_f4_2;
                var_a3->unk-10 = temp_f5;
            } while (var_a0_2 != -1);
        }
        var_a3 += (temp_a0 - temp_a4) * 0x10;
        if (var_a5 != temp_f0_2) {
            goto loop_11;
        }
    }
}

void __glOdySoftAccum(s32 arg0, f32 fparg1) {
    ? (*var_a4)(void *, void *, void *, s32, ?);
    void *temp_a3;
    void *temp_s1;

    temp_a3 = *(void **)0x1010;
    temp_s1 = temp_a3 + 0x7AB8;
    if (temp_a3->unk7AC8 == 0) {
        __text0(temp_a3, temp_s1, temp_a3);
    }
    var_a4 = __text0;
    if (arg0 != 0x100) {
        var_a4 = __text0 + 0x2460;
        switch (arg0) {                             /* irregular */
        case 0x101:
            break;
        case 0x102:
            break;
        case 0x103:
            break;
        }
    }
    __text0(temp_s1, (void *)0x102, (void *)0x103, arg0 ^ 0x104, var_a4);
}

/*
Decompilation failure in function hardLoadAccumulate24:

Cannot find branch target __glOdySoftAccum
*/

/*
Decompilation failure in function hardAdd24:

Unable to determine jump table for jr instruction at ody_accumop.s line 6884.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x18, 0x1c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94], gap at: 0x10. */
void hardMult24(f32 fparg0) {
    f32 var_f20;
    f64 temp_f4;
    s32 var_s1;
    u32 var_f29;
    void *temp_s3;

    var_f29 = saved_reg_f29;
    temp_s3 = *(void **)0x1010;
    unksp40 = second half of f64;
    if ((f64) fparg0 != 1.0) {
        var_s1 = 0;
        if ((f64) fabsf(fparg0) <= 1.0) {
            if ((second half of f64) < GLUE_F64(M2C_ERROR(/* Read from unset register $f3 */), 0U)) {

            } else if ((second half of f64) >= 1.0) {

            }
            // Error: Bad function call operand __glOdysseyAccumClose - 0x190
            // At instruction: bal __glOdysseyAccumClose - 0x190
        } else {
            var_f20 = 1.0f;
            if (fparg0 > 0.0f) {
                unksp10 = (s64) (temp_s3 + 0x11EEC);
                unksp28 = (s64) (temp_s3 + 0x1201C);
                unksp20 = (s64) (temp_s3 + 0x11EB0);
loop_14:
                temp_f4 = (f64) var_f20;
                if (!(temp_f4 < GLUE_F64(var_f29, 0U))) {
                    if (temp_f4 >= 1.0) {

                    }
                }
                temp_s3->unk7BFC = (s32) (0x20000 | temp_s3->unk7BFC);
                temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
                *(void *)0x1018 = 2;
                temp_s3->unk96A4 = (s32) (0x100000 | temp_s3->unk96A4);
                temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
                *(void *)0x1018 = 2;
                if (var_s1 != 0) {
                    // Error: Bad function call operand __glOdysseyAccumClose - 0x190
                    // At instruction: bal __glOdysseyAccumClose - 0x190
                } else {
                    // Error: Bad function call operand __glOdysseyAccumClose - 0x190
                    // At instruction: bal __glOdysseyAccumClose - 0x190
                }
                // Error: Bad function call operand __glOdysseyAccumClose - 0x120
                // At instruction: bal __glOdysseyAccumClose - 0x120
                if (M2C_ERROR()) {
                    goto loop_14;
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x78, 0x7c, 0x90, 0x94], gap at: 0x20. */
void hardReturn24(f32 fparg0) {
    f64 spE8;
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    f64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f30;
    f32 var_f22;
    f64 temp_f20;
    f64 temp_f20_2;
    f64 temp_f26;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a5_7;
    s32 temp_a5_8;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a6_5;
    s32 temp_a6_6;
    s32 temp_a6_7;
    s32 temp_a6_8;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_a7_5;
    s32 temp_at;
    s32 temp_f13;
    s32 temp_f13_2;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s6_2;
    s32 temp_t1;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a1_2;
    void *temp_s5;
    void *temp_s6;
    void *temp_s7;

    // Error: Bad function call operand __glOdysseyAccumClose - 0x190
    // At instruction: bal __glOdysseyAccumClose - 0x190
    if (M2C_ERROR()) {

    } else {
        temp_f30 = fabsf(var_f22);
        temp_f12 = sqrtf(temp_f30);
        temp_s5->unk16960 = (s32) (0x200000 | temp_s5->unk16960);
        temp_s5->unk96A4 = (s32) (temp_s5->unk96A4 | 0x100000);
        *(void *)0x1018 = 2;
        temp_f13 = (s32) ceilf((bitwise s32) sqrtf(temp_f12));
        temp_ra = (temp_f13 == 0) ? 1 : temp_f13;
        spE8 = (bitwise f64) var_f22;
        temp_t8 = (M2C_ERROR(/* unknown instruction: movf $t9, $zero, $fcc3 */) == 0) ? temp_ra : 1;
        var_s3 = 0xFFFF0000;
        var_s0 = 0;
        spB8 = (s64) temp_t8;
        if (temp_t8 > 0) {
            var_s3 = 0xFFFF0000;
            do {
                temp_s5->unk8CE8 = 2;
                temp_s5->unk16960 = (s32) (0x10000 | temp_s5->unk16960);
                temp_s5->unk8D08 = (s32) (0xFFFF0000 & temp_s5->unk8D08);
                temp_a6 = 0xFFFF0000 & temp_s5->unk8CF0;
                temp_s5->unk8D00 = (s32) (0xFFFF0000 & temp_s5->unk8D00);
                temp_s5->unk8CF8 = (s32) (0xFFFF0000 & temp_s5->unk8CF8);
                temp_a0 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: movt.s $f15, $f26, $fcc4 */)) & 0xFFFF;
                temp_s5->unk8CF0 = temp_a6;
                temp_a7 = temp_a0 | (0xFFFF0000 & temp_s5->unk8CEC);
                temp_a5 = temp_a0 | (0xFFFF0000 & temp_s5->unk8CF4);
                temp_s5->unk8D04 = (s32) (temp_a0 | (0xFFFF0000 & temp_s5->unk8D04));
                temp_s5->unk8CFC = (s32) (temp_a0 | (0xFFFF0000 & temp_s5->unk8CFC));
                temp_s5->unk8CF4 = temp_a5;
                temp_s5->unk8CEC = temp_a7;
                *(void *)0x1018 = 2;
                temp_s5->unk7BFC = (s32) (0xFFFDFFFF & temp_s5->unk7BFC);
                temp_s5->unk16960 = (s32) (temp_s5->unk16960 | 2);
                *(void *)0x1018 = 2;
                __glOdysseyImageMovePixelsCopy(temp_s7, temp_s7, temp_s6, 1, 0, temp_a5, temp_a6, temp_a7);
                temp_f26 = pow(second half of f64, (f64) (second half of f64));
                temp_f20 = saved_reg_f28 / ((f64) powf(4.0f, (f32) var_s0) * 4.0);
                var_s0 += 1;
            } while (var_s0 < spB8);
        }
        var_f22 = (bitwise f32) spE8;
        temp_s5->unk8CE8 = 2;
        temp_s5->unk16960 = (s32) (0x10000 | temp_s5->unk16960);
        temp_s5->unk8D08 = (s32) (0xFFFF0000 & temp_s5->unk8D08);
        temp_s5->unk8D00 = (s32) (0xFFFF0000 & temp_s5->unk8D00);
        temp_s5->unk8CF8 = (s32) (0xFFFF0000 & temp_s5->unk8CF8);
        temp_s5->unk8CF0 = (s32) (0xFFFF0000 & temp_s5->unk8CF0);
        temp_s5->unk8D04 = (s32) ((0xFFFF0000 & temp_s5->unk8D04) | 0x1000);
        temp_s5->unk8CFC = (s32) ((0xFFFF0000 & temp_s5->unk8CFC) | 0x1000);
        temp_s5->unk8CF4 = (s32) ((0xFFFF0000 & temp_s5->unk8CF4) | 0x1000);
        temp_s5->unk8CEC = (s32) ((0xFFFF0000 & temp_s5->unk8CEC) | 0x1000);
        *(void *)0x1018 = 2;
    }
    // Error: Bad function call operand __glOdysseyAccumClose - 0x190
    // At instruction: bal __glOdysseyAccumClose - 0x190
    if (M2C_ERROR() && (saved_reg_f28 != M2C_ERROR(/* Read from unset register $f6 */))) {
        temp_f12_2 = fabsf(var_f22);
        sp10 = (bitwise f64) temp_f12_2;
        temp_f12_3 = sqrtf(temp_f12_2);
        temp_a2 = temp_s5->unk96A4;
        temp_a0_2 = 0x200000 | temp_s5->unk16960;
        temp_s5->unk16960 = temp_a0_2;
        temp_a1 = 0xFFEFFFFF & temp_a2;
        temp_s5->unk96A4 = temp_a1;
        *(void *)0x1018 = 2;
        temp_f13_2 = (s32) ceilf(temp_a0_2, temp_a1, temp_a2, sqrtf(temp_f12_3));
        temp_a2_2 = (M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc5 */) == 0) ? ((temp_f13_2 == 0) ? 1 : temp_f13_2) : 1;
        var_s0_2 = 0;
        spA8 = (s64) temp_a2_2;
        if (temp_a2_2 > 0) {
            do {
                temp_s5->unk8CE8 = 2;
                temp_a7_2 = 0x10000 | temp_s5->unk16960;
                temp_s5->unk16960 = temp_a7_2;
                temp_s5->unk8D08 = (s32) (var_s3 & temp_s5->unk8D08);
                temp_s5->unk8D00 = (s32) (var_s3 & temp_s5->unk8D00);
                temp_s5->unk8CF8 = (s32) (var_s3 & temp_s5->unk8CF8);
                temp_t1 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: movt.s $f15, $f22, $fcc6 */)) & 0xFFFF;
                temp_s5->unk8CF0 = (s32) (var_s3 & temp_s5->unk8CF0);
                temp_s5->unk8D04 = (s32) (temp_t1 | (var_s3 & temp_s5->unk8D04));
                temp_s5->unk8CFC = (s32) (temp_t1 | (var_s3 & temp_s5->unk8CFC));
                temp_s5->unk8CF4 = (s32) (temp_t1 | (var_s3 & temp_s5->unk8CF4));
                temp_s5->unk8CEC = (s32) (temp_t1 | (var_s3 & temp_s5->unk8CEC));
                *(void *)0x1018 = 2;
                temp_a6_2 = 0xFFFDFFFF & temp_s5->unk7BFC;
                temp_s5->unk7BFC = temp_a6_2;
                temp_a5_2 = temp_s5->unk16960 | 2;
                temp_s5->unk16960 = temp_a5_2;
                *(void *)0x1018 = 2;
                __glOdysseyImageMovePixelsCopy(temp_s7, temp_s7, temp_s6, 1, 0, temp_a5_2, temp_a6_2, temp_a7_2);
                temp_f20_2 = saved_reg_f28 / ((f64) powf(4.0f, (f32) var_s0_2) * 4.0);
                var_s0_2 += 1;
            } while (var_s0_2 < spA8);
        }
    }
    temp_s5->unk8CE8 = 2;
    temp_a5_3 = 0x10000 | temp_s5->unk16960;
    temp_s5->unk16960 = temp_a5_3;
    temp_a6_3 = (var_s3 & temp_s5->unk8D08) | 4;
    temp_s5->unk8D08 = temp_a6_3;
    temp_a7_3 = (var_s3 & temp_s5->unk8D04) | 0x1000;
    temp_s5->unk8D04 = temp_a7_3;
    temp_s5->unk8D00 = (s32) ((var_s3 & temp_s5->unk8D00) | 4);
    temp_s5->unk8CFC = (s32) ((var_s3 & temp_s5->unk8CFC) | 0x1000);
    temp_s5->unk8CF8 = (s32) ((var_s3 & temp_s5->unk8CF8) | 4);
    temp_s5->unk8CF4 = (s32) ((var_s3 & temp_s5->unk8CF4) | 0x1000);
    temp_s5->unk8CF0 = (s32) ((var_s3 & temp_s5->unk8CF0) | 4);
    temp_s5->unk8CEC = (s32) ((var_s3 & temp_s5->unk8CEC) | 0x1000);
    *(void *)0x1018 = 2;
    temp_s5->unk7BFC = (s32) (0xFFFDFFFF & temp_s5->unk7BFC);
    temp_s5->unk16960 = (s32) (temp_s5->unk16960 | 2);
    *(void *)0x1018 = 2;
    unksp80 = (s64) temp_s5->unk11C34;
    temp_s5->unk11CC0 = (s32) unksp28;
    temp_a0_3 = temp_s5->unk11C3C;
    temp_v0 = temp_s5->unk11C40;
    temp_ra_2 = temp_s5->unk11C44;
    temp_s5->unk11C44 = (s32) temp_s5->unk11D18;
    temp_s5->unk11C40 = (s32) temp_s5->unk11D14;
    temp_s5->unk11C3C = (s32) temp_s5->unk11D10;
    temp_s5->unk11C34 = (s32) temp_s5->unk11D08;
    unksp70 = (s64) temp_a0_3;
    unksp88 = (s64) temp_v0;
    unksp20 = (s64) temp_ra_2;
    if (temp_s5->unk7C5C != unksp28) {
        temp_s5->unk7C5C = (s32) unksp28;
        temp_s5->unk16960 = (s32) (temp_s5->unk16960 | 0x80);
        *(void *)0x1018 = 2;
    }
    if (temp_s5->unk700 & 8) {
        temp_s5->unk7BFC = (s32) (0x40000 | temp_s5->unk7BFC);
        temp_s5->unk16960 = (s32) (temp_s5->unk16960 | 2);
        temp_s5->unk11C34 = (s32) (0x40000 | temp_s5->unk11C34);
        *(void *)0x1018 = 2;
    }
    __glOdysseyImageMovePixelsCopy(temp_s5 + 0x11E74, temp_s7, temp_s6, 1, 1, temp_a5_3, temp_a6_3, temp_a7_3);
    temp_at = temp_s5->unk11D94;
    temp_s5->unk11CC0 = temp_at;
    temp_s5->unk11C44 = (s32) unksp20;
    temp_s5->unk11C40 = (s32) unksp88;
    temp_s5->unk11C3C = (s32) unksp70;
    temp_s5->unk11C34 = (s32) unksp80;
    temp_s5->unk7C5C = temp_at;
    temp_s5->unk16960 = (s32) (temp_s5->unk16960 | 0x80);
    *(void *)0x1018 = 2;
    temp_s5->unk7BFC = (s32) (0xFFFDFFFF & temp_s5->unk7BFC);
    temp_s5->unk16960 = (s32) (temp_s5->unk16960 | 2);
    *(void *)0x1018 = 2;
    temp_a5_4 = 0x200000 | temp_s5->unk16960;
    temp_s5->unk16960 = temp_a5_4;
    temp_a6_4 = 0xFFEFFFFF & temp_s5->unk96A4;
    temp_s5->unk96A4 = temp_a6_4;
    *(void *)0x1018 = 2;
    __glOdysseyImageMovePixelsCopy(temp_s7, (void *) sp98, temp_s6, 0, 0, temp_a5_4, temp_a6_4);
    temp_s5->unk7BFC = (s32) (0xFFFDFFFF & temp_s5->unk7BFC);
    temp_a7_4 = temp_s5->unk16960 | 2;
    temp_s5->unk16960 = temp_a7_4;
    *(void *)0x1018 = 2;
    temp_a5_5 = 0x200000 | temp_s5->unk16960;
    temp_s5->unk16960 = temp_a5_5;
    temp_a6_5 = 0xFFEFFFFF & temp_s5->unk96A4;
    temp_s5->unk96A4 = temp_a6_5;
    *(void *)0x1018 = 2;
    __glOdysseyImageMovePixelsCopy((void *) spB0, (void *) spA0, temp_s6, 0, 0, temp_a5_5, temp_a6_5, temp_a7_4);
    temp_s5->unk11CC0 = (s32) unksp28;
}

f32 hardClear24(void) {
    f64 sp28;
    f64 sp20;
    f64 sp18;
    f64 sp10;
    ? var_f0_2;
    f32 temp_f6;
    f32 var_f0;
    f32 var_f4;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    f64 temp_f5;
    f64 temp_f5_2;
    f64 temp_f5_3;
    f64 temp_f5_4;
    s32 temp_ret;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_ret = __glOdysseyAccumClose();
        var_f0 = (bitwise f32) temp_ret;
        if (temp_ret != 0) {
            if (temp_s0->unk120F5 == 0) {
                __glOdysseyAccumClose();
            }
            __glOdysseyAccumClose();
            __glOdysseyImageSaveUserBuzzRasterState();
            __glOdysseyImageLoadBuzzRasterState(0);
            __glOdysseyAccumClose();
            __glOdysseyClearScratchBuffer(temp_s0 + 0x12070, sp, 1.0f, 1.0f, 1.0f, 1.0f);
            temp_f6 = temp_s0->unk670;
            temp_f5 = (f64) temp_f6;
            var_f0_2 = second half of f64;
            if (temp_f5 < (second half of f64)) {
                var_f0_2 = second half of f64;
                sp10 = (temp_f5 + 2.0) * 2048.0;
            } else {
                if (temp_f5 >= 1.0) {
                    var_f5 = 2047.0f;
                } else {
                    var_f5 = temp_f6 * 2048.0f;
                }
                sp10 = (f64) var_f5;
            }
            temp_f5_2 = (f64) temp_s0->unk674;
            if (temp_f5_2 < (second half of f64)) {
                sp18 = (temp_f5_2 + 2.0) * 2048.0;
            } else {
                if (temp_f5_2 >= 1.0) {
                    var_f5_2 = 2047.0f;
                } else {
                    var_f5_2 = (second half of f64) * 2048.0f;
                }
                sp18 = (f64) var_f5_2;
            }
            temp_f5_3 = (f64) temp_s0->unk678;
            if (temp_f5_3 < (second half of f64)) {
                sp20 = (temp_f5_3 + 2.0) * 2048.0;
            } else {
                var_f5_3 = 2047.0f;
                if (!(temp_f5_3 >= 1.0)) {
                    var_f5_3 = (second half of f64) * 2048.0f;
                }
                sp20 = (f64) var_f5_3;
            }
            temp_f5_4 = (f64) temp_s0->unk67C;
            var_f4 = 2047.0f;
            if (temp_f5_4 < (second half of f64)) {
                sp28 = (temp_f5_4 + 2.0) * 2048.0;
            } else {
                if (temp_f5_4 >= 1.0) {

                } else {
                    var_f4 = (second half of f64) * 2048.0f;
                }
                sp28 = (f64) var_f4;
            }
            // Error: Bad function call operand __glOdysseyAccumClose - 0x190
            // At instruction: bal __glOdysseyAccumClose - 0x190
        }
    } else {
        var_f0 = (bitwise f32) __glSetError(0x502);
    }
    return var_f0;
}

void __glOdyHardAccum24(s32 arg0, f32 fparg1) {
    s32 sp0;
    f32 var_f20;
    s32 temp_a1;
    s32 temp_a2;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    var_f20 = fparg1;
    if (temp_s1->unk120F5 == 0) {
        __glOdysseyAccumClose();
    }
    __glOdysseyAccumClose();
    if (__glOdysseyAccumClose() != 0) {
        temp_a1 = ~0x100000;
        temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x200000);
        temp_s1->unk96A4 = (s32) (temp_s1->unk96A4 & temp_a1);
        *(s32 *)0x1018 = 2;
        if (arg0 != 0x102) {
            temp_a2 = temp_s1->unk11CC0;
            temp_s1->unk11CC0 = (s32) temp_s1->unk11D94;
            sp0 = temp_a2;
        }
        if (((f64) var_f20 != (second half of f64)) && (fabsf(var_f20) < 0.00024414062f)) {
            var_f20 = M2C_ERROR(/* unknown instruction: movf.s $f20, $f4, $fcc2 */);
        }
        if ((arg0 != 0x100) && (arg0 != 0x101)) {
            switch (arg0) {                         /* irregular */
            case 0x103:
                __glOdySoftAccum(0x102, (bitwise f32) temp_a1, var_f20);
                goto block_12;
            case 0x104:
                __glOdySoftAccum(0x102, (bitwise f32) temp_a1, var_f20);
                goto block_12;
            case 0x102:
                __glOdySoftAccum(0x102, (bitwise f32) temp_a1, var_f20);
                break;
            }
        } else {
            __glOdySoftAccum(arg0, (bitwise f32) temp_a1);
block_12:
            if (arg0 != 0x102) {
                temp_s1->unk11CC0 = sp0;
            }
        }
    }
}

s32 __glOdysseyInitAccum(s64 arg0, void *arg1) {
    s64 sp0;
    s32 temp_a1;

    sp0 = arg0;
    __glInitBuffer();
    temp_a1 = arg1->unkC9C;
    if (temp_a1 != 0x10) {
        if (temp_a1 != 0x18) {
            return 0;
        }
        arg1->unk11E24 = __glOdyHardAccum24;
        sp0->unk6C = (void *) (__text0 + 0x57E0);
        arg1->unk120B4 = 0;
        arg1->unk120B0 = 0;
        arg1->unk120AC = -1;
        arg1->unk1206C = 0;
        arg1->unk12068 = 0;
        arg1->unk12064 = -1;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return 1;
    }
    arg1->unk11E24 = __glOdySoftAccum;
    sp0->unk6C = (void *) (__text0 + 0x3730);
    sp0->unk18 = 0x10;
    sp0->unk84 = __glSoftAllocAccum;
    return 1;
}

void __glOdyim_Accum(void *arg0, u8 arg2, f64 fparg1) {
    s64 sp8;
    f64 sp0;
    u8 temp_a0;
    u8 temp_a1;
    u8 var_a2;
    void *temp_s0;

    var_a2 = arg2;
    temp_s0 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        temp_a0 = temp_s0->unkC98;
        temp_a1 = temp_s0->unkC95;
        if ((temp_a0 != 0) && (temp_a1 == 0) && (var_a2 = temp_s0->unkDD0, (var_a2 != 0))) {
            if ((arg0 != (void *)0x100) && (arg0 != (void *)0x101) && (arg0 != (void *)0x102) && (arg0 != (void *)0x103) && (arg0 != (void *)0x104)) {
                __glSetError(0x500, (s64) temp_a1, var_a2, 0x100, 0x101, 0x102, 0x103, 0x104);
            } else {
                sp0 = fparg1;
                if (temp_s0->unkC84 == 0x1C00) {
                    __glOdysseyImageSaveUserBuzzRasterState(temp_a0, temp_a1, var_a2, 0x100, 0x101, 0x102, 0x103, 0x104);
                    __glOdysseyImageLoadBuzzRasterState(0);
                    sp8 = (s64) (temp_s0 + 0x10000);
                    if (temp_s0->unk120F5 == 0) {
                        __glOdysseyAccumClose();
                    }
                    __glOdysseyAccumClose();
                    __text0(arg0, second half of f64, (bitwise void *) sp0);
                    __glOdysseyImageLoadBuzzRasterState(1);
                }
            }
        } else {
            __glSetError(0x502, (s64) temp_a1, var_a2, 0x100, 0x101, 0x102, 0x103, 0x104);
        }
    } else {
        __glSetError(0x502, 0x100, 0x101U, 0x102, 0x103, 0x104);
    }
}
