# Source: ../ODYSSEY/ody_xform.c
# Category: ODYSSEY
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -DNEW_LISTS -DENABLE_NULL_UCODE -DODYSSEY -DIP30 -DR10000 -D__GL_USEASMCODE -D__GL_ODYSSEY_USEASMCODE -Xcpluscomm -I. -I../include -I../ODYSSEY -I../../../include/ODYSSEY/gl -I../ODYSSEY.IP30 -I../ODYSSEY -I/xlv41/6.5.30m/root/usr/include/ODYSSEY/gl -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../ODYSSEY/ody_xform.c
# Total Functions: 32

.text

# Function: __glOdysseyUpdateTransform
# Declared: Line 31 (Source lines: 32-383)
# Address: 0x0d9e2980 - 0x0d9e2f88 (Size: 1544 bytes, Frame: 128)
.globl __glOdysseyUpdateTransform
.ent __glOdysseyUpdateTransform
__glOdysseyUpdateTransform:
    # Line 34
    lw	$a2,29724($a0)
    # Line 32
    addiu	$sp,$sp,-256
    sd	$s1,200($sp)
    # Line 35
    lw	$s1,29736($a0)
    # Line 32
    sd	$s2,216($sp)
    # Line 41
    lui	$s2,0x2
    sdc1	$f20,232($sp)
    addu	$s2,$a0,$s2
    lbu	$at,-25140($s2)
    # Line 32
    sd	$s0,208($sp)
    lui	$v0,0x11
    move	$s0,$a0
    sd	$ra,240($sp)
    addiu	$v0,$v0,23568
    sd	$gp,224($sp)
    # Line 41
    beqz	$at,.L0d9e2c84
    # Line 32
    addu	$gp,$t9,$v0
    # Line 41
    lw	$t8,64($a2)
    li	$t9,4
    beq	$t8,$t9,.L0d9e2c8c
    mtc1	$zero,$f20
.L0d9e29d4:
    # Line 106
    sb	$zero,-25139($s2)
.L0d9e29d8:
    # Line 132
    lwc1	$f10,8($a2)
    dmtc1	$zero,$f4
    cvt.d.s	$f10,$f10
    lwc1	$f7,12($a2)
    c.eq.d	$f10,$f4
    bc1f	.L0d9e2a84
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f4
    lwc1	$f8,24($a2)
    bc1f .L0d9e2c78
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f4
    lwc1	$f9,28($a2)
    bc1f .L0d9e2a94
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f4
    bc1f .L0d9e2a94
    # Line 165
    lui	$a3,0x1
    addu	$a3,$s0,$a3
    ldc1	$f6,26104($a3)
    lwc1	$f12,40($a2)
    cvt.s.d	$f10,$f6
    c.eq.s $f12,$f10
    lwc1	$f9,44($a2)
    ldc1	$f5,26112($a3)
    bc1f .L0d9e2ef0
    lwc1	$f10,56($a2)
    cvt.s.d	$f11,$f5
    c.eq.s $f9,$f11
    bc1f .L0d9e2f50
    nop
    ldc1	$f8,26120($a3)
    cvt.s.d	$f13,$f8
    c.eq.s $f10,$f13
    bc1f .L0d9e2ef8
    lwc1	$f11,60($a2)
    ldc1	$f7,26128($a3)
    cvt.s.d	$f14,$f7
    c.eq.s $f11,$f14
    bc1f .L0d9e2ef8
    nop
    b	.L0d9e2b00
    # Line 132
    c.eq.d $f5,$f4
.L0d9e2a84:
    lwc1	$f9,28($a2)
    lwc1	$f8,24($a2)
    cvt.d.s	$f9,$f9
    cvt.d.s	$f8,$f8
.L0d9e2a94:
    # Line 146
    lwc1	$f11,44($a2)
    mul.d	$f5,$f7,$f7
    madd.d	$f5,$f5,$f9,$f9
    cvt.d.s	$f11,$f11
    madd.d	$f5,$f5,$f11,$f11
    sqrt.d	$f5,$f5
    # Line 139
    lwc1	$f12,40($a2)
    mul.d	$f6,$f10,$f10
    madd.d	$f6,$f6,$f8,$f8
    cvt.d.s	$f12,$f12
    madd.d	$f6,$f6,$f12,$f12
    # Line 146
    c.lt.d	$f12,$f4
    bc1f	.L0d9e2ad4
    # Line 139
    sqrt.d	$f6,$f6
    nop
    # Line 157
    neg.d	$f6,$f6
.L0d9e2ad4:
    # Line 178
    c.lt.d $f11,$f4
    bc1f .L0d9e2ae4
    nop
    # Line 158
    neg.d	$f5,$f5
.L0d9e2ae4:
    # Line 161
    lwc1	$f7,60($a2)
    # Line 160
    lwc1	$f8,56($a2)
    # Line 161
    lui	$a3,0x1
    cvt.d.s	$f7,$f7
    addu	$a3,$s0,$a3
    # Line 160
    cvt.d.s	$f8,$f8
.L0d9e2afc:
    # Line 132
    c.eq.d $f5,$f4
.L0d9e2b00:
    bc1f .L0d9e2be4
    nop
    c.eq.d $f6,$f4
    bc1f .L0d9e2b1c
    ldc1	$f10,_lit8_41fffff800000000
    b	.L0d9e2b34
    ldc1	$f9,_lit8_c1fffff800000000
.L0d9e2b1c:
    # Line 237
    sub.d	$f9,$f8,$f7
    neg.d	$f9,$f9
    div.d	$f9,$f9,$f6
    # Line 236
    add.d	$f10,$f8,$f7
    neg.d	$f10,$f10
    div.d	$f10,$f10,$f6
.L0d9e2b34:
    # Line 360
    neg.d	$f13,$f10
    sdc1	$f13,26056($a3)
    # Line 361
    neg.d	$f12,$f9
    sdc1	$f12,26064($a3)
    # Line 363
    sdc1	$f6,26104($a3)
    # Line 364
    sdc1	$f5,26112($a3)
    # Line 365
    sdc1	$f8,26120($a3)
    # Line 366
    sdc1	$f7,26128($a3)
    # Line 368
    lwc1	$f11,12($s1)
    cvt.d.s	$f11,$f11
    c.eq.d $f11,$f4
    bc1f .L0d9e2b90
    nop
    lwc1	$f14,28($s1)
    cvt.d.s	$f14,$f14
    c.eq.d $f14,$f4
    bc1f .L0d9e2b90
    nop
    lwc1	$f15,44($s1)
    cvt.d.s	$f15,$f15
    c.eq.d $f15,$f4
    bc1t .L0d9e2e84
    ld	$s1,200($sp)
.L0d9e2b90:
    ld	$s1,200($sp)
    li	$a2,1
.L0d9e2b98:
    # Line 376
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,19856
    # Line 373
    sb	$zero,26432($a3)
    # Line 376
    move	$a0,$s0
    bal __glOdysseyValidateDepthRange
    # Line 368
    sw	$a2,26428($a3)
    # Line 380
    lwc1	$f12,500($s0)
    c.eq.s $f12,$f20
    bc1f .L0d9e2c30
    lwc1	$f13,504($s0)
    c.eq.s	$f13,$f20
    bc1f	.L0d9e2c30
    ld	$s0,208($sp)
