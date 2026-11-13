? __glOdysseySoftClipFlatShade(void *, void *);     /* extern */

f32 Dot(void *arg0, void *arg1) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f4 */);
    return M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f1, $f2 */);
}

void SphereGen(void *arg0, void *arg1, void *arg2) {
    f32 temp_f5;
    f32 temp_f6;

    arg0->unk2EB8(sp, arg1 + 0x60);
    __glOdysseySoftClipFlatShade(arg1 + 0x20, sp);
    M2C_ERROR(/* unknown instruction: nmsub.s $f10, $f10, $f0, $f11 */);
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f7, $f7 */);
    temp_f6 = 2.0f * sqrtf(M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f10, $f10 */));
    temp_f5 = arg0->unkDD4;
    if (temp_f6 != 0.0f) {
        arg2->unk0 = (f32) (temp_f5 + (M2C_ERROR(/* unknown instruction: nmsub.s $f8, $f8, $f0, $f10 */) / temp_f6));
        arg2->unk4 = (f32) (arg0->unkDD4 + (M2C_ERROR(/* unknown instruction: nmsub.s $f7, $f7, $f0, $f9 */) / temp_f6));
        return;
    }
    arg2->unk0 = temp_f5;
    arg2->unk4 = (f32) arg0->unkDD4;
}

void __glOdysseySoftClipCalcSphereMapS(void *arg1) {
    __glOdysseySoftClipFlatShade(sp);
    arg1->unk30 = sp0;
}

void __glOdysseySoftClipCalcSphereMapT(void *arg1) {
    __glOdysseySoftClipFlatShade(sp);
    arg1->unk34 = sp4;
}

void __glOdysseySoftClipCalcSphereMapST(void *arg1) {
    __glOdysseySoftClipFlatShade(sp);
    arg1->unk30 = sp0;
    arg1->unk34 = sp4;
}
