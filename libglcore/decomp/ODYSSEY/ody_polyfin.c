? __glEndPrim(void *);                              /* extern */
? __glOdysseySoftClipProcessTriangle(void *, void *, void *, u8); /* extern */
void __glOdysseySoftClipOddTriangleStripVertex(void *arg0, void *arg1); /* static */
extern ? sub_0d9e0000;

void __glOdysseySoftClipMatValidateVbuf0N(void *arg0) {
    u32 var_a1;
    void *var_s0;

    var_a1 = arg0->unk31C8;
    var_s0 = arg0 + 0x16DB8;
    if ((u32) var_s0 < var_a1) {
loop_3:
        if (var_s0->unk190 == 0) {
            var_s0 += 0x198;
            if ((u32) var_s0 < var_a1) {
                goto loop_3;
            }
        } else {
            arg0->unk19E8C(arg0, var_s0);
            var_a1 = arg0->unk31C8;
            var_s0 += 0x198;
            if ((u32) var_s0 < var_a1) {
                goto loop_3;
            }
        }
    }
}

void __glOdysseySoftClipMatValidateV1(void *arg0) {
    void *temp_a1;

    temp_a1 = arg0->unk31CC;
    if (temp_a1->unk190 != 0) {
        arg0->unk19E8C(temp_a1);
    }
}

void __glOdysseySoftClipMatValidateV1V2(void *arg0) {
    void *temp_a1;
    void *temp_a1_2;

    temp_a1 = arg0->unk31CC;
    if (temp_a1->unk190 != 0) {
        arg0->unk19E8C(temp_a1);
    }
    temp_a1_2 = arg0->unk31D0;
    if (temp_a1_2->unk190 != 0) {
        arg0->unk19E8C(arg0, temp_a1_2);
    }
}

void __glOdysseySoftClipMatValidateVbuf0V1(void *arg0) {
    void *temp_a1;

    if (arg0->unk16F48 != 0) {
        arg0->unk19E8C(arg0 + 0x16DB8, (void *)0x10000);
    }
    temp_a1 = arg0->unk31CC;
    if (temp_a1->unk190 != 0) {
        arg0->unk19E8C(arg0, temp_a1);
    }
}

void __glOdysseySoftClipMatValidateV1V2V3(void *arg0) {
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;

    temp_a1 = arg0->unk31CC;
    if (temp_a1->unk190 != 0) {
        arg0->unk19E8C(temp_a1);
    }
    temp_a1_2 = arg0->unk31D0;
    if (temp_a1_2->unk190 != 0) {
        arg0->unk19E8C(arg0, temp_a1_2);
    }
    temp_a1_3 = arg0->unk31D4;
    if (temp_a1_3->unk190 != 0) {
        arg0->unk19E8C(arg0, temp_a1_3);
    }
}

void __glOdysseySoftClipMatValidateV2V3(void *arg0) {
    void *temp_a1;
    void *temp_a1_2;

    temp_a1 = arg0->unk31D0;
    if (temp_a1->unk190 != 0) {
        arg0->unk19E8C(temp_a1);
    }
    temp_a1_2 = arg0->unk31D4;
    if (temp_a1_2->unk190 != 0) {
        arg0->unk19E8C(arg0, temp_a1_2);
    }
}

void __glOdysseySoftClipMatValidateVbuf0V1V2(void *arg0) {
    void *temp_a1;
    void *temp_a1_2;

    if (arg0->unk16F48 != 0) {
        arg0->unk19E8C(arg0 + 0x16DB8, (void *)0x10000);
    }
    temp_a1 = arg0->unk31CC;
    if (temp_a1->unk190 != 0) {
        arg0->unk19E8C(arg0, temp_a1);
    }
    temp_a1_2 = arg0->unk31D0;
    if (temp_a1_2->unk190 != 0) {
        arg0->unk19E8C(arg0, temp_a1_2);
    }
}