.L0d9e2bcc:
    ld	$ra,240($sp)
    ld	$s2,216($sp)
    ldc1	$f20,232($sp)
    # Line 383
    ld	$gp,224($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9e2be4:
    # Line 237
    add.d	$f9,$f6,$f5
    c.lt.d $f4,$f5
    c.eq.d $f9,$f4
    neg.d	$f12,$f7
    li	$a0,1
    sub.d	$f11,$f6,$f5
    div.d	$f12,$f12,$f5
    bc1f .L0d9e2c44
    movf	$a0,$zero,$fcc1
    # Line 273
    sub.d	$f9,$f8,$f7
    neg.d	$f9,$f9
    beqz	$a0,.L0d9e2ed8
    div.d	$f9,$f9,$f11
    c.le.d $f9,$f12
    bc1f .L0d9e2e8c
    ldc1	$f11,_lit8_41fffff800000000
    mov.d	$f9,$f11
    b	.L0d9e2b34
    ldc1	$f10,_lit8_41fffff7fff00000
.L0d9e2c30:
    # Line 381
    # lw $t9, -32356($gp) # &__glOdyim_PolygonOffsetEXT
    jal	__glOdyim_PolygonOffsetEXT
    nop
    b	.L0d9e2bcc
    ld	$s0,208($sp)
.L0d9e2c44:
    # Line 286
    add.d	$f10,$f8,$f7
    c.eq.d $f11,$f4
    neg.d	$f10,$f10
    bc1f .L0d9e2e4c
    div.d	$f10,$f10,$f9
    # Line 297
    beqz	$a0,.L0d9e2f14
    nop
    c.le.d $f10,$f12
    bc1f .L0d9e2e94
    ldc1	$f11,_lit8_41fffff800000000
    mov.d	$f9,$f11
    b	.L0d9e2b34
    ldc1	$f10,_lit8_41fffff7fff00000
.L0d9e2c78:
    # Line 132
    lwc1	$f9,28($a2)
    b	.L0d9e2a94
    cvt.d.s	$f9,$f9
.L0d9e2c84:
    b	.L0d9e29d4
    # Line 102
    mtc1	$zero,$f20
.L0d9e2c8c:
    # Line 41
    lw	$a6,29716($a0)
    lwc1	$f10,12($a6)
    c.eq.s $f10,$f20
    bc1t .L0d9e2eb0
    li	$a5,2
.L0d9e2ca0:
    # Line 46
    li	$a0,22
    move	$a2,$zero
    addiu	$a4,$sp,0
    addiu	$a3,$a6,176
.L0d9e2cb0:
    addiu	$a5,$a5,-1
    addu	$ra,$a2,$a3
    addiu	$a0,$a0,-1
    addu	$at,$a2,$a4
    lw	$ra,0($ra)
    addiu	$a2,$a2,4
    bnez	$a5,.L0d9e2cb0
    sw	$ra,0($at)
    addiu	$t1,$a3,12
    addiu	$t2,$a4,12
    li	$t0,0x10
    addiu	$t3,$a3,4
    addiu	$a7,$a4,4
    addiu	$a5,$a4,8
    addiu	$a6,$a3,8
.L0d9e2cec:
    addu	$a1,$a2,$a3
    addu	$t8,$a2,$a4
    lw	$a1,0($a1)
    addu	$v1,$a2,$t3
    sw	$a1,0($t8)
    addu	$a1,$a2,$a7
    lw	$v1,0($v1)
    addu	$v0,$a2,$a6
    sw	$v1,0($a1)
    addu	$v1,$a2,$a5
    lw	$v0,0($v0)
    addiu	$a0,$a0,-4
    addu	$at,$a2,$t1
    sw	$v0,0($v1)
    addu	$v0,$a2,$t2
    lw	$at,0($at)
    addu	$a2,$a2,$t0
    bgtz	$a0,.L0d9e2cec
    sw	$at,0($v0)
    # Line 47
    lw	$a2,29716($s0)
    # Line 70
    swc1	$f20,44($sp)
    # Line 69
    swc1	$f20,28($sp)
    # Line 71
    lwc1	$f11,_lit_3f800000
    # Line 74
    # lw $t9, -25740($gp) # &__glInvertTransposeMatrix
    # Line 68
    swc1	$f20,12($sp)
    # Line 74
    addiu	$a1,$sp,0
    addiu	$a0,$sp,88
    # Line 71
    swc1	$f11,60($sp)
    # Line 47
    addiu	$a2,$a2,176
    # Line 74
    jal	__glInvertTransposeMatrix
    sd	$a2,192($sp)
    ld	$a3,192($sp)
    lwc1	$f6,60($a3)
    lwc1	$f4,44($a3)
    lwc1	$f7,28($a3)
    addiu	$a0,$sp,176
    addiu	$a2,$sp,88
    lwc1	$f5,12($a3)
    # Line 82
    lwc1	$f15,28($a2)
    lwc1	$f16,12($a2)
    lwc1	$f14,24($a2)
    mul.s	$f15,$f15,$f7
    lwc1	$f19,8($a2)
    madd.s	$f15,$f15,$f5,$f16
    lwc1	$f17,44($a2)
    mul.s	$f14,$f14,$f7
    lwc1	$f18,40($a2)
    lwc1	$f16,60($a2)
    madd.s	$f14,$f14,$f5,$f19
    madd.s	$f15,$f15,$f4,$f17
    lwc1	$f17,56($a2)
    madd.s	$f14,$f14,$f4,$f18
    lwc1	$f13,20($a2)
    madd.s	$f15,$f15,$f6,$f16
    lwc1	$f16,4($a2)
    madd.s	$f14,$f14,$f6,$f17
    lwc1	$f12,16($a2)
    mul.s	$f13,$f13,$f7
    lwc1	$f19,88($sp)
    madd.s	$f13,$f13,$f5,$f16
    lwc1	$f16,36($a2)
    mul.s	$f12,$f12,$f7
    lwc1	$f18,32($a2)
    lwc1	$f17,52($a2)
    madd.s	$f12,$f12,$f5,$f19
    madd.s	$f13,$f13,$f4,$f16
    lwc1	$f16,48($a2)
    madd.s	$f12,$f12,$f4,$f18
    madd.s	$f13,$f13,$f6,$f17
    madd.s	$f12,$f12,$f6,$f16
    swc1	$f15,12($a0)
    swc1	$f14,8($a0)
    swc1	$f13,4($a0)
    swc1	$f12,176($sp)
    # Line 97
    lwc1	$f6,184($sp)
    ldc1	$f5,_lit8_bff0000000000000
    cvt.d.s	$f6,$f6
    div.d	$f6,$f5,$f6
    # Line 99
    lwc1	$f8,188($sp)
    # Line 102
    dmtc1	$zero,$f7
    # Line 100
    dmtc1	$zero,$f4
    # Line 99
    cvt.d.s	$f8,$f8
    # Line 102
    li	$a4,1
    lui	$a3,0x1
    sb	$a4,-25139($s2)
    addu	$a3,$s0,$a3
    b	.L0d9e2afc
    # Line 99
    mul.d	$f8,$f8,$f6
.L0d9e2e4c:
    # Line 322
    sub.d	$f9,$f8,$f7
    neg.d	$f9,$f9
    beqz	$a0,.L0d9e2f2c
    div.d	$f9,$f9,$f11
    c.le.d	$f10,$f12
    c.le.d $f9,$f12
    li	$a0,1
    bc1f	.L0d9e2e9c
    movf	$a0,$zero,$fcc7
    beqz	$a0,.L0d9e2f78
    ldc1	$f11,_lit8_41fffff800000000
    ldc1	$f10,_lit8_41fffff7fff00000
    b	.L0d9e2b34
    mov.d	$f9,$f11
.L0d9e2e84:
    b	.L0d9e2b98
    # Line 368
    move	$a2,$zero
.L0d9e2e8c:
    b	.L0d9e2b34
    # Line 279
    add.d	$f10,$f9,$f11
.L0d9e2e94:
    b	.L0d9e2b34
    # Line 303
    add.d	$f9,$f10,$f11
.L0d9e2e9c:
    # Line 334
    beqz	$a0,.L0d9e2b34
    nop
    # Line 337
    ldc1	$f9,_lit8_41fffff800000000
    b	.L0d9e2b34
    add.d	$f9,$f10,$f9
.L0d9e2eb0:
    # Line 41
    lwc1	$f10,28($a6)
    c.eq.s $f10,$f20
    bc1f .L0d9e2ca0
    li	$a5,2
    lwc1	$f11,44($a6)
    c.eq.s $f11,$f20
    bc1f .L0d9e2ca0
    li	$a5,2
    b	.L0d9e29d8
    # Line 106
    sb	$zero,-25139($s2)
.L0d9e2ed8:
    # Line 279
    c.le.d $f12,$f9
    bc1f .L0d9e2f0c
    ldc1	$f11,_lit8_c1fffff800000000
    mov.d	$f9,$f11
    b	.L0d9e2b34
    ldc1	$f10,_lit8_c1fffff7fff00000
.L0d9e2ef0:
    # Line 165
    lwc1	$f11,60($a2)
    lwc1	$f10,56($a2)
.L0d9e2ef8:
    # Line 172
    cvt.d.s	$f7,$f11
    # Line 171
    cvt.d.s	$f8,$f10
    # Line 170
    cvt.d.s	$f5,$f9
    # Line 172
    b	.L0d9e2afc
    # Line 169
    cvt.d.s	$f6,$f12
.L0d9e2f0c:
    b	.L0d9e2b34
    # Line 286
    add.d	$f10,$f9,$f11
.L0d9e2f14:
    # Line 303
    c.le.d $f12,$f10
    bc1f .L0d9e2f58
    ldc1	$f11,_lit8_c1fffff800000000
    mov.d	$f9,$f11
    b	.L0d9e2b34
    ldc1	$f10,_lit8_c1fffff7fff00000
.L0d9e2f2c:
    # Line 337
    c.le.d $f12,$f10
    bc1f .L0d9e2f60
    nop
    c.le.d $f12,$f9
    bc1f .L0d9e2f80
    ldc1	$f11,_lit8_c1fffff800000000
    mov.d	$f9,$f11
    b	.L0d9e2b34
    ldc1	$f10,_lit8_c1fffff7fff00000
.L0d9e2f50:
    b	.L0d9e2ef8
    # Line 165
    lwc1	$f11,60($a2)
.L0d9e2f58:
    b	.L0d9e2b34
    # Line 310
    add.d	$f9,$f10,$f11
.L0d9e2f60:
    # Line 345
    c.le.d $f12,$f9
    bc1f .L0d9e2b34
    nop
    # Line 348
    ldc1	$f9,_lit8_c1fffff800000000
    b	.L0d9e2b34
    add.d	$f9,$f10,$f9
.L0d9e2f78:
    b	.L0d9e2b34
    # Line 334
    add.d	$f10,$f9,$f11
.L0d9e2f80:
    b	.L0d9e2b34
    # Line 345
    add.d	$f10,$f9,$f11
.end __glOdysseyUpdateTransform

# Function: __glOdysseyValidateMatrixComb
# Declared: Line 386 (Source lines: 387-607)
# Address: 0x0d9e2f90 - 0x0d9e3604 (Size: 1652 bytes, Frame: 48)
.globl __glOdysseyValidateMatrixComb
.ent __glOdysseyValidateMatrixComb
__glOdysseyValidateMatrixComb:
    # Line 387
    addiu	$sp,$sp,-48
    sd	$s1,0($sp)
    # Line 404
    lw	$s1,3660($a0)
    mtc1	$s1,$f9
    lwc1	$f8,1724($a0)
    cvt.s.w	$f9,$f9
    # Line 397
    lw	$s1,29716($a0)
    # Line 405
    lwc1	$f13,1720($a0)
    lwc1	$f11,188($s1)
    lwc1	$f12,176($s1)
    # Line 404
    sub.s	$f8,$f8,$f9
    # Line 405
    mul.s	$f11,$f11,$f8
    madd.s	$f11,$f11,$f12,$f13
    # Line 387
    sd	$s0,24($sp)
    # Line 405
    lui	$s0,0x1
    addu	$s0,$s0,$a0
    swc1	$f11,-27256($s0)
    # Line 408
    lwc1	$f12,1720($a0)
    lwc1	$f10,204($s1)
    lwc1	$f11,192($s1)
    mul.s	$f10,$f10,$f8
    madd.s	$f10,$f10,$f11,$f12
    swc1	$f10,-27252($s0)
    # Line 411
    lwc1	$f11,1720($a0)
    lwc1	$f9,220($s1)
    lwc1	$f10,208($s1)
    mul.s	$f9,$f9,$f8
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,-27248($s0)
    # Line 414
    lwc1	$f7,1720($a0)
    lwc1	$f5,236($s1)
    lwc1	$f6,224($s1)
    mul.s	$f5,$f5,$f8
    madd.s	$f5,$f5,$f6,$f7
    # Line 387
    sd	$s2,16($sp)
    # Line 414
    swc1	$f5,-27244($s0)
    # Line 418
    lw	$s2,3664($a0)
    mtc1	$s2,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f3,1732($a0)
    # Line 419
    lwc1	$f8,1728($a0)
    lwc1	$f6,188($s1)
    lwc1	$f7,180($s1)
    # Line 418
    sub.s	$f3,$f3,$f4
    # Line 419
    mul.s	$f6,$f6,$f3
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,-27240($s0)
    # Line 422
    lwc1	$f7,1728($a0)
    lwc1	$f5,204($s1)
    lwc1	$f6,196($s1)
    mul.s	$f5,$f5,$f3
    madd.s	$f5,$f5,$f6,$f7
    swc1	$f5,-27236($s0)
    # Line 425
    lwc1	$f6,1728($a0)
    lwc1	$f4,220($s1)
    # Line 397
    addiu	$s1,$s1,176
    # Line 425
    lwc1	$f5,36($s1)
    mul.s	$f4,$f4,$f3
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,-27232($s0)
    # Line 428
    lwc1	$f2,1728($a0)
    lwc1	$f0,60($s1)
    lwc1	$f1,52($s1)
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    # Line 387
    lui	$v0,0x11
    # Line 428
    lbu	$at,26432($s0)
    sd	$ra,32($sp)
    # Line 387
    addiu	$v0,$v0,22016
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    move	$s2,$a0
    # Line 428
    beqz	$at,.L0d9e30c4
    swc1	$f0,-27228($s0)
    # Line 436
    # lw $t9, -30124($gp) # &__glOdysseyUpdateTransform
    bal __glOdysseyUpdateTransform
    nop
.L0d9e30c4:
    # Line 463
    ldc1	$f7,_lit8_4030000000000000
    lwc1	$f5,1736($s2)
    # Line 446
    ldc1	$f9,26056($s0)
    # Line 447
    ldc1	$f10,26064($s0)
    # Line 463
    cvt.d.s	$f5,$f5
    ldc1	$f6,_lit8_3fe0000000000000
    sub.d	$f8,$f10,$f9
    mul.d	$f5,$f5,$f7
    mul.d	$f8,$f6,$f8
    neg.d	$f5,$f5
    div.d	$f5,$f5,$f8
    # Line 470
    lwc1	$f19,12($s1)
    # Line 448
    ldc1	$f11,26104($s0)
    # Line 464
    lwc1	$f4,1740($s2)
    # Line 470
    cvt.d.s	$f19,$f19
    # Line 464
    add.d	$f9,$f9,$f10
    # Line 463
    ldc1	$f8,_lit8_3feffffffaa19c47
    # Line 470
    lwc1	$f21,8($s1)
    mul.d	$f17,$f19,$f11
    # Line 464
    cvt.d.s	$f4,$f4
    mul.d	$f6,$f6,$f9
    # Line 463
    mul.d	$f5,$f5,$f8
    # Line 449
    ldc1	$f8,26112($s0)
    # Line 470
    cvt.d.s	$f21,$f21
    # Line 464
    mul.d	$f4,$f4,$f7
    # Line 450
    ldc1	$f9,26120($s0)
    # Line 464
    madd.d	$f4,$f4,$f5,$f6
    # Line 451
    ldc1	$f10,26128($s0)
    # Line 470
    nmsub.d	$f17,$f17,$f8,$f21
    # Line 471
    mul.d	$f19,$f19,$f9
    msub.d	$f19,$f19,$f10,$f21
    mul.d	$f18,$f17,$f4
    madd.d	$f18,$f18,$f5,$f19
    # Line 472
    cvt.s.d	$f17,$f17
    swc1	$f17,-27192($s0)
    # Line 471
    cvt.s.d	$f18,$f18
    swc1	$f18,-27224($s0)
    # Line 475
    lwc1	$f16,28($s1)
    lwc1	$f17,24($s1)
    cvt.d.s	$f16,$f16
    cvt.d.s	$f17,$f17
    mul.d	$f14,$f16,$f11
    nmsub.d	$f14,$f14,$f8,$f17
    # Line 476
    mul.d	$f16,$f16,$f9
    msub.d	$f16,$f16,$f10,$f17
    mul.d	$f15,$f14,$f4
    madd.d	$f15,$f15,$f5,$f16
    # Line 477
    cvt.s.d	$f14,$f14
    swc1	$f14,-27188($s0)
    # Line 476
    cvt.s.d	$f15,$f15
    swc1	$f15,-27220($s0)
    # Line 479
    lw	$a0,29724($s2)
    # Line 481
    lwc1	$f12,40($a0)
    cvt.s.d	$f13,$f11
    c.eq.s	$f12,$f13
    # Line 489
    lw	$t8,29716($s2)
    # Line 481
    bc1f	.L0d9e3238
    lwc1	$f6,44($a0)
    cvt.s.d	$f7,$f8
    c.eq.s $f6,$f7
    bc1f .L0d9e3238
    nop
    # Line 491
    lwc1	$f17,44($t8)
    lwc1	$f18,40($t8)
    cvt.d.s	$f17,$f17
    cvt.d.s	$f18,$f18
    # Line 492
    mul.d	$f15,$f17,$f10
    # Line 493
    lwc1	$f13,60($t8)
    # Line 492
    madd.d	$f15,$f15,$f8,$f18
    # Line 491
    mul.d	$f17,$f17,$f9
    # Line 493
    lwc1	$f16,56($t8)
    cvt.d.s	$f13,$f13
    # Line 491
    madd.d	$f17,$f17,$f11,$f18
    # Line 494
    mul.d	$f7,$f13,$f10
    # Line 493
    cvt.d.s	$f16,$f16
    # Line 498
    mul.d	$f14,$f11,$f15
    nmsub.d	$f14,$f14,$f8,$f17
    # Line 494
    madd.d	$f7,$f7,$f8,$f16
    # Line 498
    mul.d	$f15,$f9,$f15
    msub.d	$f15,$f15,$f10,$f17
    # Line 493
    mul.d	$f13,$f13,$f9
    madd.d	$f13,$f13,$f11,$f16
    # Line 498
    mul.d	$f12,$f14,$f4
    madd.d	$f12,$f12,$f5,$f15
    # Line 502
    mul.d	$f6,$f8,$f13
    msub.d	$f6,$f6,$f11,$f7
    # Line 499
    cvt.s.d	$f14,$f14
    # Line 501
    mul.d	$f7,$f9,$f7
    # Line 499
    swc1	$f14,-27184($s0)
    # Line 498
    cvt.s.d	$f12,$f12
    # Line 501
    msub.d	$f7,$f7,$f10,$f13
    # Line 502
    b	.L0d9e3290
    # Line 498
    swc1	$f12,-27216($s0)
.L0d9e3238:
    # Line 506
    lwc1	$f15,44($s1)
    lwc1	$f16,40($s1)
    cvt.d.s	$f15,$f15
    cvt.d.s	$f16,$f16
    mul.d	$f13,$f15,$f11
    nmsub.d	$f13,$f13,$f8,$f16
    # Line 507
    mul.d	$f15,$f15,$f9
    msub.d	$f15,$f15,$f10,$f16
    mul.d	$f14,$f13,$f4
    madd.d	$f14,$f14,$f5,$f15
    cvt.s.d	$f14,$f14
    swc1	$f14,-27216($s0)
    # Line 508
    cvt.s.d	$f13,$f13
    swc1	$f13,-27184($s0)
    # Line 510
    lwc1	$f12,56($s1)
    lwc1	$f7,60($s1)
    cvt.d.s	$f12,$f12
    cvt.d.s	$f7,$f7
    # Line 511
    mul.d	$f6,$f12,$f8
    msub.d	$f6,$f6,$f11,$f7
    # Line 510
    mul.d	$f7,$f7,$f9
    msub.d	$f7,$f7,$f10,$f12
.L0d9e3290:
    # Line 514
    mul.d	$f23,$f4,$f6
    madd.d	$f23,$f23,$f5,$f7
    # Line 515
    cvt.s.d	$f21,$f6
    swc1	$f21,-27180($s0)
    # Line 514
    cvt.s.d	$f23,$f23
    swc1	$f23,-27212($s0)
    # Line 522
    lwc1	$f19,12($s1)
    swc1	$f19,-27208($s0)
    # Line 523
    lwc1	$f18,28($s1)
    swc1	$f18,-27204($s0)
    # Line 524
    lwc1	$f17,44($s1)
    swc1	$f17,-27200($s0)
    # Line 525
    lwc1	$f16,60($s1)
    lui	$a3,0x2
    addu	$a3,$s2,$a3
    swc1	$f16,-27196($s0)
    lbu	$t9,-25152($a3)
    # Line 531
    lw	$a5,-25160($a3)
    li	$a4,2
    li	$a2,3
    # Line 525
    lbu	$a0,-25164($a3)
    beqz	$t9,.L0d9e3304
    # Line 531
    xori	$a5,$a5,0x1102
    # Line 525
    beqz	$a0,.L0d9e3548
    li	$a4,2
    # Line 531
    sltiu	$a5,$a5,1
    move	$a6,$a4
    movz	$a2,$a6,$a5
.L0d9e3300:
    sw	$a2,-25156($a3)
.L0d9e3304:
    beqz	$a0,.L0d9e3530
    nop
    # Line 542
    sw	$zero,26424($s0)
    lwc1	$f25,12($s1)
    dmtc1	$zero,$f4
    lw	$a6,-25160($a3)
    cvt.d.s	$f25,$f25
    li	$a7,4353
    # Line 559
    li	$t8,1
    # Line 566
    li	$t0,1
    # Line 542
    c.eq.d $f25,$f4
    # Line 545
    lw	$a5,-25156($a3)
    # Line 542
    li	$a0,1
    beq	$a6,$a7,.L0d9e3554
    movf	$a0,$zero,$fcc2
    # Line 564
    beqz	$a0,.L0d9e3374
    nop
    lwc1	$f27,28($s1)
    cvt.d.s	$f27,$f27
    c.eq.d $f27,$f4
    bc1f .L0d9e3374
    nop
    lwc1	$f29,44($s1)
    cvt.d.s	$f29,$f29
    c.eq.d $f29,$f4
    bc1f .L0d9e3374
    nop
    # Line 566
    sw	$t0,26424($s0)
.L0d9e3374:
    lw	$a2,-25156($a3)
.L0d9e3378:
    # Line 572
    beqz	$a2,.L0d9e35bc
    li	$t1,1
    beq	$a2,$t1,.L0d9e35bc
    nop
    beq	$a2,$a4,.L0d9e3538
    li	$t2,3
    beq	$a2,$t2,.L0d9e3538
    nop
.L0d9e3398:
    # Line 596
    lw	$a7,-26984($s0)
    ori	$a7,$a7,0x1
    sw	$a7,-26984($s0)
    # Line 598
    ldc1	$f21,1704($s2)
    ldc1	$f19,1712($s2)
    c.lt.d $f19,$f21
    # Line 602
    lui	$a5,0x100
    lw	$a3,26976($s0)
    # Line 598
    li	$a6,1
    li	$t0,-3
    movf	$a6,$zero,$fcc5
    # Line 602
    or	$a3,$a3,$a5
    # Line 598
    sll	$a6,$a6,0x1
    # Line 602
    sw	$a3,26976($s0)
    # Line 598
    and	$a7,$a7,$t0
    andi	$a6,$a6,0x2
    or	$a6,$a6,$a7
    sw	$a6,-26984($s0)
    # Line 602
    sw	$a4,4120($zero)
    # Line 605
    sw	$zero,-24028($s0)
    lw	$a1,-24028($s0)
    lw	$a2,-24028($s0)
    lui	$t3,0x3400
    ori	$t3,$t3,0x8000
    srl	$a2,$a2,0xa
    andi	$a1,$a1,0x3ff
    sll	$a2,$a2,0x17
    lui	$s2,0x1
    or	$a1,$a1,$a2
    lui	$t9,0x9080
    or	$a1,$t3,$a1
    sw	$a1,0($s2)
    ori	$a0,$t9,0xbdc8
    sw	$a0,0($s2)
    lwc1	$f18,-27256($s0)
    swc1	$f18,0($s2)
    lwc1	$f17,-27252($s0)
    swc1	$f17,0($s2)
    lwc1	$f16,-27248($s0)
    swc1	$f16,0($s2)
    lwc1	$f15,-27244($s0)
    swc1	$f15,0($s2)
    lwc1	$f14,-27240($s0)
    swc1	$f14,0($s2)
    lwc1	$f13,-27236($s0)
    swc1	$f13,0($s2)
    lwc1	$f12,-27232($s0)
    swc1	$f12,0($s2)
    lwc1	$f11,-27228($s0)
    swc1	$f11,0($s2)
    lwc1	$f10,-27224($s0)
    swc1	$f10,0($s2)
    lwc1	$f9,-27220($s0)
    swc1	$f9,0($s2)
    lwc1	$f8,-27216($s0)
    swc1	$f8,0($s2)
    lwc1	$f7,-27212($s0)
    swc1	$f7,0($s2)
    lwc1	$f6,-27208($s0)
    swc1	$f6,0($s2)
    lwc1	$f5,-27204($s0)
    swc1	$f5,0($s2)
    lwc1	$f4,-27200($s0)
    swc1	$f4,0($s2)
    lwc1	$f3,-27196($s0)
    swc1	$f3,0($s2)
    li	$v1,16
    sw	$v1,-24028($s0)
    lw	$at,-24028($s0)
    lw	$v0,-24028($s0)
    srl	$v0,$v0,0xa
    andi	$at,$at,0x3ff
    sll	$v0,$v0,0x17
    or	$at,$at,$v0
    or	$at,$t3,$at
    sw	$at,0($s2)
    ori	$t9,$t9,0x91df
    sw	$t9,0($s2)
    lwc1	$f2,-27192($s0)
    swc1	$f2,0($s2)
    lwc1	$f1,-27188($s0)
    swc1	$f1,0($s2)
    lwc1	$f0,-27184($s0)
    swc1	$f0,0($s2)
    lwc1	$f31,-27180($s0)
    swc1	$f31,0($s2)
    sw	$zero,-24028($s0)
    lw	$t9,-24028($s0)
    lw	$t8,-24028($s0)
    ld	$s1,0($sp)
    srl	$t8,$t8,0xa
    # Line 607
    ld	$gp,8($sp)
    # Line 605
    andi	$s0,$t9,0x3ff
    sll	$t8,$t8,0x17
    ld	$ra,32($sp)
    or	$s0,$s0,$t8
    or	$t3,$t3,$s0
    # Line 607
    ld	$s0,24($sp)
    # Line 605
    sw	$t3,0($s2)
    # Line 607
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9e3530:
    b	.L0d9e3378
    # Line 566
    lw	$a2,-25156($a3)
.L0d9e3538:
    # Line 579
    lw	$t0,27016($s0)
    ori	$t0,$t0,0x10
    # Line 580
    b	.L0d9e3398
    # Line 579
    sw	$t0,27016($s0)
.L0d9e3548:
    # Line 531
    move	$a2,$zero
    b	.L0d9e3300
    nop
.L0d9e3554:
    # Line 547
    beqz	$a0,.L0d9e35d0
    nop
    lwc1	$f23,28($s1)
    cvt.d.s	$f23,$f23
    c.eq.d $f23,$f4
    bc1f .L0d9e35d0
    # Line 549
    li	$a2,1
    # Line 547
    lwc1	$f25,44($s1)
    cvt.d.s	$f25,$f25
    c.eq.d $f25,$f4
    bc1f .L0d9e35d0
    nop
    # Line 549
    sw	$a2,26424($s0)
    lwc1	$f29,60($s1)
    lwc1	$f27,-25200($a3)
    abs.s	$f29,$f29
    abs.s	$f27,$f27
    cvt.d.s	$f29,$f29
    cvt.d.s	$f27,$f27
    c.lt.d	$f27,$f29
    bc1f	.L0d9e35f8
    nop
    # Line 556
    beq	$a2,$a5,.L0d9e3378
    # Line 551
    sw	$a2,-25156($a3)
    b	.L0d9e35e4
    # Line 559
    sb	$t8,-25152($a3)
.L0d9e35bc:
    # Line 575
    lw	$t1,27016($s0)
    li	$t2,-17
    and	$t1,$t1,$t2
    b	.L0d9e3398
    sw	$t1,27016($s0)
.L0d9e35d0:
    # Line 556
    sw	$a4,-25156($a3)
    li	$a2,2
.L0d9e35d8:
    beq	$a2,$a5,.L0d9e3378
    nop
    # Line 559
    sb	$t8,-25152($a3)
.L0d9e35e4:
    # Line 560
    lw	$t3,26980($s0)
    ori	$t3,$t3,0x400
    sw	$t3,26980($s0)
    b	.L0d9e3378
    lw	$a2,-25156($a3)
.L0d9e35f8:
    # Line 553
    sw	$a4,-25156($a3)
    b	.L0d9e35d8
    li	$a2,2
.end __glOdysseyValidateMatrixComb

# Function: __glOdysseyValidateMatrixMV
# Declared: Line 611 (Source lines: 617-639)
# Address: 0x0d9e3610 - 0x0d9e3780 (Size: 368 bytes, Frame: 0)
.globl __glOdysseyValidateMatrixMV
.ent __glOdysseyValidateMatrixMV
__glOdysseyValidateMatrixMV:
    # Line 617
    lw	$a5,29716($a0)
    # Line 619
    lui	$v0,0x1
    lwc1	$f5,0($a5)
    addu	$a0,$v0,$a0
    swc1	$f5,-27176($a0)
    # Line 620
    lwc1	$f4,16($a5)
    swc1	$f4,-27172($a0)
    # Line 621
    lwc1	$f3,32($a5)
    swc1	$f3,-27168($a0)
    # Line 622
    lwc1	$f2,48($a5)
    swc1	$f2,-27164($a0)
    # Line 623
    lwc1	$f1,4($a5)
    swc1	$f1,-27160($a0)
    # Line 624
    lwc1	$f0,20($a5)
    swc1	$f0,-27156($a0)
    # Line 625
    lwc1	$f31,36($a5)
    swc1	$f31,-27152($a0)
    # Line 626
    lwc1	$f29,52($a5)
    swc1	$f29,-27148($a0)
    # Line 627
    lwc1	$f27,8($a5)
    swc1	$f27,-27144($a0)
    # Line 628
    lwc1	$f25,24($a5)
    swc1	$f25,-27140($a0)
    # Line 629
    lwc1	$f23,40($a5)
    swc1	$f23,-27136($a0)
    # Line 630
    lwc1	$f21,56($a5)
    swc1	$f21,-27132($a0)
    # Line 631
    lwc1	$f19,12($a5)
    swc1	$f19,-27128($a0)
    # Line 632
    lwc1	$f18,28($a5)
    swc1	$f18,-27124($a0)
    # Line 633
    lwc1	$f17,44($a5)
    swc1	$f17,-27120($a0)
    # Line 634
    lwc1	$f16,60($a5)
    # Line 637
    li	$a4,36
    sw	$a4,-24028($a0)
    lw	$a2,-24028($a0)
    lw	$a3,-24028($a0)
    lui	$at,0x3400
    srl	$a3,$a3,0xa
    andi	$a2,$a2,0x3ff
    sll	$a3,$a3,0x17
    ori	$at,$at,0x8000
    # Line 634
    swc1	$f16,-27116($a0)
    # Line 637
    or	$a2,$a2,$a3
    lui	$a1,0x9080
    or	$a2,$at,$a2
    sw	$a2,0($v0)
    ori	$a1,$a1,0xbdc8
    sw	$a1,0($v0)
    lwc1	$f15,-27176($a0)
    swc1	$f15,0($v0)
    lwc1	$f14,-27172($a0)
    swc1	$f14,0($v0)
    lwc1	$f13,-27168($a0)
    swc1	$f13,0($v0)
    lwc1	$f12,-27164($a0)
    swc1	$f12,0($v0)
    lwc1	$f11,-27160($a0)
    swc1	$f11,0($v0)
    lwc1	$f10,-27156($a0)
    swc1	$f10,0($v0)
    lwc1	$f9,-27152($a0)
    swc1	$f9,0($v0)
    lwc1	$f8,-27148($a0)
    swc1	$f8,0($v0)
    lwc1	$f7,-27144($a0)
    swc1	$f7,0($v0)
    lwc1	$f6,-27140($a0)
    swc1	$f6,0($v0)
    lwc1	$f5,-27136($a0)
    swc1	$f5,0($v0)
    lwc1	$f4,-27132($a0)
    swc1	$f4,0($v0)
    lwc1	$f3,-27128($a0)
    swc1	$f3,0($v0)
    lwc1	$f2,-27124($a0)
    swc1	$f2,0($v0)
    lwc1	$f1,-27120($a0)
    swc1	$f1,0($v0)
    lwc1	$f0,-27116($a0)
    swc1	$f0,0($v0)
    sw	$zero,-24028($a0)
    lw	$v1,-24028($a0)
    lw	$a0,-24028($a0)
    srl	$a0,$a0,0xa
    andi	$v1,$v1,0x3ff
    sll	$a0,$a0,0x17
    or	$v1,$v1,$a0
    or	$at,$at,$v1
    # Line 639
    jr	$ra
    # Line 637
    sw	$at,0($v0)
.end __glOdysseyValidateMatrixMV

# Function: __glOdysseyValidateMatrixNorm
# Declared: Line 643 (Source lines: 644-702)
# Address: 0x0d9e3780 - 0x0d9e3a14 (Size: 660 bytes, Frame: 32)
.globl __glOdysseyValidateMatrixNorm
.ent __glOdysseyValidateMatrixNorm
__glOdysseyValidateMatrixNorm:
    # Line 651
    lw	$a1,29716($a0)
    lbu	$v0,268($a1)
    # Line 644
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,19984
    sd	$gp,0($sp)
    # Line 651
    beqz	$v0,.L0d9e37c0
    # Line 644
    addu	$gp,$t9,$at
    # Line 653
    lw	$t9,11956($s0)
    sd	$ra,16($sp)
    jalr	$t9
    nop
    ld	$ra,16($sp)
    lw	$a1,29716($s0)
.L0d9e37c0:
    # Line 654
    lw	$v0,1792($s0)
    lui	$a0,0x1
    # Line 700
    li	$a6,52
    # Line 654
    dsll32	$v0,$v0,0x9
    addiu	$a3,$a1,88
    # Line 700
    lui	$v1,0x3400
    # Line 654
    ldc1	$f6,_lit8_3ff0000000000000
    bgez	$v0,.L0d9e39cc
    # Line 700
    ori	$v1,$v1,0x8000
    # Line 654
    lwc1	$f4,_lit_3f921fb6
.L0d9e37e8:
    # Line 666
    cvt.d.s	$f0,$f4
.L0d9e37ec:
    c.eq.d	$f0,$f6
    # Line 702
    ld	$gp,0($sp)
    # Line 666
    addu	$a1,$a0,$s0
    # Line 702
    ld	$s0,8($sp)
    # Line 666
    bc1t	.L0d9e3894
    lwc1	$f5,0($a3)
    # Line 672
    mul.s	$f14,$f5,$f4
    swc1	$f14,-27112($a1)
    # Line 673
    lwc1	$f13,16($a3)
    mul.s	$f13,$f13,$f4
    swc1	$f13,-27108($a1)
    # Line 674
    lwc1	$f12,32($a3)
    mul.s	$f12,$f12,$f4
    swc1	$f12,-27104($a1)
    # Line 675
    lwc1	$f11,48($a3)
    mul.s	$f11,$f11,$f4
    swc1	$f11,-27100($a1)
    # Line 676
    lwc1	$f10,4($a3)
    mul.s	$f10,$f10,$f4
    swc1	$f10,-27096($a1)
    # Line 677
    lwc1	$f9,20($a3)
    mul.s	$f9,$f9,$f4
    swc1	$f9,-27092($a1)
    # Line 678
    lwc1	$f8,36($a3)
    mul.s	$f8,$f8,$f4
    swc1	$f8,-27088($a1)
    # Line 679
    lwc1	$f7,52($a3)
    mul.s	$f7,$f7,$f4
    swc1	$f7,-27084($a1)
    # Line 680
    lwc1	$f6,8($a3)
    mul.s	$f6,$f6,$f4
    swc1	$f6,-27080($a1)
    # Line 681
    lwc1	$f3,24($a3)
    mul.s	$f3,$f3,$f4
    swc1	$f3,-27076($a1)
    # Line 682
    lwc1	$f2,40($a3)
    mul.s	$f2,$f2,$f4
    swc1	$f2,-27072($a1)
    # Line 683
    lwc1	$f1,56($a3)
    mul.s	$f1,$f1,$f4
    b	.L0d9e38f0
    swc1	$f1,-27068($a1)
.L0d9e3894:
    # Line 685
    swc1	$f5,-27112($a1)
    # Line 686
    lwc1	$f31,16($a3)
    swc1	$f31,-27108($a1)
    # Line 687
    lwc1	$f29,32($a3)
    swc1	$f29,-27104($a1)
    # Line 688
    lwc1	$f27,48($a3)
    swc1	$f27,-27100($a1)
    # Line 689
    lwc1	$f25,4($a3)
    swc1	$f25,-27096($a1)
    # Line 690
    lwc1	$f23,20($a3)
    swc1	$f23,-27092($a1)
    # Line 691
    lwc1	$f21,36($a3)
    swc1	$f21,-27088($a1)
    # Line 692
    lwc1	$f19,52($a3)
    swc1	$f19,-27084($a1)
    # Line 693
    lwc1	$f18,8($a3)
    swc1	$f18,-27080($a1)
    # Line 694
    lwc1	$f17,24($a3)
    swc1	$f17,-27076($a1)
    # Line 695
    lwc1	$f16,40($a3)
    swc1	$f16,-27072($a1)
    # Line 696
    lwc1	$f15,56($a3)
    swc1	$f15,-27068($a1)
.L0d9e38f0:
    # Line 700
    sw	$a6,-24028($a1)
    lw	$a4,-24028($a1)
    lw	$a5,-24028($a1)
    srl	$a5,$a5,0xa
    andi	$a4,$a4,0x3ff
    sll	$a5,$a5,0x17
    or	$a4,$a4,$a5
    lui	$a3,0x9080
    or	$a4,$v1,$a4
    sw	$a4,0($a0)
    ori	$a3,$a3,0xbdc8
    sw	$a3,0($a0)
    lwc1	$f15,-27112($a1)
    swc1	$f15,0($a0)
    lwc1	$f14,-27108($a1)
    swc1	$f14,0($a0)
    lwc1	$f13,-27104($a1)
    swc1	$f13,0($a0)
    lwc1	$f12,-27100($a1)
    swc1	$f12,0($a0)
    lwc1	$f11,-27096($a1)
    swc1	$f11,0($a0)
    lwc1	$f10,-27092($a1)
    swc1	$f10,0($a0)
    lwc1	$f9,-27088($a1)
    swc1	$f9,0($a0)
    lwc1	$f8,-27084($a1)
    swc1	$f8,0($a0)
    lwc1	$f7,-27080($a1)
    swc1	$f7,0($a0)
    lwc1	$f6,-27076($a1)
    swc1	$f6,0($a0)
    lwc1	$f5,-27072($a1)
    swc1	$f5,0($a0)
    lwc1	$f4,-27068($a1)
    swc1	$f4,0($a0)
    lwc1	$f3,-27064($a1)
    swc1	$f3,0($a0)
    lwc1	$f2,-27060($a1)
    swc1	$f2,0($a0)
    lwc1	$f1,-27056($a1)
    swc1	$f1,0($a0)
    lwc1	$f0,-27052($a1)
    swc1	$f0,0($a0)
    sw	$zero,-24028($a1)
    lw	$a3,-24028($a1)
    lw	$a2,-24028($a1)
    srl	$a2,$a2,0xa
    andi	$a1,$a3,0x3ff
    sll	$a2,$a2,0x17
    # Line 702
    addiu	$sp,$sp,32
    # Line 700
    or	$a1,$a1,$a2
    or	$v1,$v1,$a1
    # Line 702
    jr	$ra
    # Line 700
    sw	$v1,0($a0)
.L0d9e39cc:
    # Line 654
    lw	$a7,1796($s0)
    dsll32	$a7,$a7,0xf
    # Line 666
    lwc1	$f4,_lit_3f800000
    # Line 654
    bgez	$a7,.L0d9e3a0c
    ldc1	$f6,_lit8_3ff0000000000000
    # Line 666
    lwc1	$f4,124($a1)
    lwc1	$f7,120($a1)
    lwc1	$f5,128($a1)
    mul.s	$f4,$f4,$f4
    madd.s	$f4,$f4,$f7,$f7
    madd.s	$f4,$f4,$f5,$f5
    sqrt.s	$f4,$f4
    cvt.d.s	$f4,$f4
    div.d	$f4,$f6,$f4
    b	.L0d9e37e8
    cvt.s.d	$f4,$f4
.L0d9e3a0c:
    b	.L0d9e37ec
    cvt.d.s	$f0,$f4
.end __glOdysseyValidateMatrixNorm

# Function: __glOdysseyValidateMatrixTex
# Declared: Line 706 (Source lines: 712-734)
# Address: 0x0d9e3a20 - 0x0d9e3b90 (Size: 368 bytes, Frame: 0)
.globl __glOdysseyValidateMatrixTex
.ent __glOdysseyValidateMatrixTex
__glOdysseyValidateMatrixTex:
    # Line 712
    lw	$a5,29736($a0)
    # Line 714
    lui	$v0,0x1
    lwc1	$f5,0($a5)
    addu	$a0,$v0,$a0
    swc1	$f5,-27048($a0)
    # Line 715
    lwc1	$f4,16($a5)
    swc1	$f4,-27044($a0)
    # Line 716
    lwc1	$f3,32($a5)
    swc1	$f3,-27040($a0)
    # Line 717
    lwc1	$f2,48($a5)
    swc1	$f2,-27036($a0)
    # Line 718
    lwc1	$f1,4($a5)
    swc1	$f1,-27032($a0)
    # Line 719
    lwc1	$f0,20($a5)
    swc1	$f0,-27028($a0)
    # Line 720
    lwc1	$f31,36($a5)
    swc1	$f31,-27024($a0)
    # Line 721
    lwc1	$f29,52($a5)
    swc1	$f29,-27020($a0)
    # Line 722
    lwc1	$f27,8($a5)
    swc1	$f27,-27016($a0)
    # Line 723
    lwc1	$f25,24($a5)
    swc1	$f25,-27012($a0)
    # Line 724
    lwc1	$f23,40($a5)
    swc1	$f23,-27008($a0)
    # Line 725
    lwc1	$f21,56($a5)
    swc1	$f21,-27004($a0)
    # Line 726
    lwc1	$f19,12($a5)
    swc1	$f19,-27000($a0)
    # Line 727
    lwc1	$f18,28($a5)
    swc1	$f18,-26996($a0)
    # Line 728
    lwc1	$f17,44($a5)
    swc1	$f17,-26992($a0)
    # Line 729
    lwc1	$f16,60($a5)
    # Line 732
    li	$a4,20
    sw	$a4,-24028($a0)
    lw	$a2,-24028($a0)
    lw	$a3,-24028($a0)
    lui	$at,0x3400
    srl	$a3,$a3,0xa
    andi	$a2,$a2,0x3ff
    sll	$a3,$a3,0x17
    ori	$at,$at,0x8000
    # Line 729
    swc1	$f16,-26988($a0)
    # Line 732
    or	$a2,$a2,$a3
    lui	$a1,0x9080
    or	$a2,$at,$a2
    sw	$a2,0($v0)
    ori	$a1,$a1,0xbdc8
    sw	$a1,0($v0)
    lwc1	$f15,-27048($a0)
    swc1	$f15,0($v0)
    lwc1	$f14,-27044($a0)
    swc1	$f14,0($v0)
    lwc1	$f13,-27040($a0)
    swc1	$f13,0($v0)
    lwc1	$f12,-27036($a0)
    swc1	$f12,0($v0)
    lwc1	$f11,-27032($a0)
    swc1	$f11,0($v0)
    lwc1	$f10,-27028($a0)
    swc1	$f10,0($v0)
    lwc1	$f9,-27024($a0)
    swc1	$f9,0($v0)
    lwc1	$f8,-27020($a0)
    swc1	$f8,0($v0)
    lwc1	$f7,-27016($a0)
    swc1	$f7,0($v0)
    lwc1	$f6,-27012($a0)
    swc1	$f6,0($v0)
    lwc1	$f5,-27008($a0)
    swc1	$f5,0($v0)
    lwc1	$f4,-27004($a0)
    swc1	$f4,0($v0)
    lwc1	$f3,-27000($a0)
    swc1	$f3,0($v0)
    lwc1	$f2,-26996($a0)
    swc1	$f2,0($v0)
    lwc1	$f1,-26992($a0)
    swc1	$f1,0($v0)
    lwc1	$f0,-26988($a0)
    swc1	$f0,0($v0)
    sw	$zero,-24028($a0)
    lw	$v1,-24028($a0)
    lw	$a0,-24028($a0)
    srl	$a0,$a0,0xa
    andi	$v1,$v1,0x3ff
    sll	$a0,$a0,0x17
    or	$v1,$v1,$a0
    or	$at,$at,$v1
    # Line 734
    jr	$ra
    # Line 732
    sw	$at,0($v0)
.end __glOdysseyValidateMatrixTex

# Function: dirtyMatrix
# Declared: Line 738 (Source lines: 742-777)
# Address: 0x0d9e3b90 - 0x0d9e3c3c (Size: 172 bytes, Frame: 0)
.ent dirtyMatrix
dirtyMatrix:
    # Line 742
    lw	$a2,1744($a0)
    li	$at,5888
    beq	$a2,$at,.L0d9e3bbc
    li	$v1,5890
    li	$v0,5889
    beq	$a2,$v0,.L0d9e3c18
    # Line 755
    lui	$t8,0x1
    # Line 742
    beq	$a2,$v1,.L0d9e3bf4
    # Line 762
    lui	$t1,0x1
    # Line 777
    jr	$ra
    nop
.L0d9e3bbc:
    # Line 745
    lui	$a2,0x1
    ori	$a3,$a2,0x9dcc
    addu	$a3,$a3,$a0
    lbu	$a3,0($a3)
    # Line 746
    li	$a4,1
    # Line 747
    li	$a5,2
    # Line 745
    beqz	$a3,.L0d9e3be0
    addu	$a2,$a0,$a2
    # Line 746
    sb	$a4,26432($a2)
.L0d9e3be0:
    # Line 747
    lw	$a6,26980($a2)
    ori	$a6,$a6,0x37
    sw	$a6,26980($a2)
    # Line 777
    jr	$ra
    # Line 747
    sw	$a5,4120($zero)
.L0d9e3bf4:
    # Line 762
    addu	$t1,$a0,$t1
    # Line 763
    lw	$t0,26980($t1)
    # Line 762
    li	$t2,1
    sb	$t2,26432($t1)
    # Line 763
    ori	$t0,$t0,0x108
    sw	$t0,26980($t1)
    li	$a7,2
    # Line 777
    jr	$ra
    # Line 763
    sw	$a7,4120($zero)
.L0d9e3c18:
    # Line 755
    addu	$t8,$a0,$t8
    # Line 756
    lw	$t3,26980($t8)
    # Line 755
    li	$t9,1
    sb	$t9,26432($t8)
    # Line 756
    ori	$t3,$t3,0x1011
    sw	$t3,26980($t8)
    li	$t2,2
    # Line 777
    jr	$ra
    # Line 756
    sw	$t2,4120($zero)
.end dirtyMatrix

# Function: __glOdyim_ClipPlane
# Declared: Line 781 (Source lines: 782-799)
# Address: 0x0d9e3c40 - 0x0d9e3d00 (Size: 192 bytes, Frame: 32)
.globl __glOdyim_ClipPlane
.ent __glOdyim_ClipPlane
__glOdyim_ClipPlane:
    # Line 787
    addiu	$a4,$a0,-12288
    # Line 782
    addiu	$sp,$sp,-32
    # Line 783
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$v0,1
    # Line 782
    lui	$v1,0x11
    sd	$ra,16($sp)
    # Line 787
    sltiu	$a4,$a4,6
    # Line 782
    addiu	$v1,$v1,18768
    sd	$gp,8($sp)
    # Line 783
    beq	$at,$v0,.L0d9e3cec
    # Line 782
    addu	$gp,$t9,$v1
    # Line 783
    sltiu	$a2,$a0,12288
    bnez	$a2,.L0d9e3cdc
    # Line 786
    nop	# was lw $t9, -26792($gp) # &__glSetError
    # Line 787
    bnez	$a4,.L0d9e3ca0
    sd	$a3,0($sp)
    # Line 793
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d9e3c94:
    # Line 799
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e3ca0:
    # Line 797
    # lw $t9, -23712($gp) # &__glim_ClipPlane
    jal	__glim_ClipPlane
    nop
    # Line 798
    ld	$a7,0($sp)
    lui	$t0,0x1
    ld	$ra,16($sp)
    addu	$a7,$a7,$t0
    lw	$a6,26980($a7)
    # Line 799
    ld	$gp,8($sp)
    # Line 798
    li	$a5,2
    ori	$a6,$a6,0x10
    sw	$a6,26980($a7)
    # Line 799
    addiu	$sp,$sp,32
    jr	$ra
    # Line 798
    sw	$a5,4120($zero)
.L0d9e3cdc:
    # Line 786
    jalr	$t9
    li	$a0,1280
    b	.L0d9e3c94
    ld	$ra,16($sp)
.L0d9e3cec:
    # Line 783
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e3c94
    ld	$ra,16($sp)
.end __glOdyim_ClipPlane

# Function: __glOdyim_Scissor
# Declared: Line 803 (Source lines: 803-808)
# Address: 0x0d9e3d00 - 0x0d9e3d70 (Size: 112 bytes, Frame: 32)
.globl __glOdyim_Scissor
.ent __glOdyim_Scissor
__glOdyim_Scissor:
    # Line 804
    lw	$a4,4112($zero)
    # Line 803
    addiu	$sp,$sp,-32
    # Line 804
    lw	$at,4120($zero)
    sd	$a4,0($sp)
    li	$v0,1
    # Line 803
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,18576
    sd	$gp,8($sp)
    # Line 804
    beq	$at,$v0,.L0d9e3d5c
    # Line 803
    addu	$gp,$t9,$v1
    # Line 806
    # lw $t9, -23716($gp) # &__glim_Scissor
    jal	__glim_Scissor
    nop
    # Line 807
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11964($t9)
    jalr	$t9
    nop
    ld	$ra,16($sp)
.L0d9e3d50:
    # Line 808
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e3d5c:
    # Line 804
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e3d50
    ld	$ra,16($sp)
.end __glOdyim_Scissor

# Function: __glOdyim_Frustum
# Declared: Line 812 (Source lines: 815-837)
# Address: 0x0d9e3d70 - 0x0d9e3e48 (Size: 216 bytes, Frame: 48)
.globl __glOdyim_Frustum
.ent __glOdyim_Frustum
__glOdyim_Frustum:
    # Line 815
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    # Line 816
    lw	$s0,4112($zero)
    sd	$ra,32($sp)
    lw	$at,4120($zero)
    # Line 815
    sdc1	$f22,0($sp)
    # Line 816
    li	$v0,1
    # Line 815
    lui	$v1,0x11
    mov.d	$f22,$f17
    sdc1	$f20,8($sp)
    addiu	$v1,$v1,18464
    mov.d	$f20,$f16
    sd	$gp,24($sp)
    # Line 816
    beq	$at,$v0,.L0d9e3e34
    # Line 815
    addu	$gp,$t9,$v1
    # Line 818
    # lw $t9, -23744($gp) # &__glim_Frustum
    jal	__glim_Frustum
    nop
    lw	$a0,1744($s0)
    li	$a1,5889
    beq	$a0,$a1,.L0d9e3df0
.L0d9e3dc4:
    # Line 836
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    move	$a0,$s0
    ld	$s0,16($sp)
.L0d9e3dd8:
    ld	$ra,32($sp)
    ldc1	$f22,0($sp)
    ldc1	$f20,8($sp)
    # Line 837
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9e3df0:
    # Line 830
    add.d	$f1,$f20,$f22
    sub.d	$f2,$f22,$f20
    neg.d	$f1,$f1
    div.d	$f1,$f1,$f2
    # Line 832
    ldc1	$f0,_lit8_c000000000000000
    mul.d	$f0,$f20,$f0
    mul.d	$f0,$f22,$f0
    div.d	$f0,$f0,$f2
    # Line 833
    dmtc1	$zero,$f3
    # Line 830
    lui	$ra,0x1
    addu	$ra,$s0,$ra
    # Line 831
    ldc1	$f2,_lit8_bff0000000000000
    # Line 833
    sdc1	$f3,26128($ra)
    # Line 831
    sdc1	$f2,26112($ra)
    # Line 830
    sdc1	$f1,26104($ra)
    # Line 833
    b	.L0d9e3dc4
    # Line 832
    sdc1	$f0,26120($ra)
.L0d9e3e34:
    # Line 816
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e3dd8
    ld	$s0,16($sp)
.end __glOdyim_Frustum

# Function: __glOdyim_LoadIdentity
# Declared: Line 841 (Source lines: 842-847)
# Address: 0x0d9e3e50 - 0x0d9e3ebc (Size: 108 bytes, Frame: 32)
.globl __glOdyim_LoadIdentity
.ent __glOdyim_LoadIdentity
__glOdyim_LoadIdentity:
    # Line 843
    lw	$a0,4112($zero)
    # Line 842
    addiu	$sp,$sp,-32
    # Line 843
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 842
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,18240
    sd	$gp,8($sp)
    # Line 843
    beq	$at,$v0,.L0d9e3ea8
    # Line 842
    addu	$gp,$t9,$v1
    # Line 845
    # lw $t9, -23796($gp) # &__glim_LoadIdentity
    jal	__glim_LoadIdentity
    nop
    # Line 846
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e3e9c:
    # Line 847
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e3ea8:
    # Line 843
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e3e9c
    ld	$ra,16($sp)
.end __glOdyim_LoadIdentity

# Function: __glOdyim_LoadMatrixf
# Declared: Line 851 (Source lines: 852-857)
# Address: 0x0d9e3ec0 - 0x0d9e3f2c (Size: 108 bytes, Frame: 32)
.globl __glOdyim_LoadMatrixf
.ent __glOdyim_LoadMatrixf
__glOdyim_LoadMatrixf:
    # Line 853
    lw	$a1,4112($zero)
    # Line 852
    addiu	$sp,$sp,-32
    # Line 853
    lw	$at,4120($zero)
    sd	$a1,0($sp)
    li	$v0,1
    # Line 852
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,18128
    sd	$gp,8($sp)
    # Line 853
    beq	$at,$v0,.L0d9e3f18
    # Line 852
    addu	$gp,$t9,$v1
    # Line 855
    # lw $t9, -23792($gp) # &__glim_LoadMatrixf
    jal	__glim_LoadMatrixf
    nop
    # Line 856
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e3f0c:
    # Line 857
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e3f18:
    # Line 853
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e3f0c
    ld	$ra,16($sp)
.end __glOdyim_LoadMatrixf

# Function: __glOdyim_LoadMatrixd
# Declared: Line 861 (Source lines: 862-877)
# Address: 0x0d9e3f30 - 0x0d9e3fe4 (Size: 180 bytes, Frame: 32)
.globl __glOdyim_LoadMatrixd
.ent __glOdyim_LoadMatrixd
__glOdyim_LoadMatrixd:
    # Line 862
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 863
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 862
    sd	$s1,8($sp)
    # Line 863
    li	$v0,1
    # Line 862
    lui	$v1,0x11
    move	$s1,$a0
    sd	$ra,24($sp)
    addiu	$v1,$v1,18016
    sd	$gp,16($sp)
    # Line 863
    beq	$at,$v0,.L0d9e3fd0
    # Line 862
    addu	$gp,$t9,$v1
    # Line 865
    # lw $t9, -23788($gp) # &__glim_LoadMatrixd
    jal	__glim_LoadMatrixd
    nop
    lw	$a0,1744($s0)
    li	$a1,5889
    beq	$a0,$a1,.L0d9e3fa4
.L0d9e3f7c:
    # Line 876
    nop	# was lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    move	$a0,$s0
    ld	$ra,24($sp)
.L0d9e3f90:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 877
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e3fa4:
    # Line 870
    ldc1	$f3,80($s1)
    lui	$ra,0x1
    addu	$ra,$s0,$ra
    sdc1	$f3,26104($ra)
    # Line 871
    ldc1	$f2,88($s1)
    sdc1	$f2,26112($ra)
    # Line 872
    ldc1	$f1,112($s1)
    sdc1	$f1,26120($ra)
    # Line 873
    ldc1	$f0,120($s1)
    b	.L0d9e3f7c
    sdc1	$f0,26128($ra)
.L0d9e3fd0:
    # Line 863
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e3f90
    ld	$ra,24($sp)
.end __glOdyim_LoadMatrixd

# Function: __glOdyim_MatrixMode
# Declared: Line 881 (Source lines: 882-886)
# Address: 0x0d9e3ff0 - 0x0d9e4044 (Size: 84 bytes, Frame: 16)
.globl __glOdyim_MatrixMode
.ent __glOdyim_MatrixMode
__glOdyim_MatrixMode:
    # Line 882
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x11
    sd	$ra,8($sp)
    addiu	$v1,$v1,17824
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9e4030
    addu	$gp,$t9,$v1
    # Line 885
    # lw $t9, -23800($gp) # &__glim_MatrixMode
    jal	__glim_MatrixMode
    nop
    ld	$ra,8($sp)
.L0d9e4024:
    # Line 886
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e4030:
    # Line 883
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e4024
    ld	$ra,8($sp)
.end __glOdyim_MatrixMode

# Function: __glOdyim_MultMatrixf
# Declared: Line 890 (Source lines: 891-896)
# Address: 0x0d9e4050 - 0x0d9e40bc (Size: 108 bytes, Frame: 32)
.globl __glOdyim_MultMatrixf
.ent __glOdyim_MultMatrixf
__glOdyim_MultMatrixf:
    # Line 892
    lw	$a1,4112($zero)
    # Line 891
    addiu	$sp,$sp,-32
    # Line 892
    lw	$at,4120($zero)
    sd	$a1,0($sp)
    li	$v0,1
    # Line 891
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,17728
    sd	$gp,8($sp)
    # Line 892
    beq	$at,$v0,.L0d9e40a8
    # Line 891
    addu	$gp,$t9,$v1
    # Line 894
    # lw $t9, -23784($gp) # &__glim_MultMatrixf
    jal	__glim_MultMatrixf
    nop
    # Line 895
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e409c:
    # Line 896
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e40a8:
    # Line 892
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e409c
    ld	$ra,16($sp)
.end __glOdyim_MultMatrixf

# Function: __glOdyim_MultMatrixd
# Declared: Line 900 (Source lines: 901-922)
# Address: 0x0d9e40c0 - 0x0d9e4168 (Size: 168 bytes, Frame: 32)
.globl __glOdyim_MultMatrixd
.ent __glOdyim_MultMatrixd
__glOdyim_MultMatrixd:
    # Line 901
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 902
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 901
    lui	$v1,0x11
    # Line 902
    li	$a2,5889
    sd	$ra,16($sp)
    # Line 901
    addiu	$v1,$v1,17616
    sd	$gp,8($sp)
    # Line 902
    beq	$at,$v0,.L0d9e4154
    # Line 901
    addu	$gp,$t9,$v1
    # Line 902
    lw	$a1,1744($s0)
    beq	$a1,$a2,.L0d9e4128
.L0d9e40f8:
    # Line 920
    nop	# was lw $t9, -23780($gp) # &__glim_MultMatrixd
    jal	__glim_MultMatrixd
    nop
    # Line 921
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d9e4118:
    ld	$s0,0($sp)
    # Line 922
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4128:
    # Line 914
    ldc1	$f3,80($a0)
    lui	$ra,0x1
    addu	$ra,$s0,$ra
    sdc1	$f3,26104($ra)
    # Line 915
    ldc1	$f2,88($a0)
    sdc1	$f2,26112($ra)
    # Line 916
    ldc1	$f1,112($a0)
    sdc1	$f1,26120($ra)
    # Line 917
    ldc1	$f0,120($a0)
    b	.L0d9e40f8
    sdc1	$f0,26128($ra)
.L0d9e4154:
    # Line 902
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e4118
    ld	$ra,16($sp)
.end __glOdyim_MultMatrixd

# Function: __glOdyim_Ortho
# Declared: Line 926 (Source lines: 929-934)
# Address: 0x0d9e4170 - 0x0d9e41dc (Size: 108 bytes, Frame: 32)
.globl __glOdyim_Ortho
.ent __glOdyim_Ortho
__glOdyim_Ortho:
    # Line 930
    lw	$a0,4112($zero)
    # Line 929
    addiu	$sp,$sp,-32
    # Line 930
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 929
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,17440
    sd	$gp,8($sp)
    # Line 930
    beq	$at,$v0,.L0d9e41c8
    # Line 929
    addu	$gp,$t9,$v1
    # Line 932
    # lw $t9, -23740($gp) # &__glim_Ortho
    jal	__glim_Ortho
    nop
    # Line 933
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e41bc:
    # Line 934
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e41c8:
    # Line 930
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e41bc
    ld	$ra,16($sp)
.end __glOdyim_Ortho

# Function: __glOdyim_PopMatrix
# Declared: Line 938 (Source lines: 939-955)
# Address: 0x0d9e41e0 - 0x0d9e42d4 (Size: 244 bytes, Frame: 32)
.globl __glOdyim_PopMatrix
.ent __glOdyim_PopMatrix
__glOdyim_PopMatrix:
    # Line 939
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 940
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 939
    lui	$v1,0x11
    # Line 940
    li	$a1,5889
    sd	$ra,16($sp)
    # Line 939
    addiu	$v1,$v1,17328
    sd	$gp,8($sp)
    # Line 940
    beq	$at,$v0,.L0d9e42c0
    # Line 939
    addu	$gp,$t9,$v1
    # Line 940
    lw	$a0,1744($s0)
    bne	$a0,$a1,.L0d9e4294
    # Line 953
    nop	# was lw $t9, -23748($gp) # &__glim_PopMatrix
    # Line 944
    lw	$a6,29720($s0)
    lw	$a5,29724($s0)
    li	$a4,0xf0f0
    dsll	$a4,$a4,0x10
    subu	$a5,$a5,$a6
    negu	$a3,$a5
    srl	$a1,$a5,0x1f
    ori	$a4,$a4,0xf0f1
    movz	$a3,$a5,$a1
    multu	$a3,$a4
    mfhi	$a2
    sra	$a2,$a2,0x8
    negu	$a0,$a2
    movz	$a0,$a2,$a1
    addiu	$a0,$a0,-1
    # Line 947
    lui	$a7,0x1
    sll	$t0,$a0,0x7
    # Line 944
    bltz	$a0,.L0d9e4290
    # Line 947
    addu	$t0,$s0,$t0
    addu	$t0,$a7,$t0
    ldc1	$f3,26136($t0)
    addu	$a7,$a7,$s0
    sdc1	$f3,26104($a7)
    # Line 948
    ldc1	$f2,26144($t0)
    sdc1	$f2,26112($a7)
    # Line 949
    ldc1	$f1,26152($t0)
    sdc1	$f1,26120($a7)
    # Line 950
    ldc1	$f0,26160($t0)
    sdc1	$f0,26128($a7)
.L0d9e4290:
    # Line 953
    # lw $t9, -23748($gp) # &__glim_PopMatrix
.L0d9e4294:
    jal	__glim_PopMatrix
    nop
    # Line 954
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d9e42b0:
    ld	$s0,0($sp)
    # Line 955
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e42c0:
    # Line 940
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e42b0
    ld	$ra,16($sp)
.end __glOdyim_PopMatrix

# Function: __glOdyim_PushMatrix
# Declared: Line 959 (Source lines: 960-977)
# Address: 0x0d9e42e0 - 0x0d9e43c4 (Size: 228 bytes, Frame: 16)
.globl __glOdyim_PushMatrix
.ent __glOdyim_PushMatrix
__glOdyim_PushMatrix:
    # Line 960
    addiu	$sp,$sp,-16
    # Line 961
    lw	$at,4120($zero)
    lw	$a1,4112($zero)
    li	$v0,1
    # Line 960
    lui	$v1,0x11
    # Line 961
    li	$a2,5889
    sd	$ra,8($sp)
    # Line 960
    addiu	$v1,$v1,17072
    sd	$gp,0($sp)
    # Line 961
    beq	$at,$v0,.L0d9e43b0
    # Line 960
    addu	$gp,$t9,$v1
    # Line 961
    lw	$a0,1744($a1)
    bne	$a0,$a2,.L0d9e4398
    # Line 974
    nop	# was lw $t9, -23752($gp) # &__glim_PushMatrix
    # Line 965
    lw	$t1,29720($a1)
    lw	$t0,29724($a1)
    li	$a7,0xf0f0
    dsll	$a7,$a7,0x10
    subu	$t0,$t0,$t1
    negu	$a6,$t0
    srl	$a4,$t0,0x1f
    ori	$a7,$a7,0xf0f1
    movz	$a6,$t0,$a4
    multu	$a6,$a7
    mfhi	$a5
    lw	$a3,3792($a1)
    sra	$a5,$a5,0x8
    negu	$a2,$a5
    addiu	$a3,$a3,-1
    movz	$a2,$a5,$a4
    slt	$a3,$a2,$a3
    # Line 968
    lui	$t2,0x1
    sll	$t8,$a2,0x7
    # Line 965
    beqz	$a3,.L0d9e4394
    # Line 968
    addu	$t8,$a1,$t8
    addu	$t3,$t2,$a1
    ldc1	$f3,26104($t3)
    addu	$t2,$t2,$t8
    sdc1	$f3,26136($t2)
    # Line 969
    ldc1	$f2,26112($t3)
    sdc1	$f2,26144($t2)
    # Line 970
    ldc1	$f1,26120($t3)
    sdc1	$f1,26152($t2)
    # Line 971
    ldc1	$f0,26128($t3)
    sdc1	$f0,26160($t2)
.L0d9e4394:
    # Line 974
    # lw $t9, -23752($gp) # &__glim_PushMatrix
.L0d9e4398:
    jal	__glim_PushMatrix
    nop
    ld	$ra,8($sp)
.L0d9e43a4:
    # Line 977
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e43b0:
    # Line 961
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e43a4
    ld	$ra,8($sp)
.end __glOdyim_PushMatrix

# Function: __glOdyim_Rotated
# Declared: Line 981 (Source lines: 982-987)
# Address: 0x0d9e43d0 - 0x0d9e443c (Size: 108 bytes, Frame: 32)
.globl __glOdyim_Rotated
.ent __glOdyim_Rotated
__glOdyim_Rotated:
    # Line 983
    lw	$a0,4112($zero)
    # Line 982
    addiu	$sp,$sp,-32
    # Line 983
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 982
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,16832
    sd	$gp,8($sp)
    # Line 983
    beq	$at,$v0,.L0d9e4428
    # Line 982
    addu	$gp,$t9,$v1
    # Line 985
    # lw $t9, -23772($gp) # &__glim_Rotated
    jal	__glim_Rotated
    nop
    # Line 986
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e441c:
    # Line 987
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4428:
    # Line 983
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e441c
    ld	$ra,16($sp)
.end __glOdyim_Rotated

# Function: __glOdyim_Rotatef
# Declared: Line 991 (Source lines: 992-997)
# Address: 0x0d9e4440 - 0x0d9e44ac (Size: 108 bytes, Frame: 32)
.globl __glOdyim_Rotatef
.ent __glOdyim_Rotatef
__glOdyim_Rotatef:
    # Line 993
    lw	$a0,4112($zero)
    # Line 992
    addiu	$sp,$sp,-32
    # Line 993
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 992
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,16720
    sd	$gp,8($sp)
    # Line 993
    beq	$at,$v0,.L0d9e4498
    # Line 992
    addu	$gp,$t9,$v1
    # Line 995
    # lw $t9, -23776($gp) # &__glim_Rotatef
    jal	__glim_Rotatef
    nop
    # Line 996
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e448c:
    # Line 997
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4498:
    # Line 993
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e448c
    ld	$ra,16($sp)
.end __glOdyim_Rotatef

# Function: __glOdyim_Scaled
# Declared: Line 1001 (Source lines: 1002-1007)
# Address: 0x0d9e44b0 - 0x0d9e451c (Size: 108 bytes, Frame: 32)
.globl __glOdyim_Scaled
.ent __glOdyim_Scaled
__glOdyim_Scaled:
    # Line 1003
    lw	$a0,4112($zero)
    # Line 1002
    addiu	$sp,$sp,-32
    # Line 1003
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 1002
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,16608
    sd	$gp,8($sp)
    # Line 1003
    beq	$at,$v0,.L0d9e4508
    # Line 1002
    addu	$gp,$t9,$v1
    # Line 1005
    # lw $t9, -23764($gp) # &__glim_Scaled
    jal	__glim_Scaled
    nop
    # Line 1006
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e44fc:
    # Line 1007
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4508:
    # Line 1003
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e44fc
    ld	$ra,16($sp)
.end __glOdyim_Scaled

# Function: __glOdyim_Scalef
# Declared: Line 1011 (Source lines: 1012-1017)
# Address: 0x0d9e4520 - 0x0d9e458c (Size: 108 bytes, Frame: 32)
.globl __glOdyim_Scalef
.ent __glOdyim_Scalef
__glOdyim_Scalef:
    # Line 1013
    lw	$a0,4112($zero)
    # Line 1012
    addiu	$sp,$sp,-32
    # Line 1013
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 1012
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,16496
    sd	$gp,8($sp)
    # Line 1013
    beq	$at,$v0,.L0d9e4578
    # Line 1012
    addu	$gp,$t9,$v1
    # Line 1015
    # lw $t9, -23768($gp) # &__glim_Scalef
    jal	__glim_Scalef
    nop
    # Line 1016
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e456c:
    # Line 1017
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4578:
    # Line 1013
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e456c
    ld	$ra,16($sp)
.end __glOdyim_Scalef

# Function: __glOdyim_Translated
# Declared: Line 1021 (Source lines: 1022-1027)
# Address: 0x0d9e4590 - 0x0d9e45fc (Size: 108 bytes, Frame: 32)
.globl __glOdyim_Translated
.ent __glOdyim_Translated
__glOdyim_Translated:
    # Line 1023
    lw	$a0,4112($zero)
    # Line 1022
    addiu	$sp,$sp,-32
    # Line 1023
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 1022
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,16384
    sd	$gp,8($sp)
    # Line 1023
    beq	$at,$v0,.L0d9e45e8
    # Line 1022
    addu	$gp,$t9,$v1
    # Line 1025
    # lw $t9, -23756($gp) # &__glim_Translated
    jal	__glim_Translated
    nop
    # Line 1026
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e45dc:
    # Line 1027
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e45e8:
    # Line 1023
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e45dc
    ld	$ra,16($sp)
.end __glOdyim_Translated

# Function: __glOdyim_Translatef
# Declared: Line 1031 (Source lines: 1032-1037)
# Address: 0x0d9e4600 - 0x0d9e466c (Size: 108 bytes, Frame: 32)
.globl __glOdyim_Translatef
.ent __glOdyim_Translatef
__glOdyim_Translatef:
    # Line 1033
    lw	$a0,4112($zero)
    # Line 1032
    addiu	$sp,$sp,-32
    # Line 1033
    lw	$at,4120($zero)
    sd	$a0,0($sp)
    li	$v0,1
    # Line 1032
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,16272
    sd	$gp,8($sp)
    # Line 1033
    beq	$at,$v0,.L0d9e4658
    # Line 1032
    addu	$gp,$t9,$v1
    # Line 1035
    # lw $t9, -23760($gp) # &__glim_Translatef
    jal	__glim_Translatef
    nop
    # Line 1036
    # lw $t9, -32708($gp) # &sub_0d9e0000
    addiu	$t9,$t9,15248
    bal __glOdysseyValidateMatrixTex
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0d9e464c:
    # Line 1037
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4658:
    # Line 1033
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e464c
    ld	$ra,16($sp)
.end __glOdyim_Translatef

# Function: __glOdyim_Viewport
# Declared: Line 1041 (Source lines: 1042-1049)
# Address: 0x0d9e4670 - 0x0d9e470c (Size: 156 bytes, Frame: 32)
.globl __glOdyim_Viewport
.ent __glOdyim_Viewport
__glOdyim_Viewport:
    # Line 1043
    lw	$a4,4112($zero)
    # Line 1042
    addiu	$sp,$sp,-32
    # Line 1043
    lw	$at,4120($zero)
    sd	$a4,0($sp)
    li	$v0,1
    # Line 1042
    lui	$v1,0x11
    sd	$ra,16($sp)
    addiu	$v1,$v1,16160
    sd	$gp,8($sp)
    # Line 1043
    beq	$at,$v0,.L0d9e46f8
    # Line 1042
    addu	$gp,$t9,$v1
    # Line 1045
    # lw $t9, -23728($gp) # &__glim_Viewport
    jal	__glim_Viewport
    nop
    # Line 1046
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11964($t9)
    jalr	$t9
    nop
    # Line 1048
    ld	$v1,0($sp)
    lui	$a0,0x1
    ld	$ra,16($sp)
    addu	$v1,$v1,$a0
    lw	$v0,26980($v1)
    # Line 1049
    ld	$gp,8($sp)
    # Line 1048
    li	$at,2
    ori	$v0,$v0,0x1
    sw	$v0,26980($v1)
    # Line 1049
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1048
    sw	$at,4120($zero)
.L0d9e46ec:
    # Line 1049
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e46f8:
    # Line 1043
    # lw $t9, -26792($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e46ec
    ld	$ra,16($sp)
.end __glOdyim_Viewport

# Function: __glOdysseyWindowToEyeZ
# Declared: Line 1090 (Source lines: 1091-1215)
# Address: 0x0d9e4710 - 0x0d9e4888 (Size: 376 bytes, Frame: 32)
.globl __glOdysseyWindowToEyeZ
.ent __glOdysseyWindowToEyeZ
__glOdysseyWindowToEyeZ:
    # Line 1098
    lw	$a0,4112($zero)
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lbu	$v0,26432($a2)
    # Line 1091
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sdc1	$f12,0($sp)
    addiu	$at,$at,16000
    sd	$gp,8($sp)
    # Line 1098
    beqz	$v0,.L0d9e4754
    # Line 1091
    addu	$gp,$t9,$at
    # Line 1103
    # lw $t9, -30124($gp) # &__glOdysseyUpdateTransform
    sd	$ra,16($sp)
    bal __glOdysseyUpdateTransform
    sd	$a2,24($sp)
    ld	$ra,16($sp)
    ld	$a2,24($sp)
.L0d9e4754:
    # Line 1116
    dmtc1	$zero,$f7
    # Line 1106
    ldc1	$f0,26112($a2)
    # Line 1108
    ldc1	$f9,26128($a2)
    # Line 1116
    ldc1	$f10,26064($a2)
    # Line 1115
    ldc1	$f6,26056($a2)
    # Line 1116
    c.eq.d	$f0,$f7
    # Line 1107
    ldc1	$f8,26120($a2)
    # Line 1105
    ldc1	$f5,26104($a2)
    # Line 1116
    neg.d	$f10,$f10
    # Line 1183
    ldc1	$f14,0($sp)
    li	$a0,1
    # Line 1116
    bc1f	.L0d9e47d8
    # Line 1115
    neg.d	$f6,$f6
    # Line 1173
    ldc1	$f1,0($sp)
    # Line 1116
    c.eq.d $f5,$f7
    # Line 1173
    ldc1	$f2,_lit8_4000000000000000
    # Line 1116
    bc1f .L0d9e47ac
    # Line 1173
    ldc1	$f0,_lit8_bff0000000000000
    # Line 1165
    cvt.s.d	$f0,$f6
    # Line 1215
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e47ac:
    # Line 1173
    cvt.d.s	$f1,$f1
    madd.d	$f0,$f0,$f1,$f2
    cvt.s.d	$f0,$f0
    cvt.d.s	$f0,$f0
    nmsub.d	$f0,$f8,$f0,$f9
    neg.d	$f0,$f0
    div.d	$f0,$f0,$f5
    cvt.s.d	$f0,$f0
.L0d9e47cc:
    # Line 1215
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e47d8:
    # Line 1183
    ldc1	$f15,_lit8_4000000000000000
    cvt.d.s	$f14,$f14
    ldc1	$f13,_lit8_bff0000000000000
    madd.d	$f13,$f13,$f14,$f15
    cvt.s.d	$f13,$f13
    cvt.d.s	$f13,$f13
    nmsub.d	$f11,$f5,$f0,$f13
    c.eq.d $f11,$f7
    c.lt.d $f7,$f0
    # Line 1215
    ld	$gp,8($sp)
    # Line 1183
    bc1f .L0d9e4820
    movf	$a0,$zero,$fcc2
    beqz	$a0,.L0d9e485c
    nop
    # Line 1186
    c.lt.d $f10,$f6
    movf.d	$f6,$f10,$fcc4
    b	.L0d9e47cc
    cvt.s.d	$f0,$f6
.L0d9e4820:
    # Line 1203
    neg.d	$f7,$f9
    div.d	$f7,$f7,$f0
    nmsub.d	$f5,$f8,$f9,$f13
    neg.d	$f5,$f5
    beqz	$a0,.L0d9e486c
    div.d	$f5,$f5,$f11
    c.le.d $f5,$f7
    bc1f .L0d9e4850
    nop
    # Line 1210
    mov.d	$f5,$f10
    c.lt.d $f10,$f6
    movt.d	$f5,$f6,$fcc6
.L0d9e4850:
    # Line 1215
    cvt.s.d	$f0,$f5
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e485c:
    # Line 1188
    c.lt.d $f6,$f10
    movf.d	$f6,$f10,$fcc7
    b	.L0d9e47cc
    cvt.s.d	$f0,$f6
.L0d9e486c:
    # Line 1210
    c.le.d	$f7,$f5
    bc1f	.L0d9e4850
    nop
    # Line 1212
    mov.d	$f5,$f10
    c.lt.d $f6,$f10
    b	.L0d9e4850
    movt.d	$f5,$f6,$fcc1
.end __glOdysseyWindowToEyeZ

# Function: __glOdysseyWindowToNormalizedEyeZ
# Declared: Line 1222 (Source lines: 1223-1260)
# Address: 0x0d9e4890 - 0x0d9e4958 (Size: 200 bytes, Frame: 32)
.globl __glOdysseyWindowToNormalizedEyeZ
.ent __glOdysseyWindowToNormalizedEyeZ
__glOdysseyWindowToNormalizedEyeZ:
    # Line 1223
    lui	$at,0x11
    addiu	$sp,$sp,-32
    addiu	$at,$at,15616
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1233
    # lw $t9, -30028($gp) # &__glOdysseyWindowToEyeZ
    # Line 1223
    sd	$s8,8($sp)
    sd	$ra,24($sp)
    # Line 1233
    bal __glOdysseyWindowToEyeZ
    # Line 1226
    lw	$s8,4112($zero)
    # Line 1238
    lui	$v0,0x1
    addu	$v0,$s8,$v0
    ldc1	$f6,26056($v0)
    cvt.d.s	$f5,$f0
    ldc1	$f7,26064($v0)
    add.d	$f5,$f5,$f6
    sub.d	$f6,$f6,$f7
    div.d	$f5,$f5,$f6
    cvt.s.d	$f5,$f5
    dmtc1	$zero,$f0
    cvt.d.s	$f12,$f5
    # Line 1260
    ld	$ra,24($sp)
    # Line 1238
    c.lt.d	$f12,$f0
    # Line 1260
    ld	$s8,8($sp)
    # Line 1238
    ldc1	$f6,_lit8_3ff0000000000000
    bc1t	.L0d9e4914
    lwc1	$f0,_lit_3f800000
    c.lt.d $f6,$f12
    bc1f .L0d9e492c
    sdc1	$f5,0($sp)
    # Line 1260
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4914:
    ld	$ra,24($sp)
    # Line 1238
    mtc1	$zero,$f0
    # Line 1260
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e492c:
    # Line 1256
    # lw $t9, -16928($gp) # &isnan
    jal	isnan
    nop
    ldc1	$f0,0($sp)
    # Line 1260
    ld	$ra,24($sp)
    # Line 1256
    lwc1	$f7,_lit_3f800000
    # Line 1260
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1256
    movn.s	$f0,$f7,$v0
.end __glOdysseyWindowToNormalizedEyeZ

# Function: __glOdysseyEyeToWindowZ
# Declared: Line 1264 (Source lines: 1265-1281)
# Address: 0x0d9e4960 - 0x0d9e49dc (Size: 124 bytes, Frame: 0)
.globl __glOdysseyEyeToWindowZ
.ent __glOdysseyEyeToWindowZ
__glOdysseyEyeToWindowZ:
    # Line 1268
    lw	$a2,4112($zero)
    # Line 1271
    lui	$a3,0x1
    addu	$a2,$a2,$a3
    ldc1	$f7,26112($a2)
    # Line 1275
    cvt.d.s	$f6,$f12
    # Line 1273
    ldc1	$f5,26128($a2)
    # Line 1275
    madd.d	$f5,$f5,$f7,$f6
    dmtc1	$zero,$f0
    # Line 1265
    lui	$v0,0x11
    # Line 1275
    c.eq.d	$f5,$f0
    # Line 1265
    addiu	$v0,$v0,15408
    addu	$at,$t9,$v0
    # Line 1281
    ldc1	$f1,26120($a2)
    # Line 1275
    bc1t	.L0d9e49bc
    ldc1	$f7,_lit8_3ff0000000000000
    # Line 1278
    div.d	$f0,$f7,$f5
    # Line 1281
    ldc1	$f2,26104($a2)
    madd.d	$f1,$f1,$f6,$f2
    madd.d	$f0,$f7,$f0,$f1
    ldc1	$f1,_lit8_3fe0000000000000
    mul.d	$f0,$f0,$f1
    jr	$ra
    cvt.s.d	$f0,$f0
.L0d9e49bc:
    ldc1	$f1,26104($a2)
    ldc1	$f0,26120($a2)
    madd.d	$f0,$f0,$f6,$f1
    madd.d	$f0,$f7,$f5,$f0
    ldc1	$f1,_lit8_3fe0000000000000
    mul.d	$f0,$f0,$f1
    jr	$ra
    cvt.s.d	$f0,$f0
.end __glOdysseyEyeToWindowZ

# Function: __glOdysseyNormalizedEyeToWindowZ
# Declared: Line 1288 (Source lines: 1289-1317)
# Address: 0x0d9e49e0 - 0x0d9e4a8c (Size: 172 bytes, Frame: 32)
.globl __glOdysseyNormalizedEyeToWindowZ
.ent __glOdysseyNormalizedEyeToWindowZ
__glOdysseyNormalizedEyeToWindowZ:
    # Line 1292
    lw	$a0,4112($zero)
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lbu	$at,26432($a2)
    # Line 1289
    addiu	$sp,$sp,-32
    lui	$v0,0x11
    sd	$ra,8($sp)
    addiu	$v0,$v0,15280
    mov.s	$f0,$f12
    sd	$gp,0($sp)
    # Line 1292
    beqz	$at,.L0d9e4a28
    # Line 1289
    addu	$gp,$t9,$v0
    # Line 1298
    # lw $t9, -30124($gp) # &__glOdysseyUpdateTransform
    sdc1	$f12,24($sp)
    bal __glOdysseyUpdateTransform
    sd	$a2,16($sp)
    ld	$a2,16($sp)
    ldc1	$f0,24($sp)
.L0d9e4a28:
    # Line 1308
    ldc1	$f14,26064($a2)
    ldc1	$f12,26056($a2)
    cvt.d.s	$f13,$f0
    sub.d	$f14,$f12,$f14
    msub.d	$f12,$f12,$f13,$f14
    # lw $t9, -30020($gp) # &__glOdysseyEyeToWindowZ
    bal __glOdysseyEyeToWindowZ
    cvt.s.d	$f12,$f12
    dmtc1	$zero,$f15
    cvt.d.s	$f6,$f0
    c.lt.d	$f6,$f15
    ld	$ra,8($sp)
    # Line 1315
    ldc1	$f16,_lit8_3ff0000000000000
    # Line 1308
    bc1f	.L0d9e4a74
    mov.s	$f5,$f0
    mtc1	$zero,$f0
    # Line 1317
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4a74:
    # Line 1315
    lwc1	$f0,_lit_3f800000
    c.lt.d $f16,$f6
    # Line 1317
    ld	$gp,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1315
    movf.s	$f0,$f5,$fcc1
.end __glOdysseyNormalizedEyeToWindowZ

# Function: __glOdyim_DepthRange
# Declared: Line 1349 (Source lines: 1350-1367)
# Address: 0x0d9e4a90 - 0x0d9e4b40 (Size: 176 bytes, Frame: 16)
.globl __glOdyim_DepthRange
.ent __glOdyim_DepthRange
__glOdyim_DepthRange:
    # Line 1351
    lw	$v0,4120($zero)
    li	$a2,1
    # Line 1350
    lui	$at,0x11
    # Line 1351
    lw	$a1,4112($zero)
    # Line 1350
    addiu	$sp,$sp,-16
    addiu	$at,$at,15104
    sd	$gp,0($sp)
    # Line 1351
    beq	$v0,$a2,.L0d9e4b28
    # Line 1350
    addu	$gp,$t9,$at
    # Line 1360
    dmtc1	$zero,$f1
    c.lt.d $f12,$f1
    move	$a3,$a2
    ldc1	$f0,_lit8_3ff0000000000000
    # Line 1361
    c.lt.d $f13,$f1
    # Line 1360
    movf	$a3,$zero,$fcc3
    movn.d	$f12,$f1,$a3
    lui	$a0,0x1
    # Line 1361
    movf.d	$f1,$f13,$fcc2
    # Line 1367
    ld	$gp,0($sp)
    # Line 1360
    addu	$a0,$a1,$a0
    mov.d	$f2,$f12
    c.lt.d $f0,$f12
    # Line 1365
    lw	$v1,26980($a0)
    # Line 1361
    c.lt.d	$f0,$f1
    # Line 1364
    sb	$a2,26999($a0)
    # Line 1360
    movt.d	$f2,$f0,$fcc1
    # Line 1365
    ori	$v1,$v1,0x4000
    sw	$v1,26980($a0)
    # Line 1361
    movf.d	$f0,$f1,$fcc0
    sdc1	$f0,26096($a0)
    # Line 1365
    li	$v0,2
    # Line 1360
    sdc1	$f2,26088($a0)
    # Line 1367
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1365
    sw	$v0,4120($zero)
.L0d9e4b1c:
    # Line 1367
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e4b28:
    # Line 1351
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e4b1c
    ld	$ra,8($sp)
.end __glOdyim_DepthRange

# Function: __glOdysseyValidateDepthRange
# Declared: Line 1369 (Source lines: 1370-1453)
# Address: 0x0d9e4b40 - 0x0d9e4d88 (Size: 584 bytes, Frame: 208)
.globl __glOdysseyValidateDepthRange
.ent __glOdysseyValidateDepthRange
__glOdysseyValidateDepthRange:
    # Line 1375
    li	$v0,1
    # Line 1370
    addiu	$sp,$sp,-80
    # Line 1375
    lw	$at,4120($zero)
    # Line 1370
    lui	$v1,0x11
    sd	$s0,40($sp)
    # Line 1378
    lui	$s0,0x1
    # Line 1375
    lw	$a2,4112($zero)
    # Line 1370
    addiu	$v1,$v1,14928
    # Line 1378
    addu	$s0,$a0,$s0
    sd	$gp,48($sp)
    # Line 1375
    beq	$at,$v0,.L0d9e4d70
    # Line 1370
    addu	$gp,$t9,$v1
    # Line 1379
    dmtc1	$zero,$f5
    # Line 1378
    ldc1	$f7,26088($s0)
    # Line 1379
    dmtc1	$zero,$f3
    ldc1	$f4,26096($s0)
    c.le.d $f7,$f5
    ldc1	$f6,_lit8_3ff0000000000000
    dmtc1	$zero,$f1
    movf.d	$f3,$f7,$fcc3
    c.le.d $f4,$f5
    mov.d	$f5,$f6
    c.le.d	$f6,$f3
    # Line 1404
    ldc1	$f2,26072($s0)
    movf.d	$f1,$f4,$fcc4
    movf.d	$f5,$f3,$fcc0
    # Line 1379
    li	$a1,1
    c.le.d $f6,$f1
    li	$a4,1
    movf	$a1,$zero,$fcc3
    # Line 1404
    c.eq.d $f2,$f5
    # Line 1379
    li	$a3,1
    mov.d	$f0,$f6
    movf	$a4,$zero,$fcc4
    movf	$a3,$a4,$fcc2
    li	$a4,1
    # Line 1404
    ldc1	$f8,26080($s0)
    movf.d	$f0,$f1,$fcc2
    bc1f .L0d9e4bec
    movf	$a4,$a1,$fcc0
    c.eq.d $f8,$f0
    bc1t .L0d9e4c80
    nop
.L0d9e4bec:
    sdc1	$f0,16($sp)
    # Line 1409
    sdc1	$f0,26080($s0)
    # Line 1408
    sdc1	$f5,26072($s0)
    sdc1	$f6,8($sp)
    sd	$a4,32($sp)
    # Line 1409
    lbu	$t8,26432($s0)
    sd	$a3,24($sp)
    sd	$a2,56($sp)
    beqz	$t8,.L0d9e4d34
    sd	$ra,64($sp)
    # Line 1415
    # lw $t9, -30124($gp) # &__glOdysseyUpdateTransform
    bal __glOdysseyUpdateTransform
    nop
    # Line 1417
    ld	$t9,32($sp)
.L0d9e4c24:
    ld	$ra,64($sp)
    # Line 1439
    mtc1	$zero,$f18
    ld	$a2,24($sp)
    # Line 1428
    mtc1	$zero,$f13
    # Line 1434
    li	$a1,-129
    # Line 1417
    beqz	$t9,.L0d9e4c90
    ld	$a3,56($sp)
    # Line 1434
    lw	$a0,1804($a3)
    and	$a0,$a0,$a1
    beqz	$a2,.L0d9e4ce4
    sw	$a0,1804($a3)
.L0d9e4c50:
    # Line 1445
    li	$a2,-65
    and	$a2,$a0,$a2
    sw	$a2,1804($a3)
.L0d9e4c5c:
    # Line 1448
    lw	$a4,26980($s0)
    # Line 1453
    ld	$gp,48($sp)
    # Line 1448
    ori	$a4,$a4,0x1511
    sw	$a4,26980($s0)
    li	$a3,2
    sw	$a3,4120($zero)
    # Line 1453
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e4c80:
    ld	$s0,40($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e4c90:
    # Line 1434
    ld	$a5,24($sp)
    # Line 1427
    lw	$a1,1748($a3)
    # Line 1429
    swc1	$f13,116($a1)
    # Line 1428
    swc1	$f13,112($a1)
    # Line 1430
    ldc1	$f12,26064($s0)
    ldc1	$f11,26056($s0)
    ldc1	$f10,8($sp)
    ldc1	$f9,_lit8_bff0000000000000
    c.lt.d $f11,$f12
    movf.d	$f9,$f10,$fcc6
    cvt.s.d	$f9,$f9
    swc1	$f9,120($a1)
    # Line 1431
    ldc1	$f10,26056($s0)
    cvt.d.s	$f9,$f9
    mul.d	$f9,$f9,$f10
    cvt.s.d	$f9,$f9
    swc1	$f9,124($a1)
    # Line 1432
    lw	$a0,1804($a3)
    ori	$a0,$a0,0x80
    # Line 1434
    bnez	$a5,.L0d9e4c50
    # Line 1432
    sw	$a0,1804($a3)
.L0d9e4ce4:
    # Line 1441
    ldc1	$f14,8($sp)
    # Line 1438
    lw	$a4,1748($a3)
    # Line 1439
    swc1	$f18,96($a4)
    # Line 1440
    swc1	$f18,100($a4)
    # Line 1441
    ldc1	$f17,26064($s0)
    ldc1	$f16,26056($s0)
    ldc1	$f15,_lit8_bff0000000000000
    c.lt.d $f16,$f17
    movf.d	$f14,$f15,$fcc7
    cvt.s.d	$f14,$f14
    swc1	$f14,104($a4)
    # Line 1442
    ldc1	$f15,26064($s0)
    cvt.d.s	$f14,$f14
    mul.d	$f14,$f14,$f15
    cvt.s.d	$f14,$f14
    swc1	$f14,108($a4)
    # Line 1443
    lw	$a2,1804($a3)
    ori	$a2,$a2,0x40
    b	.L0d9e4c5c
    sw	$a2,1804($a3)
.L0d9e4d34:
    # Line 1417
    # lw $t9, -30024($gp) # &__glOdysseyWindowToNormalizedEyeZ
    bal __glOdysseyWindowToNormalizedEyeZ
    cvt.s.d	$f12,$f5
    ldc1	$f12,16($sp)
    # lw $t9, -30024($gp) # &__glOdysseyWindowToNormalizedEyeZ
    sdc1	$f0,0($sp)
    bal __glOdysseyWindowToNormalizedEyeZ
    cvt.s.d	$f12,$f12
    ldc1	$f12,0($sp)
    # lw $t9, -23724($gp) # &__glim_DepthRange
    cvt.d.s	$f13,$f0
    jal	__glim_DepthRange
    cvt.d.s	$f12,$f12
    b	.L0d9e4c24
    ld	$t9,32($sp)
.L0d9e4d70:
    # Line 1375
    # lw $t9, -26792($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e4c80
    ld	$ra,64($sp)
.end __glOdysseyValidateDepthRange

# Function: __glOdysseyValidateDepthRangeNewXform
# Declared: Line 1459 (Source lines: 1460-1500)
# Address: 0x0d9e4d90 - 0x0d9e4f08 (Size: 376 bytes, Frame: 32)
.ent __glOdysseyValidateDepthRangeNewXform
__glOdysseyValidateDepthRangeNewXform:
    # Line 1463
    lw	$at,4120($zero)
    li	$v0,1
    # Line 1460
    addiu	$sp,$sp,-32
    # Line 1463
    beq	$at,$v0,.L0d9e4ef8
    lw	$a2,4112($zero)
    ldc1	$f1,_lit8_bff0000000000000
    lui	$v1,0x1
    addu	$v1,$a0,$v1
    ldc1	$f0,26072($v1)
    c.eq.d	$f0,$f1
    sd	$a2,16($sp)
    bc1t	.L0d9e4ef0
    sd	$v1,8($sp)
    # Line 1472
    # lw $t9, -30024($gp) # &__glOdysseyWindowToNormalizedEyeZ
    sd	$ra,24($sp)
    bal __glOdysseyWindowToNormalizedEyeZ
    cvt.s.d	$f12,$f0
    ld	$a0,8($sp)
    # lw $t9, -30024($gp) # &__glOdysseyWindowToNormalizedEyeZ
    ldc1	$f12,26080($a0)
    sdc1	$f0,0($sp)
    bal __glOdysseyWindowToNormalizedEyeZ
    cvt.s.d	$f12,$f12
    ldc1	$f12,0($sp)
    # lw $t9, -23724($gp) # &__glim_DepthRange
    cvt.d.s	$f13,$f0
    jal	__glim_DepthRange
    cvt.d.s	$f12,$f12
    ld	$a0,16($sp)
    lw	$a2,1804($a0)
    # Line 1484
    ld	$a4,8($sp)
    ldc1	$f13,_lit8_3ff0000000000000
    # Line 1482
    mtc1	$zero,$f16
    # Line 1472
    andi	$a1,$a2,0x80
    # Line 1495
    ld	$t1,8($sp)
    # Line 1493
    mtc1	$zero,$f23
    # Line 1472
    beqz	$a1,.L0d9e4e7c
    ld	$ra,24($sp)
    # Line 1481
    lw	$a5,1748($a0)
    # Line 1483
    swc1	$f16,116($a5)
    # Line 1482
    swc1	$f16,112($a5)
    # Line 1484
    ldc1	$f15,26064($a4)
    ldc1	$f14,26056($a4)
    c.lt.d $f14,$f15
    ldc1	$f14,_lit8_bff0000000000000
    movt.d	$f13,$f14,$fcc1
    cvt.s.d	$f13,$f13
    swc1	$f13,120($a5)
    # Line 1485
    ldc1	$f14,26056($a4)
    cvt.d.s	$f13,$f13
    mul.d	$f13,$f13,$f14
    cvt.s.d	$f13,$f13
    swc1	$f13,124($a5)
    # Line 1486
    lw	$a3,26980($a4)
    ori	$a3,$a3,0x10
    sw	$a3,26980($a4)
    li	$a2,2
    sw	$a2,4120($zero)
    lw	$a2,1804($a0)
.L0d9e4e7c:
    andi	$a6,$a2,0x40
    beqz	$a6,.L0d9e4ef0
    nop
    # Line 1492
    lw	$t3,1748($a0)
    # Line 1494
    swc1	$f23,100($t3)
    # Line 1493
    swc1	$f23,96($t3)
    # Line 1495
    ldc1	$f21,26064($t1)
    ldc1	$f19,26056($t1)
    ldc1	$f18,_lit8_bff0000000000000
    ldc1	$f17,_lit8_3ff0000000000000
    c.lt.d $f19,$f21
    movf.d	$f17,$f18,$fcc2
    cvt.s.d	$f17,$f17
    swc1	$f17,104($t3)
    # Line 1496
    ldc1	$f18,26064($t1)
    cvt.d.s	$f17,$f17
    mul.d	$f17,$f17,$f18
    cvt.s.d	$f17,$f17
    swc1	$f17,108($t3)
    # Line 1497
    lw	$t2,1804($a0)
    ori	$t2,$t2,0x40
    sw	$t2,1804($a0)
    # Line 1498
    lw	$t0,26980($t1)
    li	$a7,2
    ori	$t0,$t0,0x10
    sw	$t0,26980($t1)
    # Line 1500
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1498
    sw	$a7,4120($zero)
.L0d9e4ef0:
    # Line 1500
    jr	$ra
    addiu	$sp,$sp,32
.L0d9e4ef8:
    # Line 1463
    # lw $t9, -26792($gp) # &__glSetError
    li	$a0,1282
    jr	$t9
    addiu	$sp,$sp,32
.end __glOdysseyValidateDepthRangeNewXform

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3feffffffaa19c47:
    .word 0x3fefffff, 0xfaa19c47
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4030000000000000:
    .word 0x40300000, 0x00000000
_lit8_41fffff7fff00000:
    .word 0x41fffff7, 0xfff00000
_lit8_41fffff800000000:
    .word 0x41fffff8, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit8_c000000000000000:
    .word 0xc0000000, 0x00000000
_lit8_c1fffff7fff00000:
    .word 0xc1fffff7, 0xfff00000
_lit8_c1fffff800000000:
    .word 0xc1fffff8, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_3f921fb6:
    .word 0x3f921fb6

