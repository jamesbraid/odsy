? __glOdysseySetProgram(void *, ?, f32, f32, f32, f32); /* extern */

/*
Decompilation failure in function __glOdysseyRasterPosGeneral:

Unable to determine jump table for jr instruction at ody_rasterpos.s line 144.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glOdysseyRasterPos2(void *arg0, void *arg1) {
    __glOdysseySetProgram(sp, 2, arg1->unk0, arg1->unk4, 0.0f, arg0->unkDD8);
}

void __glOdysseyRasterPos3(void *arg0, void *arg1) {
    __glOdysseySetProgram(sp, 3, arg1->unk0, arg1->unk4, arg1->unk8, arg0->unkDD8);
}

void __glOdysseyRasterPos4(void *arg1) {
    __glOdysseySetProgram(sp, 4, arg1->unk0, arg1->unk4, arg1->unk8, arg1->unkC);
}