void SoftClipThirdTrianglesVertex(void *arg0, void *arg1) {
    s64 sp18;
    u8 temp_a4;
    void *temp_at;

    temp_a4 = arg0->unk1C5;
    arg1->unkB8 = temp_a4;
    arg0->unk6DE0 = arg1;
    temp_at = arg0 + 0x16DB8;
    sp18 = (s64) temp_at;
    __glOdysseySoftClipProcessTriangle(temp_at, arg0 + 0x16F50, arg1, temp_a4);
    arg0->unk31C8 = (s32) sp18;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6380);
}

void SoftClipSecondTrianglesVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk31C8 = (void *) (arg0 + 0x170E8);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x62C0);
}

void SoftClipFirstTrianglesVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk31C8 = (void *) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6340);
}

void __glOdysseySoftClipBeginTriangles(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6380);
}

void __glOdysseySoftClipEvenTriangleStripVertex(void *arg0, void *arg1) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *temp_a3;
    void *temp_at;

    arg1->unkB8 = 1;
    arg0->unk6DE0 = arg1;
    temp_a3 = arg0->unk31CC;
    sp18 = (s64) temp_a3;
    temp_at = arg0->unk31D0;
    sp20 = (s64) temp_at;
    sp28 = (s64) arg1;
    __glOdysseySoftClipProcessTriangle(temp_at, arg1, temp_a3);
    arg0->unk31C8 = (s32) sp20;
    arg0->unk31CC = (void *) sp28;
    arg0->unk31D0 = (void *) sp18;
    arg0->unk2EE4 = __glOdysseySoftClipOddTriangleStripVertex;
}

void __glOdysseySoftClipOddTriangleStripVertex(void *arg0, void *arg1) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    void *temp_a2;
    void *temp_at;

    arg1->unkB8 = 1;
    arg0->unk6DE0 = arg1;
    temp_a2 = arg0->unk31CC;
    sp18 = (s64) temp_a2;
    temp_at = arg0->unk31D0;
    sp20 = (s64) temp_at;
    sp28 = (s64) arg1;
    __glOdysseySoftClipProcessTriangle(temp_at, temp_a2, arg1);
    arg0->unk31C8 = (s32) sp20;
    arg0->unk31CC = (void *) sp28;
    arg0->unk31D0 = (void *) sp18;
    arg0->unk2EE4 = __glOdysseySoftClipEvenTriangleStripVertex;
}

void SoftClipSecondTriangleStripVertex(void *arg0, void *arg1) {
    arg1->unkB8 = 1;
    arg0->unk31C8 = (s32) (arg0 + 0x170E8);
    arg0->unk31CC = (void *) (arg0 + 0x16F50);
    arg0->unk31D0 = (void *) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateV1V2;
    arg0->unk2EE4 = __glOdysseySoftClipOddTriangleStripVertex;
}

void SoftClipFirstTriangleStripVertex(void *arg0, void *arg1) {
    arg1->unkB8 = 1;
    arg0->unk31C8 = (s32) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6520);
}

void __glOdysseySoftClipBeginTStrip(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6570);
}

void SoftClipTriangleFanVertex(void *arg0, void *arg1) {
    s64 sp18;
    void *temp_a0;

    arg1->unkB8 = 1;
    arg0->unk6DE0 = arg1;
    sp18 = (s64) arg1;
    __glOdysseySoftClipProcessTriangle(arg0->unk31D0, arg0->unk31CC, arg1);
    temp_a0 = arg0->unk31CC;
    arg0->unk31CC = arg1;
    arg0->unk31C8 = temp_a0;
}

void SoftClipSecondTriangleFanVertex(void *arg0, void *arg1) {
    arg1->unkB8 = 1;
    arg0->unk31C8 = (s32) (arg0 + 0x170E8);
    arg0->unk31CC = (void *) (arg0 + 0x16F50);
    arg0->unk31D0 = (void *) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0V1;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x65F0);
}

