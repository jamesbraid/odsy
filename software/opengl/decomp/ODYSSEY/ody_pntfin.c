extern ? sub_0d9e0000;

void SoftClipPointVertex(void *arg0, void *arg1) {
    arg0->unk6DE0 = arg1;
    if (arg1->unk4 == 0) {
        arg0->unk3108();
    }
}

void __glOdysseySoftClipBeginPoints(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x72D0);
}
