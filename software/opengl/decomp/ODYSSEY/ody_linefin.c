? __glEndPrim(void *);                              /* extern */
? __glOdysseySoftClipProcessLine(void *, void *, ?, ?); /* extern */
extern ? __glOdysseySoftClipMatValidateV1;
extern ? __glOdysseySoftClipMatValidateVbuf0N;
extern ? __glOdysseySoftClipMatValidateVbuf0V1;
extern ? sub_0d9e0000;

void SoftClipSecondLinesVertex(void *arg0, void *arg1) {
    s64 sp18;
    void *temp_at;

    arg0->unk6DE0 = arg1;
    temp_at = arg0 + 0x16DB8;
    sp18 = (s64) temp_at;
    __glOdysseySoftClipProcessLine(temp_at, arg1);
    arg0->unk31C8 = (s32) sp18;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6F00);
}

void SoftClipFirstLinesVertex(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6E90);
}

void __glOdysseySoftClipBeginLines(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = &__glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6F00);
}

void SoftClipLineStripVertex(void *arg0, void *arg1) {
    s64 sp18;
    void *temp_v1;

    arg0->unk6DE0 = arg1;
    sp18 = (s64) arg1;
    __glOdysseySoftClipProcessLine(arg0->unk31CC, arg1);
    temp_v1 = arg0->unk31CC;
    arg0->unk31CC = (void *) sp18;
    arg0->unk31C8 = temp_v1;
}

void SoftClipFirstLineStripVertex(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16F50);
    arg0->unk31CC = (void *) (arg0 + 0x16DB8);
    arg0->unk2F2C = &__glOdysseySoftClipMatValidateV1;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6F70);
}

void __glOdysseySoftClipBeginLStrip(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = &__glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6FD0);
}

void SoftClipEndLineLoop(void *arg0) {
    void *temp_a2;

    temp_a2 = arg0 + 0x16DB8;
    arg0->unk6DE0 = temp_a2;
    __glOdysseySoftClipProcessLine(arg0->unk31CC, temp_a2, 0x111540);
    __glEndPrim(arg0);
}

void SoftClipLineLoopVertex(void *arg0, void *arg1) {
    s64 sp18;
    void *temp_v1;

    arg0->unk6DE0 = arg1;
    sp18 = (s64) arg1;
    __glOdysseySoftClipProcessLine(arg0->unk31CC, arg1);
    temp_v1 = arg0->unk31CC;
    arg0->unk31CC = (void *) sp18;
    arg0->unk31C8 = temp_v1;
}

void SoftClipSecondLineLoopVertex(void *arg0, void *arg1) {
    arg0->unk6DE0 = arg1;
    __glOdysseySoftClipProcessLine(arg0 + 0x16DB8, arg1, 0x10000, 0x111480);
    arg0->unk2F2C = &__glOdysseySoftClipMatValidateVbuf0V1;
    arg0->unk2F5C = (void *) (&sub_0d9e0000 + 0x7050);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x70B0);
    arg0->unk31C8 = (void *) (arg0 + 0x170E8);
    arg0->unk31CC = (void *) (arg0 + 0x16F50);
}

void SoftClipFirstLineLoopVertex(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x7110);
}

void __glOdysseySoftClipBeginLLoop(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = &__glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x71A0);
}

void SoftClipSecondLineLoopVertexPartial(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x170E8);
    arg0->unk31CC = (void *) (arg0 + 0x16F50);
    arg0->unk2F2C = &__glOdysseySoftClipMatValidateVbuf0V1;
    arg0->unk2F5C = (void *) (&sub_0d9e0000 + 0x7050);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x70B0);
}

void SoftClipFirstLineLoopVertexPartial(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x7210);
}

void __glOdysseySoftClipBeginLLoopPartial(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = &__glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x7260);
}