void SoftClipFirstTriangleFanVertex(void *arg0, void *arg1) {
    arg1->unkB8 = 1;
    arg0->unk31C8 = (s32) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6660);
}

void __glOdysseySoftClipBeginTFan(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x66C0);
}

void SoftClipForthQuadsVertex(void *arg0, void *arg1) {
    u8 temp_a4;
    u8 temp_s0;
    u8 temp_s0_2;
    void *temp_s3;
    void *temp_s8;

    temp_a4 = arg0->unk1C5;
    arg1->unkB8 = temp_a4;
    arg0->unk6DE0 = arg1;
    temp_s8 = arg0 + 0x170E8;
    temp_s0 = arg0->unk171A0;
    temp_s3 = arg0 + 0x16DB8;
    arg0->unk171A0 = 0U;
    __glOdysseySoftClipProcessTriangle(temp_s3, arg0 + 0x16F50, temp_s8, temp_a4);
    arg0->unk171A0 = temp_s0;
    temp_s0_2 = arg0->unk16E70;
    arg0->unk16E70 = 0U;
    __glOdysseySoftClipProcessTriangle(arg0, temp_s3, temp_s8, (u8) arg1);
    arg0->unk16E70 = temp_s0_2;
    arg0->unk31C8 = temp_s3;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x68A0);
}

void SoftClipThirdQuadsVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk31C8 = (void *) (arg0 + 0x17280);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6740);
}

void SoftClipSecondQuadsVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk31C8 = (void *) (arg0 + 0x170E8);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6820);
}

void SoftClipFirstQuadsVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk31C8 = (void *) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6860);
}

void __glOdysseySoftClipBeginQuads(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x68A0);
}

void SoftClipEvenQuadStripVertex(void *arg0, void *arg1) {
    u8 temp_s0;
    u8 temp_s0_2;
    void *temp_s1;
    void *temp_s2;
    void *temp_s4;
    void *temp_s8;

    arg1->unkB8 = 1;
    arg0->unk6DE0 = arg1;
    temp_s2 = arg0->unk31C8;
    temp_s8 = arg0->unk31D4;
    temp_s4 = arg0->unk31D0;
    temp_s1 = arg0->unk31CC;
    temp_s0 = temp_s4->unkB8;
    temp_s4->unkB8 = 0U;
    __glOdysseySoftClipProcessTriangle(temp_s1, temp_s8, temp_s4);
    temp_s4->unkB8 = temp_s0;
    temp_s0_2 = temp_s1->unkB8;
    temp_s1->unkB8 = 0U;
    __glOdysseySoftClipProcessTriangle(arg0, temp_s1, temp_s4, (u8) temp_s2);
    temp_s1->unkB8 = temp_s0_2;
    arg0->unk31D4 = temp_s1;
    arg0->unk31D0 = temp_s2;
    arg0->unk31CC = temp_s4;
    arg0->unk31C8 = temp_s8;
    arg0->unk2F2C = __glOdysseySoftClipMatValidateV2V3;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6A00);
}

void SoftClipOddQuadStripVertex(void *arg0, void *arg1) {
    void *temp_a2;

    arg1->unkB8 = 1;
    temp_a2 = arg0->unk31CC;
    arg0->unk31CC = arg1;
    arg0->unk31C8 = temp_a2;
    arg0->unk2F2C = __glOdysseySoftClipMatValidateV1V2V3;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6920);
}

void SoftClipSecondQuadStripVertex(void *arg0, void *arg1) {
    arg1->unkB8 = 1;
    arg0->unk31C8 = (s32) (arg0 + 0x170E8);
    arg0->unk31CC = (void *) (arg0 + 0x17280);
    arg0->unk31D0 = (void *) (arg0 + 0x16F50);
    arg0->unk31D4 = (void *) (arg0 + 0x16DB8);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6A00);
}

void SoftClipFirstQuadStripVertex(void *arg0, void *arg1) {
    arg1->unkB8 = 1;
    arg0->unk31C8 = (s32) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6A40);
}

