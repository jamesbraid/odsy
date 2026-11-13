s32 __glOdysseyAtomicTestAndSet(void) {
    do {

    } while (M2C_ERROR(/* unknown instruction: sc $t1, ($a0) */) == 0);
    return M2C_ERROR(/* unknown instruction: ll $t0, ($a0) */);
}

s32 __glOdysseyAtomicAdd(void) {
    do {

    } while (M2C_ERROR(/* unknown instruction: sc $t1, ($a0) */) == 0);
    return M2C_ERROR(/* unknown instruction: ll $t0, ($a0) */) + 1;
}

s32 __glOdysseyAtomicSubtract(void) {
    do {

    } while (M2C_ERROR(/* unknown instruction: sc $t1, ($a0) */) == 0);
    return M2C_ERROR(/* unknown instruction: ll $t0, ($a0) */) - 1;
}
