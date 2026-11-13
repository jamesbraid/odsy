void __glOdyim_SoftVertex2d(f64 fparg0, f64 fparg1) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = (f32) fparg1;
    temp_a1->unk10 = (f32) fparg0;
    temp_a1->unkC = (s32) temp_s8->unk2F00;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex2dv(void *arg0) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unkC = (s32) temp_s8->unk2F00;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = (f32) (second half of f64);
    temp_a1->unk10 = (f32) arg0->unk0;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex2f(f32 fparg0, f32 fparg1) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = fparg1;
    temp_a1->unk10 = fparg0;
    temp_a1->unkC = (s32) temp_s8->unk2F00;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex2fv(void *arg0) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unkC = (s32) temp_s8->unk2F00;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = (f32) arg0->unk4;
    temp_a1->unk10 = (f32) arg0->unk0;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex2i(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = (f32) arg1;
    temp_a1->unk10 = (f32) arg0;
    temp_a1->unkC = (s32) temp_s8->unk2F00;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex2iv(void *arg0) {
    s64 sp18;
    s32 temp_a2;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a2 = temp_s8->unk2F00;
    temp_a1->unkC = temp_a2;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = (f32) arg0->unk4;
    temp_a1->unk10 = (f32) arg0->unk0;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1, temp_a2);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex2s(s32 arg0, s32 arg1) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = (f32) arg1;
    temp_a1->unk10 = (f32) arg0;
    temp_a1->unkC = (s32) temp_s8->unk2F00;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex2sv(void *arg0) {
    s64 sp18;
    s32 temp_a2;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a2 = temp_s8->unk2F00;
    temp_a1->unkC = temp_a2;
    temp_a1->unk18 = 0.0f;
    temp_a1->unk14 = (f32) arg0->unk2;
    temp_a1->unk10 = (f32) arg0->unk0;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ECC(temp_s8, temp_a1, temp_a2);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3d(f64 fparg0, f64 fparg1, f64 fparg2) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = (f32) fparg2;
    temp_a1->unk14 = (f32) fparg1;
    temp_a1->unk10 = (f32) fparg0;
    temp_a1->unkC = (s32) temp_s8->unk2F04;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3dv(void *arg0) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unkC = (s32) temp_s8->unk2F04;
    temp_a1->unk18 = (f32) arg0->unk10;
    temp_a1->unk14 = (f32) (second half of f64);
    temp_a1->unk10 = (f32) arg0->unk0;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3f(f32 fparg0, f32 fparg1, f32 fparg2) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = fparg2;
    temp_a1->unk14 = fparg1;
    temp_a1->unk10 = fparg0;
    temp_a1->unkC = (s32) temp_s8->unk2F04;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3fv(void *arg0) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unkC = (s32) temp_s8->unk2F04;
    temp_a1->unk18 = (f32) arg0->unk8;
    temp_a1->unk14 = (f32) arg0->unk4;
    temp_a1->unk10 = (f32) arg0->unk0;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3i(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = (f32) arg2;
    temp_a1->unk14 = (f32) arg1;
    temp_a1->unk10 = (f32) arg0;
    temp_a1->unkC = (s32) temp_s8->unk2F04;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3iv(void *arg0) {
    s64 sp18;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a3 = temp_s8->unk2F04;
    temp_a1->unkC = temp_a3;
    temp_a2 = arg0->unk0;
    temp_a1->unk18 = (f32) arg0->unk8;
    temp_a1->unk14 = (f32) arg0->unk4;
    temp_a1->unk10 = (f32) temp_a2;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1, temp_a2, temp_a3);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3s(s32 arg0, s32 arg1, s32 arg2) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk18 = (f32) arg2;
    temp_a1->unk14 = (f32) arg1;
    temp_a1->unk10 = (f32) arg0;
    temp_a1->unkC = (s32) temp_s8->unk2F04;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex3sv(void *arg0) {
    s64 sp18;
    s16 temp_a2;
    s32 temp_a3;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a3 = temp_s8->unk2F04;
    temp_a1->unkC = temp_a3;
    temp_a2 = arg0->unk0;
    temp_a1->unk18 = (f32) arg0->unk4;
    temp_a1->unk14 = (f32) arg0->unk2;
    temp_a1->unk10 = (f32) temp_a2;
    temp_a1->unk1C = (f32) temp_s8->unkDD8;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED0(temp_s8, temp_a1, temp_a2, temp_a3);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex4d(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk1C = (f32) fparg3;
    temp_a1->unk18 = (f32) fparg2;
    temp_a1->unk14 = (f32) fparg1;
    temp_a1->unk10 = (f32) fparg0;
    temp_a1->unkC = (s32) temp_s8->unk2F08;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED4(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex4dv(void *arg0) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unkC = (s32) temp_s8->unk2F08;
    temp_a1->unk1C = (f32) (second half of f64);
    temp_a1->unk18 = (f32) arg0->unk10;
    temp_a1->unk14 = (f32) (second half of f64);
    temp_a1->unk10 = (f32) arg0->unk0;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED4(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex4f(f32 fparg0, f32 fparg1, f32 fparg2, f32 fparg3) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk1C = fparg3;
    temp_a1->unk18 = fparg2;
    temp_a1->unk14 = fparg1;
    temp_a1->unk10 = fparg0;
    temp_a1->unkC = (s32) temp_s8->unk2F08;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED4(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex4fv(void *arg0) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unkC = (s32) temp_s8->unk2F08;
    temp_a1->unk1C = (f32) arg0->unkC;
    temp_a1->unk18 = (f32) arg0->unk8;
    temp_a1->unk14 = (f32) arg0->unk4;
    temp_a1->unk10 = (f32) arg0->unk0;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED4(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex4i(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk1C = (f32) arg3;
    temp_a1->unk18 = (f32) arg2;
    temp_a1->unk14 = (f32) arg1;
    temp_a1->unk10 = (f32) arg0;
    temp_a1->unkC = (s32) temp_s8->unk2F08;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED4(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex4iv(void *arg0) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_s0;
    void *temp_s1;

    temp_s0 = *(void **)0x1010;
    temp_s1 = temp_s0->unk31C8;
    temp_s1->unk0 = 0;
    temp_a3 = temp_s0->unk2F08;
    temp_s1->unkC = temp_a3;
    temp_a2 = arg0->unk0;
    temp_s1->unk1C = (f32) arg0->unkC;
    temp_s1->unk18 = (f32) arg0->unk8;
    temp_s1->unk14 = (f32) arg0->unk4;
    temp_s1->unk10 = (f32) temp_a2;
    temp_v0 = temp_s0->unk2ED4(temp_s0, temp_s1, temp_a2, temp_a3);
    temp_s1->unk190 = 1;
    temp_s1->unk4 = temp_v0;
    temp_v0_2 = temp_s0->unk2ED4(temp_s0, temp_s1);
    temp_s1->unk191 = (s8) (temp_v0_2 == 0);
    temp_s1->unk190 = 1;
    temp_s1->unk4 = temp_v0_2;
    temp_s0->unk2EC8(temp_s0, temp_s1);
}

void __glOdyim_SoftVertex4s(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s64 sp18;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a1->unk1C = (f32) arg3;
    temp_a1->unk18 = (f32) arg2;
    temp_a1->unk14 = (f32) arg1;
    temp_a1->unk10 = (f32) arg0;
    temp_a1->unkC = (s32) temp_s8->unk2F08;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED4(temp_s8, temp_a1);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}

void __glOdyim_SoftVertex4sv(void *arg0) {
    s64 sp18;
    s16 temp_a2;
    s16 temp_a3;
    s32 temp_a4;
    s32 temp_v0;
    void *temp_a1;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a1 = temp_s8->unk31C8;
    temp_a1->unk0 = 0;
    temp_a4 = temp_s8->unk2F08;
    temp_a1->unkC = temp_a4;
    temp_a2 = arg0->unk2;
    temp_a3 = arg0->unk0;
    temp_a1->unk1C = (f32) arg0->unk6;
    temp_a1->unk18 = (f32) arg0->unk4;
    temp_a1->unk14 = (f32) temp_a2;
    temp_a1->unk10 = (f32) temp_a3;
    sp18 = (s64) temp_a1;
    temp_v0 = temp_s8->unk2ED4(temp_s8, temp_a1, temp_a2, temp_a3, temp_a4);
    temp_a1->unk191 = (s8) (temp_v0 == 0);
    temp_a1->unk190 = 1;
    temp_a1->unk4 = temp_v0;
    temp_s8->unk2EC8(temp_s8, temp_a1);
}