void __glOdysseySoftClipBeginQStrip(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6AA0);
}

void SoftClipEndPolygon3Verts(void *arg0) {
    __glOdysseySoftClipProcessTriangle(arg0 + 0x16DB8, arg0->unk31D0, arg0->unk31CC);
    __glEndPrim(arg0);
}

void SoftClipEndPolygon(void *arg0) {
    arg0->unk16E70 = 0;
    __glOdysseySoftClipProcessTriangle(arg0 + 0x16DB8, arg0->unk31D0, arg0->unk31CC, 0x111A10U);
    __glEndPrim(arg0);
}

void SoftClipPolygonVertex(void *arg0, s64 arg1) {
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u8 temp_a4;
    void *temp_a5;
    void *temp_a6;
    void *temp_at;

    sp28 = arg0 + 0x10000;
    sp38 = arg1;
    arg1->unkB8 = (u8) arg0->unk1C5;
    temp_at = arg0->unk31CC;
    sp30 = (s64) temp_at;
    sp20 = (s64) arg0->unk16E70;
    temp_a4 = temp_at->unkB8;
    arg0->unk16E70 = 0U;
    temp_at->unkB8 = 0U;
    sp18 = (s64) temp_a4;
    __glOdysseySoftClipProcessTriangle(arg0 + 0x16DB8, arg0->unk31D0, temp_at, temp_a4);
    sp28->unk6E70 = (s8) sp20;
    sp30->unkB8 = (s8) sp18;
    temp_a6 = arg0->unk31CC;
    arg0->unk31CC = (void *) sp38;
    temp_a5 = arg0->unk31D0;
    arg0->unk31D0 = temp_a6;
    arg0->unk31C8 = temp_a5;
}

void SoftClipForthPolygonVertex(void *arg0, void *arg1) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    u8 temp_a4;
    u8 temp_v0;
    void *temp_a7;
    void *temp_at;
    void *temp_t0;

    temp_a4 = arg0->unk1C5;
    arg1->unkB8 = temp_a4;
    sp28 = (s64) arg1;
    temp_at = arg0->unk31CC;
    sp20 = (s64) temp_at;
    temp_v0 = temp_at->unkB8;
    temp_at->unkB8 = 0U;
    sp18 = (s64) temp_v0;
    __glOdysseySoftClipProcessTriangle(arg0 + 0x16DB8, arg0->unk31D0, temp_at, temp_a4);
    sp20->unkB8 = (s8) sp18;
    temp_t0 = arg0->unk31CC;
    arg0->unk31CC = (void *) sp28;
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0V1V2;
    arg0->unk2F5C = (void *) (&sub_0d9e0000 + 0x6B80);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6BF0);
    temp_a7 = arg0->unk31D0;
    arg0->unk31D0 = temp_t0;
    arg0->unk31C8 = temp_a7;
}

void SoftClipThirdPolygonVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk31C8 = (void *) (arg0 + 0x17280);
    arg0->unk31CC = (void *) (arg0 + 0x170E8);
    arg0->unk31D0 = (void *) (arg0 + 0x16F50);
    arg0->unk2F5C = (void *) (&sub_0d9e0000 + 0x6B20);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6CB0);
}

void SoftClipSecondPolygonVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk31C8 = (void *) (arg0 + 0x170E8);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6D70);
}

void SoftClipFirstPolygonVertex(void *arg0, void *arg1) {
    arg1->unkB8 = (u8) arg0->unk1C5;
    arg0->unk6DE0 = arg1;
    arg0->unk31C8 = (void *) (arg0 + 0x16F50);
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6DD0);
}

void __glOdysseySoftClipBeginPolygon(void *arg0) {
    arg0->unk31C8 = (s32) (arg0 + 0x16DB8);
    arg0->unk2F2C = __glOdysseySoftClipMatValidateVbuf0N;
    arg0->unk2EE4 = (void *) (&sub_0d9e0000 + 0x6E10);
}
