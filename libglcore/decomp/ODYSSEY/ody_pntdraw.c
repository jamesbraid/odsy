extern s32 HQ2_READ_FIFO;

void __glOdysseySoftClipRenderPoint(void *arg0, s32 arg1) {
    HQ2_READ_FIFO = 0x14400;
    HQ2_READ_FIFO = 0;
    unksp8 = (s64) arg0;
    arg0->unk19E94(arg1);
    HQ2_READ_FIFO = 0x14001;
    if (unksp8->unk96F4 != 0) {
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        unksp8->unk9830 = 1;
        return;
    }
    unksp8->unk9830 = 1;
}
